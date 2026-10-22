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
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !48
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
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !69
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
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !728
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
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !735
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
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !782
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
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !787
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
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !792
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
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !795
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
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !798
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
  %i.ac = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !805
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
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !827
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
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !831
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
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !835
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
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !856
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
  %i.ae = load ptr, ptr %1, align 8, !invariant.load !4, !alias.scope !864, !noalias !870 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i10.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.ae(ptr noundef nonnull %0)
          to label %bb.p unwind label %bb.r, !noalias !868

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !5, !invariant.load !4, !alias.scope !864, !noalias !870 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.thread.i, label %bb.q
end_hunk_1
begin_hunk_2_@_RNCNvXs4_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_15SimulateServiceNtNtNtBb_3raw8accessor7Service4stat0Bb_:bb.a
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !1066 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !1066
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.580.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.580.0..sroa_idx.i, i64 40, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.db)
          to label %bb.al unwind label %bb.as, !noalias !1067

bb.al:                                            ; preds = %bb.ak
  %.not.i51.i = icmp eq i64 %i.dd, -1
  br i1 %.not.i51.i, label %bb.am, label %bb.aw

bb.am:                                            ; preds = %bb.al
  %.sroa.3.0..sroa_idx186.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx186.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, i64 24, i1 false), !noalias !1066
  store ptr %.sroa.3.sroa.0.0.copyload.i, ptr %i.l, align 8, !alias.scope !1077, !noalias !1066
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1077, !noalias !1066
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %.val48.i = load i16, ptr %i.df, align 4, !noalias !1066, !noundef !4
  %i.dg = and i16 %.val48.i, 3
  %switch.selectcmp1.i.i = icmp eq i16 %i.dg, 1
  br i1 %switch.selectcmp1.i.i, label %bb.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1066
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43)
          to label %bb.ap unwind label %bb.ao, !noalias !1067

bb.ao:                                            ; preds = %bb.an
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1066
  %i.di = icmp eq ptr %.sroa.3.sroa.0.0.copyload.i, null
  br i1 %i.di, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i, label %bb.at

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split: ; preds = %bb.am, %bb.aw
  %.sroa.0146.2.i.ph = phi i64 [ %i.dd, %bb.aw ], [ -1, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, i64 24, i1 false), !noalias !1066
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split, %bb.ar, %bb.aq, %bb.ap
  %.sroa.16161.2.i = phi ptr [ %.sroa.16161.0.copyload.i, %bb.ap ], [ %.sroa.16161.0.copyload.i, %bb.aq ], [ %.sroa.16161.0.copyload.i, %bb.ar ], [ %.sroa.3.sroa.3.0.copyload.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split ]
  %.sroa.10150.2.i = phi ptr [ %.sroa.10150.0.copyload.i, %bb.ap ], [ %.sroa.10150.0.copyload.i, %bb.aq ], [ %.sroa.10150.0.copyload.i, %bb.ar ], [ %.sroa.3.sroa.0.0.copyload.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split ]
  %.sroa.0146.2.i = phi i64 [ %.sroa.0146.0.copyload.i, %bb.ap ], [ %.sroa.0146.0.copyload.i, %bb.aq ], [ %.sroa.0146.0.copyload.i, %bb.ar ], [ %.sroa.0146.2.i.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1066
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit.i

bb.ap:                                            ; preds = %bb.an
  %.sroa.0146.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !1066 ; 3 uses
  %.sroa.10150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.10150.0.copyload.i = load ptr, ptr %.sroa.10150.0..sroa_idx.i, align 8, !noalias !1066 ; 3 uses
  %.sroa.16161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.16161.0.copyload.i = load ptr, ptr %.sroa.16161.0..sroa_idx.i, align 8, !noalias !1066 ; 3 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.0..sroa_idx.i, i64 64, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1066
  %i.dj = icmp eq ptr %.sroa.3.sroa.0.0.copyload.i, null
  br i1 %i.dj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dk = atomicrmw add ptr %.sroa.3.sroa.0.0.copyload.i, i64 -1 release, align 8, !noalias !1078
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ar, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i unwind label %bb.as, !noalias !1067

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i: ; preds = %bb.ah, %bb.au, %bb.at, %bb.as, %bb.ao
  %.pn33.pn.i = phi { ptr, i32 } [ %i.dh, %bb.ao ], [ %i.dm, %bb.as ], [ %i.dh, %bb.at ], [ %i.dh, %bb.au ], [ %i.dc, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1066
  br label %.body62.i

bb.as:                                            ; preds = %bb.ak, %bb.ar
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i

bb.at:                                            ; preds = %bb.ao
  %i.dn = atomicrmw add ptr %.sroa.3.sroa.0.0.copyload.i, i64 -1 release, align 8, !noalias !1079
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i unwind label %bb.av, !noalias !1067

bb.av:                                            ; preds = %bb.ck, %bb.cc, %bb.bq, %bb.ay, %bb.au, %bb.ah
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1067
  unreachable

bb.aw:                                            ; preds = %bb.al
  %.sroa.17.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.17.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.580.i, i64 40, i1 false), !noalias !1066
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split

bb.ax:                                            ; preds = %bb.x, %bb.h
  %i.dq = phi ptr [ %i.af, %bb.x ], [ %i.ae, %bb.h ] ; 6 uses
  %i.dr = phi ptr [ %i.ag, %bb.x ], [ %i.ad, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1066
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull align 8 %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.az unwind label %bb.ay, !noalias !1067

bb.ay:                                            ; preds = %bb.ax
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.ds) #24
          to label %.body.i unwind label %bb.av, !noalias !1067

bb.az:                                            ; preds = %bb.ax
  %i.du = load i64, ptr %i.e, align 8, !range !22, !noalias !1066, !noundef !4 ; 3 uses
  %i.dv = icmp eq i64 %i.du, -2
  br i1 %i.dv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1066
  store i64 -2, ptr %0, align 8, !alias.scope !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  br label %.thread26

bb.bb:                                            ; preds = %bb.az
  %.sroa.3121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3121.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3121.0..sroa_idx.i, align 8, !noalias !1066 ; 3 uses
  %.sroa.3121.sroa.3.0..sroa.3121.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3121.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3121.sroa.3.0..sroa.3121.0..sroa_idx.sroa_idx.i, align 8, !noalias !1066 ; 4 uses
  %.sroa.3121.sroa.5.0..sroa.3121.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.0..sroa.3121.0..sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !1066
  %.sroa.5122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.0..sroa_idx.i, i64 32, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1066
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dx = load i8, ptr %i.dw, align 8, !range !13, !noalias !1066, !noundef !4
  %cond.i.i = icmp eq i8 %i.dx, 3
  br i1 %cond.i.i, label %bb.bc, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val.i.i = load ptr, ptr %i.dy, align 8, !noalias !1066 ; 5 uses
  %i.dz = getelementptr i8, ptr %1, i64 168
  %.val1.i.i = load ptr, ptr %i.dz, align 8, !noalias !1066, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ea = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !1067 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ea(ptr noundef nonnull %.val.i.i)
          to label %bb.be unwind label %bb.bg, !noalias !1067

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ec, i64 noundef range(i64 1, 536870913) %i.ef) #21, !noalias !1067
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i

bb.bg:                                            ; preds = %bb.bd
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.body.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ei, i64 noundef range(i64 1, 536870913) %i.el) #21, !noalias !1067
  br label %.body.i

bb.bi:                                            ; preds = %bb.bm
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i: ; preds = %bb.bf, %bb.be, %bb.bb
  %.not.i55.i = icmp eq i64 %i.du, -1
  br i1 %.not.i55.i, label %bb.bj, label %bb.bz

bb.bj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i
  %.sroa.5206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5206.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.i, i64 32, i1 false), !noalias !1066
  store ptr %.sroa.3121.sroa.0.0.copyload.i, ptr %i.f, align 8, !noalias !1066
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.3121.sroa.3.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1066
  %.not.i = icmp eq ptr %.sroa.3121.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.en = icmp eq ptr %.sroa.3121.sroa.3.0.copyload.i, null
  br i1 %i.en, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eo = atomicrmw add ptr %.sroa.3121.sroa.3.0.copyload.i, i64 -1 release, align 8, !noalias !1080
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i unwind label %bb.bi, !noalias !1067

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1066
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 26)
          to label %bb.bp unwind label %bb.bo, !noalias !1067

bb.bo:                                            ; preds = %bb.bn
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1066
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %.sroa.0146.0.copyload147.i = load i64, ptr %i.b, align 8, !noalias !1066
  %.sroa.10150.0..sroa_idx151.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10150.0.copyload152.i = load ptr, ptr %.sroa.10150.0..sroa_idx151.i, align 8, !noalias !1066
  %.sroa.16161.0..sroa_idx162.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.16161.0.copyload163.i = load ptr, ptr %.sroa.16161.0..sroa_idx162.i, align 8, !noalias !1066
  %.sroa.17.0..sroa_idx174.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.0..sroa_idx174.i, i64 64, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1066
  br label %bb.bt

