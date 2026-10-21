Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.00?download=true
inline.NumInlined: 560
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB2U_5error5ErrorENtNtB4_6marker4SendEL_EEB2W_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB2H_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB2J_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #28
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB2H_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB2J_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB2H_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB2J_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB2U_5error5ErrorENtNtB4_6marker4SendEL_EEB2W_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2e_5types5error5ErrorENtNtB4_6marker4SendEL_EEB2e_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2e_5types5error5ErrorENtNtB4_6marker4SendEL_EEB2e_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB21_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #28
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB21_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB21_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2e_5types5error5ErrorENtNtB4_6marker4SendEL_EEB2e_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4.i: ; preds = %bb.g, %bb.f
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
  %i.b = load i64, ptr %.0.val, align 8, !range !16, !alias.scope !281, !noundef !11
  %switch.i.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #28
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #28
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !19, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %switch.i.i = icmp samesign ult i8 %i.a, 10
  br i1 %switch.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !288, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !288, !nonnull !11, !noundef !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #28, !noalias !288
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !11
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_.exit: ; preds = %bb.h, %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !298, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !298
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !295, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !295
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.val2.i, ptr %.val3.i) #24
          to label %common.resume.i unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !295, !noundef !11 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !295 ; 6 uses
  %i.k = icmp eq ptr %.val.i, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.l = load ptr, ptr %.val1.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.l(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_.exit

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %common.resume.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #28
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.j, %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.r, %bb.j ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBQ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtB1j_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBQ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtB1j_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs76KlaVGnJsc_4http6header3map3PosENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs76KlaVGnJsc_4http6header3map3PosENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs76KlaVGnJsc_4http6header3map3PosENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecReEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecReEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs76KlaVGnJsc_4http7request7RequestNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.b = load i8, ptr %i.a, align 8, !range !21, !alias.scope !320, !noundef !11
  %switch.i.i.i = icmp samesign ult i8 %i.b, 10
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !320, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !320, !nonnull !11, !noundef !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #28, !noalias !320
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0) #24
          to label %bb.f unwind label %bb.k

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn2.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.g, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val4.i = load ptr, ptr %i.h, align 8, !alias.scope !317, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core(ptr %.val4.i) #24
          to label %.body unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !317, !align !12, !noundef !11 ; 4 uses
  %i.k = icmp eq ptr %.val.i, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http7request5PartsECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #28
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %bb.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http7request5PartsECs5XgW7KoffLW_12opendal_core.exit

bb.k:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.f, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %.pn2.i, %bb.f ], [ %i.l, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #24
          to label %bb.p unwind label %bb.o

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http7request5PartsECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !323, !noundef !11 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http7request5PartsECs5XgW7KoffLW_12opendal_core.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !326, !noundef !11
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !326, !nonnull !11, !align !12, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !326, !nonnull !11, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !326, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !326, !noundef !11
  tail call void %i.w(ptr noundef %i.t, ptr noundef %i.y, i64 noundef %i.aa), !noalias !326, !inline_history !3
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http7request5PartsECs5XgW7KoffLW_12opendal_core.exit
  %1 = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !327
  %i.ab = icmp eq i64 %1, 1
  br i1 %i.ab, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.l, %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !345, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !345
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1E_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEEEEB1G_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #24
          to label %.body unwind label %bb.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1a_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1a_6buffer6BufferNtNtB1a_5error5ErrorEEEENtNtNtB2T_3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtBS_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtBS_6buffer6BufferNtNtBS_5error5ErrorEEEENtNtNtB2A_3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtBS_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtBS_6buffer6BufferNtNtBS_5error5ErrorEEEENtNtNtB2A_3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1E_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEEEEB1G_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ], [ %i.e, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1D_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #24
          to label %.body6 unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1E_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEEEEB1G_.exit: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1E_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEEEEB1G_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body6 unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1E_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEEEEB1G_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1D_.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

.body6:                                           ; preds = %bb.l, %bb.h, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.o, %bb.l ], [ %i.j, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !348, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !348
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs5XgW7KoffLW_12opendal_core.exit

bb.k:                                             ; preds = %.body6
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcINtNtNtCsgxBkk5gSRhY_4core4sync6atomic6AtomicjEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1D_.exit: ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !351, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !351
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs5XgW7KoffLW_12opendal_core.exit9

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1D_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcINtNtNtCsgxBkk5gSRhY_4core4sync6atomic6AtomicjEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs5XgW7KoffLW_12opendal_core.exit9

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs5XgW7KoffLW_12opendal_core.exit9: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1D_.exit, %bb.m
  ret void

bb.n:                                             ; preds = %bb.k, %.body, %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.body6, %bb.k
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1E_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEEEEB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1a_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1a_6buffer6BufferNtNtB1a_5error5ErrorEEEENtNtNtB2T_3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtBS_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtBS_6buffer6BufferNtNtBS_5error5ErrorEEEENtNtNtB2A_3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1l_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1l_6buffer6BufferNtNtB1l_5error5ErrorEEEEEB1n_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtBS_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtBS_6buffer6BufferNtNtBS_5error5ErrorEEEENtNtNtB2A_3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1l_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1l_6buffer6BufferNtNtB1l_5error5ErrorEEEEEB1n_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !379, !noundef !11 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !384, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !384, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !384, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !384, !noundef !11
  invoke void %i.g(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !388, !noundef !11
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !388, !nonnull !11, !align !12, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !388, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !388, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !388, !noundef !11
  invoke void %i.r(ptr noundef %i.o, ptr noundef %i.t, i64 noundef %i.v)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d, !inline_history !0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !392, !noundef !11
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !392, !nonnull !11, !align !12, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !392, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !392, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !392, !noundef !11
  tail call void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af), !noalias !392, !inline_history !376
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs1_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_15HttpTransporter5fetch0EBN_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !11
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs76KlaVGnJsc_4http7request7RequestNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1l_(ptr noalias nofree noundef align 8 dereferenceable(264) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 280
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #28
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 0, ptr %i.q, align 1
  resume { ptr, i32 } %i.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit: ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 0, ptr %i.r, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtBI_18FuturesAsyncReader14resolve_length0EBO_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !11
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret.sink.split:                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit, %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !407, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !407
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %common.ret.sink.split, label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.f = load i8, ptr %i.e, align 1, !range !22, !noundef !11
  %cond.i = icmp eq i8 %i.f, 3
  br i1 %cond.i, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.g)
          to label %bb.e unwind label %.body

.body:                                            ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !410, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !410
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.f, label %.noexc

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.l, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit

.noexc:                                           ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
          to label %.noexc unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit: ; preds = %bb.e, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.m = load ptr, ptr %0, align 8, !alias.scope !413, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !413
  %i.n = icmp eq i64 %3, 1
  br i1 %i.n, label %common.ret.sink.split, label %common.ret

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport28fetch_with_default_transport0EBJ_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !11
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs1_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_15HttpTransporter5fetch0EBN_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs76KlaVGnJsc_4http7request7RequestNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1l_(ptr noalias nofree noundef align 8 dereferenceable(264) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.d = load i8, ptr %i.c, align 8, !range !22, !noundef !11
  switch i8 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs1_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_15HttpTransporter5fetch0EBN_.exit [
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs76KlaVGnJsc_4http7request7RequestNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs1_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_15HttpTransporter5fetch0EBN_.exit unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.val.i = load ptr, ptr %i.f, align 8           ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 544
  %.val2.i = load ptr, ptr %i.g, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.h = load ptr, ptr %.val2.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 553
  store i8 0, ptr %i.t, align 1
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit.i: ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 553
  store i8 0, ptr %i.u, align 1
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs1_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_15HttpTransporter5fetch0EBN_.exit

bb.k:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.n, %.body.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 561
  store i8 0, ptr %i.w, align 1
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs1_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_15HttpTransporter5fetch0EBN_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs76KlaVGnJsc_4http8response8ResponseNtNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport4body8HttpBodyENtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEB3c_.exit.i, %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 561
  store i8 0, ptr %i.x, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !range !22, !noundef !11
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.e
  ]

common.ret:                                       ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !427, !noundef !11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %common.ret, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !428
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.d, label %common.ret

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #29
  br label %common.ret

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.h = load ptr, ptr %.val2, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.t, align 8
  resume { ptr, i32 } %i.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit: ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.u, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_20DefaultHttpTransportNtBJ_13HttpTransport5fetch0EBN_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !11
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs76KlaVGnJsc_4http7request7RequestNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1l_(ptr noalias nofree noundef align 8 dereferenceable(264) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport28fetch_with_default_transport0EBJ_(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #28
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 8, !range !23, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8            ; 7 uses
  %switch.i.i = icmp samesign ult i8 %.val, 2
  br i1 %switch.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http3uri6scheme6SchemeECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.b = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !474, !noundef !11
  %i.d = load ptr, ptr %.val2, align 8, !alias.scope !474, !nonnull !11, !align !12, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !474, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !474, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !474, !noundef !11
  invoke void %i.f(ptr noundef %i.c, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs76KlaVGnJsc_4http8byte_str7ByteStrEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %.body, !inline_history !435

.body:                                            ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 32, i64 noundef 8) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !479, !noundef !11
  %i.o = load ptr, ptr %i.l, align 8, !alias.scope !479, !nonnull !11, !align !12, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !479, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !479, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !479, !noundef !11
  invoke void %i.q(ptr noundef %i.n, ptr noundef %i.s, i64 noundef %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http3uri9authority9AuthorityECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d, !inline_history !444

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs76KlaVGnJsc_4http8byte_str7ByteStrEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http3uri6scheme6SchemeECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http3uri6scheme6SchemeECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs76KlaVGnJsc_4http8byte_str7ByteStrEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !484, !noundef !11
  %i.y = load ptr, ptr %i.v, align 8, !alias.scope !484, !nonnull !11, !align !12, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !484, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !484, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !484, !noundef !11
  invoke void %i.aa(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae)
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http8response7BuilderECs5XgW7KoffLW_12opendal_core:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !500, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core(ptr %.val1.i.i) #24
          to label %common.resume.i.i unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !500, !align !12, !noundef !11 ; 4 uses
  %i.e = icmp eq ptr %.val.i.i, null
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs76KlaVGnJsc_4http8response5PartsNtNtB11_5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i unwind label %bb.f

common.resume.i.i:                                ; preds = %bb.f, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #28
  br label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs76KlaVGnJsc_4http8response5PartsNtNtB11_5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs76KlaVGnJsc_4http8response5PartsNtNtB11_5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body5 unwind label %bb.o

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body5 unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

.body5:                                           ; preds = %bb.i, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !509, !noundef !11
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %.body5
  invoke void @_RNvXs4_NtCselJpgKOOZlr_6anyhow5errorNtB7_5ErrorNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !510, !noundef !11
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs4_NtCselJpgKOOZlr_6anyhow5errorNtB7_5ErrorNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8 unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.body5, %bb.h, %bb.k
  %.pn2 = phi { ptr, i32 } [ %i.p, %bb.k ], [ %.pn, %bb.h ], [ %.pn, %.body5 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val4 = load ptr, ptr %i.o, align 8, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core(ptr %.val4) #24
          to label %common.resume unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.q, align 8, !align !12, !noundef !11 ; 5 uses
  %i.r = icmp eq ptr %.val, null
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8
  %i.s = load i64, ptr %.val, align 8, !range !16, !alias.scope !511, !noundef !11
  %switch.i.i.i.i = icmp samesign ult i64 %i.s, 2
  br i1 %switch.i.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.n

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.n ], [ %.pn2, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #28
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.m, %bb.l
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i
  ret void

bb.o:                                             ; preds = %bb.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !523, !noundef !11 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !526, !noundef !11
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !526, !nonnull !11, !align !12, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !526, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !526, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !526, !noundef !11
  tail call void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l), !noalias !526, !inline_history !518
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

bb.c:                                             ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !527
  %i.m = icmp eq i64 %1, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxSNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef 2) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxSNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxSNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBJ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxSNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxSNtNtNtCs76KlaVGnJsc_4http6header3map3PosEECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %common.resume unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBQ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtB1c_5value11HeaderValueEEECs5XgW7KoffLW_12opendal_core.exit
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBQ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipart11RelatedPartEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #24
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !542, !noundef !11 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !545, !noundef !11
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !545, !nonnull !11, !align !12, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !545, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !545, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !545, !noundef !11
  tail call void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o), !noalias !545, !inline_history !3
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.e:                                             ; preds = %bb.c
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !546
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipart12FormDataPartEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #24
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !561, !noundef !11 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !564, !noundef !11
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !564, !nonnull !11, !align !12, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !564, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !564, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !564, !noundef !11
  tail call void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o), !noalias !564, !inline_history !3
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.e:                                             ; preds = %bb.c
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !565
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipart9MixedPartEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b) #24
          to label %bb.d unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #24
          to label %bb.j unwind label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !590, !noundef !11 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !593, !noundef !11
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !593, !nonnull !11, !align !12, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !593, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !593, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !593, !noundef !11
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.k, !inline_history !24

bb.h:                                             ; preds = %bb.f
  %1 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !594
  %i.s = icmp eq i64 %1, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.x, %bb.k ], [ %.pn, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !25, !alias.scope !595, !noundef !11
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit, label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.h, %bb.g, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.z = load i8, ptr %i.y, align 8, !range !19, !alias.scope !596, !noundef !11 ; 2 uses
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %switch.i.i.i = icmp samesign ult i8 %i.z, 10
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val1.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !599, !noundef !11 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !599, !nonnull !11, !noundef !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #28, !noalias !599
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit

bb.o:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.n, %bb.m, %bb.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !25, !alias.scope !600, !noundef !11
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit8, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.ae)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit8

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit8: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.o, %bb.d, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.j, %bb.o
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !619, !noundef !11 ; 3 uses
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !626, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !626
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !627, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !627
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.val2.i.i.i, ptr %.val3.i.i.i) #24
          to label %common.resume unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !627, !noundef !11 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !627 ; 6 uses
  %i.l = icmp eq ptr %.val.i.i.i, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.m = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.m(ptr noundef nonnull %.val.i.i.i)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.f, %bb.k, %bb.l, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.q ], [ %i.g, %bb.f ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.ar, %bb.y ], [ %i.ar, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !631, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !631
  %i.ab = icmp eq i64 %2, 1
  br i1 %i.ab, label %bb.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad) #24
          to label %bb.q unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.ac, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.af) #24
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ai)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.t:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.aj, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.ak, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.al = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.al(ptr noundef nonnull %.val)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.x:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #28
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit: ; preds = %bb.w, %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i, %bb.j, %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !16, !noundef !11
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !655, !noundef !11
  %i.m = icmp ne ptr %i.l, null                   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !656
  store i64 %i.n, ptr %i.b, align 8, !noalias !656
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !656
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !655, !noundef !11
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !655, !noundef !11
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #30
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !13, !noalias !655, !noundef !11
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  store i64 %i.r, ptr %i.a, align 8, !noalias !657
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !658
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !658
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !658 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !658
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !658, !noundef !11
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !658, !noundef !11
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
end_hunk_1
begin_hunk_2_@_RINvYNtNtNtCsgxBkk5gSRhY_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECs5XgW7KoffLW_12opendal_core:bb.a
  store i32 13, ptr %i.a, align 4, !noalias !788
  %i.w = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !789 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !788
  br label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.peel

_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.peel: ; preds = %bb.b, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.us.us.peel
  %i.x = add i64 %1, -1                           ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.loopexit.loopexit

.split.us.split:                                  ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.z = trunc nuw i8 %.promoted to i1
  br i1 %i.z, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.us

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.us: ; preds = %.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  store i8 1, ptr %i.c, align 1, !alias.scope !795
  br label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread

.split:                                           ; preds = %.split.preheader, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit
  %i.aa = phi i64 [ %i.az, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.promoted20, %.split.preheader ] ; 3 uses
  %.lcssa19 = phi i64 [ %.lcssa18, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.promoted17, %.split.preheader ] ; 4 uses
  %i.ab = phi i8 [ %i.ba, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.promoted, %.split.preheader ]
  %.sroa.01.0 = phi i64 [ %i.be, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %1, %.split.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.ad = icmp ult i64 %i.h, %i.aa
  br i1 %i.ad, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.c
  call void @llvm.assume(i1 %i.m)
  %.pre.i.i.i.i.i = load i8, ptr %i.o, align 1, !alias.scope !796 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.split.preheader.i.i.i.i.i
  %i.ae = phi i64 [ %i.at, %bb.g ], [ %i.aa, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.af = sub nuw i64 %i.h, %i.ae                 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ah = icmp samesign ult i64 %i.af, 16
  br i1 %i.ah, label %.preheader.i.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ai = call { i64, i64 } @_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.af), !noalias !797
  br label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %bb.e ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aj = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ak = insertvalue { i64, i64 } %i.aj, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.e ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !798, !noalias !797, !noundef !11
  %i.an = icmp eq i8 %i.am, %.pre.i.i.i.i.i
  br i1 %i.an, label %._crit_edge.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ao, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ak, %._crit_edge.i.i.i.i.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.ap = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %.split.us.i.i.i.i.i

bb.f:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ar = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.as = add i64 %i.ae, 1
  %i.at = add i64 %i.as, %i.ar                    ; 11 uses
  store i64 %i.at, ptr %i.f, align 8, !alias.scope !796
  %.not11.i.i.i.i.i = icmp ult i64 %i.at, %i.l
  %.not12.i.i.i.i.i = icmp ugt i64 %i.at, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %bb.h

.split.us.i.i.i.i.i:                              ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !796
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.av = sub nuw i64 %i.at, %i.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.av
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aw, ptr nonnull %i.i, i64 %i.l), !noalias !799
  %i.ax = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ax, label %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.g

