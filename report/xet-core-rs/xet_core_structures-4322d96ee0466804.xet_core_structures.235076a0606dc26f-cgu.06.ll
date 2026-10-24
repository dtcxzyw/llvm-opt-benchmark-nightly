Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.06?download=true
inline.NumInlined: 519
inline.NumDeleted: 359
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures:bb.a
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
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !80
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
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !83
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
  %i.c = phi ptr [ %i.az, %bb.c ], [ %.sroa.0.0.copyload, %bb.a ] ; 7 uses
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
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 %i.g     ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 4
  %bound0 = icmp ult ptr %i.j, %.sroa.4.0.copyload
  %bound1 = icmp ult ptr %i.c, %i.l
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.j, %i.m
  %bound19 = icmp ult ptr %i.b, %i.l
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387896      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = load i32, ptr %i.b, align 4, !alias.scope !101, !noalias !102, !noundef !4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !alias.scope !103, !noalias !104
  %wide.load11 = load <4 x i32>, ptr %i.r, align 4, !alias.scope !103, !noalias !104
  %i.s = add <4 x i32> %broadcast.splat, %wide.load
  %i.t = add <4 x i32> %broadcast.splat, %wide.load11
  %i.u = getelementptr [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.s, ptr %i.u, align 4, !alias.scope !105, !noalias !106
  store <4 x i32> %i.t, ptr %i.v, align 4, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.ph, 1
  %i.x = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.ph
  %.val15.i.i.prol = load i32, ptr %i.y, align 4, !noalias !104, !noundef !4
  %i.z = load i32, ptr %i.b, align 4, !noalias !102, !noundef !4
  %i.aa = add i32 %i.z, %.val15.i.i.prol
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !107
  %i.ac = add i64 %.ph, 1                         ; 2 uses
  %i.ad = or disjoint i64 %.sroa.01.0.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %.sroa.01.0.i.i.unr = phi i64 [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %i.h, %.neg
  br i1 %i.ae, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i
  %.val15.i.i = load i32, ptr %i.ag, align 4, !noalias !104, !noundef !4
  %i.ah = load i32, ptr %i.b, align 4, !noalias !102, !noundef !4
  %i.ai = add i32 %i.ah, %.val15.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !107
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.val15.i.i.1 = load i32, ptr %i.al, align 4, !noalias !104, !noundef !4
  %i.am = load i32, ptr %i.b, align 4, !noalias !102, !noundef !4
  %i.an = add i32 %i.am, %.val15.i.i.1
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  store i32 %i.an, ptr %i.ap, align 4, !noalias !107
  %i.aq = add i64 %i.af, 2                        ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i.i, 2          ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.h
  br i1 %i.as, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit, label %scalar.ph, !llvm.loop !100

bb.c:                                             ; preds = %bb.a
  %i.at = add i64 %.sroa.6.0.copyload, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.au = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.av = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 2
  %.not.i.not.i = icmp ult i64 %i.at, %i.ax
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  br i1 %.not.i.not.i, label %._crit_edge.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRmmuNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0NCINvNvB1r_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4F_3VecmE14extend_trustedINtB2a_3MapBN_B2w_EE0E0E0EB2E_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c, %._crit_edge.i
  %.sroa.5.0.copyload.sink = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %.sroa.5.0.copyload, %._crit_edge.i ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !122
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3A_8for_each4callNtNtB1x_12file_structs21FileDataSequenceEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5v_3VecB4D_E14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.24.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.24.copyload = load ptr, ptr %.sroa.10.24..sroa_idx, align 8
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.11.24.copyload = load i64, ptr %.sroa.11.24..sroa_idx, align 8 ; 3 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtB29_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.bw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ] ; 3 uses
  %.sroa.0.023.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ]
  %i.k = add i64 %.sroa.0.023.i, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !139
  %i.l = invoke noundef i64 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %.sroa.8.24.copyload, i64 noundef 0, i64 noundef %.sroa.11.24.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !140 ; 3 uses

.noexc.i:                                         ; preds = %bb.b
  %i.m = icmp ult i64 %i.l, %.sroa.11.24.copyload
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %.sroa.11.24.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #24
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !140

.noexc7.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc.i
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.24.copyload, i64 %i.l ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !141, !noundef !4 ; 2 uses
  %i.q = icmp ult i64 %i.p, 192153584101141163
  call void @llvm.assume(i1 %i.q)
  %i.r = invoke noundef i64 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %.sroa.8.24.copyload, i64 noundef 0, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !140 ; 7 uses