bb.bq:                                            ; preds = %bb.br, %bb.bo, %.body.i
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn21.i, %.body.i ], [ %i.et, %bb.br ], [ %i.eq, %bb.bo ]
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val42.i = load ptr, ptr %i.er, align 8, !noalias !1066
  %i.es = getelementptr i8, ptr %1, i64 144
  %.val43.i = load ptr, ptr %i.es, align 8, !noalias !1066, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_(ptr %.val42.i, ptr nonnull %.val43.i) #24
          to label %.body62.i unwind label %bb.av, !noalias !1067

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1066
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5fresh(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.c, i8 noundef 1)
          to label %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i unwind label %bb.br, !noalias !1067

bb.br:                                            ; preds = %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1066
  br label %bb.bq

_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.c)
          to label %bb.bs unwind label %bb.br, !noalias !1067

bb.bs:                                            ; preds = %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1066
  %.sroa.0187.0.copyload.i = load ptr, ptr %i.d, align 8, !alias.scope !1081, !noalias !1066
  %.sroa.5188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5188.0.copyload.i = load ptr, ptr %.sroa.5188.0..sroa_idx.i, align 8, !alias.scope !1081, !noalias !1066
  %.sroa.6189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6189.0..sroa_idx.i, i64 24, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1066
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bz, %bb.bs, %bb.bp
  %.sroa.16161.3.i = phi ptr [ %.sroa.5188.0.copyload.i, %bb.bs ], [ %.sroa.16161.0.copyload163.i, %bb.bp ], [ %.sroa.3121.sroa.3.0.copyload.i, %bb.bz ] ; 2 uses
  %.sroa.10150.3.i = phi ptr [ %.sroa.0187.0.copyload.i, %bb.bs ], [ %.sroa.10150.0.copyload152.i, %bb.bp ], [ %.sroa.3121.sroa.0.0.copyload.i, %bb.bz ] ; 2 uses
  %.sroa.0146.3.i = phi i64 [ -1, %bb.bs ], [ %.sroa.0146.0.copyload147.i, %bb.bp ], [ %i.du, %bb.bz ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i = load ptr, ptr %i.eu, align 8, !noalias !1066 ; 5 uses
  %i.ev = getelementptr i8, ptr %1, i64 144
  %.val41.i = load ptr, ptr %i.ev, align 8, !noalias !1066, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ew = load ptr, ptr %.val41.i, align 8, !invariant.load !4, !noalias !1067 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ew, null
  br i1 %.not.i61.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ew(ptr noundef nonnull %.val.i)
          to label %bb.bv unwind label %bb.bx, !noalias !1067

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fa = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ey, i64 noundef range(i64 1, 536870913) %i.fb) #21, !noalias !1067
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit.i

bb.bx:                                            ; preds = %bb.bu
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.body62.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fg = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.fe, i64 noundef range(i64 1, 536870913) %i.fh) #21, !noalias !1067
  br label %.body62.i

bb.bz:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i
  %.sroa.17.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.17.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.i, i64 32, i1 false), !noalias !1066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.i, i64 32, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  br label %bb.bt

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i: ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ca, %.body62.i
  %i.fi = phi ptr [ %i.cn, %bb.ca ], [ %i.cu, %.body62.i ], [ %i.cu, %bb.ck ], [ %i.cu, %bb.ci ], [ %i.cu, %bb.cj ]
  %i.fj = phi ptr [ %i.co, %bb.ca ], [ %i.cv, %.body62.i ], [ %i.cv, %bb.ck ], [ %i.cv, %bb.ci ], [ %i.cv, %bb.cj ]
  %.pn39.i = phi { ptr, i32 } [ %i.fl, %bb.ca ], [ %.pn36.pn.i, %.body62.i ], [ %.pn36.pn.i, %bb.ck ], [ %.pn36.pn.i, %bb.ci ], [ %.pn36.pn.i, %bb.cj ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %i.fk, align 8, !noalias !1066
  store i8 2, ptr %i.fi, align 1, !noalias !1066
  br label %.body

bb.ca:                                            ; preds = %bb.ad
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i

bb.cb:                                            ; preds = %bb.r, %bb.i
  %i.fm = phi ptr [ %i.af, %bb.r ], [ %i.ae, %bb.i ] ; 4 uses
  %i.fn = phi ptr [ %i.ag, %bb.r ], [ %i.ad, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1066
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  invoke fastcc void @_RNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtB7_10ServiceDynEL_ENtB7_7Service4stat0Bb_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull align 8 %i.fo, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cd unwind label %bb.cc, !noalias !1067

bb.cc:                                            ; preds = %bb.cb
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.fo) #24
          to label %.body62.i unwind label %bb.av, !noalias !1067

bb.cd:                                            ; preds = %bb.cb
  %i.fq = load i64, ptr %i.a, align 8, !range !22, !noalias !1066, !noundef !4 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, -2
  br i1 %i.fr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  store i64 -2, ptr %0, align 8, !alias.scope !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1066
  br label %.thread26

bb.cf:                                            ; preds = %bb.cd
  %.sroa.10150.0..sroa_idx155.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.10150.0.copyload156.i = load ptr, ptr %.sroa.10150.0..sroa_idx155.i, align 8, !noalias !1066
  %.sroa.16161.0..sroa_idx166.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.16161.0.copyload167.i = load ptr, ptr %.sroa.16161.0..sroa_idx166.i, align 8, !noalias !1066
  %.sroa.17.0..sroa_idx176.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.0..sroa_idx176.i, i64 64, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.fo)
          to label %bb.ch unwind label %bb.cg, !noalias !1067

bb.cg:                                            ; preds = %bb.cf, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2eqCs5XgW7KoffLW_12opendal_core.exit.thread.i, %bb.f
  %i.fs = phi ptr [ %i.fm, %bb.cf ], [ %i.af, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2eqCs5XgW7KoffLW_12opendal_core.exit.thread.i ], [ %i.af, %bb.f ]
  %i.ft = phi ptr [ %i.fn, %bb.cf ], [ %i.ag, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2eqCs5XgW7KoffLW_12opendal_core.exit.thread.i ], [ %i.ag, %bb.f ]
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1066
  br label %bb.cm

bb.ci:                                            ; preds = %.body62.i
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !1085, !noalias !1066, !noundef !4 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fy = atomicrmw add ptr %i.fw, i64 -1 release, align 8, !noalias !1086
  %i.fz = icmp eq i64 %i.fy, 1
end_hunk_2
begin_hunk_3_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
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

.body:                                            ; preds = %.thread301, %bb.fp, %bb.fo, %bb.fq, %bb.q, %bb.p, %bb.fr, %bb.fn, %bb.h
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %.pn90.pn307, %bb.fn ], [ %.pn90.pn, %bb.fr ], [ %.pn90.pn307, %bb.fp ], [ %.pn90.pn307, %bb.fo ], [ %i.ag, %bb.h ], [ %.pn90, %.thread301 ], [ %i.at, %bb.q ], [ %.pn90.pn307, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit: ; preds = %bb.o, %bb.n, %bb.k
  %i.az = load i64, ptr %i.h, align 8, !range !8, !noundef !4 ; 2 uses
  %.not76 = icmp eq i64 %i.az, -1
  br i1 %.not76, label %bb.r, label %bb.ap

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !9, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1               ; 2 uses
  br i1 %i.bc, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %.sroa.0280.0.copyload = load i64, ptr %i.be, align 8, !alias.scope !1310
  store i64 0, ptr %i.be, align 8, !alias.scope !1311
  %i.bf = trunc nuw i64 %.sroa.0280.0.copyload to i1
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false)
  br label %bb.ar

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1312, !noundef !4 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit: ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bl = add nsw i64 %i.bi, -1                   ; 3 uses
  store i64 %i.bl, ptr %i.bh, align 8, !alias.scope !1312
  %i.bm = load i64, ptr %i.bk, align 8, !range !5, !alias.scope !1312, !noundef !4
  %i.bn = icmp samesign ult i64 %i.bl, %i.bm
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1312, !nonnull !4, !noundef !4
  %i.bq = icmp ult i64 %i.bi, 144115188075855873
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.bp, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false), !noalias !1312
  %.pr = load i64, ptr %i.a, align 8, !alias.scope !1313
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
  br label %bb.bc

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, %bb.w
  %.pn90.pn = phi { ptr, i32 } [ %i.bt, %bb.w ], [ %.pn83.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 ] ; 2 uses
  %.sroa.025.0 = xor i1 %i.bc, true
  %i.bu = load i64, ptr %i.h, align 8, !range !8, !noundef !4
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.fn, label %bb.fr