_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.h
  store i64 %i.at, ptr %0, align 8, !alias.scope !784
  br label %select.unfold.i.i

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.g, %.split.us.i.i.i.i.i, %bb.c
  %i.ay = phi i64 [ %i.aa, %bb.c ], [ %i.h, %.split.us.i.i.i.i.i ], [ %i.at, %bb.g ]
  store i8 1, ptr %i.c, align 1, !alias.scope !795
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa19
  %or.cond.not.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.az = phi i64 [ %i.at, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.ay, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ]
  %.lcssa18 = phi i64 [ %i.at, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.lcssa19, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ]
  %i.ba = phi i8 [ 0, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ]
  %.pn = phi i64 [ %i.at, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn, %.lcssa19 ; 2 uses
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !800
  store i32 10, ptr %i.b, align 4, !noalias !800
  %i.bb = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !800
  br i1 %i.bb, label %bb.i, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

bb.i:                                             ; preds = %select.unfold.i.i
  %i.bc = add i64 %.sroa.4.1.i.i.i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !800
  store i32 13, ptr %i.a, align 4, !noalias !800
  %i.bd = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !801 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !800
  br label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.i, %select.unfold.i.i
  %i.be = add i64 %.sroa.01.0, -1                 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %.split

_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.loopexit.loopexit: ; preds = %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  br label %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread

_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, %.split, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %.split.us.split.us.preheader, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.peel, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.loopexit.loopexit, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.us, %.split.us.split
  %.us-phi = phi i64 [ %1, %.split.us.split ], [ %1, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.us ], [ %i.x, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.loopexit.loopexit ], [ %1, %.split.us.split.us.preheader ], [ 0, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.peel ], [ 0, %_RNvXss_NtNtCsgxBkk5gSRhY_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.sroa.01.0, %.split ], [ %.sroa.01.0, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ]
  ret i64 %.us-phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB6_18FuturesAsyncReader14resolve_length0Bc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.741.i = alloca [72 x i8], align 8        ; 7 uses
  %.sroa.3.sroa.3.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.536.i = alloca [40 x i8], align 8        ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !22, !noundef !11
  switch i8 %i.f, label %default.unreachable41 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable41:                            ; preds = %bb.p, %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 89
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.741.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.536.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 89
  br label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit: ; preds = %bb.aw, %.body, %.body.thread
  %.pn4 = phi { ptr, i32 } [ %i.dl, %bb.aw ], [ %i.dl, %.body ], [ %.pn8.pn.pn.i, %.body.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !851, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !851
  %i.k = icmp eq i64 %3, 1
  br i1 %i.k, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit unwind label %bb.bb

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 89
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !22, !noalias !852
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.741.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.536.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 5 uses
  switch i8 %.pre, label %default.unreachable41 [
    i8 0, label %bb.f
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.n = phi ptr [ %i.i, %.thread ], [ %i.m, %bb.e ] ; 4 uses
  %i.o = phi ptr [ %i.h, %.thread ], [ %i.l, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store i8 0, ptr %i.p, align 8, !noalias !852
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !noalias !852, !nonnull !11, !align !12, !noundef !11 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136 ; 2 uses
  %i.t = invoke { i64, i64 } @_RNvMs9_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_6OpRead19content_length_hint(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.g unwind label %bb.j, !noalias !853 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.y = load atomic i32, ptr %i.x acquire, align 8, !noalias !853
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %_RNCNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB6_11ReadContext14content_length00Bc_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !853, !noundef !11
  br label %bb.ay

bb.j:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNCNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB6_11ReadContext14content_length00Bc_.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !852
  %.val.i = load ptr, ptr %i.s, align 8, !noalias !853, !noundef !11 ; 5 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %_RNCNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB6_11ReadContext14content_length00Bc_.exit.i.i
  %i.ad = getelementptr i8, ptr %i.r, i64 144
  %.val12.i = load i64, ptr %i.ad, align 8, !noalias !853
  %i.ae = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !853
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

.thread.i:                                        ; preds = %bb.k, %_RNCNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB6_11ReadContext14content_length00Bc_.exit.i.i
  %.sroa.5.0.i.i = phi i64 [ undef, %_RNCNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB6_11ReadContext14content_length00Bc_.exit.i.i ], [ %.val12.i, %bb.k ] ; 3 uses
  store ptr %.val.i, ptr %i.d, align 8, !noalias !852
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i.i, ptr %i.ag, align 8, !noalias !852
  store i8 1, ptr %i.p, align 8, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !852
  %i.ah = getelementptr i8, ptr %i.r, i64 56
  %.val13.i = load ptr, ptr %i.ah, align 8, !noalias !853, !nonnull !11, !noundef !11 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.r, i64 64
  %.val14.i = load i64, ptr %i.ai, align 8, !noalias !853, !noundef !11 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  store i8 0, ptr %i.p, align 8, !noalias !852
  store ptr %.val.i, ptr %i.o, align 8, !noalias !852
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.830.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.1032.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.val13.i, ptr %.sroa.1032.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.1133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %.val14.i, ptr %.sroa.1133.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.1234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ak, ptr %.sroa.1234.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.aj, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !852
  br label %bb.r

bb.m:                                             ; preds = %bb.ao, %.body.i
  %i.al = phi ptr [ %i.cx, %.body.i ], [ %i.bx, %bb.ao ]
  %.pn8.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.de, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !852
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !range !27, !noalias !852, !noundef !11
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.ar, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.m
  store i8 0, ptr %i.am, align 8, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !852
  br label %.body.thread

.body.thread:                                     ; preds = %bb.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i
  %i.ap = phi ptr [ %i.al, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ], [ %i.n, %bb.j ]
  %.pn8.pn.pn.i = phi { ptr, i32 } [ %.pn8.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ], [ %i.ac, %bb.j ]
  store i8 2, ptr %i.ap, align 1, !noalias !852
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit

bb.n:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
          to label %.noexc8 unwind label %.body

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
          to label %.noexc9 unwind label %.body

.noexc9:                                          ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !852
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !range !22, !noalias !854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  switch i8 %.pre.i, label %default.unreachable41 [
    i8 0, label %._crit_edge24
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.q
  ]

._crit_edge24:                                    ; preds = %bb.p
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !noalias !854
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre28 = load ptr, ptr %.phi.trans.insert27, align 8, !noalias !854
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !noalias !854
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre32 = load i64, ptr %.phi.trans.insert31, align 8, !noalias !854
  %.pre33 = load ptr, ptr %i.l, align 8, !noalias !854
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre35 = load i64, ptr %.phi.trans.insert34, align 8, !noalias !854
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !854
  br label %bb.v

bb.r:                                             ; preds = %._crit_edge24, %.thread.i
  %i.aq = phi ptr [ %i.n, %.thread.i ], [ %i.m, %._crit_edge24 ] ; 2 uses
  %i.ar = phi ptr [ %i.o, %.thread.i ], [ %i.l, %._crit_edge24 ] ; 2 uses
  %i.as = phi i64 [ %.sroa.5.0.i.i, %.thread.i ], [ %.pre35, %._crit_edge24 ] ; 2 uses
  %i.at = phi ptr [ %.val.i, %.thread.i ], [ %.pre33, %._crit_edge24 ] ; 4 uses
  %i.au = phi i64 [ %.val14.i, %.thread.i ], [ %.pre32, %._crit_edge24 ]
  %i.av = phi ptr [ %.val13.i, %.thread.i ], [ %.pre30, %._crit_edge24 ]
  %i.aw = phi ptr [ %i.aj, %.thread.i ], [ %.pre28, %._crit_edge24 ]
  %i.ax = phi ptr [ %i.ak, %.thread.i ], [ %.pre26, %._crit_edge24 ] ; 2 uses
  %i.ay = phi ptr [ %.sroa.15.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge24 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !854
  store i8 1, ptr %i.az, align 8, !noalias !854
  store ptr %i.at, ptr %i.a, align 8, !noalias !854
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !noalias !854
  %.val7.i.i = load ptr, ptr %i.ax, align 8, !noalias !856, !nonnull !11, !noundef !11
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val8.i.i = load ptr, ptr %i.bb, align 8, !noalias !856, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !18, !invariant.load !11, !noalias !856
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = and i64 %i.be, -16
  %i.bg = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.az, align 8, !noalias !854
  %i.bi = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !11, !noalias !856, !nonnull !11
  %i.bk = invoke { ptr, ptr } %i.bj(ptr noundef nonnull %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.au, ptr noundef %i.at, i64 %i.as)
          to label %bb.s unwind label %bb.ae, !noalias !856 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bl, ptr %i.bn, align 8, !noalias !854
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bm, ptr %i.bo, align 8, !noalias !854
  br label %bb.v

.body.i.i:                                        ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.w
  %i.bp = phi ptr [ %i.bx, %bb.w ], [ %i.aq, %bb.ae ], [ %i.bx, %bb.ad ], [ %i.bx, %bb.ac ]
  %i.bq = phi ptr [ %i.by, %bb.w ], [ %i.ar, %bb.ae ], [ %i.by, %bb.ad ], [ %i.by, %bb.ac ]
  %i.br = phi ptr [ %i.bz, %bb.w ], [ %i.ay, %bb.ae ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.ac ]
  %i.bs = phi ptr [ %i.ca, %bb.w ], [ %i.at, %bb.ae ], [ %i.ca, %bb.ad ], [ %i.ca, %bb.ac ] ; 2 uses
  %.pn2.i.i = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %i.ct, %bb.ae ], [ %i.cn, %bb.ad ], [ %i.cn, %bb.ac ]
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !range !27, !noalias !854, !noundef !11
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = icmp ne ptr %i.bs, null
  %or.cond.not.i.i = and i1 %i.bw, %i.bv
  br i1 %or.cond.not.i.i, label %bb.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i

bb.t:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #27
          to label %.noexc.i unwind label %bb.ai, !noalias !853

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #27
          to label %.noexc16.i unwind label %bb.ai, !noalias !853

.noexc16.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.q
  %i.bx = phi ptr [ %i.m, %bb.q ], [ %i.aq, %bb.s ] ; 7 uses
  %i.by = phi ptr [ %i.l, %bb.q ], [ %i.ar, %bb.s ] ; 4 uses
  %i.bz = phi ptr [ %.phi.trans.insert.i, %bb.q ], [ %i.ay, %bb.s ] ; 5 uses
  %i.ca = phi ptr [ undef, %bb.q ], [ %i.at, %bb.s ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2g_5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w, !noalias !853

bb.w:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %.val5.i.i = load ptr, ptr %i.cb, align 8, !noalias !854
  %i.cd = getelementptr i8, ptr %1, i64 32
  %.val6.i.i = load ptr, ptr %i.cd, align 8, !noalias !854, !nonnull !11, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val5.i.i, ptr nonnull %.val6.i.i) #24
          to label %.body.i.i unwind label %bb.af, !noalias !857

bb.x:                                             ; preds = %bb.v
  %i.ce = load i64, ptr %i.b, align 8, !range !28, !alias.scope !855, !noalias !852, !noundef !11 ; 3 uses
  %i.cf = icmp eq i64 %i.ce, -2
  br i1 %i.cf, label %bb.ax, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val.i.i = load ptr, ptr %i.cb, align 8, !noalias !854 ; 5 uses
  %i.cg = getelementptr i8, ptr %1, i64 32
  %.val4.i.i = load ptr, ptr %i.cg, align 8, !noalias !854, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.ch = load ptr, ptr %.val4.i.i, align 8, !invariant.load !11, !noalias !857 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ch(ptr noundef nonnull %.val.i.i)
          to label %bb.aa unwind label %bb.ac, !noalias !857

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !14, !invariant.load !11, !noalias !857 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !range !18, !invariant.load !11, !noalias !857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cj, i64 noundef range(i64 1, 536870913) %i.cm) #28, !noalias !857
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !14, !invariant.load !11, !noalias !857 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.body.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !18, !invariant.load !11, !noalias !857
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #28, !noalias !857
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.af:                                            ; preds = %bb.ah, %bb.w
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !857
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i: ; preds = %bb.ah, %bb.ag, %.body.i.i
  store i8 0, ptr %i.bt, align 8, !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !854
  store i8 2, ptr %i.br, align 1, !noalias !854
  br label %.body.i

bb.ag:                                            ; preds = %.body.i.i
  %4 = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !858
  %i.cv = icmp eq i64 %4, 1
  br i1 %i.cv, label %bb.ah, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i unwind label %bb.af, !noalias !857

bb.ai:                                            ; preds = %bb.u, %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ai, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i
  %i.cx = phi ptr [ %i.m, %bb.ai ], [ %i.bp, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i ]
  %i.cy = phi ptr [ %i.l, %bb.ai ], [ %i.bq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cw, %bb.ai ], [ %.pn2.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !852
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.cy) #24
          to label %bb.m unwind label %bb.ap, !noalias !853

bb.aj:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.cz, align 8, !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !854
  store i8 1, ptr %i.bz, align 1, !noalias !854
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !852 ; 4 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !852
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.536.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.536.0..sroa_idx.i, i64 40, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !852
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.by)
          to label %bb.ak unwind label %bb.ao, !noalias !853

bb.ak:                                            ; preds = %bb.aj
  %.not.i17.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i17.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !852
  store i64 %.sroa.3.sroa.0.0.copyload.i, ptr %i.c, align 8, !alias.scope !859, !noalias !852
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val15.i = load i64, ptr %i.da, align 8, !noalias !852, !noundef !11
  %i.db = icmp eq i64 %.sroa.3.sroa.0.0.copyload.i, 0
  br i1 %i.db, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = inttoptr i64 %.sroa.3.sroa.0.0.copyload.i to ptr
  %5 = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !860
  %i.dd = icmp eq i64 %5, 1
  br i1 %i.dd, label %bb.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i unwind label %bb.ao, !noalias !853

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i: ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !852
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.df, align 8, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !852
  br label %bb.ay

bb.ap:                                            ; preds = %bb.at, %.body.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !853
  unreachable

bb.aq:                                            ; preds = %bb.ak
  %.sroa.741.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.741.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.741.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.536.i, i64 40, i1 false), !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.741.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !852
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.dh, align 8, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !852
  br label %bb.ay

bb.ar:                                            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.di = load ptr, ptr %i.d, align 8, !alias.scope !864, !noalias !852, !noundef !11 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %6 = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !865
  %i.dk = icmp eq i64 %6, 1
  br i1 %i.dk, label %bb.at, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i unwind label %bb.ap, !noalias !853

.body:                                            ; preds = %bb.n, %bb.o
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.m, align 1
  %cond.i = icmp eq i8 %.pr, 3
  br i1 %cond.i, label %bb.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit

bb.au:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.l)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.dn, align 8
  br label %.body10

bb.aw:                                            ; preds = %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.do, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit

common.ret:                                       ; preds = %bb.ay, %bb.az, %bb.ax
  %storemerge = phi i8 [ 3, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.ay ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.ax:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !854
  store i8 3, ptr %i.bz, align 1, !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !852
  store i8 3, ptr %i.bx, align 1, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.536.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ay:                                            ; preds = %bb.aq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i, %bb.i, %bb.g
  %i.dp = phi ptr [ %i.bx, %bb.aq ], [ %i.bx, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i ], [ %i.n, %bb.i ], [ %i.n, %bb.g ]
  %.sroa.4.0.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.i, %bb.aq ], [ %.val15.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i ], [ %i.ab, %bb.i ], [ %i.v, %bb.g ]
  %.sroa.040.0.i = phi i64 [ %i.ce, %bb.aq ], [ -1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit20.i ], [ -1, %bb.i ], [ -1, %bb.g ]
  store i64 %.sroa.040.0.i, ptr %0, align 8, !alias.scope !853
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !853
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.741.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.741.i, i64 72, i1 false), !noalias !866
  store i8 1, ptr %i.dp, align 1, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.536.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.dq = load ptr, ptr %1, align 8, !alias.scope !869, !nonnull !11, !noundef !11
  %7 = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !869
  %i.dr = icmp eq i64 %7, 1
  br i1 %i.dr, label %bb.az, label %common.ret

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #29
          to label %common.ret unwind label %bb.ba

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit, %bb.b, %bb.ba
  %.pn6 = phi { ptr, i32 } [ %i.ds, %bb.ba ], [ %.pn4, %bb.b ], [ %.pn4, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBG_11ReadContext14content_length0EBM_.exit ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn6

bb.ba:                                            ; preds = %bb.az
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit

bb.bb:                                            ; preds = %bb.b
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body10

.body10:                                          ; preds = %bb.av, %bb.bb
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtB7_20DefaultHttpTransportNtB7_13HttpTransport5fetch0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 5 uses
  %i.b = alloca [264 x i8], align 8               ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.3.i = alloca [88 x i8], align 8          ; 7 uses
  %.sroa.4.i = alloca [56 x i8], align 8          ; 6 uses
  %i.f = alloca [152 x i8], align 8               ; 9 uses
  %i.g = alloca [264 x i8], align 8               ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !22, !noundef !11
  switch i8 %i.i, label %default.unreachable12 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable12:                            ; preds = %bb.r, %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.j, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 832
  br label %bb.g

bb.b:                                             ; preds = %bb.au, %.body
  %.pn2 = phi { ptr, i32 } [ %i.cr, %bb.au ], [ %eh.lpad-body, %.body ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn2

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !22, !noalias !876
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 4 uses
  switch i8 %.pre, label %default.unreachable12 [
    i8 0, label %bb.g
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

bb.f:                                             ; preds = %.body.i, %bb.l
  %i.o = phi ptr [ %i.t, %bb.l ], [ %i.cg, %.body.i ] ; 2 uses
  %i.p = phi ptr [ %i.u, %bb.l ], [ %i.ch, %.body.i ] ; 2 uses
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn8.i, %bb.l ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 833
  %i.r = load i8, ptr %i.q, align 1, !range !27, !noalias !876, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.aq, label %bb.an

bb.g:                                             ; preds = %.thread, %bb.e
  %i.t = phi ptr [ %i.l, %.thread ], [ %i.n, %bb.e ] ; 3 uses
  %i.u = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.e ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 833 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !876
  store i8 1, ptr %i.v, align 1, !noalias !876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull align 8 dereferenceable(264) %i.u, i64 264, i1 false), !noalias !876
  %i.w = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport24DEFAULT_HTTP_TRANSPORTER, i64 16) acquire, align 8, !noalias !876
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !876
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39)
          to label %bb.i unwind label %bb.j, !noalias !876

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 24)
          to label %bb.k unwind label %bb.j, !noalias !876

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !876
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !876
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 64)
          to label %bb.n unwind label %bb.m, !noalias !876

