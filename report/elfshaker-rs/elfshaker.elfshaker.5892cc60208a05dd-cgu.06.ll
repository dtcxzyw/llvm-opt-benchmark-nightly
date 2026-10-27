Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.06?download=true
inline.NumInlined: 491
inline.NumDeleted: 247
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEECs7BtpbLEd5q3_9elfshaker:bb.a

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_7packidx9FileEntryEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB14_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBY_NtNtB12_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBw_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1U_5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1l_5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1F_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1F_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_IBY_NtNtB12_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBw_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1C_5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1l_5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_uNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB1B_NtNtB1F_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !78, !nonnull !6, !noundef !6
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !78
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !81
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultIB28_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !84, !nonnull !6, !noundef !6
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !84
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultIB28_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !89, !nonnull !6, !noundef !6
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !89
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !94, !nonnull !6, !noundef !6
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !94
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !125, !nonnull !6, !noundef !6
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !125
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !128, !nonnull !6, !noundef !6
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !128
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !131, !nonnull !6, !noundef !6
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !131
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !136, !nonnull !6, !noundef !6
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !136
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !141, !nonnull !6, !noundef !6
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !141
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2x_5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker:bb.a
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !188, !nonnull !6, !noundef !6
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !188
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !219, !nonnull !6, !noundef !6
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !219
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !222, !nonnull !6, !noundef !6
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !222
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !225, !nonnull !6, !noundef !6
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !225
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !230, !nonnull !6, !noundef !6
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !230
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !235, !nonnull !6, !noundef !6
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !235
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit4, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB12_6marker4SendEL_EENtNtNtB12_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB19_6marker4SendEL_EENtNtNtB19_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB19_6marker4SendEL_EENtNtNtB19_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB2c_NtNtB2g_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB1T_NtNtB1X_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB1T_NtNtB1X_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB1T_NtNtB1X_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB38_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2P_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2P_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2P_5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit, !prof !5
end_hunk_1
begin_hunk_2_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB4_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB4_5error5ErrorENCINvMs0_NtB4_10repositoryNtB2k_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBV_EEs1_0B3k_ECs7BtpbLEd5q3_9elfshaker:bb.a

bb.bo:                                            ; preds = %bb.bm
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !544
  unreachable

bb.bq:                                            ; preds = %bb.bl
  %i.ev = load ptr, ptr %i.cb, align 8, !alias.scope !542, !noalias !524, !nonnull !6, !align !10, !noundef !6 ; 7 uses
  %i.ew = load i8, ptr %i.cc, align 8, !range !13, !alias.scope !542, !noalias !524, !noundef !6 ; 2 uses
  %i.ex = trunc nuw i8 %i.ew to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !524
  %i.ey = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !525
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !524
  store ptr %i.ee, ptr %i.c, align 8, !noalias !546
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !545, !noalias !525, !noundef !6 ; 3 uses
  %i.fd = load i64, ptr %i.fa, align 8, !range !11, !alias.scope !545, !noalias !525, !noundef !6
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %bb.bx unwind label %bb.bt, !noalias !525

bb.bt:                                            ; preds = %bb.bs
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.fg = atomicrmw add ptr %i.ee, i64 -1 release, align 8, !noalias !547
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.bu, label %.body55.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %.body55.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !525

bb.bv:                                            ; preds = %bb.bu
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !525
  unreachable

bb.bw:                                            ; preds = %bb.bq
  call void @llvm.trap()
  unreachable

.body55.i.i.i.i.i.i.i:                            ; preds = %bb.bu, %bb.bt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.ev, i8 %i.ew) #26
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !525

bb.bx:                                            ; preds = %bb.bs, %bb.br
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !545, !noalias !525, !nonnull !6, !noundef !6
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fc
  store ptr %i.ee, ptr %i.fl, align 8, !noalias !525
  %i.fm = add i64 %i.fc, 1
  store i64 %i.fm, ptr %i.fb, align 8, !alias.scope !545, !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !524
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  br i1 %i.ex, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fo = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !524
  %i.fp = and i64 %i.fo, 9223372036854775807
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bz, !prof !14

bb.bz:                                            ; preds = %bb.by
  %i.fr = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc57.i.i.i.i.i.i.i unwind label %bb.bk, !noalias !525

.noexc57.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  br i1 %i.fr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc57.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.fn monotonic, align 4, !noalias !525
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca, %.noexc57.i.i.i.i.i.i.i, %bb.by, %bb.bx
  %i.fs = atomicrmw xchg ptr %i.ev, i32 0 release, align 4, !noalias !525
  %i.ft = icmp eq i32 %i.fs, 2
  br i1 %i.ft, label %bb.cb, label %bb.cr, !prof !5

bb.cb:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ev)
          to label %bb.cr unwind label %bb.bk, !noalias !525

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %bb.cg, %bb.ce, %bb.cd, %.body55.i.i.i.i.i.i.i, %bb.bj, %bb.bh, %bb.ar
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body46.i.i.i.i.i

