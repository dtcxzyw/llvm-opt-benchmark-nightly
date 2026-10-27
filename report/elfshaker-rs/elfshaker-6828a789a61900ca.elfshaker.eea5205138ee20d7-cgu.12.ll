Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.12?download=true
inline.NumInlined: 693
inline.NumDeleted: 334
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2v_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB2g_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB29_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1U_5error5ErrorEEEEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1l_5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1F_5error5ErrorEEEB1H_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1F_5error5ErrorEEEB1H_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBY_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBw_hEENtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtB7_3vec3VechEENtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultTyINtNtBG_3vec3VechEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultTyINtNtBG_3vec3VechEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtB7_3vec3VechEENtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1I_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1I_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_Ahj14_NtNtNtB4_2io5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB29_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB29_.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB29_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1C_5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1l_5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_TyIBY_hEENtNtNtB4_2io5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBw_hEENtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtB7_3vec3VechEENtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtB7_3vec3VechEENtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_uNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !67, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !67
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !70, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !70
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !73, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !73
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !78, !nonnull !5, !noundef !5
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !78
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !83, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !83
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit4, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !114
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !117, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !117
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtBP_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !120
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtBP_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !125, !nonnull !5, !noundef !5
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !125
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !130, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !130
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit6

end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_:bb.a
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1l_5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1F_5error5ErrorEEEB1H_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1F_5error5ErrorEEEB1H_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBw_hEENtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtB7_3vec3VechEENtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultTyINtNtBG_3vec3VechEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtB7_3vec3VechEENtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultTyINtNtBG_3vec3VechEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1I_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB1I_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB12_6marker4SendEL_EENtNtNtB12_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB19_6marker4SendEL_EENtNtNtB19_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB19_6marker4SendEL_EENtNtNtB19_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1l_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRSmEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRSmEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRSmEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB27_EEB2M_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  %i.b = load ptr, ptr %0, align 8, !alias.scope !274, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !274, !noundef !5
  store i64 %i.d, ptr %i.a, align 8, !noalias !274
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8, !noalias !274
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !274, !noundef !5 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1U_ENtNtNtB1n_3ops4drop4Drop4dropB2z_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1U_ENtNtNtB1n_3ops4drop4Drop4dropB2z_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.b, !noalias !274

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.c, !noalias !274

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !274
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.e, !noalias !274

bb.d:                                             ; preds = %.lr.ph15
  %i.n = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %.body.i, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.l, %bb.b ]
  %i.q = icmp eq i64 %i.k, %i.g
  br i1 %i.q, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.n, %bb.d ], [ %i.k, %.body.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #23
          to label %bb.d unwind label %bb.f, !noalias !274

bb.f:                                             ; preds = %.lr.ph15
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !274
  unreachable

.body.i:                                          ; preds = %bb.d, %.body.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB2g_.exit.i unwind label %bb.g, !noalias !274

bb.g:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !274
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB2g_.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1U_ENtNtNtB1n_3ops4drop4Drop4dropB2z_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.a
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtBG_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEB2K_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !277
  %i.b = load ptr, ptr %0, align 8, !alias.scope !277, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !277, !noundef !5
  store i64 %i.d, ptr %i.a, align 8, !noalias !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8, !noalias !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !277, !noundef !5 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2w_2io5error5ErrorEEEB2h_ENtNtNtB2w_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.c
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2w_2io5error5ErrorEEEB2h_ENtNtNtB2w_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !noalias !277

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.d, !noalias !277

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.f, !noalias !277

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !277
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.n = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %.body.i, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.l, %bb.b ]
  %i.q = icmp eq i64 %i.k, %i.g
  br i1 %i.q, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i14 = phi i64 [ %i.n, %bb.e ], [ %i.k, %.body.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #23
          to label %bb.e unwind label %bb.g, !noalias !277

bb.g:                                             ; preds = %.lr.ph15
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !277
  unreachable

.body.i:                                          ; preds = %bb.e, %.body.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.h, !noalias !277

bb.h:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !277
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2w_2io5error5ErrorEEEB2h_ENtNtNtB2w_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.a
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !277
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !462, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !462
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerEECskuiImRAV2ip_9elfshaker.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !465, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !465
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerEECskuiImRAV2ip_9elfshaker.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerEECskuiImRAV2ip_9elfshaker.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerEECskuiImRAV2ip_9elfshaker.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !513, !noundef !5 ; 3 uses
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
    i64 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 6, label %bb.bu
    i64 7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 9, label %bb.bw
    i64 10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
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
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.n = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.n(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #22
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.cr, %.body.i16, %bb.cn, %bb.cg, %bb.cd, %bb.ca, %bb.bm, %bb.bp, %bb.bs, %bb.ae, %bb.au, %bb.ax, %bb.bb, %.body.i, %bb.bh, %bb.aa, %.body.i.i, %.body2.i.i, %bb.x, %bb.f, %bb.g, %bb.bv
  %common.resume.op = phi { ptr, i32 } [ %i.fg, %bb.cr ], [ %i.t, %bb.f ], [ %i.bd, %bb.x ], [ %i.bg, %bb.aa ], [ %eh.lpad-body.i, %.body.i ], [ %i.ef, %bb.bv ], [ %i.eb, %bb.bs ], [ %i.ek, %bb.ca ], [ %i.en, %bb.cd ], [ %i.eq, %bb.cg ], [ %eh.lpad-body.i17, %.body.i16 ], [ %i.t, %bb.g ], [ %eh.lpad-body3.i.i, %.body2.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.dr, %bb.bh ], [ %i.bp, %bb.ae ], [ %i.cx, %bb.ax ], [ %i.de, %bb.bb ], [ %i.cu, %bb.au ], [ %i.dz, %bb.bp ], [ %i.dx, %bb.bm ], [ %i.fa, %bb.cn ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !514, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !514
  %i.aa = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.j
  ], !prof !13

default.unreachable:                              ; preds = %bb.bd, %bb.aq, %bb.an, %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.aa, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !515, !noalias !514
  store i8 3, ptr %i.f, align 8, !alias.scope !515, !noalias !514
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag), !noalias !514
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !514
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.ah = icmp eq i64 %i.g, -1
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !6, !alias.scope !518, !noundef !5
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body2.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.w

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.n
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.al, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #23
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i.i, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !520, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !520
  %i.as = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.at = and i64 %i.as, 3
  switch i64 %i.at, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 1, label %bb.u
  ], !prof !13

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.au = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.av = and i64 %i.as, 1095216660480
  %i.aw = icmp ne i64 %i.av, 1095216660480
  tail call void @llvm.assume(i1 %i.au)
  tail call void @llvm.assume(i1 %i.aw)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.ax = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !521, !noalias !520
  store i8 3, ptr %i.e, align 8, !alias.scope !521, !noalias !520
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay), !noalias !519
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.u, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !520
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.v:                                             ; preds = %.body2.i.i, %.body.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

.body2.i.i:                                       ; preds = %bb.w, %bb.q
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.ba, %bb.w ], [ %i.an, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #23
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit7.i.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit7.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.z:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.aa

end_hunk_2
begin_hunk_3_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB4_5error5ErrorENCNvMs0_NtB4_10repositoryNtB2k_10Repository24find_duplicate_snapshots0QINtNtNtB1k_5slice4iter4IterBW_EEB6_:bb.a
_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.q ], [ null, %bb.p ] ; 2 uses
  store i64 1, ptr %i.ac, align 8, !alias.scope !679, !noalias !671
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.ci, align 8, !alias.scope !679, !noalias !671
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.o
  %.pr.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !671
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i
  %i.dc = phi ptr [ %.pr.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !671
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB29_8peekable8PeekableQINtNtNtB2d_5slice4iter4IterBV_EEEE9from_iterB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.v unwind label %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !675

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !671
  %i.dd = load ptr, ptr %i.ba, align 8, !noalias !671, !nonnull !5, !noundef !5 ; 3 uses
  %i.de = load i64, ptr %i.ad, align 8, !range !8, !noalias !671, !noundef !5
  %i.df = load i64, ptr %i.bb, align 8, !noalias !671, !noundef !5 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 384307168202282326
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.dd, ptr %i.x, align 8, !noalias !671
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.de, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.dh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3v_4algo15run_in_parallelRNtNtB3v_4pack6PackIdB34_NCNvMs0_NtB3v_10repositoryNtB5m_10Repository24find_duplicate_snapshots0QINtNtNtB6_5slice4iter4IterB4Q_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB79_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B79_EE9from_iterBQ_E0B8o_EB3x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.x)
          to label %.noexc44.i unwind label %bb.ck, !noalias !668

.noexc44.i:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !671
  %i.di = load i64, ptr %i.y, align 8, !range !6, !noalias !671, !noundef !5 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !671, !nonnull !5, !noundef !5 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc44.i
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !671, !nonnull !5, !align !7, !noundef !5
  %i.do = insertelement <2 x ptr> <ptr inttoptr (i64 -1 to ptr), ptr poison>, ptr %i.dl, i64 1
  br label %bb.cm

bb.u:                                             ; preds = %.noexc44.i
  %i.dp = load i64, ptr %i.dm, align 8, !noalias !671, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !671
  %i.dq = icmp ult i64 %i.dp, 384307168202282326
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dp
  store ptr %i.dl, ptr %i.s, align 8, !noalias !671
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.dl, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.di, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.dr, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB1D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.s)
          to label %.noexc45.i unwind label %bb.ck, !noalias !668

.noexc45.i:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !671
  %i.ds = load <2 x ptr>, ptr %i.ae, align 16, !noalias !668
  %.sroa.11.0..sroa_idx57.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.11.0.copyload58.pre.i = load ptr, ptr %.sroa.11.0..sroa_idx57.phi.trans.insert.i, align 16, !noalias !668
  br label %bb.cm

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !671
  store ptr %3, ptr %i.cj, align 8, !noalias !671
  store ptr %4, ptr %i.ck, align 8, !noalias !671
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !683
  store ptr %i.ap, ptr %i.cl, align 8, !noalias !683
  store i64 0, ptr %i.p, align 8, !noalias !683
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !683
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !683
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !685
  %i.dt = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1A_7default7Default7defaultB2R_()
          to label %bb.w unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.thread.i.i.i.i.i, !noalias !686 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i: ; preds = %bb.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB2K_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.v
  %lpad.loopexit71.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.br

bb.w:                                             ; preds = %bb.v
  store ptr %i.dt, ptr %i.o, align 8, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !685
  %i.du = atomicrmw add ptr %i.dt, i64 1 monotonic, align 8, !noalias !686
  %i.dv = icmp slt i64 %i.du, 0
  br i1 %i.dv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.dt, ptr %i.l, align 8, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !685
  %i.dw = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !686
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  store ptr %i.ch, ptr %i.k, align 8, !noalias !685
  %i.dy = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %bb.ad unwind label %bb.ab, !noalias !686

