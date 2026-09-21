Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !39

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1
  store i8 %i.u, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1
  store i8 %i.ad, ptr %i.aa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #26
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Typer14TypeComparisonERKNS2_4TypeES6_NS2_22RegisterRepresentationENS2_12ComparisonOp4KindEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i8 %3, label %bb.t [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.k
    i8 4, label %bb.r
    i8 5, label %bb.r
    i8 6, label %bb.r
    i8 7, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler10turboshaft5Typer20TypeWord32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext %4, ptr noundef %5)
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler10turboshaft5Typer20TypeWord64ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext %4, ptr noundef %5)
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.a = load i8, ptr %1, align 8, !noalias !163
  %i.b = icmp eq i8 %i.a, 1
  %i.c = load i8, ptr %2, align 8, !noalias !163
  %i.d = icmp eq i8 %i.c, 1
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 8, !alias.scope !164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !alias.scope !164
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.f:                                             ; preds = %bb.d
  switch i8 %4, label %bb.j [
    i8 0, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit.i
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.i
  ]

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit.i: ; preds = %bb.f
  store <4 x i8> <i8 2, i8 1, i8 2, i8 0>, ptr %0, align 8, !alias.scope !163
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !163
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4294967296, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !163
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !163
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8LessThanERKNS2_9FloatTypeILm32EEES8_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %5)
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE15LessThanOrEqualERKNS2_9FloatTypeILm32EEES8_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %5)
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.i:                                             ; preds = %bb.f, %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #24, !noalias !163
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.f = load i8, ptr %1, align 8, !noalias !165
  %i.g = icmp eq i8 %i.f, 1
  %i.h = load i8, ptr %2, align 8, !noalias !165
  %i.i = icmp eq i8 %i.h, 1
  %or.cond.i18 = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %0, align 8, !alias.scope !166
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.j, i8 0, i64 23, i1 false), !alias.scope !166
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.m:                                             ; preds = %bb.k
  switch i8 %4, label %bb.q [
    i8 0, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit.i19
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.p
  ]

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit.i19: ; preds = %bb.m
  store <4 x i8> <i8 2, i8 1, i8 2, i8 0>, ptr %0, align 8, !alias.scope !165
  %.sroa.11.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.11.0..sroa_idx.i23, align 4, !alias.scope !165
  %.sroa.13.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4294967296, ptr %.sroa.13.0..sroa_idx.i24, align 8, !alias.scope !165
  %.sroa.15.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.15.0..sroa_idx.i25, align 8, !alias.scope !165
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8LessThanERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %5)
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE15LessThanOrEqualERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %5)
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.p:                                             ; preds = %bb.m, %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #24, !noalias !165
  unreachable

bb.q:                                             ; preds = %bb.m
  unreachable

bb.r:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %6 = load i8, ptr %1, align 8
  %7 = icmp eq i8 %6, 1
  %i.k = load i8, ptr %2, align 8
  %i.l = icmp eq i8 %i.k, 1
  %or.cond = select i1 %7, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.s, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit

bb.s:                                             ; preds = %bb.r
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %0, align 8, !alias.scope !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %8, i8 0, i64 23, i1 false), !alias.scope !167
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit: ; preds = %bb.r
  store <4 x i8> <i8 2, i8 1, i8 2, i8 0>, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4294967296, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.15.0..sroa_idx, align 8
  br label %_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit

bb.t:                                             ; preds = %bb.a
  unreachable