.thread301:                                       ; preds = %bb.ba, %bb.fm
  %.pn90 = phi { ptr, i32 } [ %i.ec, %bb.ba ], [ %.pn86.pn.pn, %bb.fm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bw = load i64, ptr %i.h, align 8, !range !8, !noundef !4
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.fn, label %.body

bb.y:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.val139 = load i16, ptr %i.bz, align 4, !noundef !4
  %i.ca = and i16 %.val139, 3
  %switch.selectcmp.i = icmp eq i16 %i.ca, 2
  br i1 %switch.selectcmp.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  br label %bb.ar

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  %i.cb = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.ab unwind label %.thread   ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !range !9, !alias.scope !1314, !noundef !4
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit, label %bb.ac, !prof !19

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #25
          to label %.noexc176 unwind label %.thread

.noexc176:                                        ; preds = %bb.ac
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit: ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ci)
          to label %bb.ad unwind label %.thread   ; 2 uses

.thread:                                          ; preds = %bb.aa, %bb.ac, %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.cl = load ptr, ptr %i.b, align 8, !alias.scope !1319, !noundef !4 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, label %bb.am

bb.ad:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.cn = extractvalue { ptr, i64 } %i.cj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.co = icmp eq i64 %i.cd, %i.cn
  br i1 %i.co, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ad
  %i.cp = extractvalue { ptr, i64 } %i.cj, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cc, ptr nonnull readonly %i.cp, i64 %i.cd), !alias.scope !1320
  %.not314 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not314, label %bb.ae, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

bb.ae:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.cq = load ptr, ptr %i.b, align 8, !alias.scope !1325, !noundef !4 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !1326
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit unwind label %bb.ak

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.ad, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.cu = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.cv = load i64, ptr %i.cu, align 8, !range !9, !alias.scope !1327, !noundef !4
  %3 = icmp eq i64 %i.cv, 0
  br i1 %3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !1332, !noundef !4 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = atomicrmw add ptr %i.cx, i64 -1 release, align 8, !noalias !1333
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cw) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit unwind label %bb.al

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180: ; preds = %bb.am, %.thread, %bb.an, %bb.al, %bb.ak
  %.pn83.pn = phi { ptr, i32 } [ %i.db, %bb.ak ], [ %i.dd, %bb.al ], [ %i.ck, %bb.an ], [ %i.ck, %.thread ], [ %i.ck, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ak:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.ai, %bb.ah, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread, %bb.aj
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.dc, align 8
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bc

bb.al:                                            ; preds = %bb.aj
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.de, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

bb.am:                                            ; preds = %.thread
  %i.df = atomicrmw add ptr %i.cl, i64 -1 release, align 8, !noalias !1334
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.fq, %bb.dk, %bb.cz, %bb.an, %bb.ef, %bb.fr, %bb.fm, %bb.fe, %bb.et, %bb.ee, %bb.bl, %bb.h
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  %.val137 = load i8, ptr %i.di, align 1, !range !1335, !noundef !4 ; 2 uses
  %i.dj = icmp eq i8 %.val137, 3
  br i1 %i.dj, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.455.0.copyload = load i64, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.556.0..sroa_idx, i64 40, i1 false)
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.657.0..sroa_idx, i64 25, i1 false)
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx, i64 6, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.t, %bb.z, %bb.aq
  %.sroa.15.sroa.4.0 = phi i8 [ undef, %bb.z ], [ undef, %bb.t ], [ %.val137, %bb.aq ]
  %.sroa.8.0 = phi i64 [ 1, %bb.z ], [ 1, %bb.t ], [ %.sroa.455.0.copyload, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219: ; preds = %bb.fg, %bb.dn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224, %bb.do, %bb.ar
  %.sroa.15.sroa.4.1 = phi i8 [ undef, %bb.fg ], [ %.sroa.15.sroa.4.0, %bb.ar ], [ %.sroa.15.sroa.4.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.15.sroa.4.3, %bb.do ], [ %.sroa.15.sroa.4.3, %bb.dn ]
  %.sroa.030.1 = phi i64 [ -1, %bb.fg ], [ %i.az, %bb.ar ], [ %.sroa.030.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.030.3, %bb.do ], [ %.sroa.030.3, %bb.dn ]
  %.sroa.8.1 = phi i64 [ 0, %bb.fg ], [ %.sroa.8.0, %bb.ar ], [ %.sroa.8.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.8.3, %bb.do ], [ %.sroa.8.3, %bb.dn ]
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

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !range !9, !alias.scope !1336, !noundef !4
  %i.dn = trunc nuw i64 %i.dm to i1
  br i1 %i.dn, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.do)
          to label %.noexc183 unwind label %bb.au ; 2 uses

.noexc183:                                        ; preds = %bb.at
  %i.dq = extractvalue { ptr, i64 } %i.dp, 0
  %i.dr = extractvalue { ptr, i64 } %i.dp, 1
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.av:                                            ; preds = %bb.aw, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f)
          to label %bb.bb unwind label %bb.ba

bb.aw:                                            ; preds = %.noexc183, %bb.as
  %.sroa.02.0.i = phi ptr [ %i.dq, %.noexc183 ], [ null, %bb.as ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.dr, %.noexc183 ], [ undef, %bb.as ]
  %.not.i184 = icmp eq ptr %.sroa.02.0.i, null    ; 2 uses
  %..i = select i1 %.not.i184, ptr @54, ptr %.sroa.02.0.i
  %.5.i = select i1 %.not.i184, i64 9, i64 %.sroa.3.0.i
  store ptr %..i, ptr %i.e, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.5.i, ptr %i.dt, align 8
  %i.du = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 6
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ugt i64 %i.du, 1
  br i1 %i.dw, label %bb.ay, label %bb.av

bb.ax:                                            ; preds = %bb.ay
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.fm

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5275.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @57, ptr %i.c, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 30, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @57, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 30, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @56, ptr %i.eb, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @55, ptr noundef nonnull %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.ba:                                            ; preds = %bb.av
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.thread301

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208: ; preds = %bb.cu, %bb.ct, %bb.cv, %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, %bb.bc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234
end_hunk_3
begin_hunk_4_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i186) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i186, i64 noundef range(i64 1, -9223372036854775808) %i.fk, i64 noundef range(i64 1, 536870913) %i.fn) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192

bb.bt:                                            ; preds = %bb.bq
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %.body190, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i186, i64 noundef range(i64 1, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 536870913) %i.ft) #21
  br label %.body190

.body190:                                         ; preds = %.thread290, %bb.bu, %bb.bt, %bb.bl
  %.pn104.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.bt ], [ %i.fo, %bb.bu ], [ %.pn104, %.thread290 ], [ %i.fb, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.da

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192: ; preds = %bb.bs, %bb.br, %bb.bo
  %.not62 = icmp eq i64 %i.fc, -1
  br i1 %.not62, label %bb.bv, label %bb.dl

bb.bv:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12320, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.fu = trunc nuw i64 %.sroa.4328.0.copyload to i1
  br i1 %i.fu, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2, i64 40, i1 false)
  %i.fv = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !1343, !noundef !4 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fz = atomicrmw add ptr %i.fx, i64 1 monotonic, align 8, !noalias !1344
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gb = load i64, ptr %i.fy, align 8, !alias.scope !1343, !noundef !4
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.trap()
  unreachable

bb.ca:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204, %bb.bv
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8, !range !14, !noundef !4
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.dd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit

bb.cb:                                            ; preds = %bb.by, %bb.bw
  %.sroa.5.0.i.i = phi i64 [ %i.gb, %bb.by ], [ undef, %bb.bw ]
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 48 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 1, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fx, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gk = load <2 x ptr>, ptr %i.gi, align 8
  store <2 x ptr> %i.gk, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 64 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !1345, !noundef !4 ; 3 uses
  %i.gn = load i64, ptr %i.gg, align 8, !range !5, !alias.scope !1345, !noundef !4
  %i.go = icmp eq i64 %i.gm, %i.gn
  br i1 %i.go, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEE8grow_oneB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %bb.cf unwind label %bb.cd, !noalias !1346

bb.cd:                                            ; preds = %bb.cc
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #24
          to label %.body194 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

.body194:                                         ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cx

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !1345, !nonnull !4, !noundef !4
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.gs, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gt, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.gu = add i64 %i.gm, 1
  store i64 %i.gu, ptr %i.gl, align 8, !alias.scope !1345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %.val138 = load i16, ptr %i.gv, align 4, !noundef !4
  %i.gw = and i16 %.val138, 3
  %switch.selectcmp.i196 = icmp eq i16 %i.gw, 2
  br i1 %switch.selectcmp.i196, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.gx = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
          to label %bb.cj unwind label %bb.cl     ; 2 uses