.body46.i.i.i.i.i:                                ; preds = %bb.cl, %bb.ci, %bb.cc
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !548
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i: ; preds = %bb.bj, %.body42.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.fv = load ptr, ptr %i.m, align 8, !alias.scope !551, !noalias !524, !nonnull !6, !noundef !6
  %i.fw = atomicrmw add ptr %i.fv, i64 -1 release, align 8, !noalias !552
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.cd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !525

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i, %bb.bh, %.body.i.i.i.i.i.i.i, %bb.aw, %bb.au
  %.sroa.015.3.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.aw ], [ false, %bb.au ], [ false, %bb.bh ], [ false, %bb.cd ], [ true, %bb.cg ], [ true, %bb.cf ]
  %.sroa.016.4.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.aw ], [ true, %bb.au ], [ false, %bb.bh ], [ false, %bb.cd ], [ true, %bb.cg ], [ true, %bb.cf ] ; 2 uses
  %.pn35.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.eg, %.body.i.i.i.i.i.i.i ], [ %.pn35.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ %i.dv, %bb.aw ], [ %i.dt, %bb.au ], [ %i.eg, %bb.bh ], [ %.pn35.i.i.i.i.i.i.i, %bb.cd ], [ %i.do, %bb.cg ], [ %i.do, %bb.cf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.fy = load ptr, ptr %i.n, align 8, !alias.scope !555, !noalias !524, !nonnull !6, !noundef !6
  %i.fz = atomicrmw add ptr %i.fy, i64 -1 release, align 8, !noalias !556
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !525

bb.cf:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.gb = load ptr, ptr %i.k, align 8, !alias.scope !559, !noalias !524, !nonnull !6, !noundef !6
  %i.gc = atomicrmw add ptr %i.gb, i64 -1 release, align 8, !noalias !560
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !525

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCINvMs0_NtBK_10repositoryNtB2K_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1B_EEs1_0B3K_E00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i174.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i175.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i172.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i173.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %i.ge = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !9, !noalias !507
  %i.gf = icmp ne i64 %i.ge, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i172.i.i.i.i.i, i1 %i.gf, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.ck, label %.body41.i.i.i.i.i

bb.ch:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i175.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit62.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i173.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i unwind label %bb.ci, !noalias !561

bb.ci:                                            ; preds = %bb.ch
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body46.i.i.i.i.i unwind label %bb.cj, !noalias !561

bb.cj:                                            ; preds = %bb.ci
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !561
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCINvMs0_NtBK_10repositoryNtB2K_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1B_EEs1_0B3K_E00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.cc, !noalias !509

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBK_4pack6PackIdINtNtB4_6result6ResultuNtNtBK_5error5ErrorENCINvMs0_NtBK_10repositoryNtB2K_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1B_EEs1_0B3K_E00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cl, !noalias !548

bb.cl:                                            ; preds = %bb.ck
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body46.i.i.i.i.i unwind label %bb.cm, !noalias !548

bb.cm:                                            ; preds = %bb.cl
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !548
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body41.i.i.i.i.i unwind label %bb.cc, !noalias !509

bb.cn:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !562
  store ptr %i.dy, ptr %i.b, align 8, !noalias !562
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
          to label %bb.cp unwind label %bb.co, !noalias !563

bb.co:                                            ; preds = %bb.cn
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %.body41.i.i.i.i.i unwind label %bb.cq, !noalias !563

bb.cp:                                            ; preds = %bb.cn
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !563
  unreachable

bb.cr:                                            ; preds = %bb.cb, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.gm = load ptr, ptr %i.m, align 8, !noalias !524, !nonnull !6, !noundef !6
  %i.gn = load ptr, ptr %i.n, align 8, !noalias !524, !nonnull !6, !noundef !6
  %i.go = load ptr, ptr %i.l, align 8, !noalias !524, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !523
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  store ptr %i.gm, ptr %i.u, align 8, !alias.scope !566, !noalias !507
  store ptr %i.gn, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !566, !noalias !507
  store ptr %i.go, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !566, !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !507
  %i.gp = load i64, ptr %i.bf, align 8, !alias.scope !567, !noalias !507, !noundef !6 ; 3 uses
  %i.gq = load i64, ptr %i.x, align 8, !range !11, !alias.scope !567, !noalias !507, !noundef !6
  %i.gr = icmp eq i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEE8grow_oneB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cv unwind label %bb.ct, !noalias !568

bb.ct:                                            ; preds = %bb.cs
  %i.gs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #26
          to label %.body41.i.i.i.i.i unwind label %bb.cu, !noalias !509

bb.cu:                                            ; preds = %bb.ct
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !509
  unreachable

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %i.gu = load ptr, ptr %i.be, align 8, !alias.scope !567, !noalias !507, !nonnull !6, !noundef !6
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !509
  %i.gw = add i64 %i.gp, 1                        ; 2 uses
  store i64 %i.gw, ptr %i.bf, align 8, !alias.scope !567, !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !507
  %.pre.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !7, !noalias !507
  br label %bb.u

bb.cw:                                            ; preds = %bb.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.cy, %bb.cw, %bb.m, %bb.k
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !509
  unreachable

bb.cx:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cz unwind label %bb.cy, !noalias !509

bb.cy:                                            ; preds = %bb.cx
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i.i unwind label %bb.da, !noalias !509

bb.cz:                                            ; preds = %bb.cx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body47.i unwind label %bb.cw, !noalias !511

bb.da:                                            ; preds = %bb.cy
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !509
  unreachable

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body47.i

.body47.i:                                        ; preds = %bb.db, %bb.cz, %bb.ah, %bb.af, %.noexc.i.i.i.i
  %eh.lpad-body48.i = phi { ptr, i32 } [ %i.ha, %bb.db ], [ %eh.lpad-body42.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.de, %bb.ah ], [ %i.dc, %bb.af ], [ %eh.lpad-body42.i.i.i.i.i, %bb.cz ]
  %i.hb = extractvalue { ptr, i32 } %eh.lpad-body48.i, 0
  %i.hc = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.hb)
          to label %bb.de unwind label %bb.dc, !noalias !505 ; 2 uses

bb.dc:                                            ; preds = %.body47.i
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !505
  unreachable

bb.dd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !507
  store i64 %.sroa.01.0.i.i, ptr %i.ag, align 8, !noalias !505
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x ptr> %i.db, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !505
  br label %bb.df

bb.de:                                            ; preds = %.body47.i
  %i.he = extractvalue { ptr, ptr } %i.hc, 0
  %i.hf = extractvalue { ptr, ptr } %i.hc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.he, ptr %i.hg, align 8, !noalias !505
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.hf, ptr %i.hh, align 8, !noalias !505
  store i64 -2, ptr %i.ag, align 8, !noalias !505
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !505
  %i.hi = load ptr, ptr %i.bb, align 8, !noalias !505, !nonnull !6, !noundef !6
  store ptr %i.hi, ptr %i.af, align 8, !noalias !505
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.di unwind label %bb.dg, !noalias !505

bb.dg:                                            ; preds = %bb.df
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.hk = load ptr, ptr %i.af, align 8, !alias.scope !571, !noalias !505, !nonnull !6, !noundef !6
  %i.hl = atomicrmw add ptr %i.hk, i64 -1 release, align 8, !noalias !572
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.dh, label %.thread84.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %.thread84.i unwind label %bb.dk, !noalias !505

bb.di:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.hn = load ptr, ptr %i.af, align 8, !alias.scope !575, !noalias !505, !nonnull !6, !noundef !6
  %i.ho = atomicrmw add ptr %i.hn, i64 -1 release, align 8, !noalias !576
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.dl, !noalias !505

bb.dk:                                            ; preds = %bb.dh
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !505
  unreachable

.body20.i:                                        ; preds = %bb.eq, %bb.dl
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.eq ], [ %i.hs, %bb.dl ] ; 2 uses
  %.sroa.07.2.i = phi i8 [ 0, %bb.eq ], [ %.sroa.07.3.i, %bb.dl ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.eq ], [ %.sroa.04.1.i, %bb.dl ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.eq ], [ true, %bb.dl ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.eq ], [ %.sroa.04.1.i, %bb.dl ]
  %i.hr = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.hr, label %.thread84.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECs7BtpbLEd5q3_9elfshaker.exit.i

bb.dl:                                            ; preds = %bb.ej, %bb.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.dj
  %.sroa.07.3.i = phi i8 [ 0, %bb.ej ], [ 1, %bb.dj ], [ 0, %bb.dm ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.ej ], [ 1, %bb.dj ], [ 1, %bb.dm ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ] ; 2 uses
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !505
  %i.ht = load ptr, ptr %i.aj, align 8, !noalias !505, !nonnull !6, !noundef !6
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.ht)
          to label %bb.dm unwind label %bb.dl, !noalias !505

