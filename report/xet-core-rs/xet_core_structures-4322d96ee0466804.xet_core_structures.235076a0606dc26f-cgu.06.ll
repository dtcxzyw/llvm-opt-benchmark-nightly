Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.06?download=true
inline.NumInlined: 519
inline.NumDeleted: 359
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscB05JMcjp6X_5regex5error5ErrorECs31YAwBA1AlL_19xet_core_structures:bb.a

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs31YAwBA1AlL_19xet_core_structures.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs31YAwBA1AlL_19xet_core_structures.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit
    i64 1, label %bb.c
  ], !prof !12

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !46
  store i8 3, ptr %i.a, align 8, !alias.scope !46
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor13vec_write_allNtNtB6_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !4  ; 6 uses
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !9, !alias.scope !49, !noundef !4
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !49, !noundef !4 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub i64 %i.a, %i.e
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !49, !noundef !4 ; 4 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ugt i64 %.val, %i.i
  br i1 %i.k, label %bb.d, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit

bb.d:                                             ; preds = %bb.c
  %i.l = sub nuw i64 %.val, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  tail call void @_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.l, i8 0)
  store i64 %.val, ptr %i.h, align 8, !alias.scope !49
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.val8, i64 %.val
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false)
  %i.r = add i64 %.val, %3                        ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ugt i64 %i.r, %i.s
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit, %bb.f
  store i64 %i.r, ptr %0, align 8
  %i.v = inttoptr i64 %3 to ptr
  %i.w = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.v, 1
  ret { i64, ptr } %i.w

bb.f:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures.exit
  store i64 %i.r, ptr %i.h, align 8
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextECs31YAwBA1AlL_19xet_core_structures(ptr noundef initializes((72, 73)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.c = load i64, ptr %i.b, align 8, !range !75, !alias.scope !76, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !80, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !80
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECs31YAwBA1AlL_19xet_core_structures.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !83, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !83
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECs31YAwBA1AlL_19xet_core_structures.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #30
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItermEENCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecmE14extend_trustedBN_E0E0EB1Q_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !13, !noundef !4 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %.not.i = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.aw, %bb.c ], [ %.sroa.0.0.copyload, %bb.a ] ; 7 uses
  %i.d = icmp eq ptr %i.c, %.sroa.4.0.copyload
  br i1 %i.d, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.e = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.g ; 2 uses
  %scevgep4 = getelementptr i8, ptr %i.b, i64 4
  %bound0 = icmp ult ptr %i.j, %.sroa.4.0.copyload
  %bound1 = icmp ult ptr %i.c, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %i.j, %scevgep4
  %bound16 = icmp ult ptr %i.b, %scevgep3
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387896      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !alias.scope !101, !noalias !102, !noundef !4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !alias.scope !103, !noalias !104
  %wide.load8 = load <4 x i32>, ptr %i.o, align 4, !alias.scope !103, !noalias !104
  %i.p = add <4 x i32> %broadcast.splat, %wide.load
  %i.q = add <4 x i32> %broadcast.splat, %wide.load8
  %i.r = getelementptr [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %i.p, ptr %i.r, align 4, !alias.scope !105, !noalias !106
  store <4 x i32> %i.q, ptr %i.s, align 4, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.ph, 1
  %i.u = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.ph
  %.val15.i.i.prol = load i32, ptr %i.v, align 4, !noalias !104, !noundef !4
  %i.w = load i32, ptr %i.b, align 4, !noalias !102, !noundef !4
  %i.x = add i32 %i.w, %.val15.i.i.prol
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i32 %i.x, ptr %i.y, align 4, !noalias !107
  %i.z = add i64 %.ph, 1                          ; 2 uses
  %i.aa = or disjoint i64 %.sroa.01.0.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.i.unr = phi i64 [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.h, %.neg
  br i1 %i.ab, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.an, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %i.ao, %scalar.ph ], [ %.sroa.01.0.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i
  %.val15.i.i = load i32, ptr %i.ad, align 4, !noalias !104, !noundef !4
  %i.ae = load i32, ptr %i.b, align 4, !noalias !102, !noundef !4
  %i.af = add i32 %i.ae, %.val15.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %i.af, ptr %i.ag, align 4, !noalias !107
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.val15.i.i.1 = load i32, ptr %i.ai, align 4, !noalias !104, !noundef !4
  %i.aj = load i32, ptr %i.b, align 4, !noalias !102, !noundef !4
  %i.ak = add i32 %i.aj, %.val15.i.i.1
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 4
  store i32 %i.ak, ptr %i.am, align 4, !noalias !107
  %i.an = add i64 %i.ac, 2                        ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i.i, 2          ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.h
  br i1 %i.ap, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %scalar.ph, !llvm.loop !100

bb.c:                                             ; preds = %bb.a
  %i.aq = add i64 %.sroa.6.0.copyload, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ar = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.as = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 2
  %.not.i.not.i = icmp ult i64 %i.aq, %i.au
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  br i1 %.not.i.not.i, label %._crit_edge.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c, %._crit_edge.i
  %.sroa.5.0.copyload.sink = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %.sroa.5.0.copyload, %._crit_edge.i ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.an, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.5.0.copyload.sink, ptr %.sroa.01.0.copyload, align 8, !noalias !108
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callNtNtB1x_12file_structs21FileDataSequenceEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5a_3VecB4i_E14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.h = icmp ult i64 %i.d, %i.f
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtB29_12shard_format13test_routines20gen_random_file_info0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.af, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ] ; 3 uses
  %.sroa.0.014.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ]
  %i.l = add i64 %.sroa.0.014.i, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  %i.m = invoke noundef i32 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangelINtNtNtCskKLDkoKarTP_4core3ops5range5RangelEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.g, i32 noundef 0, i32 noundef 10000, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %.noexc.i unwind label %bb.f, !noalias !122 ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %i.n = invoke noundef i32 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangelINtNtNtCskKLDkoKarTP_4core3ops5range5RangelEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.g, i32 noundef 0, i32 noundef 10000, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc7.i unwind label %bb.f, !noalias !122 ; 2 uses

.noexc7.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  %i.o = load i32, ptr %i.g, align 4, !alias.scope !124, !noalias !123, !noundef !4 ; 4 uses
  %i.p = icmp ult i32 %i.o, 63
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc7.i
  %i.q = load i32, ptr %i.i, align 4, !alias.scope !124, !noalias !123, !noundef !4
  invoke void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.g)
          to label %.noexc8.i unwind label %bb.f, !noalias !122