.noexc8.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !141
  %i.s = add i64 %i.r, 1
  %i.t = load i64, ptr %i.o, align 8, !noalias !141, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 192153584101141163
  call void @llvm.assume(i1 %i.u)
  store i64 %i.s, ptr %i.b, align 8, !noalias !141
  store i64 %i.t, ptr %i.i, align 8, !noalias !141
  store i8 0, ptr %i.j, align 8, !noalias !141
  %i.v = invoke noundef i64 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %.sroa.8.24.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !140 ; 6 uses

.noexc9.i:                                        ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !141
  %i.x = load i64, ptr %i.o, align 8, !noalias !141, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.v, %i.r
  %.not.i.i.i = icmp ugt i64 %i.v, %i.x
  %or.cond.i.i.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f, !prof !142

bb.e:                                             ; preds = %.noexc9.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.v, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !140

.noexc10.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc9.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !141, !nonnull !4, !noundef !4
  %.idx5.i.i.i = mul nuw nsw i64 %i.r, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx5.i.i.i ; 9 uses
  %i.ac = icmp samesign eq i64 %i.r, %i.v
  br i1 %i.ac, label %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0B9_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx6.i.i.i = sub nuw i64 %i.v, %i.r
  %gepdiff.i.i.i = mul i64 %.idx6.i.i.i, 48       ; 2 uses
  %i.ad = udiv exact i64 %gepdiff.i.i.i, 48       ; 3 uses
  %min.iters.check = icmp ult i64 %gepdiff.i.i.i, 384
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.ad, 576460752303423480      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi66 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %index
  %i.am = getelementptr i8, ptr %i.ae, i64 36
  %i.an = getelementptr i8, ptr %i.af, i64 84
  %i.ao = getelementptr i8, ptr %i.ag, i64 132
  %i.ap = getelementptr i8, ptr %i.ah, i64 180
  %i.aq = getelementptr i8, ptr %i.ai, i64 228
  %i.ar = getelementptr i8, ptr %i.aj, i64 276
  %i.as = getelementptr i8, ptr %i.ak, i64 324
  %i.at = getelementptr i8, ptr %i.al, i64 372
  %i.au = load i32, ptr %i.am, align 4, !noalias !141, !noundef !4
  %i.av = load i32, ptr %i.an, align 4, !noalias !141, !noundef !4
  %i.aw = load i32, ptr %i.ao, align 4, !noalias !141, !noundef !4
  %i.ax = load i32, ptr %i.ap, align 4, !noalias !141, !noundef !4
  %i.ay = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 1
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 2
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 3
  %i.bc = load i32, ptr %i.aq, align 4, !noalias !141, !noundef !4
  %i.bd = load i32, ptr %i.ar, align 4, !noalias !141, !noundef !4
  %i.be = load i32, ptr %i.as, align 4, !noalias !141, !noundef !4
  %i.bf = load i32, ptr %i.at, align 4, !noalias !141, !noundef !4
  %i.bg = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 1
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 2
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.bf, i64 3
  %i.bk = add <4 x i32> %i.bb, %vec.phi           ; 2 uses
  %i.bl = add <4 x i32> %i.bj, %vec.phi66         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0B9_.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i32 [ 0, %bb.g ], [ %i.bn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.br, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i32 [ %i.bq, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %.sroa.04.0.i.i.i.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 36
  %.val.i.i.i.i = load i32, ptr %i.bp, align 4, !noalias !141, !noundef !4
  %i.bq = add i32 %.val.i.i.i.i, %.sroa.02.0.i.i.i.i ; 2 uses
  %i.br = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.ad
  br i1 %i.bs, label %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0B9_.exit.i.i, label %scalar.ph, !llvm.loop !134

_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0B9_.exit.i.i: ; preds = %scalar.ph, %middle.block, %bb.f
  %.sroa.0.0.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.bn, %middle.block ], [ %i.bq, %scalar.ph ]
  %i.bt = trunc i64 %i.r to i32
  %i.bu = trunc i64 %i.v to i32
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry3newmEB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i32 noundef %.sroa.0.0.i.i.i.i, i32 noundef %i.bt, i32 noundef %i.bu)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !140

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i: ; preds = %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0B9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !143
  %i.bw = add i64 %.val4.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !139
  %exitcond.not.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtB29_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit, label %bb.b

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.d, %.noexc8.i, %_RNCNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines41gen_random_file_info_with_xorb_references0B9_.exit.i.i, %bb.e, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !140
  resume { ptr, i32 } %lpad.loopexit.split-lp67

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtB29_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.bw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvNtNtBZ_12shard_format13test_routines41gen_random_file_info_with_xorb_references0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4T_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !140
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB1x_11MDBXorbInfoINtNtBc_7convert4FromRNtB1x_15MDBXorbInfoViewE4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callNtB1x_22XorbChunkSequenceEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5u_3VecB4R_E14extend_trustedBN_E0E0EB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !16, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = icmp ult i64 %i.c, %i.e
  br i1 %i.g, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_B27_NtB27_11MDBXorbInfoINtNtBa_7convert4FromRNtB27_15MDBXorbInfoViewE4from0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5z_3VecB25_E14extend_trustedINtB1B_3MapB3_B3D_EE0E0E0EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i
  %.val4.i = phi i64 [ %i.j, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  invoke void @_RNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_15MDBXorbInfoView5chunk(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.f, i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i unwind label %bb.b, !noalias !153

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i: ; preds = %.lr.ph.i
  %i.h = add i64 %.sroa.0.010.i, 1                ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !154
  %i.j = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  %exitcond.not.i = icmp eq i64 %i.h, %i.e
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_B27_NtB27_11MDBXorbInfoINtNtBa_7convert4FromRNtB27_15MDBXorbInfoViewE4from0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5z_3VecB25_E14extend_trustedINtB1B_3MapB3_B3D_EE0E0E0EB2b_.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !153
  resume { ptr, i32 } %i.k

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_B27_NtB27_11MDBXorbInfoINtNtBa_7convert4FromRNtB27_15MDBXorbInfoViewE4from0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5z_3VecB25_E14extend_trustedINtB1B_3MapB3_B3D_EE0E0E0EB2b_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryuNCNvXs2_BX_NtBX_11MDBXorbInfoINtNtBa_7convert4FromRNtBX_15MDBXorbInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2t_EE0E0E0B11_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !153
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs4_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB1x_11MDBFileInfoINtNtBc_7convert4FromRNtB1x_15MDBFileInfoViewE4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callNtB1x_21FileDataSequenceEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5t_3VecB4R_E14extend_trustedBN_E0E0EB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvXs4_B27_NtB27_11MDBFileInfoINtNtBa_7convert4FromRNtB27_15MDBFileInfoViewE4from0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5y_3VecB25_E14extend_trustedINtB1B_3MapB3_B3C_EE0E0E0EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.h
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvXs4_BX_NtBX_11MDBFileInfoINtNtBa_7convert4FromRNtBX_15MDBFileInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.ad, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvXs4_BX_NtBX_11MDBFileInfoINtNtBa_7convert4FromRNtBX_15MDBFileInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ] ; 3 uses
  %.sroa.0.016.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.p, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvXs4_BX_NtBX_11MDBFileInfoINtNtBa_7convert4FromRNtBX_15MDBFileInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i ] ; 2 uses
  %i.p = add i64 %.sroa.0.016.i, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !170
  %i.q = load i64, ptr %i.k, align 8, !noalias !170, !noundef !4 ; 4 uses
  %i.r = mul i64 %.sroa.0.016.i, 48
  %i.s = add i64 %i.r, 48                         ; 4 uses
  %i.t = icmp ugt i64 %i.s, %i.q
  br i1 %i.t, label %bb.h, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.l, align 8, !noalias !170, !noundef !4
  %i.v = sub nuw i64 %i.q, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store ptr %i.w, ptr %i.b, align 8, !noalias !170
  store i64 %i.v, ptr %i.m, align 8, !noalias !170
  store i64 0, ptr %i.n, align 8, !noalias !170
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !171

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.x = load i64, ptr %i.c, align 8, !range !6, !alias.scope !172, !noalias !170, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.d, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryuNCNvXs4_BX_NtBX_11MDBFileInfoINtNtBa_7convert4FromRNtBX_15MDBFileInfoViewE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2s_EE0E0E0B11_.exit.i, !prof !8

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  %i.z = load ptr, ptr %i.o, align 8, !alias.scope !172, !noalias !170, !nonnull !4, !noundef !4
  store ptr %i.z, ptr %i.a, align 8, !noalias !173
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 42, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27
          to label %bb.f unwind label %bb.e, !noalias !173

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %.loopexit.split-lp.i unwind label %bb.g, !noalias !173

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !173
  unreachable

