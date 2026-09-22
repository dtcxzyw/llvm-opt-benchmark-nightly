Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.08?download=true
inline.NumInlined: 664
inline.NumDeleted: 341
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchEECsarFSTFZzLuM_11xet_runtime:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB4_10XetRuntimeNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.c = load i64, ptr %i.a, align 8, !range !12, !alias.scope !360, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !363, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !364
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtCskKLDkoKarTP_4core6option6OptionIBx_NtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEEE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i unwind label %bb.s

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !366, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !369, !nonnull !4, !noundef !4
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !370
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtCskKLDkoKarTP_4core6option6OptionIBx_NtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEEE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #28
          to label %bb.o unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i.i = load i32, ptr %i.q, align 8, !alias.scope !373, !noundef !4
  switch i32 %.val.i.i.i, label %bb.i [
    i32 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i
    i32 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i
    i32 0, label %bb.j
  ], !prof !19

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #30
          to label %.noexc6.i unwind label %bb.q

.noexc6.i:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.s = load i64, ptr %i.r, align 8, !range !12, !alias.scope !376, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !379, !nonnull !4, !noundef !4
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !380
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.q

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.y = load ptr, ptr %i.t, align 8, !alias.scope !383, !nonnull !4, !noundef !4
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !384
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.q

bb.o:                                             ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i
  %.pn2.i = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !range !20, !alias.scope !385, !noundef !4
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemMonitorEEB13_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemMonitorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemMonitorEEB13_.exit.i unwind label %bb.s

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit5.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !range !20, !alias.scope !386, !noundef !4
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEBJ_.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemMonitorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.af)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEBJ_.exit

