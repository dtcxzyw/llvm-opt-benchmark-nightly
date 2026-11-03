Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.01?download=true
inline.NumInlined: 452
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslGerTCNbuPz_7sysinfo6common6system6SystemECsarFSTFZzLuM_11xet_runtime:bb.a

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCslGerTCNbuPz_7sysinfo6common6system3PidNtB1x_7ProcessEECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %0)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslGerTCNbuPz_7sysinfo4unix5linux6system11SystemInnerECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCslGerTCNbuPz_7sysinfo6common6system3PidNtB1x_7ProcessEECsarFSTFZzLuM_11xet_runtime.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !243, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %.body3 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body3 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body3:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.i ], [ %i.i, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #22
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !7, !alias.scope !244, !noundef !4
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit7, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchEECsarFSTFZzLuM_11xet_runtime.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i6 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body3, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.k ], [ %.pn, %.body3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i6: ; preds = %bb.j
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchEECsarFSTFZzLuM_11xet_runtime.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i6
  ret void

bb.m:                                             ; preds = %.body3, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslGerTCNbuPz_7sysinfo4unix5linux3cpu11CpusWrapperECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1Q_7Builder5parseReE0ENCB1M_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1U_9directive10ParseErrorEEB3m_8try_folduNCINvNvB3m_12try_for_each4callNtNtB1S_9directive9DirectiveINtNtNtBc_3ops12control_flow11ControlFlowB6b_ENcNtB6D_5Break0E0B6D_E0IB6E_B6D_EECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i.i.i = alloca [72 x i8], align 8 ; 10 uses
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.75.i.i = alloca [72 x i8], align 8       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i = load i8, ptr %i.c, align 1, !alias.scope !287
  %.promoted26.i.i = load i64, ptr %i.b, align 8, !alias.scope !288 ; 4 uses
  %i.d = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.d, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !287, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !287, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !289, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.i, %.val1.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !288 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !5, !alias.scope !288
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !288 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.410.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i.i.i, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %.promoted32.i.i = load i64, ptr %i.g, align 8, !alias.scope !289
  %.val.i.i6.i.i = load ptr, ptr %1, align 8, !nonnull !4, !align !11
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  store i8 1, ptr %i.c, align 1, !alias.scope !290
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted26.i.i ; 2 uses
  %or.cond.not.i.i.i.us.i.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.us.i.i
  %4 = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted26.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted26.i.i
  br i1 %or.cond.not.i.i.i.us.i.i, label %.lr.ph.split.us.split.i.i, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  br i1 %.not.i3.i.i.us.i.i, label %.lr.ph.split.us.split.us.split.i.i, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit

.lr.ph.split.us.split.us.split.i.i:               ; preds = %.lr.ph.split.us.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %.val.i.i6.us.us.i.i = load ptr, ptr %1, align 8, !noalias !295, !nonnull !4, !align !11, !noundef !4
  %i.v = load ptr, ptr %.val.i.i6.us.us.i.i, align 8, !noalias !296, !nonnull !4, !align !11, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = load i8, ptr %i.w, align 8, !range !5, !noalias !296, !noundef !4
  %i.y = trunc nuw i8 %i.x to i1
  call void @_RNvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directiveNtB2_9Directive5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i, i64 noundef %4, i1 noundef zeroext %i.y), !noalias !297
  %.sroa.0.0.copyload.i.i.us.us.i.i = load i64, ptr %i.a, align 8, !noalias !295 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  %i.z = icmp eq i64 %.sroa.0.0.copyload.i.i.us.us.i.i, -2
  br i1 %i.z, label %.split.us.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.us.us.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.split.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.75.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.410.i.i.i.i.i, i64 72, i1 false), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  %.not.i7.us.us.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.us.us.i.i, -3
  br i1 %.not.i7.us.us.i.i, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit.sink.split, label %.loopexit.i.i