bb.ci:                                            ; preds = %bb.dm, %bb.cg
  %.sroa.15.sroa.4.2 = phi i8 [ undef, %bb.cg ], [ %.sroa.7331.0.copyload, %bb.dm ] ; 3 uses
  %.sroa.8.2 = phi i64 [ 1, %bb.cg ], [ %.sroa.4328.0.copyload, %bb.dm ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gz = load i8, ptr %i.gy, align 8, !range !14, !noundef !4
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.dp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224

bb.cj:                                            ; preds = %bb.ch
  %i.hb = extractvalue { ptr, i64 } %i.gx, 0      ; 2 uses
  %i.hc = extractvalue { ptr, i64 } %i.gx, 1      ; 2 uses
  %i.hd = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fw)
          to label %bb.ck unwind label %bb.cl     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.he = extractvalue { ptr, i64 } %i.hd, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hb) ]
  %i.hf = icmp eq i64 %i.hc, %i.he
  br i1 %i.hf, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread

bb.cl:                                            ; preds = %bb.ch, %bb.cj
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202: ; preds = %bb.ck
  %i.hh = extractvalue { ptr, i64 } %i.hd, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hh) ]
  %bcmp.i.i.i201 = call i32 @bcmp(ptr nonnull readonly %i.hb, ptr nonnull readonly %i.hh, i64 %i.hc), !alias.scope !1347
  %.not312 = icmp eq i32 %bcmp.i.i.i201, 0
  br i1 %.not312, label %bb.cm, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread

bb.cm:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.hi = load ptr, ptr %i.k, align 8, !alias.scope !1352, !noundef !4 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hk = atomicrmw add ptr %i.hi, i64 -1 release, align 8, !noalias !1353
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.co, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204 unwind label %bb.cs

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread: ; preds = %bb.ck, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  %i.hm = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.hn = load i64, ptr %i.hm, align 8, !range !9, !alias.scope !1354, !noundef !4
  %4 = icmp eq i64 %i.hn, 0
  br i1 %4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206, label %bb.cp

bb.cp:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !1359, !noundef !4 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hr = atomicrmw add ptr %i.hp, i64 -1 release, align 8, !noalias !1360
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.cr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ho) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206 unwind label %bb.cw

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210: ; preds = %bb.cy, %bb.cx, %bb.cz, %bb.cw, %bb.cs
  %.pn97.pn = phi { ptr, i32 } [ %i.ht, %bb.cs ], [ %i.ib, %bb.cw ], [ %.pn97.ph, %bb.cz ], [ %.pn97.ph, %bb.cx ], [ %.pn97.ph, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.da

bb.cs:                                            ; preds = %bb.co
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204: ; preds = %bb.cn, %bb.cm, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ca

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206: ; preds = %bb.cq, %bb.cp, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread, %bb.cr
  %i.hu = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.hu, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.es, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !1365, !noundef !4 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hz = atomicrmw add ptr %i.hx, i64 -1 release, align 8, !noalias !1366
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.cv, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hw) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208 unwind label %bb.ff

bb.cw:                                            ; preds = %bb.cr
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.ic, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210

bb.cx:                                            ; preds = %.body194, %bb.cl
  %.pn97.ph = phi { ptr, i32 } [ %i.gp, %.body194 ], [ %i.hg, %bb.cl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %i.id = load ptr, ptr %i.k, align 8, !alias.scope !1371, !noundef !4 ; 2 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.if = atomicrmw add ptr %i.id, i64 -1 release, align 8, !noalias !1372
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.cz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210

bb.cz:                                            ; preds = %bb.cy
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210 unwind label %bb.ao

bb.da:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210, %.body190
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %.body190 ], [ %.pn97.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210 ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ii = load i8, ptr %i.ih, align 8, !range !14, !noundef !4
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ef, label %.body214

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit: ; preds = %bb.dg, %bb.df, %bb.ca
  store i8 0, ptr %i.gc, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !1377, !noundef !4 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.fg, label %bb.db

bb.db:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit
  %i.in = atomicrmw add ptr %i.il, i64 -1 release, align 8, !noalias !1378
  %i.io = icmp eq i64 %i.in, 1
  br i1 %i.io, label %bb.dc, label %bb.fg

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ik) #23
          to label %bb.fg unwind label %bb.ff

bb.dd:                                            ; preds = %bb.ca
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val132 = load ptr, ptr %i.ip, align 8         ; 5 uses
  %i.iq = getelementptr i8, ptr %1, i64 120
  %.val133 = load ptr, ptr %i.iq, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ir = load ptr, ptr %.val133, align 8, !invariant.load !4 ; 2 uses
  %.not.i213 = icmp eq ptr %i.ir, null
  br i1 %.not.i213, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val132) ]
  invoke void %i.ir(ptr noundef nonnull %.val132)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.is = getelementptr inbounds nuw i8, ptr %.val133, i64 8
  %i.it = load i64, ptr %i.is, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.iv = getelementptr inbounds nuw i8, ptr %.val133, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val132) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val132, i64 noundef range(i64 1, -9223372036854775808) %i.it, i64 noundef range(i64 1, 536870913) %i.iw) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit

bb.dh:                                            ; preds = %bb.de
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val133, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %.body214, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jb = getelementptr inbounds nuw i8, ptr %.val133, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val132, i64 noundef range(i64 1, -9223372036854775808) %i.iz, i64 noundef range(i64 1, 536870913) %i.jc) #21
  br label %.body214

.body214:                                         ; preds = %bb.dt, %bb.du, %bb.di, %bb.dh, %bb.ef, %.thread295, %bb.da
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %.thread295 ], [ %.pn104.pn.pn.pn, %bb.ef ], [ %.pn104.pn.pn.pn, %bb.da ], [ %i.ix, %bb.dh ], [ %i.ix, %bb.di ], [ %i.jy, %bb.dt ], [ %i.jy, %bb.du ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !1383, !noundef !4 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217, label %bb.dj

bb.dj:                                            ; preds = %.body214
  %i.jh = atomicrmw add ptr %i.jf, i64 -1 release, align 8, !noalias !1384
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.dk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.je) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217 unwind label %bb.ao

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217: ; preds = %bb.dj, %.body214, %bb.dk, %bb.ff, %bb.fl, %.body
  %.pn124 = phi { ptr, i32 } [ %i.ly, %bb.ff ], [ %i.mt, %bb.fl ], [ %.pn90.pn.pn, %.body ], [ %.pn119.pn.pn.pn, %bb.dk ], [ %.pn119.pn.pn.pn, %.body214 ], [ %.pn119.pn.pn.pn, %bb.dj ]
  store i8 2, ptr %i.aa, align 1
  resume { ptr, i32 } %.pn124

bb.dl:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192
  %i.jj = icmp eq i8 %.sroa.7331.0.copyload, 3
  br i1 %i.jj, label %bb.dw, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12320, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.14, i64 25, i1 false)
end_hunk_4
begin_hunk_5_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
  store ptr @61, ptr %i.li, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @60, ptr noundef nonnull %i.r, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.eo unwind label %bb.em

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ei

bb.ep:                                            ; preds = %bb.et, %bb.eq
  %.pn113 = phi { ptr, i32 } [ %i.lj, %bb.eq ], [ %.pn109.pn, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.thread295

bb.eq:                                            ; preds = %bb.ei
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.er:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.es

bb.es:                                            ; preds = %bb.fd, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ct

bb.et:                                            ; preds = %bb.em, %bb.el
  %.pn109.pn = phi { ptr, i32 } [ %i.lb, %bb.em ], [ %i.la, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t) #24
          to label %bb.ep unwind label %bb.ao

bb.eu:                                            ; preds = %bb.ev, %bb.fa
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x)
          to label %bb.fd unwind label %bb.fc

bb.ev:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  %i.lk = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ll = icmp ult i64 %i.lk, 6
  call void @llvm.assume(i1 %i.ll)
  %i.lm = icmp samesign ugt i64 %i.lk, 1
  br i1 %i.lm, label %bb.ew, label %bb.eu

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ln = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eh)
          to label %bb.ez unwind label %bb.ex     ; 2 uses

bb.ex:                                            ; preds = %bb.ew
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ey:                                            ; preds = %bb.ez
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.fe

bb.ez:                                            ; preds = %bb.ew
  %i.lq = extractvalue { ptr, i64 } %i.ln, 0
  %i.lr = extractvalue { ptr, i64 } %i.ln, 1
  store ptr %i.lq, ptr %i.w, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.lr, ptr %i.ls, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5240.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @57, ptr %i.u, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 30, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @57, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 30, ptr %i.lv, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr @63, ptr %i.lw, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @62, ptr noundef nonnull %i.v, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.fa unwind label %bb.ey

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.eu