bb.l:                                             ; preds = %bb.m, %bb.j
  %.pn8.i = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !876
  br label %bb.f

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !876
  br label %bb.o

bb.o:                                             ; preds = %bb.al, %bb.n
  %i.z = phi ptr [ %i.bi, %bb.al ], [ %i.t, %bb.n ] ; 2 uses
  %i.aa = phi ptr [ %i.bj, %bb.al ], [ %i.u, %bb.n ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.bp, %bb.al ], [ 2, %bb.n ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 833 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !range !27, !noalias !876, !noundef !11
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.am, label %bb.at

.thread.i:                                        ; preds = %bb.g
  store i8 0, ptr %i.v, align 1, !noalias !876
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, ptr noundef nonnull align 8 dereferenceable(264) %i.g, i64 264, i1 false), !noalias !876
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport24DEFAULT_HTTP_TRANSPORTER, ptr %.sroa.729.0..sroa_idx.i, align 8, !noalias !876
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !876
  br label %bb.t

bb.p:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27
          to label %.noexc4 unwind label %bb.ar

.noexc4:                                          ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !876
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !22, !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !876
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  switch i8 %.pre.i, label %default.unreachable12 [
    i8 0, label %._crit_edge
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.s
  ]

._crit_edge:                                      ; preds = %bb.r
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %1, i64 800
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPart12from_request:bb.a
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http3uri4path12PathAndQueryECs5XgW7KoffLW_12opendal_core.exit47
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %.val25 = load ptr, ptr %i.bw, align 8, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core(ptr %.val25) #24
          to label %.thread71 unwind label %bb.u

bb.s:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http3uri4path12PathAndQueryECs5XgW7KoffLW_12opendal_core.exit47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %.val24 = load ptr, ptr %i.bx, align 8, !align !12, !noundef !11 ; 4 uses
  %i.by = icmp eq ptr %.val24, null
  br i1 %i.by, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val24)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.t
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.u:                                             ; preds = %bb.r, %bb.y, %.thread, %.thread74, %bb.z, %.critedge21, %bb.v, %.thread88
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %.thread88
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #24
          to label %.critedge unwind label %bb.u

.critedge21:                                      ; preds = %bb.x, %bb.w, %.critedge
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(88) %i.as) #24
          to label %bb.z unwind label %bb.u

.critedge:                                        ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %i.cb = load i8, ptr %i.ca, align 8, !range !21, !alias.scope !1051, !noundef !11
  %switch.i.i = icmp samesign ult i8 %i.cb, 10
  br i1 %switch.i.i, label %.critedge21, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %.val1.i.i = load i64, ptr %i.cc, align 8, !alias.scope !1051, !noundef !11 ; 2 uses
  %i.cd = icmp eq i64 %.val1.i.i, 0
  br i1 %i.cd, label %.critedge21, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %.val.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !1051, !nonnull !11, !noundef !11
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #28, !noalias !1051
  br label %.critedge21

bb.y:                                             ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %.val = load ptr, ptr %i.cf, align 8, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core(ptr %.val) #24
          to label %.thread71 unwind label %bb.u

bb.z:                                             ; preds = %.critedge21
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.j) #24
          to label %bb.y unwind label %bb.u

.thread71:                                        ; preds = %bb.y, %bb.r, %bb.g, %.thread
  %.pn15.pn57 = phi { ptr, i32 } [ %i.ag, %.thread ], [ %i.af, %bb.g ], [ %lpad.thr_comm86, %bb.y ], [ %i.bv, %bb.r ]
  resume { ptr, i32 } %.pn15.pn57

.thread:                                          ; preds = %.thread74
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs76KlaVGnJsc_4http7request7RequestNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1l_(ptr noalias nofree noundef align 8 dereferenceable(264) %1) #24
          to label %.thread71 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPart13into_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(352) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs2_NtCs76KlaVGnJsc_4http8responseNtB5_5Parts3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread, %bb.ab, %bb.c
  %.pn25 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ab ], [ %lpad.thr_comm, %.thread ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.05.0 = phi i1 [ true, %bb.ab ], [ %.sroa.05.1.ph, %.thread ], [ true, %bb.c ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #24
          to label %bb.ac unwind label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.k = load i16, ptr %i.j, align 8, !noundef !11 ; 2 uses
  %.not = icmp eq i16 %i.k, 0
  %. = select i1 %.not, i16 200, i16 %i.k
  invoke void @_RINvMs4_NtCs76KlaVGnJsc_4http8responseNtB6_7Builder8and_thenNCINvB2_6statusNtNtB8_6status10StatusCodeE0ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.f, i16 noundef %.)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.e, %bb.d, %bb.k
  %.sroa.05.1.ph = phi i1 [ false, %bb.k ], [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.m ], [ false, %bb.n ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 346
  %i.m = load i8, ptr %i.l, align 2, !range !32, !noundef !11
  invoke void @_RNvMs4_NtCs76KlaVGnJsc_4http8responseNtB5_7Builder7version(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.d, i8 noundef %i.m)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = load i64, ptr %i.h, align 8, !range !20, !noundef !11
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #26
          to label %bb.aa unwind label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %i.h, ptr noundef nonnull %i.p, i64 noundef 12)
          to label %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.h
  %.sroa.06.0.copyload = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  %i.s = icmp eq i64 %.sroa.06.0.copyload, -1
  br i1 %i.s, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !1086, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1089, !noundef !11
  %i.y = load ptr, ptr %i.v, align 8, !alias.scope !1089, !nonnull !11, !align !12, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1089, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1089, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1089, !noundef !11
  invoke void %i.aa(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %bb.n unwind label %.thread, !inline_history !5

bb.l:                                             ; preds = %bb.j
  %2 = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1090
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #29
          to label %bb.n unwind label %.thread

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1091
  store i8 %.sroa.5.0.copyload, ptr %i.a, align 1, !noalias !1091
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.6.0.copyload, ptr %i.ag, align 1, !noalias !1091
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 33, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
          to label %.noexc29 unwind label %.thread

.noexc29:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.7.0..sroa_idx, i64 102, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8, !alias.scope !1094
  %.sroa.6.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx34, align 8, !alias.scope !1094
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.copyload, ptr %.sroa.9.0..sroa_idx, align 1, !alias.scope !1094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #24
          to label %bb.r unwind label %bb.z

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %.pn = phi { ptr, i32 } [ %i.am, %bb.s ], [ %i.ah, %bb.p ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 280
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !25, !alias.scope !1095, !noundef !11
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.ao = load i8, ptr %i.an, align 8, !range !19, !alias.scope !1096, !noundef !11 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %switch.i.i.i = icmp samesign ult i8 %i.ao, 10
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val1.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !1099, !noundef !11 ; 2 uses
  %i.ar = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ar, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1099, !nonnull !11, !noundef !11
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #28, !noalias !1099
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit

bb.x:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.aj)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.z

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !range !25, !alias.scope !1100, !noundef !11
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit31, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.at)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit31

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit31: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, %bb.y
  ret void

bb.z:                                             ; preds = %bb.ag, %bb.x, %bb.af, %bb.ac, %bb.ab, %bb.p, %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ae, %bb.ag, %bb.r, %bb.x
  %.pn25.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %.pn, %bb.x ], [ %.pn25, %bb.ag ], [ %.pn25, %bb.ae ]
  resume { ptr, i32 } %.pn25.pn

bb.aa:                                            ; preds = %bb.g
  unreachable

bb.ab:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http8response7BuilderECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(112) %i.h) #24
          to label %bb.b unwind label %bb.z

bb.ac:                                            ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ax) #24
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  br i1 %.sroa.05.0, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 280
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !25, !alias.scope !1101, !noundef !11
  %i.bb = icmp eq i8 %i.ba, -1
  br i1 %i.bb, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 304
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bc) #24
          to label %bb.ae unwind label %bb.z

bb.ag:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.az)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPart3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 8 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i16 0, ptr %i.l, align 8, !alias.scope !1135
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr inttoptr (i64 2 to ptr), ptr %i.m, align 8, !alias.scope !1135
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 0, ptr %i.n, align 8, !alias.scope !1135
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.o, align 8, !alias.scope !1135
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1135
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1135
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1135
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1135
  store i64 0, ptr %i.k, align 8, !alias.scope !1135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMNtNtCs76KlaVGnJsc_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 16)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !23, !alias.scope !1137, !noundef !11
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %.invoke49, label %bb.c, !prof !30

.invoke49:                                        ; preds = %bb.o, %bb.h, %bb.j, %bb.d, %bb.b
  %i.s = phi ptr [ @43, %bb.b ], [ @61, %bb.j ], [ @69, %bb.o ], [ @43, %bb.h ], [ @61, %bb.d ]
  %i.t = phi i64 [ 43, %bb.b ], [ 23, %bb.j ], [ 48, %bb.o ], [ 43, %bb.h ], [ 23, %bb.d ]
  %i.u = phi ptr [ %i.a, %bb.b ], [ %i.a, %bb.j ], [ %i.b, %bb.o ], [ %i.a, %bb.h ], [ %i.a, %bb.d ]
  %i.v = phi ptr [ @42, %bb.b ], [ @39, %bb.j ], [ @41, %bb.o ], [ @42, %bb.h ], [ @39, %bb.d ]
  %i.w = phi ptr [ @74, %bb.b ], [ @62, %bb.j ], [ @76, %bb.o ], [ @75, %bb.h ], [ @62, %bb.d ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #26
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPart6header:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPart6method(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 8 captures(none) dereferenceable(352) initializes((0, 352)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(352) initializes((281, 288)) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.b = load i8, ptr %i.a, align 8, !range !19, !alias.scope !1171, !noundef !11 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %switch.i.i.i = icmp samesign ult i8 %i.b, 10
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1174, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1174, !nonnull !11, !noundef !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #28, !noalias !1174
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_11RelatedPart12from_request(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 136)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(264) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.d = load i8, ptr %i.c, align 8, !range !21, !alias.scope !1181, !noundef !11
  %switch.i.i = icmp samesign ult i8 %i.d, 10
  br i1 %switch.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !1181, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1181, !nonnull !11, !noundef !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #28, !noalias !1181
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(88) %i.h)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val2 = load ptr, ptr %i.j, align 8, !align !12, !noundef !11
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core(ptr %.val2) #24
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECs5XgW7KoffLW_12opendal_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val = load ptr, ptr %i.k, align 8, !align !12, !noundef !11 ; 4 uses
  %i.l = icmp eq ptr %.val, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.g

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #28
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http10extensions10ExtensionsECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs5XgW7KoffLW_12opendal_core.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_11RelatedPart13into_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs2_NtCs76KlaVGnJsc_4http8responseNtB5_5Parts3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread, %bb.o, %bb.c
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.o ], [ %lpad.thr_comm, %.thread ], [ %i.e, %bb.c ]
  %.sroa.02.0 = phi i1 [ true, %bb.o ], [ false, %.thread ], [ true, %bb.c ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #24
          to label %bb.q unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %i.d, align 8, !range !20, !noundef !11
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #26
          to label %bb.n unwind label %bb.o

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef 12)
          to label %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.f
  %.sroa.03.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.j = icmp eq i64 %.sroa.03.0.copyload, -1
  br i1 %i.j, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !1204, !noundef !11 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1207, !noundef !11
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !1207, !nonnull !11, !align !12, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1207, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1207, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1207, !noundef !11
  invoke void %i.r(ptr noundef %i.o, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.l unwind label %.thread, !inline_history !5

bb.j:                                             ; preds = %bb.h
  %2 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !1208
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #29
          to label %bb.l unwind label %.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1209
  store i8 %.sroa.5.0.copyload, ptr %i.a, align 1, !noalias !1209
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.6.0.copyload, ptr %i.x, align 1, !noalias !1209
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26
          to label %.noexc22 unwind label %.thread

.noexc22:                                         ; preds = %bb.l
  unreachable

.thread:                                          ; preds = %bb.l, %bb.k, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.7.0..sroa_idx, i64 102, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  store i64 %.sroa.03.0.copyload, ptr %0, align 8, !alias.scope !1212
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx23, align 8, !alias.scope !1212
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.copyload, ptr %.sroa.9.0..sroa_idx, align 1, !alias.scope !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  ret void

bb.n:                                             ; preds = %bb.e
  unreachable

bb.o:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http8response7BuilderECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(112) %i.d) #24
          to label %bb.b unwind label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.q:                                             ; preds = %bb.b
  br i1 %.sroa.02.0, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.z) #24
          to label %bb.r unwind label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs5_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_11RelatedPart3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 8), (24, 90), (96, 136)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @45, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_11RelatedPart6header(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipart11RelatedPartEBJ_(ptr noalias nofree noundef align 8 dereferenceable(136) %1) #24
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !25, !alias.scope !1225, !noundef !11 ; 2 uses
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #26
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !alias.scope !1226 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1226
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1226
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq i8 %i.e, 2
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1227, !nonnull !11, !noundef !11
  invoke void %i.i(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b, !inline_history !4

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, i64 } @_RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str(i8 %.0.val) unnamed_addr #5 {
switch.lookup:
  %i.a = zext nneg i8 %.0.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i8 %.0.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str.69, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %switch.ext, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB4_18FuturesAsyncReader14resolve_length(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 9 uses
  %i.g = alloca [104 x i8], align 8               ; 6 uses
  %i.h = load i64, ptr %0, align 8, !range !15, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !11 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.m = load i64, ptr %i.l, align 8, !noundef !11 ; 3 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

end_hunk_4
begin_hunk_5_@_RNvNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util5error28new_request_credential_error:bb.a

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXNtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtB2_20DefaultHttpTransportNtB2_16HttpTransportDyn9fetch_dynB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(264) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [848 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr %0, ptr %i.b, align 8, !alias.scope !1296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(264) %1, i64 264, i1 false), !alias.scope !1297
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  store i8 0, ptr %i.c, align 8, !alias.scope !1296
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1298
  %i.d = tail call noundef align 8 dereferenceable_or_null(848) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 849) 848, i64 noundef range(i64 2, 9) 8) #28, !noalias !1298 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBL_20DefaultHttpTransportNtBL_13HttpTransport5fetch0E3newBP_.exit, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 848) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_20DefaultHttpTransportNtBJ_13HttpTransport5fetch0EBN_(ptr noundef nonnull align 8 dereferenceable(848) %i.a) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBL_20DefaultHttpTransportNtBL_13HttpTransport5fetch0E3newBP_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) %i.d, ptr noundef nonnull align 8 dereferenceable(848) %i.a, i64 848, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @174, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtB5_15HttpTransporterNtNtCsgxBkk5gSRhY_4core7default7Default7default() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1301
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 849) 16, i64 noundef range(i64 2, 9) 8) #28, !noalias !1301 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #26, !noalias !1301
  unreachable

