Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.07?download=true
inline.NumInlined: 859
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorEECsjHtSR7YjKD4_8xet_data:bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.v:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ad = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !337, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvXs4_NtCsbdFR6LubKyl_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.x:                                             ; preds = %bb.v
  %.val.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !337, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECsjHtSR7YjKD4_8xet_data(ptr nonnull %.val.i.i), !noalias !337
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.y:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load ptr, ptr %i.ag, align 8, !alias.scope !333, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECsjHtSR7YjKD4_8xet_data(ptr nonnull %.val1.i)
          to label %bb.au unwind label %bb.at, !noalias !333

bb.z:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit11.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit11.i: ; preds = %bb.z
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.ac:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit13.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %common.resume.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit13.i: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.af:                                            ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !range !6, !alias.scope !338, !noundef !5
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  br i1 %i.ap, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.aj, %bb.ag
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.am:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs4_NtCsbdFR6LubKyl_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.an:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit15.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %common.resume.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit15.i: ; preds = %bb.an
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.aq:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit17.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %common.resume.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit17.i: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.at:                                            ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd) #25
          to label %common.resume.i unwind label %bb.ax

bb.au:                                            ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit19.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %common.resume.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit19.i: ; preds = %bb.au
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit

bb.ax:                                            ; preds = %bb.at
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit5.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit7.i, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit9.i, %bb.w, %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit11.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit13.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECsjHtSR7YjKD4_8xet_data.exit.i, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit15.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit17.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit19.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtB4_2io5error5ErrorEECsjHtSR7YjKD4_8xet_data(ptr %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.16.val to i64             ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit
    i64 1, label %bb.c
  ], !prof !21

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.16.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.16.val, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !341
  store i8 3, ptr %i.a, align 8, !alias.scope !341
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !344, !noundef !5
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !344, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !344 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !344 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !344

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !19, !invariant.load !5, !noalias !344 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !22, !invariant.load !5, !noalias !344
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #29, !noalias !344
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECsjHtSR7YjKD4_8xet_data.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !19, !invariant.load !5, !noalias !344 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data.exit4.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !22, !invariant.load !5, !noalias !344
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #29, !noalias !344
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data.exit4.i.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data.exit4.i.i.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECsjHtSR7YjKD4_8xet_data(ptr %.24.val, ptr nofree readonly captures(none) %.32.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.24.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.32.val) ]
  %i.b = load ptr, ptr %.32.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.24.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.32.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.24.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data.exit4.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.32.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.24.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #29
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data.exit4.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data.exit4.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsjHtSR7YjKD4_8xet_data(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(1400) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #29
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io4util5ChainINtBE_4TakeNtNtCsG258MDvU3F_3std2fs4FileEINtNtBG_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i32, ptr %i.a, align 8, !range !16, !noundef !5
  %i.b = tail call noundef i32 @close(i32 noundef %.val) #29 ; 0 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjHtSR7YjKD4_8xet_data.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsjHtSR7YjKD4_8xet_data.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(1928) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXNtCs9cMRaHlbVM3_8arrayvec8arrayvecINtB2_8ArrayVecAhj20_Kj37_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 4 dereferenceable(1764) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsavSoWrwY6uL_6blake36HasherECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsavSoWrwY6uL_6blake36HasherECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %.val = load i32, ptr %i.b, align 8, !range !16, !noundef !5
  %i.c = tail call noundef i32 @close(i32 noundef %.val) #29 ; 0 uses
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorECsjHtSR7YjKD4_8xet_data:bb.a
  %i.x = icmp ne i64 %i.w, 1095216660480
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !392
  store i8 3, ptr %i.b, align 8, !alias.scope !392
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.i, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.l:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.o:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit6 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit6: ; preds = %bb.o
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.ba, %bb.az, %bb.aw, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i, %bb.aj, %bb.f, %bb.e, %bb.b, %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECsjHtSR7YjKD4_8xet_data.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit18, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.r:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit8 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit8: ; preds = %bb.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit10 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit10: ; preds = %bb.u
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.x:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit12 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit12: ; preds = %bb.x
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit14 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit14: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.ad:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit16 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit16: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.ag:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit18 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit18: ; preds = %bb.ag
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.aj:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.ay, align 8, !range !393, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.az, align 8           ; 4 uses
  %i.ba = icmp ne i64 %.val3, 6
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %.val3, 7
  br i1 %i.bb, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bc = ptrtoint ptr %.val4 to i64              ; 2 uses
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i
    i64 3, label %bb.al
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i
    i64 1, label %bb.am
  ], !prof !21