bb.fb:                                            ; preds = %bb.fe, %bb.fc
  %.pn119 = phi { ptr, i32 } [ %i.lx, %bb.fc ], [ %.pn115.pn, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread295

bb.fc:                                            ; preds = %bb.eu
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fd:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.es

bb.fe:                                            ; preds = %bb.ey, %bb.ex
  %.pn115.pn = phi { ptr, i32 } [ %i.lp, %bb.ey ], [ %i.lo, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x) #24
          to label %bb.fb unwind label %bb.ao

.thread295:                                       ; preds = %bb.ep, %bb.fb, %bb.be, %bb.bf
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn113, %bb.ep ], [ %.pn119, %bb.fb ], [ %i.em, %bb.bf ], [ %i.el, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body214

bb.ff:                                            ; preds = %bb.do, %bb.dc, %bb.cv
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

bb.fg:                                            ; preds = %bb.db, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, %bb.dc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208
  %i.lz = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 48
  %i.mb = getelementptr i8, ptr %i.lz, i64 56     ; 2 uses
  %.val172 = load ptr, ptr %i.mb, align 8, !nonnull !4, !noundef !4
  %i.mc = getelementptr i8, ptr %i.lz, i64 64     ; 3 uses
  %.val173 = load i64, ptr %i.mc, align 8, !noundef !4 ; 2 uses
  %.not.i228 = icmp eq i64 %.val173, 0
  %i.md = getelementptr [64 x i8], ptr %.val172, i64 %.val173 ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 -64    ; 3 uses
  %.not70313 = icmp eq ptr %i.me, null
  %.not70 = or i1 %.not.i228, %.not70313
  br i1 %.not70, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.mf = load i64, ptr %i.me, align 8, !range !9, !noundef !4
  %i.mg = trunc nuw i64 %i.mf to i1
  br i1 %i.mg, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.mh = load i64, ptr %i.mc, align 8, !alias.scope !1391, !noundef !4 ; 3 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230

bb.fj:                                            ; preds = %bb.fh
  %i.mj = getelementptr i8, ptr %i.md, i64 -16
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.me, ptr %i.mk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.mj, ptr %i.ml, align 8
  %.sroa.10269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.10269.0..sroa_idx, align 8
  br label %bb.g

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230: ; preds = %bb.fi
  %i.mm = add nsw i64 %i.mh, -1                   ; 3 uses
  store i64 %i.mm, ptr %i.mc, align 8, !alias.scope !1391
  %i.mn = load i64, ptr %i.ma, align 8, !range !5, !alias.scope !1391, !noundef !4
  %i.mo = icmp samesign ult i64 %i.mm, %i.mn
  call void @llvm.assume(i1 %i.mo)
  %i.mp = load ptr, ptr %i.mb, align 8, !alias.scope !1391, !nonnull !4, !noundef !4
  %i.mq = icmp ult i64 %i.mh, 144115188075855873
  call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw [64 x i8], ptr %i.mp, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mr, i64 64, i1 false), !noalias !1391
  %.pr300 = load i64, ptr %i.i, align 8, !alias.scope !1392
  %i.ms = icmp eq i64 %.pr300, 2
  br i1 %i.ms, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234, label %bb.fk

bb.fk:                                            ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234 unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234: ; preds = %bb.fi, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

bb.fm:                                            ; preds = %bb.ax, %bb.au
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.au ], [ %i.dx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #24
          to label %.thread301 unwind label %bb.ao

bb.fn:                                            ; preds = %.thread301, %bb.x
  %.pn90.pn307 = phi { ptr, i32 } [ %.pn90, %.thread301 ], [ %.pn90.pn, %bb.x ] ; 4 uses
  %.sroa.025.0306 = phi i1 [ true, %.thread301 ], [ %.sroa.025.0, %bb.x ]
  %i.mu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !range !9, !noundef !4
  %5 = icmp ne i64 %i.mv, 0
  %or.cond5 = and i1 %.sroa.025.0306, %5
  br i1 %or.cond5, label %bb.fo, label %.body

bb.fo:                                            ; preds = %bb.fn
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !1397, !noundef !4 ; 2 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %.body, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.mz = atomicrmw add ptr %i.mx, i64 -1 release, align 8, !noalias !1398
  %i.na = icmp eq i64 %i.mz, 1
  br i1 %i.na, label %bb.fq, label %.body

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.mw) #23
          to label %.body unwind label %bb.ao

bb.fr:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.h) #24
          to label %.body unwind label %bb.ao
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
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable22:                            ; preds = %bb.h, %bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1452
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.o, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.b
  %i.q = load i64, ptr %i.e, align 8, !range !9, !noalias !1452, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !20, !noalias !1452, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.r, label %bb.c, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !prof !21

bb.c:                                             ; preds = %.noexc
  %i.v = load i64, ptr %i.u, align 8, !noalias !1452
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #27
          to label %.noexc8 unwind label %bb.ak

.noexc8:                                          ; preds = %bb.c
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %.noexc
  %i.w = load ptr, ptr %i.u, align 8, !noalias !1452, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp samesign ule i64 %i.o, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1452
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, -9223372036854775808) %i.o, i1 false), !noalias !1453
  br label %.thread

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
  br label %bb.i

bb.e:                                             ; preds = %bb.ak, %.body
  %.pn6 = phi { ptr, i32 } [ %i.bp, %bb.ak ], [ %eh.lpad-body, %.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !14, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.am, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25
  unreachable

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !16, !noalias !1454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  switch i8 %.pre, label %default.unreachable22 [
    i8 0, label %bb.i
    i8 1, label %bb.ag
    i8 2, label %bb.ah
  ]

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1454, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !1454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1454
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !1454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1454
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val11.i = load ptr, ptr %i.af, align 8, !noalias !1454, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %.val12.i = load i64, ptr %i.ag, align 8, !noalias !1454, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val9.i = load ptr, ptr %i.ah, align 8, !noalias !1454, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val10.i = load i64, ptr %i.ai, align 8, !noalias !1454, !noundef !4
  invoke void @_RNvNtNtCs5XgW7KoffLW_12opendal_core3raw4path14build_abs_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i)
          to label %bb.k unwind label %bb.r, !noalias !1454

bb.j:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1454
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body.i unwind label %bb.af, !noalias !1454

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1454
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.val13.i = load ptr, ptr %i.ak, align 8, !noalias !1454, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %.val13.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.am, align 8, !noalias !1454, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val8.i = load i64, ptr %i.an, align 8, !noalias !1454, !noundef !4
  invoke void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore6delete(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val8.i)
          to label %bb.l unwind label %bb.j, !noalias !1454

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.a, align 8, !range !8, !alias.scope !1455, !noalias !1454, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, -1
  br i1 %.not.i.i, label %bb.m, label %bb.y

end_hunk_5
begin_hunk_6_@_RNCNvXsa_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_15SimulateDeleterNtNtNtNtNtBb_3raw3oio6delete3api6Delete6delete0Bb_:bb.a
bb.cp:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc17.i.i unwind label %bb.ds, !noalias !1703

.noexc17.i.i:                                     ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.dk, %bb.cn
  %i.ja = phi ptr [ %i.kt, %bb.dk ], [ %i.cn, %bb.cn ] ; 4 uses
  %i.jb = phi ptr [ %i.ku, %bb.dk ], [ %i.cm, %bb.cn ] ; 3 uses
  %i.jc = phi ptr [ %i.kv, %bb.dk ], [ %.phi.trans.insert108.i, %bb.cn ] ; 4 uses
  %i.jd = phi ptr [ %i.kw, %bb.dk ], [ %i.gp, %bb.cn ] ; 3 uses
  %i.je = phi ptr [ %i.kx, %bb.dk ], [ %.phi.trans.insert98.i.i, %bb.cn ] ; 5 uses
  %i.jf = phi ptr [ %i.ky, %bb.dk ], [ %i.ir, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1704
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull align 8 %i.jg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cs unwind label %bb.cr, !noalias !1705

bb.cr:                                            ; preds = %bb.cq
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1704
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.jg) #24
          to label %.body.i.i.i unwind label %bb.dr, !noalias !1705

bb.cs:                                            ; preds = %bb.cq
  %i.ji = load i64, ptr %i.e, align 8, !range !22, !noalias !1704, !noundef !4
  %i.jj = icmp eq i64 %i.ji, -2
  br i1 %i.jj, label %.thread.i.i, label %bb.ct

.thread.i.i:                                      ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1704
  store i8 3, ptr %i.je, align 8, !noalias !1704
  br label %bb.du

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !1704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1704
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.jl = load i8, ptr %i.jk, align 8, !range !13, !noalias !1704, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.jl, 3
  br i1 %cond.i.i.i.i, label %bb.cu, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val.i.i.i.i = load ptr, ptr %i.jm, align 8, !noalias !1704 ; 5 uses
  %i.jn = getelementptr i8, ptr %1, i64 400
  %.val1.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !1704, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.jo = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !1705 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.jo(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.cw unwind label %bb.cy, !noalias !1705

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !range !5, !invariant.load !4, !noalias !1705 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.js = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !range !6, !invariant.load !4, !noalias !1705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.jq, i64 noundef range(i64 1, 536870913) %i.jt) #21, !noalias !1705
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i

