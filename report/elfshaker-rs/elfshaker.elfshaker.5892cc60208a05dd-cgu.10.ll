Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.10?download=true
inline.NumInlined: 364
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1xwejQucwHj_5alloc6string6Stringj2_ECs7BtpbLEd5q3_9elfshaker:bb.a
bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %.lcssa14 = phi i64 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.1 ]
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %i.e = phi i64 [ %.lcssa14, %bb.d ], [ %.lcssa, %bb.b ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.body.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #27
          to label %.critedge unwind label %bb.f

.critedge:                                        ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBT_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBT_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !71 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !71, !nonnull !6, !align !12, !noundef !6 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !71 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !71

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !6, !noalias !71 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !14, !invariant.load !6, !noalias !71
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #29, !noalias !71
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !13, !invariant.load !6, !noalias !71 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !14, !invariant.load !6, !noalias !71
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #29, !noalias !71
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrIBC_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !6
  %switch = icmp ugt i64 %i.b, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker:bb.a
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB1W_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1t_6os_str5OsStrEEENtNtNtB2e_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTcbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !13, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !14, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !13, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !14, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1A_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1C_6string6StringKj2_EENtNtB2n_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB4Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !98, !alias.scope !99, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, -3
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_7flatten7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1E_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1G_6string6StringKj2_EENtNtB2r_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB53_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !100, !noundef !6
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i_crit_edge.i.i.i unwind label %bb.d

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i_crit_edge.i.i.i: ; preds = %bb.c
  %.pre.i.i.i = load i64, ptr %0, align 8, !range !9, !alias.scope !101
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) #27
          to label %.body.i.i.i.i.i unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i.i.i.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i_crit_edge.i.i.i, %bb.b
  %i.g = phi i64 [ %.pre.i.i.i, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i_crit_edge.i.i.i ], [ %i.a, %bb.b ]
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.g, -3
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBT_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0)
          to label %.body.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBT_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.h

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.f, %bb.d
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.k, %bb.h ], [ %i.h, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #27
          to label %.body.i unwind label %bb.l

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB37_.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !9, !alias.scope !102, !noundef !6
  %switch.i3.i.i.i.i.i = icmp ugt i64 %i.m, -3
  br i1 %switch.i3.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_7flatten7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1E_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1G_6string6StringKj2_EENtNtB2r_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB53_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i5.i.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBT_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i5.i.i.i.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBT_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_7flatten7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1E_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1G_6string6StringKj2_EENtNtB2r_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB53_.exit.i unwind label %bb.m

bb.l:                                             ; preds = %.body.i.i.i.i.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i5.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.j, %.body.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.m ], [ %i.n, %bb.j ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !103, !noundef !6
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.n

bb.n:                                             ; preds = %.body.i
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB9_6string6StringKj2_EENtNtNtB13_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_7flatten7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1E_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1G_6string6StringKj2_EENtNtB2r_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB53_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtBG_6string6StringKj2_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i5.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_5array4iter8IntoIterNtNtB1q_6string6StringKj2_EEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !104, !noundef !6
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit4.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_7flatten7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1E_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1G_6string6StringKj2_EENtNtB2r_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB53_.exit.i
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB9_6string6StringKj2_EENtNtNtB13_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit4.i unwind label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.q, %bb.n, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %eh.lpad-body.i, %bb.n ], [ %eh.lpad-body.i, %.body.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !105, !noundef !6
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit6.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit.i
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB9_6string6StringKj2_EENtNtNtB13_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit6.i unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit4.i: ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_7flatten7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1E_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1G_6string6StringKj2_EENtNtB2r_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EEEB53_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !106, !noundef !6
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtBE_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1H_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1J_6string6StringKj2_EENtNtB2u_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EIB1D_B3J_EEEB56_.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit4.i
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB9_6string6StringKj2_EENtNtNtB13_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtBE_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1H_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1J_6string6StringKj2_EENtNtB2u_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EIB1D_B3J_EEEB56_.exit

bb.s:                                             ; preds = %bb.p, %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit6.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtBE_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB4_6result6ResultINtB1H_3VecINtNtNtB4_5array4iter8IntoIterNtNtB1J_6string6StringKj2_EENtNtB2u_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EIB1D_B3J_EEEB56_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtNtB4_5array4iter8IntoIterNtNtB14_6string6StringKj2_EEEECs7BtpbLEd5q3_9elfshaker.exit4.i, %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
    i64 1, label %bb.d
  ], !prof !15

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !109
  store i8 3, ptr %i.a, align 8, !alias.scope !109
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgEECs7BtpbLEd5q3_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgEECs7BtpbLEd5q3_9elfshaker.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.c
  ], !prof !15

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !112
  store i8 3, ptr %i.a, align 8, !alias.scope !112
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !alias.scope !125, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #27
          to label %.body36 unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !10, !alias.scope !126, !noundef !6
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body36 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39 unwind label %bb.i

