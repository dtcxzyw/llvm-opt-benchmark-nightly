Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.06?download=true
inline.NumInlined: 340
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupEBJ_:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorb16ConfigValueGroupEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enum10ConfigEnumEBH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enum10ConfigEnumEBH_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shard16ConfigValueGroupEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !81, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7session16ConfigValueGroupEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #21
          to label %bb.f unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !107, !noalias !108, !noundef !4 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !106, !noalias !109 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !107, !noalias !108, !nonnull !4, !noundef !4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !112, !noundef !4 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !113, !noalias !109
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !12, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !13

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !13

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !116, !noundef !4
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !14

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add nuw i64 %i.ab, 1                    ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !117, !noalias !118
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB5_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 14 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %i.ae = alloca [40 x i8], align 8               ; 14 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.26 = alloca [6 x i8], align 2            ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 31 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !301, !noalias !302, !noundef !4 ; 14 uses
  %.promoted.i57 = load i64, ptr %i.ak, align 8, !alias.scope !300, !noalias !303 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i57, %i.am
  br i1 %i.an, label %.lr.ph.i, label %.loopexit152

.lr.ph.i:                                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !301, !noalias !302, !nonnull !4, !noundef !4 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aq = phi i64 [ %.promoted.i57, %.lr.ph.i ], [ %i.at, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305), !noalias !298
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !306, !noundef !4 ; 3 uses
  switch i8 %i.as, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add nuw i64 %i.aq, 1                    ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !307, !noalias !303
  %exitcond.not.i58 = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i58, label %.loopexit152, label %bb.b

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  switch i8 %i.as, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit152:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !308
  store i64 5, ptr %i.aj, align 8, !noalias !308
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !298, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !308
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.aw = add i8 %i.as, -48
  %or.cond8.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond8.i, label %bb.cm, label %bb.cl, !prof !15

bb.e:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.ax = add nuw i64 %i.aq, 1                    ; 3 uses
  store i64 %i.ax, ptr %i.ak, align 8, !alias.scope !309, !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312), !noalias !298
  %exitcond.not.i51.not = icmp ult i64 %i.ax, %i.am
  br i1 %exitcond.not.i51.not, label %bb.f, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !313, !noundef !4
  %i.ba = add nuw i64 %i.aq, 2                    ; 3 uses
  store i64 %i.ba, ptr %i.ak, align 8, !alias.scope !314, !noalias !315
  %.not.i52 = icmp eq i8 %i.az, 117
  br i1 %.not.i52, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317), !noalias !298
  %exitcond.not.i51.1 = icmp eq i64 %i.ba, %i.am
  br i1 %exitcond.not.i51.1, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !318, !noundef !4
  %i.bd = add nuw i64 %i.aq, 3                    ; 3 uses
  store i64 %i.bd, ptr %i.ak, align 8, !alias.scope !319, !noalias !315
  %.not.i52.1 = icmp eq i8 %i.bc, 108
  br i1 %.not.i52.1, label %bb.i, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321), !noalias !298
  %exitcond.not.i51.2 = icmp eq i64 %i.bd, %i.am
  br i1 %exitcond.not.i51.2, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !322, !noundef !4
  %i.bg = add nuw i64 %i.aq, 4
  store i64 %i.bg, ptr %i.ak, align 8, !alias.scope !323, !noalias !315
  %.not.i52.2 = icmp eq i8 %i.bf, 108
  br i1 %.not.i52.2, label %.thread, label %bb.k, !prof !16

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !324
  store i64 5, ptr %i.i, align 8, !noalias !324
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !324
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !324
  store i64 9, ptr %i.h, align 8, !noalias !324
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !324
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.bj = add nuw i64 %i.aq, 1                    ; 3 uses
  store i64 %i.bj, ptr %i.ak, align 8, !alias.scope !326, !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329), !noalias !298
  %exitcond.not.i42.not = icmp ult i64 %i.bj, %i.am
  br i1 %exitcond.not.i42.not, label %bb.m, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !330, !noundef !4
  %i.bm = add nuw i64 %i.aq, 2                    ; 3 uses
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !331, !noalias !332
  %.not.i43 = icmp eq i8 %i.bl, 114
  br i1 %.not.i43, label %bb.n, label %bb.r, !prof !16

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334), !noalias !298
  %exitcond.not.i42.1 = icmp eq i64 %i.bm, %i.am
  br i1 %exitcond.not.i42.1, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !335, !noundef !4
  %i.bp = add nuw i64 %i.aq, 3                    ; 3 uses
  store i64 %i.bp, ptr %i.ak, align 8, !alias.scope !336, !noalias !332
  %.not.i43.1 = icmp eq i8 %i.bo, 117
  br i1 %.not.i43.1, label %bb.p, label %bb.r, !prof !16

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338), !noalias !298
  %exitcond.not.i42.2 = icmp eq i64 %i.bp, %i.am
  br i1 %exitcond.not.i42.2, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !339, !noundef !4
  %i.bs = add nuw i64 %i.aq, 4
  store i64 %i.bs, ptr %i.ak, align 8, !alias.scope !340, !noalias !332
  %.not.i43.2 = icmp eq i8 %i.br, 101
  br i1 %.not.i43.2, label %.thread, label %bb.r, !prof !16

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !341
  store i64 5, ptr %i.k, align 8, !noalias !341
  %i.bt = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !341
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !341
  store i64 9, ptr %i.j, align 8, !noalias !341
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !341
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.bv = add nuw i64 %i.aq, 1                    ; 3 uses
  store i64 %i.bv, ptr %i.ak, align 8, !alias.scope !343, !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !298
  %exitcond.not.i.not = icmp ult i64 %i.bv, %i.am
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !347, !noundef !4
  %i.by = add nuw i64 %i.aq, 2                    ; 3 uses
  store i64 %i.by, ptr %i.ak, align 8, !alias.scope !348, !noalias !349
  %.not.i37 = icmp eq i8 %i.bx, 97
  br i1 %.not.i37, label %bb.u, label %bb.aa, !prof !16

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351), !noalias !298
  %exitcond.not.i.1 = icmp eq i64 %i.by, %i.am
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !352, !noundef !4
  %i.cb = add nuw i64 %i.aq, 3                    ; 3 uses
  store i64 %i.cb, ptr %i.ak, align 8, !alias.scope !353, !noalias !349
  %.not.i37.1 = icmp eq i8 %i.ca, 108
  br i1 %.not.i37.1, label %bb.w, label %bb.aa, !prof !16

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355), !noalias !298
  %exitcond.not.i.2 = icmp eq i64 %i.cb, %i.am
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !356, !noundef !4
  %i.ce = add nuw i64 %i.aq, 4                    ; 3 uses
  store i64 %i.ce, ptr %i.ak, align 8, !alias.scope !357, !noalias !349
  %.not.i37.2 = icmp eq i8 %i.cd, 115
  br i1 %.not.i37.2, label %bb.y, label %bb.aa, !prof !16

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358), !noalias !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359), !noalias !298
  %exitcond.not.i.3 = icmp eq i64 %i.ce, %i.am
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !360, !noundef !4
  %i.ch = add nuw i64 %i.aq, 5
  store i64 %i.ch, ptr %i.ak, align 8, !alias.scope !361, !noalias !349
  %.not.i37.3 = icmp eq i8 %i.cg, 101
  br i1 %.not.i37.3, label %.thread, label %bb.aa, !prof !16

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !362
  store i64 5, ptr %i.m, align 8, !noalias !362
  %i.ci = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !362
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !362
  store i64 9, ptr %i.l, align 8, !noalias !362
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !362
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.ck = add nuw i64 %i.aq, 1
  store i64 %i.ck, ptr %i.ak, align 8, !alias.scope !364, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !308
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !298, !inline_history !133
  %i.cl = load i64, ptr %i.ai, align 8, !range !365, !noalias !308, !noundef !4 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.co = add nuw i64 %i.aq, 1
  store i64 %i.co, ptr %i.ak, align 8, !alias.scope !366, !noalias !298
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cp, align 8, !alias.scope !299, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !308
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !298, !inline_history !133
  %i.cq = load i64, ptr %i.ag, align 8, !range !6, !noalias !308, !noundef !4 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !308 ; 3 uses
  br i1 %i.cr, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 8, !alias.scope !299, !noalias !298, !noundef !4
  %i.cw = add i8 %i.cv, -1                        ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 8, !alias.scope !299, !noalias !298
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.ay, label %bb.az, !prof !17

