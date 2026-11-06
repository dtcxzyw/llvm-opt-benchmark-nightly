Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.09?download=true
inline.NumInlined: 2437
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op7message7MessageECshnt8FRa5Rut_11native_ping:bb.a

bb.aa:                                            ; preds = %.body16, %.body19, %.body12, %.body9, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata3soa3SOAECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(80) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #37
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4tsig4TSIGECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !range !31, !alias.scope !1981, !noundef !10
  %i.c = icmp samesign ugt i16 %i.b, 1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4tsig13TsigAlgorithmECshnt8FRa5Rut_11native_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4tsig13TsigAlgorithmECshnt8FRa5Rut_11native_ping.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #37
          to label %.body unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4tsig13TsigAlgorithmECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4tsig13TsigAlgorithmECshnt8FRa5Rut_11native_ping.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4tsig13TsigAlgorithmECshnt8FRa5Rut_11native_ping.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ], [ %i.e, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #37
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit4 unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  ret void

bb.j:                                             ; preds = %.body, %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !17, !alias.scope !1986, !noundef !10
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECshnt8FRa5Rut_11native_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECshnt8FRa5Rut_11native_ping.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj18_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #37
          to label %common.resume unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i16, ptr %i.h, align 8, !range !17, !alias.scope !1987, !noundef !10
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj18_EECshnt8FRa5Rut_11native_ping.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECshnt8FRa5Rut_11native_ping.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i2: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj18_EECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj18_EECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECshnt8FRa5Rut_11native_ping.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshnt8FRa5Rut_11native_ping.exit.i2
  ret void

bb.i:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !2000
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !2001
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !2002
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !2003
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCshnt8FRa5Rut_11native_ping.exit, label %bb.a

_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !2004
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !2005
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !2004
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !2005
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !2004
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !2005
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !2004
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !2005
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !2004
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !2005
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !2004
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !2005
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !2004
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !2005
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !2004
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !2005
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsc13h7DQFCSE_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !2010
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECshnt8FRa5Rut_11native_ping.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsc13h7DQFCSE_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  invoke fastcc void @_RNvXs5_NtNtCsc13h7DQFCSE_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCshnt8FRa5Rut_11native_ping(ptr nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !2019
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECshnt8FRa5Rut_11native_ping.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !2020
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNvXs5_NtNtCsc13h7DQFCSE_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
  br label %_RNvXs5_NtNtCsc13h7DQFCSE_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCshnt8FRa5Rut_11native_ping.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNvXs5_NtNtCsc13h7DQFCSE_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCsc13h7DQFCSE_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCshnt8FRa5Rut_11native_ping.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @2, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsc13h7DQFCSE_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEECshnt8FRa5Rut_11native_ping(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs5_NtNtCsc13h7DQFCSE_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCshnt8FRa5Rut_11native_ping(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECshnt8FRa5Rut_11native_ping(<2 x i64> %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENCNCNvMs0_NtB2a_16name_server_poolINtB4B_9PoolStateB35_E8try_send0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCB4t_s_00ENCINvXsc_B6f_B6c_INtNtB5D_7collect12FromIteratorB7t_E9from_iterBN_E0ECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [17 x i8], align 1                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [17 x i8], align 1                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [280 x i8], align 8               ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [2032 x i8], align 8              ; 13 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !2048
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !2049, !noundef !10 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !alias.scope !2049, !noundef !10 ; 2 uses
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.53.0.copyload, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 312
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 569
  %.sroa.95.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2024
  %.pre = load i64, ptr %i.ab, align 8, !alias.scope !2050
  %i.ay = icmp ugt i64 %.pre, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.aj, %.lr.ph.i
  %i.az = phi i64 [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.aj ] ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawDrainTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping:bb.a
  br label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !3753
  %i.j = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -896 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.j to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i                ; 2 uses
  store i16 %i.q, ptr %i.d, align 8, !alias.scope !3753
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.g, -1                         ; 3 uses
  store i64 %i.t, ptr %i.a, align 8, !alias.scope !3752
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u), !noalias !3752
  %.old3.i = icmp eq i64 %i.t, 0
  br i1 %.old3.i, label %_RNvMso_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_7RawIterTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE13drop_elementsCshnt8FRa5Rut_11native_ping.exit, label %bb.b

_RNvMso_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_7RawIterTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE13drop_elementsCshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8, !noundef !10 ; 5 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_7RawIterTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE13drop_elementsCshnt8FRa5Rut_11native_ping.exit
  %i.z = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10
  %i.aa = add i64 %i.x, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.z, i8 -1, i64 %i.aa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMso_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_7RawIterTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE13drop_elementsCshnt8FRa5Rut_11native_ping.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.ab, align 8
  %i.ac = icmp ult i64 %i.x, 8
  %i.ad = add i64 %i.x, 1
  %i.ae = lshr i64 %i.ad, 3
  %i.af = mul nuw i64 %i.ae, 7
  %.sroa.0.0 = select i1 %i.ac, i64 %i.x, i64 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i32, ptr } @_RNvXsL_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawDrainTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !3757, !noundef !10 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !3757 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB11_10connection6stream6SharedEEEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !3757
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !3757
  store ptr %i.j, ptr %0, align 8, !alias.scope !3757
  br label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB11_10connection6stream6SharedEEEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.g, align 16, !noalias !3757
  %i.i = icmp sgt <16 x i8> %.val9.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB11_10connection6stream6SharedEEEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !3757
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.u = load i32, ptr %i.t, align 8, !noundef !10
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB11_10connection6stream6SharedEEEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit
  %.sroa.2.0 = phi ptr [ %i.w, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB11_10connection6stream6SharedEEEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB11_10connection6stream6SharedEEEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit ], [ undef, %bb.a ]
  %i.x = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %i.y = insertvalue { i32, ptr } %i.x, ptr %.sroa.2.0, 1
  ret { i32, ptr } %i.y
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsL_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawDrainTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3760)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !3760, !noundef !10 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !3760 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !3760
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !3760
  store ptr %i.j, ptr %1, align 8, !alias.scope !3760
  br label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.g, align 16, !noalias !3760
  %i.i = icmp sgt <16 x i8> %.val9.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -896 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !3760
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [56 x i8], ptr %i.l, i64 %i.q
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 -1, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE9next_implKb0_ECshnt8FRa5Rut_11native_ping.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #13 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1aYz1mjYrQZ_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3765)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !3764 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !3764 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !3764 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !3764 ; 5 uses
  %2 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32> ; 2 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0>
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0>
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0>
  %3 = bitcast <2 x i64> %i.f to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.g to <4 x i32>        ; 2 uses
  %5 = bitcast <2 x i64> %i.h to <4 x i32>        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.042.0110.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %6 = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %7 = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %8 = phi <4 x i32> [ %2, %bb.b ], [ %16, %bb.c ]
  %9 = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %3, %bb.b ], [ %17, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.n = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.o = phi <4 x i32> [ %4, %bb.b ], [ %18, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.q = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.s = phi <4 x i32> [ %5, %bb.b ], [ %19, %bb.c ]
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0110.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %7, %6                     ; 2 uses
  %i.w = xor <4 x i32> %8, %i.v                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %9                   ; 2 uses
  %i.z = xor <4 x i32> %i.y, %7                   ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.j, %i.i                ; 2 uses
  %i.ai = xor <4 x i32> %i.k, %i.ah               ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.l               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.j               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.n, %i.m                ; 2 uses
  %i.au = xor <4 x i32> %i.o, %i.at               ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.p               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.n               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.r, %i.q                ; 2 uses
  %i.bg = xor <4 x i32> %i.s, %i.bf               ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.r               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %13 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %14 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %15 = add <4 x i32> %i.ag, %i.bs                ; 2 uses
  %i.by = xor <4 x i32> %15, %10                  ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %15                ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %i.ck = xor <4 x i32> %i.cj, %11                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %14                ; 2 uses
  %i.di = xor <4 x i32> %i.dh, %13                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshnt8FRa5Rut_11native_ping.exit, label %bb.c

_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %i.ee = add <4 x i32> %16, %2
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %i.ei = add <4 x i32> %17, %3
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %i.em = add <4 x i32> %18, %4
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %i.eq = add <4 x i32> %19, %5
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !3765, !noalias !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !3765, !noalias !10
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !3764
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECshnt8FRa5Rut_11native_ping(<2 x i64> %i.er) #40
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !3764
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshnt8FRa5Rut_11native_ping.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvXs_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB4_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtB1m_4xfer10dns_handle9DnsHandle4sendCshnt8FRa5Rut_11native_ping(ptr %.80.val, ptr %.88.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(280) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.015.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.013.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.011.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0.sroa.0 = alloca [496 x i8], align 8    ; 3 uses
  %i.l = alloca [688 x i8], align 8               ; 12 uses
  %.sroa.01 = alloca [216 x i8], align 8          ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.80.val) ]
  %i.n = atomicrmw add ptr %.80.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.80.val, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  %i.p = getelementptr inbounds nuw i8, ptr %.80.val, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.i)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3782, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 464
  %i.u = load i64, ptr %i.t, align 8, !noalias !3782, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3782
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3783
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  invoke void @_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie5innerINtB5_5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3783
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.c, !noalias !3783

bb.c:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie5inner5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #37
          to label %bb.z unwind label %bb.d, !noalias !3783

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !3783
  unreachable

_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit.i: ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.aa = load i64, ptr %i.z, align 8, !noalias !3783, !noundef !10
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !3782
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3782
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3784
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  invoke void @_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie5innerINtB5_5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ab)
          to label %.noexc.i unwind label %bb.g, !noalias !3782