.body36:                                          ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.i ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #27
          to label %.body40 unwind label %bb.by

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !127, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %switch.i.i.i = icmp samesign ult i64 %i.p, 4
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !130 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !130, !nonnull !6, !align !12, !noundef !6 ; 5 uses
  %i.t = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !130 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i.i)
          to label %bb.m unwind label %bb.o, !noalias !130

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !13, !invariant.load !6, !noalias !130 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !6, !noalias !130
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #29, !noalias !130
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit

bb.o:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !13, !invariant.load !6, !noalias !130 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !14, !invariant.load !6, !noalias !130
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #29, !noalias !130
  br label %.body40

.body40:                                          ; preds = %bb.p, %bb.o, %.body36
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body36 ], [ %i.z, %bb.o ], [ %i.z, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #27
          to label %.body43 unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.n, %bb.m, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body43 unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body43:                                          ; preds = %bb.t, %bb.q, %.body40
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body40 ], [ %i.ak, %bb.t ], [ %i.ah, %bb.q ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #27
          to label %.body47 unwind label %bb.by

bb.t:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body47 unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49 unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body47:                                          ; preds = %bb.x, %bb.u, %.body43
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body43 ], [ %i.ap, %bb.x ], [ %i.am, %bb.u ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #27
          to label %.body52 unwind label %bb.by

bb.x:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body47

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49: ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body52 unwind label %bb.aa

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body52:                                          ; preds = %bb.ab, %bb.y, %.body47
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body47 ], [ %i.au, %bb.ab ], [ %i.ar, %bb.y ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #27
          to label %.body56 unwind label %bb.by

bb.ab:                                            ; preds = %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body52

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54: ; preds = %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body56 unwind label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body56:                                          ; preds = %bb.af, %bb.ac, %.body52
  %.pn10 = phi { ptr, i32 } [ %.pn8, %.body52 ], [ %i.az, %bb.af ], [ %i.aw, %bb.ac ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #27
          to label %.body59 unwind label %bb.by

bb.af:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body56

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body59 unwind label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body59:                                          ; preds = %bb.aj, %bb.ag, %.body56
  %.pn12 = phi { ptr, i32 } [ %.pn10, %.body56 ], [ %i.be, %bb.aj ], [ %i.bb, %bb.ag ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #27
          to label %.body63 unwind label %bb.by

bb.aj:                                            ; preds = %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body59

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body63 unwind label %bb.am

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit65 unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bh = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker:bb.a

.body94:                                          ; preds = %bb.ba, %bb.ay, %.body88
  %.pn22 = phi { ptr, i32 } [ %.pn20, %.body88 ], [ %i.cg, %bb.ba ], [ %i.cd, %bb.ay ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #27
          to label %.body100 unwind label %bb.cb

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i93
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body94

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit91, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i93
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !10, !alias.scope !172, !noundef !6
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body100 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103 unwind label %bb.be

.body100:                                         ; preds = %bb.be, %bb.bc, %.body94
  %.pn24 = phi { ptr, i32 } [ %.pn22, %.body94 ], [ %i.cn, %bb.be ], [ %i.ck, %bb.bc ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cm) #27
          to label %.body106 unwind label %bb.cb

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body100

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !10, !alias.scope !173, !noundef !6
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body106 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109 unwind label %bb.bi

.body106:                                         ; preds = %bb.bi, %bb.bg, %.body100
  %.pn26 = phi { ptr, i32 } [ %.pn24, %.body100 ], [ %i.cu, %bb.bi ], [ %i.cr, %bb.bg ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #27
          to label %bb.bj unwind label %bb.cb

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cv)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %.body106
  %.pn28 = phi { ptr, i32 } [ %i.cx, %bb.bk ], [ %.pn26, %.body106 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw) #27
          to label %.body111 unwind label %bb.cb

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.body111 unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body111:                                         ; preds = %bb.bp, %bb.bm, %bb.bj
  %.pn30 = phi { ptr, i32 } [ %.pn28, %bb.bj ], [ %i.dc, %bb.bp ], [ %i.cz, %bb.bm ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #27
          to label %.body114 unwind label %bb.cb

bb.bp:                                            ; preds = %bb.bn
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body111

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bn
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %.body114 unwind label %bb.bs

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body114:                                         ; preds = %bb.bt, %bb.bq, %.body111
  %.pn32 = phi { ptr, i32 } [ %.pn30, %.body111 ], [ %i.dh, %bb.bt ], [ %i.de, %bb.bq ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #27
          to label %.body116 unwind label %bb.cb

bb.bt:                                            ; preds = %bb.br
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body114

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.br
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.dj = load i64, ptr %i.di, align 8, !range !11, !alias.scope !174, !noundef !6 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %switch.i.i.i = icmp samesign ult i64 %i.dj, 4
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !177 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !177, !nonnull !6, !align !12, !noundef !6 ; 5 uses
  %i.dn = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !177 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.dn(ptr noundef nonnull %.val.i.i.i)
          to label %bb.bx unwind label %bb.bz, !noalias !177

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !13, !invariant.load !6, !noalias !177 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !range !14, !invariant.load !6, !noalias !177
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.dp, i64 noundef range(i64 1, 536870913) %i.ds) #29, !noalias !177
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit

bb.bz:                                            ; preds = %bb.bw
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !13, !invariant.load !6, !noalias !177 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.body116, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !14, !invariant.load !6, !noalias !177
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.dv, i64 noundef range(i64 1, 536870913) %i.dy) #29, !noalias !177
  br label %.body116

.body116:                                         ; preds = %bb.ca, %bb.bz, %.body114
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body114 ], [ %i.dt, %bb.bz ], [ %i.dt, %bb.ca ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3ext10ExtensionsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dz) #27
          to label %bb.cc unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.by, %bb.bx, %bb.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3ext10ExtensionsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ea)
  ret void

bb.cb:                                            ; preds = %.body116, %.body114, %.body111, %bb.bj, %.body106, %.body100, %.body94, %.body88, %.body83, %.body79, %.body76, %.body71, %.body65, %.body59, %.body53, %.body47, %.body42, %.body38, %.body
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.cc:                                            ; preds = %.body116
  resume { ptr, i32 } %.pn34
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %.body11 unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body11 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13 unwind label %bb.g

.body11:                                          ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6 = load ptr, ptr %i.i, align 8, !nonnull !6, !align !12, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.val5, ptr nonnull %.val6) #27
          to label %.body14 unwind label %bb.o

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.l, align 8, !nonnull !6, !align !12, !noundef !6 ; 5 uses
  %i.m = load ptr, ptr %.val4, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.m(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !13, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !14, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !13, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !14, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #29
  br label %.body14

.body14:                                          ; preds = %bb.l, %bb.k, %.body11
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body11 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load i32, ptr %i.y, align 8, !noundef !6 ; 2 uses
  %i.z = icmp eq i32 %.val8, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.m

bb.m:                                             ; preds = %.body14
  %i.aa = tail call noundef i32 @close(i32 noundef %.val8) #29 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val7 = load i32, ptr %i.ab, align 8, !noundef !6 ; 2 uses
  %i.ac = icmp eq i32 %.val7, -1
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
  %i.ad = tail call noundef i32 @close(i32 noundef %.val7) #29 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, %bb.n
  ret void

bb.o:                                             ; preds = %.body11, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.m, %.body14
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !16, !noundef !6 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808       ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %.unreachabledefault [
    i64 0, label %bb.h
    i64 1, label %bb.k
    i64 2, label %bb.z
    i64 3, label %bb.ac
    i64 4, label %bb.bk
    i64 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 6, label %bb.bu
    i64 7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 9, label %bb.bw
    i64 10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 11, label %bb.bz
    i64 12, label %bb.cc
    i64 13, label %bb.cf
    i64 14, label %bb.ci
    i64 15, label %bb.b
  ]

.unreachabledefault:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !6, !align !12, !noundef !6 ; 5 uses
  %i.n = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.n(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !13, !invariant.load !6 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !13, !invariant.load !6 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #29
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.cr, %.body.i17, %bb.cn, %bb.cg, %bb.cd, %bb.ca, %bb.bm, %bb.bp, %bb.bs, %bb.ae, %bb.au, %bb.ax, %bb.bb, %.body.i, %bb.bh, %bb.aa, %.body.i.i, %.body3.i.i, %bb.x, %bb.f, %bb.g, %bb.bv
  %common.resume.op = phi { ptr, i32 } [ %i.fg, %bb.cr ], [ %i.t, %bb.f ], [ %i.bd, %bb.x ], [ %i.bg, %bb.aa ], [ %eh.lpad-body.i, %.body.i ], [ %i.ef, %bb.bv ], [ %i.eb, %bb.bs ], [ %i.ek, %bb.ca ], [ %i.en, %bb.cd ], [ %i.eq, %bb.cg ], [ %eh.lpad-body.i18, %.body.i17 ], [ %i.t, %bb.g ], [ %eh.lpad-body4.i.i, %.body3.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.dr, %bb.bh ], [ %i.bp, %bb.ae ], [ %i.cx, %bb.ax ], [ %i.de, %bb.bb ], [ %i.cu, %bb.au ], [ %i.dz, %bb.bp ], [ %i.dx, %bb.bm ], [ %i.fa, %bb.cn ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = ptrtoint ptr %.val2 to i64              ; 2 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.j
  ], !prof !15

default.unreachable:                              ; preds = %bb.bd, %bb.aq, %bb.an, %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.aa, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %.val2, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !211
  store i8 3, ptr %i.f, align 8, !alias.scope !211
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.ah = icmp eq i64 %i.g, -1
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !10, !alias.scope !214, !noundef !6
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body3.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.w

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.n
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.al, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !215, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr nonnull %.val2.i.i) #27
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !215, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !215
  %i.as = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.at = and i64 %i.as, 3
  switch i64 %i.at, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i
    i64 1, label %bb.u
  ], !prof !15

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.au = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.av = and i64 %i.as, 1095216660480
  %i.aw = icmp ne i64 %i.av, 1095216660480
  tail call void @llvm.assume(i1 %i.au)
  tail call void @llvm.assume(i1 %i.aw)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.ax = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !216, !noalias !215
  store i8 3, ptr %i.e, align 8, !alias.scope !216, !noalias !215
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.u, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !215
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.v:                                             ; preds = %.body3.i.i, %.body.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

.body3.i.i:                                       ; preds = %bb.w, %bb.q
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %i.ba, %bb.w ], [ %i.an, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb) #27
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit8.i.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit8.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.z:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterNtCs7s9T68JqHVf_3hex15BytesToHexCharsECs7BtpbLEd5q3_9elfshaker:bb.a
.noexc5:                                          ; preds = %bb.c
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !268, !noalias !269, !nonnull !6, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.k
  %i.ah = trunc nuw nsw i32 %i.j to i8
  store i8 %i.ah, ptr %i.ag, align 1, !noalias !265
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.d:                                             ; preds = %.noexc4
  %i.ai = or disjoint i8 %i.v, -64
  store i8 %i.ai, ptr %i.q, align 1, !noalias !265
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.t, ptr %i.aj, align 1, !noalias !265
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.e:                                             ; preds = %.noexc4
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = or disjoint i8 %i.z, -32
  store i8 %i.ak, ptr %i.q, align 1, !noalias !265
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.x, ptr %i.al, align 1, !noalias !265
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 %i.t, ptr %i.am, align 1, !noalias !265
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.ae, ptr %i.q, align 1, !noalias !265
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.ab, ptr %i.an, align 1, !noalias !265
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 %i.x, ptr %i.ao, align 1, !noalias !265
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  store i8 %i.t, ptr %i.ap, align 1, !noalias !265
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d, %.noexc5
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 1, %.noexc5 ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aq = add nuw i64 %.sroa.0.03.i.i.i.i.i.i, %i.k
  store i64 %i.aq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !268, !noalias !269
  %i.ar = invoke noundef i32 @_RNvXs_Cs7s9T68JqHVf_3hexNtB4_15BytesToHexCharsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc6 unwind label %.loopexit ; 2 uses