bb.ae:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 8, !alias.scope !299, !noalias !298, !noundef !4
  %i.da = add i8 %i.cz, -1                        ; 2 uses
  store i8 %i.da, ptr %i.cy, align 8, !alias.scope !299, !noalias !298
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.cc, label %bb.cd, !prof !17

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55
  %.sroa.0.1.i54.ph = phi ptr [ %i.bh, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55 ], [ %i.bi, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i54.ph, ptr %i.dc, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %bb.ah

bb.ag:                                            ; preds = %.thread145, %.thread142
  %.sroa.26261.0 = phi i64 [ %.sroa.26261.4, %.thread145 ], [ %.sroa.26261.3, %.thread142 ] ; 2 uses
  %.sroa.24.0 = phi i8 [ %.sroa.24.2, %.thread145 ], [ %.sroa.24.1, %.thread142 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread145 ], [ %.sroa.0.3, %.thread142 ] ; 2 uses
  %i.dd = phi <2 x i64> [ %i.ij, %.thread145 ], [ %i.he, %.thread142 ]
  %i.de = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.de, label %._crit_edge, label %.thread, !prof !367

._crit_edge:                                      ; preds = %bb.ag
  %i.df = inttoptr i64 %.sroa.26261.0 to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cc, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46
  %.sroa.0.1.i45.ph = phi ptr [ %i.bt, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46 ], [ %i.bu, %bb.r ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i45.ph, ptr %i.dg, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ci, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cj, %bb.aa ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dh, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %i.cn, align 8, !noalias !308, !nonnull !4, !align !5, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !308
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cn, align 8, !noalias !308 ; 3 uses
  %i.dk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cl, label %default.unreachable367 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34
    i64 2, label %bb.ap
  ]

default.unreachable367:                           ; preds = %bb.cp, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dl = bitcast i64 %.sroa.4.0.copyload to double
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  %i.dn = fcmp ueq double %i.dm, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !368
  br i1 %i.dn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i28 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i27, align 8, !alias.scope !369, !noalias !370
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.do = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i29, align 8, !alias.scope !369, !noalias !370
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.n, align 8, !noalias !368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371), !noalias !298
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n), !noalias !372
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19

_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i21 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i28, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i23 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dp = phi <2 x i64> [ %i.do, %bb.an ], [ %i.dk, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !368
  br label %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i14 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34

_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34: ; preds = %bb.al, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19, %bb.ap
  %.sroa.26261.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i21, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19 ], [ %.lobit.i.i14, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i23, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dq = phi <2 x i64> [ %i.dp, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i19 ], [ %i.dk, %bb.ap ], [ %i.dk, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !308
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.dr, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !308
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !308 ; 8 uses
  %i.ds = trunc nuw i64 %i.cq to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  br i1 %i.ds, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !373
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !373
  %i.dt = load i64, ptr %i.b, align 8, !range !18, !noalias !373, !noundef !4
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !range !19, !noalias !373, !noundef !4 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.du, label %bb.at, label %bb.au, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !373
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dw, i64 %i.dy) #23, !noalias !373
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dz = load ptr, ptr %i.dx, align 8, !noalias !373, !nonnull !4, !noundef !4 ; 2 uses
  %i.ea = icmp ule i64 %.sroa.4.0.copyload.i, %i.dw
  call void @llvm.assume(i1 %i.ea), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !373
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit, label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !374
  %i.eb = load i64, ptr %i.a, align 8, !range !18, !noalias !374, !noundef !4
  %i.ec = trunc nuw i64 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !19, !noalias !374, !noundef !4 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ec, label %bb.aw, label %bb.ax, !prof !17

bb.aw:                                            ; preds = %bb.av
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !374
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ee, i64 %i.eg) #23, !noalias !374
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.eh = load ptr, ptr %i.ef, align 8, !noalias !374, !nonnull !4, !noundef !4 ; 2 uses
  %i.ei = icmp ule i64 %.sroa.4.0.copyload.i, %i.ee
  call void @llvm.assume(i1 %i.ei), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !374
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit, label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split