bb.s:                                             ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native14RuntimeBackendEBJ_.exit.i, %bb.d
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemMonitorEEB13_.exit.i: ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %.pn2.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEBJ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyEL_EECsarFSTFZzLuM_11xet_runtime(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !7, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_ENtNtNtBM_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #26
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_ENtNtNtBM_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_ENtNtNtBM_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !7, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_ENtNtNtBM_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #26
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_ENtNtNtBM_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_ENtNtNtBM_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit [
    i64 3, label %bb.b
    i64 4, label %bb.d
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !397, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !397
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !400, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !400
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavoruEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit [
    i64 3, label %bb.b
    i64 4, label %bb.d
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !411, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !411
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !414, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !414
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelEECsarFSTFZzLuM_11xet_runtime.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsb_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #28
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.b = load i64, ptr %0, align 8, !range !21, !alias.scope !425, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit [
    i64 3, label %bb.d
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !428, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !428
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !431, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !431
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavorNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel8ReceiveruEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsb_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavoruEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #28
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.b = load i64, ptr %0, align 8, !range !21, !alias.scope !442, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavoruEECsarFSTFZzLuM_11xet_runtime.exit [
    i64 3, label %bb.d
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !445, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !445
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavoruEECsarFSTFZzLuM_11xet_runtime.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavoruEECsarFSTFZzLuM_11xet_runtime.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtBG_6WorkerNtNtBI_7rolling19RollingFileAppenderE13worker_thread0ECsarFSTFZzLuM_11xet_runtime:bb.a
bb.y:                                             ; preds = %bb.w, %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_RNvXsb_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel14ReceiverFlavoruEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq) #28
          to label %common.resume.i unwind label %bb.af

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjfHCj4Qo55Q_17crossbeam_channel7channel8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgEECsarFSTFZzLuM_11xet_runtime.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.as = load i64, ptr %i.aq, align 8, !range !21, !alias.scope !574, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  switch i64 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime.exit [
    i64 3, label %bb.ab
    i64 4, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !577, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !578
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime.exit

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime.exit

bb.ad:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.ax = load ptr, ptr %i.at, align 8, !alias.scope !581, !nonnull !4, !noundef !4
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !582
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime.exit

bb.af:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume.i:                                  ; preds = %bb.z, %.body3.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ar, %bb.z ], [ %.pn.i, %.body3.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ag:                                            ; preds = %.body3.i, %.body.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtBJ_13SystemMonitor5starts_0EBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !597, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !597
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsarFSTFZzLuM_11xet_runtime.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs5ox3Af2aNoB_10hyper_util(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemSamplerEBH_(ptr noalias nofree noundef align 8 dereferenceable(928) %0) #28
          to label %bb.d unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor13SystemSamplerEBH_(ptr noalias nofree noundef align 8 dereferenceable(928) %0)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !600, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !600
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEEB1B_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEE9drop_slowB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEEB1B_.exit unwind label %bb.i

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsarFSTFZzLuM_11xet_runtime.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsarFSTFZzLuM_11xet_runtime.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !603, !nonnull !4, !noundef !4
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !603
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEEB1B_.exit3

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEE9drop_slowB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEEB1B_.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEEB1B_.exit3: ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEEEB1B_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsarFSTFZzLuM_11xet_runtime.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsarFSTFZzLuM_11xet_runtime.exit
    i64 1, label %bb.c
  ], !prof !17

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !606
  store i8 3, ptr %i.a, align 8, !alias.scope !606
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle10EnterGuardECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtNtCsUrhh0HcRih_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #28
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.b = load i64, ptr %0, align 8, !range !15, !alias.scope !622, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime7context7current15SetCurrentGuardECsarFSTFZzLuM_11xet_runtime.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !626, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !627
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime7context7current15SetCurrentGuardECsarFSTFZzLuM_11xet_runtime.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime7context7current15SetCurrentGuardECsarFSTFZzLuM_11xet_runtime.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !630, !nonnull !4, !noundef !4
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !631
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime7context7current15SetCurrentGuardECsarFSTFZzLuM_11xet_runtime.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime7context7current15SetCurrentGuardECsarFSTFZzLuM_11xet_runtime.exit

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime7context7current15SetCurrentGuardECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !642, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !645, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !645
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !648, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !648
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime7builder7BuilderECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !727, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !727
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECsarFSTFZzLuM_11xet_runtime.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SendNtB1U_4SyncEL_E9drop_slowCsUrhh0HcRih_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !728, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !729
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCsUrhh0HcRih_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !730, !noundef !4 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit12, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECsarFSTFZzLuM_11xet_runtime.exit
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !731
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit12

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCsUrhh0HcRih_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit12 unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.d, %bb.c, %bb.e, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.e, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !732, !noundef !4 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit14, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit
  %i.s = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !733
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECsarFSTFZzLuM_11xet_runtime.exit14
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime3new:bb.a
  ], !prof !19

bb.aa:                                            ; preds = %bb.z
  %i.cv = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE)
          to label %bb.ac unwind label %bb.x      ; 2 uses

bb.ab:                                            ; preds = %bb.z, %bb.ac, %bb.z
  %.sroa.09.0.i = phi i8 [ %i.cv, %bb.ac ], [ %i.cu, %bb.z ], [ %i.cu, %bb.z ]
  %i.cw = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4
  %i.cx = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cw, i8 noundef %.sroa.09.0.i)
          to label %bb.ad unwind label %bb.x

bb.ac:                                            ; preds = %bb.aa
  %i.cy = icmp eq i8 %i.cv, 0
  br i1 %i.cy, label %bb.ae, label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.cx, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.p, ptr %i.m, align 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8
  store ptr @50, ptr %i.n, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.dd, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @29, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.dc, ptr %.sroa.4.0..sroa_idx.i, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.ai unwind label %bb.x

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

.body.i:                                          ; preds = %bb.ar, %bb.aj, %bb.af, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.cr, %bb.x ], [ %i.cz, %bb.af ], [ %i.dh, %bb.aj ], [ %i.dr, %bb.ar ] ; 2 uses
  %i.df = load i64, ptr %i.r, align 8, !range !12, !noundef !4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.body102, label %bb.aw

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.di = load i64, ptr %i.r, align 8, !range !12, !noundef !4
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %bb.ak, label %.noexc99

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %.noexc99 unwind label %bb.bh

.noexc99:                                         ; preds = %bb.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i: ; preds = %bb.v, %.preheader56.i.i.preheader, %.lr.ph.i.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i, %.preheader.i.i, %bb.t, %bb.t, %bb.s
  %i.dk = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dl = icmp ult i64 %i.dk, 4
  br i1 %i.dl, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
  %i.dm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dm, label %bb.am [
    i8 0, label %bb.aq
    i8 1, label %bb.an
    i8 2, label %bb.an
  ], !prof !19

bb.am:                                            ; preds = %bb.al
  %i.dn = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE)
          to label %bb.ao unwind label %bb.x      ; 2 uses