bb.dm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !505
end_hunk_2
begin_hunk_3_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6_7packidx9FileEntryNtNtNtB1z_2io5error5ErrorENCINvMs0_NtB4_10repositoryNtB34_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBV_EBV_E0B3U_ECs7BtpbLEd5q3_9elfshaker:bb.a

bb.bo:                                            ; preds = %bb.bm
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !754
  unreachable

bb.bq:                                            ; preds = %bb.bl
  %i.ev = load ptr, ptr %i.cb, align 8, !alias.scope !752, !noalias !734, !nonnull !6, !align !10, !noundef !6 ; 7 uses
  %i.ew = load i8, ptr %i.cc, align 8, !range !13, !alias.scope !752, !noalias !734, !noundef !6 ; 2 uses
  %i.ex = trunc nuw i8 %i.ew to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !734
  %i.ey = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !735
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !734
  store ptr %i.ee, ptr %i.c, align 8, !noalias !756
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !755, !noalias !735, !noundef !6 ; 3 uses
  %i.fd = load i64, ptr %i.fa, align 8, !range !11, !alias.scope !755, !noalias !735, !noundef !6
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %bb.bx unwind label %bb.bt, !noalias !735

bb.bt:                                            ; preds = %bb.bs
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.fg = atomicrmw add ptr %i.ee, i64 -1 release, align 8, !noalias !757
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.bu, label %.body55.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %.body55.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !735

bb.bv:                                            ; preds = %bb.bu
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !735
  unreachable

bb.bw:                                            ; preds = %bb.bq
  call void @llvm.trap()
  unreachable

.body55.i.i.i.i.i.i.i:                            ; preds = %bb.bu, %bb.bt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.ev, i8 %i.ew) #26
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !735

bb.bx:                                            ; preds = %bb.bs, %bb.br
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !755, !noalias !735, !nonnull !6, !noundef !6
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fc
  store ptr %i.ee, ptr %i.fl, align 8, !noalias !735
  %i.fm = add i64 %i.fc, 1
  store i64 %i.fm, ptr %i.fb, align 8, !alias.scope !755, !noalias !735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !734
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  br i1 %i.ex, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fo = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !734
  %i.fp = and i64 %i.fo, 9223372036854775807
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bz, !prof !14

bb.bz:                                            ; preds = %bb.by
  %i.fr = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc57.i.i.i.i.i.i.i unwind label %bb.bk, !noalias !735

.noexc57.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  br i1 %i.fr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc57.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.fn monotonic, align 4, !noalias !735
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca, %.noexc57.i.i.i.i.i.i.i, %bb.by, %bb.bx
  %i.fs = atomicrmw xchg ptr %i.ev, i32 0 release, align 4, !noalias !735
  %i.ft = icmp eq i32 %i.fs, 2
  br i1 %i.ft, label %bb.cb, label %bb.cr, !prof !5

bb.cb:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ev)
          to label %bb.cr unwind label %bb.bk, !noalias !735

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %bb.cg, %bb.ce, %bb.cd, %.body55.i.i.i.i.i.i.i, %bb.bj, %bb.bh, %bb.ar
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body46.i.i.i.i.i

.body46.i.i.i.i.i:                                ; preds = %bb.cl, %bb.ci, %bb.cc
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !758
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i: ; preds = %bb.bj, %.body42.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.fv = load ptr, ptr %i.m, align 8, !alias.scope !761, !noalias !734, !nonnull !6, !noundef !6
  %i.fw = atomicrmw add ptr %i.fv, i64 -1 release, align 8, !noalias !762
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.cd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !735

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i, %bb.bh, %.body.i.i.i.i.i.i.i, %bb.aw, %bb.au
  %.sroa.015.3.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.aw ], [ false, %bb.au ], [ false, %bb.bh ], [ false, %bb.cd ], [ true, %bb.cg ], [ true, %bb.cf ]
  %.sroa.016.4.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.aw ], [ true, %bb.au ], [ false, %bb.bh ], [ false, %bb.cd ], [ true, %bb.cg ], [ true, %bb.cf ] ; 2 uses
  %.pn35.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.eg, %.body.i.i.i.i.i.i.i ], [ %.pn35.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ %i.dv, %bb.aw ], [ %i.dt, %bb.au ], [ %i.eg, %bb.bh ], [ %.pn35.i.i.i.i.i.i.i, %bb.cd ], [ %i.do, %bb.cg ], [ %i.do, %bb.cf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.fy = load ptr, ptr %i.n, align 8, !alias.scope !765, !noalias !734, !nonnull !6, !noundef !6
  %i.fz = atomicrmw add ptr %i.fy, i64 -1 release, align 8, !noalias !766
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !735

bb.cf:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.gb = load ptr, ptr %i.k, align 8, !alias.scope !769, !noalias !734, !nonnull !6, !noundef !6
  %i.gc = atomicrmw add ptr %i.gb, i64 -1 release, align 8, !noalias !770
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !735

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultNtNtBM_7packidx9FileEntryNtNtNtB4_2io5error5ErrorENCINvMs0_NtBK_10repositoryNtB3t_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1B_EB1B_E0B4j_E00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i174.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i175.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i172.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i173.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %i.ge = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !9, !noalias !717
  %i.gf = icmp ne i64 %i.ge, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i172.i.i.i.i.i, i1 %i.gf, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.ck, label %.body41.i.i.i.i.i

bb.ch:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i175.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit62.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i173.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i unwind label %bb.ci, !noalias !771

bb.ci:                                            ; preds = %bb.ch
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body46.i.i.i.i.i unwind label %bb.cj, !noalias !771

bb.cj:                                            ; preds = %bb.ci
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !771
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultNtNtBM_7packidx9FileEntryNtNtNtB4_2io5error5ErrorENCINvMs0_NtBK_10repositoryNtB3t_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1B_EB1B_E0B4j_E00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.cc, !noalias !719

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultNtNtBM_7packidx9FileEntryNtNtNtB4_2io5error5ErrorENCINvMs0_NtBK_10repositoryNtB3t_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1B_EB1B_E0B4j_E00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cl, !noalias !758

bb.cl:                                            ; preds = %bb.ck
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body46.i.i.i.i.i unwind label %bb.cm, !noalias !758

bb.cm:                                            ; preds = %bb.cl
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !758
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body41.i.i.i.i.i unwind label %bb.cc, !noalias !719

bb.cn:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !772
  store ptr %i.dy, ptr %i.b, align 8, !noalias !772
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
          to label %bb.cp unwind label %bb.co, !noalias !773

bb.co:                                            ; preds = %bb.cn
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %.body41.i.i.i.i.i unwind label %bb.cq, !noalias !773

bb.cp:                                            ; preds = %bb.cn
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !773
  unreachable

bb.cr:                                            ; preds = %bb.cb, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.gm = load ptr, ptr %i.m, align 8, !noalias !734, !nonnull !6, !noundef !6
  %i.gn = load ptr, ptr %i.n, align 8, !noalias !734, !nonnull !6, !noundef !6
  %i.go = load ptr, ptr %i.l, align 8, !noalias !734, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !733
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  store ptr %i.gm, ptr %i.u, align 8, !alias.scope !776, !noalias !717
  store ptr %i.gn, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !776, !noalias !717
  store ptr %i.go, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !776, !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !717
  %i.gp = load i64, ptr %i.bf, align 8, !alias.scope !777, !noalias !717, !noundef !6 ; 3 uses
  %i.gq = load i64, ptr %i.x, align 8, !range !11, !alias.scope !777, !noalias !717, !noundef !6
  %i.gr = icmp eq i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB26_2io5error5ErrorEEEE8grow_oneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cv unwind label %bb.ct, !noalias !778

bb.ct:                                            ; preds = %bb.cs
  %i.gs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #26
          to label %.body41.i.i.i.i.i unwind label %bb.cu, !noalias !719

bb.cu:                                            ; preds = %bb.ct
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !719
  unreachable

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %i.gu = load ptr, ptr %i.be, align 8, !alias.scope !777, !noalias !717, !nonnull !6, !noundef !6
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !719
  %i.gw = add i64 %i.gp, 1                        ; 2 uses
  store i64 %i.gw, ptr %i.bf, align 8, !alias.scope !777, !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !717
  %.pre.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !7, !noalias !717
  br label %bb.u

bb.cw:                                            ; preds = %bb.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.cy, %bb.cw, %bb.m, %bb.k
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !719
  unreachable

bb.cx:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1N_2io5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cz unwind label %bb.cy, !noalias !719

bb.cy:                                            ; preds = %bb.cx
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i.i unwind label %bb.da, !noalias !719

bb.cz:                                            ; preds = %bb.cx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body47.i unwind label %bb.cw, !noalias !721

bb.da:                                            ; preds = %bb.cy
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !719
  unreachable

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body47.i

.body47.i:                                        ; preds = %bb.db, %bb.cz, %bb.ah, %bb.af, %.noexc.i.i.i.i
  %eh.lpad-body48.i = phi { ptr, i32 } [ %i.ha, %bb.db ], [ %eh.lpad-body42.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.de, %bb.ah ], [ %i.dc, %bb.af ], [ %eh.lpad-body42.i.i.i.i.i, %bb.cz ]
  %i.hb = extractvalue { ptr, i32 } %eh.lpad-body48.i, 0
  %i.hc = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.hb)
          to label %bb.de unwind label %bb.dc, !noalias !715 ; 2 uses