_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dz, %bb.au ], [ %i.eh, %bb.ax ] ; 2 uses
  %.sroa.26261.2.ph = phi i64 [ %i.dw, %bb.au ], [ %i.ee, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.ct, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !298
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit

_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split, %bb.ax, %bb.au
  %.sroa.41.2.in = phi ptr [ %i.eh, %bb.ax ], [ %i.dz, %bb.au ], [ %.sink, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split ]
  %.sroa.26261.2 = phi i64 [ %i.ee, %bb.ax ], [ %i.dw, %bb.au ], [ %.sroa.26261.2.ph, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split ]
  %.sroa.41.2 = ptrtoint ptr %.sroa.41.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !308
  %i.ej = insertelement <2 x i64> poison, i64 %.sroa.41.2, i64 0
  %i.ek = insertelement <2 x i64> %i.ej, i64 %.sroa.4.0.copyload.i, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !308
  store i64 24, ptr %i.af, align 8, !noalias !308
  %i.el = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af), !noalias !298, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !308
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.en = add nuw i64 %i.aq, 1                    ; 3 uses
  store i64 %i.en, ptr %i.ak, align 8, !alias.scope !375, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !376
  store i64 0, ptr %i.p, align 8, !noalias !376
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eo, align 8, !noalias !376
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 0, ptr %i.ep, align 8, !noalias !376
  %i.eq = icmp ult i64 %i.en, %i.am
  br i1 %i.eq, label %.lr.ph.i.i.i.lr.ph, label %.loopexit22.i.i

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.az
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i
  %.promoted.i.i.i169 = phi i64 [ %i.en, %.lr.ph.i.i.i.lr.ph ], [ %.promoted.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i ]
  %i.er = phi i64 [ %i.am, %.lr.ph.i.i.i.lr.ph ], [ %i.fv, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i ] ; 4 uses
  %.sroa.5.0168 = phi i1 [ true, %.lr.ph.i.i.i.lr.ph ], [ false, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !377), !noalias !378
  %i.es = load ptr, ptr %i.ao, align 8, !alias.scope !379, !noalias !380, !nonnull !4, !noundef !4 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i.i
  %i.et = phi i64 [ %.promoted.i.i.i169, %.lr.ph.i.i.i ], [ %i.ew, %bb.bb ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381), !noalias !378
  call void @llvm.experimental.noalias.scope.decl(metadata !382), !noalias !378
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !noalias !383, !noundef !4 ; 2 uses
  switch i8 %i.ev, label %bb.bc [
    i8 32, label %bb.bb
    i8 10, label %bb.bb
    i8 9, label %bb.bb
    i8 13, label %bb.bb
    i8 93, label %bb.bq
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.ew = add nuw i64 %i.et, 1                    ; 3 uses
  store i64 %i.ew, ptr %i.ak, align 8, !alias.scope !384, !noalias !385
  %exitcond.not.i.i.i = icmp eq i64 %i.ew, %i.er
  br i1 %exitcond.not.i.i.i, label %.loopexit22.i.i, label %bb.ba

.loopexit22.i.i:                                  ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !386
  store i64 2, ptr %i.f, align 8, !noalias !386
  %i.ex = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc60 unwind label %.loopexit.split-lp, !inline_history !225

.noexc60:                                         ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !386
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  br i1 %.sroa.5.0168, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = icmp eq i8 %i.ev, 44
  br i1 %i.ey, label %bb.be, label %bb.bg, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.ez = add nuw i64 %i.et, 1                    ; 3 uses
  store i64 %i.ez, ptr %i.ak, align 8, !alias.scope !387, !noalias !386
  call void @llvm.experimental.noalias.scope.decl(metadata !388), !noalias !378
  %i.fa = icmp ult i64 %i.ez, %i.er
  br i1 %i.fa, label %.lr.ph.i7.i.i, label %.loopexit.i.i

.lr.ph.i7.i.i:                                    ; preds = %bb.be, %bb.bf
  %i.fb = phi i64 [ %i.fe, %bb.bf ], [ %i.ez, %bb.be ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !389, !noundef !4
  switch i8 %i.fd, label %.loopexit [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 93, label %bb.bh
  ], !prof !390

bb.bf:                                            ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.fe = add nuw i64 %i.fb, 1                    ; 3 uses
  store i64 %i.fe, ptr %i.ak, align 8, !alias.scope !391, !noalias !392
  %exitcond.not.i8.i.i = icmp eq i64 %i.fe, %i.er
  br i1 %exitcond.not.i8.i.i, label %.loopexit.i.i, label %.lr.ph.i7.i.i

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !386
  store i64 7, ptr %i.c, align 8, !noalias !386
  %i.ff = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc61 unwind label %.loopexit.split-lp, !inline_history !225

.noexc61:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !386
  br label %bb.bj

.loopexit.i.i:                                    ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !386
  store i64 5, ptr %i.d, align 8, !noalias !386
  %i.fg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc62 unwind label %.loopexit.split-lp, !inline_history !225

.noexc62:                                         ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !386
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !386
  store i64 21, ptr %i.e, align 8, !noalias !386
  %i.fh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc63 unwind label %.loopexit.split-lp, !inline_history !225

.noexc63:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !386
  br label %bb.bj

.loopexit:                                        ; preds = %.lr.ph.i7.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !393
  invoke fastcc void @_RINvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB5_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #24
          to label %.noexc64 unwind label %.loopexit151, !inline_history !225

.noexc64:                                         ; preds = %.loopexit
  %i.fi = load i8, ptr %i.g, align 8, !range !9, !noalias !393, !noundef !4 ; 2 uses
  %i.fj = icmp eq i8 %i.fi, -1
  br i1 %i.fj, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.noexc64
  %i.fk = load ptr, ptr %.sroa.590.0..sroa_idx, align 8, !noalias !393, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !393
  br label %bb.bj

.loopexit151:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %.loopexit22.i.i, %bb.bg, %.loopexit.i.i, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit151, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fq, %bb.bo ], [ %lpad.loopexit, %.loopexit151 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #21
          to label %common.resume unwind label %bb.br, !noalias !378, !inline_history !239

bb.bj:                                            ; preds = %.noexc60, %.noexc61, %.noexc63, %.noexc62, %bb.bi
  %.sroa.10.0.ph = phi ptr [ %i.fk, %bb.bi ], [ %i.ex, %.noexc60 ], [ %i.ff, %.noexc61 ], [ %i.fh, %.noexc63 ], [ %i.fg, %.noexc62 ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.bk, !noalias !378, !inline_history !239

bb.bk:                                            ; preds = %bb.bj
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.bl, !noalias !378, !inline_history !239

bb.bl:                                            ; preds = %bb.bk
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !378, !inline_history !239
  unreachable

common.resume:                                    ; preds = %bb.by, %bb.ci, %.body.i, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bk ], [ %i.hx, %bb.ci ], [ %i.gr, %bb.by ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.bj
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !378, !inline_history !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !376
  %.pre = load i64, ptr %i.al, align 8, !alias.scope !394, !noalias !395
  %.promoted.i.i3.pre = load i64, ptr %i.ak, align 8, !alias.scope !396, !noalias !397
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit

bb.bm:                                            ; preds = %.noexc64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.489.0..sroa_idx, i64 7, i1 false)
  %.sroa.590.0.copyload = load ptr, ptr %.sroa.590.0..sroa_idx, align 8, !noalias !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.691.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !393
  store i8 %i.fi, ptr %i.o, align 8, !noalias !376
  store ptr %.sroa.590.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !376
  %i.fn = load i64, ptr %i.ep, align 8, !alias.scope !398, !noalias !399, !noundef !4 ; 3 uses
  %i.fo = load i64, ptr %i.p, align 8, !range !20, !alias.scope !398, !noalias !399, !noundef !4
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.bn, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.bo, !noalias !400, !inline_history !239

bb.bo:                                            ; preds = %bb.bn
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #21
          to label %.body.i unwind label %bb.bp, !noalias !378, !inline_history !239

bb.bp:                                            ; preds = %bb.bo
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !378, !inline_history !239
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8push_mutCsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.bn, %bb.bm
  %i.fs = load ptr, ptr %i.eo, align 8, !alias.scope !398, !noalias !399, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !378
  %i.fu = add i64 %i.fn, 1
  store i64 %i.fu, ptr %i.ep, align 8, !alias.scope !398, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !376
  %i.fv = load i64, ptr %i.al, align 8, !alias.scope !401, !noalias !380, !noundef !4 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !402, !noalias !385 ; 2 uses
  %i.fw = icmp ult i64 %.promoted.i.i.i, %i.fv
  br i1 %i.fw, label %.lr.ph.i.i.i, label %.loopexit22.i.i

bb.bq:                                            ; preds = %bb.ba
  %.sroa.078.0.copyload = load ptr, ptr %i.p, align 8, !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !376
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit

bb.br:                                            ; preds = %.body.i
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !378, !inline_history !239
  unreachable

_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.bq
  %.promoted.i.i3 = phi i64 [ %.promoted.i.i3.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %i.et, %bb.bq ] ; 2 uses
  %i.fy = phi i64 [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %i.er, %bb.bq ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %.sroa.10.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %.sroa.078.0.copyload, %bb.bq ]
  %.sroa.071.0 = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit.i ], [ 4, %bb.bq ]
  %i.fz = load i8, ptr %i.cu, align 8, !alias.scope !299, !noalias !298, !noundef !4
  %i.ga = add i8 %i.fz, 1
  store i8 %i.ga, ptr %i.cu, align 8, !alias.scope !299, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !308
  store i8 %.sroa.071.0, ptr %i.ad, align 8, !noalias !308
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !308
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !405), !noalias !298
  %i.gb = icmp ult i64 %.promoted.i.i3, %i.fy
  br i1 %i.gb, label %.lr.ph.i.i6, label %.loopexit.i4

.lr.ph.i.i6:                                      ; preds = %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit
  %i.gc = load ptr, ptr %i.ao, align 8, !alias.scope !394, !noalias !395, !nonnull !4, !noundef !4 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i6
  %i.gd = phi i64 [ %.promoted.i.i3, %.lr.ph.i.i6 ], [ %i.gg, %bb.bt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !406), !noalias !298
  call void @llvm.experimental.noalias.scope.decl(metadata !407), !noalias !298
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !408, !noundef !4
  switch i8 %i.gf, label %bb.bu [
    i8 32, label %bb.bt
    i8 10, label %bb.bt
    i8 9, label %bb.bt
    i8 13, label %bb.bt
    i8 93, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit.thread
    i8 44, label %bb.bv
  ], !prof !14

bb.bt:                                            ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.gg = add nuw i64 %i.gd, 1                    ; 3 uses
  store i64 %i.gg, ptr %i.ak, align 8, !alias.scope !409, !noalias !397
  %exitcond.not.i.i7 = icmp eq i64 %i.gg, %i.fy
  br i1 %exitcond.not.i.i7, label %.loopexit.i4, label %bb.bs

.loopexit.i4:                                     ; preds = %bb.bt, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !410
  store i64 2, ptr %i.q, align 8, !noalias !410
  %i.gh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc8 unwind label %bb.by

.noexc8:                                          ; preds = %.loopexit.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !410
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !410
  store i64 22, ptr %i.r, align 8, !noalias !410
  %i.gi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc9 unwind label %bb.by

.noexc9:                                          ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !410
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit

bb.bv:                                            ; preds = %bb.bs
  %i.gj = add nuw i64 %i.gd, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ak, align 8, !alias.scope !411, !noalias !298
  call void @llvm.experimental.noalias.scope.decl(metadata !412), !noalias !298
  %i.gk = icmp ult i64 %i.gj, %i.fy
  br i1 %i.gk, label %.lr.ph.i12.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.bv, %bb.bw
  %i.gl = phi i64 [ %i.go, %bb.bw ], [ %i.gj, %bb.bv ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !noalias !413, !noundef !4
  switch i8 %i.gn, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit16.thread.i [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 93, label %bb.bx
  ]

bb.bw:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.go = add nuw i64 %i.gl, 1                    ; 3 uses
  store i64 %i.go, ptr %i.ak, align 8, !alias.scope !414, !noalias !415
  %exitcond.not.i13.i = icmp eq i64 %i.go, %i.fy
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit16.thread.i: ; preds = %bb.bw, %.lr.ph.i12.i, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !410
  store i64 22, ptr %i.s, align 8, !noalias !410
  %i.gp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc10 unwind label %bb.by

.noexc10:                                         ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !410
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit

bb.bx:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !410
  store i64 21, ptr %i.t, align 8, !noalias !410
  %i.gq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc11 unwind label %bb.by

.noexc11:                                         ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !410
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit

bb.by:                                            ; preds = %bb.bx, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit16.thread.i, %bb.bu, %.loopexit.i4
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiWcPrHiWZDL_10serde_json5value5ValueNtNtB11_5error5ErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad) #21
          to label %common.resume unwind label %bb.ca, !noalias !298, !inline_history !133

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.noexc11, %.noexc10, %.noexc9, %.noexc8
  %.sroa.0.0.i5 = phi ptr [ %i.gi, %.noexc9 ], [ %i.gq, %.noexc11 ], [ %i.gh, %.noexc8 ], [ %i.gp, %.noexc10 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !308
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %.sroa.0.0.i5, ptr %i.gs, align 8, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !308
  %i.gt = load i8, ptr %i.ae, align 8, !range !9, !noalias !308, !noundef !4
  %i.gu = icmp eq i8 %i.gt, -1
  br i1 %i.gu, label %bb.cb, label %bb.bz

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.bs
  %i.gv = add nuw i64 %i.gd, 1
  store i64 %i.gv, ptr %i.ak, align 8, !alias.scope !416, !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !308
  %i.gw = load i8, ptr %i.ae, align 8, !range !9, !noalias !308, !noundef !4 ; 2 uses
  %i.gx = icmp eq i8 %i.gw, -1
  br i1 %i.gx, label %.thread219, label %.thread217

.thread219:                                       ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !308, !nonnull !4, !align !5, !noundef !4
  %i.ha = ptrtoint ptr %i.gz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread142

.thread217:                                       ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit.thread
  %.sroa.24.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.24.0.copyload256 = load i8, ptr %.sroa.24.0..sroa_idx255, align 1, !noalias !308
  %.sroa.26.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26.0..sroa_idx259, i64 6, i1 false), !noalias !308
  %.sroa.26261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.26261.0.copyload263 = load i64, ptr %.sroa.26261.0..sroa_idx262, align 8, !noalias !308
  %.sroa.41.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.hb = load <2 x i64>, ptr %.sroa.41.0..sroa_idx266, align 8, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread142

bb.bz:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit
  %i.hc = ptrtoint ptr %.sroa.0.0.i5 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae), !noalias !298, !inline_history !133
  br label %.thread142

bb.ca:                                            ; preds = %bb.ci, %bb.by
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !298, !inline_history !133
  unreachable

.thread142:                                       ; preds = %.thread219, %.thread217, %bb.bz, %bb.cb
  %.sroa.26261.3 = phi i64 [ %i.hh, %bb.cb ], [ %i.hc, %bb.bz ], [ %i.ha, %.thread219 ], [ %.sroa.26261.0.copyload263, %.thread217 ]
  %.sroa.24.1 = phi i8 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread219 ], [ %.sroa.24.0.copyload256, %.thread217 ]
  %.sroa.0.3 = phi i8 [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %.thread219 ], [ %i.gw, %.thread217 ]
  %i.he = phi <2 x i64> [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread219 ], [ %i.hb, %.thread217 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !308
  br label %bb.ag

bb.cb:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsarFSTFZzLuM_11xet_runtime.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !308, !nonnull !4, !align !5, !noundef !4
  %i.hh = ptrtoint ptr %i.hg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr nonnull %.sroa.0.0.i5), !noalias !298, !inline_history !133
  br label %.thread142

bb.cc:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !308
  store i64 24, ptr %i.ac, align 8, !noalias !308
  %i.hi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !298, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !308
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hi, ptr %i.hj, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %bb.ah

bb.cd:                                            ; preds = %bb.ae
  %i.hk = add nuw i64 %i.aq, 1
  store i64 %i.hk, ptr %i.ak, align 8, !alias.scope !417, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !308
  call void @_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !298, !inline_history !133
  %i.hl = load i8, ptr %i.cy, align 8, !alias.scope !299, !noalias !298, !noundef !4
  %i.hm = add i8 %i.hl, 1
  store i8 %i.hm, ptr %i.cy, align 8, !alias.scope !299, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419), !noalias !298
  %i.hn = load i64, ptr %i.al, align 8, !alias.scope !420, !noalias !421, !noundef !4 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ak, align 8, !alias.scope !422, !noalias !423 ; 2 uses
  %i.ho = icmp ult i64 %.promoted.i.i, %i.hn
  br i1 %i.ho, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.cd
  %i.hp = load ptr, ptr %i.ao, align 8, !alias.scope !420, !noalias !421, !nonnull !4, !noundef !4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %.lr.ph.i.i
  %i.hq = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ht, %bb.cf ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !424), !noalias !298
  call void @llvm.experimental.noalias.scope.decl(metadata !425), !noalias !298
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !426, !noundef !4
  switch i8 %i.hs, label %bb.cg [
    i8 32, label %bb.cf
    i8 10, label %bb.cf
    i8 9, label %bb.cf
    i8 13, label %bb.cf
    i8 125, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit.thread
    i8 44, label %bb.ch
  ], !prof !14

bb.cf:                                            ; preds = %bb.ce, %bb.ce, %bb.ce, %bb.ce
  %i.ht = add nuw i64 %i.hq, 1                    ; 3 uses
  store i64 %i.ht, ptr %i.ak, align 8, !alias.scope !427, !noalias !423
  %exitcond.not.i.i = icmp eq i64 %i.ht, %i.hn
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.ce

.loopexit.i:                                      ; preds = %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !428
  store i64 3, ptr %i.u, align 8, !noalias !428
  %i.hu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc unwind label %bb.ci

.noexc:                                           ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !428
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !428
  store i64 22, ptr %i.v, align 8, !noalias !428
  %i.hv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc1 unwind label %bb.ci

.noexc1:                                          ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !428
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !428
  store i64 21, ptr %i.w, align 8, !noalias !428
  %i.hw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc2 unwind label %bb.ci

.noexc2:                                          ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !428
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.loopexit.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiWcPrHiWZDL_10serde_json5value5ValueNtNtB11_5error5ErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #21
          to label %common.resume unwind label %bb.ca, !noalias !298, !inline_history !133

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.hv, %.noexc1 ], [ %i.hu, %.noexc ], [ %i.hw, %.noexc2 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.sroa.0.0.i, ptr %i.hy, align 8, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !308
  %i.hz = load i8, ptr %i.aa, align 8, !range !9, !noalias !308, !noundef !4
  %i.ia = icmp eq i8 %i.hz, -1
  br i1 %i.ia, label %bb.ck, label %bb.cj

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.ce
  %i.ib = add nuw i64 %i.hq, 1
  store i64 %i.ib, ptr %i.ak, align 8, !alias.scope !429, !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !308
  %i.ic = load i8, ptr %i.aa, align 8, !range !9, !noalias !308, !noundef !4
  %i.id = icmp eq i8 %i.ic, -1
  br i1 %i.id, label %.thread223, label %.thread221

.thread223:                                       ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit.thread
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !308, !nonnull !4, !align !5, !noundef !4
  %i.ig = ptrtoint ptr %i.if to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !308
  br label %.thread145

.thread221:                                       ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit.thread
  %.sroa.0.0.copyload254 = load i8, ptr %i.ab, align 8
  %.sroa.24.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.24.0.copyload258 = load i8, ptr %.sroa.24.0..sroa_idx257, align 1
  %.sroa.26.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26.0..sroa_idx260, i64 6, i1 false)
  %.sroa.26261.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.26261.0.copyload265 = load i64, ptr %.sroa.26261.0..sroa_idx264, align 8
  %.sroa.41.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ih = load <2 x i64>, ptr %.sroa.41.0..sroa_idx268, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !308
  br label %.thread145