_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @175, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB5_18FuturesAsyncReaderNtNtCsfMq9tkdYTt6_10futures_io6if_std12AsyncBufRead13poll_fill_buf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(336) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %.not46 = icmp eq ptr %i.c, null                ; 2 uses
  %.sroa.020.0.in.v47 = select i1 %.not46, i64 280, i64 272
  %.sroa.020.0.in48 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.0.in.v47
  %.sroa.020.049 = load i64, ptr %.sroa.020.0.in48, align 8, !noundef !11
  %.not2950 = icmp eq i64 %.sroa.020.049, 0
  br i1 %.not2950, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB4_18FuturesAsyncReader16poll_next_buffer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = load i64, ptr %i.a, align 8, !range !20, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %.loopexit, label %bb.j

._crit_edge:                                      ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, %bb.a
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %.sroa.3.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit ]
  %.not.lcssa = phi i1 [ %.not46, %bb.a ], [ %.not, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  br i1 %.not.lcssa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = load i64, ptr %i.j, align 8, !noundef !11 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf5chunk.exit, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %i.j, align 8, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.o = load i64, ptr %i.n, align 8, !noundef !11
  br label %_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf5chunk.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.q = load i64, ptr %i.p, align 8, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.s = load i64, ptr %i.r, align 8, !noundef !11 ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.lcssa, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !noundef !11 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.y = load i64, ptr %i.x, align 8, !noundef !11 ; 5 uses
  %i.z = sub i64 %i.w, %i.y
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.z) ; 2 uses
  %i.aa = add i64 %.sroa.0.0.i.i, %i.y            ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %.not8.i = icmp ugt i64 %i.aa, %i.w
  %or.cond.i = or i1 %i.ab, %.not8.i
  br i1 %or.cond.i, label %bb.h, label %bb.i, !prof !1314

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.aa, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  br label %_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf5chunk.exit

_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf5chunk.exit: ; preds = %bb.c, %bb.d, %bb.i
  %.sroa.4.0.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.0.0.i.i, %bb.i ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.d ], [ %i.ae, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.loopexit

bb.j:                                             ; preds = %bb.b
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  switch i64 %i.h, label %bb.l [
    i64 2, label %bb.k
    i64 0, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ag, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.copyload, ptr %.sroa.425.0..sroa_idx, align 8
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !1317, !noundef !11 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.aj = load ptr, ptr %i.e, align 8, !alias.scope !1320, !noundef !11
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !1320, !nonnull !11, !align !12, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1320, !nonnull !11, !noundef !11
  %i.an = load ptr, ptr %i.f, align 8, !alias.scope !1320, !noundef !11
  %i.ao = load i64, ptr %i.g, align 8, !alias.scope !1320, !noundef !11
  invoke void %i.am(ptr noundef %i.aj, ptr noundef %i.an, i64 noundef %i.ao)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.q, !inline_history !24

bb.n:                                             ; preds = %bb.l
  %3 = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !1321
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %bb.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aq, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.419.0..sroa_idx, align 8
  br label %.loopexit

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.3.0.copyload, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, i64 32, i1 false)
  resume { ptr, i32 } %i.ar

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.n, %bb.m, %bb.o
  store ptr %.sroa.3.0.copyload, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, i64 32, i1 false)
  %.not = icmp eq ptr %.sroa.3.0.copyload, null   ; 2 uses
  %.sroa.020.0.in.v = select i1 %.not, i64 280, i64 272
  %.sroa.020.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.0.in.v
  %.sroa.020.0 = load i64, ptr %.sroa.020.0.in, align 8, !noundef !11
  %.not29 = icmp eq i64 %.sroa.020.0, 0
  br i1 %.not29, label %bb.b, label %._crit_edge

.loopexit:                                        ; preds = %bb.b, %bb.k, %bb.p, %_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf5chunk.exit
  %storemerge = phi i64 [ 0, %_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf5chunk.exit ], [ 0, %bb.p ], [ 0, %bb.k ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB5_18FuturesAsyncReaderNtNtCsfMq9tkdYTt6_10futures_io6if_std12AsyncBufRead7consume(ptr noalias nofree noundef align 8 dereferenceable(336) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  tail call fastcc void @_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf7advance(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, i64 noundef %1) #30
  %i.b = load ptr, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %.val20 = load i64, ptr %i.c, align 8           ; 2 uses
  %.sroa.04.0 = select i1 %.not, i64 %.val, i64 %.val20
  %i.e = icmp eq i64 %.sroa.04.0, 0
  %i.f = inttoptr i64 %.val20 to ptr
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, %1
  store i64 %i.i, ptr %i.g, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1338, !noundef !11
  %i.m = load ptr, ptr %i.j, align 8, !alias.scope !1338, !nonnull !11, !align !12, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1338, !nonnull !11, !noundef !11
  invoke void %i.o(ptr noundef %i.l, ptr noundef %i.f, i64 noundef %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.g, !inline_history !24

bb.e:                                             ; preds = %bb.c
  %2 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1339
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @45, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  resume { ptr, i32 } %i.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.e, %bb.d, %bb.f
  store ptr null, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @45, ptr %.sroa.5.0..sroa_idx8, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_12FormDataPartNtB5_4Part5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 35)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_12FormDataPartNtB5_4Part6format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [136 x i8], align 8               ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 20 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.sink290.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink290.sroa.gep342 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink290.sroa.gep343 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink290.sroa.gep344 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink290.sroa.gep345 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink290.sroa.gep346 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit, %bb.c
  %.sroa.013.0 = phi i1 [ true, %bb.c ], [ %.sroa.013.1126, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit ], [ false, %bb.h ]
  %.pn46 = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn127, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit ], [ %lpad.thr_comm.split-lp, %bb.h ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #24
          to label %bb.bu unwind label %bb.bs

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.o, align 8, !range !15, !noundef !11
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !29, !noundef !11 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.z, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #26
          to label %bb.bt unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  %i.ac = icmp samesign ugt i64 %i.y, 2
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.y, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  store i64 0, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1388
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread162

.noexc:                                           ; preds = %bb.f
  %i.af = load i64, ptr %i.n, align 8, !range !15, !noalias !1388, !noundef !11
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !29, !noalias !1388, !noundef !11 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.g, label %select.unfold.preheader, !prof !30

bb.g:                                             ; preds = %.noexc
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1388
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #26
          to label %.noexc49 unwind label %.thread162

.noexc49:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.ap
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

select.unfold.preheader:                          ; preds = %.noexc
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !1388, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1388
  %i.am = lshr i64 %i.ai, 10
  %i.an = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 false)
  %i.ao = sub nuw nsw i64 64, %i.an
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 7)
  %i.ap = shl nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.aq = getelementptr i8, ptr null, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store ptr %i.al, ptr %i.s, align 8, !alias.scope !1389
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 18 uses
  store i64 0, ptr %i.as, align 8, !alias.scope !1389
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 7 uses
  store i64 %i.ai, ptr %i.at, align 8, !alias.scope !1389
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1389
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !11
  %.not = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %spec.select = select i1 %.not, i64 2, i64 0
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100
  %i.ba = phi i64 [ %i.hs, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100 ], [ %i.ai, %select.unfold.preheader ] ; 3 uses
  %i.bb = phi i64 [ %i.hw, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100 ], [ 0, %select.unfold.preheader ] ; 6 uses
  %.sroa.13.0 = phi i64 [ %.sroa.13.1131136, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100 ], [ 0, %select.unfold.preheader ] ; 6 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.2, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100 ], [ undef, %select.unfold.preheader ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100 ], [ %spec.select, %select.unfold.preheader ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0, 2
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %select.unfold
  %.pre22.i = load i64, ptr %i.av, align 8, !noalias !1390 ; 2 uses
  %i.bc = icmp ult i64 %.sroa.13.0, %.pre22.i
  br i1 %i.bc, label %bb.k, label %.invoke287

.thread133:                                       ; preds = %bb.j
  %i.bd = load ptr, ptr %i.ax, align 8, !noalias !1390, !nonnull !11, !noundef !11
  %i.be = getelementptr inbounds nuw [104 x i8], ptr %i.bd, i64 %i.bf
  br label %bb.m

bb.j:                                             ; preds = %select.unfold
  %i.bf = add i64 %.sroa.13.0, 1                  ; 3 uses
  %i.bg = load i64, ptr %i.av, align 8, !noalias !1390, !noundef !11 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 88686269585142076
  call void @llvm.assume(i1 %i.bh)
  %.not17.i = icmp ult i64 %i.bf, %i.bg
  br i1 %.not17.i, label %.thread133, label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.bi = icmp eq i64 %.sroa.0.0, 0
  %i.bj = load ptr, ptr %i.ax, align 8, !noalias !1390, !nonnull !11, !noundef !11
  %i.bk = getelementptr inbounds nuw [104 x i8], ptr %i.bj, i64 %.sroa.13.0 ; 2 uses
  br i1 %i.bi, label %bb.m, label %bb.l, !prof !35

bb.l:                                             ; preds = %bb.k
  %i.bl = load i64, ptr %i.ay, align 8, !noalias !1390, !noundef !11 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.7.0, %i.bl
  br i1 %i.bm, label %bb.p, label %.invoke287

bb.m:                                             ; preds = %.thread133, %bb.k
  %i.bn = phi ptr [ %i.be, %.thread133 ], [ %i.bk, %bb.k ] ; 4 uses
  %.sroa.13.1131137 = phi i64 [ %i.bf, %.thread133 ], [ %.sroa.13.0, %bb.k ]
  %.sroa.09.0.copyload.i = load i64, ptr %i.bn, align 8, !noalias !1390
  %i.bo = trunc nuw i64 %.sroa.09.0.copyload.i to i1
end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_12FormDataPartNtB5_4Part6format:bb.a
bb.bh:                                            ; preds = %bb.bg
  %i.gq = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef 2, i1 noundef zeroext true)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc88:                                         ; preds = %bb.bh
  %.pre.i87 = load i64, ptr %i.as, align 8, !alias.scope !1416
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc88, %bb.bg
  %i.gr = phi i64 [ %storemerge, %bb.bg ], [ %.pre.i87, %.noexc88 ]
  %i.gs = load ptr, ptr %i.s, align 8, !alias.scope !1416, !nonnull !11, !noundef !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gr
  store i16 8250, ptr %i.gt, align 1
  %i.gu = load i64, ptr %i.at, align 8, !alias.scope !1416, !noundef !11 ; 2 uses
  %i.gv = load i64, ptr %i.as, align 8, !alias.scope !1416, !noundef !11 ; 2 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 2
  br i1 %i.gx, label %bb.bj, label %bb.bk, !prof !30

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1417
  store i64 2, ptr %i.c, align 8, !noalias !1417
  br label %.invoke

bb.bk:                                            ; preds = %bb.bi
  %i.gy = add i64 %i.gv, 2                        ; 3 uses
  store i64 %i.gy, ptr %i.as, align 8, !alias.scope !1416
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !noundef !11
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !11 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.hd = sub i64 %i.gu, %i.gy
  %.not.i91 = icmp ugt i64 %i.hc, %i.hd
  br i1 %.not.i91, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.he = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.hc, i1 noundef zeroext true)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc93:                                         ; preds = %bb.bl
  %.pre.i92 = load i64, ptr %i.as, align 8, !alias.scope !1418
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc93, %bb.bk
  %i.hf = phi i64 [ %i.gy, %bb.bk ], [ %.pre.i92, %.noexc93 ]
  %i.hg = load ptr, ptr %i.s, align 8, !alias.scope !1418, !nonnull !11, !noundef !11
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull readonly align 1 %i.ha, i64 range(i64 0, -9223372036854775808) %i.hc, i1 false)
  %i.hi = load i64, ptr %i.at, align 8, !alias.scope !1418, !noundef !11 ; 2 uses
  %i.hj = load i64, ptr %i.as, align 8, !alias.scope !1418, !noundef !11 ; 2 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = icmp ugt i64 %i.hc, %i.hk
  br i1 %i.hl, label %bb.bn, label %bb.bo, !prof !30

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1419
  store i64 %i.hc, ptr %i.b, align 8, !noalias !1419
  br label %.invoke

bb.bo:                                            ; preds = %bb.bm
  %i.hm = add i64 %i.hj, %i.hc                    ; 3 uses
  store i64 %i.hm, ptr %i.as, align 8, !alias.scope !1418
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.hn = sub i64 %i.hi, %i.hm
  %.not.i96 = icmp ult i64 %i.hn, 2
  br i1 %.not.i96, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ho = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef 2, i1 noundef zeroext true)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc98:                                         ; preds = %bb.bp
  %.pre.i97 = load i64, ptr %i.as, align 8, !alias.scope !1420
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc98, %bb.bo
  %i.hp = phi i64 [ %i.hm, %bb.bo ], [ %.pre.i97, %.noexc98 ]
  %i.hq = load ptr, ptr %i.s, align 8, !alias.scope !1420, !nonnull !11, !noundef !11
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  store i16 2573, ptr %i.hr, align 1
  %i.hs = load i64, ptr %i.at, align 8, !alias.scope !1420, !noundef !11 ; 2 uses
  %i.ht = load i64, ptr %i.as, align 8, !alias.scope !1420, !noundef !11 ; 2 uses
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  %i.hv = icmp ult i64 %i.hu, 2
  br i1 %i.hv, label %bb.br, label %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100, !prof !30

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1421
  store i64 2, ptr %i.a, align 8, !noalias !1421
  br label %.invoke