bb.dc:                                            ; preds = %.body47.i
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !715
  unreachable

bb.dd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !717
  store i64 %.sroa.01.0.i.i, ptr %i.ag, align 8, !noalias !715
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x ptr> %i.db, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !715
  br label %bb.df

bb.de:                                            ; preds = %.body47.i
  %i.he = extractvalue { ptr, ptr } %i.hc, 0
  %i.hf = extractvalue { ptr, ptr } %i.hc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.he, ptr %i.hg, align 8, !noalias !715
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.hf, ptr %i.hh, align 8, !noalias !715
  store i64 -2, ptr %i.ag, align 8, !noalias !715
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !715
  %i.hi = load ptr, ptr %i.bb, align 8, !noalias !715, !nonnull !6, !noundef !6
  store ptr %i.hi, ptr %i.af, align 8, !noalias !715
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.di unwind label %bb.dg, !noalias !715

bb.dg:                                            ; preds = %bb.df
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.hk = load ptr, ptr %i.af, align 8, !alias.scope !781, !noalias !715, !nonnull !6, !noundef !6
  %i.hl = atomicrmw add ptr %i.hk, i64 -1 release, align 8, !noalias !782
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.dh, label %.thread84.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %.thread84.i unwind label %bb.dk, !noalias !715

bb.di:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.hn = load ptr, ptr %i.af, align 8, !alias.scope !785, !noalias !715, !nonnull !6, !noundef !6
  %i.ho = atomicrmw add ptr %i.hn, i64 -1 release, align 8, !noalias !786
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.dl, !noalias !715

bb.dk:                                            ; preds = %bb.dh
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !715
  unreachable

.body20.i:                                        ; preds = %bb.eq, %bb.dl
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.eq ], [ %i.hs, %bb.dl ] ; 2 uses
  %.sroa.07.2.i = phi i8 [ 0, %bb.eq ], [ %.sroa.07.3.i, %bb.dl ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.eq ], [ %.sroa.04.1.i, %bb.dl ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.eq ], [ true, %bb.dl ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.eq ], [ %.sroa.04.1.i, %bb.dl ]
  %i.hr = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.hr, label %.thread84.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECs7BtpbLEd5q3_9elfshaker.exit.i

bb.dl:                                            ; preds = %bb.ej, %bb.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.dj
  %.sroa.07.3.i = phi i8 [ 0, %bb.ej ], [ 1, %bb.dj ], [ 0, %bb.dm ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.ej ], [ 1, %bb.dj ], [ 1, %bb.dm ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ] ; 2 uses
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !715
  %i.ht = load ptr, ptr %i.aj, align 8, !noalias !715, !nonnull !6, !noundef !6
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.ht)
          to label %bb.dm unwind label %bb.dl, !noalias !715

bb.dm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !715
end_hunk_3
begin_hunk_4_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1W_6string6StringENtNtB4_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB1k_5slice4iter4IterBW_EEB3b_:bb.a

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !946
  unreachable

bb.aw:                                            ; preds = %bb.ar
  %i.ea = load ptr, ptr %i.bo, align 8, !alias.scope !944, !noalias !926, !nonnull !6, !align !10, !noundef !6 ; 7 uses
  %i.eb = load i8, ptr %i.bp, align 8, !range !13, !alias.scope !944, !noalias !926, !noundef !6 ; 2 uses
  %i.ec = trunc nuw i8 %i.eb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !926
  %i.ed = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8, !noalias !927
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !926
  store ptr %i.dj, ptr %i.c, align 8, !noalias !948
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !947, !noalias !927, !noundef !6 ; 3 uses
  %i.ei = load i64, ptr %i.ef, align 8, !range !11, !alias.scope !947, !noalias !927, !noundef !6
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %bb.bd unwind label %bb.az, !noalias !927

bb.az:                                            ; preds = %bb.ay
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.el = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !949
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ba, label %.body55.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %.body55.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !927

bb.bb:                                            ; preds = %bb.ba
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !927
  unreachable

bb.bc:                                            ; preds = %bb.aw
  call void @llvm.trap()
  unreachable