.lr.ph.split.i.i:                                 ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i, %.lr.ph.split.preheader.i.i
  %i.aa = phi i64 [ %i.aw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i ], [ %.promoted32.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.pre.i2.i.i2829.i.i = phi i64 [ %.pre.i2.i.i27.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i ], [ %.promoted26.i.i, %.lr.ph.split.preheader.i.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.ab = icmp ult i64 %i.i, %i.aa
  br i1 %i.ab, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !289 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i.i
  %i.ac = phi i64 [ %i.aq, %bb.d ], [ %i.aa, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.ad = sub nuw i64 %i.i, %i.ac                 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ac ; 2 uses
  %i.af = icmp samesign ult i64 %i.ad, 16
  br i1 %i.af, label %.preheader.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ag = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ad), !noalias !299 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.an, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !300, !noalias !299, !noundef !4
  %i.am = icmp eq i8 %i.al, %.pre.i.i.i.i.i
  br i1 %i.am, label %.loopexit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.an = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.an, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.b ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ao = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.ad
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %i.ac, 1
  %i.aq = add i64 %i.ap, %.sroa.5.0.i.i.i.i.i.i   ; 10 uses
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !289
  %.not11.i.i.i.i.i = icmp ult i64 %i.aq, %i.m
  %.not12.i.i.i.i.i = icmp ugt i64 %i.aq, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i.i.i:                            ; preds = %bb.b, %.preheader.i.i.i.i.i.i, %bb.c
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !289
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i.i
  %i.ar = icmp ult i64 %i.i, %i.aq
  br i1 %i.ar, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.as = sub nuw i64 %i.aq, %i.m                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.as
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.j, i64 %i.m), !noalias !301
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.d

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.e
  store i64 %i.aq, ptr %i.b, align 8, !alias.scope !287
  br label %select.unfold.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i: ; preds = %bb.d, %.loopexit15.i.i.i.i.i, %.lr.ph.split.i.i
  %i.av = phi i64 [ %i.aa, %.lr.ph.split.i.i ], [ %i.i, %.loopexit15.i.i.i.i.i ], [ %i.aq, %bb.d ]
  store i8 1, ptr %i.c, align 1, !alias.scope !290
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i2829.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.aw = phi i64 [ %i.aq, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.av, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i ]
  %.pre.i2.i.i27.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre.i2.i.i2829.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i ]
  %i.ax = phi i1 [ false, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i ]
  %.pn.i.i = phi i64 [ %i.as, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i.i)
  %.not.i.i.i = icmp eq i64 %.pn.i.i, %.pre.i2.i.i2829.i.i
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.pre.i2.i.i2829.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pre.i2.i.i2829.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %i.ay = load ptr, ptr %.val.i.i6.i.i, align 8, !noalias !296, !nonnull !4, !align !11, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = load i8, ptr %i.az, align 8, !range !5, !noalias !296, !noundef !4
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @_RNvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directiveNtB2_9Directive5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, i1 noundef zeroext %i.bb), !noalias !297
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !295 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -2
  br i1 %i.bc, label %.split.us.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i.i

.split.us.i.i:                                    ; preds = %bb.f, %.lr.ph.split.us.split.us.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.bd = load i64, ptr %3, align 8, !range !17, !alias.scope !302, !noalias !303, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i, label %bb.g