.noexc8.i:                                        ; preds = %bb.c
  %i.r = load i32, ptr %i.g, align 4, !alias.scope !124, !noalias !123, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 63
  br i1 %.not.i.i.i.i, label %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0B9_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc8.i
  %i.s = load i32, ptr %i.k, align 4, !alias.scope !124, !noalias !123, !noundef !4
  br label %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0B9_.exit.i.i

bb.e:                                             ; preds = %.noexc7.i
  %i.t = zext nneg i32 %i.o to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !124, !noalias !123, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !124, !noalias !123, !noundef !4
  %i.y = add nuw nsw i32 %i.o, 2
  br label %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0B9_.exit.i.i

_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0B9_.exit.i.i: ; preds = %bb.e, %bb.d, %.noexc8.i
  %.sroa.0.018.i.i.i.i = phi i32 [ %i.y, %bb.e ], [ 1, %.noexc8.i ], [ 2, %bb.d ]
  %.sroa.02.017.i.i.i.i = phi i32 [ %i.v, %bb.e ], [ %i.q, %.noexc8.i ], [ %i.r, %bb.d ]
  %.sroa.03.016.i.i.i.i = phi i32 [ %i.x, %bb.e ], [ %i.r, %.noexc8.i ], [ %i.s, %bb.d ]
  store i32 %.sroa.0.018.i.i.i.i, ptr %i.g, align 4, !alias.scope !124, !noalias !123
  %i.z = zext i32 %.sroa.03.016.i.i.i.i to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = zext i32 %.sroa.02.017.i.i.i.i to i64
  %i.ac = or disjoint i64 %i.aa, %i.ab
  invoke void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines8rng_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.ac)
          to label %.noexc9.i unwind label %bb.f, !noalias !122

.noexc9.i:                                        ; preds = %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0B9_.exit.i.i
  %i.ad = add i32 %i.n, %i.m
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry3newlEB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i32 noundef %i.n, i32 noundef %i.m, i32 noundef %i.ad)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i unwind label %bb.f, !noalias !122

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i: ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !125
  %i.af = add i64 %.val4.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  %exitcond.not.i = icmp eq i64 %i.l, %i.f
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtB29_12shard_format13test_routines20gen_random_file_info0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit, label %bb.b

bb.f:                                             ; preds = %.noexc9.i, %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info0B9_.exit.i.i, %bb.c, %.noexc.i, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !122
  resume { ptr, i32 } %i.ag

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtB29_12shard_format13test_routines20gen_random_file_info0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.af, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines20gen_random_file_info0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ]
end_hunk_0