bb.aa:                                            ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dz = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.ea = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !687
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ac, label %bb.bp

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bp unwind label %bb.bm, !noalias !686

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !685
  store ptr %i.ch, ptr %i.cm, align 8, !noalias !685
  store ptr %i.dy, ptr %i.cn, align 8, !noalias !685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !688
  store ptr %i.dt, ptr %i.co, align 8, !noalias !685
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !689
  %i.ec = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 64, i64 noundef 8) #22, !noalias !689 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ae, label %bb.ai, !prof !12

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.af, !noalias !686

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB23_4pack6PackIdINtNtB4_6result6ResultuNtNtB23_5error5ErrorENCNvMs0_NtB23_10repositoryNtB45_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB2V_EE00INtNtCs1xwejQucwHj_5alloc3vec3VecB3f_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.ag, !noalias !686

bb.ag:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !686
  unreachable

bb.ah:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !686
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !684, !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !690
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @0)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.ah, !noalias !686

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.d, align 8, !noalias !690, !noundef !5 ; 6 uses
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = load ptr, ptr %i.cp, align 8, !noalias !690 ; 3 uses
  br i1 %i.ei, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !690
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !685
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.ek = load ptr, ptr %i.o, align 8, !alias.scope !694, !noalias !685, !nonnull !5, !noundef !5
  %i.el = atomicrmw add ptr %i.ek, i64 -1 release, align 8, !noalias !695
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ak, label %bb.bx

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.bx unwind label %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !686

bb.al:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !685
  %i.en = atomicrmw add ptr %i.eh, i64 1 monotonic, align 8, !noalias !686
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.eh, ptr %i.i, align 8, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !685
  store i64 1, ptr %i.g, align 8, !noalias !685
  store i64 1, ptr %i.cq, align 8, !noalias !685
  store i32 0, ptr %i.cr, align 8, !noalias !685
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !685
  store ptr %i.eh, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !685
  store ptr %i.ej, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !685
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !685
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !696
  %i.ep = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !696 ; 7 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.an, label %bb.as, !prof !12

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !686

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.er = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !686

bb.ap:                                            ; preds = %bb.ao
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !686
  unreachable

bb.aq:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.ao
  %i.et = atomicrmw add ptr %i.eh, i64 -1 release, align 8, !noalias !697
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %.body.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !686

bb.as:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !685
  store ptr %i.ep, ptr %i.n, align 8, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !685
  store ptr %i.eh, ptr %i.m, align 8, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !685
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.cs)
          to label %bb.av unwind label %bb.au, !noalias !686

.body42.i.i.i.i.i.i.i:                            ; preds = %.body56.i.i.i.i.i.i.i, %bb.ax, %bb.au
  %.pn35.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fq, %.body56.i.i.i.i.i.i.i ], [ %i.ey, %bb.au ], [ %i.fe, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.ev = load ptr, ptr %i.m, align 8, !alias.scope !702, !noalias !685, !nonnull !5, !noundef !5
  %i.ew = atomicrmw add ptr %i.ev, i64 -1 release, align 8, !noalias !703
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.body42.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !686

bb.au:                                            ; preds = %bb.bl, %bb.bj, %bb.as
  %i.ey = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body42.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.ez = load i64, ptr %i.h, align 8, !range !15, !alias.scope !704, !noalias !685, !noundef !5
  %i.fa = trunc nuw i64 %i.ez to i1
  br i1 %i.fa, label %bb.aw, label %bb.ba, !prof !12

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !705
  %i.fb = load ptr, ptr %i.ct, align 8, !alias.scope !704, !noalias !685, !nonnull !5, !align !7, !noundef !5
  %i.fc = load i8, ptr %i.cu, align 8, !range !10, !alias.scope !704, !noalias !685, !noundef !5
  store ptr %i.fb, ptr %i.f, align 8, !noalias !705
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.fc, ptr %i.fd, align 8, !noalias !705
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.ay unwind label %bb.ax, !noalias !706

bb.ax:                                            ; preds = %bb.aw
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.az, !noalias !706

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !706
  unreachable

bb.ba:                                            ; preds = %bb.av
  %i.fg = load ptr, ptr %i.ct, align 8, !alias.scope !704, !noalias !685, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  %i.fh = load i8, ptr %i.cu, align 8, !range !10, !alias.scope !704, !noalias !685, !noundef !5 ; 2 uses
  %i.fi = trunc nuw i8 %i.fh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !685
  %i.fj = atomicrmw add ptr %i.ep, i64 1 monotonic, align 8, !noalias !686
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !685
  store ptr %i.ep, ptr %i.c, align 8, !noalias !708
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !707, !noalias !686, !noundef !5 ; 3 uses
  %i.fo = load i64, ptr %i.fl, align 8, !range !8, !alias.scope !707, !noalias !686, !noundef !5
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fl)
          to label %bb.bh unwind label %bb.bd, !noalias !686

bb.bd:                                            ; preds = %bb.bc
  %i.fq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.fr = atomicrmw add ptr %i.ep, i64 -1 release, align 8, !noalias !709
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.be, label %.body56.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body56.i.i.i.i.i.i.i unwind label %bb.bf, !noalias !686

bb.bf:                                            ; preds = %bb.be
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !686
  unreachable

bb.bg:                                            ; preds = %bb.ba
  call void @llvm.trap()
  unreachable

.body56.i.i.i.i.i.i.i:                            ; preds = %bb.be, %bb.bd
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.fg, i8 %i.fh) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !686

bb.bh:                                            ; preds = %bb.bc, %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !707, !noalias !686, !nonnull !5, !noundef !5
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fn
  store ptr %i.ep, ptr %i.fw, align 8, !noalias !686
  %i.fx = add i64 %i.fn, 1
  store i64 %i.fx, ptr %i.fm, align 8, !alias.scope !707, !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !685
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
end_hunk_3
begin_hunk_4_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB4_5error5ErrorENCNvMs0_NtB4_10repositoryNtB2k_10Repository24find_duplicate_snapshots0QINtNtNtB1k_5slice4iter4IterBW_EEB6_:bb.a

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !686

bb.bp:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.gm = load ptr, ptr %i.l, align 8, !alias.scope !721, !noalias !685, !nonnull !5, !noundef !5
  %i.gn = atomicrmw add ptr %i.gm, i64 -1 release, align 8, !noalias !722
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !686

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB2K_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1f_.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i
  %.pn38.i.i175.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i176.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1f_.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i173.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i174.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1f_.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i ]
  %i.gp = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !6, !noalias !671
  %i.gq = icmp ne i64 %i.gp, -1
  %or.cond70.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i173.i.i.i.i.i, i1 %i.gq, i1 false
  br i1 %or.cond70.not.i.i.i.i.i, label %bb.bu, label %.thread.i.i.i.i.i

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i
  %.pn38.i.i176.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit71.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i174.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB33_.exit62.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1f_.exit.i.i.i.i.i.i unwind label %bb.bs, !noalias !723

bb.bs:                                            ; preds = %bb.br
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %.body46.i.i.i.i.i unwind label %bb.bt, !noalias !723

bb.bt:                                            ; preds = %bb.bs
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !723
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1f_.exit.i.i.i.i.i.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB2K_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i unwind label %bb.bm, !noalias !675

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB2K_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !710

bb.bv:                                            ; preds = %bb.bu
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body46.i.i.i.i.i unwind label %bb.bw, !noalias !710

bb.bw:                                            ; preds = %bb.bv
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !710
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.thread.i.i.i.i.i unwind label %bb.bm, !noalias !675

bb.bx:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !724
  store ptr %i.ej, ptr %i.b, align 8, !noalias !724
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.bz unwind label %bb.by, !noalias !725

bb.by:                                            ; preds = %bb.bx
  %i.gv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %.thread.i.i.i.i.i unwind label %bb.ca, !noalias !725

bb.bz:                                            ; preds = %bb.bx
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !725
  unreachable

bb.cb:                                            ; preds = %bb.bl, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.gx = load ptr, ptr %i.n, align 8, !noalias !685, !nonnull !5, !noundef !5
  %i.gy = load ptr, ptr %i.o, align 8, !noalias !685, !nonnull !5, !noundef !5
  %i.gz = load ptr, ptr %i.m, align 8, !noalias !685, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !683
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  store ptr %i.gx, ptr %i.aa, align 8, !alias.scope !728, !noalias !671
  store ptr %i.gy, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !728, !noalias !671
  store ptr %i.gz, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !728, !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !671
  %i.ha = load i64, ptr %i.bb, align 8, !alias.scope !729, !noalias !671, !noundef !5 ; 3 uses
  %i.hb = load i64, ptr %i.ad, align 8, !range !8, !alias.scope !729, !noalias !671, !noundef !5
  %i.hc = icmp eq i64 %i.ha, %i.hb
  br i1 %i.hc, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEE8grow_oneB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.cf unwind label %bb.cd, !noalias !730

bb.cd:                                            ; preds = %bb.cc
  %i.hd = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #23
          to label %.thread.i.i.i.i.i unwind label %bb.ce, !noalias !675

bb.ce:                                            ; preds = %bb.cd
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !675
  unreachable

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  %i.hf = load ptr, ptr %i.ba, align 8, !alias.scope !729, !noalias !671, !nonnull !5, !noundef !5
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !675
  %i.hh = add i64 %i.ha, 1
  store i64 %i.hh, ptr %i.bb, align 8, !alias.scope !729, !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !671
  br label %bb.o

.thread.i.i.i.i.i:                                ; preds = %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cd, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB2K_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i
  %.pn58.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i175.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ %i.gv, %bb.by ], [ %i.hd, %bb.cd ], [ %.pn38.i.i175.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB2K_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp146, %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.ch unwind label %bb.cg, !noalias !675

bb.cg:                                            ; preds = %.thread.i.i.i.i.i
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i.i.i.i unwind label %bb.ci, !noalias !675

bb.ch:                                            ; preds = %.thread.i.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body46.i unwind label %bb.cj, !noalias !678

bb.ci:                                            ; preds = %bb.cg
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !675
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.cj, %bb.cg
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !675
  unreachable

bb.ck:                                            ; preds = %bb.u, %bb.s
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46.i

.body46.i:                                        ; preds = %bb.ck, %bb.ch
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.hl, %bb.ck ], [ %.pn58.i.i.i.i.i, %bb.ch ]
  %i.hm = extractvalue { ptr, i32 } %eh.lpad-body47.i, 0
  %i.hn = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.hm)
          to label %bb.cn unwind label %bb.cl, !noalias !668 ; 2 uses

bb.cl:                                            ; preds = %.body46.i
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !668
  unreachable