bb.al:                                            ; preds = %bb.ak
  %i.be = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.bf = and i64 %i.bc, 1095216660480
  %i.bg = icmp ne i64 %i.bf, 1095216660480
  tail call void @llvm.assume(i1 %i.be)
  tail call void @llvm.assume(i1 %i.bg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.bh = getelementptr i8, ptr %.val4, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !alias.scope !394
  store i8 3, ptr %i.a, align 8, !alias.scope !394
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.an:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !6, !alias.scope !395, !noundef !5
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %i.bl, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ar:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.ao, %bb.ar
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.au:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(32) %i.br)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.av:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !396, !noundef !5
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.bu, align 8, !alias.scope !396, !noundef !5 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.bv, align 8, !alias.scope !396 ; 6 uses
  %i.bw = icmp eq ptr %.val.i, null
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.bx = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !396 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.bx(ptr noundef nonnull %.val.i)
          to label %bb.az unwind label %bb.bb, !noalias !396

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !19, !invariant.load !5, !noalias !396 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !22, !invariant.load !5, !noalias !396
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #29, !noalias !396
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECsjHtSR7YjKD4_8xet_data.exit

bb.bb:                                            ; preds = %bb.ay
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !19, !invariant.load !5, !noalias !396 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !22, !invariant.load !5, !noalias !396
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #29, !noalias !396
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7SkU8gPisFf_4redb5error10TableErrorECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !24, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 4, label %bb.o
    i64 5, label %bb.r
    i64 6, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7SkU8gPisFf_4redb5error12StorageErrorECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body18, %bb.ab, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.ab ], [ %i.i, %bb.g ], [ %i.l, %bb.j ], [ %i.o, %bb.m ], [ %i.r, %bb.p ], [ %i.u, %bb.s ], [ %i.x, %bb.v ], [ %.pn, %.body18 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit4: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.ad

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutatorINtB2_12MutateHelperReNtNtB4_15table_tree_base23InternalTableDefinitionE16conditional_freeCsjHtSR7YjKD4_8xet_data:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyE4lockCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.t = load i64, ptr %i.c, align 8, !range !6, !alias.scope !1345, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1346
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1345, !nonnull !5, !align !17, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !4, !alias.scope !1345, !noundef !5
  store ptr %i.w, ptr %i.a, align 8, !noalias !1346
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %i.z, align 8, !noalias !1346
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #30
          to label %bb.g unwind label %bb.f, !noalias !1345

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %common.resume unwind label %bb.h, !noalias !1345

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1345
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.am, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1345, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !4, !alias.scope !1345, !noundef !5 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.al = invoke noundef zeroext i1 @_RNvMs_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_managerNtB4_19TransactionalMemory19free_if_uncommitted(ptr noundef nonnull align 16 %i.aj, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ak)
          to label %bb.j unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.q, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberE8push_mutCsjHtSR7YjKD4_8xet_data.exit
  ret void

bb.i:                                             ; preds = %bb.l, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEECsjHtSR7YjKD4_8xet_data(ptr nonnull %i.ad, i8 %i.af) #25
          to label %common.resume unwind label %bb.r

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.al, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !align !17, !noundef !5 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1347, !noundef !5 ; 3 uses
  %i.ar = load i64, ptr %i.ao, align 8, !range !19, !alias.scope !1347, !noundef !5
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.l, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberE8push_mutCsjHtSR7YjKD4_8xet_data.exit4

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #28
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberE8push_mutCsjHtSR7YjKD4_8xet_data.exit4 unwind label %bb.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberE8push_mutCsjHtSR7YjKD4_8xet_data.exit4: ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !1347, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.av, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.aw = add i64 %i.aq, 1
  store i64 %i.aw, ptr %i.ap, align 8, !alias.scope !1347
  br label %bb.m

bb.m:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberE8push_mutCsjHtSR7YjKD4_8xet_data.exit4, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.az = and i64 %i.ay, 9223372036854775807
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bb = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.bb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.ax monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bc = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEECsjHtSR7YjKD4_8xet_data.exit, !prof !7

bb.q:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEECsjHtSR7YjKD4_8xet_data.exit

bb.r:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE16get_or_init_slowCsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB19_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEECsjHtSR7YjKD4_8xet_data)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextECsjHtSR7YjKD4_8xet_data)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_8BtreeMutReNtNtB7_15table_tree_base23InternalTableDefinitionE6insertCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %1, ptr nofree readonly captures(address, read_provenance) %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.342.i = alloca [88 x i8], align 8        ; 5 uses
  %.sroa.7.i = alloca [12 x i8], align 8          ; 7 uses
  %.sroa.032.i = alloca [48 x i8], align 8        ; 6 uses
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.625.i = alloca [24 x i8], align 8        ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [88 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.616.i = alloca [24 x i8], align 8        ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 9 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.67.i = alloca [24 x i8], align 8         ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [256 x i8], align 16              ; 8 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [256 x i8], align 16              ; 27 uses
  %i.s = alloca [12 x i8], align 4                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10 = alloca [136 x i8], align 8          ; 12 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.u = alloca [160 x i8], align 8               ; 10 uses
  %i.v = alloca [96 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load ptr, ptr %i.y, align 16, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEE4lockCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.ab = load i64, ptr %i.x, align 8, !range !6, !alias.scope !1390, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1390
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1390, !nonnull !5, !align !17, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !4, !alias.scope !1390, !noundef !5
  store ptr %i.ae, ptr %i.t, align 8, !noalias !1390
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %i.ag, ptr %i.ah, align 8, !noalias !1390
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #30
          to label %bb.d unwind label %bb.c, !noalias !1390

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #25
          to label %common.resume unwind label %bb.e, !noalias !1390

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1390
  unreachable

common.resume:                                    ; preds = %.body26, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn11, %.body26 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1390, !nonnull !5, !align !17, !noundef !5 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !4, !alias.scope !1390, !noundef !5 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !nonnull !5, !noundef !5
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit
  %i.at = load ptr, ptr %i.ap, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.bp, label %bb.h

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsjHtSR7YjKD4_8xet_data.exit
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.az = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  store ptr %1, ptr %i.w, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i8 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  store ptr %i.at, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ay, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 11 uses
  store ptr %i.az, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.342.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.i)
  %i.be = load i128, ptr %1, align 16, !range !36, !noalias !1392, !noundef !5
  %i.bf = trunc nuw i128 %i.be to i1
  br i1 %i.bf, label %bb.i, label %bb.ba

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1392
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.bg, i64 12, i1 false), !noalias !1393
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i128, ptr %i.bh, align 16, !noalias !1393, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i64, ptr %i.bj, align 16, !noalias !1393, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  invoke void @_RNvMs_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_managerNtB4_19TransactionalMemory8get_page(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull align 16 %i.bl, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.s)
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.i
  %i.bm = load ptr, ptr %i.o, align 8, !noalias !1392, !noundef !5 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.noexc
  %3 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, i64 24, i1 false), !noalias !1394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1392
  br label %bb.ay