_ZN2v88internal8compiler10turboshaft5Typer21TypeFloat32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE.exit: ; preds = %bb.o, %bb.n, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit.i19, %bb.l, %bb.h, %bb.g, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit.i, %bb.e, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit, %bb.s, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Typer20TypeWord32ComparisonERKNS2_4TypeES6_NS2_12ComparisonOp4KindEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::WordType", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::WordType", align 8 ; 17 uses
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, 1
  %i.c = load i8, ptr %2, align 8
  %i.d = icmp eq i8 %i.c, 1
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !alias.scope !174
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !alias.scope !174
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, ptr noundef %4)
  switch i8 %3, label %bb.v [
    i8 0, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit
    i8 1, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit
    i8 2, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit
    i8 3, label %bb.d
    i8 4, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.g = load i8, ptr %i.f, align 1, !noalias !175
  %i.h = icmp eq i8 %i.g, 0                       ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noalias !175 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = load i32, ptr %i.k, align 4, !noalias !175 ; 2 uses
  %i.m = icmp ugt i32 %i.j, %i.l
  %spec.select.i.i = select i1 %i.m, i32 0, i32 %i.j
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.o = load i8, ptr %i.n, align 2, !noalias !175
  %i.p = icmp ult i8 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !175 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.p, ptr %i.q, ptr %i.r
  %i.s = load i32, ptr %.sroa.0.0.i.i.i.i, align 4, !noalias !175
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i64 %i.t, 32
  %i.w = trunc nuw i64 %i.v to i32
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i: ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %i.w, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.y = phi i32 [ %i.u, %bb.f ], [ %i.j, %bb.e ]
  %.0.i.i = phi i32 [ %i.s, %bb.f ], [ %spec.select.i.i, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !175
  %i.ab = icmp eq i8 %i.aa, 0                     ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !175 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !noalias !175 ; 3 uses
  %i.ag = icmp ugt i32 %i.ad, %i.af
  %spec.select.i8.i = select i1 %i.ag, i32 -1, i32 %i.af
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.i

bb.h:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !noalias !175 ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = icmp ult i8 %i.ai, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !175 ; 2 uses
  %.sroa.0.0.i.i.i6.i = select i1 %i.ak, ptr %i.al, ptr %i.am
  %i.an = getelementptr [4 x i8], ptr %.sroa.0.0.i.i.i6.i, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !175
  %i.aq = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = lshr i64 %i.aq, 32
  %i.at = trunc nuw i64 %i.as to i32
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.i

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.i: ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %i.at, %bb.h ], [ %i.af, %bb.g ]
  %i.av = phi i32 [ %i.ar, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.0.i7.i = phi i32 [ %i.ap, %bb.h ], [ %spec.select.i8.i, %bb.g ]
  %i.aw = icmp ult i32 %.0.i.i, %.0.i7.i          ; 2 uses
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.i
  %i.ax = icmp ugt i32 %i.y, %i.x
  %spec.select.i11.i = select i1 %i.ax, i32 -1, i32 %i.x
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit12.i

bb.j:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !noalias !175 ; 2 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = icmp ult i8 %i.az, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !175
  %.sroa.0.0.i.i.i9.i = select i1 %i.bb, ptr %i.bc, ptr %i.bd
  %i.be = getelementptr [4 x i8], ptr %.sroa.0.0.i.i.i9.i, i64 %i.ba
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !noalias !175
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit12.i

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit12.i: ; preds = %bb.j, %bb.i
  %.0.i10.i = phi i32 [ %i.bg, %bb.j ], [ %spec.select.i11.i, %bb.i ]
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit12.i
  %i.bh = icmp ugt i32 %i.av, %i.au
  %spec.select.i15.i = select i1 %i.bh, i32 0, i32 %i.av
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit16.i

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit12.i
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.bj = load i8, ptr %i.bi, align 2, !noalias !175
  %i.bk = icmp ult i8 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !175
  %.sroa.0.0.i.i.i13.i = select i1 %i.bk, ptr %i.bl, ptr %i.bm
  %i.bn = load i32, ptr %.sroa.0.0.i.i.i13.i, align 4, !noalias !175
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit16.i

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit16.i: ; preds = %bb.l, %bb.k
  %.0.i14.i = phi i32 [ %i.bn, %bb.l ], [ %spec.select.i15.i, %bb.k ]
  %.not.i = icmp uge i32 %.0.i10.i, %.0.i14.i     ; 2 uses
  %spec.select = select i1 %.not.i, i64 4294967296, i64 1
  %.sroa.1532.0 = select i1 %i.aw, i64 %spec.select, i64 0
  %i.bo = select i1 %i.aw, i1 %.not.i, i1 false
  %.sroa.729.0 = select i1 %i.bo, i8 2, i8 1
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt16initializer_listIjEPNS0_4ZoneE.exit

bb.m:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !176
  %i.br = icmp eq i8 %i.bq, 0                     ; 2 uses
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !noalias !176 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !176 ; 2 uses
  %i.bw = icmp ugt i32 %i.bt, %i.bv
  %spec.select.i.i26 = select i1 %i.bw, i32 0, i32 %i.bt
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i10

bb.o:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.by = load i8, ptr %i.bx, align 2, !noalias !176
  %i.bz = icmp ult i8 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !176 ; 2 uses
  %.sroa.0.0.i.i.i.i9 = select i1 %i.bz, ptr %i.ca, ptr %i.cb
  %i.cc = load i32, ptr %.sroa.0.0.i.i.i.i9, align 4, !noalias !176
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = lshr i64 %i.cd, 32
  %i.cg = trunc nuw i64 %i.cf to i32
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i10

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i10: ; preds = %bb.o, %bb.n
  %i.ch = phi i32 [ %i.cg, %bb.o ], [ %i.bv, %bb.n ] ; 2 uses
  %i.ci = phi i32 [ %i.ce, %bb.o ], [ %i.bt, %bb.n ]
  %.0.i.i11 = phi i32 [ %i.cc, %bb.o ], [ %spec.select.i.i26, %bb.n ]
end_hunk_0