bb.cy:                                            ; preds = %bb.cv
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !range !5, !invariant.load !4, !noalias !1705 ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %.body.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !range !6, !invariant.load !4, !noalias !1705
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.jw, i64 noundef range(i64 1, 536870913) %i.jz) #21, !noalias !1705
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.da, %bb.cz, %bb.cy, %bb.cr
  %.pn12.i.i.i = phi { ptr, i32 } [ %.pn10.i.i.i, %bb.dp ], [ %i.ju, %bb.cy ], [ %.pn10.i.i.i, %bb.dm ], [ %.pn10.i.i.i, %bb.dn ], [ %i.jh, %bb.cr ], [ %i.ka, %bb.da ], [ %i.ju, %bb.cz ], [ %.pn10.i.i.i, %bb.dq ], [ %.pn10.i.i.i, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1704
  store i8 2, ptr %i.je, align 8, !noalias !1704
  br label %.body18.i.i

bb.da:                                            ; preds = %bb.dj
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i: ; preds = %bb.cx, %bb.cw, %bb.ct
  %i.kb = load i64, ptr %i.f, align 8, !range !8, !noalias !1704, !noundef !4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %i.kb, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.kd = load i64, ptr %i.kc, align 8, !range !9, !noalias !1704
  %i.ke = trunc nuw i64 %i.kd to i1
  %or.cond.i.i.i = select i1 %.not9.i.i.i, i1 %i.ke, i1 false
  br i1 %or.cond.i.i.i, label %bb.db, label %.thread115.i.i

.thread115.i.i:                                   ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.kc, i64 80, i1 false), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1704
  store i8 1, ptr %i.je, align 8, !noalias !1704
  br label %bb.dv

bb.db:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.kg = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kf)
          to label %bb.dc unwind label %bb.dd, !noalias !1705 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.kh = extractvalue { ptr, i64 } %i.kg, 0
  %i.ki = extractvalue { ptr, i64 } %i.kg, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !1704, !nonnull !4, !align !10, !noundef !4
  %i.kl = invoke noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kh, i64 noundef %i.ki, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kk)
          to label %bb.de unwind label %bb.dd, !noalias !1705

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.de:                                            ; preds = %bb.dc
  br i1 %i.kl, label %bb.dt, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.kf, i64 40, i1 false), !noalias !1704
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.kn = load ptr, ptr %i.d, align 8, !alias.scope !1711, !noalias !1704, !noundef !4 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kp = atomicrmw add ptr %i.kn, i64 -1 release, align 8, !noalias !1712
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.dh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i unwind label %bb.di, !noalias !1705

bb.di:                                            ; preds = %bb.dh
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1704
  br label %bb.dl

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i: ; preds = %bb.dh, %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1704
  %i.ks = load i64, ptr %i.f, align 8, !range !8, !noalias !1704, !noundef !4
  %.not.i.i42.i = icmp eq i64 %i.ks, -1
  br i1 %.not.i.i42.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i unwind label %bb.da, !noalias !1705

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i: ; preds = %bb.dj, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1704
  %.pre.i.i.i = load ptr, ptr %i.kj, align 8, !noalias !1704
  br label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i, %bb.cm
  %i.kt = phi ptr [ %i.ja, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.is, %bb.cm ]
  %i.ku = phi ptr [ %i.jb, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.it, %bb.cm ]
  %i.kv = phi ptr [ %i.jc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.iu, %bb.cm ]
  %i.kw = phi ptr [ %i.jd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.iv, %bb.cm ]
  %i.kx = phi ptr [ %i.je, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.ix, %bb.cm ]
  %i.ky = phi ptr [ %i.jf, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.iy, %bb.cm ]
  %i.kz = phi ptr [ %.pre.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.iw, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1704
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.la, ptr %i.lb, align 8, !noalias !1704
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !1704
  br label %bb.cq

bb.dl:                                            ; preds = %bb.di, %bb.dd
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.kr, %bb.di ], [ %i.km, %bb.dd ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i1 [ false, %bb.di ], [ true, %bb.dd ]
  %i.lc = load i64, ptr %i.f, align 8, !range !8, !noalias !1704, !noundef !4
  %i.ld = icmp eq i64 %i.lc, -1
  br i1 %i.ld, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.le = load i64, ptr %i.kc, align 8, !range !9, !noalias !1704, !noundef !4
  %3 = icmp ne i64 %i.le, 0
  %or.cond4.i.i.i = and i1 %.sroa.0.0.i.i.i, %3
  br i1 %or.cond4.i.i.i, label %bb.do, label %.body.i.i.i

bb.dn:                                            ; preds = %bb.dl
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #24
          to label %.body.i.i.i unwind label %bb.dr, !noalias !1705

bb.do:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.lf = load ptr, ptr %i.kf, align 8, !alias.scope !1717, !noalias !1704, !noundef !4 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %.body.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lh = atomicrmw add ptr %i.lf, i64 -1 release, align 8, !noalias !1718
  %i.li = icmp eq i64 %i.lh, 1
  br i1 %i.li, label %bb.dq, label %.body.i.i.i

bb.dq:                                            ; preds = %bb.dp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.kf) #23
          to label %.body.i.i.i unwind label %bb.dr, !noalias !1705

bb.dr:                                            ; preds = %bb.dq, %bb.dn, %bb.cr
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1705
  unreachable

bb.ds:                                            ; preds = %bb.cp, %bb.co
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

.body18.i.i:                                      ; preds = %bb.ds, %.body.i.i.i
  %i.ll = phi ptr [ %i.cn, %bb.ds ], [ %i.ja, %.body.i.i.i ]
  %i.lm = phi ptr [ %i.cm, %bb.ds ], [ %i.jb, %.body.i.i.i ]
  %i.ln = phi ptr [ %.phi.trans.insert108.i, %bb.ds ], [ %i.jc, %.body.i.i.i ]
  %i.lo = phi ptr [ %i.gp, %bb.ds ], [ %i.jd, %.body.i.i.i ]
  %i.lp = phi ptr [ %i.ir, %bb.ds ], [ %i.jf, %.body.i.i.i ]
  %eh.lpad-body19.i.i = phi { ptr, i32 } [ %i.lk, %bb.ds ], [ %.pn12.i.i.i, %.body.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list11prefix_listINtBJ_12PrefixListerINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtBL_3api7ListDynEL_EENtB2E_4List4next0EBR_(ptr noundef nonnull align 8 %i.lp) #24
          to label %.body.i.i unwind label %bb.ce, !noalias !1703

bb.dt:                                            ; preds = %bb.de
  %.sroa.065.0.copyload66.pre.i.i = load i64, ptr %i.f, align 8, !noalias !1706 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.kc, i64 80, i1 false), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1704
  store i8 1, ptr %i.je, align 8, !noalias !1704
  %i.lq = icmp eq i64 %.sroa.065.0.copyload66.pre.i.i, -2
  br i1 %i.lq, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i)
  br label %bb.fd

bb.dv:                                            ; preds = %bb.dt, %.thread115.i.i
  %.sroa.065.0.copyload66117.i.i = phi i64 [ %i.kb, %.thread115.i.i ], [ %.sroa.065.0.copyload66.pre.i.i, %bb.dt ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867.i.i, i64 80, i1 false), !noalias !1702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i)
  br label %bb.fe

bb.dw:                                            ; preds = %bb.bm
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 4 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !13, !noalias !1719
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.879.i.i)
  switch i8 %.pre.i.i, label %default.unreachable100 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.dz
    i8 2, label %bb.ea
    i8 3, label %bb.dy
  ]

._crit_edge.i:                                    ; preds = %bb.dw
  %.phi.trans.insert110.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.pre111.i = load ptr, ptr %.phi.trans.insert110.i, align 8, !noalias !1719
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i, %.thread118.i.i
  %i.lr = phi ptr [ %i.gq, %.thread118.i.i ], [ %i.cn, %._crit_edge.i ]
  %i.ls = phi ptr [ %i.gr, %.thread118.i.i ], [ %i.cm, %._crit_edge.i ]
  %i.lt = phi ptr [ %i.gt, %.thread118.i.i ], [ %.phi.trans.insert108.i, %._crit_edge.i ]
  %i.lu = phi ptr [ %i.gu, %.thread118.i.i ], [ %i.gp, %._crit_edge.i ]
  %i.lv = phi ptr [ %i.gs, %.thread118.i.i ], [ %.pre111.i, %._crit_edge.i ] ; 2 uses
  %i.lw = phi ptr [ %.sroa.875.0..sroa_idx.i.i, %.thread118.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ]
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.lv, ptr %i.lx, align 8, !noalias !1719
  br label %bb.eq

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1719
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dw
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc38.i.i unwind label %.body40.i.i, !noalias !1703

.noexc38.i.i:                                     ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dw
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc39.i.i unwind label %.body40.i.i, !noalias !1703