bb.k:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !1395
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #28
          to label %.body unwind label %bb.av, !noalias !1393

bb.m:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.459.0..sroa_idx.i, i64 24, i1 false), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1392
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, i64 24, i1 false), !noalias !1392
  store ptr %i.bm, ptr %i.p, align 8, !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1392
  invoke void @_RNvXs2_NtNtCs7SkU8gPisFf_4redb10tree_store15table_tree_baseNtB5_23InternalTableDefinitionNtNtB9_5types5Value8as_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %2)
          to label %bb.n unwind label %bb.k, !noalias !1393

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val88.i = load ptr, ptr %i.br, align 8, !noalias !1392, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val89.i = load i64, ptr %i.bs, align 8, !noalias !1392, !noundef !5
  invoke fastcc void @_RNvMNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutatorINtB2_12MutateHelperReNtNtB4_15table_tree_base23InternalTableDefinitionE13insert_helperCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 16 captures(none) dereferenceable(256) %i.q, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.p, i128 noundef %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val88.i, i64 noundef %.val89.i)
          to label %bb.o unwind label %bb.az, !noalias !1396

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1392
  %i.bt = load i64, ptr %i.q, align 16, !range !12, !noalias !1392, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !1392
  br i1 %i.bu, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1394
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.q, !noalias !1393

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.r, !noalias !1393

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1393
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.noexc20 unwind label %bb.bq