bb.cm:                                            ; preds = %.noexc45.i, %bb.t
  %.sroa.11.0.copyload58.i = phi ptr [ %i.dn, %bb.t ], [ %.sroa.11.0.copyload58.pre.i, %.noexc45.i ]
  %i.hp = phi <2 x ptr> [ %i.do, %bb.t ], [ %i.ds, %.noexc45.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !668
  store <2 x ptr> %i.hp, ptr %i.an, align 16, !noalias !668
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.11.0.copyload58.i, ptr %.sroa.563.0..sroa_idx.i, align 16, !noalias !668
  br label %bb.co

bb.cn:                                            ; preds = %.body46.i
  %i.hq = extractvalue { ptr, ptr } %i.hn, 0      ; 2 uses
  %i.hr = extractvalue { ptr, ptr } %i.hn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hq), "nonnull"(ptr %i.hr) ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.hq, ptr %i.hs, align 8, !noalias !668
  %i.ht = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.hr, ptr %i.ht, align 16, !noalias !668
  store i64 -2, ptr %i.an, align 16, !noalias !668
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !668
  %i.hu = load ptr, ptr %i.az, align 8, !noalias !668, !nonnull !5, !noundef !5
  store ptr %i.hu, ptr %i.am, align 8, !noalias !668
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.cr unwind label %bb.cp, !noalias !668

bb.cp:                                            ; preds = %bb.co
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.hw = load ptr, ptr %i.am, align 8, !alias.scope !733, !noalias !668, !nonnull !5, !noundef !5
  %i.hx = atomicrmw add ptr %i.hw, i64 -1 release, align 8, !noalias !734
  %i.hy = icmp eq i64 %i.hx, 1
  br i1 %i.hy, label %bb.cq, label %.thread76.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #25
          to label %.thread76.i unwind label %bb.ct, !noalias !668

bb.cr:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.hz = load ptr, ptr %i.am, align 8, !alias.scope !737, !noalias !668, !nonnull !5, !noundef !5
  %i.ia = atomicrmw add ptr %i.hz, i64 -1 release, align 8, !noalias !738
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.cs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.cu, !noalias !668

bb.ct:                                            ; preds = %bb.cq
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !668
  unreachable

.body19.i:                                        ; preds = %bb.dz, %bb.cu
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.dz ], [ %i.ie, %bb.cu ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ false, %bb.dz ], [ %.sroa.07.3.i, %bb.cu ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.dz ], [ %.sroa.04.1.i, %bb.cu ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.dz ], [ true, %bb.cu ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.dz ], [ %.sroa.04.1.i, %bb.cu ]
  %i.id = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.id, label %.thread76.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECskuiImRAV2ip_9elfshaker.exit.i

bb.cu:                                            ; preds = %bb.ds, %bb.cv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i, %bb.cs
  %.sroa.07.3.i = phi i1 [ false, %bb.ds ], [ true, %bb.cs ], [ false, %bb.cv ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.ds ], [ 1, %bb.cs ], [ 1, %bb.cv ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ] ; 2 uses
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !668
  %i.if = load ptr, ptr %i.aq, align 8, !noalias !668, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.if)
          to label %bb.cv unwind label %bb.cu, !noalias !668

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !668
  %i.ig = load ptr, ptr %i.ap, align 8, !noalias !668, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noundef nonnull align 8 %i.ih)
          to label %bb.cw unwind label %bb.cu, !noalias !668

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.ii = load i64, ptr %i.ai, align 8, !range !15, !alias.scope !739, !noalias !668, !noundef !5
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.cx, label %bb.db, !prof !12

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !740
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !739, !noalias !668, !nonnull !5, !align !7, !noundef !5
  %i.im = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.in = load i8, ptr %i.im, align 8, !range !10, !alias.scope !739, !noalias !668, !noundef !5
  store ptr %i.il, ptr %i.af, align 8, !noalias !740
  %i.io = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %i.in, ptr %i.io, align 8, !noalias !740
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
          to label %bb.cz unwind label %bb.cy, !noalias !741

bb.cy:                                            ; preds = %bb.cx
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #23
          to label %.thread76.i unwind label %bb.da, !noalias !741

bb.cz:                                            ; preds = %bb.cx
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !741
  unreachable

bb.db:                                            ; preds = %bb.cw
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !739, !noalias !668, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.iu = load i8, ptr %i.it, align 8, !range !10, !alias.scope !739, !noalias !668, !noundef !5 ; 2 uses
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !668
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB15_6thread11join_handle10JoinHandleuEEEEE5drainNtNtNtB1Q_3ops5range9RangeFullECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %bb.dd unwind label %bb.dc, !noalias !668

bb.dc:                                            ; preds = %bb.dd, %bb.db
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.is, i8 %i.iu) #23
          to label %.thread76.i unwind label %bb.dx, !noalias !668

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !668
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6S_4pack6PackIdINtNtB1h_6result6ResultuNtNtB6S_5error5ErrorENCNvMs0_NtB6S_10repositoryNtB8V_10Repository24find_duplicate_snapshots0QINtNtNtB1h_5slice4iter4IterB7K_EE0IB85_IBL_B84_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB6U_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ak)
          to label %bb.de unwind label %bb.dc, !noalias !668

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !668
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  br i1 %i.iv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.iz = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !668
  %i.ja = and i64 %i.iz, 9223372036854775807
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dg, !prof !11

bb.dg:                                            ; preds = %bb.df
  %i.jc = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc31.i unwind label %bb.dz, !noalias !668

.noexc31.i:                                       ; preds = %bb.dg
  br i1 %i.jc, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.iy monotonic, align 4, !noalias !668
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.dh, %.noexc31.i, %bb.df, %bb.de
  %i.jd = atomicrmw xchg ptr %i.is, i32 0 release, align 4, !noalias !668
  %i.je = icmp eq i32 %i.jd, 2
  br i1 %i.je, label %bb.di, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i, !prof !12

bb.di:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.is)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.dz, !noalias !668

bb.dj:                                            ; preds = %bb.du
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.di, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.jf = load i64, ptr %i.an, align 16, !range !16, !noalias !668, !noundef !5 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, -2
  br i1 %i.jg, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !668, !nonnull !5, !noundef !5
  %i.jj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.jk = load ptr, ptr %i.jj, align 16, !noalias !668, !nonnull !5, !align !7, !noundef !5
  invoke void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull %i.ji, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jk) #26
          to label %bb.dy unwind label %bb.dz, !noalias !668

bb.dl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 16 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !668
  %i.jl = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !668, !noundef !5 ; 2 uses
  %i.jn = icmp ult i64 %i.jm, 576460752303423488
  call void @llvm.assume(i1 %i.jn)
  %i.jo = icmp eq i64 %i.jm, 0
  br i1 %i.jo, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !668
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !742
  %i.jp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 24, i64 noundef 8) #22, !noalias !742 ; 3 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB4_5error5ErrorENCNvMs0_NtB4_10repositoryNtB2Y_10Repository18copy_loose_entries0INtNtNtB1q_5slice4iter4IterBW_EEB6_:bb.a

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.j
  %.pr.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !874
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exitthread-pre-split.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE4peek0B1C_.exit.i.i.i.i.i.i
  %i.by = phi ptr [ %.pr.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exitthread-pre-split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE4peek0B1C_.exit.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !874
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB28_8peekable8PeekableINtNtNtB2c_5slice4iter4IterBV_EEEE9from_iterBZ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.q unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !879

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !874
  %i.bz = load ptr, ptr %i.au, align 8, !noalias !874, !nonnull !5, !noundef !5 ; 3 uses
  %i.ca = load i64, ptr %i.x, align 8, !range !8, !noalias !874, !noundef !5
  %i.cb = icmp ult i64 %i.br, 384307168202282326
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.br
  store ptr %i.bz, ptr %i.r, align 8, !noalias !874
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ca, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.cc, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB43_4algo15run_in_parallelRNtNtB45_7packidx9FileEntryB34_NCNvMs0_NtB43_10repositoryNtB60_10Repository18copy_loose_entries0INtNtNtB6_5slice4iter4IterB5o_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB7G_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B7G_EE9from_iterBQ_E0B8V_EB45_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.r)
          to label %.noexc44.i unwind label %bb.cf, !noalias !872

.noexc44.i:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !874
  %i.cd = load i64, ptr %i.s, align 8, !range !6, !noalias !874, !noundef !5 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !874, !nonnull !5, !noundef !5 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc44.i
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !874, !nonnull !5, !align !7, !noundef !5
  %i.cj = insertelement <2 x ptr> <ptr inttoptr (i64 -1 to ptr), ptr poison>, ptr %i.cg, i64 1
  br label %bb.ch

bb.p:                                             ; preds = %.noexc44.i
  %i.ck = load i64, ptr %i.ch, align 8, !noalias !874, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !874
  %i.cl = icmp ult i64 %i.ck, 384307168202282326
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ck
  store ptr %i.cg, ptr %i.q, align 8, !noalias !874
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cg, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.cd, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.cm, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !874
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB2b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
          to label %.noexc45.i unwind label %bb.cf, !noalias !872

.noexc45.i:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !874
  %i.cn = load <2 x ptr>, ptr %i.y, align 16, !noalias !872
  %.sroa.11.0..sroa_idx57.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.11.0.copyload58.pre.i = load ptr, ptr %.sroa.11.0..sroa_idx57.phi.trans.insert.i, align 16, !noalias !872
  br label %bb.ch

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !874
  store ptr %4, ptr %i.bf, align 8, !noalias !874
  store ptr %5, ptr %i.bg, align 8, !noalias !874
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !881
  store ptr %i.aj, ptr %i.bh, align 8, !noalias !881
  store i64 0, ptr %i.p, align 8, !noalias !881
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !881
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !881
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !883
  %i.co = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtBP_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1A_7default7Default7defaultB3a_()
          to label %bb.r unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.thread.i.i.i.i.i, !noalias !884 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i: ; preds = %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.q
  %lpad.loopexit65.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bm

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.af
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.co, ptr %i.o, align 8, !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !883
  %i.cp = atomicrmw add ptr %i.co, i64 1 monotonic, align 8, !noalias !884
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.co, ptr %i.l, align 8, !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !883
  %i.cr = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !884
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.an, ptr %i.k, align 8, !noalias !883
  %i.ct = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %bb.y unwind label %bb.w, !noalias !884

bb.v:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.cv = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !885
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.x, label %bb.bk

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bk unwind label %bb.bh, !noalias !884

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !883
  store ptr %i.an, ptr %i.bi, align 8, !noalias !883
  store ptr %i.ct, ptr %i.bj, align 8, !noalias !883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !noalias !886
  store ptr %i.co, ptr %i.bk, align 8, !noalias !883
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !887
  %i.cx = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 64, i64 noundef 8) #22, !noalias !887 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.z, label %bb.ad, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !884

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB25_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB23_5error5ErrorENCNvMs0_NtB23_10repositoryNtB4J_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB2V_EE00INtNtCs1xwejQucwHj_5alloc3vec3VecB3l_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !884