.invoke:                                          ; preds = %bb.w, %bb.bf, %bb.az, %bb.bj, %bb.bn, %bb.br
  %.sink290.sroa.phi = phi ptr [ %.sink290.sroa.gep, %bb.w ], [ %.sink290.sroa.gep342, %bb.bf ], [ %.sink290.sroa.gep343, %bb.az ], [ %.sink290.sroa.gep344, %bb.bj ], [ %.sink290.sroa.gep345, %bb.bn ], [ %.sink290.sroa.gep346, %bb.br ]
  %.sink290 = phi ptr [ %i.m, %bb.w ], [ %i.d, %bb.bf ], [ %i.e, %bb.az ], [ %i.c, %bb.bj ], [ %i.b, %bb.bn ], [ %i.a, %bb.br ]
  %.sink = phi i64 [ %i.cl, %bb.w ], [ %i.gl, %bb.bf ], [ %i.fu, %bb.az ], [ %i.gw, %bb.bj ], [ %i.hk, %bb.bn ], [ %i.hu, %bb.br ]
  store i64 %.sink, ptr %.sink290.sroa.phi, align 8, !noalias !11
  invoke void @_RNvCsk2Y6yuwWMc1_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink290) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit100: ; preds = %bb.bq
  %i.hw = add i64 %i.ht, 2                        ; 2 uses
  store i64 %i.hw, ptr %i.as, align 8, !alias.scope !1420
  br label %select.unfold

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.bd, %bb.bh, %bb.bl, %bb.bp, %.invoke287, %.invoke, %bb.u
  %lpad.loopexit.split-lp316 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bw, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit, %bb.b
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ab, %bb.af, %bb.aj, %bb.an, %.thread162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn127 = phi { ptr, i32 } [ %i.eg, %bb.an ], [ %lpad.thr_comm.split-lp165, %.thread162 ], [ %lpad.loopexit.split-lp316, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dz, %bb.aj ], [ %i.dr, %bb.af ], [ %i.db, %bb.ab ]
  %.sroa.013.1126 = phi i1 [ false, %bb.an ], [ true, %.thread162 ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ false, %bb.aj ], [ true, %bb.af ], [ true, %bb.ab ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #24
          to label %bb.b unwind label %bb.bs

bb.bt:                                            ; preds = %bb.e
  unreachable

bb.bu:                                            ; preds = %bb.b
  br i1 %.sroa.013.0, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  resume { ptr, i32 } %.pn46

bb.bw:                                            ; preds = %bb.bu
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.hy) #24
          to label %bb.bv unwind label %bb.bs
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB5_18FuturesAsyncReaderNtNtCsfMq9tkdYTt6_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !11
  %.not37 = icmp eq ptr %i.c, null
  %.sroa.01.0.in.v38 = select i1 %.not37, i64 280, i64 272
  %.sroa.01.0.in39 = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.in.v38
  %.sroa.01.040 = load i64, ptr %.sroa.01.0.in39, align 8, !noundef !11 ; 2 uses
  %.not2641 = icmp eq i64 %.sroa.01.040, 0
  br i1 %.not2641, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB4_18FuturesAsyncReader16poll_next_buffer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.h = load i64, ptr %i.a, align 8, !range !20, !noundef !11 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  switch i64 %i.h, label %bb.e [
    i64 2, label %bb.d
    i64 0, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !1436, !noundef !11 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1439, !noundef !11
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1439, !nonnull !11, !align !12, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1439, !nonnull !11, !noundef !11
  %i.p = load ptr, ptr %i.f, align 8, !alias.scope !1439, !noundef !11
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !1439, !noundef !11
  invoke void %i.o(ptr noundef %i.l, ptr noundef %i.p, i64 noundef %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.i, !inline_history !24

bb.g:                                             ; preds = %bb.e
  %4 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1440
  %i.r = icmp eq i64 %4, 1
  br i1 %i.r, label %bb.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.3.0.copyload, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  resume { ptr, i32 } %i.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.g, %bb.f, %bb.h
  store ptr %.sroa.3.0.copyload, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  %.not = icmp eq ptr %.sroa.3.0.copyload, null
  %.sroa.01.0.in.v = select i1 %.not, i64 280, i64 272
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.in.v
  %.sroa.01.0 = load i64, ptr %.sroa.01.0.in, align 8, !noundef !11 ; 2 uses
  %.not26 = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not26, label %bb.b, label %._crit_edge

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.d, %._crit_edge
  %.sroa.5.1 = phi ptr [ %i.y, %._crit_edge ], [ %.sroa.3.0.copyload, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  %.sroa.0.1 = phi i64 [ 0, %._crit_edge ], [ 1, %bb.d ], [ 2, %bb.b ], [ %i.h, %bb.c ]
  %i.t = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.u

._crit_edge:                                      ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, %bb.a
  %.sroa.01.0.lcssa = phi i64 [ %.sroa.01.040, %bb.a ], [ %.sroa.01.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit ]
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %.sroa.01.0.lcssa) ; 3 uses
  tail call void @_RNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf13copy_to_sliceB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull %2, i64 noundef %.sroa.0.0.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !11
  %i.x = add i64 %i.w, %.sroa.0.0.i
  store i64 %i.x, ptr %i.v, align 8
  %i.y = inttoptr i64 %.sroa.0.0.i to ptr
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtNtCs76KlaVGnJsc_4http3uri3UriNtB5_15IntoOperatorUri17into_operator_uri(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1443
  store i64 0, ptr %i.c, align 8, !noalias !1443
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1443
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1443
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !1443
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1443
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1443
  store ptr %i.c, ptr %i.b, align 8, !noalias !1443
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @212, ptr %i.g, align 8, !noalias !1443
  %i.h = invoke noundef zeroext i1 @_RNvXsh_NtCs76KlaVGnJsc_4http3uriNtB5_3UriNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !1443

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #24
          to label %.body unwind label %bb.e, !noalias !1443

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.g, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #26
          to label %.noexc.i unwind label %bb.b, !noalias !1443

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !1443
  unreachable

.body:                                            ; preds = %bb.j, %bb.b, %bb.f, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.i, %bb.b ], [ %i.k, %bb.f ], [ %i.s, %bb.j ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #24
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1443
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.q, align 8
  invoke void @_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB3_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1l_6string6StringB1N_EEEB9_(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.body unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  ret void

bb.l:                                             ; preds = %bb.h, %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !31, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core.70, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1455, !noundef !11
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !1455
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1455, !noundef !11 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %.sroa.0.0.i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write:bb.a
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCsgxBkk5gSRhY_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.j, %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !1455
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs2_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB5_18FuturesAsyncReaderNtNtCsfMq9tkdYTt6_10futures_io6if_std9AsyncSeek9poll_seek(ptr noalias nofree noundef align 8 dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef range(i64 0, 3) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [216 x i8], align 8               ; 5 uses
  switch i64 %2, label %default.unreachable96 [
    i64 0, label %bb.d
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

default.unreachable96:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i64, ptr } @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB4_18FuturesAsyncReader14resolve_length(ptr noalias nofree noundef align 8 dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 3 uses
  switch i64 %i.f, label %bb.e [
    i64 2, label %bb.ae
    i64 0, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %i.j = add i64 %i.i, %3                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = icmp slt i64 %3, 0
  %i.m = xor i1 %i.l, %i.k
  br i1 %i.m, label %bb.g, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c, %bb.f, %bb.a
  %.sroa.7.0 = phi i64 [ %i.w, %bb.f ], [ %3, %bb.a ], [ %i.j, %bb.c ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !11 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !noundef !11
  %.not = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %.val = load i64, ptr %i.s, align 8
  %.val90 = load i64, ptr %i.r, align 8
  %.sroa.038.0 = select i1 %.not, i64 %.val, i64 %.val90
  %i.t = tail call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 %.sroa.038.0)
  %.not.i = icmp ule i64 %i.o, %.sroa.7.0
  %i.u = icmp ule i64 %.sroa.7.0, %i.t
  %or.cond = and i1 %.not.i, %i.u
  br i1 %or.cond, label %bb.h, label %_RINvYINtNtNtCsgxBkk5gSRhY_4core3ops5range14RangeInclusiveyEINtB6_11RangeBoundsyE8containsyECs5XgW7KoffLW_12opendal_core.exit.thread

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  br label %bb.ae

bb.f:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.w = add i64 %3, %i.v                         ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = icmp slt i64 %3, 0
  %i.z = xor i1 %i.y, %i.x
  br i1 %i.z, label %bb.g, label %bb.d, !prof !30

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.aa = tail call noundef nonnull ptr @_RINvMNtNtCs6i54tJFfzR_5alloc2io5errorNtNtNtCsgxBkk5gSRhY_4core2io5error5Error3newReECs9k3SxhrAWiO_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 50) #29
  br label %bb.ae

_RINvYINtNtNtCsgxBkk5gSRhY_4core3ops5range14RangeInclusiveyEINtB6_11RangeBoundsyE8containsyECs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.d
  %i.ab = load i64, ptr %0, align 8, !range !15, !noundef !11
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ad = sub nuw i64 %.sroa.7.0, %i.o
  tail call fastcc void @_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf7advance(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p, i64 noundef %i.ad) #30
  store i64 %.sroa.7.0, ptr %i.n, align 8
  %i.ae = inttoptr i64 %.sroa.7.0 to ptr
  br label %bb.ae

bb.i:                                             ; preds = %_RINvYINtNtNtCsgxBkk5gSRhY_4core3ops5range14RangeInclusiveyEINtB6_11RangeBoundsyE8containsyECs5XgW7KoffLW_12opendal_core.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !11 ; 2 uses
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_RINvYINtNtNtCsgxBkk5gSRhY_4core3ops5range14RangeInclusiveyEINtB6_11RangeBoundsyE8containsyECs5XgW7KoffLW_12opendal_core.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !15, !noundef !11
  %.not80 = icmp eq i64 %i.an, 0
  br i1 %.not80, label %bb.o, label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40)
  %i.ao = load i64, ptr %i.ah, align 8, !noundef !11
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 6, i64 noundef %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 14, i64 noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.aq = load i8, ptr %i.ap, align 1, !range !33, !noundef !11 ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.aq, 4
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 1, i8 41
  %switch.selectcmp1.i.i = icmp eq i8 %i.aq, 3
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i8 0, i8 %switch.select.i.i
  %i.ar = call noundef nonnull ptr @_RINvMNtNtCs6i54tJFfzR_5alloc2io5errorNtNtNtCsgxBkk5gSRhY_4core2io5error5Error3newNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEB1n_(i8 noundef %switch.select2.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ae

bb.l:                                             ; preds = %bb.i
  %i.as = sub nuw i64 %i.ag, %i.ai                ; 2 uses
  %i.at = icmp ugt i64 %.sroa.7.0, %i.as
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = sub nuw i64 %i.as, %.sroa.7.0
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.av = tail call noundef nonnull ptr @_RINvMNtNtCs6i54tJFfzR_5alloc2io5errorNtNtNtCsgxBkk5gSRhY_4core2io5error5Error3newReECs9k3SxhrAWiO_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 54) #29
  br label %bb.ae

bb.o:                                             ; preds = %bb.j, %bb.r, %bb.m
  %.sroa.541.0 = phi i64 [ %i.au, %bb.m ], [ %i.bf, %bb.r ], [ undef, %bb.j ]
  %i.aw = phi i8 [ 0, %bb.m ], [ 0, %bb.r ], [ 1, %bb.j ]
  %.sroa.039.0 = phi i64 [ 1, %bb.m ], [ 1, %bb.r ], [ 0, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !11 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0               ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.w, label %bb.s, !prof !30

bb.p:                                             ; preds = %bb.j
  %i.bb = tail call fastcc { i64, ptr } @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB4_18FuturesAsyncReader14resolve_length(ptr noalias nofree noundef align 8 dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bb, 1      ; 3 uses
  switch i64 %i.bc, label %bb.q [
    i64 2, label %bb.ae
    i64 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = tail call i64 @llvm.usub.sat.i64(i64 %i.be, i64 %.sroa.7.0)
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.bg = load ptr, ptr %i.p, align 8, !alias.scope !1481, !noundef !11 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1484, !noundef !11
  %i.bl = load ptr, ptr %i.bi, align 8, !alias.scope !1484, !nonnull !11, !align !12, !noundef !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !1484, !nonnull !11, !noundef !11
  %i.bo = load ptr, ptr %i.r, align 8, !alias.scope !1484, !noundef !11
  %i.bp = load i64, ptr %i.s, align 8, !alias.scope !1484, !noundef !11
  invoke void %i.bn(ptr noundef %i.bk, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.x, !inline_history !24

bb.u:                                             ; preds = %bb.s
  %4 = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !1485
  %i.bq = icmp eq i64 %4, 1
  br i1 %i.bq, label %bb.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.br = tail call noundef nonnull ptr @_RINvMNtNtCs6i54tJFfzR_5alloc2io5errorNtNtNtCsgxBkk5gSRhY_4core2io5error5Error3newReECs9k3SxhrAWiO_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 22) #29
  br label %bb.ae

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.p, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @45, ptr %.sroa.566.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.af

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.u, %bb.t, %bb.v
  store ptr null, ptr %i.p, align 8
  %.sroa.566.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @45, ptr %.sroa.566.0..sroa_idx67, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i8 %i.aw, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !11, !noundef !11
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.by = load ptr, ptr %i.bu, align 8, !nonnull !11, !noundef !11
  call void @_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB5_12BufferStream3new(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.d, ptr noundef nonnull %i.by, i64 noundef %i.az, i64 noundef %.sroa.039.0, i64 %.sroa.541.0)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1489, !nonnull !11, !noundef !11
  %5 = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1489
  %i.cc = icmp eq i64 %5, 1
  br i1 %i.cc, label %bb.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.bz) #24
          to label %.body unwind label %bb.ab

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i: ; preds = %bb.z, %bb.y
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.bz)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream12BufferStreamEBJ_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ac:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %bb.ad ], [ %i.cd, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bz, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false)
  br label %bb.af

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream12BufferStreamEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bz, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.7.0, ptr %i.n, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 0, ptr %i.cg, align 1
  %i.ch = inttoptr i64 %.sroa.7.0 to ptr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.w, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b, %bb.g, %bb.p, %bb.q, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream12BufferStreamEBJ_.exit
  %.sroa.11.3 = phi ptr [ %i.ch, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream12BufferStreamEBJ_.exit ], [ %i.ae, %bb.h ], [ %i.ar, %bb.k ], [ %i.av, %bb.n ], [ %i.br, %bb.w ], [ undef, %bb.b ], [ %i.aa, %bb.g ], [ %i.g, %bb.e ], [ %i.bd, %bb.q ], [ undef, %bb.p ]
  %.sroa.025.3 = phi i64 [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream12BufferStreamEBJ_.exit ], [ 0, %bb.h ], [ 1, %bb.k ], [ 1, %bb.n ], [ 1, %bb.w ], [ %i.f, %bb.b ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.q ], [ %i.bc, %bb.p ]
  %i.ci = insertvalue { i64, ptr } poison, i64 %.sroa.025.3, 0
  %i.cj = insertvalue { i64, ptr } %i.ci, ptr %.sroa.11.3, 1
  ret { i64, ptr } %i.cj

bb.af:                                            ; preds = %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bs, %bb.x ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriRNtNtCs76KlaVGnJsc_4http3uri3UriNtB5_15IntoOperatorUri17into_operator_uri(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1492
  store i64 0, ptr %i.c, align 8, !noalias !1492
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1492
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1492
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !1492
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1492
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1492
  store ptr %i.c, ptr %i.b, align 8, !noalias !1492
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @212, ptr %i.g, align 8, !noalias !1492
  %i.h = invoke noundef zeroext i1 @_RNvXsh_NtCs76KlaVGnJsc_4http3uriNtB5_3UriNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !1492

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #24
          to label %common.resume unwind label %bb.e, !noalias !1492

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs76KlaVGnJsc_4http3uri3UriNtB5_12SpecToString14spec_to_stringCs5XgW7KoffLW_12opendal_core.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #26
          to label %.noexc.i unwind label %bb.b, !noalias !1492

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !1492
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.i, %bb.b ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs76KlaVGnJsc_4http3uri3UriNtB5_12SpecToString14spec_to_stringCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1492
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.p, align 8
  invoke void @_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB3_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1l_6string6StringB1N_EEEB9_(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs76KlaVGnJsc_4http3uri3UriNtB5_12SpecToString14spec_to_stringCs5XgW7KoffLW_12opendal_core.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs76KlaVGnJsc_4http3uri3UriNtB5_12SpecToString14spec_to_stringCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.j:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 10, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = insertvalue { ptr, i64 } poison, ptr %0, 0 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %1, -1                           ; 2 uses
  %i.f = insertvalue { ptr, i64 } %i.d, i64 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 13, ptr %i.a, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) ; 2 uses
  %i.h = add i64 %1, -2
  %.sroa.0.0.i15 = select i1 %i.g, ptr %0, ptr null
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.g, { ptr, i64 } %i.j, { ptr, i64 } %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = insertvalue { ptr, i64 } %i.d, i64 %1, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.merged = phi { ptr, i64 } [ %., %bb.b ], [ %i.k, %bb.c ]
  ret { ptr, i64 } %.merged
}

end_hunk_7
begin_hunk_8_@_RNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPartNtB5_4Part5parse:bb.a
  %.pre2.i.i405 = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !1637 ; 2 uses
  %.not.i3.i406 = icmp ne i64 %.pre2.i.i405, %.pre.i2.i403
  %or.cond.not.i.i407 = select i1 %i.iu, i1 true, i1 %.not.i3.i406
  %i.iv = sub nuw i64 %.pre2.i.i405, %.pre.i2.i403
  br i1 %or.cond.not.i.i407, label %select.unfold674, label %.thread676

bb.ay:                                            ; preds = %bb.aq
  store i64 0, ptr %i.ah, align 8
  %i.iw = invoke fastcc noundef i64 @_RINvYNtNtNtCsgxBkk5gSRhY_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.2.0..sroa_idx, i64 noundef %i.hn)
          to label %bb.ba unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold674:                                 ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416
  %.sroa.4.1.i410 = phi i64 [ %i.is, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416 ], [ %i.iv, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402 ] ; 4 uses
  %.pn702 = phi i64 [ %i.ir, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416 ], [ %.pre.i2.i403, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402 ]
  %.sroa.0.1.i411 = getelementptr inbounds nuw i8, ptr %.val.i391, i64 %.pn702 ; 4 uses
  %i.ix = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i411, 0
  %i.iy = insertvalue { ptr, i64 } %i.ix, i64 %.sroa.4.1.i410, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1638
  store i32 10, ptr %i.c, align 4, !noalias !1638
  %i.iz = invoke noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i411, i64 noundef %.sroa.4.1.i410, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %.noexc430 unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc430:                                        ; preds = %select.unfold674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1638
  br i1 %i.iz, label %bb.az, label %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432

bb.az:                                            ; preds = %.noexc430
  %i.ja = add i64 %.sroa.4.1.i410, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1638
  store i32 13, ptr %i.b, align 4, !noalias !1638
  %i.jb = invoke noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i411, i64 noundef %i.ja, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc431 unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc431:                                        ; preds = %bb.az
  %i.jc = insertvalue { ptr, i64 } %i.iy, i64 %i.ja, 1
  %i.jd = add i64 %.sroa.4.1.i410, -2
  %.sroa.0.0.i15.i428 = select i1 %i.jb, ptr %.sroa.0.1.i411, ptr null
  %i.je = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i428, 0
  %i.jf = insertvalue { ptr, i64 } %i.je, i64 %i.jd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1638
  %..i429 = select i1 %i.jb, { ptr, i64 } %i.jf, { ptr, i64 } %i.jc
  br label %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432

.thread676:                                       ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402, %bb.ar, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.080.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false)
  %i.jg = add i16 %.sroa.039.0, -100
  %or.cond = icmp ult i16 %i.jg, 900
  br i1 %or.cond, label %bb.bf, label %bb.be

_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432: ; preds = %.noexc431, %.noexc430, %bb.bd
  %.pn = phi { ptr, i64 } [ %i.jk, %bb.bd ], [ %..i429, %.noexc431 ], [ %i.iy, %.noexc430 ] ; 2 uses
  %.sroa.049.0 = extractvalue { ptr, i64 } %.pn, 0
  %.sroa.7.0 = extractvalue { ptr, i64 } %.pn, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMsu_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.049.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 2)
          to label %bb.cc unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ay
  %.not314 = icmp eq i64 %i.iw, 0
  br i1 %.not314, label %bb.bb, label %.thread676

bb.bb:                                            ; preds = %bb.ba
  %i.jh = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.2.0..sroa_idx)
          to label %bb.bc unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ji = extractvalue { ptr, i64 } %i.jh, 0      ; 2 uses
  %.not315 = icmp eq ptr %i.ji, null
  br i1 %.not315, label %.thread676, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jj = extractvalue { ptr, i64 } %i.jh, 1
  %i.jk = invoke fastcc { ptr, i64 } @_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ji, i64 noundef %i.jj)
          to label %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432 unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %.thread676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 47)
          to label %bb.bl unwind label %bb.bz