.noexc20:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1392
  br label %bb.ay

bb.s:                                             ; preds = %bb.o
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.562.0..sroa_idx.i, i64 224, i1 false), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1392
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1392
  store i64 %i.bt, ptr %i.r, align 16, !noalias !1392
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.u unwind label %bb.t, !noalias !1393

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.v, !noalias !1393

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit94.i unwind label %bb.w, !noalias !1393

bb.v:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1393
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit94.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.cb = load i64, ptr %i.r, align 16, !range !9, !noalias !1392, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.cb, -1
  %i.cc = zext i1 %.not.i to i64
  %.sroa.012.0.i = add i64 %i.bk, %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 16, !range !23, !noalias !1392, !noundef !5
  %.not72.i = icmp eq i64 %i.ce, -1
  br i1 %.not72.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit94.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(12) %i.cf, i64 12, i1 false), !noalias !1392
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.ch = load i128, ptr %i.cg, align 16, !noalias !1392, !noundef !5
  br label %bb.aq

bb.y:                                             ; preds = %bb.aw, %bb.ab
  %.pn73.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.aw ], [ %lpad.thr_comm.split-lp.i, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #25
          to label %.body.thread.i unwind label %bb.av, !noalias !1393

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 16 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1392
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(12) %i.ci, i64 12, i1 false), !noalias !1392
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.ck = load i128, ptr %i.cj, align 16, !noalias !1392, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1392
  %i.cl = load ptr, ptr %i.bd, align 8, !alias.scope !1391, !nonnull !5, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.k, ptr noundef nonnull align 16 %i.bl, ptr noundef nonnull align 8 %i.cm, i64 noundef 2, i64 noundef 0, i64 undef)
          to label %bb.aa unwind label %bb.ab, !noalias !1393

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1392
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 16 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !1392
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.cp = load i128, ptr %i.co, align 16, !noalias !1392, !noundef !5
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder10push_child(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, i128 noundef %i.cp)
          to label %bb.ac unwind label %bb.aw, !noalias !1393

bb.ab:                                            ; preds = %bb.ak, %bb.ae, %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1392
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !1392, !nonnull !5, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !1392, !noundef !5
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder8push_key(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.ct)
          to label %bb.ad unwind label %bb.aw, !noalias !1393

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder10push_child(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.l, i128 noundef %i.ck)
          to label %bb.ae unwind label %bb.aw, !noalias !1393

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !1392
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder5build(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
          to label %bb.af unwind label %bb.ab, !noalias !1393

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1392
  %i.cu = load ptr, ptr %i.h, align 8, !noalias !1392, !noundef !5 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !noalias !1392
  br i1 %i.cv, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i, i64 24, i1 false), !noalias !1394
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1392
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ai unwind label %bb.ah, !noalias !1393

bb.ah:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.thread.i unwind label %bb.aj, !noalias !1393

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjHtSR7YjKD4_8xet_data.exit99.i unwind label %bb.ap, !noalias !1393

bb.aj:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1393
  unreachable

bb.ak:                                            ; preds = %bb.af
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.565.0..sroa_idx.i, i64 16, i1 false), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1392
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.421.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i, i64 24, i1 false), !noalias !1392
  store ptr %i.cu, ptr %i.i, align 8, !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.522.0..sroa_idx.i, i64 12, i1 false), !noalias !1392
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base7PageMutECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.al unwind label %bb.ab, !noalias !1393

end_hunk_2