.noexc6:                                          ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %.not.i.i.i = icmp eq i32 %i.ar, -1
  br i1 %.not.i.i.i, label %.loopexit7, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %bb.b, %bb.c, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtCs7s9T68JqHVf_3hex15BytesToHexCharsE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.a, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27
          to label %bb.j unwind label %bb.i

.loopexit7:                                       ; preds = %.noexc6, %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1p_6string6StringEEINtNtNtBb_5slice4iter4IterB1k_EENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldRB1k_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB7_7flatten7FlattenINtB4M_7FlatMapINtNtB1n_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultIB1l_INtNtNtBb_5array4iter8IntoIterB1R_Kj2_EENtNtB5S_5error5ErrorENCNvNtB42_4find3run0EEB71_B1R_Es_00NvYjNtNtBb_3cmp3Ord3maxE0EB42_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !align !12, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !275
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %_RINvYINtNtCs3oUPovFnLWP_4core6option4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1D_8adapters3map8map_foldRBD_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2q_7flatten7FlattenINtB3R_7FlatMapINtNtBG_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB8_6result6ResultIBE_INtNtNtB8_5array4iter8IntoIterB1a_Kj2_EENtNtB4X_5error5ErrorENCNvNtB37_4find3run0EEB65_B1a_Es_00NvYjNtNtB8_3cmp3Ord3maxE0EB37_.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.b
  %i.g = call noundef i64 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1z_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtBV_7flatten7FlattenINtB3j_7FlatMapINtNtB1x_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultIB1v_INtNtNtBb_5array4iter8IntoIterB21_Kj2_EENtNtB4p_5error5ErrorENCNvNtB2z_4find3run0EEB5y_B21_Es_00NvYjNtNtBb_3cmp3Ord3maxE0INtB7_5FnMutTjB1t_EE8call_mutB2z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.f)
  br label %_RINvYINtNtCs3oUPovFnLWP_4core6option4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1D_8adapters3map8map_foldRBD_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2q_7flatten7FlattenINtB3R_7FlatMapINtNtBG_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB8_6result6ResultIBE_INtNtNtB8_5array4iter8IntoIterB1a_Kj2_EENtNtB4X_5error5ErrorENCNvNtB37_4find3run0EEB65_B1a_Es_00NvYjNtNtB8_3cmp3Ord3maxE0EB37_.exit