bb.bf:                                            ; preds = %.thread676
  %i.jl = icmp ne i16 %.sroa.039.0, 0
  call void @llvm.assume(i1 %i.jl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.080.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false)
  %.sroa.080.sroa.0.sroa.0.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.080.sroa.0.sroa.0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.080.sroa.0.sroa.0.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  %.sroa.080.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.080.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.080.sroa.0.sroa.0, i64 192, i1 false)
  %.sroa.080.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 -1, ptr %.sroa.080.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.080.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 -1, ptr %.sroa.080.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i16 %.sroa.039.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 346
  store i8 2, ptr %.sroa.10.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.thread698 unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit unwind label %.loopexit.split-lp721.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit495 unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body.thread698, %bb.ek, %bb.bj
  %common.resume.op = phi { ptr, i32 } [ %i.nt, %bb.ek ], [ %i.jo, %bb.bj ], [ %.pn336, %.body.thread698 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit495: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit, %bb.ej
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

bb.bl:                                            ; preds = %bb.be
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.h)
          to label %bb.bm unwind label %bb.bz

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.088.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.690.0.copyload = load i16, ptr %.sroa.690.0..sroa_idx, align 8
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.5291.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.893.0..sroa_idx, i64 78, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.088.0.copyload, ptr %i.jq, align 8
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.690.0.copyload, ptr %.sroa.4290.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.jr = load ptr, ptr %i.y, align 8, !alias.scope !1641, !noundef !11 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !1644, !noundef !11
  %i.jw = load ptr, ptr %i.jt, align 8, !alias.scope !1644, !nonnull !11, !align !12, !noundef !11
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !1644, !nonnull !11, !noundef !11
  %i.jz = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !1644, !noundef !11
  %i.kb = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !1644, !noundef !11
  invoke void %i.jy(ptr noundef %i.jv, ptr noundef %i.ka, i64 noundef %i.kc)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.bq, !inline_history !24

bb.bo:                                            ; preds = %bb.bm
  %3 = atomicrmw sub ptr %i.jr, i64 1 release, align 8, !noalias !1645
  %i.kd = icmp eq i64 %3, 1
  br i1 %i.kd, label %bb.bp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #24
          to label %bb.br unwind label %bb.by

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.bo, %bb.bn, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z)
          to label %bb.bt unwind label %bb.bs

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %.pn324 = phi { ptr, i32 } [ %i.kf, %bb.bs ], [ %i.ke, %bb.bq ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa) #24
          to label %.thread656 unwind label %bb.by

bb.bs:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bt:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa)
          to label %bb.bu unwind label %bb.ap

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473: ; preds = %bb.df, %bb.de, %bb.dg, %bb.bu
  %.sroa.0103.6 = phi i8 [ 0, %bb.bu ], [ 1, %bb.dg ], [ 1, %bb.de ], [ 1, %bb.df ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body unwind label %bb.bx

bb.bw:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit450 unwind label %.loopexit.split-lp721.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.by:                                            ; preds = %bb.eg, %bb.da, %.thread, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit493, %bb.dh, %.thread659, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470, %bb.cb, %bb.ca, %bb.bz, %bb.br, %bb.bq, %.thread656, %.body.thread698
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bz:                                            ; preds = %bb.bl, %bb.be
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.y) #24
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #24
          to label %bb.cb unwind label %bb.by

bb.cb:                                            ; preds = %bb.ca
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa) #24
          to label %.thread656 unwind label %bb.by

bb.cc:                                            ; preds = %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 0, ptr %.sroa.0255.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.7.0, ptr %.sroa.0255.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.0255.sroa.6.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.0255.sroa.7.0..sroa_idx, align 1
  store i64 2, ptr %.sroa.4256.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCsgxBkk5gSRhY_4core3str4iter6SplitNB10_EE9from_iterCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.af)
          to label %bb.cd unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.kk = load i64, ptr %i.hi, align 8, !noundef !11 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 576460752303423488
  call void @llvm.assume(i1 %i.kl)
  %i.km = icmp eq i64 %i.kk, 2
  br i1 %i.km, label %bb.ce, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.kn = load ptr, ptr %i.hj, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !11, !noundef !11
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !11
  invoke void @_RNvXs0_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtNtCsgxBkk5gSRhY_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ko, i64 noundef %i.kq)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp709.loopexit.split-lp, %bb.da
  %.pn318 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp709.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %bb.da ], [ %lpad.loopexit.split-lp1151, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #24
          to label %.thread659 unwind label %bb.by

bb.cf:                                            ; preds = %bb.ce
  %i.kr = load i64, ptr %i.ae, align 8, !range !15, !noundef !11
  %i.ks = trunc nuw i64 %i.kr to i1
  br i1 %i.ks, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.m, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 52)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cf
  %.sroa.0626.0.copyload = load ptr, ptr %i.hk, align 8 ; 5 uses
  %.sroa.4627.0.copyload = load ptr, ptr %.sroa.4627.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5628.0.copyload = load i64, ptr %.sroa.5628.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6629.0.copyload = load ptr, ptr %.sroa.6629.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.667)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.kt = load i64, ptr %i.hi, align 8, !noundef !11 ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, 1
  br i1 %i.ku, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kv = load ptr, ptr %i.hj, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !nonnull !11, !noundef !11
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kz = load i64, ptr %i.ky, align 8, !noundef !11
  invoke void @_RINvMNtNtCs76KlaVGnJsc_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kx, i64 noundef %i.kz)
          to label %bb.ck unwind label %.loopexit.split-lp709.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #26
          to label %bb.d unwind label %.loopexit.split-lp709.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ce, %bb.cq, %bb.cm, %bb.cg, %bb.db, %bb.cw, %bb.co
  %lpad.loopexit.split-lp1151 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470

bb.ck:                                            ; preds = %bb.ci
  %i.la = load i8, ptr %i.hl, align 8, !range !23, !noundef !11
  %i.lb = icmp eq i8 %i.la, 2
  br i1 %i.lb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.k, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 53)
          to label %bb.cu unwind label %.loopexit.split-lp709.loopexit.split-lp

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.673, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.667, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.673, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.667, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.667)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %.sroa.0626.0.copyload, ptr %i.ab, align 8
  store ptr %.sroa.4627.0.copyload, ptr %.sroa.7527.0..sroa_idx528, align 8
  store i64 %.sroa.5628.0.copyload, ptr %.sroa.9531.0..sroa_idx532, align 8
  store ptr %.sroa.6629.0.copyload, ptr %.sroa.11535.0..sroa_idx536, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef align 8 dereferenceable(96) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ac)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %i.lc = load i8, ptr %i.hm, align 8, !range !25, !alias.scope !1647, !noundef !11 ; 2 uses
  %i.ld = icmp eq i8 %i.lc, -1
  br i1 %i.ld, label %bb.co, label %bb.cp, !prof !30

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #26
          to label %.noexc455 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc455:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %.sroa.0551.0.copyload = load ptr, ptr %i.j, align 8, !alias.scope !1648 ; 2 uses
  %.sroa.4552.0.copyload = load ptr, ptr %.sroa.4552.0..sroa_idx, align 8, !alias.scope !1648
  %.sroa.5553.0.copyload = load i64, ptr %.sroa.5553.0..sroa_idx, align 8, !alias.scope !1648
  %.sroa.6554.0.copyload = load ptr, ptr %.sroa.6554.0..sroa_idx, align 8, !alias.scope !1648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.le = icmp eq i8 %i.lc, 2
  br i1 %i.le, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0551.0.copyload) ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0551.0.copyload, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1649, !nonnull !11, !noundef !11
  invoke void %i.lg(ptr noundef %.sroa.6554.0.copyload, ptr noundef %.sroa.4552.0.copyload, i64 noundef %.sroa.5553.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.cq, %bb.cp, %bb.cd
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread659 unwind label %bb.ct

bb.cs:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit461 unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cr
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cu:                                            ; preds = %bb.cl
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.k)
          to label %bb.cv unwind label %.loopexit.split-lp709.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.071.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.673, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.673.0..sroa_idx, i64 40, i1 false)
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5282.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.875.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.667, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.673, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673)
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4281.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.667, i64 40, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.071.0.copyload, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.667)
  %i.lk = icmp eq ptr %.sroa.0626.0.copyload, null
  br i1 %i.lk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0626.0.copyload, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !1650, !nonnull !11, !noundef !11
  invoke void %i.lm(ptr noundef %.sroa.6629.0.copyload, ptr noundef %.sroa.4627.0.copyload, i64 noundef %.sroa.5628.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.cv, %bb.cw, %bb.dc
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread659 unwind label %bb.cz

bb.cy:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit468 unwind label %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cx
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

.loopexit.split-lp709.loopexit.split-lp:          ; preds = %bb.ci, %bb.cu, %bb.cl, %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = icmp eq ptr %.sroa.0626.0.copyload, null
  br i1 %i.lp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470, label %bb.da

bb.da:                                            ; preds = %.loopexit.split-lp709.loopexit.split-lp
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0626.0.copyload, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !1651, !nonnull !11, !noundef !11
  invoke void %i.lr(ptr noundef %.sroa.6629.0.copyload, ptr noundef %.sroa.4627.0.copyload, i64 noundef %.sroa.5628.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470 unwind label %bb.by, !inline_history !1

bb.db:                                            ; preds = %bb.cg
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.m)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.056.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.658.sroa.8.0..sroa.658.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.658.sroa.8.0.copyload = load i64, ptr %.sroa.658.sroa.8.0..sroa.658.0..sroa_idx.sroa_idx, align 8
  %.sroa.658.sroa.9.0..sroa.658.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.658.sroa.9.0.copyload = load ptr, ptr %.sroa.658.sroa.9.0..sroa.658.0..sroa_idx.sroa_idx, align 8
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5273.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.860.0..sroa_idx, i64 48, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load <2 x ptr>, ptr %.sroa.658.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 %.sroa.056.0.copyload, ptr %i.ls, align 8
  store <2 x ptr> %i.lt, ptr %.sroa.4272.0..sroa_idx, align 8
  %.sroa.4272.sroa.5.0..sroa.4272.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.658.sroa.8.0.copyload, ptr %.sroa.4272.sroa.5.0..sroa.4272.0..sroa_idx.sroa_idx, align 8
  %.sroa.4272.sroa.6.0..sroa.4272.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.658.sroa.9.0.copyload, ptr %.sroa.4272.sroa.6.0..sroa.4272.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit468: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ai)
          to label %bb.dd unwind label %.loopexit.split-lp716.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.lu = load ptr, ptr %i.al, align 8, !alias.scope !1654, !noundef !11 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !1657, !noundef !11
  %i.ly = load ptr, ptr %.sroa.4176.0..sroa_idx, align 8, !alias.scope !1657, !nonnull !11, !align !12, !noundef !11
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !1657, !nonnull !11, !noundef !11
  %i.mb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !1657, !noundef !11
  %i.md = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !1657, !noundef !11
  invoke void %i.ma(ptr noundef %i.lx, ptr noundef %i.mc, i64 noundef %i.me)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473 unwind label %bb.p, !inline_history !24

bb.df:                                            ; preds = %bb.dd
  %4 = atomicrmw sub ptr %i.lu, i64 1 release, align 8, !noalias !1658
  %i.mf = icmp eq i64 %4, 1
  br i1 %i.mf, label %bb.dg, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.al) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473 unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit450: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.mg = trunc nuw i8 %.sroa.0103.6 to i1
  br i1 %i.mg, label %bb.em, label %bb.ej

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit461: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.pre = load i64, ptr %i.ah, align 8
  br label %bb.aq

.thread659:                                       ; preds = %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cx, %bb.cr, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470
  %.pn326663 = phi { ptr, i32 } [ %i.lh, %bb.cr ], [ %i.ln, %bb.cx ], [ %.pn318, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470 ], [ %lpad.loopexit.split-lp1148, %.thread671.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ai) #24
          to label %bb.dh unwind label %bb.by

bb.dh:                                            ; preds = %.loopexit.split-lp716.loopexit.split-lp.loopexit.split-lp, %.thread659
  %.pn326.pn.ph = phi { ptr, i32 } [ %.pn326663, %.thread659 ], [ %lpad.loopexit.split-lp1187, %.loopexit.split-lp716.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #24
          to label %.thread656 unwind label %bb.by

_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit: ; preds = %.noexc339, %.noexc338
  %.merged.i = phi { ptr, i64 } [ %..i, %.noexc339 ], [ %i.cn, %.noexc338 ] ; 2 uses
  %i.mh = extractvalue { ptr, i64 } %.merged.i, 0
  %i.mi = extractvalue { ptr, i64 } %.merged.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMsu_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mh, i64 noundef %i.mi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 2)
          to label %bb.di unwind label %.loopexit.split-lp721.loopexit

bb.di:                                            ; preds = %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.as, ptr noundef nonnull align 8 dereferenceable(104) %i.x, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 0, ptr %.sroa.0143.sroa.4.0..sroa_idx, align 8
  store i64 %i.mi, ptr %.sroa.0143.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.0143.sroa.6.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.0143.sroa.7.0..sroa_idx, align 1
  store i64 2, ptr %.sroa.4144.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCsgxBkk5gSRhY_4core3str4iter6SplitNB10_EE9from_iterCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.as)
          to label %bb.dj unwind label %.loopexit.split-lp721.loopexit

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.mj = load i64, ptr %i.bl, align 8, !noundef !11 ; 2 uses
  %i.mk = icmp ult i64 %i.mj, 576460752303423488
  call void @llvm.assume(i1 %i.mk)
  %i.ml = icmp eq i64 %i.mj, 2
  br i1 %i.ml, label %bb.dk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit477

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.mm = load ptr, ptr %i.bm, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !11, !noundef !11
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !noundef !11
  invoke void @_RNvXs0_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtNtCsgxBkk5gSRhY_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mn, i64 noundef %i.mp)
          to label %bb.dl unwind label %.loopexit.split-lp729

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit493: ; preds = %.loopexit.split-lp729, %.loopexit.split-lp734, %bb.eg
  %.pn332 = phi { ptr, i32 } [ %lpad.loopexit.split-lp736, %.loopexit.split-lp734 ], [ %lpad.loopexit.split-lp736, %bb.eg ], [ %lpad.loopexit.split-lp731, %.loopexit.split-lp729 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #24
          to label %.thread unwind label %bb.by

bb.dl:                                            ; preds = %bb.dk
  %i.mq = load i64, ptr %i.ar, align 8, !range !15, !noundef !11
  %i.mr = trunc nuw i64 %i.mq to i1
  br i1 %i.mr, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.u, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 52)
          to label %bb.eh unwind label %.loopexit.split-lp729

bb.dn:                                            ; preds = %bb.dl
  %.sroa.0584.0.copyload = load ptr, ptr %i.bn, align 8 ; 5 uses
  %.sroa.4585.0.copyload = load ptr, ptr %.sroa.4585.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5586.0.copyload = load i64, ptr %.sroa.5586.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6587.0.copyload = load ptr, ptr %.sroa.6587.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ms = load i64, ptr %i.bl, align 8, !noundef !11 ; 2 uses
  %i.mt = icmp ugt i64 %i.ms, 1
  br i1 %i.mt, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.mu = load ptr, ptr %i.bm, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !nonnull !11, !noundef !11
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !noundef !11
  invoke void @_RINvMNtNtCs76KlaVGnJsc_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mw, i64 noundef %i.my)
          to label %bb.dq unwind label %.loopexit.split-lp734