bb.ab:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !884
  unreachable

bb.ac:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !884
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !882, !noalias !881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !888
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.ac, !noalias !884

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.d, align 8, !noalias !888, !noundef !5 ; 6 uses
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = load ptr, ptr %i.bl, align 8, !noalias !888 ; 3 uses
  br i1 %i.dd, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !888
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !883
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.df = load ptr, ptr %i.o, align 8, !alias.scope !892, !noalias !883, !nonnull !5, !noundef !5
  %i.dg = atomicrmw add ptr %i.df, i64 -1 release, align 8, !noalias !893
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.af, label %bb.bs

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtBP_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.bs unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !884

bb.ag:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !883
  %i.di = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8, !noalias !884
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.dc, ptr %i.i, align 8, !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !883
  store i64 1, ptr %i.g, align 8, !noalias !883
  store i64 1, ptr %i.bm, align 8, !noalias !883
  store i32 0, ptr %i.bn, align 8, !noalias !883
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !883
  store ptr %i.dc, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !883
  store ptr %i.de, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !883
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !883
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !894
  %i.dk = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !894 ; 7 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ai, label %bb.an, !prof !12

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !884

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.ak, !noalias !884

bb.ak:                                            ; preds = %bb.aj
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !884
  unreachable

bb.al:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.aj
  %i.do = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !895
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %.body.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !884

bb.an:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !883
  store ptr %i.dk, ptr %i.n, align 8, !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !883
  store ptr %i.dc, ptr %i.m, align 8, !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !883
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bo)
          to label %bb.aq unwind label %bb.ap, !noalias !884

.body42.i.i.i.i.i.i.i:                            ; preds = %.body56.i.i.i.i.i.i.i, %bb.as, %bb.ap
  %.pn35.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.el, %.body56.i.i.i.i.i.i.i ], [ %i.dt, %bb.ap ], [ %i.dz, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.dq = load ptr, ptr %i.m, align 8, !alias.scope !900, !noalias !883, !nonnull !5, !noundef !5
  %i.dr = atomicrmw add ptr %i.dq, i64 -1 release, align 8, !noalias !901
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %.body42.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !884

bb.ap:                                            ; preds = %bb.bg, %bb.be, %bb.an
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body42.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.du = load i64, ptr %i.h, align 8, !range !15, !alias.scope !902, !noalias !883, !noundef !5
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.ar, label %bb.av, !prof !12

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !903
  %i.dw = load ptr, ptr %i.bp, align 8, !alias.scope !902, !noalias !883, !nonnull !5, !align !7, !noundef !5
  %i.dx = load i8, ptr %i.bq, align 8, !range !10, !alias.scope !902, !noalias !883, !noundef !5
  store ptr %i.dw, ptr %i.f, align 8, !noalias !903
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.dx, ptr %i.dy, align 8, !noalias !903
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.at unwind label %bb.as, !noalias !904

bb.as:                                            ; preds = %bb.ar
  %i.dz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.au, !noalias !904

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !904
  unreachable

bb.av:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr %i.bp, align 8, !alias.scope !902, !noalias !883, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  %i.ec = load i8, ptr %i.bq, align 8, !range !10, !alias.scope !902, !noalias !883, !noundef !5 ; 2 uses
  %i.ed = trunc nuw i8 %i.ec to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !883
  %i.ee = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !884
  %i.ef = icmp slt i64 %i.ee, 0
  br i1 %i.ef, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !883
  store ptr %i.dk, ptr %i.c, align 8, !noalias !906
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !905, !noalias !884, !noundef !5 ; 3 uses
  %i.ej = load i64, ptr %i.eg, align 8, !range !8, !alias.scope !905, !noalias !884, !noundef !5
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %bb.bc unwind label %bb.ay, !noalias !884

bb.ay:                                            ; preds = %bb.ax
  %i.el = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.em = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !noalias !907
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.az, label %.body56.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body56.i.i.i.i.i.i.i unwind label %bb.ba, !noalias !884

bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !884
  unreachable

bb.bb:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

.body56.i.i.i.i.i.i.i:                            ; preds = %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.eb, i8 %i.ec) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !884

bb.bc:                                            ; preds = %bb.ax, %bb.aw
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !905, !noalias !884, !nonnull !5, !noundef !5
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ei
  store ptr %i.dk, ptr %i.er, align 8, !noalias !884
  %i.es = add i64 %i.ei, 1
  store i64 %i.es, ptr %i.eh, align 8, !alias.scope !905, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !883
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
end_hunk_5
begin_hunk_6_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB4_5error5ErrorENCNvMs0_NtB4_10repositoryNtB2Y_10Repository18copy_loose_entries0INtNtNtB1q_5slice4iter4IterBW_EEB6_:bb.a
bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtBP_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !884

bb.bk:                                            ; preds = %bb.x, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.fh = load ptr, ptr %i.l, align 8, !alias.scope !919, !noalias !883, !nonnull !5, !noundef !5
  %i.fi = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !920
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtBP_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !884

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1d_.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i
  %.pn38.i.i169.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i170.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1d_.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i167.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i168.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1d_.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i ]
  %i.fk = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !6, !noalias !874
  %i.fl = icmp ne i64 %i.fk, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i167.i.i.i.i.i, i1 %i.fl, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.bp, label %.thread.i.i.i.i.i

bb.bm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i
  %.pn38.i.i170.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit65.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i168.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtB1i_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEEB3n_.exit62.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1d_.exit.i.i.i.i.i.i unwind label %bb.bn, !noalias !921

bb.bn:                                            ; preds = %bb.bm
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body42.i.i.i.i.i unwind label %bb.bo, !noalias !921

bb.bo:                                            ; preds = %bb.bn
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !921
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1d_.exit.i.i.i.i.i.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i unwind label %bb.bh, !noalias !879

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bq, !noalias !908

bb.bq:                                            ; preds = %bb.bp
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body42.i.i.i.i.i unwind label %bb.br, !noalias !908

bb.br:                                            ; preds = %bb.bq
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !908
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.thread.i.i.i.i.i unwind label %bb.bh, !noalias !879

bb.bs:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !922
  store ptr %i.de, ptr %i.b, align 8, !noalias !922
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.bu unwind label %bb.bt, !noalias !923

bb.bt:                                            ; preds = %bb.bs
  %i.fq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %.thread.i.i.i.i.i unwind label %bb.bv, !noalias !923

bb.bu:                                            ; preds = %bb.bs
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !923
  unreachable

bb.bw:                                            ; preds = %bb.bg, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.fs = load ptr, ptr %i.n, align 8, !noalias !883, !nonnull !5, !noundef !5
  %i.ft = load ptr, ptr %i.o, align 8, !noalias !883, !nonnull !5, !noundef !5
  %i.fu = load ptr, ptr %i.m, align 8, !noalias !883, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !881
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  store ptr %i.fs, ptr %i.u, align 8, !alias.scope !926, !noalias !874
  store ptr %i.ft, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !926, !noalias !874
  store ptr %i.fu, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !926, !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !874
  %i.fv = load i64, ptr %i.av, align 8, !alias.scope !927, !noalias !874, !noundef !5 ; 3 uses
  %i.fw = load i64, ptr %i.x, align 8, !range !8, !alias.scope !927, !noalias !874, !noundef !5
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEE8grow_oneB3i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.ca unwind label %bb.by, !noalias !928

bb.by:                                            ; preds = %bb.bx
  %i.fy = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23
          to label %.thread.i.i.i.i.i unwind label %bb.bz, !noalias !879

bb.bz:                                            ; preds = %bb.by
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !879
  unreachable

bb.ca:                                            ; preds = %bb.bx, %bb.bw
  %i.ga = load ptr, ptr %i.au, align 8, !alias.scope !927, !noalias !874, !nonnull !5, !noundef !5
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !879
  %i.gc = add i64 %i.fv, 1                        ; 2 uses
  store i64 %i.gc, ptr %i.av, align 8, !alias.scope !927, !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !874
  %.pre.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !15, !alias.scope !876, !noalias !874
  br label %bb.j

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.by, %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i
  %.pn53.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i169.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ %i.fq, %bb.bt ], [ %i.fy, %bb.by ], [ %.pn38.i.i169.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp210, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBM_7packidx9FileEntryINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBK_5error5ErrorENCNvMs0_NtBK_10repositoryNtB3o_10Repository18copy_loose_entries0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cc unwind label %bb.cb, !noalias !879

bb.cb:                                            ; preds = %.thread.i.i.i.i.i
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropB3i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i.i unwind label %bb.cd, !noalias !879

bb.cc:                                            ; preds = %.thread.i.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropB3i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body46.i unwind label %bb.ce, !noalias !929

bb.cd:                                            ; preds = %bb.cb
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !879
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ce, %bb.cb
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !879
  unreachable

bb.cf:                                            ; preds = %bb.p, %bb.n
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46.i

.body46.i:                                        ; preds = %bb.cf, %bb.cc
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.gg, %bb.cf ], [ %.pn53.i.i.i.i.i, %bb.cc ]
  %i.gh = extractvalue { ptr, i32 } %eh.lpad-body47.i, 0
  %i.gi = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.gh)
          to label %bb.ci unwind label %bb.cg, !noalias !872 ; 2 uses

bb.cg:                                            ; preds = %.body46.i
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !872
  unreachable

bb.ch:                                            ; preds = %.noexc45.i, %bb.o
  %.sroa.11.0.copyload58.i = phi ptr [ %i.ci, %bb.o ], [ %.sroa.11.0.copyload58.pre.i, %.noexc45.i ]
  %i.gk = phi <2 x ptr> [ %i.cj, %bb.o ], [ %i.cn, %.noexc45.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !872
  store <2 x ptr> %i.gk, ptr %i.ah, align 16, !noalias !872
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %.sroa.11.0.copyload58.i, ptr %.sroa.563.0..sroa_idx.i, align 16, !noalias !872
  br label %bb.cj

bb.ci:                                            ; preds = %.body46.i
  %i.gl = extractvalue { ptr, ptr } %i.gi, 0      ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %i.gi, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl), "nonnull"(ptr %i.gm) ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.gl, ptr %i.gn, align 8, !noalias !872
  %i.go = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.gm, ptr %i.go, align 16, !noalias !872
  store i64 -2, ptr %i.ah, align 16, !noalias !872
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !872
  %i.gp = load ptr, ptr %i.at, align 8, !noalias !872, !nonnull !5, !noundef !5
  store ptr %i.gp, ptr %i.ag, align 8, !noalias !872
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.cm unwind label %bb.ck, !noalias !872