.body55.i.i.i.i.i.i.i:                            ; preds = %bb.ba, %bb.az
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.ea, i8 %i.eb) #26
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !927

bb.bd:                                            ; preds = %bb.ay, %bb.ax
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !947, !noalias !927, !nonnull !6, !noundef !6
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eh
  store ptr %i.dj, ptr %i.eq, align 8, !noalias !927
  %i.er = add i64 %i.eh, 1
  store i64 %i.er, ptr %i.eg, align 8, !alias.scope !947, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !926
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  br i1 %i.ec, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.et = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !926
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bf, !prof !14

bb.bf:                                            ; preds = %bb.be
  %i.ew = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc57.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !927

.noexc57.i.i.i.i.i.i.i:                           ; preds = %bb.bf
  br i1 %i.ew, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc57.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.es monotonic, align 4, !noalias !927
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %.noexc57.i.i.i.i.i.i.i, %bb.be, %bb.bd
  %i.ex = atomicrmw xchg ptr %i.ea, i32 0 release, align 4, !noalias !927
  %i.ey = icmp eq i32 %i.ex, 2
  br i1 %i.ey, label %bb.bh, label %bb.bx, !prof !5

bb.bh:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ea)
          to label %bb.bx unwind label %bb.aq, !noalias !927

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %bb.bm, %bb.bk, %bb.bj, %.body55.i.i.i.i.i.i.i, %bb.ap, %bb.an, %bb.x
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i.i

.body42.i.i.i.i.i:                                ; preds = %bb.br, %bb.bo, %bb.bi
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i: ; preds = %bb.ap, %.body42.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.fa = load ptr, ptr %i.m, align 8, !alias.scope !953, !noalias !926, !nonnull !6, !noundef !6
  %i.fb = atomicrmw add ptr %i.fa, i64 -1 release, align 8, !noalias !954
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !927

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i, %bb.an, %.body.i.i.i.i.i.i.i, %bb.ac, %bb.aa
  %.sroa.015.3.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.an ], [ false, %bb.bj ], [ true, %bb.bm ], [ true, %bb.bl ]
  %.sroa.016.4.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.ac ], [ true, %bb.aa ], [ false, %bb.an ], [ false, %bb.bj ], [ true, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %.pn35.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dl, %.body.i.i.i.i.i.i.i ], [ %.pn35.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ %i.da, %bb.ac ], [ %i.cy, %bb.aa ], [ %i.dl, %bb.an ], [ %.pn35.i.i.i.i.i.i.i, %bb.bj ], [ %i.ct, %bb.bm ], [ %i.ct, %bb.bl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.fd = load ptr, ptr %i.n, align 8, !alias.scope !957, !noalias !926, !nonnull !6, !noundef !6
  %i.fe = atomicrmw add ptr %i.fd, i64 -1 release, align 8, !noalias !958
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultIB28_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !927

bb.bl:                                            ; preds = %bb.x, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.fg = load ptr, ptr %i.k, align 8, !alias.scope !961, !noalias !926, !nonnull !6, !noundef !6
  %i.fh = atomicrmw add ptr %i.fg, i64 -1 release, align 8, !noalias !962
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultIB28_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEE9drop_slowCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !927

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i177.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i178.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i175.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i176.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %i.fj = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !9, !noalias !918
  %i.fk = icmp ne i64 %i.fj, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i175.i.i.i.i.i, i1 %i.fk, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.bq, label %.thread.i.i.i.i.i

bb.bn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i178.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit65.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i176.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultIB2l_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i unwind label %bb.bo, !noalias !963

bb.bo:                                            ; preds = %bb.bn
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.body42.i.i.i.i.i unwind label %bb.bp, !noalias !963

bb.bp:                                            ; preds = %bb.bo
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !963
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.i.i.i.i.i unwind label %bb.bi, !noalias !923

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.br, !noalias !950

bb.br:                                            ; preds = %bb.bq
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body42.i.i.i.i.i unwind label %bb.bs, !noalias !950

bb.bs:                                            ; preds = %bb.br
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.thread.i.i.i.i.i unwind label %bb.bi, !noalias !923

bb.bt:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !964
  store ptr %i.dd, ptr %i.b, align 8, !noalias !964
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
          to label %bb.bv unwind label %bb.bu, !noalias !965

bb.bu:                                            ; preds = %bb.bt
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %.thread.i.i.i.i.i unwind label %bb.bw, !noalias !965

bb.bv:                                            ; preds = %bb.bt
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !965
  unreachable

bb.bx:                                            ; preds = %bb.bh, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.fr = load ptr, ptr %i.m, align 8, !noalias !926, !nonnull !6, !noundef !6
  %i.fs = load ptr, ptr %i.n, align 8, !noalias !926, !nonnull !6, !noundef !6
  %i.ft = load ptr, ptr %i.l, align 8, !noalias !926, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !925
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  store ptr %i.fr, ptr %i.t, align 8, !alias.scope !968, !noalias !918
  store ptr %i.fs, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !968, !noalias !918
  store ptr %i.ft, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !968, !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !918
  %i.fu = load i64, ptr %i.au, align 8, !alias.scope !969, !noalias !918, !noundef !6 ; 3 uses
  %i.fv = load i64, ptr %i.w, align 8, !range !11, !alias.scope !969, !noalias !918, !noundef !6
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultIB1M_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEE8grow_oneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.cb unwind label %bb.bz, !noalias !970

bb.bz:                                            ; preds = %bb.by
  %i.fx = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB1B_NtNtB1F_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #26
          to label %.thread.i.i.i.i.i unwind label %bb.ca, !noalias !923

bb.ca:                                            ; preds = %bb.bz
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !923
  unreachable

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.fz = load ptr, ptr %i.at, align 8, !alias.scope !969, !noalias !918, !nonnull !6, !noundef !6
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !923
  %i.gb = add i64 %i.fu, 1                        ; 2 uses
  store i64 %i.gb, ptr %i.au, align 8, !alias.scope !969, !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !918
  %.pre.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !15, !alias.scope !920, !noalias !918
  br label %bb.j

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bz, %bb.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.i.i.i.i.i
  %.pn53.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i177.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i ], [ %i.fp, %bb.bu ], [ %i.fx, %bb.bz ], [ %.pn38.i.i177.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp210, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBK_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2m_6string6StringENtNtBK_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB1C_EE00EB3B_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultIBw_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.cd unwind label %bb.cc, !noalias !923

bb.cc:                                            ; preds = %.thread.i.i.i.i.i
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultIB1M_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i.i.i.i unwind label %bb.ce, !noalias !923

bb.cd:                                            ; preds = %.thread.i.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultIB1M_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body46.i unwind label %bb.cf, !noalias !971

bb.ce:                                            ; preds = %bb.cc
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !923
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.cf, %bb.cc
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !923
  unreachable

bb.cg:                                            ; preds = %bb.p, %bb.n
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46.i

.body46.i:                                        ; preds = %bb.cg, %bb.cd
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.gf, %bb.cg ], [ %.pn53.i.i.i.i.i, %bb.cd ]
  %i.gg = extractvalue { ptr, i32 } %eh.lpad-body47.i, 0
  %i.gh = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.gg)
          to label %bb.cj unwind label %bb.ch, !noalias !916 ; 2 uses