bb.h:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.q, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !171

.noexc7.i:                                        ; preds = %bb.h
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENCNvMs0_B1p_NtB1p_11MDBXorbInfo21chunks_and_boundaries0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3P_8for_each4callTNtNtNtB1t_10merklehash9data_hash8DataHashmENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5J_3VecB4S_E14extend_trustedBN_E0E0EB1t_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 48                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 48
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.x, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.y, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !380, !noalias !381, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !380, !noalias !381, !noundef !4
  %i.m = add i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i64 32, i1 false), !noalias !382
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i32 %i.m, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !383
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !385, !noalias !381, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !385, !noalias !381, !noundef !4
  %i.u = add i32 %i.t, %i.r
  %i.v = getelementptr [40 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 32, i1 false), !noalias !382
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.v, i64 72
  store i32 %i.u, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !noalias !386
  %i.x = add i64 %i.g, 2                          ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.y, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !380, !noalias !381, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !380, !noalias !381, !noundef !4
  %i.ae = add i32 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 32, i1 false), !noalias !382
  %.sroa.42.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 %i.ae, ptr %.sroa.42.0..sroa_idx.i.i.epil, align 8, !noalias !383
  %i.ag = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldRBQ_TNtNtNtBW_10merklehash9data_hash8DataHashmEuNCNvMs0_BS_NtBS_11MDBXorbInfo21chunks_and_boundaries0NCINvNvB2o_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3M_E14extend_trustedINtB3e_3MapBF_B4u_EE0E0E0EBW_.exit.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !381
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCINvNtNtNtB1u_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBc_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5d_8for_each4callB1o_NCINvMsk_B4D_IB4B_B1o_E14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 40                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 40
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.h, i64 32, i1 false), !noalias !395
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.k, i64 32, i1 false), !noalias !395
  %i.n = add i64 %i.g, 2                          ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.p, i64 32, i1 false), !noalias !395
  %i.r = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5x_IB5v_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !396
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCINvNtNtNtB1u_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBc_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5f_8for_each4callmNCINvMsk_B4D_IB4B_mE14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5v_IB5t_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 40                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 640
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 576460752303423480       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.x = getelementptr i8, ptr %i.p, i64 32
  %i.y = getelementptr i8, ptr %i.q, i64 72
  %i.z = getelementptr i8, ptr %i.r, i64 112
  %i.aa = getelementptr i8, ptr %i.s, i64 152
  %i.ab = getelementptr i8, ptr %i.t, i64 192
  %i.ac = getelementptr i8, ptr %i.u, i64 232
  %i.ad = getelementptr i8, ptr %i.v, i64 272
  %i.ae = getelementptr i8, ptr %i.w, i64 312
  %i.af = load i32, ptr %i.x, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.ag = load i32, ptr %i.y, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.ah = load i32, ptr %i.z, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.ai = load i32, ptr %i.aa, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = load i32, ptr %i.ab, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.ao = load i32, ptr %i.ac, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.ap = load i32, ptr %i.ad, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.aq = load i32, ptr %i.ae, align 8, !alias.scope !411, !noalias !412, !noundef !4
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.am, ptr %i.av, align 4, !alias.scope !413, !noalias !414
  store <4 x i32> %i.au, ptr %i.aw, align 4, !alias.scope !413, !noalias !414
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5v_IB5t_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %.val15.i.prol = load i32, ptr %i.ba, align 8, !noalias !412, !noundef !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ay
  store i32 %.val15.i.prol, ptr %i.bb, align 4, !noalias !415
  %i.bc = add i64 %i.ay, 1                        ; 3 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !409

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5v_IB5t_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi i64 [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bx, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val15.i = load i32, ptr %i.bi, align 8, !noalias !412, !noundef !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  store i32 %.val15.i, ptr %i.bj, align 4, !noalias !415
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  %.val15.i.1 = load i32, ptr %i.bl, align 8, !noalias !412, !noundef !4
  %i.bm = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %.val15.i.1, ptr %i.bn, align 4, !noalias !415
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 112
  %.val15.i.2 = load i32, ptr %i.bp, align 8, !noalias !412, !noundef !4
  %i.bq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 %.val15.i.2, ptr %i.br, align 4, !noalias !415
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 152
  %.val15.i.3 = load i32, ptr %i.bt, align 8, !noalias !412, !noundef !4
  %i.bu = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i32 %.val15.i.3, ptr %i.bv, align 4, !noalias !415
  %i.bw = add i64 %i.bg, 4                        ; 2 uses
  %i.bx = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.e
  br i1 %i.by, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5v_IB5t_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph, !llvm.loop !410

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5v_IB5t_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !412
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCINvNtNtNtB1u_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBc_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5e_8for_each4callB1o_NCINvMsk_B4E_IB4C_B1o_E14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 40                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 40
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.h, i64 32, i1 false), !noalias !424
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.k, i64 32, i1 false), !noalias !424
  %i.n = add i64 %i.g, 2                          ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.p, i64 32, i1 false), !noalias !424
  %i.r = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0NCINvNvB24_8for_each4callBR_NCINvMsk_B5y_IB5w_BR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !425
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCINvNtNtNtB1u_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBc_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5g_8for_each4callmNCINvMsk_B4E_IB4C_mE14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5w_IB5u_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 40                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 640
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 576460752303423480       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.x = getelementptr i8, ptr %i.p, i64 32
  %i.y = getelementptr i8, ptr %i.q, i64 72
  %i.z = getelementptr i8, ptr %i.r, i64 112
  %i.aa = getelementptr i8, ptr %i.s, i64 152
  %i.ab = getelementptr i8, ptr %i.t, i64 192
  %i.ac = getelementptr i8, ptr %i.u, i64 232
  %i.ad = getelementptr i8, ptr %i.v, i64 272
  %i.ae = getelementptr i8, ptr %i.w, i64 312
  %i.af = load i32, ptr %i.x, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.ag = load i32, ptr %i.y, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.ah = load i32, ptr %i.z, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.ai = load i32, ptr %i.aa, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = load i32, ptr %i.ab, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.ao = load i32, ptr %i.ac, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.ap = load i32, ptr %i.ad, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.aq = load i32, ptr %i.ae, align 8, !alias.scope !440, !noalias !441, !noundef !4
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.am, ptr %i.av, align 4, !alias.scope !442, !noalias !443
  store <4 x i32> %i.au, ptr %i.aw, align 4, !alias.scope !442, !noalias !443
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5w_IB5u_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %.val15.i.prol = load i32, ptr %i.ba, align 8, !noalias !441, !noundef !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ay
  store i32 %.val15.i.prol, ptr %i.bb, align 4, !noalias !444
  %i.bc = add i64 %i.ay, 1                        ; 3 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !438

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5w_IB5u_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi i64 [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bx, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val15.i = load i32, ptr %i.bi, align 8, !noalias !441, !noundef !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  store i32 %.val15.i, ptr %i.bj, align 4, !noalias !444
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  %.val15.i.1 = load i32, ptr %i.bl, align 8, !noalias !441, !noundef !4
  %i.bm = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %.val15.i.1, ptr %i.bn, align 4, !noalias !444
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 112
  %.val15.i.2 = load i32, ptr %i.bp, align 8, !noalias !441, !noundef !4
  %i.bq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 %.val15.i.2, ptr %i.br, align 4, !noalias !444
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 152
  %.val15.i.3 = load i32, ptr %i.bt, align 8, !noalias !441, !noundef !4
  %i.bu = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i32 %.val15.i.3, ptr %i.bv, align 4, !noalias !444
  %i.bw = add i64 %i.bg, 4                        ; 2 uses
  %i.bx = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.e
  br i1 %i.by, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5w_IB5u_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph, !llvm.loop !439

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCINvNtNtNtBX_11xorb_object18xorb_object_format10test_utils34serialize_xorb_to_stream_referenceINtNtNtBb_2io6cursor6CursorQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0NCINvNvB24_8for_each4callmNCINvMsk_B5w_IB5u_mE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !441
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCNvMs4_NtNtB1u_11xorb_object18xorb_object_formatNtB2J_20SerializedXorbObject26from_xorb_with_compression0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB1o_E14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 40                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 40
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.h, i64 32, i1 false), !noalias !453
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.k, i64 32, i1 false), !noalias !453
  %i.n = add i64 %i.g, 2                          ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.p, i64 32, i1 false), !noalias !453
  %i.r = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_BR_uNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3E_20SerializedXorbObject26from_xorb_with_compression0NCINvNvB24_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5O_3VecBR_E14extend_trustedINtB2U_3MapBF_B3w_EE0E0E0EBX_.exit.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !454
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCNvMs4_NtNtB1u_11xorb_object18xorb_object_formatNtB2J_20SerializedXorbObject26from_xorb_with_compressions_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5z_3VecmE14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3C_20SerializedXorbObject26from_xorb_with_compressions_0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5M_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 40                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 640
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 576460752303423480       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.x = getelementptr i8, ptr %i.p, i64 32
  %i.y = getelementptr i8, ptr %i.q, i64 72
  %i.z = getelementptr i8, ptr %i.r, i64 112
  %i.aa = getelementptr i8, ptr %i.s, i64 152
  %i.ab = getelementptr i8, ptr %i.t, i64 192
  %i.ac = getelementptr i8, ptr %i.u, i64 232
  %i.ad = getelementptr i8, ptr %i.v, i64 272
  %i.ae = getelementptr i8, ptr %i.w, i64 312
  %i.af = load i32, ptr %i.x, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.ag = load i32, ptr %i.y, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.ah = load i32, ptr %i.z, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.ai = load i32, ptr %i.aa, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = load i32, ptr %i.ab, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.ao = load i32, ptr %i.ac, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.ap = load i32, ptr %i.ad, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.aq = load i32, ptr %i.ae, align 8, !alias.scope !469, !noalias !470, !noundef !4
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.am, ptr %i.av, align 4, !alias.scope !471, !noalias !472
  store <4 x i32> %i.au, ptr %i.aw, align 4, !alias.scope !471, !noalias !472
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3C_20SerializedXorbObject26from_xorb_with_compressions_0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5M_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %.val15.i.prol = load i32, ptr %i.ba, align 8, !noalias !470, !noundef !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ay
  store i32 %.val15.i.prol, ptr %i.bb, align 4, !noalias !473
  %i.bc = add i64 %i.ay, 1                        ; 3 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !467

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3C_20SerializedXorbObject26from_xorb_with_compressions_0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5M_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi i64 [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bx, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val15.i = load i32, ptr %i.bi, align 8, !noalias !470, !noundef !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  store i32 %.val15.i, ptr %i.bj, align 4, !noalias !473
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  %.val15.i.1 = load i32, ptr %i.bl, align 8, !noalias !470, !noundef !4
  %i.bm = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %.val15.i.1, ptr %i.bn, align 4, !noalias !473
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 112
  %.val15.i.2 = load i32, ptr %i.bp, align 8, !noalias !470, !noundef !4
  %i.bq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 %.val15.i.2, ptr %i.br, align 4, !noalias !473
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 152
  %.val15.i.3 = load i32, ptr %i.bt, align 8, !noalias !470, !noundef !4
  %i.bu = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i32 %.val15.i.3, ptr %i.bv, align 4, !noalias !473
  %i.bw = add i64 %i.bg, 4                        ; 2 uses
  %i.bx = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.e
  br i1 %i.by, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3C_20SerializedXorbObject26from_xorb_with_compressions_0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5M_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph, !llvm.loop !468

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvMs4_NtNtBX_11xorb_object18xorb_object_formatNtB3C_20SerializedXorbObject26from_xorb_with_compressions_0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5M_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !470
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCNvNtNtNtB1u_11xorb_object18xorb_object_format10test_utils17build_xorb_object0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecmE14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvNtNtNtBX_11xorb_object18xorb_object_format10test_utils17build_xorb_object0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 40                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 640
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 576460752303423480       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.x = getelementptr i8, ptr %i.p, i64 32
  %i.y = getelementptr i8, ptr %i.q, i64 72
  %i.z = getelementptr i8, ptr %i.r, i64 112
  %i.aa = getelementptr i8, ptr %i.s, i64 152
  %i.ab = getelementptr i8, ptr %i.t, i64 192
  %i.ac = getelementptr i8, ptr %i.u, i64 232
  %i.ad = getelementptr i8, ptr %i.v, i64 272
  %i.ae = getelementptr i8, ptr %i.w, i64 312
  %i.af = load i32, ptr %i.x, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.ag = load i32, ptr %i.y, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.ah = load i32, ptr %i.z, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.ai = load i32, ptr %i.aa, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = load i32, ptr %i.ab, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.ao = load i32, ptr %i.ac, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.ap = load i32, ptr %i.ad, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.aq = load i32, ptr %i.ae, align 8, !alias.scope !488, !noalias !489, !noundef !4
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.am, ptr %i.av, align 4, !alias.scope !490, !noalias !491
  store <4 x i32> %i.au, ptr %i.aw, align 4, !alias.scope !490, !noalias !491
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvNtNtNtBX_11xorb_object18xorb_object_format10test_utils17build_xorb_object0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %.val15.i.prol = load i32, ptr %i.ba, align 8, !noalias !489, !noundef !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ay
  store i32 %.val15.i.prol, ptr %i.bb, align 4, !noalias !492
  %i.bc = add i64 %i.ay, 1                        ; 3 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !486

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvNtNtNtBX_11xorb_object18xorb_object_format10test_utils17build_xorb_object0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi i64 [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bx, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val15.i = load i32, ptr %i.bi, align 8, !noalias !489, !noundef !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  store i32 %.val15.i, ptr %i.bj, align 4, !noalias !492
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  %.val15.i.1 = load i32, ptr %i.bl, align 8, !noalias !489, !noundef !4
  %i.bm = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %.val15.i.1, ptr %i.bn, align 4, !noalias !492
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 112
  %.val15.i.2 = load i32, ptr %i.bp, align 8, !noalias !489, !noundef !4
  %i.bq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 %.val15.i.2, ptr %i.br, align 4, !noalias !492
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 152
  %.val15.i.3 = load i32, ptr %i.bt, align 8, !noalias !489, !noundef !4
  %i.bu = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i32 %.val15.i.3, ptr %i.bv, align 4, !noalias !492
  %i.bw = add i64 %i.bg, 4                        ; 2 uses
  %i.bx = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.e
  br i1 %i.by, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvNtNtNtBX_11xorb_object18xorb_object_format10test_utils17build_xorb_object0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit, label %scalar.ph, !llvm.loop !487

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldRBQ_muNCNvNtNtNtBX_11xorb_object18xorb_object_format10test_utils17build_xorb_object0NCINvNvB24_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2U_3MapBF_B3u_EE0E0E0EBX_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !489
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRyRTmmEEENCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1G_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4e_8for_each4callB1r_NCINvMsk_B3C_IB3A_B1r_E14extend_trustedBN_E0E0EB1K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.r, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !501, !nonnull !4, !align !13, !noundef !4
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.k = load <2 x i32>, ptr %.val15.i, align 4, !noalias !502
  store <2 x i32> %i.k, ptr %i.j, align 4, !noalias !503
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %.val15.i.1 = load ptr, ptr %i.m, align 8, !noalias !501, !nonnull !4, !align !13, !noundef !4
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load <2 x i32>, ptr %.val15.i.1, align 4, !noalias !502
  store <2 x i32> %i.p, ptr %i.o, align 4, !noalias !503
  %i.q = add i64 %i.g, 2                          ; 3 uses
  %i.r = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.s = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val15.i.epil = load ptr, ptr %i.u, align 8, !noalias !501, !nonnull !4, !align !13, !noundef !4
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  %i.w = load <2 x i32>, ptr %.val15.i.epil, align 4, !noalias !502
  store <2 x i32> %i.w, ptr %i.v, align 4, !noalias !503
  %i.x = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_BU_uNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2B_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs0_0NCINvNvB10_8for_each4callBU_NCINvMsk_B4x_IB4v_BU_E14extend_trustedINtB1Q_3MapBF_B2s_EE0E0E0EB2F_.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !501
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRyRTmmEEENCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1G_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4d_8for_each4callyNCINvMsk_B3C_IB3A_yE14extend_trustedBN_E0E0EB1K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRyRTmmEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRBQ_yuNCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB2z_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0NCINvNvB10_8for_each4callyNCINvMsk_B4v_IB4t_yE14extend_trustedINtB1Q_3MapBF_B2q_EE0E0E0EB2D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.h, align 8, !noalias !512, !nonnull !4, !align !16, !noundef !4
  %i.i = load i64, ptr %.val15.i, align 8, !noalias !513, !noundef !4
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  store i64 %i.i, ptr %i.j, align 8, !noalias !514
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val15.i.1 = load ptr, ptr %i.l, align 8, !noalias !512, !nonnull !4, !align !16, !noundef !4
  %i.m = load i64, ptr %.val15.i.1, align 8, !noalias !513, !noundef !4
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store i64 %i.m, ptr %i.o, align 8, !noalias !514
  %i.p = add i64 %i.g, 2                          ; 3 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
end_hunk_1
