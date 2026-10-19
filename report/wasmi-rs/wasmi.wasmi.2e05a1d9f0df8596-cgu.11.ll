Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.11?download=true
inline.NumInlined: 472
inline.NumDeleted: 174
begin_hunk_0_@_RINvNtCscK5W4trzgIe_6anyhow5error11object_dropNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorECs3WYoaQ2jqaU_5wasmi:bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.f unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17context_drop_restNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i128, ptr %1, align 8, !noundef !6
  %i.c = icmp eq i128 %i.b, 15453728973202583556688547183702785147
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !9, !alias.scope !171, !noundef !6
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #25
          to label %bb.j unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !172 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !173, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !174
  br label %bb.j

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !172 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorNtNtBG_6string6StringINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !173, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorNtNtBG_6string6StringINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.j ], [ %eh.lpad-body.i3, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #23
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorNtNtBG_6string6StringINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.g, %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #23
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !9, !alias.scope !177, !noundef !6
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !178, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtB4_2io5error5ErrorEECs3WYoaQ2jqaU_5wasmi(ptr nonnull %.val1.i.i) #25
          to label %bb.r unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2: ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !178, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  %i.x = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringENtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit
    i64 3, label %bb.n
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringENtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit
    i64 1, label %bb.o
  ], !prof !10

default.unreachable:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2
  unreachable

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2
  %i.z = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.x, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.assume(i1 %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringENtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2
  %i.ac = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !180, !noalias !179
  store i8 3, ptr %i.a, align 8, !alias.scope !180, !noalias !179
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringENtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %eh.lpad-body.i3 = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.u, %bb.m ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #23
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringENtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i2, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #23
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringENtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorNtNtBG_6string6StringINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17context_drop_restReNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !6
  %i.b = icmp eq i128 %i.a, 48856307742461772449142782864826955356
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !9, !noundef !6
  %i.e = icmp eq i64 %i.d, 2                      ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %2

common.resume:                                    ; preds = %bb.f, %bb.h, %2
  %common.resume.op = phi { ptr, i32 } [ %3, %2 ], [ %i.l, %bb.h ], [ %i.h, %bb.f ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #23
  resume { ptr, i32 } %common.resume.op

2:                                                ; preds = %bb.c
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i, %bb.c, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtCs7GZl3f28242_6wiggle5error10GuestErrorECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !185, !noundef !6
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs7GZl3f28242_6wiggle5error10GuestErrorEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs7GZl3f28242_6wiggle5error10GuestErrorEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8) #23
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs7GZl3f28242_6wiggle5error10GuestErrorEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !190, !noundef !6
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #23
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtCsi0TlgjRRUlD_11wasi_common12string_array16StringArrayErrorECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !195, !noundef !6
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsi0TlgjRRUlD_11wasi_common12string_array16StringArrayErrorEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsi0TlgjRRUlD_11wasi_common12string_array16StringArrayErrorEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsi0TlgjRRUlD_11wasi_common12string_array16StringArrayErrorEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !200, !noundef !6
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtB4_2io5error5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !205, !noundef !6
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontReECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !210, !noundef !6
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropReEEEECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropReEEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #23
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropReEEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCscK5W4trzgIe_6anyhow5error22context_chain_downcastNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr nofree noundef nonnull readonly captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !6
  %i.b = icmp eq i128 %i.a, 15453728973202583556688547183702785147
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !11, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error23context_chain_drop_restNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !6
  %i.b = icmp eq i128 %i.a, 15453728973202583556688547183702785147
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !231, !noundef !6
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECs3WYoaQ2jqaU_5wasmi.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
end_hunk_0