bb.cj:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit
  %i.ii = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !308
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa), !noalias !298, !inline_history !133
  br label %.thread145

.thread145:                                       ; preds = %.thread223, %.thread221, %bb.cj, %bb.ck
  %.sroa.26261.4 = phi i64 [ %i.im, %bb.ck ], [ %i.ii, %bb.cj ], [ %i.ig, %.thread223 ], [ %.sroa.26261.0.copyload265, %.thread221 ]
  %.sroa.24.2 = phi i8 [ undef, %bb.ck ], [ undef, %bb.cj ], [ undef, %.thread223 ], [ %.sroa.24.0.copyload258, %.thread221 ]
  %.sroa.0.4 = phi i8 [ -1, %bb.ck ], [ -1, %bb.cj ], [ -1, %.thread223 ], [ %.sroa.0.0.copyload254, %.thread221 ]
  %i.ij = phi <2 x i64> [ undef, %bb.ck ], [ undef, %bb.cj ], [ undef, %.thread223 ], [ %i.ih, %.thread221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !308
  br label %bb.ag

bb.ck:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsarFSTFZzLuM_11xet_runtime.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !308, !nonnull !4, !align !5, !noundef !4
  %i.im = ptrtoint ptr %i.il to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !308
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr nonnull %.sroa.0.0.i), !noalias !298, !inline_history !133
  br label %.thread145

bb.cl:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !308
  store i64 10, ptr %i.y, align 8, !noalias !308
  %i.in = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !298, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !308
  br label %bb.cn

bb.cm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !308
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !298, !inline_history !133
  %i.io = load i64, ptr %i.ah, align 8, !range !365, !noalias !308, !noundef !4 ; 2 uses
  %i.ip = icmp eq i64 %i.io, -1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br i1 %i.ip, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge, %bb.cl
  %i.ir = phi ptr [ %i.df, %._crit_edge ], [ %i.in, %bb.cl ]
  %i.is = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsarFSTFZzLuM_11xet_runtime(ptr noalias noundef nonnull align 8 %i.ir, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !298
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.is, ptr %i.it, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %i.iu = load ptr, ptr %i.iq, align 8, !noalias !308, !nonnull !4, !align !5, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iu, ptr %i.iv, align 8, !alias.scope !298, !noalias !299
  store i8 -1, ptr %0, align 8, !alias.scope !298, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !308
  br label %bb.ah

bb.cp:                                            ; preds = %bb.cm
  %.sroa.469.0.copyload = load i64, ptr %i.iq, align 8, !noalias !308 ; 3 uses
  %i.iw = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.469.0.copyload, i64 0 ; 3 uses
  switch i64 %i.io, label %default.unreachable367 [
    i64 0, label %bb.cq
    i64 1, label %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit
    i64 2, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ix = bitcast i64 %.sroa.469.0.copyload to double
  %i.iy = tail call double @llvm.fabs.f64(double %i.ix)
  %i.iz = fcmp ueq double %i.iy, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !430
  br i1 %i.iz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !431, !noalias !432
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ja = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !431, !noalias !432
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i

bb.cs:                                            ; preds = %bb.cq
  store i8 0, ptr %i.x, align 8, !noalias !430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433), !noalias !298
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x), !noalias !434
  br label %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i

_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.cs, %bb.cr
  %.sroa.5.sroa.4.0.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i, %bb.cr ], [ 2, %bb.cs ]
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.cr ], [ 2, %bb.cs ]
  %i.jb = phi <2 x i64> [ %i.ja, %bb.cr ], [ %i.iw, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !430
  br label %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit

bb.ct:                                            ; preds = %bb.cp
  %.lobit.i.i = lshr i64 %.sroa.469.0.copyload, 63
  br label %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit

_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.cp, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.ct
  %.sroa.26261.5 = phi i64 [ %.sroa.5.sroa.4.0.i.i, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %.lobit.i.i, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.0.5 = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i ], [ 2, %bb.ct ], [ 2, %bb.cp ]
  %i.jc = phi <2 x i64> [ %i.jb, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %i.iw, %bb.ct ], [ %i.iw, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !308
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.26261.6 = phi i64 [ %.sroa.26261.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.26261.2, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit ], [ %.sroa.26261.1, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34 ], [ %.sroa.26261.5, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.24.3 = phi i8 [ %.sroa.24.0, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ undef, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit ], [ undef, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34 ], [ undef, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.0.6 = phi i8 [ %.sroa.0.0, %bb.ag ], [ 1, %bb.q ], [ 1, %bb.z ], [ 0, %bb.j ], [ 3, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34 ], [ %.sroa.0.5, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit ]
  %i.jd = phi <2 x i64> [ %i.dd, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %i.ek, %_RINvXNvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB8_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit ], [ %i.dq, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit34 ], [ %i.jc, %_RINvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit ]
  store i8 %.sroa.0.6, ptr %0, align 8, !noalias !299
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.24.3, ptr %.sroa.24.0..sroa_idx, align 1, !noalias !299
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26, i64 6, i1 false), !noalias !299
  %.sroa.26261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.26261.6, ptr %.sroa.26261.0..sroa_idx, align 8, !noalias !299
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.jd, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !299
  br label %bb.cu

bb.cu:                                            ; preds = %.thread, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit

_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.loopexit152, %bb.ah, %bb.cu
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_Cs8QAzUGy1spU_13tracing_serdeNtB6_14SerializeLevelNtNtCs6SYjS1KFWza_10serde_core3ser9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  switch i64 %i.b, label %bb.f [
    i64 4, label %bb.b
    i64 3, label %bb.c
    i64 2, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvNtCsiWcPrHiWZDL_10serde_json3ser18format_escaped_strNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB2_16CompactFormatterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 5) ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split, !prof !13

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvNtCsiWcPrHiWZDL_10serde_json3ser18format_escaped_strNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB2_16CompactFormatterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4) ; 2 uses
  %.not.i2 = icmp eq ptr %i.e, null
  br i1 %.not.i2, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_RINvNtCsiWcPrHiWZDL_10serde_json3ser18format_escaped_strNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB2_16CompactFormatterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i5, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split, !prof !13

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_RINvNtCsiWcPrHiWZDL_10serde_json3ser18format_escaped_strNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB2_16CompactFormatterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5) ; 2 uses
  %.not.i8 = icmp eq ptr %i.g, null
  br i1 %.not.i8, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split, !prof !13

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_RINvNtCsiWcPrHiWZDL_10serde_json3ser18format_escaped_strNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB2_16CompactFormatterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 5) ; 2 uses
  %.not.i11 = icmp eq ptr %i.h, null
  br i1 %.not.i11, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split, !prof !13

_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.e, %bb.c ], [ %i.d, %bb.b ], [ %i.h, %bb.f ]
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink)
  br label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit

_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ %i.i, %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_strCsarFSTFZzLuM_11xet_runtime.exit.sink.split ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonINtB6_16SerializableSpanNtNtNtBc_8registry7sharded8RegistryNtB6_10JsonFieldsENtNtCs6SYjS1KFWza_10serde_core3ser9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtBa_6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [56 x i8], align 8                ; 13 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 16 uses
  %i.l = alloca [32 x i8], align 8                ; 22 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = tail call noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 1), !noalias !453 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.o), !noalias !453
  br label %bb.br

