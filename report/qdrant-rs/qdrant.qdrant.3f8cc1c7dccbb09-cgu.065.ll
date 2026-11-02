Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.065?download=true
inline.NumInlined: 681
inline.NumDeleted: 413
begin_hunk_0_@_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionINtNtNtB1O_3num7nonzero7NonZerojEEEECsl8OoimOLbh_6qdrant:bb.a

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEEB3O_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB2l_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB2F_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB2F_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB2F_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB2F_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([304 x i8]) align 16 captures(address) dereferenceable(304) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([304 x i8]) align 16 captures(address) dereferenceable(304) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCs607s0NAIaWN_7segment5types18QuantizationConfigEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types18QuantizationConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types18QuantizationConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types18QuantizationConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types18QuantizationConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types18QuantizationConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCs607s0NAIaWN_7segment5types21VectorsConfigDefaultsEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types21VectorsConfigDefaultsENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types21VectorsConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types21VectorsConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types21VectorsConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs607s0NAIaWN_7segment5types21VectorsConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCs607s0NAIaWN_7segment5types22StrictModeSparseConfigEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14
end_hunk_0
begin_hunk_1_@_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant:bb.a

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB2S_(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB2S_(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1J_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types19collection_defaults24CollectionConfigDefaultsEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([352 x i8]) align 16 captures(address) dereferenceable(352) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types19collection_defaults24CollectionConfigDefaultsENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([352 x i8]) align 16 captures(address) dereferenceable(352) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types19collection_defaults24CollectionConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types19collection_defaults24CollectionConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types19collection_defaults24CollectionConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types19collection_defaults24CollectionConfigDefaultsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common8io_uring11IoUringModeEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment6common8io_uring11IoUringModeENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common8io_uring11IoUringModeEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common8io_uring11IoUringModeEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common8io_uring11IoUringModeEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common8io_uring11IoUringModeEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations11config_diff20OptimizersConfigDiffEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations11config_diff20OptimizersConfigDiffENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations11config_diff20OptimizersConfigDiffEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations11config_diff20OptimizersConfigDiffEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations11config_diff20OptimizersConfigDiffEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations11config_diff20OptimizersConfigDiffEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager8S3ConfigEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager8S3ConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager8S3ConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager8S3ConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager8S3ConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager8S3ConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema22MaxOptimizationThreadsEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema22MaxOptimizationThreadsENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema22MaxOptimizationThreadsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema22MaxOptimizationThreadsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema22MaxOptimizationThreadsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema22MaxOptimizationThreadsEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEEEB2U_(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1r_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEEEB2U_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1r_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1L_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB2W_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXse_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigENtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1t_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1N_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1N_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1N_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1N_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionbEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14
end_hunk_1
begin_hunk_2_@_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCs607s0NAIaWN_7segment5types16HnswGlobalConfigEECsl8OoimOLbh_6qdrant:bb.a

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsG258MDvU3F_3std4path7PathBufEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXsr_NtNtCs4NSHK7GLW4I_10serde_core2de5implsNtNtCsG258MDvU3F_3std4path7PathBufNtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsG258MDvU3F_3std4path7PathBufENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsG258MDvU3F_3std4path7PathBufENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsG258MDvU3F_3std4path7PathBufENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsG258MDvU3F_3std4path7PathBufENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection18optimizers_builder16OptimizersConfigEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsPYQCUnoTxQ_10collection18optimizers_builder1__NtB5_16OptimizersConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection18optimizers_builder16OptimizersConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection18optimizers_builder16OptimizersConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection18optimizers_builder16OptimizersConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection18optimizers_builder16OptimizersConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection6config9WalConfigEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsPYQCUnoTxQ_10collection6config1__NtB5_9WalConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection6config9WalConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection6config9WalConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection6config9WalConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsPYQCUnoTxQ_10collection6config9WalConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXs6_NtNtCs4NSHK7GLW4I_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5audit13AuditRotationEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsgGgPqgSfnMH_7storage5audits_1__NtB5_13AuditRotationNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5audit13AuditRotationENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5audit13AuditRotationENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5audit13AuditRotationENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5audit13AuditRotationENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([1088 x i8]) align 16 captures(address) dereferenceable(1088) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsgGgPqgSfnMH_7storage5typess0_1__NtB5_13StorageConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([1088 x i8]) align 16 captures(address) dereferenceable(1088) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types17PerformanceConfigEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsgGgPqgSfnMH_7storage5types1__NtB5_17PerformanceConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types17PerformanceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types17PerformanceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !11, !noundef !6
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types17PerformanceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types17PerformanceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigEEB2v_(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsl8OoimOLbh_6qdrant8settingss_1__NtB5_13ClusterConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB2v_(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 16 captures(address) dereferenceable(224) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsl8OoimOLbh_6qdrant8settings1__NtB5_13ServiceConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB7_(ptr noalias nofree noundef nonnull sret([224 x i8]) align 16 captures(address) dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !11, !noundef !6
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings15ConsensusConfigEEB2v_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtCsl8OoimOLbh_6qdrant8settingss1_1__NtB5_15ConsensusConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB7_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings15ConsensusConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings15ConsensusConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings15ConsensusConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings15ConsensusConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1n_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings9P2pConfigEEB2v_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14
end_hunk_2
begin_hunk_3_@_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager15SnapshotsConfigEECsl8OoimOLbh_6qdrant:bb.a

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager22SnapshotsStorageConfigEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtNtCsPYQCUnoTxQ_10collection6common17snapshots_managers_1__NtB5_22SnapshotsStorageConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager22SnapshotsStorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager22SnapshotsStorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager22SnapshotsStorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsPYQCUnoTxQ_10collection6common17snapshots_manager22SnapshotsStorageConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtNtCsl8OoimOLbh_6qdrant6common8debuggers3_1__NtB5_14DebuggerConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB9_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 16 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtNtCsl8OoimOLbh_6qdrant7tracing6config1__NtB5_12LoggerConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB9_(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk6ConfigEEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB5_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB9_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk6ConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk6ConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit: ; preds = %bb.b
  %i.i = load i64, ptr %0, align 16, !range !10, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk6ConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk6ConfigENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB1p_.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCslmvYCXbQjWR_6common4mmap6advice6AdviceEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXNvNtNtCslmvYCXbQjWR_6common4mmap6advice1__NtB5_6AdviceNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCslmvYCXbQjWR_6common4mmap6advice6AdviceENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCslmvYCXbQjWR_6common4mmap6advice6AdviceENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCslmvYCXbQjWR_6common4mmap6advice6AdviceENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCslmvYCXbQjWR_6common4mmap6advice6AdviceENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDatabEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvXs1_NtNtCs4NSHK7GLW4I_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatabENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #10
          to label %common.resume unwind label %bb.j

_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatabENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.j, -2
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatabENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  invoke void @_RNvMs_NtCshE3sgg5Qsfb_6config5errorNtB4_11ConfigError11prepend_key(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %_RINvXs3_NtCs4NSHK7GLW4I_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatabENtB6_15DeserializeSeed11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant.exit, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDatadEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 8 uses
  %i.b = alloca [96 x i8], align 16               ; 2 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEE9pop_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %i.e, align 16, !range !5, !noundef !6
  %.not = icmp eq i64 %i.g, -1
end_hunk_3