bb.dp:                                            ; preds = %bb.dn
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.ms, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #26
          to label %bb.d unwind label %.loopexit.split-lp734

.loopexit.split-lp729:                            ; preds = %bb.dk, %bb.dw, %bb.ds, %bb.du, %bb.ec, %bb.eh, %bb.dm
  %lpad.loopexit.split-lp731 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit493

bb.dq:                                            ; preds = %bb.do
  %i.mz = load i8, ptr %i.bo, align 8, !range !23, !noundef !11
  %i.na = icmp eq i8 %i.mz, 2
  br i1 %i.na, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.s, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 53)
          to label %bb.ea unwind label %.loopexit.split-lp734

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.624, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.624, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.618, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %.sroa.0584.0.copyload, ptr %i.ao, align 8
  store ptr %.sroa.4585.0.copyload, ptr %.sroa.7.0..sroa_idx498, align 8
  store i64 %.sroa.5586.0.copyload, ptr %.sroa.9.0..sroa_idx502, align 8
  store ptr %.sroa.6587.0.copyload, ptr %.sroa.11.0..sroa_idx505, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef align 8 dereferenceable(96) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ao, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ap)
          to label %bb.dt unwind label %.loopexit.split-lp729

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %i.nb = load i8, ptr %i.bp, align 8, !range !25, !alias.scope !1660, !noundef !11 ; 2 uses
  %i.nc = icmp eq i8 %i.nb, -1
  br i1 %i.nc, label %bb.du, label %bb.dv, !prof !30

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #26
          to label %.noexc474 unwind label %.loopexit.split-lp729

.noexc474:                                        ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %.sroa.0519.0.copyload = load ptr, ptr %i.r, align 8, !alias.scope !1661 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1661
  %.sroa.5520.0.copyload = load i64, ptr %.sroa.5520.0..sroa_idx, align 8, !alias.scope !1661
  %.sroa.6521.0.copyload = load ptr, ptr %.sroa.6521.0..sroa_idx, align 8, !alias.scope !1661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.nd = icmp eq i8 %i.nb, 2
  br i1 %i.nd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit477, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload) ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0519.0.copyload, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !1662, !nonnull !11, !noundef !11
  invoke void %i.nf(ptr noundef %.sroa.6521.0.copyload, ptr noundef %.sroa.4.0.copyload, i64 noundef %.sroa.5520.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit477 unwind label %.loopexit.split-lp729, !inline_history !4

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit477: ; preds = %bb.dw, %bb.dv, %bb.dj
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit477
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.thread unwind label %bb.dz

bb.dy:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueEECs5XgW7KoffLW_12opendal_core.exit477
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit483 unwind label %.loopexit.split-lp721.loopexit

bb.dz:                                            ; preds = %bb.dx
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ea:                                            ; preds = %bb.dr
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.s)
          to label %bb.eb unwind label %.loopexit.split-lp734

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.022.0.copyload = load i64, ptr %i.t, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.624, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.624.0..sroa_idx, i64 40, i1 false)
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
end_hunk_8
begin_hunk_9_@_RNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPartNtB5_4Part6format:bb.a
  br i1 %i.kc, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ka, i64 40, i1 false)
  %i.kd = icmp eq i64 %i.jz, %.pre528
  br i1 %i.kd, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %._crit_edge unwind label %bb.cq, !noalias !1814

._crit_edge:                                      ; preds = %bb.cp
  %.pre523 = load ptr, ptr %i.at, align 8, !alias.scope !1815
  %.pre524 = load i64, ptr %i.aj, align 8, !range !14, !alias.scope !1816
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ad) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cs:                                            ; preds = %bb.cx, %bb.cn
  %i.kg = phi i64 [ %i.jz, %bb.cn ], [ %i.kw, %bb.cx ] ; 2 uses
  %i.kh = phi i64 [ %.pre528, %bb.cn ], [ %.pre527, %bb.cx ]
  %i.ki = phi ptr [ %i.jx, %bb.cn ], [ %i.ku, %bb.cx ] ; 3 uses
  %.sroa.030.4 = phi i8 [ 1, %bb.cn ], [ 0, %bb.cx ] ; 3 uses
  %i.kj = icmp ult i64 %i.kg, 230584300921369396
  call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw [40 x i8], ptr %i.ki, i64 %i.kg
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1818
  store i64 0, ptr %i.m, align 8, !noalias !1818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1818
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  store i64 0, ptr %i.l, align 8, !alias.scope !1820, !noalias !1817
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 0, ptr %.sroa.4276.0..sroa_idx, align 8, !alias.scope !1820, !noalias !1817
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %i.ki, ptr %.sroa.5278.0..sroa_idx, align 8, !alias.scope !1820, !noalias !1817
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %i.ki, ptr %.sroa.6279.0..sroa_idx, align 8, !alias.scope !1820, !noalias !1817
  %.sroa.7280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %i.kh, ptr %.sroa.7280.0..sroa_idx, align 8, !alias.scope !1820, !noalias !1817
  %.sroa.8281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store ptr %i.kk, ptr %.sroa.8281.0..sroa_idx, align 8, !alias.scope !1820, !noalias !1817
  %i.kl = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store ptr %i.m, ptr %i.kl, align 8, !alias.scope !1821, !noalias !1818
  %i.km = invoke { ptr, i64 } @_RNvXs1h_NtCs6i54tJFfzR_5alloc4syncINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtBB_7flatten7FlattenINtNtNtB8_3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2p_B2n_INtNtNtBD_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1s_E0EINtB6_10ToArcSliceB4b_E12to_arc_sliceB2t_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.l)
          to label %bb.cy unwind label %.thread314 ; 2 uses

bb.ct:                                            ; preds = %._crit_edge, %bb.co
  %i.kn = phi i64 [ %.pre524, %._crit_edge ], [ %.pre528, %bb.co ] ; 2 uses
  %i.ko = phi ptr [ %.pre523, %._crit_edge ], [ %i.jx, %bb.co ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [40 x i8], ptr %i.ko, i64 %i.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kp, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  %i.kq = add i64 %i.js, 2                        ; 3 uses
  store i64 %i.kq, ptr %i.au, align 8, !alias.scope !1815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr null, ptr %i.ac, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @45, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @177, ptr %.sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  %.sroa.449.sroa.5.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.449.sroa.5.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 0, ptr %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  %i.kr = icmp eq i64 %i.kq, %i.kn
  br i1 %i.kr, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %._crit_edge525 unwind label %bb.cv, !noalias !1822

._crit_edge525:                                   ; preds = %bb.cu
  %.pre526 = load ptr, ptr %i.at, align 8, !alias.scope !1816
  %.pre527.pre = load i64, ptr %i.aj, align 8, !range !14
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cx:                                            ; preds = %._crit_edge525, %bb.ct
  %.pre527 = phi i64 [ %.pre527.pre, %._crit_edge525 ], [ %i.kn, %bb.ct ]
  %i.ku = phi ptr [ %.pre526, %._crit_edge525 ], [ %i.ko, %bb.ct ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [40 x i8], ptr %i.ku, i64 %i.kq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kv, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false)
  %i.kw = add i64 %i.js, 3                        ; 2 uses
  store i64 %i.kw, ptr %i.au, align 8, !alias.scope !1816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cs

bb.cy:                                            ; preds = %bb.cs
  %i.kx = extractvalue { ptr, i64 } %i.km, 0
  %i.ky = extractvalue { ptr, i64 } %i.km, 1
  %i.kz = load i64, ptr %i.m, align 8, !noalias !1818, !noundef !11
  store ptr %i.kx, ptr %0, align 8, !alias.scope !1817
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ky, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1817
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kz, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1817
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.gy) #24
          to label %bb.db unwind label %bb.dp

bb.da:                                            ; preds = %bb.cy
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.gy)
          to label %bb.dd unwind label %bb.dc

bb.db:                                            ; preds = %bb.dc, %bb.cz
  %.pn = phi { ptr, i32 } [ %i.lc, %bb.dc ], [ %i.la, %bb.cz ] ; 2 uses
  %i.lb = trunc nuw i8 %.sroa.030.4 to i1
  br i1 %i.lb, label %bb.dq, label %bb.dl

bb.dc:                                            ; preds = %bb.da
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dd:                                            ; preds = %bb.da
  %i.ld = trunc nuw i8 %.sroa.030.4 to i1
  br i1 %i.ld, label %bb.dh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.dj, %bb.di, %bb.dk, %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.le = load i8, ptr %i.db, align 8, !range !19, !alias.scope !1823, !noundef !11 ; 2 uses
  %i.lf = icmp eq i8 %i.le, -1
  br i1 %i.lf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.de

bb.de:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %switch.i.i.i = icmp samesign ult i8 %i.le, 10
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val1.i.i.i = load i64, ptr %i.lg, align 8, !alias.scope !1826, !noundef !11 ; 2 uses
  %i.lh = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.lh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.val.i.i.i = load ptr, ptr %i.li, align 8, !alias.scope !1826, !nonnull !11, !noundef !11
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #28, !noalias !1826
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit

bb.dh:                                            ; preds = %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.lj = load ptr, ptr %i.ka, align 8, !alias.scope !1829, !noundef !11 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ln = load ptr, ptr %i.lm, align 8, !alias.scope !1832, !noundef !11
  %i.lo = load ptr, ptr %i.ll, align 8, !alias.scope !1832, !nonnull !11, !align !12, !noundef !11
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !1832, !nonnull !11, !noundef !11
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !1832, !noundef !11
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !1832, !noundef !11
  invoke void %i.lq(ptr noundef %i.ln, ptr noundef %i.ls, i64 noundef %i.lu)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.dm, !inline_history !24

bb.dj:                                            ; preds = %bb.dh
  %2 = atomicrmw sub ptr %i.lj, i64 1 release, align 8, !noalias !1833
  %i.lv = icmp eq i64 %2, 1
  br i1 %i.lv, label %bb.dk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ka) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dq, %bb.dm, %bb.db
  %.pn80 = phi { ptr, i32 } [ %i.ly, %bb.dm ], [ %.pn, %bb.dq ], [ %.pn, %bb.db ] ; 2 uses
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #24
  %i.lw = load i8, ptr %i.ef, align 8, !range !25, !alias.scope !1834, !noundef !11
  %i.lx = icmp eq i8 %i.lw, -1
  br i1 %i.lx, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit, label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.di
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dn:                                            ; preds = %bb.dl
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.ef)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.dp

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.dg, %bb.df, %bb.de, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.lz = load i8, ptr %i.ef, align 8, !range !25, !alias.scope !1835, !noundef !11
  %i.ma = icmp eq i8 %i.lz, -1
  br i1 %i.ma, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit198, label %bb.do

bb.do:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.ef)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit198

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit198: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http6method6MethodEECs5XgW7KoffLW_12opendal_core.exit, %bb.do
  ret void

bb.dp:                                            ; preds = %bb.fy, %.thread301, %bb.dn, %bb.fx, %bb.fu, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit, %bb.dq, %bb.cz, %bb.bh, %bb.b
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dq:                                            ; preds = %bb.db
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ka) #24
          to label %bb.dl unwind label %bb.dp

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs76KlaVGnJsc_4http3uri3UriEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.fw, %bb.fy, %bb.dl, %bb.dn
  %.pn92.pn = phi { ptr, i32 } [ %.pn80, %bb.dl ], [ %.pn80, %bb.dn ], [ %.pn92, %bb.fy ], [ %.pn92, %bb.fw ]
  resume { ptr, i32 } %.pn92.pn

bb.dr:                                            ; preds = %bb.by
  %i.mc = load ptr, ptr %i.ih, align 8, !noundef !11
  %i.md = getelementptr inbounds nuw i8, ptr %i.if, i64 80
  %i.me = load i64, ptr %i.md, align 8, !noundef !11
  br label %bb.dt

bb.ds:                                            ; preds = %bb.by
  %i.mf = load i8, ptr %i.ih, align 8, !range !13, !noundef !11
  %i.mg = call fastcc { ptr, i64 } @_RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str(i8 %i.mf) ; 2 uses
  %i.mh = extractvalue { ptr, i64 } %i.mg, 0
  %i.mi = extractvalue { ptr, i64 } %i.mg, 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.sroa.325.0 = phi i64 [ %i.me, %bb.dr ], [ %i.mi, %bb.ds ] ; 6 uses
  %.sroa.024.0 = phi ptr [ %i.mc, %bb.dr ], [ %i.mh, %bb.ds ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.024.0) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %i.mj = sub i64 %i.he, %i.hf
  %.not.i199 = icmp ugt i64 %.sroa.325.0, %i.mj
  br i1 %.not.i199, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.mk = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %.sroa.325.0, i1 noundef zeroext true)
          to label %.noexc201 unwind label %.thread334.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc201:                                        ; preds = %bb.du
  %.pre.i200 = load i64, ptr %i.bi, align 8, !alias.scope !1836
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc201, %bb.dt
  %i.ml = phi i64 [ %i.hf, %bb.dt ], [ %.pre.i200, %.noexc201 ]
  %i.mm = load ptr, ptr %i.ai, align 8, !alias.scope !1836, !nonnull !11, !noundef !11
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ml
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr nonnull readonly align 1 %.sroa.024.0, i64 range(i64 0, -9223372036854775808) %.sroa.325.0, i1 false)
  %i.mo = load i64, ptr %i.bj, align 8, !alias.scope !1836, !noundef !11 ; 2 uses
  %i.mp = load i64, ptr %i.bi, align 8, !alias.scope !1836, !noundef !11 ; 2 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 2 uses
  %i.mr = icmp ugt i64 %.sroa.325.0, %i.mq
  br i1 %i.mr, label %bb.dw, label %bb.dx, !prof !30

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1837
  store i64 %.sroa.325.0, ptr %i.k, align 8, !noalias !1837
  br label %.invoke

bb.dx:                                            ; preds = %bb.dv
  %i.ms = add i64 %i.mp, %.sroa.325.0             ; 3 uses
  store i64 %i.ms, ptr %i.bi, align 8, !alias.scope !1836
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.mt = sub i64 %i.mo, %i.ms
  %.not.i204 = icmp ult i64 %i.mt, 2
  br i1 %.not.i204, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.mu = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 2, i1 noundef zeroext true)
          to label %.noexc206 unwind label %.thread334.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc206:                                        ; preds = %bb.dy
  %.pre.i205 = load i64, ptr %i.bi, align 8, !alias.scope !1838
  br label %bb.dz

bb.dz:                                            ; preds = %.noexc206, %bb.dx
  %i.mv = phi i64 [ %i.ms, %bb.dx ], [ %.pre.i205, %.noexc206 ]
  %i.mw = load ptr, ptr %i.ai, align 8, !alias.scope !1838, !nonnull !11, !noundef !11
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mv
  store i16 8250, ptr %i.mx, align 1
  %i.my = load i64, ptr %i.bj, align 8, !alias.scope !1838, !noundef !11 ; 2 uses
  %i.mz = load i64, ptr %i.bi, align 8, !alias.scope !1838, !noundef !11 ; 2 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 2 uses
  %i.nb = icmp ult i64 %i.na, 2
  br i1 %i.nb, label %bb.ea, label %bb.eb, !prof !30

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1839
  store i64 2, ptr %i.j, align 8, !noalias !1839
  br label %.invoke

bb.eb:                                            ; preds = %bb.dz
  %i.nc = add i64 %i.mz, 2                        ; 3 uses
  store i64 %i.nc, ptr %i.bi, align 8, !alias.scope !1838
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i151, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !noundef !11
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i151, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !noundef !11 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.nh = sub i64 %i.my, %i.nc
  %.not.i209 = icmp ugt i64 %i.ng, %i.nh
  br i1 %.not.i209, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ni = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %i.ng, i1 noundef zeroext true)
          to label %.noexc211 unwind label %.thread334.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc211:                                        ; preds = %bb.ec
  %.pre.i210 = load i64, ptr %i.bi, align 8, !alias.scope !1840
  br label %bb.ed

bb.ed:                                            ; preds = %.noexc211, %bb.eb
  %i.nj = phi i64 [ %i.nc, %bb.eb ], [ %.pre.i210, %.noexc211 ]
  %i.nk = load ptr, ptr %i.ai, align 8, !alias.scope !1840, !nonnull !11, !noundef !11
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nl, ptr nonnull readonly align 1 %i.ne, i64 range(i64 0, -9223372036854775808) %i.ng, i1 false)
  %i.nm = load i64, ptr %i.bj, align 8, !alias.scope !1840, !noundef !11 ; 2 uses
  %i.nn = load i64, ptr %i.bi, align 8, !alias.scope !1840, !noundef !11 ; 2 uses
  %i.no = sub i64 %i.nm, %i.nn                    ; 2 uses
  %i.np = icmp ugt i64 %i.ng, %i.no
  br i1 %i.np, label %bb.ee, label %bb.ef, !prof !30

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1841
  store i64 %i.ng, ptr %i.i, align 8, !noalias !1841
  br label %.invoke