bb.ck:                                            ; preds = %bb.cj
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.gr = load ptr, ptr %i.ag, align 8, !alias.scope !932, !noalias !872, !nonnull !5, !noundef !5
  %i.gs = atomicrmw add ptr %i.gr, i64 -1 release, align 8, !noalias !933
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.cl, label %.thread76.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
          to label %.thread76.i unwind label %bb.co, !noalias !872

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.gu = load ptr, ptr %i.ag, align 8, !alias.scope !936, !noalias !872, !nonnull !5, !noundef !5
  %i.gv = atomicrmw add ptr %i.gu, i64 -1 release, align 8, !noalias !937
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.cp, !noalias !872

bb.co:                                            ; preds = %bb.cl
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !872
  unreachable

.body19.i:                                        ; preds = %bb.du, %bb.cp
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.du ], [ %i.gz, %bb.cp ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ false, %bb.du ], [ %.sroa.07.3.i, %bb.cp ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.du ], [ %.sroa.04.1.i, %bb.cp ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.du ], [ true, %bb.cp ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.du ], [ %.sroa.04.1.i, %bb.cp ]
  %i.gy = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.gy, label %.thread76.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECskuiImRAV2ip_9elfshaker.exit.i

bb.cp:                                            ; preds = %bb.dn, %bb.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i, %bb.cn
  %.sroa.07.3.i = phi i1 [ false, %bb.dn ], [ true, %bb.cn ], [ false, %bb.cq ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.dn ], [ 1, %bb.cn ], [ 1, %bb.cq ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ] ; 2 uses
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !872
  %i.ha = load ptr, ptr %i.ak, align 8, !noalias !872, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.ha)
          to label %bb.cq unwind label %bb.cp, !noalias !872

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !872
  %i.hb = load ptr, ptr %i.aj, align 8, !noalias !872, !nonnull !5, !noundef !5
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %i.hc)
          to label %bb.cr unwind label %bb.cp, !noalias !872

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.hd = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !938, !noalias !872, !noundef !5
  %i.he = trunc nuw i64 %i.hd to i1
  br i1 %i.he, label %bb.cs, label %bb.cw, !prof !12

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !939
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !938, !noalias !872, !nonnull !5, !align !7, !noundef !5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.hi = load i8, ptr %i.hh, align 8, !range !10, !alias.scope !938, !noalias !872, !noundef !5
  store ptr %i.hg, ptr %i.z, align 8, !noalias !939
  %i.hj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 %i.hi, ptr %i.hj, align 8, !noalias !939
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
          to label %bb.cu unwind label %bb.ct, !noalias !940

bb.ct:                                            ; preds = %bb.cs
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #23
          to label %.thread76.i unwind label %bb.cv, !noalias !940

bb.cu:                                            ; preds = %bb.cs
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !940
  unreachable

bb.cw:                                            ; preds = %bb.cr
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !938, !noalias !872, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.hp = load i8, ptr %i.ho, align 8, !range !10, !alias.scope !938, !noalias !872, !noundef !5 ; 2 uses
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !872
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB15_6thread11join_handle10JoinHandleuEEEEE5drainNtNtNtB1Q_3ops5range9RangeFullECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %bb.cy unwind label %bb.cx, !noalias !872

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.hn, i8 %i.hp) #23
          to label %.thread76.i unwind label %bb.ds, !noalias !872

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !872
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6U_7packidx9FileEntryINtNtB1h_6result6ResultNtNtB46_4path7PathBufNtNtB6S_5error5ErrorENCNvMs0_NtB6S_10repositoryNtB9l_10Repository18copy_loose_entries0INtNtNtB1h_5slice4iter4IterB7K_EE0IB8b_IBL_B8a_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB6U_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ae)
          to label %bb.cz unwind label %bb.cx, !noalias !872

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !872
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  br i1 %i.hq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hu = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !872
  %i.hv = and i64 %i.hu, 9223372036854775807
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.db, !prof !11

bb.db:                                            ; preds = %bb.da
  %i.hx = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc31.i unwind label %bb.du, !noalias !872

.noexc31.i:                                       ; preds = %bb.db
  br i1 %i.hx, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.ht monotonic, align 4, !noalias !872
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.dc, %.noexc31.i, %bb.da, %bb.cz
  %i.hy = atomicrmw xchg ptr %i.hn, i32 0 release, align 4, !noalias !872
  %i.hz = icmp eq i32 %i.hy, 2
  br i1 %i.hz, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i, !prof !12

bb.dd:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.du, !noalias !872

bb.de:                                            ; preds = %bb.dp
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.dd, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.ia = load i64, ptr %i.ah, align 16, !range !16, !noalias !872, !noundef !5 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, -2
  br i1 %i.ib, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !872, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.if = load ptr, ptr %i.ie, align 16, !noalias !872, !nonnull !5, !align !7, !noundef !5
  invoke void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull %i.id, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.if) #26
          to label %bb.dt unwind label %bb.du, !noalias !872

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !872
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !872, !noundef !5 ; 2 uses
  %i.ii = icmp ult i64 %i.ih, 576460752303423488
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp eq i64 %i.ih, 0
  br i1 %i.ij, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !872
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !941
  %i.ik = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 24, i64 noundef 8) #22, !noalias !941 ; 3 uses
end_hunk_6
begin_hunk_7_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorENCINvNtB6_5batch17compute_checksumsBW_E0INtNtNtB1A_5slice4iter4IterBW_EEB6_:bb.a
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.be, align 8, !alias.scope !1075, !noalias !1073
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.j
  %.pr.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !1073
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exitthread-pre-split.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i
  %i.bw = phi ptr [ %.pr.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exitthread-pre-split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1073
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB1X_8peekable8PeekableINtNtNtB21_5slice4iter4IterBV_EEEE9from_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.q unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1078

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path7PathBufEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1073
  %i.bx = load ptr, ptr %i.au, align 8, !noalias !1073, !nonnull !5, !noundef !5 ; 3 uses
  %i.by = load i64, ptr %i.x, align 8, !range !8, !noalias !1073, !noundef !5
  %i.bz = icmp ult i64 %i.bp, 384307168202282326
  call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.bp
  store ptr %i.bx, ptr %i.r, align 8, !noalias !1073
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bx, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.by, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ca, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultAhj14_NtNtNtB6_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufB34_NCINvNtB49_5batch17compute_checksumsB4Z_E0INtNtNtB6_5slice4iter4IterB4Z_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB73_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B73_EE9from_iterBQ_E0B8i_EB49_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.r)
          to label %.noexc44.i unwind label %bb.cf, !noalias !1071

.noexc44.i:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1073
  %i.cb = load i64, ptr %i.s, align 8, !range !6, !noalias !1073, !noundef !5 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1073, !nonnull !5, !noundef !5 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc44.i
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1073, !nonnull !5, !align !7, !noundef !5
  %i.ch = insertelement <2 x ptr> <ptr inttoptr (i64 -1 to ptr), ptr poison>, ptr %i.ce, i64 1
  br label %bb.ch

bb.p:                                             ; preds = %.noexc44.i
  %i.ci = load i64, ptr %i.cf, align 8, !noalias !1073, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1073
  %i.cj = icmp ult i64 %i.ci, 384307168202282326
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ce, ptr %i.q, align 8, !noalias !1073
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ce, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.cb, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ck, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1073
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBZ_2io5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
          to label %.noexc45.i unwind label %bb.cf, !noalias !1071

.noexc45.i:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1073
  %i.cl = load <2 x ptr>, ptr %i.y, align 16, !noalias !1071
  %.sroa.11.0..sroa_idx57.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.11.0.copyload58.pre.i = load ptr, ptr %.sroa.11.0..sroa_idx57.phi.trans.insert.i, align 16, !noalias !1071
  br label %bb.ch

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1073
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1080
  store ptr %i.aj, ptr %i.bf, align 8, !noalias !1080
  store i64 0, ptr %i.p, align 8, !noalias !1080
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1080
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1080
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1082
  %i.cm = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorEEEEENtNtB1A_7default7Default7defaultCskuiImRAV2ip_9elfshaker()
          to label %bb.r unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i, !noalias !1083 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i: ; preds = %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.q
  %lpad.loopexit65.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bm

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.af
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.cm, ptr %i.o, align 8, !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1082
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8, !noalias !1083
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.cm, ptr %i.l, align 8, !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1082
  %i.cp = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !1083
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.an, ptr %i.k, align 8, !noalias !1082
  %i.cr = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %bb.y unwind label %bb.w, !noalias !1083

bb.v:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.ct = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !1084
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.x, label %bb.bk

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bk unwind label %bb.bh, !noalias !1083

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1082
  store ptr %i.an, ptr %i.bg, align 8, !noalias !1082
  store ptr %i.cr, ptr %i.bh, align 8, !noalias !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1073
  store ptr %i.cm, ptr %i.bi, align 8, !noalias !1082
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1085
  %i.cv = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !1085 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.z, label %bb.ad, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !1083

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtB25_5batch17compute_checksumsB2V_E0INtNtNtB4_5slice4iter4IterB2V_EE00INtNtCs1xwejQucwHj_5alloc3vec3VecB3u_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !1083

bb.ab:                                            ; preds = %bb.aa
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1083
  unreachable

bb.ac:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !1083
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1081, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1086
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.ac, !noalias !1083

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.ad
  %i.da = load ptr, ptr %i.d, align 8, !noalias !1086, !noundef !5 ; 6 uses
  %i.db = icmp eq ptr %i.da, null
  %i.dc = load ptr, ptr %i.bj, align 8, !noalias !1086 ; 3 uses
  br i1 %i.db, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1086
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1082
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.dd = load ptr, ptr %i.o, align 8, !alias.scope !1090, !noalias !1082, !nonnull !5, !noundef !5
  %i.de = atomicrmw add ptr %i.dd, i64 -1 release, align 8, !noalias !1091
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.af, label %bb.bs

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.bs unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1083

bb.ag:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1082
  %i.dg = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !noalias !1083
  %i.dh = icmp slt i64 %i.dg, 0
  br i1 %i.dh, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.da, ptr %i.i, align 8, !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1082
  store i64 1, ptr %i.g, align 8, !noalias !1082
  store i64 1, ptr %i.bk, align 8, !noalias !1082
  store i32 0, ptr %i.bl, align 8, !noalias !1082
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1082
  store ptr %i.da, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1082
  store ptr %i.dc, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1082
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1082
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1092
  %i.di = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !1092 ; 7 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ai, label %bb.an, !prof !12

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !1083

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.dk = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.ak, !noalias !1083

bb.ak:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1083
  unreachable

bb.al:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.aj
  %i.dm = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !1093
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %.body.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !1083

bb.an:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1082
  store ptr %i.di, ptr %i.n, align 8, !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1082
  store ptr %i.da, ptr %i.m, align 8, !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1082
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bm)
          to label %bb.aq unwind label %bb.ap, !noalias !1083