.noexc39.i.i:                                     ; preds = %bb.ea
  unreachable

bb.eb:                                            ; preds = %bb.eq, %bb.dy
  %i.ly = phi ptr [ %i.nb, %bb.eq ], [ %i.cn, %bb.dy ] ; 4 uses
  %i.lz = phi ptr [ %i.nc, %bb.eq ], [ %i.cm, %bb.dy ] ; 3 uses
  %i.ma = phi ptr [ %i.nd, %bb.eq ], [ %.phi.trans.insert108.i, %bb.dy ] ; 4 uses
  %i.mb = phi ptr [ %i.ne, %bb.eq ], [ %i.gp, %bb.dy ] ; 3 uses
  %i.mc = phi ptr [ %i.nf, %bb.eq ], [ %.phi.trans.insert.i.i, %bb.dy ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1719
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  invoke fastcc void @_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noundef nonnull align 8 %i.md, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ed unwind label %bb.ec, !noalias !1720

bb.ec:                                            ; preds = %bb.eb
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1719
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.md) #24
          to label %.body40.thread.i.i unwind label %bb.ex, !noalias !1720

bb.ed:                                            ; preds = %bb.eb
  %i.mf = load i64, ptr %i.b, align 8, !range !22, !noalias !1719, !noundef !4
  %i.mg = icmp eq i64 %i.mf, -2
  br i1 %i.mg, label %.thread92.i.i, label %bb.ee

.thread92.i.i:                                    ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1719
  store i8 3, ptr %i.mc, align 8, !noalias !1719
  br label %bb.fa

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1719
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.md)
          to label %bb.eg unwind label %bb.ef, !noalias !1720

.body40.thread.i.i:                               ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.ef, %bb.ec
  %.pn12.i27.i.i = phi { ptr, i32 } [ %i.mh, %bb.ef ], [ %.pn10.i31.i.i, %bb.ev ], [ %.pn10.i31.i.i, %bb.es ], [ %.pn10.i31.i.i, %bb.et ], [ %i.me, %bb.ec ], [ %.pn10.i31.i.i, %bb.ew ], [ %.pn10.i31.i.i, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1719
  store i8 2, ptr %i.mc, align 8, !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  br label %.body.i.i

bb.ef:                                            ; preds = %bb.ep, %bb.ee
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body40.thread.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.mi = load i64, ptr %i.c, align 8, !range !8, !noalias !1719, !noundef !4 ; 2 uses
  %.not9.i28.i.i = icmp eq i64 %i.mi, -1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.mk = load i64, ptr %i.mj, align 8, !range !9, !noalias !1719
  %i.ml = trunc nuw i64 %i.mk to i1
  %or.cond.i29.i.i = select i1 %.not9.i28.i.i, i1 %i.ml, i1 false
  br i1 %or.cond.i29.i.i, label %bb.eh, label %.thread119.i.i

.thread119.i.i:                                   ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.mj, i64 80, i1 false), !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1719
  store i8 1, ptr %i.mc, align 8, !noalias !1719
  br label %bb.fb

bb.eh:                                            ; preds = %bb.eg
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.mn = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mm)
          to label %bb.ei unwind label %bb.ej, !noalias !1720 ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.mo = extractvalue { ptr, i64 } %i.mn, 0
  %i.mp = extractvalue { ptr, i64 } %i.mn, 1
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !noalias !1719, !nonnull !4, !align !10, !noundef !4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 120
  %i.mt = invoke noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mo, i64 noundef %i.mp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ms)
          to label %bb.ek unwind label %bb.ej, !noalias !1720

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ek:                                            ; preds = %bb.ei
  br i1 %i.mt, label %bb.ez, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.mm, i64 40, i1 false), !noalias !1719
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.mv = load ptr, ptr %i.a, align 8, !alias.scope !1726, !noalias !1719, !noundef !4 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.mx = atomicrmw add ptr %i.mv, i64 -1 release, align 8, !noalias !1727
  %i.my = icmp eq i64 %i.mx, 1
  br i1 %i.my, label %bb.en, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34.i.i

bb.en:                                            ; preds = %bb.em
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34.i.i unwind label %bb.eo, !noalias !1720

bb.eo:                                            ; preds = %bb.en
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1719
  br label %bb.er

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34.i.i: ; preds = %bb.en, %bb.em, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1719
  %i.na = load i64, ptr %i.c, align 8, !range !8, !noalias !1719, !noundef !4
  %.not.i35.i.i = icmp eq i64 %i.na, -1
  br i1 %.not.i35.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34.i.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i unwind label %bb.ef, !noalias !1720

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i: ; preds = %bb.ep, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1719
  %.pre.i37.i.i = load ptr, ptr %i.mq, align 8, !noalias !1719
  br label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i, %bb.dx
  %i.nb = phi ptr [ %i.ly, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i ], [ %i.lr, %bb.dx ]
  %i.nc = phi ptr [ %i.lz, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i ], [ %i.ls, %bb.dx ]
  %i.nd = phi ptr [ %i.ma, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i ], [ %i.lt, %bb.dx ]
  %i.ne = phi ptr [ %i.mb, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i ], [ %i.lu, %bb.dx ]
  %i.nf = phi ptr [ %i.mc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i ], [ %i.lw, %bb.dx ]
  %i.ng = phi ptr [ %.pre.i37.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36.i.i ], [ %i.lv, %bb.dx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1719
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.ng, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1719
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 401
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !1719
  br label %bb.eb

bb.er:                                            ; preds = %bb.eo, %bb.ej
  %.pn10.i31.i.i = phi { ptr, i32 } [ %i.mz, %bb.eo ], [ %i.mu, %bb.ej ] ; 5 uses
  %.sroa.0.0.i32.i.i = phi i1 [ false, %bb.eo ], [ true, %bb.ej ]
  %i.nh = load i64, ptr %i.c, align 8, !range !8, !noalias !1719, !noundef !4
  %i.ni = icmp eq i64 %i.nh, -1
  br i1 %i.ni, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.nj = load i64, ptr %i.mj, align 8, !range !9, !noalias !1719, !noundef !4
  %4 = icmp ne i64 %i.nj, 0
  %or.cond4.i33.i.i = and i1 %.sroa.0.0.i32.i.i, %4
  br i1 %or.cond4.i33.i.i, label %bb.eu, label %.body40.thread.i.i

bb.et:                                            ; preds = %bb.er
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c) #24
          to label %.body40.thread.i.i unwind label %bb.ex, !noalias !1720

bb.eu:                                            ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  %i.nk = load ptr, ptr %i.mm, align 8, !alias.scope !1732, !noalias !1719, !noundef !4 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %.body40.thread.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nm = atomicrmw add ptr %i.nk, i64 -1 release, align 8, !noalias !1733
  %i.nn = icmp eq i64 %i.nm, 1
  br i1 %i.nn, label %bb.ew, label %.body40.thread.i.i

bb.ew:                                            ; preds = %bb.ev
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.mm) #23
          to label %.body40.thread.i.i unwind label %bb.ex, !noalias !1720

bb.ex:                                            ; preds = %bb.ew, %bb.et, %bb.ec
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1720
  unreachable

.body40.i.i:                                      ; preds = %bb.ea, %bb.dz
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !noalias !1702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  %cond.i42.i.i = icmp eq i8 %.pr.i.i, 3
  br i1 %cond.i42.i.i, label %bb.ey, label %.body.i.i

bb.ey:                                            ; preds = %.body40.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.nq)
          to label %.body.i.i unwind label %bb.ce, !noalias !1703

bb.ez:                                            ; preds = %bb.ek
  %.sroa.077.0.copyload78.pre.i.i = load i64, ptr %i.c, align 8, !noalias !1721 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.mj, i64 80, i1 false), !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1719
  store i8 1, ptr %i.mc, align 8, !noalias !1719
  %i.nr = icmp eq i64 %.sroa.077.0.copyload78.pre.i.i, -2
  br i1 %i.nr, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez, %.thread92.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ez, %.thread119.i.i
  %.sroa.077.0.copyload78121.i.i = phi i64 [ %i.mi, %.thread119.i.i ], [ %.sroa.077.0.copyload78.pre.i.i, %bb.ez ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879.i.i, i64 80, i1 false), !noalias !1702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  br label %bb.fe

bb.fc:                                            ; preds = %bb.bs, %bb.br
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i