bb.an:                                            ; preds = %bb.al, %bb.ao, %bb.al
  %.sroa.018.0.i = phi i8 [ %i.dn, %bb.ao ], [ %i.dm, %bb.al ], [ %i.dm, %bb.al ]
  %i.do = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4
  %i.dp = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.do, i8 noundef %.sroa.018.0.i)
          to label %bb.ap unwind label %bb.x

bb.ao:                                            ; preds = %bb.am
  %i.dq = icmp eq i8 %i.dn, 0
  br i1 %i.dq, label %bb.aq, label %bb.an

bb.ap:                                            ; preds = %bb.an
  br i1 %i.dp, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.au, %bb.ap, %bb.ao, %bb.al, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit67.i unwind label %bb.aj

bb.at:                                            ; preds = %bb.ap
  %i.dt = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @51, ptr %i.k, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 159 to ptr), ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @29, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @52, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.020.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %.sroa.020.sroa.4.0..sroa_idx.i, align 8
  %.sroa.020.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 2, ptr %.sroa.020.sroa.5.0..sroa_idx.i, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.du, ptr %.sroa.421.0..sroa_idx.i, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.au unwind label %bb.x

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit67.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dz = load i64, ptr %i.r, align 8, !range !12, !noundef !4
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %.sink.split.i, label %.noexc100

.sink.split.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit67.i, %.noexc98
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %.noexc100 unwind label %bb.bh

.noexc100:                                        ; preds = %.sink.split.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.eb = invoke { i64, ptr } @_RNvNtNtCsG258MDvU3F_3std6thread9functions21available_parallelism()
          to label %.noexc101 unwind label %bb.bh ; 2 uses

.noexc101:                                        ; preds = %.noexc100
  %i.ec = extractvalue { i64, ptr } %i.eb, 0
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 5 uses
  %i.ee = trunc nuw i64 %i.ec to i1
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  br i1 %i.ee, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %bb.aw, %bb.x
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aw:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #28
          to label %.body102 unwind label %bb.av

bb.ax:                                            ; preds = %.noexc101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.eh = call i64 @llvm.umax.i64(i64 %i.ef, i64 2)
  %i.ei = call range(i64 2, 33) i64 @llvm.umin.i64(i64 %i.eh, i64 32)
  br label %bb.bb

bb.ay:                                            ; preds = %.noexc101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.ej = and i64 %i.ef, 3
  switch i64 %i.ej, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i
    i64 3, label %bb.az
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i
    i64 1, label %bb.ba
  ], !prof !17

default.unreachable:                              ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.ek = icmp ult ptr %i.ed, inttoptr (i64 188978561024 to ptr)
  %i.el = and i64 %i.ef, 1095216660480
  %i.em = icmp ne i64 %i.el, 1095216660480
  call void @llvm.assume(i1 %i.ek)
  call void @llvm.assume(i1 %i.em)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.en = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.eo, align 8, !alias.scope !1345
  store i8 3, ptr %i.b, align 8, !alias.scope !1345
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.bh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.ax
  %.sroa.022.084.i = phi i64 [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %i.ei, %bb.ax ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.022.084.i, ptr %i.i, align 8
  %i.ep = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.eq = icmp ult i64 %i.ep, 3
  br i1 %i.eq, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.er = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.er, label %bb.bd [
    i8 0, label %bb.bf
    i8 1, label %bb.be
    i8 2, label %bb.be
  ], !prof !19

bb.bd:                                            ; preds = %bb.bc
  %i.es = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss0_10___CALLSITE) #32
          to label %.noexc105 unwind label %bb.bh ; 2 uses

.noexc105:                                        ; preds = %bb.bd
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bc, %.noexc105, %bb.bc
  %.sroa.032.0.i = phi i8 [ %i.es, %.noexc105 ], [ %i.er, %bb.bc ], [ %i.er, %bb.bc ]
  %i.eu = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss0_10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ev = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eu, i8 noundef %.sroa.032.0.i)
          to label %.noexc106 unwind label %bb.bh