bb.ch:                                            ; preds = %.body46.i
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !916
  unreachable

bb.ci:                                            ; preds = %.noexc45.i, %bb.o
  %.sroa.11.0.copyload58.i = phi ptr [ %i.ch, %bb.o ], [ %.sroa.11.0.copyload58.pre.i, %.noexc45.i ]
  %i.gj = phi <2 x ptr> [ %i.ci, %bb.o ], [ %i.cm, %.noexc45.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !916
  store <2 x ptr> %i.gj, ptr %i.ag, align 16, !noalias !916
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.sroa.11.0.copyload58.i, ptr %.sroa.563.0..sroa_idx.i, align 16, !noalias !916
  br label %bb.ck

bb.cj:                                            ; preds = %.body46.i
  %i.gk = extractvalue { ptr, ptr } %i.gh, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  %i.gl = extractvalue { ptr, ptr } %i.gh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.gk, ptr %i.gm, align 8, !noalias !916
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.gl, ptr %i.gn, align 16, !noalias !916
  store i64 -2, ptr %i.ag, align 16, !noalias !916
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !916
  %i.go = load ptr, ptr %i.as, align 8, !noalias !916, !nonnull !6, !noundef !6
  store ptr %i.go, ptr %i.af, align 8, !noalias !916
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.cn unwind label %bb.cl, !noalias !916

bb.cl:                                            ; preds = %bb.ck
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.gq = load ptr, ptr %i.af, align 8, !alias.scope !974, !noalias !916, !nonnull !6, !noundef !6
  %i.gr = atomicrmw add ptr %i.gq, i64 -1 release, align 8, !noalias !975
  %i.gs = icmp eq i64 %i.gr, 1
  br i1 %i.gs, label %bb.cm, label %.thread76.i

bb.cm:                                            ; preds = %bb.cl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %.thread76.i unwind label %bb.cp, !noalias !916

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.gt = load ptr, ptr %i.af, align 8, !alias.scope !978, !noalias !916, !nonnull !6, !noundef !6
  %i.gu = atomicrmw add ptr %i.gt, i64 -1 release, align 8, !noalias !979
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.cq, !noalias !916

bb.cp:                                            ; preds = %bb.cm
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !916
  unreachable

.body19.i:                                        ; preds = %bb.dv, %bb.cq
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.dv ], [ %i.gy, %bb.cq ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ false, %bb.dv ], [ %.sroa.07.3.i, %bb.cq ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.dv ], [ %.sroa.04.1.i, %bb.cq ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.dv ], [ true, %bb.cq ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.dv ], [ %.sroa.04.1.i, %bb.cq ]
  %i.gx = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.gx, label %.thread76.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECs7BtpbLEd5q3_9elfshaker.exit.i

bb.cq:                                            ; preds = %bb.do, %bb.cr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.co
  %.sroa.07.3.i = phi i1 [ false, %bb.do ], [ true, %bb.co ], [ false, %bb.cr ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.do ], [ 1, %bb.co ], [ 1, %bb.cr ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ] ; 2 uses
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !916
  %i.gz = load ptr, ptr %i.aj, align 8, !noalias !916, !nonnull !6, !noundef !6
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.gz)
          to label %bb.cr unwind label %bb.cq, !noalias !916

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !916
  %i.ha = load ptr, ptr %i.ai, align 8, !noalias !916, !nonnull !6, !noundef !6
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noundef nonnull align 8 %i.hb)
          to label %bb.cs unwind label %bb.cq, !noalias !916

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.hc = load i64, ptr %i.ab, align 8, !range !15, !alias.scope !980, !noalias !916, !noundef !6
  %i.hd = trunc nuw i64 %i.hc to i1
  br i1 %i.hd, label %bb.ct, label %bb.cx, !prof !5

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !981
  %i.he = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !980, !noalias !916, !nonnull !6, !align !10, !noundef !6
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.hh = load i8, ptr %i.hg, align 8, !range !13, !alias.scope !980, !noalias !916, !noundef !6
  store ptr %i.hf, ptr %i.y, align 8, !noalias !981
  %i.hi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i8 %i.hh, ptr %i.hi, align 8, !noalias !981
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
          to label %bb.cv unwind label %bb.cu, !noalias !982

bb.cu:                                            ; preds = %bb.ct
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #26
          to label %.thread76.i unwind label %bb.cw, !noalias !982

bb.cv:                                            ; preds = %bb.ct
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !982
  unreachable

bb.cx:                                            ; preds = %bb.cs
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !980, !noalias !916, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ho = load i8, ptr %i.hn, align 8, !range !13, !alias.scope !980, !noalias !916, !noundef !6 ; 2 uses
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !916
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB15_6thread11join_handle10JoinHandleuEEEEE5drainNtNtNtB1Q_3ops5range9RangeFullECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.cz unwind label %bb.cy, !noalias !916

bb.cy:                                            ; preds = %bb.cz, %bb.cx
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.hm, i8 %i.ho) #26
          to label %.thread76.i unwind label %bb.dt, !noalias !916

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !916
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6S_4pack6PackIdINtNtB1h_6result6ResultIBL_NtNtB6_6string6StringENtNtB6S_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB1h_5slice4iter4IterB7K_EE0IB85_IBL_B84_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB9i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad)
          to label %bb.da unwind label %bb.cy, !noalias !916

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !916
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  br i1 %i.hp, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ht = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !916
  %i.hu = and i64 %i.ht, 9223372036854775807
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dc, !prof !14

bb.dc:                                            ; preds = %bb.db
  %i.hw = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc31.i unwind label %bb.dv, !noalias !916

.noexc31.i:                                       ; preds = %bb.dc
  br i1 %i.hw, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.hs monotonic, align 4, !noalias !916
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.dd, %.noexc31.i, %bb.db, %bb.da
  %i.hx = atomicrmw xchg ptr %i.hm, i32 0 release, align 4, !noalias !916
  %i.hy = icmp eq i32 %i.hx, 2
  br i1 %i.hy, label %bb.de, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i, !prof !5

bb.de:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.dv, !noalias !916

bb.df:                                            ; preds = %bb.dq
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.de, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.hz = load i64, ptr %i.ag, align 16, !range !7, !noalias !916, !noundef !6 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, -2
  br i1 %i.ia, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !916, !nonnull !6, !noundef !6
  %i.id = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ie = load ptr, ptr %i.id, align 16, !noalias !916, !nonnull !6, !align !10, !noundef !6
  invoke void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull %i.ic, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ie) #28
          to label %bb.du unwind label %bb.dv, !noalias !916