.noexc.i:                                         ; preds = %_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3784
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.h unwind label %bb.e, !noalias !3784

bb.e:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie5inner5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #37
          to label %.body.i unwind label %bb.f, !noalias !3784

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !3784
  unreachable

.body.i:                                          ; preds = %.body5.i, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body5.i ], [ %i.af, %bb.g ], [ %i.ad, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie3set9PrefixSetNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k) #37
          to label %bb.z unwind label %bb.p, !noalias !3782

bb.g:                                             ; preds = %_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !3784, !noundef !10
  %.sroa.011.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.011.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.011.i, i64 48, i1 false), !noalias !3782
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.ah, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3782
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3785
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  invoke void @_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie5innerINtB5_5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv6NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.ai)
          to label %.noexc4.i unwind label %bb.k, !noalias !3782

.noexc4.i:                                        ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3785
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.l unwind label %bb.i, !noalias !3785

bb.i:                                             ; preds = %.noexc4.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie5inner5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv6NetuEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #37
          to label %.body5.i unwind label %bb.j, !noalias !3785

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !3785
  unreachable

.body5.i:                                         ; preds = %.body8.i, %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body9.i, %.body8.i ], [ %i.am, %bb.k ], [ %i.ak, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie3set9PrefixSetNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #37
          to label %.body.i unwind label %bb.p, !noalias !3782

end_hunk_1