.noexc106:                                        ; preds = %bb.be
  br i1 %i.ev, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.noexc107, %.noexc106, %.noexc105, %bb.bc, %bb.bb
  %i.ew = phi i64 [ %.sroa.022.084.i, %.noexc105 ], [ %.sroa.022.084.i, %bb.bc ], [ %.sroa.022.084.i, %bb.bb ], [ %.pre.i, %.noexc107 ], [ %.sroa.022.084.i, %.noexc106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit

bb.bg:                                            ; preds = %.noexc106
  %i.ex = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss0_10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx.i, align 8
  store ptr @53, ptr %i.g, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.ez, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @29, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.034.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %.sroa.034.sroa.4.0..sroa_idx.i, align 8
  %.sroa.034.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.034.sroa.5.0..sroa_idx.i, align 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ey, ptr %.sroa.435.0..sroa_idx.i, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ex, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc107 unwind label %bb.bh

.noexc107:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.pre.i = load i64, ptr %i.i, align 8
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bd, %bb.ba, %.noexc100, %.sink.split.i, %bb.ak, %bb.r, %bb.bk, %bb.bj, %bb.bi, %_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit
  %.sroa.024.2 = phi i1 [ false, %bb.bk ], [ false, %bb.bj ], [ false, %bb.bi ], [ true, %_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit ], [ true, %bb.bg ], [ true, %bb.r ], [ true, %bb.ak ], [ true, %.sink.split.i ], [ true, %.noexc100 ], [ true, %bb.ba ], [ true, %bb.bd ], [ true, %bb.be ]
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.body102:                                         ; preds = %.body.i, %bb.aw, %bb.bh
  %.sroa.024.2.lpad-body = phi i1 [ %.sroa.024.2, %bb.bh ], [ true, %bb.aw ], [ true, %.body.i ]
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.fb, %bb.bh ], [ %.pn.i, %bb.aw ], [ %.pn.i, %.body.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime7builder7BuilderECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(216) %i.aa) #28
          to label %bb.q unwind label %bb.ct

_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit: ; preds = %bb.bf, %.noexc99
  %.sroa.0.0.i = phi i64 [ %i.ew, %bb.bf ], [ %.sroa.1170.0.i, %.noexc99 ]
  %i.fc = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB2_7Builder14worker_threads(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.aa, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44)
          to label %bb.bi unwind label %bb.bh

bb.bi:                                            ; preds = %_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit
  %i.fd = invoke noundef nonnull align 8 ptr @_RINvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB3_7Builder15on_thread_startNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1f_10XetRuntime3new0EB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.fc, ptr noundef nonnull %i.bc, i32 noundef %i.bh)
          to label %bb.bj unwind label %bb.bh     ; 3 uses

bb.bj:                                            ; preds = %bb.bi
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store i64 0, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  store i32 100000000, ptr %i.ff, align 8
  %i.fg = invoke noundef nonnull align 8 ptr @_RINvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB3_7Builder14thread_name_fnNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1e_10XetRuntime3news_0EB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.fd, i64 noundef 0)
          to label %bb.bk unwind label %bb.bh     ; 5 uses

bb.bk:                                            ; preds = %bb.bj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 1, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 8000000, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 205
  store i8 1, ptr %i.fj, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 206
  store i8 1, ptr %i.fk, align 2
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB2_7Builder5build(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.fg)
          to label %bb.bl unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bk
  %i.fl = load i64, ptr %i.ab, align 8, !range !15, !noundef !4 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %i.fm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fo = load ptr, ptr %i.fn, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.8)
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.574.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.8, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fo, ptr %.sroa.473.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime7builder7BuilderECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(216) %i.aa)
          to label %bb.cv unwind label %.split

bb.bn:                                            ; preds = %bb.bl
  %.sroa.443.sroa.0.0.copyload = load i64, ptr %i.fn, align 8
  %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.443.sroa.4.0.copyload = load ptr, ptr %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx, align 8
  %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.544.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.8)
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.8, i64 16, i1 false)
  store i64 %i.fl, ptr %i.ac, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.443.sroa.0.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.443.sroa.4.0.copyload, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime7builder7BuilderECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(216) %i.aa)
          to label %bb.bo unwind label %bb.cu

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.val = load i64, ptr %i.fp, align 8, !range !12, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.val92 = load ptr, ptr %i.fq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fr = trunc nuw i64 %.val to i1
  %i.fs = atomicrmw add ptr %.val92, i64 1 monotonic, align 8
  %i.ft = icmp slt i64 %i.fs, 0                   ; 2 uses
  br i1 %i.fr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
end_hunk_2