bb.dh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 16 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !916
  %i.if = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ig = load i64, ptr %i.if, align 8, !noalias !916, !noundef !6 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 576460752303423488
  call void @llvm.assume(i1 %i.ih)
  %i.ii = icmp eq i64 %i.ig, 0
  br i1 %i.ii, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !916
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !983
  %i.ij = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 65) 24, i64 noundef 8) #25, !noalias !983 ; 3 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB6_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtBY_12ExtractStatsNtNtB4_5error5ErrorENCINvMsa_BY_NtBY_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1n_9into_iter8IntoIterBV_EECs7BtpbLEd5q3_9elfshaker:bb.a

bb.bj:                                            ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1147
  unreachable

bb.bl:                                            ; preds = %bb.bg
  %i.ep = load ptr, ptr %i.by, align 8, !alias.scope !1145, !noalias !1127, !nonnull !6, !align !10, !noundef !6 ; 7 uses
  %i.eq = load i8, ptr %i.bz, align 8, !range !13, !alias.scope !1145, !noalias !1127, !noundef !6 ; 2 uses
  %i.er = trunc nuw i8 %i.eq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1127
  %i.es = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !1128
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1127
  store ptr %i.dy, ptr %i.c, align 8, !noalias !1149
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !1148, !noalias !1128, !noundef !6 ; 3 uses
  %i.ex = load i64, ptr %i.eu, align 8, !range !11, !alias.scope !1148, !noalias !1128, !noundef !6
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1c_6thread11join_handle10JoinHandleuEEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %bb.bs unwind label %bb.bo, !noalias !1128

bb.bo:                                            ; preds = %bb.bn
  %i.ez = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.fa = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !1150
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.bp, label %.body55.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %.body55.i.i.i.i.i.i.i unwind label %bb.bq, !noalias !1128

bb.bq:                                            ; preds = %bb.bp
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1128
  unreachable

bb.br:                                            ; preds = %bb.bl
  call void @llvm.trap()
  unreachable

.body55.i.i.i.i.i.i.i:                            ; preds = %bb.bp, %bb.bo
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.ep, i8 %i.eq) #26
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.bx, !noalias !1128

bb.bs:                                            ; preds = %bb.bn, %bb.bm
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1148, !noalias !1128, !nonnull !6, !noundef !6
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ew
  store ptr %i.dy, ptr %i.ff, align 8, !noalias !1128
  %i.fg = add i64 %i.ew, 1
  store i64 %i.fg, ptr %i.ev, align 8, !alias.scope !1148, !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1127
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  br i1 %i.er, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fi = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1127
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bu, !prof !14

bb.bu:                                            ; preds = %bb.bt
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc57.i.i.i.i.i.i.i unwind label %bb.bf, !noalias !1128

.noexc57.i.i.i.i.i.i.i:                           ; preds = %bb.bu
  br i1 %i.fl, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.noexc57.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.fh monotonic, align 4, !noalias !1128
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %.noexc57.i.i.i.i.i.i.i, %bb.bt, %bb.bs
  %i.fm = atomicrmw xchg ptr %i.ep, i32 0 release, align 4, !noalias !1128
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %bb.bw, label %bb.cm, !prof !5

bb.bw:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ep)
          to label %bb.cm unwind label %bb.bf, !noalias !1128

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBC_NtNtB1f_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %bb.cb, %bb.bz, %bb.by, %.body55.i.i.i.i.i.i.i, %bb.be, %bb.bc, %bb.am
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body44.i.i.i.i.i

.body44.i.i.i.i.i:                                ; preds = %bb.cg, %bb.cd, %bb.bx
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1151
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i: ; preds = %bb.be, %.body42.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.fp = load ptr, ptr %i.m, align 8, !alias.scope !1154, !noalias !1127, !nonnull !6, !noundef !6
  %i.fq = atomicrmw add ptr %i.fp, i64 -1 release, align 8, !noalias !1155
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bx, !noalias !1128

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i, %bb.bc, %.body.i.i.i.i.i.i.i, %bb.ar, %bb.ap
  %.sroa.015.3.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.bc ], [ false, %bb.by ], [ true, %bb.cb ], [ true, %bb.ca ]
  %.sroa.016.4.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ false, %bb.ar ], [ true, %bb.ap ], [ false, %bb.bc ], [ false, %bb.by ], [ true, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %.pn35.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ea, %.body.i.i.i.i.i.i.i ], [ %.pn35.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit54.i.i.i.i.i.i.i ], [ %i.dp, %bb.ar ], [ %i.dn, %bb.ap ], [ %i.ea, %bb.bc ], [ %.pn35.i.i.i.i.i.i.i, %bb.by ], [ %i.di, %bb.cb ], [ %i.di, %bb.ca ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.fs = load ptr, ptr %i.n, align 8, !alias.scope !1158, !noalias !1127, !nonnull !6, !noundef !6
  %i.ft = atomicrmw add ptr %i.fs, i64 -1 release, align 8, !noalias !1159
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.bz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEE9drop_slowB2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i unwind label %bb.bx, !noalias !1128

bb.ca:                                            ; preds = %bb.am, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.fv = load ptr, ptr %i.k, align 8, !alias.scope !1162, !noalias !1127, !nonnull !6, !noundef !6
  %i.fw = atomicrmw add ptr %i.fv, i64 -1 release, align 8, !noalias !1163
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.cb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEE9drop_slowB2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.bx, !noalias !1128

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBC_NtNtB1f_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i171.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i172.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBC_NtNtB1f_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i169.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i170.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBC_NtNtB1f_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %i.fy = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !range !9, !noalias !1112
  %i.fz = icmp ne i64 %i.fy, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i169.i.i.i.i.i, i1 %i.fz, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.cf, label %.body39.i.i.i.i.i

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i
  %.pn38.i.i172.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit59.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i170.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker.exit61.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBw_NtNtBM_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBC_NtNtB1f_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i unwind label %bb.cd, !noalias !1164

bb.cd:                                            ; preds = %bb.cc
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtB7_3vec3VecNtNtBT_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body44.i.i.i.i.i unwind label %bb.ce, !noalias !1164

bb.ce:                                            ; preds = %bb.cd
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1164
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBC_NtNtB1f_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtB7_3vec3VecNtNtBT_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.bx, !noalias !1114

bb.cf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.cg, !noalias !1151

bb.cg:                                            ; preds = %bb.cf
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body44.i.i.i.i.i unwind label %bb.ch, !noalias !1151

bb.ch:                                            ; preds = %bb.cg
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1151
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.cf
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %.body39.i.i.i.i.i unwind label %bb.bx, !noalias !1114

bb.ci:                                            ; preds = %bb.av, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1165
  store ptr %i.ds, ptr %i.b, align 8, !noalias !1165
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
          to label %bb.ck unwind label %bb.cj, !noalias !1166

bb.cj:                                            ; preds = %bb.ci
  %i.ge = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %.body39.i.i.i.i.i unwind label %bb.cl, !noalias !1166

bb.ck:                                            ; preds = %bb.ci
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1166
  unreachable

bb.cm:                                            ; preds = %bb.bw, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.gg = load ptr, ptr %i.m, align 8, !noalias !1127, !nonnull !6, !noundef !6
  %i.gh = load ptr, ptr %i.n, align 8, !noalias !1127, !nonnull !6, !noundef !6
  %i.gi = load ptr, ptr %i.l, align 8, !noalias !1127, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1126
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  store ptr %i.gg, ptr %i.u, align 8, !alias.scope !1169, !noalias !1112
  store ptr %i.gh, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !1169, !noalias !1112
  store ptr %i.gi, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1169, !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1112
  %i.gj = load i64, ptr %i.bf, align 8, !alias.scope !1170, !noalias !1112, !noundef !6 ; 3 uses
  %i.gk = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1170, !noalias !1112, !noundef !6
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2H_5error5ErrorEEEE8grow_oneB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cq unwind label %bb.co, !noalias !1171

bb.co:                                            ; preds = %bb.cn
  %i.gm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2x_5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #26
          to label %.body39.i.i.i.i.i unwind label %bb.cp, !noalias !1114

bb.cp:                                            ; preds = %bb.co
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1114
  unreachable

bb.cq:                                            ; preds = %bb.cn, %bb.cm
  %i.go = load ptr, ptr %i.be, align 8, !alias.scope !1170, !noalias !1112, !nonnull !6, !noundef !6
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1114
  %i.gq = add i64 %i.gj, 1                        ; 2 uses
  store i64 %i.gq, ptr %i.bf, align 8, !alias.scope !1170, !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1112
  %.pre.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !8, !noalias !1112
  br label %bb.s

bb.cr:                                            ; preds = %bb.cu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtBG_3VecNtNtB1w_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ct, %bb.cr, %bb.l
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1114
  unreachable

bb.cs:                                            ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2o_5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cu unwind label %bb.ct, !noalias !1114

bb.ct:                                            ; preds = %bb.cs
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2H_5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i.i unwind label %bb.cv, !noalias !1114

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2H_5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body46.i unwind label %bb.cr, !noalias !1115

bb.cv:                                            ; preds = %bb.ct
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1114
  unreachable

_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB25_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB27_7packidx9FileEntryEEINtNtB9_6result6ResultNtB2Z_12ExtractStatsNtNtB25_5error5ErrorENCINvMsa_B2Z_NtB2Z_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3p_9into_iter8IntoIterB2W_EE0IB4m_IB3n_B4l_EINtNtB3r_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.w)
          to label %bb.cy unwind label %bb.cw, !noalias !1110