_RINvYINtNtCs3oUPovFnLWP_4core6option4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1D_8adapters3map8map_foldRBD_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2q_7flatten7FlattenINtB3R_7FlatMapINtNtBG_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB8_6result6ResultIBE_INtNtNtB8_5array4iter8IntoIterB1a_Kj2_EENtNtB4X_5error5ErrorENCNvNtB37_4find3run0EEB65_B1a_Es_00NvYjNtNtB8_3cmp3Ord3maxE0EB37_.exit: ; preds = %bb.b, %.lr.ph.split.us.i
  %.sroa.0.0.lcssa.i = phi i64 [ %i.g, %.lr.ph.split.us.i ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %_RINvYINtNtCs3oUPovFnLWP_4core6option4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1D_8adapters3map8map_foldRBD_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2q_7flatten7FlattenINtB3R_7FlatMapINtNtBG_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB8_6result6ResultIBE_INtNtNtB8_5array4iter8IntoIterB1a_Kj2_EENtNtB4X_5error5ErrorENCNvNtB37_4find3run0EEB65_B1a_Es_00NvYjNtNtB8_3cmp3Ord3maxE0EB37_.exit, %bb.a
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.lcssa.i, %_RINvYINtNtCs3oUPovFnLWP_4core6option4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1D_8adapters3map8map_foldRBD_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2q_7flatten7FlattenINtB3R_7FlatMapINtNtBG_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB8_6result6ResultIBE_INtNtNtB8_5array4iter8IntoIterB1a_Kj2_EENtNtB4X_5error5ErrorENCNvNtB37_4find3run0EEB65_B1a_Es_00NvYjNtNtB8_3cmp3Ord3maxE0EB37_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !6 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2C_7flatten7FlattenINtB43_7FlatMapINtNtBT_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultIBR_INtNtNtBb_5array4iter8IntoIterB1n_Kj2_EENtNtB59_5error5ErrorENCNvNtB3j_4find3run0EEB6h_B1n_Es_00NvYjNtNtBb_3cmp3Ord3maxE0EB3j_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !nonnull !6, !align !12, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.m = icmp eq ptr %i.i, %i.k
  br i1 %i.m, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2C_7flatten7FlattenINtB43_7FlatMapINtNtBT_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultIBR_INtNtNtBb_5array4iter8IntoIterB1n_Kj2_EENtNtB59_5error5ErrorENCNvNtB3j_4find3run0EEB6h_B1n_Es_00NvYjNtNtBb_3cmp3Ord3maxE0EB3j_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 24
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !276, !noundef !6 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i, %bb.e
  %.sroa.04.0.i = phi i64 [ 0, %bb.e ], [ %i.aa, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0, %bb.e ], [ %..i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.04.0.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val12.i = load i64, ptr %i.t, align 8, !noalias !276, !noundef !6 ; 2 uses
  %i.u = icmp ult i64 %i.r, %.val12.i
  br i1 %i.u, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %.val12.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !276
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i: ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val11.i = load ptr, ptr %i.v, align 8, !noalias !276, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val11.i, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !276, !noundef !6 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  call void @llvm.assume(i1 %i.z)
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.y, i64 %.sroa.02.0.i) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.q
  br i1 %i.ab, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2C_7flatten7FlattenINtB43_7FlatMapINtNtBT_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultIBR_INtNtNtBb_5array4iter8IntoIterB1n_Kj2_EENtNtB59_5error5ErrorENCNvNtB3j_4find3run0EEB6h_B1n_Es_00NvYjNtNtBb_3cmp3Ord3maxE0EB3j_.exit, label %bb.f

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2C_7flatten7FlattenINtB43_7FlatMapINtNtBT_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultIBR_INtNtNtBb_5array4iter8IntoIterB1n_Kj2_EENtNtB59_5error5ErrorENCNvNtB3j_4find3run0EEB6h_B1n_Es_00NvYjNtNtBb_3cmp3Ord3maxE0EB3j_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i, %bb.d, %bb.c
  %.sroa.04.0 = phi i64 [ %.sroa.0.0, %bb.c ], [ %.sroa.0.0, %bb.d ], [ %..i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB10_6string6StringEjjNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB6_7flatten7FlattenINtB2K_7FlatMapINtNtBY_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultIBW_INtNtNtBa_5array4iter8IntoIterB1s_Kj2_EENtNtB3P_5error5ErrorENCNvNtB20_4find3run0EEB4X_B1s_Es_00NvYjNtNtBa_3cmp3Ord3maxE0B20_.exit.i ]
  ret i64 %.sroa.04.0
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !282 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !282 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !282 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !282 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !6
  %i.t = load i8, ptr %i.r, align 1, !noundef !6
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !280, !noalias !281
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !281, !noalias !280
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !280, !noalias !281
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !281, !noalias !280
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE13with_capacityCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, -1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %.noexc
  %i.g = load i64, ptr %i.f, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %i.k, align 4
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = tail call noundef i32 @close(i32 noundef %2) #29 ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeE7next_kvCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  %i.g = load i16, ptr %i.f, align 2, !noundef !6
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.o, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !noalias !285, !noundef !6 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i16 %i.q to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.022, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.021, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.5.021, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 228
  %i.q = load i16, ptr %i.p, align 4, !noalias !285 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 230
  %i.s = load i16, ptr %i.r, align 2, !noundef !6
  %i.t = icmp ult i16 %i.q, %i.s
  br i1 %i.t, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

end_hunk_3
begin_hunk_4_@_RNvXs5_NtNtCskuiImRAV2ip_9elfshaker4repo5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt:bb.a
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 16)
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 11)
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ag, ptr %i.f, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 22, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 12)
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.e, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.d, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 18, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.c, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.b, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 20, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.s, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.aa, %bb.h ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ], [ %i.ae, %bb.k ], [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.ao, %bb.p ], [ %i.aq, %bb.q ], [ %i.as, %bb.r ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !21, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !493
  store ptr %0, ptr %i.c, align 8, !noalias !493
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !noalias !493
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !493, !noundef !6 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not15.not.i = icmp eq i64 %i.i, 0
  br i1 %.not15.not.i, label %_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE9flush_bufCs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %.lr.ph.i
  store i8 1, ptr %i.d, align 8, !alias.scope !493
  %i.m = invoke { ptr, i64 } @_RNvMNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.o, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ax, %bb.o ]
  invoke void @_RNvXs_NvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.p