_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  store ptr %1, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i8 1, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = tail call { ptr, ptr } @_RNvXs4_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData10extensions(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  store ptr %i.u, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = invoke noundef align 8 ptr @_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1y_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.d unwind label %bb.c       ; 3 uses

.body:                                            ; preds = %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit, %bb.f, %bb.n, %bb.q, %bb.c, %switch.early.test, %switch.early.test, %bb.bv
  %.pn97 = phi { ptr, i32 } [ %.pn94134, %switch.early.test ], [ %.pn94134, %switch.early.test ], [ %.pn94134, %bb.bv ], [ %lpad.thr_comm.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit ], [ %i.y, %bb.c ], [ %i.au, %bb.q ], [ %i.as, %bb.n ], [ %.pn.i, %bb.f ], [ %i.cb, %bb.at ]
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.as

bb.c:                                             ; preds = %bb.bq, %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit6.i, %bb.bu, %bb.bm, %bb.bl, %bb.t, %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit
  %.not82 = icmp eq ptr %i.x, null
  br i1 %.not82, label %bb.t, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !455
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !noalias !454
  %.sroa.4.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx127, align 8, !noalias !454
  %.sroa.5.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx128, align 8, !noalias !454
  store i64 0, ptr %i.c, align 8, !noalias !455
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !455
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !455
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.ae, align 8, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  invoke fastcc void @_RINvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB5_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !456

bb.f:                                             ; preds = %bb.l, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.aq, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #21
          to label %.body unwind label %bb.s, !noalias !455

bb.g:                                             ; preds = %bb.m, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.l, align 8, !range !9, !alias.scope !454, !noalias !456, !noundef !4
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !456
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.ai = load i64, ptr %.sroa.4.0..sroa_idx127, align 8, !alias.scope !459, !noalias !460, !noundef !4 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx128, align 8, !alias.scope !461, !noalias !462 ; 2 uses
  %i.aj = icmp ult i64 %.promoted.i.i.i, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ak = load ptr, ptr %i.ad, align 8, !alias.scope !459, !noalias !460, !nonnull !4, !noundef !4
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %i.al = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ao, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !465, !noundef !4
  switch i8 %i.an, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit.i.i [
    i8 32, label %bb.k
    i8 10, label %bb.k
    i8 9, label %bb.k
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.ao = add nuw i64 %i.al, 1                    ; 3 uses
  store i64 %i.ao, ptr %.sroa.5.0..sroa_idx128, align 8, !alias.scope !466, !noalias !462
  %exitcond.not.i.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.j

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !467
  store i64 22, ptr %i.a, align 8, !noalias !467
  %i.ap = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.l, !noalias !455

bb.l:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #21
          to label %bb.f unwind label %bb.s, !noalias !455

bb.m:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !467
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !alias.scope !454, !noalias !456
  store i8 -1, ptr %i.l, align 8, !alias.scope !454, !noalias !456
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %bb.p unwind label %bb.g, !noalias !455

.loopexit.i:                                      ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit6.i unwind label %bb.n, !noalias !455

bb.n:                                             ; preds = %.loopexit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.body unwind label %bb.o, !noalias !455

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !455
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit6.i: ; preds = %bb.p, %.loopexit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.v unwind label %bb.c

bb.p:                                             ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit6.i unwind label %bb.q, !noalias !455

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.body unwind label %bb.r, !noalias !455

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !455
  unreachable

bb.s:                                             ; preds = %bb.l, %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !455
  unreachable

bb.t:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %bb.u unwind label %bb.c

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsarFSTFZzLuM_11xet_runtime.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !455
  %i.ax = load i8, ptr %i.l, align 8, !range !9, !noundef !4
  switch i8 %i.ax, label %bb.y [
    i8 -1, label %bb.w
    i8 5, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %i.az, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @14, ptr noundef nonnull %i.d)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.bb

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !4 ; 3 uses
  %.not85 = icmp ne ptr %i.bb, null               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.038.sroa.5.sroa.6.0 = select i1 %.not85, i64 %i.bf, i64 undef ; 2 uses
  %.sroa.038.sroa.0.0 = zext i1 %.not85 to i64    ; 2 uses
  %.sroa.539.0 = select i1 %.not85, i64 %i.bd, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.038.sroa.0.0, ptr %i.k, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.bb, ptr %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.038.sroa.5.sroa.6.0, ptr %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sroa.038.sroa.0.0, ptr %.sroa.040.sroa.6.0..sroa_idx, align 8
  %.sroa.040.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %.sroa.040.sroa.7.0..sroa_idx, align 8
  %.sroa.040.sroa.7.sroa.5.0..sroa.040.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.bb, ptr %.sroa.040.sroa.7.sroa.5.0..sroa.040.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.7.sroa.6.0..sroa.040.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.038.sroa.5.sroa.6.0, ptr %.sroa.040.sroa.7.sroa.6.0..sroa.040.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %.sroa.539.0, ptr %.sroa.541.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 5 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.bh = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtB8_5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.au unwind label %bb.at     ; 2 uses

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit113, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsA_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %bb.aa unwind label %.loopexit

.body105:                                         ; preds = %.loopexit, %.loopexit.split-lp, %.body.i107, %.body.i, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.ae ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i108, %.body.i107 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %switch.early.test unwind label %bb.as

.loopexit:                                        ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i110
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.loopexit.split-lp:                               ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body105

bb.aa:                                            ; preds = %bb.z
  %i.bi = load i64, ptr %i.j, align 8, !range !8, !noundef !4
  %.not86 = icmp eq i64 %i.bi, -1
  br i1 %.not86, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.bj = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %bb.af unwind label %bb.ae     ; 3 uses

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit104 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit.thread139

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit.thread139: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit121, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueEECsarFSTFZzLuM_11xet_runtime.exit, %bb.ac
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %switch.early.test

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.ax, %bb.az
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

switch.early.test:                                ; preds = %.body105, %.body115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit.thread139
  %.pn94134 = phi { ptr, i32 } [ %lpad.thr_comm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit.thread139 ], [ %.pn, %.body105 ], [ %.pn92, %.body115 ] ; 3 uses
  %i.bk = load i8, ptr %i.l, align 8, !range !9, !noundef !4
  switch i8 %i.bk, label %bb.bv [
    i8 -1, label %.body
    i8 5, label %.body
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit104: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bl = load i8, ptr %i.l, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.bl, -1
  br i1 %.not, label %bb.bm, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit104, %bb.bk
  %i.bm = phi i8 [ %i.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json3map8IntoIterECsarFSTFZzLuM_11xet_runtime.exit104 ], [ %i.ck, %bb.bk ]
  %i.bn = icmp eq i8 %i.bm, 5
  br i1 %i.bn, label %bb.bm, label %bb.bl

end_hunk_0
begin_hunk_1_@_RINvXs5_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonNtB6_10JsonFieldsNtB8_12FormatFields13format_fieldsRNtNtCs94TQx44N27d_12tracing_core4span10AttributesECsarFSTFZzLuM_11xet_runtime:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4json11JsonVisitorECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs5_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonNtB6_10JsonFieldsNtB8_12FormatFields13format_fieldsRNtNtCs94TQx44N27d_12tracing_core4span6RecordECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @17, ptr %i.e, align 8
  invoke void @_RNvXs5_NtCs8C3ZpOVqhBL_18tracing_subscriber5fieldRNtNtCs94TQx44N27d_12tracing_core4span6RecordNtB5_12RecordFields6recordCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @18)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.f = call noundef zeroext i1 @_RNvXs9_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonNtB5_11JsonVisitorINtNtBb_5field11VisitOutputINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1N_3fmt5ErrorEE6finish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4json11JsonVisitorECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapReNtNtCsiWcPrHiWZDL_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4json11JsonVisitorECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RINvXs6_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsiWcPrHiWZDL_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RINvXsk_NtNtCsiWcPrHiWZDL_10serde_json5value2deNtB6_13KeyClassifierNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !519, !noalias !520, !noundef !4 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !521, !noalias !522 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !519, !noalias !520, !nonnull !4, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !525, !noundef !4
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !526

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !527, !noalias !522
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !517
  store i64 3, ptr %i.a, align 8, !noalias !517
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !517
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !517
  store i64 6, ptr %i.b, align 8, !noalias !517
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !517
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add nuw i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !528
  tail call fastcc void @_RINvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB5_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #24, !inline_history !516
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonINtB5_19SerializableContextNtNtNtBb_8registry7sharded8RegistryNtB5_10JsonFieldsENtNtCs6SYjS1KFWza_10serde_core3ser9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtB9_6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [656 x i8], align 8               ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [656 x i8], align 8               ; 4 uses
  %i.g = alloca [672 x i8], align 8               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 10 uses
  %i.j = alloca [40 x i8], align 8                ; 11 uses
  %i.k = alloca [672 x i8], align 8               ; 17 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = tail call noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 1), !noalias !541 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !noalias !541
  br label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit

_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !542, !noalias !543, !align !5, !noundef !4 ; 4 uses
  %.not.i12 = icmp eq ptr %i.q, null
  br i1 %.not.i12, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !544
  call void @_RNvXs0_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber12current_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.q), !noalias !544
  %i.r = load i64, ptr %i.e, align 8, !range !6, !noalias !544, !noundef !4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !544
  call void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !544
  %i.u = load ptr, ptr %i.d, align 8, !noalias !544, !noundef !4
  %.not4.i = icmp eq ptr %i.u, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !544
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !542, !noalias !543, !noundef !4
  call void @_RNvMs_NtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB4_7SpanRefNtNtB4_7sharded8RegistryE15try_with_filterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, i64 noundef %i.w), !noalias !542
  %i.x = load ptr, ptr %i.m, align 8
  %.not5.i = icmp eq ptr %i.x, null
  br i1 %.not5.i, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread45

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread45: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !544
  br label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !544
  br label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split, %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e
  call void @_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE23lookup_current_filteredB6_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noundef nonnull align 8 %i.q) #19
  %.pr.pr = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %.pr.pr, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread45, %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.y = load ptr, ptr %i.l, align 8, !nonnull !4, !align !5, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.aa = invoke noundef i64 @_RNvXs4_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData2id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread

.thread:                                          ; preds = %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread, %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ab = call noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 1) ; 2 uses
  %.not.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i13, label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %.thread
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ab)
  br label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit

.body:                                            ; preds = %bb.v, %bb.s, %bb.l, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21
  %.pn10 = phi { ptr, i32 } [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21 ], [ %i.bl, %bb.s ], [ %i.ah, %bb.l ], [ %i.ad, %bb.j ], [ %i.bs, %bb.v ]
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.x

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i27, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.n, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  store i64 0, ptr %i.ag, align 8, !noalias !545
  store i64 0, ptr %i.b, align 8, !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !545
  store ptr %i.y, ptr %i.a, align 8, !noalias !546
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !546
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !546
  invoke void @_RINvXst_Cselt1T5Y3W0b_8smallvecINtB6_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtBM_5ScopeB1D_EECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.l, !noalias !545

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %i.b)
          to label %.body unwind label %bb.m, !noalias !545

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !545
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.f, ptr noundef nonnull align 8 dereferenceable(656) %i.b, i64 656, i1 false), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !545
  invoke void @_RNvXsM_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([672 x i8]) align 8 captures(none) dereferenceable(672) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(656) %i.f)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %i.k, ptr noundef nonnull align 8 dereferenceable(672) %i.g, i64 672, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 656 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 664 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = load i64, ptr %i.aj, align 8, !noundef !4
  %i.am = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 648 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.as = add i64 %i.am, -1                       ; 2 uses
  store i64 %i.as, ptr %i.ak, align 8
  %i.at = load i64, ptr %i.ao, align 8, !alias.scope !548, !noalias !549, !noundef !4
  %i.au = icmp ugt i64 %i.at, 16
  %i.av = load i64, ptr %i.k, align 8, !range !18, !alias.scope !548, !noalias !549, !noundef !4 ; 2 uses
  br i1 %i.au, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.aw = icmp eq i64 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  br label %_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i.peel

bb.q:                                             ; preds = %.lr.ph
  %i.ax = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %i.ax)
  %i.ay = load ptr, ptr %i.aq, align 8, !alias.scope !548, !noalias !549, !nonnull !4, !noundef !4
  br label %_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i.peel

_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i.peel: ; preds = %bb.p, %bb.q
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime:bb.a
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #21
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !655, !noalias !656, !noundef !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !655, !noalias !656, !noundef !4 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !655, !noalias !656, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !657, !noundef !4
  switch i8 %i.o, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !660, !noalias !658
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !661, !noundef !4 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !662
  store i64 13, ptr %i.d, align 8, !noalias !662
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !662
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !658, !noalias !659
  store i64 1, ptr %i.f, align 8, !alias.scope !658, !noalias !659
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !662
  store i64 5, ptr %i.c, align 8, !noalias !662
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !662
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !658, !noalias !659
  store i64 1, ptr %i.f, align 8, !alias.scope !658, !noalias !659
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsiWcPrHiWZDL_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !664, !noundef !4 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  store i64 14, ptr %i.a, align 8, !noalias !664
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsarFSTFZzLuM_11xet_runtime.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsarFSTFZzLuM_11xet_runtime.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !prof !17

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !664
  store i64 14, ptr %i.b, align 8, !noalias !664
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !664
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsarFSTFZzLuM_11xet_runtime.exit.i

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i.i, ptr %i.f, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.061.i, 1844674407370955161
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !prof !25

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.be = add nuw i64 %i.v, 1                     ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !alias.scope !667, !noalias !658
  %i.bf = mul nuw i64 %.sroa.0.061.i, 10
  %i.bg = add i64 %i.bf, %i.ab                    ; 2 uses
  %i.bh = add i32 %.sroa.07.060.i, -1
  %exitcond.not.i = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i) #19
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsarFSTFZzLuM_11xet_runtime.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !range !18, !noundef !4
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0)
  %i.bl = load i64, ptr %i.e, align 8, !range !18, !noundef !4
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsarFSTFZzLuM_11xet_runtime.exit
  %i.bq = load i64, ptr %i.bk, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !690, !noalias !691, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !690, !noalias !691, !noundef !4 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !690, !noalias !691, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !692, !noundef !4 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !690, !noalias !691
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !15

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !693, !noundef !4
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !16

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !694, !noundef !4
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !695
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053) #19
  %i.ap = load i64, ptr %i.b, align 8, !range !18, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o