bb.cw:                                            ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB25_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB27_7packidx9FileEntryEEINtNtB9_6result6ResultNtB2Z_12ExtractStatsNtNtB25_5error5ErrorENCINvMsa_B2Z_NtB2Z_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3p_9into_iter8IntoIterB2W_EE0IB4m_IB3n_B4l_EINtNtB3r_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body46.i

.body46.i:                                        ; preds = %bb.cw, %bb.cu, %bb.ad, %bb.k
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.gu, %bb.cw ], [ %eh.lpad-body40.i.i.i.i.i, %bb.k ], [ %i.cz, %bb.ad ], [ %eh.lpad-body40.i.i.i.i.i, %bb.cu ]
  %i.gv = extractvalue { ptr, i32 } %eh.lpad-body47.i, 0
  %i.gw = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.gv)
          to label %bb.cz unwind label %bb.cx, !noalias !1110 ; 2 uses

bb.cx:                                            ; preds = %.body46.i
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !1110
  unreachable

bb.cy:                                            ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB25_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB27_7packidx9FileEntryEEINtNtB9_6result6ResultNtB2Z_12ExtractStatsNtNtB25_5error5ErrorENCINvMsa_B2Z_NtB2Z_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3p_9into_iter8IntoIterB2W_EE0IB4m_IB3n_B4l_EINtNtB3r_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1112
  store i64 %.sroa.01.0.i.i, ptr %i.ag, align 8, !noalias !1110
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x ptr> %i.cy, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1110
  br label %bb.da

bb.cz:                                            ; preds = %.body46.i
  %i.gy = extractvalue { ptr, ptr } %i.gw, 0
  %i.gz = extractvalue { ptr, ptr } %i.gw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.gy, ptr %i.ha, align 8, !noalias !1110
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.gz, ptr %i.hb, align 8, !noalias !1110
  store i64 -2, ptr %i.ag, align 8, !noalias !1110
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1110
  %i.hc = load ptr, ptr %i.bb, align 8, !noalias !1110, !nonnull !6, !noundef !6
  store ptr %i.hc, ptr %i.af, align 8, !noalias !1110
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.dd unwind label %bb.db, !noalias !1110

bb.db:                                            ; preds = %bb.da
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.he = load ptr, ptr %i.af, align 8, !alias.scope !1174, !noalias !1110, !nonnull !6, !noundef !6
  %i.hf = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !1175
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.dc, label %.thread84.i

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %.thread84.i unwind label %bb.df, !noalias !1110

bb.dd:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.hh = load ptr, ptr %i.af, align 8, !alias.scope !1178, !noalias !1110, !nonnull !6, !noundef !6
  %i.hi = atomicrmw add ptr %i.hh, i64 -1 release, align 8, !noalias !1179
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.de, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.dg, !noalias !1110

bb.df:                                            ; preds = %bb.dc
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1110
  unreachable

.body20.i:                                        ; preds = %bb.el, %bb.dg
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.el ], [ %i.hm, %bb.dg ] ; 2 uses
  %.sroa.07.2.i = phi i8 [ 0, %bb.el ], [ %.sroa.07.3.i, %bb.dg ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.el ], [ %.sroa.04.1.i, %bb.dg ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.el ], [ true, %bb.dg ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.el ], [ %.sroa.04.1.i, %bb.dg ]
  %i.hl = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.hl, label %.thread84.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECs7BtpbLEd5q3_9elfshaker.exit.i

bb.dg:                                            ; preds = %bb.ee, %bb.dh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.de
  %.sroa.07.3.i = phi i8 [ 0, %bb.ee ], [ 1, %bb.de ], [ 0, %bb.dh ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.ee ], [ 1, %bb.de ], [ 1, %bb.dh ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i ] ; 2 uses
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1110
  %i.hn = load ptr, ptr %i.aj, align 8, !noalias !1110, !nonnull !6, !noundef !6
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.hn)
          to label %bb.dh unwind label %bb.dg, !noalias !1110

end_hunk_5