bb.e:                                             ; preds = %bb.m, %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.o = extractvalue { ptr, i64 } %i.m, 0
  %i.p = extractvalue { ptr, i64 } %i.m, 1
  %i.q = invoke { i64, ptr } @_RNvXsb_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.p)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 12 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 5 uses
  store i8 0, ptr %i.d, align 8, !alias.scope !493
  %i.u = trunc nuw i64 %i.r to i1
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.v = and i64 %i.t, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %.split10.i
    i64 0, label %.split11.i
    i64 1, label %.split.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.i
  %i.x = lshr i64 %i.t, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = invoke noundef zeroext i1 %i.aa(i32 noundef %i.y)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.o, !inline_history !0

.split10.i:                                       ; preds = %bb.h
  %i.ac = lshr i64 %i.t, 32
  %i.ad = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.af, label %bb.l, label %._crit_edge

.split11.i:                                       ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !22, !noundef !6
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %.thread.thread.i, label %._crit_edge

.split.i:                                         ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.s, i64 31
  %i.ak = load i8, ptr %i.aj, align 8, !range !22, !noundef !6
  %i.al = icmp eq i8 %i.ak, 35
  br i1 %i.al, label %bb.m, label %._crit_edge

bb.j:                                             ; preds = %bb.g
  %i.am = icmp eq ptr %i.s, null
  br i1 %i.am, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i64, ptr %i.g, align 8, !noalias !493, !noundef !6
  %i.ao = add i64 %i.an, %i.t                     ; 2 uses
  store i64 %i.ao, ptr %i.g, align 8, !noalias !493
  br label %bb.n

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.ab, label %.thread.thread.i, label %._crit_edge