.body45.i:                                        ; preds = %bb.fc, %.body.i.i
  %i.nt = phi ptr [ %i.cn, %bb.fc ], [ %i.ie, %.body.i.i ]
  %i.nu = phi ptr [ %i.cm, %bb.fc ], [ %i.if, %.body.i.i ]
  %i.nv = phi ptr [ %i.gp, %bb.fc ], [ %i.ih, %.body.i.i ]
  %eh.lpad-body46.i = phi { ptr, i32 } [ %i.ns, %bb.fc ], [ %.pn14.pn.i.i, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1176.i)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtBJ_8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBL_3oio4list3api7ListDynEL_ENtNtNtBN_6layers8simulate18ServicerFlatListerINtNtB2n_11prefix_list12PrefixListerB1K_EIB3D_B2T_EENtB2l_4List4next0EBN_(ptr noundef nonnull align 8 %i.nv) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5entry5EntryEBH_.exit52.i unwind label %bb.gf, !noalias !1680

bb.fd:                                            ; preds = %bb.fa, %bb.du, %bb.ci, %bb.bw
  %i.nw = phi ptr [ %i.hf, %bb.bw ], [ %i.ii, %bb.ci ], [ %i.ja, %bb.du ], [ %i.ly, %bb.fa ]
  %i.nx = phi ptr [ %i.hh, %bb.bw ], [ %i.ik, %bb.ci ], [ %i.jc, %bb.du ], [ %i.ma, %bb.fa ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.bw ], [ 4, %bb.ci ], [ 5, %bb.du ], [ 6, %bb.fa ]
  store i8 %.sink.i.ph.i, ptr %i.nx, align 8, !noalias !1702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.584.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1176.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1677
  br label %.thread

bb.fe:                                            ; preds = %bb.fb, %bb.dv, %bb.cj, %bb.cb, %bb.ca, %bb.bx
  %i.ny = phi ptr [ %i.ly, %bb.fb ], [ %i.hf, %bb.bx ], [ %i.ja, %bb.dv ], [ %i.hf, %bb.cb ], [ %i.hf, %bb.ca ], [ %i.ii, %bb.cj ] ; 9 uses
  %i.nz = phi ptr [ %i.lz, %bb.fb ], [ %i.hg, %bb.bx ], [ %i.jb, %bb.dv ], [ %i.hg, %bb.cb ], [ %i.hg, %bb.ca ], [ %i.ij, %bb.cj ] ; 10 uses
  %i.oa = phi ptr [ %i.ma, %bb.fb ], [ %i.hh, %bb.bx ], [ %i.jc, %bb.dv ], [ %i.hh, %bb.cb ], [ %i.hh, %bb.ca ], [ %i.ik, %bb.cj ] ; 5 uses
  %i.ob = phi ptr [ %i.mb, %bb.fb ], [ %i.hi, %bb.bx ], [ %i.jd, %bb.dv ], [ %i.hi, %bb.cb ], [ %i.hi, %bb.ca ], [ %i.il, %bb.cj ] ; 3 uses
  %.sroa.081.0.i.i = phi i64 [ %.sroa.077.0.copyload78121.i.i, %bb.fb ], [ %i.hl, %bb.bx ], [ %.sroa.065.0.copyload66117.i.i, %bb.dv ], [ %i.hl, %bb.cb ], [ %i.hl, %bb.ca ], [ %i.io, %bb.cj ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.1176.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584.i.i, i64 80, i1 false), !noalias !1734
  store i8 1, ptr %i.oa, align 8, !noalias !1702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.584.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.1176.i, i64 80, i1 false), !noalias !1677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1176.i)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtBJ_8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBL_3oio4list3api7ListDynEL_ENtNtNtBN_6layers8simulate18ServicerFlatListerINtNtB2n_11prefix_list12PrefixListerB1K_EIB3D_B2T_EENtB2l_4List4next0EBN_(ptr noundef nonnull align 8 %i.ob)
          to label %bb.fg unwind label %bb.ff, !noalias !1680

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5entry5EntryEBH_.exit52.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i, %bb.fx, %bb.fy, %bb.ff, %.body45.i
  %i.oc = phi ptr [ %i.nt, %.body45.i ], [ %i.oe, %bb.ff ], [ %i.po, %bb.fx ], [ %i.po, %bb.fy ], [ %i.po, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i ]
  %i.od = phi ptr [ %i.nu, %.body45.i ], [ %i.of, %bb.ff ], [ %i.pp, %bb.fx ], [ %i.pp, %bb.fy ], [ %i.pp, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i ] ; 2 uses
  %.pn23.i = phi { ptr, i32 } [ %eh.lpad-body46.i, %.body45.i ], [ %i.og, %bb.ff ], [ %.pn17.pn.i, %bb.fx ], [ %.pn17.pn.i, %bb.fy ], [ %.pn17.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBG_3oio4list3api7ListDynEL_ENtNtNtBI_6layers8simulate18ServicerFlatListerINtNtB2c_11prefix_list12PrefixListerB1z_EIB3s_B2I_EEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.od) #24
          to label %bb.au unwind label %bb.gf, !noalias !1680

bb.ff:                                            ; preds = %bb.bl, %bb.gi, %bb.fe
  %i.oe = phi ptr [ %i.fm, %bb.bl ], [ %i.fm, %bb.gi ], [ %i.ny, %bb.fe ]
  %i.of = phi ptr [ %i.fn, %bb.bl ], [ %i.fn, %bb.gi ], [ %i.nz, %bb.fe ]
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5entry5EntryEBH_.exit52.i

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %.not.i47.i = icmp eq i64 %.sroa.081.0.i.i, -1
  br i1 %.not.i47.i, label %bb.fh, label %bb.ge

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oa, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i, i64 48, i1 false), !alias.scope !1736, !noalias !1677
  store i64 -1, ptr %i.ob, align 8, !alias.scope !1737, !noalias !1677
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oh, ptr noundef nonnull align 8 dereferenceable(48) %i.oa, i64 48, i1 false), !noalias !1677
  %i.oi = load i64, ptr %i.oh, align 8, !range !9, !noalias !1677, !noundef !4
  %i.oj = trunc nuw i64 %i.oi to i1
  br i1 %i.oj, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBG_3oio4list3api7ListDynEL_ENtNtNtBI_6layers8simulate18ServicerFlatListerINtNtB2c_11prefix_list12PrefixListerB1z_EIB3s_B2I_EEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.nz)
          to label %bb.ga unwind label %bb.fz, !noalias !1680

bb.fj:                                            ; preds = %bb.fh
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ol, ptr noundef nonnull align 8 dereferenceable(40) %i.ok, i64 40, i1 false), !noalias !1677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1677
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.oo = load i8, ptr %i.on, align 8, !alias.scope !1739, !noalias !1677, !noundef !4
  %i.op = load ptr, ptr %i.om, align 8, !alias.scope !1739, !noalias !1677, !noundef !4 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.not.i48.i = icmp eq ptr %i.op, null
  br i1 %.not.i48.i, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.or = atomicrmw add ptr %i.op, i64 1 monotonic, align 8, !noalias !1740
  %i.os = icmp slt i64 %i.or, 0
  br i1 %i.os, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ot = load i64, ptr %i.oq, align 8, !alias.scope !1739, !noalias !1677, !noundef !4
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.trap()
  unreachable

bb.fn:                                            ; preds = %bb.fl, %bb.fj
  %.sroa.5.0.i.i = phi i64 [ %i.ot, %bb.fl ], [ undef, %bb.fj ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i8 %i.oo, ptr %i.ou, align 8, !alias.scope !1738, !noalias !1677
  store ptr %i.op, ptr %i.m, align 8, !alias.scope !1738, !noalias !1677
  %i.ov = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.5.0.i.i, ptr %i.ov, align 8, !alias.scope !1738, !noalias !1677
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 345 ; 4 uses
  store i8 1, ptr %i.ow, align 1, !noalias !1677
  %.val35.i = load ptr, ptr %i.ol, align 8, !noalias !1677, !noundef !4
  %i.ox = getelementptr i8, ptr %1, i64 448
  %.val36.i = load i64, ptr %i.ox, align 8, !noalias !1677
  %i.oy = invoke fastcc { ptr, i64 } @_RNvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2_13CompactValues3get(ptr %.val35.i, i64 %.val36.i, i64 noundef 6) #26
          to label %bb.fo unwind label %bb.fv, !noalias !1680 ; 2 uses

bb.fo:                                            ; preds = %bb.fn
  %i.oz = extractvalue { ptr, i64 } %i.oy, 0      ; 2 uses
  %.not11.i = icmp eq ptr %i.oz, null
  br i1 %.not11.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.pa = extractvalue { ptr, i64 } %i.oy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1677
  store i8 0, ptr %i.ow, align 1, !noalias !1677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1677
  invoke void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_8OpDelete12into_version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oz, i64 noundef %i.pa)
          to label %bb.fr unwind label %bb.fq, !noalias !1680

bb.fq:                                            ; preds = %bb.fp
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1677
  br label %.body.i

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1677
  store i8 1, ptr %i.ow, align 1, !noalias !1677
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !2089, !noundef !4 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bz = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !2090
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
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2101
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 16, 553) 40, i64 noundef 8) #21, !noalias !2101 ; 3 uses
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
  %i.g = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !2102
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