.body42.i.i.i.i.i.i.i:                            ; preds = %.body56.i.i.i.i.i.i.i, %bb.as, %bb.ap
  %.pn35.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ej, %.body56.i.i.i.i.i.i.i ], [ %i.dr, %bb.ap ], [ %i.dx, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.do = load ptr, ptr %i.m, align 8, !alias.scope !1098, !noalias !1082, !nonnull !5, !noundef !5
  %i.dp = atomicrmw add ptr %i.do, i64 -1 release, align 8, !noalias !1099
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %.body42.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !1083

bb.ap:                                            ; preds = %bb.bg, %bb.be, %bb.an
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body42.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.ds = load i64, ptr %i.h, align 8, !range !15, !alias.scope !1100, !noalias !1082, !noundef !5
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.ar, label %bb.av, !prof !12

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1101
  %i.du = load ptr, ptr %i.bn, align 8, !alias.scope !1100, !noalias !1082, !nonnull !5, !align !7, !noundef !5
  %i.dv = load i8, ptr %i.bo, align 8, !range !10, !alias.scope !1100, !noalias !1082, !noundef !5
  store ptr %i.du, ptr %i.f, align 8, !noalias !1101
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.dv, ptr %i.dw, align 8, !noalias !1101
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.at unwind label %bb.as, !noalias !1102

bb.as:                                            ; preds = %bb.ar
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.au, !noalias !1102

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1102
  unreachable

bb.av:                                            ; preds = %bb.aq
  %i.dz = load ptr, ptr %i.bn, align 8, !alias.scope !1100, !noalias !1082, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  %i.ea = load i8, ptr %i.bo, align 8, !range !10, !alias.scope !1100, !noalias !1082, !noundef !5 ; 2 uses
  %i.eb = trunc nuw i8 %i.ea to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1082
  %i.ec = atomicrmw add ptr %i.di, i64 1 monotonic, align 8, !noalias !1083
  %i.ed = icmp slt i64 %i.ec, 0
  br i1 %i.ed, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1082
  store ptr %i.di, ptr %i.c, align 8, !noalias !1104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !1103, !noalias !1083, !noundef !5 ; 3 uses
  %i.eh = load i64, ptr %i.ee, align 8, !range !8, !alias.scope !1103, !noalias !1083, !noundef !5
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %bb.bc unwind label %bb.ay, !noalias !1083

bb.ay:                                            ; preds = %bb.ax
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ek = atomicrmw add ptr %i.di, i64 -1 release, align 8, !noalias !1105
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.az, label %.body56.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body56.i.i.i.i.i.i.i unwind label %bb.ba, !noalias !1083

bb.ba:                                            ; preds = %bb.az
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1083
  unreachable

bb.bb:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

.body56.i.i.i.i.i.i.i:                            ; preds = %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.dz, i8 %i.ea) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !1083

bb.bc:                                            ; preds = %bb.ax, %bb.aw
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !1103, !noalias !1083, !nonnull !5, !noundef !5
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.eg
  store ptr %i.di, ptr %i.ep, align 8, !noalias !1083
  %i.eq = add i64 %i.eg, 1
  store i64 %i.eq, ptr %i.ef, align 8, !alias.scope !1103, !noalias !1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1082
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
end_hunk_7
begin_hunk_8_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorENCINvNtB6_5batch17compute_checksumsBW_E0INtNtNtB1A_5slice4iter4IterBW_EEB6_:bb.a
bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !1083

bb.bk:                                            ; preds = %bb.x, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.ff = load ptr, ptr %i.l, align 8, !alias.scope !1117, !noalias !1082, !nonnull !5, !noundef !5
  %i.fg = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !1118
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultAhj14_NtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !1083

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i
  %.pn38.i.i169.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i170.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i167.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i168.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ]
  %i.fi = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !6, !noalias !1073
  %i.fj = icmp ne i64 %i.fi, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i167.i.i.i.i.i, i1 %i.fj, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.bp, label %.thread.i.i.i.i.i

bb.bm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i
  %.pn38.i.i170.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit65.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i168.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i unwind label %bb.bn, !noalias !1119

bb.bn:                                            ; preds = %bb.bm
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body42.i.i.i.i.i unwind label %bb.bo, !noalias !1119

bb.bo:                                            ; preds = %bb.bn
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1119
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i unwind label %bb.bh, !noalias !1078

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bq, !noalias !1106

bb.bq:                                            ; preds = %bb.bp
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body42.i.i.i.i.i unwind label %bb.br, !noalias !1106

bb.br:                                            ; preds = %bb.bq
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1106
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.thread.i.i.i.i.i unwind label %bb.bh, !noalias !1078

bb.bs:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1120
  store ptr %i.dc, ptr %i.b, align 8, !noalias !1120
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.bu unwind label %bb.bt, !noalias !1121

bb.bt:                                            ; preds = %bb.bs
  %i.fo = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %.thread.i.i.i.i.i unwind label %bb.bv, !noalias !1121

bb.bu:                                            ; preds = %bb.bs
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1121
  unreachable

bb.bw:                                            ; preds = %bb.bg, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.fq = load ptr, ptr %i.n, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %i.fr = load ptr, ptr %i.o, align 8, !noalias !1082, !nonnull !5, !noundef !5
  %i.fs = load ptr, ptr %i.m, align 8, !noalias !1082, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1080
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  store ptr %i.fq, ptr %i.u, align 8, !alias.scope !1124, !noalias !1073
  store ptr %i.fr, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !1124, !noalias !1073
  store ptr %i.fs, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1124, !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1073
  %i.ft = load i64, ptr %i.av, align 8, !alias.scope !1125, !noalias !1073, !noundef !5 ; 3 uses
  %i.fu = load i64, ptr %i.x, align 8, !range !8, !alias.scope !1125, !noalias !1073, !noundef !5
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB26_2io5error5ErrorEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.ca unwind label %bb.by, !noalias !1126

bb.by:                                            ; preds = %bb.bx
  %i.fw = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23
          to label %.thread.i.i.i.i.i unwind label %bb.bz, !noalias !1078

bb.bz:                                            ; preds = %bb.by
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1078
  unreachable

bb.ca:                                            ; preds = %bb.bx, %bb.bw
  %i.fy = load ptr, ptr %i.au, align 8, !alias.scope !1125, !noalias !1073, !nonnull !5, !noundef !5
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1078
  %i.ga = add i64 %i.ft, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.av, align 8, !alias.scope !1125, !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1073
  %.pre.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !15, !alias.scope !1075, !noalias !1073
  br label %bb.j

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.by, %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i
  %.pn53.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i169.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ %i.fo, %bb.bt ], [ %i.fw, %bb.by ], [ %.pn38.i.i169.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp209, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorENCINvNtBM_5batch17compute_checksumsB1C_E0INtNtNtB4_5slice4iter4IterB1C_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1N_2io5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cc unwind label %bb.cb, !noalias !1078

bb.cb:                                            ; preds = %.thread.i.i.i.i.i
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i.i unwind label %bb.cd, !noalias !1078

bb.cc:                                            ; preds = %.thread.i.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body46.i unwind label %bb.ce, !noalias !1127

bb.cd:                                            ; preds = %bb.cb
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1078
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ce, %bb.cb
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1078
  unreachable

bb.cf:                                            ; preds = %bb.p, %bb.n
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46.i

.body46.i:                                        ; preds = %bb.cf, %bb.cc
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.ge, %bb.cf ], [ %.pn53.i.i.i.i.i, %bb.cc ]
  %i.gf = extractvalue { ptr, i32 } %eh.lpad-body47.i, 0
  %i.gg = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.gf)
          to label %bb.ci unwind label %bb.cg, !noalias !1071 ; 2 uses

bb.cg:                                            ; preds = %.body46.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !1071
  unreachable

bb.ch:                                            ; preds = %.noexc45.i, %bb.o
  %.sroa.11.0.copyload58.i = phi ptr [ %i.cg, %bb.o ], [ %.sroa.11.0.copyload58.pre.i, %.noexc45.i ]
  %i.gi = phi <2 x ptr> [ %i.ch, %bb.o ], [ %i.cl, %.noexc45.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1071
  store <2 x ptr> %i.gi, ptr %i.ah, align 16, !noalias !1071
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %.sroa.11.0.copyload58.i, ptr %.sroa.564.0..sroa_idx.i, align 16, !noalias !1071
  br label %bb.cj

bb.ci:                                            ; preds = %.body46.i
  %i.gj = extractvalue { ptr, ptr } %i.gg, 0      ; 2 uses
  %i.gk = extractvalue { ptr, ptr } %i.gg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj), "nonnull"(ptr %i.gk) ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.gj, ptr %i.gl, align 8, !noalias !1071
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.gk, ptr %i.gm, align 16, !noalias !1071
  store i64 -2, ptr %i.ah, align 16, !noalias !1071
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1071
  %i.gn = load ptr, ptr %i.at, align 8, !noalias !1071, !nonnull !5, !noundef !5
  store ptr %i.gn, ptr %i.ag, align 8, !noalias !1071
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.cm unwind label %bb.ck, !noalias !1071

bb.ck:                                            ; preds = %bb.cj
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.gp = load ptr, ptr %i.ag, align 8, !alias.scope !1130, !noalias !1071, !nonnull !5, !noundef !5
  %i.gq = atomicrmw add ptr %i.gp, i64 -1 release, align 8, !noalias !1131
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.cl, label %.thread77.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
          to label %.thread77.i unwind label %bb.co, !noalias !1071

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.gs = load ptr, ptr %i.ag, align 8, !alias.scope !1134, !noalias !1071, !nonnull !5, !noundef !5
  %i.gt = atomicrmw add ptr %i.gs, i64 -1 release, align 8, !noalias !1135
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.cp, !noalias !1071

bb.co:                                            ; preds = %bb.cl
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1071
  unreachable

.body19.i:                                        ; preds = %bb.du, %bb.cp
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.du ], [ %i.gx, %bb.cp ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ false, %bb.du ], [ %.sroa.07.3.i, %bb.cp ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.du ], [ %.sroa.04.1.i, %bb.cp ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.du ], [ true, %bb.cp ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.du ], [ %.sroa.04.1.i, %bb.cp ]
  %i.gw = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.gw, label %.thread77.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECskuiImRAV2ip_9elfshaker.exit.i