.thread.thread.i:                                 ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split11.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !493
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i

bb.l:                                             ; preds = %.split10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !493
  %i.ap = and i64 %i.t, 1095216660480
  %i.aq = icmp ne i64 %i.ap, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i

bb.m:                                             ; preds = %.split.i
  %i.ar = getelementptr i8, ptr %i.s, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  store ptr %i.ar, ptr %i.l, align 8, !alias.scope !494, !noalias !493
  store i8 3, ptr %i.b, align 8, !alias.scope !494, !noalias !493
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.m, %bb.l, %.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !493
  %.pre.i = load i64, ptr %i.g, align 8, !noalias !493
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.k
  %i.as = phi i64 [ %i.ao, %bb.k ], [ %.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %i.at = load ptr, ptr %i.c, align 8, !noalias !493, !nonnull !6, !align !12, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !6 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  %.not.i = icmp ult i64 %i.as, %i.av
  br i1 %.not.i, label %bb.c, label %_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE9flush_bufCs7BtpbLEd5q3_9elfshaker.exit

bb.o:                                             ; preds = %.noexc.i, %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.s) #27
          to label %bb.d unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %.pn.i

_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE9flush_bufCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.n, %bb.b
  call void @_RNvXs_NvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !493
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit

._crit_edge:                                      ; preds = %.split11.i, %.split10.i, %.split.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.j
  %.sroa.0.1.i.ph = phi ptr [ @16, %bb.j ], [ %i.s, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.s, %.split.i ], [ %i.s, %.split10.i ], [ %i.s, %.split11.i ] ; 3 uses
  call void @_RNvXs_NvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.az = ptrtoint ptr %.sroa.0.1.i.ph to i64     ; 2 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable.i2 [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i1
    i64 3, label %bb.q
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i1
    i64 1, label %bb.r
  ], !prof !15

default.unreachable.i2:                           ; preds = %._crit_edge
  unreachable

bb.q:                                             ; preds = %._crit_edge
  %i.bb = icmp ult ptr %.sroa.0.1.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.az, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i1

bb.r:                                             ; preds = %._crit_edge
  %i.be = getelementptr i8, ptr %.sroa.0.1.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !495
  store i8 3, ptr %i.a, align 8, !alias.scope !495
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i1: ; preds = %bb.r, %bb.q, %._crit_edge, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i1, %_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE9flush_bufCs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !498, !noundef !6 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !498, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !498, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !498
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !504
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !505, !noalias !504, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
end_hunk_4