bb.ef:                                            ; preds = %bb.ed
  %i.nq = add i64 %i.nn, %i.ng                    ; 3 uses
  store i64 %i.nq, ptr %i.bi, align 8, !alias.scope !1840
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %i.nr = sub i64 %i.nm, %i.nq
  %.not.i214 = icmp ult i64 %i.nr, 2
  br i1 %.not.i214, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ns = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 2, i1 noundef zeroext true)
          to label %.noexc216 unwind label %.thread334.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc216:                                        ; preds = %bb.eg
  %.pre.i215 = load i64, ptr %i.bi, align 8, !alias.scope !1842
  br label %bb.eh

bb.eh:                                            ; preds = %.noexc216, %bb.ef
  %i.nt = phi i64 [ %i.nq, %bb.ef ], [ %.pre.i215, %.noexc216 ]
  %i.nu = load ptr, ptr %i.ai, align 8, !alias.scope !1842, !nonnull !11, !noundef !11
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nt
  store i16 2573, ptr %i.nv, align 1
  %i.nw = load i64, ptr %i.bj, align 8, !alias.scope !1842, !noundef !11 ; 2 uses
  %i.nx = load i64, ptr %i.bi, align 8, !alias.scope !1842, !noundef !11 ; 2 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 2 uses
  %i.nz = icmp ult i64 %i.ny, 2
  br i1 %i.nz, label %bb.ei, label %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit218, !prof !30

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1843
  store i64 2, ptr %i.h, align 8, !noalias !1843
  br label %.invoke

_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit218: ; preds = %bb.eh
  %i.oa = add i64 %i.nx, 2                        ; 2 uses
  store i64 %i.oa, ptr %i.bi, align 8, !alias.scope !1842
  br label %select.unfold359
end_hunk_9
begin_hunk_10_@_RNvXs6_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_11RelatedPartNtB5_4Part6format:bb.a
bb.ae:                                            ; preds = %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %._crit_edge229 unwind label %bb.af, !noalias !1933

._crit_edge229:                                   ; preds = %bb.ae
  %.pre228.pre = load i64, ptr %i.s, align 8, !range !14
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ah:                                            ; preds = %._crit_edge229, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit
  %.pre228 = phi i64 [ %.pre228.pre, %._crit_edge229 ], [ %i.do, %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit ] ; 3 uses
  %i.ds = load ptr, ptr %i.ac, align 8, !alias.scope !1932, !nonnull !11, !noundef !11 ; 3 uses
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  %i.du = add i64 %i.dn, 1                        ; 4 uses
  store i64 %i.du, ptr %i.ad, align 8, !alias.scope !1932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noundef !11
  %.not44 = icmp eq ptr %i.dw, null
  %.sroa.018.0.in.v = select i1 %.not44, i64 120, i64 112
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.018.0.in.v
  %.sroa.018.0 = load i64, ptr %.sroa.018.0.in, align 8, !noundef !11
  %i.dx = icmp eq i64 %.sroa.018.0, 0
  br i1 %i.dx, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.dv, i64 40, i1 false)
  %i.dy = icmp eq i64 %i.du, %.pre228
  br i1 %i.dy, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %._crit_edge unwind label %bb.ak, !noalias !1934

._crit_edge:                                      ; preds = %bb.aj
  %.pre = load ptr, ptr %i.ac, align 8, !alias.scope !1935
  %.pre224 = load i64, ptr %i.s, align 8, !range !14, !alias.scope !1936
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.am:                                            ; preds = %bb.ar, %bb.ah
  %i.eb = phi i64 [ %i.du, %bb.ah ], [ %i.er, %bb.ar ] ; 2 uses
  %i.ec = phi i64 [ %.pre228, %bb.ah ], [ %.pre227, %bb.ar ]
  %i.ed = phi ptr [ %i.ds, %bb.ah ], [ %i.ep, %bb.ar ] ; 3 uses
  %.sroa.09.3 = phi i8 [ 1, %bb.ah ], [ 0, %bb.ar ] ; 3 uses
  %i.ee = icmp ult i64 %i.eb, 230584300921369396
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1938
  store i64 0, ptr %i.f, align 8, !noalias !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1938
  call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  store i64 0, ptr %i.e, align 8, !alias.scope !1940, !noalias !1937
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 0, ptr %.sroa.4111.0..sroa_idx, align 8, !alias.scope !1940, !noalias !1937
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ed, ptr %.sroa.5113.0..sroa_idx, align 8, !alias.scope !1940, !noalias !1937
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.ed, ptr %.sroa.6114.0..sroa_idx, align 8, !alias.scope !1940, !noalias !1937
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.ec, ptr %.sroa.7115.0..sroa_idx, align 8, !alias.scope !1940, !noalias !1937
  %.sroa.8116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.ef, ptr %.sroa.8116.0..sroa_idx, align 8, !alias.scope !1940, !noalias !1937
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.f, ptr %i.eg, align 8, !alias.scope !1941, !noalias !1938
  %i.eh = invoke { ptr, i64 } @_RNvXs1h_NtCs6i54tJFfzR_5alloc4syncINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtBB_7flatten7FlattenINtNtNtB8_3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2p_B2n_INtNtNtBD_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1s_E0EINtB6_10ToArcSliceB4b_E12to_arc_sliceB2t_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.e)
          to label %bb.as unwind label %bb.h      ; 2 uses

bb.an:                                            ; preds = %._crit_edge, %bb.ai
  %i.ei = phi i64 [ %.pre224, %._crit_edge ], [ %.pre228, %bb.ai ] ; 2 uses
  %i.ej = phi ptr [ %.pre, %._crit_edge ], [ %i.ds, %bb.ai ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.ej, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.el = add i64 %i.dn, 2                        ; 3 uses
  store i64 %i.el, ptr %i.ad, align 8, !alias.scope !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr null, ptr %i.o, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @45, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @177, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 2, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %i.em = icmp eq i64 %i.el, %i.ei
  br i1 %i.em, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %._crit_edge225 unwind label %bb.ap, !noalias !1942

._crit_edge225:                                   ; preds = %bb.ao
  %.pre226 = load ptr, ptr %i.ac, align 8, !alias.scope !1936
  %.pre227.pre = load i64, ptr %i.s, align 8, !range !14
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ar:                                            ; preds = %._crit_edge225, %bb.an
  %.pre227 = phi i64 [ %.pre227.pre, %._crit_edge225 ], [ %i.ei, %bb.an ]
  %i.ep = phi ptr [ %.pre226, %._crit_edge225 ], [ %i.ej, %bb.an ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.er = add i64 %i.dn, 3                        ; 2 uses
  store i64 %i.er, ptr %i.ad, align 8, !alias.scope !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.am

bb.as:                                            ; preds = %bb.am
  %i.es = extractvalue { ptr, i64 } %i.eh, 0
  %i.et = extractvalue { ptr, i64 } %i.eh, 1
  %i.eu = load i64, ptr %i.f, align 8, !noalias !1938, !noundef !11
  store ptr %i.es, ptr %0, align 8, !alias.scope !1937
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.et, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1937
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eu, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1937
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = trunc nuw i8 %.sroa.09.3 to i1
  br i1 %i.ew, label %bb.ba, label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.ex = trunc nuw i8 %.sroa.09.3 to i1
  br i1 %i.ex, label %bb.av, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  ret void

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %i.ey = load ptr, ptr %i.dv, align 8, !alias.scope !1945, !noundef !11 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1948, !noundef !11
  %i.fd = load ptr, ptr %i.fa, align 8, !alias.scope !1948, !nonnull !11, !align !12, !noundef !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !1948, !nonnull !11, !noundef !11
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !1948, !noundef !11
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1948, !noundef !11
  call void %i.ff(ptr noundef %i.fc, ptr noundef %i.fh, i64 noundef %i.fj), !noalias !1948, !inline_history !3
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.ax:                                            ; preds = %bb.av
  %2 = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !1949
  %i.fk = icmp eq i64 %2, 1
  br i1 %i.fk, label %bb.ay, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dv) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.az:                                            ; preds = %bb.bw, %bb.bv, %bb.ba, %bb.at
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.bw ], [ %.pn47, %bb.bv ], [ %i.ev, %bb.ba ], [ %i.ev, %bb.at ]
  resume { ptr, i32 } %.pn47.pn

bb.ba:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dv) #24
          to label %bb.az unwind label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bw, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit, %bb.ba, %bb.b
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bc:                                            ; preds = %bb.s
  %i.fm = load ptr, ptr %i.cc, align 8, !noundef !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !11
  br label %bb.be

bb.bd:                                            ; preds = %bb.s
  %i.fp = load i8, ptr %i.cc, align 8, !range !13, !noundef !11
  %i.fq = call fastcc { ptr, i64 } @_RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str(i8 %i.fp) ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.35.0 = phi i64 [ %i.fo, %bb.bc ], [ %i.fs, %bb.bd ] ; 6 uses
  %.sroa.04.0 = phi ptr [ %i.fm, %bb.bc ], [ %i.fr, %bb.bd ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  %i.ft = sub i64 %i.az, %i.ba
  %.not.i77 = icmp ugt i64 %.sroa.35.0, %i.ft
  br i1 %.not.i77, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fu = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef range(i64 0, -9223372036854775808) %.sroa.35.0, i1 noundef zeroext true)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc79:                                         ; preds = %bb.bf
  %.pre.i78 = load i64, ptr %i.ar, align 8, !alias.scope !1950
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc79, %bb.be
  %i.fv = phi i64 [ %i.ba, %bb.be ], [ %.pre.i78, %.noexc79 ]
  %i.fw = load ptr, ptr %i.r, align 8, !alias.scope !1950, !nonnull !11, !noundef !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr nonnull readonly align 1 %.sroa.04.0, i64 range(i64 0, -9223372036854775808) %.sroa.35.0, i1 false)
  %i.fy = load i64, ptr %i.as, align 8, !alias.scope !1950, !noundef !11 ; 2 uses
  %i.fz = load i64, ptr %i.ar, align 8, !alias.scope !1950, !noundef !11 ; 2 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 2 uses
  %i.gb = icmp ugt i64 %.sroa.35.0, %i.ga
  br i1 %i.gb, label %bb.bh, label %bb.bi, !prof !30

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1951
  store i64 %.sroa.35.0, ptr %i.d, align 8, !noalias !1951
  br label %.invoke

bb.bi:                                            ; preds = %bb.bg
  %i.gc = add i64 %i.fz, %.sroa.35.0              ; 3 uses
  store i64 %i.gc, ptr %i.ar, align 8, !alias.scope !1950
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  %i.gd = sub i64 %i.fy, %i.gc
  %.not.i82 = icmp ult i64 %i.gd, 2
  br i1 %.not.i82, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ge = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 2, i1 noundef zeroext true)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc84:                                         ; preds = %bb.bj
  %.pre.i83 = load i64, ptr %i.ar, align 8, !alias.scope !1952
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc84, %bb.bi
  %i.gf = phi i64 [ %i.gc, %bb.bi ], [ %.pre.i83, %.noexc84 ]
  %i.gg = load ptr, ptr %i.r, align 8, !alias.scope !1952, !nonnull !11, !noundef !11
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  store i16 8250, ptr %i.gh, align 1
  %i.gi = load i64, ptr %i.as, align 8, !alias.scope !1952, !noundef !11 ; 2 uses
  %i.gj = load i64, ptr %i.ar, align 8, !alias.scope !1952, !noundef !11 ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = icmp ult i64 %i.gk, 2
  br i1 %i.gl, label %bb.bl, label %bb.bm, !prof !30

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1953
  store i64 2, ptr %i.c, align 8, !noalias !1953
  br label %.invoke

bb.bm:                                            ; preds = %bb.bk
  %i.gm = add i64 %i.gj, 2                        ; 3 uses
  store i64 %i.gm, ptr %i.ar, align 8, !alias.scope !1952
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !noundef !11
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !11 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %i.gr = sub i64 %i.gi, %i.gm
  %.not.i87 = icmp ugt i64 %i.gq, %i.gr
  br i1 %.not.i87, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gs = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.gq, i1 noundef zeroext true)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc89:                                         ; preds = %bb.bn
  %.pre.i88 = load i64, ptr %i.ar, align 8, !alias.scope !1954
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc89, %bb.bm
  %i.gt = phi i64 [ %i.gm, %bb.bm ], [ %.pre.i88, %.noexc89 ]
  %i.gu = load ptr, ptr %i.r, align 8, !alias.scope !1954, !nonnull !11, !noundef !11
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr nonnull readonly align 1 %i.go, i64 range(i64 0, -9223372036854775808) %i.gq, i1 false)
  %i.gw = load i64, ptr %i.as, align 8, !alias.scope !1954, !noundef !11 ; 2 uses
  %i.gx = load i64, ptr %i.ar, align 8, !alias.scope !1954, !noundef !11 ; 2 uses
  %i.gy = sub i64 %i.gw, %i.gx                    ; 2 uses
  %i.gz = icmp ugt i64 %i.gq, %i.gy
  br i1 %i.gz, label %bb.bp, label %bb.bq, !prof !30

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1955
  store i64 %i.gq, ptr %i.b, align 8, !noalias !1955
  br label %.invoke

bb.bq:                                            ; preds = %bb.bo
  %i.ha = add i64 %i.gx, %i.gq                    ; 3 uses
  store i64 %i.ha, ptr %i.ar, align 8, !alias.scope !1954
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  %i.hb = sub i64 %i.gw, %i.ha
  %.not.i92 = icmp ult i64 %i.hb, 2
  br i1 %.not.i92, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hc = invoke noundef zeroext i1 @_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 2, i1 noundef zeroext true)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc94:                                         ; preds = %bb.br
  %.pre.i93 = load i64, ptr %i.ar, align 8, !alias.scope !1956
  br label %bb.bs

bb.bs:                                            ; preds = %.noexc94, %bb.bq
  %i.hd = phi i64 [ %i.ha, %bb.bq ], [ %.pre.i93, %.noexc94 ]
  %i.he = load ptr, ptr %i.r, align 8, !alias.scope !1956, !nonnull !11, !noundef !11
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hd
  store i16 2573, ptr %i.hf, align 1
  %i.hg = load i64, ptr %i.as, align 8, !alias.scope !1956, !noundef !11 ; 2 uses
  %i.hh = load i64, ptr %i.ar, align 8, !alias.scope !1956, !noundef !11 ; 2 uses
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 2
  br i1 %i.hj, label %bb.bt, label %_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit96, !prof !30

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1957
  store i64 2, ptr %i.a, align 8, !noalias !1957
  br label %.invoke

.invoke:                                          ; preds = %bb.w, %bb.bh, %bb.bl, %bb.bp, %bb.bt
  %.sink296.sroa.phi = phi ptr [ %.sink296.sroa.gep, %bb.w ], [ %.sink296.sroa.gep356, %bb.bh ], [ %.sink296.sroa.gep357, %bb.bl ], [ %.sink296.sroa.gep358, %bb.bp ], [ %.sink296.sroa.gep359, %bb.bt ]
  %.sink296 = phi ptr [ %i.l, %bb.w ], [ %i.d, %bb.bh ], [ %i.c, %bb.bl ], [ %i.b, %bb.bp ], [ %i.a, %bb.bt ]
  %.sink = phi i64 [ %i.ck, %bb.w ], [ %i.ga, %bb.bh ], [ %i.gk, %bb.bl ], [ %i.gy, %bb.bp ], [ %i.hi, %bb.bt ]
  store i64 %.sink, ptr %.sink296.sroa.phi, align 8, !noalias !11
  invoke void @_RNvCsk2Y6yuwWMc1_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink296) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit96: ; preds = %bb.bs
  %i.hk = add i64 %i.hh, 2                        ; 2 uses
  store i64 %i.hk, ptr %i.ar, align 8, !alias.scope !1956
  br label %select.unfold

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.bj, %bb.bn, %bb.br, %.invoke293, %.invoke, %bb.u
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCsk2Y6yuwWMc1_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.bb

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ab, %bb.af, %bb.ak, %bb.ap, %.thread157, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn122 = phi { ptr, i32 } [ %i.en, %bb.ap ], [ %lpad.thr_comm.split-lp160, %.thread157 ], [ %lpad.loopexit.split-lp326, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dz, %bb.ak ], [ %i.dq, %bb.af ], [ %i.da, %bb.ab ]
  %.sroa.09.1121 = phi i8 [ 0, %bb.ap ], [ 1, %.thread157 ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 0, %bb.ak ], [ 1, %bb.af ], [ 1, %bb.ab ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %bb.b unwind label %bb.bb

bb.bu:                                            ; preds = %bb.e
  unreachable

bb.bv:                                            ; preds = %bb.b
end_hunk_10