bb.cp:                                            ; preds = %bb.dn, %bb.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i, %bb.cn
  %.sroa.07.3.i = phi i1 [ false, %bb.dn ], [ true, %bb.cn ], [ false, %bb.cq ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.dn ], [ 1, %bb.cn ], [ 1, %bb.cq ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ] ; 2 uses
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1071
  %i.gy = load ptr, ptr %i.ak, align 8, !noalias !1071, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.gy)
          to label %bb.cq unwind label %bb.cp, !noalias !1071

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1071
  %i.gz = load ptr, ptr %i.aj, align 8, !noalias !1071, !nonnull !5, !noundef !5
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %i.ha)
          to label %bb.cr unwind label %bb.cp, !noalias !1071

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.hb = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !1136, !noalias !1071, !noundef !5
  %i.hc = trunc nuw i64 %i.hb to i1
  br i1 %i.hc, label %bb.cs, label %bb.cw, !prof !12

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1137
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !1136, !noalias !1071, !nonnull !5, !align !7, !noundef !5
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.hg = load i8, ptr %i.hf, align 8, !range !10, !alias.scope !1136, !noalias !1071, !noundef !5
  store ptr %i.he, ptr %i.z, align 8, !noalias !1137
  %i.hh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 %i.hg, ptr %i.hh, align 8, !noalias !1137
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
          to label %bb.cu unwind label %bb.ct, !noalias !1138

bb.ct:                                            ; preds = %bb.cs
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #23
          to label %.thread77.i unwind label %bb.cv, !noalias !1138

bb.cu:                                            ; preds = %bb.cs
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1138
  unreachable

bb.cw:                                            ; preds = %bb.cr
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1136, !noalias !1071, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.hn = load i8, ptr %i.hm, align 8, !range !10, !alias.scope !1136, !noalias !1071, !noundef !5 ; 2 uses
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1071
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB15_6thread11join_handle10JoinHandleuEEEEE5drainNtNtNtB1Q_3ops5range9RangeFullECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %bb.cy unwind label %bb.cx, !noalias !1071

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.hl, i8 %i.hn) #23
          to label %.thread77.i unwind label %bb.ds, !noalias !1071

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1071
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB46_4path7PathBufINtNtB1h_6result6ResultAhj14_NtNtNtB1h_2io5error5ErrorENCINvNtB6U_5batch17compute_checksumsB7K_E0INtNtNtB1h_5slice4iter4IterB7K_EE0IB86_IBL_B85_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB6U_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ae)
          to label %bb.cz unwind label %bb.cx, !noalias !1071

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1071
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  br i1 %i.ho, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hs = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1071
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.db, !prof !11

bb.db:                                            ; preds = %bb.da
  %i.hv = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc31.i unwind label %bb.du, !noalias !1071

.noexc31.i:                                       ; preds = %bb.db
  br i1 %i.hv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.hr monotonic, align 4, !noalias !1071
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.dc, %.noexc31.i, %bb.da, %bb.cz
  %i.hw = atomicrmw xchg ptr %i.hl, i32 0 release, align 4, !noalias !1071
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i, !prof !12

bb.dd:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.du, !noalias !1071

bb.de:                                            ; preds = %bb.dp
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.dd, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.hy = load i64, ptr %i.ah, align 16, !range !16, !noalias !1071, !noundef !5 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -2
  br i1 %i.hz, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !1071, !nonnull !5, !noundef !5
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.id = load ptr, ptr %i.ic, align 16, !noalias !1071, !nonnull !5, !align !7, !noundef !5
  invoke void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull %i.ib, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.id) #26
          to label %bb.dt unwind label %bb.du, !noalias !1071

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1071
  %i.ie = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !noalias !1071, !noundef !5 ; 2 uses
  %i.ig = icmp ult i64 %i.if, 576460752303423488
  call void @llvm.assume(i1 %i.ig)
  %i.ih = icmp eq i64 %i.if, 0
  br i1 %i.ih, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !1071
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1139
  %i.ii = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 24, i64 noundef 8) #22, !noalias !1139 ; 3 uses
end_hunk_8
begin_hunk_9_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB13_2io5error5ErrorENCNvMs0_NtB4_10repositoryNtB2K_10Repository11create_pack0INtNtB1F_9into_iter8IntoIterBV_EEB6_:bb.a
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1275, !noalias !1272
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i, %bb.r
  %i.ch = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %bb.r ]
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1272
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRSmEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB1q_8peekable8PeekableINtNtB4_9into_iter8IntoIterBU_EEEE9from_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.x, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.aa unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1274

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1272
  %i.ci = load ptr, ptr %i.bd, align 8, !noalias !1272, !nonnull !5, !noundef !5 ; 3 uses
  %i.cj = load i64, ptr %i.y, align 8, !range !8, !noalias !1272, !noundef !5
  %i.ck = icmp ult i64 %i.bx, 384307168202282326
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.bx
  store ptr %i.ci, ptr %i.s, align 8, !noalias !1272
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.cl, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultTyIB2U_hEENtNtNtB6_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB34_NCNvMs0_NtB4b_10repositoryNtB5h_10Repository11create_pack0IB17_B52_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB6v_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B6v_EE9from_iterBQ_E0B7K_EB4d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.s)
          to label %bb.w unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1274

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1272
  %i.cm = load i64, ptr %i.t, align 8, !range !6, !noalias !1272, !noundef !5 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1272, !nonnull !5, !noundef !5 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !1272, !nonnull !5, !align !7, !noundef !5
  %i.cs = insertelement <2 x ptr> poison, ptr %i.cp, i64 0
  %i.ct = insertelement <2 x ptr> %i.cs, ptr %i.cr, i64 1
  br label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.cu = load i64, ptr %i.cq, align 8, !noalias !1272, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1272
  %i.cv = icmp ult i64 %i.cu, 384307168202282326
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cu
  store ptr %i.cp, ptr %i.q, align 8, !noalias !1272
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cp, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.cm, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.cw, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBL_hEENtNtNtBZ_2io5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
          to label %bb.z unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1274

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1272
  %.sroa.01.0.copyload2.i.i = load i64, ptr %i.r, align 8, !noalias !1282
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cx = load <2 x ptr>, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1272
  br label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !1274
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1284
  store ptr %i.aj, ptr %i.bn, align 8, !noalias !1284
  store i64 0, ptr %i.p, align 8, !noalias !1284
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i41.i.i.i.i.i, align 8, !noalias !1284
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1284
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1286
  %i.cy = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultTyIB28_hEENtNtNtB1A_2io5error5ErrorEEEEENtNtB1A_7default7Default7defaultCskuiImRAV2ip_9elfshaker()
          to label %bb.ab unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i, !noalias !1287 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i: ; preds = %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.aa
  %lpad.loopexit60.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.ap
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cy, ptr %i.o, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1286
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8, !noalias !1287
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cy, ptr %i.l, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1286
  %i.db = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !1287
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.at, ptr %i.k, align 8, !noalias !1286
  %i.dd = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %bb.ai unwind label %bb.ag, !noalias !1287

bb.af:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.df = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !1288
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ah, label %bb.bu

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bu unwind label %bb.br, !noalias !1287

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1286
  store ptr %i.at, ptr %i.bo, align 8, !noalias !1286
  store ptr %i.dd, ptr %i.bp, align 8, !noalias !1286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !1289
  store ptr %i.cy, ptr %i.bq, align 8, !noalias !1286
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1290
  %i.dh = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 96, i64 noundef 8) #22, !noalias !1290 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.aj, label %bb.an, !prof !12

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.ak, !noalias !1287

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtB23_10repositoryNtB4s_10Repository11create_pack0INtNtB3o_9into_iter8IntoIterB2U_EE00IB3m_B2X_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.al, !noalias !1287

bb.al:                                            ; preds = %bb.ak
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1287
  unreachable

bb.am:                                            ; preds = %bb.an
  %i.dl = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dh, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !noalias !1287
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1285, !noalias !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i41.i.i.i.i.i, i64 24, i1 false), !noalias !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1291
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.am, !noalias !1287

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.an
  %i.dm = load ptr, ptr %i.d, align 8, !noalias !1291, !noundef !5 ; 6 uses
  %i.dn = icmp eq ptr %i.dm, null
  %i.do = load ptr, ptr %i.br, align 8, !noalias !1291 ; 3 uses
  br i1 %i.dn, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1286
  call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.dp = load ptr, ptr %i.o, align 8, !alias.scope !1295, !noalias !1286, !nonnull !5, !noundef !5
  %i.dq = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !1296
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.ap, label %bb.cc

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultTyIB28_hEENtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.cc unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1287

bb.aq:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1286
  %i.ds = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !1287
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.dm, ptr %i.i, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1286
  store i64 1, ptr %i.g, align 8, !noalias !1286
  store i64 1, ptr %i.bs, align 8, !noalias !1286
  store i32 0, ptr %i.bt, align 8, !noalias !1286
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1286
  store ptr %i.dm, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1286
  store ptr %i.do, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1286
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1286
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1297
  %i.du = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !1297 ; 7 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.as, label %bb.ax, !prof !12

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.at, !noalias !1287

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.au, !noalias !1287

bb.au:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1287
  unreachable

bb.av:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.at
  %i.dy = atomicrmw add ptr %i.dm, i64 -1 release, align 8, !noalias !1298
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %.body.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1287

bb.ax:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !1287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1286
  store ptr %i.du, ptr %i.n, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1286
  store ptr %i.dm, ptr %i.m, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1286
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bu)
          to label %bb.ba unwind label %bb.az, !noalias !1287

.body42.i.i.i.i.i.i.i:                            ; preds = %.body56.i.i.i.i.i.i.i, %bb.bc, %bb.az
  %.pn35.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ev, %.body56.i.i.i.i.i.i.i ], [ %i.ed, %bb.az ], [ %i.ej, %bb.bc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.ea = load ptr, ptr %i.m, align 8, !alias.scope !1303, !noalias !1286, !nonnull !5, !noundef !5
  %i.eb = atomicrmw add ptr %i.ea, i64 -1 release, align 8, !noalias !1304
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %.body42.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1287

bb.az:                                            ; preds = %bb.bq, %bb.bo, %bb.ax
  %i.ed = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body42.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.ee = load i64, ptr %i.h, align 8, !range !15, !alias.scope !1305, !noalias !1286, !noundef !5
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %bb.bb, label %bb.bf, !prof !12

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1306
  %i.eg = load ptr, ptr %i.bv, align 8, !alias.scope !1305, !noalias !1286, !nonnull !5, !align !7, !noundef !5
  %i.eh = load i8, ptr %i.bw, align 8, !range !10, !alias.scope !1305, !noalias !1286, !noundef !5
  store ptr %i.eg, ptr %i.f, align 8, !noalias !1306
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.eh, ptr %i.ei, align 8, !noalias !1306
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.bd unwind label %bb.bc, !noalias !1307

bb.bc:                                            ; preds = %bb.bb
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.be, !noalias !1307

bb.bd:                                            ; preds = %bb.bb
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1307
  unreachable

bb.bf:                                            ; preds = %bb.ba
  %i.el = load ptr, ptr %i.bv, align 8, !alias.scope !1305, !noalias !1286, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  %i.em = load i8, ptr %i.bw, align 8, !range !10, !alias.scope !1305, !noalias !1286, !noundef !5 ; 2 uses
  %i.en = trunc nuw i8 %i.em to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1286
  %i.eo = atomicrmw add ptr %i.du, i64 1 monotonic, align 8, !noalias !1287
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1286
  store ptr %i.du, ptr %i.c, align 8, !noalias !1309
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !1308, !noalias !1287, !noundef !5 ; 3 uses
  %i.et = load i64, ptr %i.eq, align 8, !range !8, !alias.scope !1308, !noalias !1287, !noundef !5
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %bb.bm unwind label %bb.bi, !noalias !1287

bb.bi:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ew = atomicrmw add ptr %i.du, i64 -1 release, align 8, !noalias !1310
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.bj, label %.body56.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body56.i.i.i.i.i.i.i unwind label %bb.bk, !noalias !1287

bb.bk:                                            ; preds = %bb.bj
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1287
  unreachable

bb.bl:                                            ; preds = %bb.bf
  call void @llvm.trap()
  unreachable

.body56.i.i.i.i.i.i.i:                            ; preds = %bb.bj, %bb.bi
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.el, i8 %i.em) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1287