bb.g:                                             ; preds = %.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %bb.h, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !307, !noalias !303 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !307, !noalias !303, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.bi = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !308 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.bi(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %bb.j unwind label %bb.l, !noalias !308

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !6, !invariant.load !4, !noalias !308 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !15, !invariant.load !4, !noalias !308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #26, !noalias !308
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i

bb.l:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !6, !invariant.load !4, !noalias !308 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.body.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !15, !invariant.load !4, !noalias !308
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #26, !noalias !308
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !295
  resume { ptr, i32 } %i.bo

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i: ; preds = %bb.k, %bb.j, %bb.g, %.split.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  br label %.loopexit.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.75.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.410.i.i.i.i.i, i64 72, i1 false), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  %.not.i7.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -3
  br i1 %.not.i7.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.us.us.i.i
  %.sroa.0.0.copyload.i.i23.i.i = phi i64 [ -2, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread12.i.i ], [ %.sroa.0.0.copyload.i.i.us.us.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.us.us.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i.i ]
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.75.i.i, i64 72, i1 false), !noalias !309
  br label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit.sink.split

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i.i, %select.unfold.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i)
  br i1 %i.ax, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit, label %.lr.ph.split.i.i

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit.sink.split: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.us.us.i.i, %.loopexit.i.i
  %storemerge.i.i.ph = phi i64 [ %.sroa.0.0.copyload.i.i23.i.i, %.loopexit.i.i ], [ -3, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.us.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i)
  br label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit.sink.split, %.lr.ph.split.us.split.i.i, %bb.a, %.lr.ph.split.us.i.i
  %storemerge.i.i = phi i64 [ -3, %.lr.ph.split.us.split.i.i ], [ -3, %.lr.ph.split.us.i.i ], [ -3, %bb.a ], [ %storemerge.i.i.ph, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env7builderNtB1A_7Builder5parseReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB2R_INtNtBc_6result6ResultNtNtB1C_9directive9DirectiveNtNtB1E_9directive10ParseErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5v_B4w_EENCB1w_s_0NCINvXB8_INtB8_12GenericShuntINtB3J_3MapBQ_B6k_EIB4b_zB4Y_EEB2W_8try_folduNCINvNvB2W_12try_for_each4callB4w_B69_NcNtB69_5Break0E0B69_E0E0B5u_ECsarFSTFZzLuM_11xet_runtime.exit.sink.split ], [ -3, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowIB19_NtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEENCINvMNtB1W_7builderNtB3b_7Builder5parseB15_E0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB1S_NtNtB1Y_9directive10ParseErrorEuB18_NCB37_s_0NCINvXB6_INtB6_12GenericShuntINtB3U_3MapINtB4_6FilterINtNtNtBa_3str4iter5SplitcEB35_EB5l_EIB4m_zB4L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB78_12try_for_each4callB1S_B1N_NcNtB1N_5Break0E0B1N_E0E0E0CsarFSTFZzLuM_11xet_runtime.exit.thread.i.i ], [ -3, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !310
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs2KMS13e2TGE_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B55_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs2KMS13e2TGE_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.010.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.010.i.prol, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.c
  %.sroa.42.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.prol, align 8, !noalias !320
  %i.f = add i64 %i.c, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !319

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1
  %i.h = icmp ugt i64 %i.g, -4
  br i1 %i.h, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs2KMS13e2TGE_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !320
  %i.k = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.k, i64 72
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !noalias !320
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.2, align 8, !noalias !320
  %i.m = add nuw i64 %.sroa.0.010.i, 4            ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.3, align 8, !noalias !320
  %i.o = add i64 %i.i, 4                          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs2KMS13e2TGE_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit, label %.lr.ph.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs2KMS13e2TGE_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !321
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1u_5ShardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callINtNtB1w_4page6SharedB2h_B3m_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB4X_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i
  %.val4.i = phi i64 [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = invoke noundef i64 @_RNvYNtNtCskeoOuuhwsQF_12sharded_slab3cfg13DefaultConfigNtB4_10CfgPrivate9page_sizeCsarFSTFZzLuM_11xet_runtime(i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.b, !noalias !332 ; 2 uses

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %.lr.ph.i
  %i.h = add nuw i64 %.sroa.0.010.i, 1            ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !noalias !333, !noundef !4 ; 2 uses
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %i.e, align 8, !noalias !333
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i ; 4 uses
  store ptr null, ptr %i.k, align 8, !noalias !334
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 274877906944, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !334
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.g, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !334
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !334
  %i.l = add i64 %.val4.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !332
  resume { ptr, i32 } %i.m

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsarFSTFZzLuM_11xet_runtime.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !332
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1u_5ShardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtB1w_4page5LocalNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5r_3VecB4Z_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 3
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !343
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %.lr.ph.i
  %.val6.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !344
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB1w_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callINtB1w_4SlotB2A_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4X_3VecB4x_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5array4SlotNtCs5ZfSctYBbRf_16tracing_appender3MsgEuNCNvMs_B28_INtB28_7ChannelB32_E13with_capacity0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB52_3VecB25_E14extend_trustedINtB1B_3MapB3_B3G_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.010.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.010.i.prol, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.0.copyload, i64 %i.c
  store i64 %.sroa.0.010.i.prol, ptr %i.e, align 8, !noalias !354
  %i.f = add i64 %i.c, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !353

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1
  %i.h = icmp ugt i64 %i.g, -4
  br i1 %i.h, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5array4SlotNtCs5ZfSctYBbRf_16tracing_appender3MsgEuNCNvMs_B28_INtB28_7ChannelB32_E13with_capacity0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB52_3VecB25_E14extend_trustedINtB1B_3MapB3_B3G_EE0E0E0ECsarFSTFZzLuM_11xet_runtime.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.j = add nuw i64 %.sroa.0.010.i, 1
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  store i64 %.sroa.0.010.i, ptr %i.k, align 8, !noalias !354
  %i.l = add nuw i64 %.sroa.0.010.i, 2
  %i.m = getelementptr [32 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %i.n = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.j, ptr %i.n, align 8, !noalias !354
  %i.o = add nuw i64 %.sroa.0.010.i, 3
  %i.p = getelementptr [32 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %i.q = getelementptr i8, ptr %i.p, i64 64
  store i64 %i.l, ptr %i.q, align 8, !noalias !354
end_hunk_0