end_hunk_2
begin_hunk_3_@_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsarFSTFZzLuM_11xet_runtime(ptr noalias noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #13

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #9

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt4timeNtB5_10SystemTimeNtB5_10FormatTime11format_time(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_6PrefixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_6SuffixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_Cs2dUaLeREcod_11tracing_logNtNtCs94TQx44N27d_12tracing_core5event5EventNtB5_14NormalizeEvent19normalized_metadata(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB5_8FmtLevelNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_5InfixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(34), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit10record_f64CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), double noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit10record_i64CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit10record_u64CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit11record_i128CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i128 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit11record_u128CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i128 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit11record_boolCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit10record_str(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6pretty13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit12record_bytesCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit12record_error(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorNtNtCs94TQx44N27d_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorINtNtBb_5field11VisitOutputINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1R_3fmt5ErrorEE6finish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCs4LWqFwTCtYX_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1y_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRRINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBC_6format6pretty6PrettyENtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsiWcPrHiWZDL_10serde_json3ser18format_escaped_strNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB2_16CompactFormatterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4dataNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 8 captures(none) dereferenceable(192)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shardNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6clientNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([320 x i8]) align 8 captures(none) dereferenceable(320)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3logNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14reconstructionNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorbNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7sessionNtB2_16ConfigValueGroupNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryedECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryexECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeReECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeyECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryebECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRDNtB6_5DebugEL_Bx_3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskKLDkoKarTP_4core3fmt9ArgumentsECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3fmt3numnNtB6_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsN_NtNtCskKLDkoKarTP_4core3fmt3numnNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsL_NtNtCskKLDkoKarTP_4core3fmt3numnNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsM_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsK_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs94TQx44N27d_12tracing_core5fieldNtB2_8HexBytesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtB15_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noinline }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { inlinehint }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{i64 0, i64 3}
!7 = !{i64 -3, i64 -9223372036854775808}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{i8 -1, i8 6}
!10 = !{i64 0, i64 25}
!11 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2002, i32 2002, i32 2002, i32 2002, i32 2000, i32 1}
!15 = !{!"branch_weights", i32 4000000, i32 4001}
!16 = !{!"branch_weights", i32 -2147483648, i32 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i64 0, i64 2}
!19 = !{i64 0, i64 -9223372036854775807}
!20 = !{i64 0, i64 -9223372036854775808}
!21 = !{i64 0, i64 5}
!22 = !{i8 0, i8 3}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = !{!"address", !"read_provenance"}
!25 = !{!"branch_weights", i32 4001, i32 4000000}
!26 = !{i64 -1, i64 5}
!27 = !{i32 0, i32 2}
!28 = !{i64 1, i64 0}
!29 = distinct !{!29, !"_RNCNvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyINtB9_6FormatNtB7_6PrettyEINtB9_11FormatEventNtNtNtBd_8registry7sharded8RegistryB1g_E12format_events0_0CsarFSTFZzLuM_11xet_runtime"}
!30 = distinct !{!30, !29, !"_RNCNvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyINtB9_6FormatNtB7_6PrettyEINtB9_11FormatEventNtNtNtBd_8registry7sharded8RegistryB1g_E12format_events0_0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!31 = distinct !{!31, !"_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime"}
!32 = distinct !{!32, !31, !"_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime: argument 0"}
!33 = distinct !{!33, !31, !"_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime: argument 1"}
!34 = distinct !{!34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime"}
!35 = distinct !{!35, !34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!36 = distinct !{!36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime"}
!37 = distinct !{!37, !36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!38 = !{!30}
!39 = !{!32}
!40 = !{!33}
!41 = !{!32, !30}
!42 = !{!32, !33, !30}
!43 = !{!35}
!44 = !{!37}
!45 = distinct !{!45, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsarFSTFZzLuM_11xet_runtime"}
!46 = distinct !{!46, !45, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!47 = distinct !{!47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4LWqFwTCtYX_12nu_ansi_term7display9OSControleEEECsarFSTFZzLuM_11xet_runtime"}
!48 = distinct !{!48, !47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4LWqFwTCtYX_12nu_ansi_term7display9OSControleEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!49 = !{!46}
!50 = !{!48}
!51 = distinct !{!51, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplECsarFSTFZzLuM_11xet_runtime"}
!52 = distinct !{!52, !51, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplECsarFSTFZzLuM_11xet_runtime: argument 0"}
!53 = distinct !{!53, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECsarFSTFZzLuM_11xet_runtime"}
!54 = distinct !{!54, !53, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECsarFSTFZzLuM_11xet_runtime: argument 0"}
!55 = distinct !{!55, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime"}
!56 = distinct !{!56, !55, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!57 = !{!52}
!58 = !{!54}
!59 = !{!54, !52}
!60 = !{!56}
!61 = distinct !{!61, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime"}
!62 = distinct !{!62, !61, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!63 = !{!62}
!64 = !{i8 0, i8 6}
!65 = distinct !{!65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupEBJ_"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupEBJ_: argument 0"}
!67 = distinct !{!67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!69 = !{!68, !66}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEB13_"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEB13_: argument 0"}
!72 = !{!71}
!73 = distinct !{!73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!74 = distinct !{!74, !73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!75 = distinct !{!75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!76 = distinct !{!76, !75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!77 = !{!74}
!78 = !{!76}
!79 = distinct !{!79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!81 = !{!80}
!82 = distinct !{!82, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime"}
!83 = distinct !{!83, !82, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime: argument 1"}
!84 = distinct !{!84, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!85 = distinct !{!85, !84, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!86 = distinct !{!86, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!87 = distinct !{!87, !86, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!88 = distinct !{!88, !82, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime: argument 0"}
!89 = distinct !{!89, !84, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!90 = distinct !{!90, !86, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!91 = distinct !{!91, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!92 = distinct !{!92, !91, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!93 = distinct !{!93, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!94 = distinct !{!94, !93, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!95 = distinct !{!95, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime"}
!96 = distinct !{!96, !95, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime: argument 1"}
!97 = distinct !{!97, !95, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime: argument 0"}
!98 = distinct !{!98, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!99 = distinct !{!99, !98, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!100 = distinct !{!100, !98, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!101 = distinct !{!101, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!102 = distinct !{!102, !101, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!103 = distinct !{!103, !101, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!104 = distinct !{!104, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!105 = distinct !{!105, !104, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!106 = !{!83}
!107 = !{!87, !85, !83}
!108 = !{!90, !89, !88}
!109 = !{!88}
!110 = !{!85}
!111 = !{!87}
!112 = !{!90, !87, !89, !85, !88, !83}
!113 = !{!92, !83}
!114 = !{!94}
!115 = !{!96}
!116 = !{!103, !102, !100, !99, !97, !96}
!117 = !{!105, !96}
!118 = !{!97}
!119 = distinct !{!119, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime"}
!120 = distinct !{!120, !119, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime: argument 0"}
!121 = distinct !{!121, !119, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsarFSTFZzLuM_11xet_runtime: argument 1"}
!122 = distinct !{!122, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime"}
!123 = distinct !{!123, !122, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime: argument 1"}
!124 = distinct !{!124, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!125 = distinct !{!125, !124, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!126 = distinct !{!126, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!127 = distinct !{!127, !126, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!128 = distinct !{!128, !122, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsarFSTFZzLuM_11xet_runtime: argument 0"}
!129 = distinct !{!129, !124, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!130 = distinct !{!130, !126, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!131 = distinct !{!131, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!132 = distinct !{!132, !131, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!133 = distinct !{null}
!134 = distinct !{!134, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!135 = distinct !{!135, !134, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!136 = distinct !{!136, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsarFSTFZzLuM_11xet_runtime"}
!137 = distinct !{!137, !136, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsarFSTFZzLuM_11xet_runtime: argument 0"}
!138 = distinct !{!138, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next"}
!139 = distinct !{!139, !138, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 1"}
!140 = distinct !{!140, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next"}
!141 = distinct !{!141, !140, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 1"}
!142 = distinct !{!142, !136, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsarFSTFZzLuM_11xet_runtime: argument 1"}
!143 = distinct !{!143, !138, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 0"}
!144 = distinct !{!144, !140, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 0"}
!145 = distinct !{!145, !138, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 1:It1"}
!146 = distinct !{!146, !140, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 1:It1"}
!147 = distinct !{!147, !138, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 1:It2"}
!148 = distinct !{!148, !140, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 1:It2"}
!149 = distinct !{!149, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!150 = distinct !{!150, !149, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!151 = distinct !{!151, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsarFSTFZzLuM_11xet_runtime"}
!152 = distinct !{!152, !151, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsarFSTFZzLuM_11xet_runtime: argument 0"}
!153 = distinct !{!153, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next"}
!154 = distinct !{!154, !153, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 1"}
!155 = distinct !{!155, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next"}
!156 = distinct !{!156, !155, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 1"}
!157 = distinct !{!157, !151, !"_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsarFSTFZzLuM_11xet_runtime: argument 1"}
!158 = distinct !{!158, !153, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 0"}
!159 = distinct !{!159, !155, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 0"}
!160 = distinct !{!160, !153, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 1:It1"}
!161 = distinct !{!161, !155, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 1:It1"}
!162 = distinct !{!162, !153, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next: argument 1:It2"}
!163 = distinct !{!163, !155, !"_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next: argument 1:It2"}
end_hunk_3