bb.bm:                                            ; preds = %bb.bh, %bb.bg
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !1308, !noalias !1287, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.es
  store ptr %i.du, ptr %i.fb, align 8, !noalias !1287
  %i.fc = add i64 %i.es, 1
  store i64 %i.fc, ptr %i.er, align 8, !alias.scope !1308, !noalias !1287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1286
  %i.fd = getelementptr inbounds nuw i8, ptr %i.el, i64 4
end_hunk_9
begin_hunk_10_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB6_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtBY_12ExtractStatsNtNtB4_5error5ErrorENCINvMsa_BY_NtBY_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1n_9into_iter8IntoIterBV_EEB6_:bb.a
  store ptr %i.cj, ptr %i.s, align 8, !noalias !1477
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.ck, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.cm, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3u_5error5ErrorEEEENCNCINvNtB3u_4algo15run_in_parallelTNtB3s_10PackReaderIB2U_NtNtB3w_7packidx9FileEntryEEB34_NCINvMsa_B3s_NtB3s_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB17_B5f_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB7Q_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B7Q_EE9from_iterBQ_E0B95_EB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1479

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1477
  %i.cn = load i64, ptr %i.t, align 8, !range !6, !noalias !1477, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1477, !nonnull !5, !noundef !5 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1477, !nonnull !5, !align !7, !noundef !5
  %i.ct = insertelement <2 x ptr> poison, ptr %i.cq, i64 0
  %i.cu = insertelement <2 x ptr> %i.ct, ptr %i.cs, i64 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cv = load i64, ptr %i.cr, align 8, !noalias !1477, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1477
  %i.cw = icmp ult i64 %i.cv, 384307168202282326
  call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cv
  store ptr %i.cq, ptr %i.q, align 8, !noalias !1477
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cq, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.cn, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.cx, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1A_5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB1C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
          to label %bb.ab unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1479

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1477
  %.sroa.01.0.copyload2.i.i = load i64, ptr %i.r, align 8, !noalias !1489
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cy = load <2 x ptr>, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !noalias !1489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1477
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.z ], [ %.sroa.01.0.copyload2.i.i, %bb.ab ]
  %i.cz = phi <2 x ptr> [ %i.cu, %bb.z ], [ %i.cy, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1477
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB25_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB27_7packidx9FileEntryEEINtNtB9_6result6ResultNtB2Z_12ExtractStatsNtNtB25_5error5ErrorENCINvMsa_B2Z_NtB2Z_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3p_9into_iter8IntoIterB2W_EE0IB4m_IB3n_B4l_EINtNtB3r_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i unwind label %bb.ad, !noalias !1479

bb.ad:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x) #23
          to label %.body46.i unwind label %bb.ae, !noalias !1479

bb.ae:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1479
  unreachable

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1477
  %i.dc = load <2 x ptr>, ptr %i.am, align 16, !noalias !1479
  store <2 x ptr> %i.dc, ptr %i.bq, align 8, !noalias !1477
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1491
  store ptr %i.aj, ptr %i.br, align 8, !noalias !1491
  store i64 0, ptr %i.p, align 8, !noalias !1491
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1491
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1491
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1493
  %i.dd = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEENtNtB1A_7default7Default7defaultB2Q_()
          to label %bb.ag unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEEB32_.exit62.i.i.thread.i.i.i.i.i, !noalias !1494 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEEB32_.exit62.i.i.i.i.i.i.i: ; preds = %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.cb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEEB32_.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.af
  %lpad.loopexit59.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.au
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body39.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store ptr %i.dd, ptr %i.o, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1493
  %i.de = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8, !noalias !1494
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.dd, ptr %i.l, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1493
  %i.dg = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !1494
  %i.dh = icmp slt i64 %i.dg, 0
  br i1 %i.dh, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.av, ptr %i.k, align 8, !noalias !1493
  %i.di = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.an unwind label %bb.al, !noalias !1494

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.dk = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !1495
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.am, label %bb.bz

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bz unwind label %bb.bw, !noalias !1494

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1493
  store ptr %i.av, ptr %i.bs, align 8, !noalias !1493
  store ptr %i.di, ptr %i.bt, align 8, !noalias !1493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !1496
  store ptr %i.dd, ptr %i.bu, align 8, !noalias !1493
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1497
  %i.dm = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 64, i64 noundef 8) #22, !noalias !1497 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ao, label %bb.as, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !1494

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB23_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB25_7packidx9FileEntryEEINtNtB4_6result6ResultNtB2X_12ExtractStatsNtNtB23_5error5ErrorENCINvMsa_B2X_NtB2X_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3n_9into_iter8IntoIterB2U_EE00IB3l_B4j_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !1494

bb.aq:                                            ; preds = %bb.ap
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1494
  unreachable

bb.ar:                                            ; preds = %bb.as
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !1494
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1492, !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !1499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1498
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.dm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @6)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !1494

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.as
  %i.dr = load ptr, ptr %i.d, align 8, !noalias !1498, !noundef !5 ; 6 uses
  %i.ds = icmp eq ptr %i.dr, null
  %i.dt = load ptr, ptr %i.bv, align 8, !noalias !1498 ; 3 uses
  br i1 %i.ds, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1493
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.du = load ptr, ptr %i.o, align 8, !alias.scope !1502, !noalias !1493, !nonnull !5, !noundef !5
  %i.dv = atomicrmw add ptr %i.du, i64 -1 release, align 8, !noalias !1503
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.au, label %bb.ch

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEE9drop_slowB2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.ch unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1494

bb.av:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1493
  %i.dx = atomicrmw add ptr %i.dr, i64 1 monotonic, align 8, !noalias !1494
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.dr, ptr %i.i, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1493
  store i64 1, ptr %i.g, align 8, !noalias !1493
  store i64 1, ptr %i.bw, align 8, !noalias !1493
  store i32 0, ptr %i.bx, align 8, !noalias !1493
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1493
  store ptr %i.dr, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1493
  store ptr %i.dt, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1493
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1493
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1504
  %i.dz = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !1504 ; 7 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ax, label %bb.bc, !prof !12

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !1494

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.eb = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.az, !noalias !1494

bb.az:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1494
  unreachable

bb.ba:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.ay
  %i.ed = atomicrmw add ptr %i.dr, i64 -1 release, align 8, !noalias !1505
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %.body.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !1494

bb.bc:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !1494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1493
  store ptr %i.dz, ptr %i.n, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1493
  store ptr %i.dr, ptr %i.m, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1493
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.by)
          to label %bb.bf unwind label %bb.be, !noalias !1494

.body42.i.i.i.i.i.i.i:                            ; preds = %.body56.i.i.i.i.i.i.i, %bb.bh, %bb.be
  %.pn35.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fa, %.body56.i.i.i.i.i.i.i ], [ %i.ei, %bb.be ], [ %i.eo, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.ef = load ptr, ptr %i.m, align 8, !alias.scope !1510, !noalias !1493, !nonnull !5, !noundef !5
  %i.eg = atomicrmw add ptr %i.ef, i64 -1 release, align 8, !noalias !1511
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %.body42.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !1494

bb.be:                                            ; preds = %bb.bv, %bb.bt, %bb.bc
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body42.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %i.ej = load i64, ptr %i.h, align 8, !range !15, !alias.scope !1512, !noalias !1493, !noundef !5
  %i.ek = trunc nuw i64 %i.ej to i1
  br i1 %i.ek, label %bb.bg, label %bb.bk, !prof !12

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1513
  %i.el = load ptr, ptr %i.bz, align 8, !alias.scope !1512, !noalias !1493, !nonnull !5, !align !7, !noundef !5
  %i.em = load i8, ptr %i.ca, align 8, !range !10, !alias.scope !1512, !noalias !1493, !noundef !5
  store ptr %i.el, ptr %i.f, align 8, !noalias !1513
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.em, ptr %i.en, align 8, !noalias !1513
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.bi unwind label %bb.bh, !noalias !1514

bb.bh:                                            ; preds = %bb.bg
  %i.eo = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bj, !noalias !1514

bb.bi:                                            ; preds = %bb.bg
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1514
  unreachable

bb.bk:                                            ; preds = %bb.bf
  %i.eq = load ptr, ptr %i.bz, align 8, !alias.scope !1512, !noalias !1493, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  %i.er = load i8, ptr %i.ca, align 8, !range !10, !alias.scope !1512, !noalias !1493, !noundef !5 ; 2 uses
  %i.es = trunc nuw i8 %i.er to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1493
  %i.et = atomicrmw add ptr %i.dz, i64 1 monotonic, align 8, !noalias !1494
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1493
  store ptr %i.dz, ptr %i.c, align 8, !noalias !1516
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1515, !noalias !1494, !noundef !5 ; 3 uses
  %i.ey = load i64, ptr %i.ev, align 8, !range !8, !alias.scope !1515, !noalias !1494, !noundef !5
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %bb.br unwind label %bb.bn, !noalias !1494

bb.bn:                                            ; preds = %bb.bm
  %i.fa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.fb = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !1517
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bo, label %.body56.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body56.i.i.i.i.i.i.i unwind label %bb.bp, !noalias !1494

bb.bp:                                            ; preds = %bb.bo
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1494
  unreachable

bb.bq:                                            ; preds = %bb.bk
  call void @llvm.trap()
  unreachable

.body56.i.i.i.i.i.i.i:                            ; preds = %bb.bo, %bb.bn
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.eq, i8 %i.er) #23
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !1494

bb.br:                                            ; preds = %bb.bm, %bb.bl
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !1515, !noalias !1494, !nonnull !5, !noundef !5
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ex
  store ptr %i.dz, ptr %i.fg, align 8, !noalias !1494
  %i.fh = add i64 %i.ex, 1
  store i64 %i.fh, ptr %i.ew, align 8, !alias.scope !1515, !noalias !1494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1493
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
end_hunk_10
