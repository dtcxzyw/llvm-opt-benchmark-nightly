Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/expression?download=true
inline.NumInlined: 7296
inline.NumDeleted: 3037
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5arrow7compute10Expression9ParameterC2ERKS2_:bb.a
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !223
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !130  ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !130
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeHolderC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow8FieldRefC2ERKS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !tbaa !67
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !67
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit

_ZN5arrow10TypeHolderC2ERKS0_.exit:               ; preds = %_ZN5arrow8FieldRefC2ERKS0_.exit, %bb.e, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.s, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !252
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !152
  invoke void @_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEE15init_by_copyingIPKiEEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.w, ptr noundef %i.y)
          to label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEEC2ERKS4_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !153
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !152 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #32
  br label %.body

_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEEC2ERKS4_.exit: ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit
  ret void

.body:                                            ; preds = %bb.g, %bb.h, %bb.i
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #31
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume unwind label %bb.j, !inline_history !6

bb.j:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #29, !inline_history !6
  unreachable
}

declare void @_ZNK5arrow9FieldPath3GetERKNS_8DataTypeE(ptr dead_on_unwind writable sret(%"class.arrow::Result.604") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread, !prof !247

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !132
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !133
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !1412
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !1412
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit, !prof !137

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !239    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread, !prof !240

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !246, !range !193, !noundef !120
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_9FieldPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread, !prof !247

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit

_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit:  ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #32
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !239 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread, !prof !240

_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit
  %i.j = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !246, !range !193, !noundef !120
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit, %_ZN5arrow6ResultINS_9FieldPathEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr.14", align 16 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.365, align 1            ; 3 uses
  %6 = alloca %class.anon.365, align 1            ; 3 uses
  %7 = alloca %class.anon.365, align 1            ; 3 uses
  %8 = alloca %class.anon.365, align 1            ; 3 uses
  %9 = alloca %"struct.arrow::Datum", align 16    ; 8 uses
  %10 = alloca %"class.std::shared_ptr.697", align 8 ; 6 uses
  %.sroa.0162.i = alloca ptr, align 8             ; 6 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %.sroa.0160.i = alloca ptr, align 8             ; 6 uses
  %12 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %.sroa.0158.i = alloca ptr, align 8             ; 6 uses
  %14 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %15 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %16 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %.sroa.0156.i = alloca ptr, align 8             ; 6 uses
  %.sroa.0154.i = alloca ptr, align 8             ; 6 uses
  %17 = alloca %"class.std::vector.235", align 8  ; 21 uses
  %18 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %19 = alloca %"class.arrow::Result.624", align 8 ; 11 uses
  %20 = alloca %"class.std::vector.235", align 8  ; 15 uses
  %21 = alloca %"class.arrow::Result.624", align 8 ; 16 uses
  %22 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %23 = alloca %"class.arrow::Result.213", align 8 ; 13 uses
  %24 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %25 = alloca %"class.std::shared_ptr.16", align 8 ; 3 uses
  %26 = alloca %"class.arrow::compute::CastOptions", align 8 ; 10 uses
  %27 = alloca %"struct.arrow::TypeHolder", align 8 ; 4 uses
  %28 = alloca %"struct.arrow::Datum", align 8    ; 8 uses
  %29 = alloca %"class.arrow::compute::Expression", align 16 ; 8 uses
  %30 = alloca %"struct.arrow::Datum", align 8    ; 5 uses
  %31 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 23 uses
  %32 = alloca [1 x %"class.arrow::compute::Expression"], align 16 ; 9 uses
  %33 = alloca %"class.arrow::compute::CastOptions", align 8 ; 11 uses
  %34 = alloca %"struct.arrow::TypeHolder", align 8 ; 4 uses
  %35 = alloca %"class.std::shared_ptr.16", align 8 ; 3 uses
  %36 = alloca %"class.arrow::Result.155", align 8 ; 10 uses
  %37 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 15 uses
  %38 = alloca %"class.arrow::compute::KernelContext", align 8 ; 8 uses
  %39 = alloca %"class.arrow::Result.635", align 8 ; 12 uses
  %40 = alloca %"struct.arrow::compute::KernelInitArgs", align 8 ; 7 uses
  %41 = alloca %"class.std::unique_ptr.639", align 8 ; 7 uses
  %42 = alloca %"class.arrow::Result.647", align 8 ; 14 uses
  %43 = alloca %"class.arrow::compute::Expression", align 16 ; 7 uses
  %44 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  call void @_ZN5arrow7compute8GetTypesERKSt6vectorINS0_10ExpressionESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.235") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  invoke void @_ZN5arrow7compute11GetFunctionERKNS0_10Expression4CallEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %18, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %18, align 8, !tbaa !239
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c, !prof !247

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %18) #31
  br label %bb.pu

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.qk

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !138, !noalias !1476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !130  ; 8 uses
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !138
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !133
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31, !inline_history !1417
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31, !inline_history !1417
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !164  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.624") align 8 %19, ptr noundef nonnull align 8 dereferenceable(192) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %19, align 8, !tbaa !239
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1477 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !224
  br label %bb.nx

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit261

bb.o:                                             ; preds = %bb.l
  br i1 %2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #31
  br label %bb.po

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !161, !noalias !1478 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !160, !noalias !1478 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 384307168202282325
  %.sink402.i.sroa.gep145.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.sink402.i.sroa.gep146.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %.sink402.i.sroa.gep147.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.sink402.i.sroa.gep149.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.sink402.i.sroa.gep150.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sink402.i.sroa.gep152.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br i1 %i.aq, label %.noexc.i, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
          to label %.noexc103 unwind label %bb.id

.noexc103:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.q
  %.not.i.i.i.i.i100 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i100, label %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ar = mul nuw nsw i64 %i.ap, 24               ; 3 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30
          to label %.noexc104 unwind label %bb.id ; 5 uses

.noexc104:                                        ; preds = %bb.r
  store ptr %i.as, ptr %20, align 8, !tbaa !326, !alias.scope !1478
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false), !noalias !1478
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.as, i64 %i.ar ; 2 uses
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !161, !noalias !1478
  %.pre196.i = load ptr, ptr %i.b, align 8, !tbaa !160, !noalias !1478 ; 2 uses
  %i.au = icmp eq ptr %.pre.i, %.pre196.i
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !327, !alias.scope !1478
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !328, !alias.scope !1478
  br i1 %i.au, label %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc104
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN5arrow10TypeHolderD2Ev.exit.i, %.lr.ph.i
  %i.ay = phi ptr [ %.pre196.i, %.lr.ph.i ], [ %i.su, %_ZN5arrow10TypeHolderD2Ev.exit.i ]
  %.0195.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ss, %_ZN5arrow10TypeHolderD2Ev.exit.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.0195.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !119, !noalias !1478 ; 22 uses
  %.not.i.i.i101 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i101, label %_ZNK5arrow7compute10Expression4typeEv.exit.i, label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !122, !noalias !1478
  switch i8 %i.bc, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i [
    i8 0, label %bb.t
    i8 1, label %_ZNK5arrow7compute10Expression4typeEv.exit.sink.split.i
  ]

bb.t:                                             ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 11 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !124, !noalias !1478
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.u, label %_ZN5arrow10TypeHolderD2Ev.exit.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0162.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0160.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0158.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0156.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0154.i)
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.noexc23.i unwind label %.loopexit.i, !noalias !1478

.noexc23.i:                                       ; preds = %bb.u
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !166, !noalias !1478
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !207, !noalias !1478
  switch i32 %i.bj, label %bb.gv [
    i32 3, label %bb.v
    i32 2, label %bb.z
    i32 5, label %bb.ad
    i32 4, label %bb.am
    i32 7, label %bb.av
    i32 6, label %bb.bk
    i32 9, label %bb.by
    i32 8, label %bb.cs
    i32 12, label %bb.dl
    i32 34, label %bb.dz
    i32 35, label %bb.ei
    i32 18, label %bb.er
  ]

bb.v:                                             ; preds = %.noexc23.i
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %.noexc24.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc24.i:                                       ; preds = %bb.v
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i.i22.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i22.i, label %bb.gz, label %bb.w

bb.w:                                             ; preds = %.noexc24.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !67, !noalias !1478
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.y:                                             ; preds = %bb.w
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.z:                                             ; preds = %.noexc23.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev()
          to label %.noexc25.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc25.i:                                       ; preds = %bb.z
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i78.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i78.i.i, label %bb.gz, label %bb.aa

bb.aa:                                            ; preds = %.noexc25.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i79.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i79.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !67, !noalias !1478
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.ac:                                            ; preds = %bb.aa
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.ad:                                            ; preds = %.noexc23.i
  %i.cc = load i8, ptr %i.bd, align 8, !tbaa !124, !noalias !1479
  %.not.i.i.i.i86.i.i = icmp eq i8 %i.cc, 1
  br i1 %.not.i.i.i.i86.i.i, label %_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ei, %bb.dz, %bb.dl, %bb.cs, %bb.by, %bb.bk, %bb.av, %bb.am, %bb.ad
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !1478 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cd, align 8, !tbaa !135, !noalias !1478
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @.str.44, ptr %i.ce, align 8, !tbaa !210, !noalias !1478
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !1478

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i: ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !127, !noalias !1479
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 42
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !1481, !noalias !1478
  %i.ci = add i16 %i.ch, -128
  %or.cond.i.i = icmp ult i16 %i.ci, -256
  br i1 %or.cond.i.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %.noexc27.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc27.i:                                       ; preds = %bb.ae
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i87.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i87.i.i, label %bb.gz, label %bb.af

bb.af:                                            ; preds = %.noexc27.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i88.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i88.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !67, !noalias !1478
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.ah:                                            ; preds = %bb.af
  %i.cr = atomicrmw volatile add ptr %i.cn, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.ai:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_11Int16ScalarEEERKT_v.exit.i.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc28.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc28.i:                                       ; preds = %bb.ai
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i90.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i90.i.i, label %bb.gz, label %bb.aj

bb.aj:                                            ; preds = %.noexc28.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i91.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i91.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !67, !noalias !1478
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.al:                                            ; preds = %bb.aj
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.am:                                            ; preds = %.noexc23.i
  %i.db = load i8, ptr %i.bd, align 8, !tbaa !124, !noalias !1479
  %.not.i.i.i.i98.i.i = icmp eq i8 %i.db, 1
  br i1 %.not.i.i.i.i98.i.i, label %_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i, label %.invoke.i

_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i: ; preds = %bb.am
  %i.dc = load ptr, ptr %i.ba, align 8, !tbaa !127, !noalias !1479
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 42
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !1483, !noalias !1478
  %.not74.i.i = icmp ugt i16 %i.de, 255
  br i1 %.not74.i.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev()
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc30.i:                                       ; preds = %bb.an
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i99.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i99.i.i, label %bb.gz, label %bb.ao

bb.ao:                                            ; preds = %.noexc30.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i100.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i100.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !67, !noalias !1478
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.aq:                                            ; preds = %bb.ao
  %i.dn = atomicrmw volatile add ptr %i.dj, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.ar:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_12UInt16ScalarEEERKT_v.exit.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev()
          to label %.noexc31.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc31.i:                                       ; preds = %bb.ar
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
          to label %.noexc55.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc55.i:                                       ; preds = %bb.ea
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i202.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i202.i.i, label %bb.gz, label %bb.eb

bb.eb:                                            ; preds = %.noexc55.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 3 uses
  %i.le = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i203.i.i = icmp eq i8 %i.le, 0
  br i1 %.not.i.i.i.i203.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.lf = load i32, ptr %i.ld, align 4, !tbaa !67, !noalias !1478
  %i.lg = add nsw i32 %i.lf, 1
  store i32 %i.lg, ptr %i.ld, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.ed:                                            ; preds = %bb.eb
  %i.lh = atomicrmw volatile add ptr %i.ld, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.ee:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeStringScalarEEERKT_v.exit.i.i
  %i.li = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev()
          to label %.noexc56.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc56.i:                                       ; preds = %bb.ee
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i210.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i210.i.i, label %bb.gz, label %bb.ef

bb.ef:                                            ; preds = %.noexc56.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 3 uses
  %i.ln = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i211.i.i = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i.i211.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.lo = load i32, ptr %i.lm, align 4, !tbaa !67, !noalias !1478
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.eh:                                            ; preds = %bb.ef
  %i.lq = atomicrmw volatile add ptr %i.lm, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.ei:                                            ; preds = %.noexc23.i
  %i.lr = load i8, ptr %i.bd, align 8, !tbaa !124, !noalias !1479
  %.not.i.i.i.i218.i.i = icmp eq i8 %i.lr, 1
  br i1 %.not.i.i.i.i218.i.i, label %_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i, label %.invoke.i

_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i: ; preds = %bb.ei
  %i.ls = load ptr, ptr %i.ba, align 8, !tbaa !127, !noalias !1479
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !213, !noalias !1478
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !220, !noalias !1478
  %.not.i.i102 = icmp sgt i64 %i.lw, 2147483647
  br i1 %.not.i.i102, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i
  %i.lx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
          to label %.noexc58.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc58.i:                                       ; preds = %bb.ej
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i219.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i219.i.i, label %bb.gz, label %bb.ek

bb.ek:                                            ; preds = %.noexc58.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 3 uses
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i220.i.i = icmp eq i8 %i.mc, 0
  br i1 %.not.i.i.i.i220.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.md = load i32, ptr %i.mb, align 4, !tbaa !67, !noalias !1478
  %i.me = add nsw i32 %i.md, 1
  store i32 %i.me, ptr %i.mb, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.em:                                            ; preds = %bb.ek
  %i.mf = atomicrmw volatile add ptr %i.mb, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.en:                                            ; preds = %_ZNK5arrow5Datum9scalar_asINS_17LargeBinaryScalarEEERKT_v.exit.i.i
  %i.mg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
          to label %.noexc59.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc59.i:                                       ; preds = %bb.en
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i227.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i227.i.i, label %bb.gz, label %bb.eo

bb.eo:                                            ; preds = %.noexc59.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 3 uses
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i228.i.i = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i.i228.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mm = load i32, ptr %i.mk, align 4, !tbaa !67, !noalias !1478
  %i.mn = add nsw i32 %i.mm, 1
  store i32 %i.mn, ptr %i.mk, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.eq:                                            ; preds = %bb.eo
  %i.mo = atomicrmw volatile add ptr %i.mk, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.er:                                            ; preds = %.noexc23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !1479
  %i.mp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.noexc60.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc60.i:                                       ; preds = %bb.er
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !166, !noalias !1478 ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !130, !noalias !1478 ; 3 uses
  %.not.i.i.i235.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i235.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i, label %bb.es

bb.es:                                            ; preds = %.noexc60.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i236.i.i = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i.i236.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !67, !noalias !1478
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !67, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i

bb.eu:                                            ; preds = %bb.es
  %i.mx = atomicrmw volatile add ptr %i.mt, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i: ; preds = %bb.eu, %bb.et, %.noexc60.i
  store ptr %i.mq, ptr %10, align 8, !tbaa !1494, !alias.scope !1495, !noalias !1479
  store ptr %i.ms, ptr %i.ax, align 8, !tbaa !130, !alias.scope !1495, !noalias !1479
  %i.my = load i8, ptr %i.bd, align 8, !tbaa !124, !noalias !1479
  %.not.i.i.i.i243.i.i = icmp eq i8 %i.my, 1
  br i1 %.not.i.i.i.i243.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i
  %i.mz = call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !1478 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.mz, align 8, !tbaa !135, !noalias !1478
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store ptr @.str.44, ptr %i.na, align 8, !tbaa !210, !noalias !1478
  invoke void @__cxa_throw(ptr nonnull %i.mz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.noexc.i.i unwind label %.loopexit.split-lp191.i, !noalias !1478

.noexc.i.i:                                       ; preds = %bb.ev
  unreachable

bb.ew:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242.i.i
  %i.nb = load ptr, ptr %i.ba, align 8, !tbaa !127, !noalias !1479
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !1497, !noalias !1478 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mq, i64 72
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !1502, !noalias !1478
  switch i32 %i.nf, label %bb.gk [
    i32 0, label %bb.ey
    i32 1, label %bb.fd
    i32 2, label %bb.fl
    i32 3, label %bb.fw
  ]

.loopexit190.i:                                   ; preds = %bb.gk, %bb.gf, %bb.gd, %bb.ga, %bb.fx, %bb.fr, %bb.fp, %bb.fm, %bb.fg, %bb.fe, %bb.ey
  %lpad.loopexit192.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

.loopexit.split-lp191.i:                          ; preds = %bb.ev
  %lpad.loopexit.split-lp193.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ex:                                            ; preds = %.loopexit.split-lp191.i, %.loopexit190.i
  %lpad.phi194.i = phi { ptr, i32 } [ %lpad.loopexit192.i, %.loopexit190.i ], [ %lpad.loopexit.split-lp193.i, %.loopexit.split-lp191.i ]
  call void @_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #31, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !1479
  br label %.body.i

bb.ey:                                            ; preds = %bb.ew
  %i.ng = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ez unwind label %.loopexit190.i, !noalias !1478 ; 2 uses

bb.ez:                                            ; preds = %bb.ey
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !166, !noalias !1478 ; 4 uses
  store ptr %i.nh, ptr %.sroa.0162.i, align 8, !tbaa !166, !noalias !1479
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i244.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i244.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 3 uses
  %i.nl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i245.i.i = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i.i245.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.nm = load i32, ptr %i.nk, align 4, !tbaa !67, !noalias !1478
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nk, align 4, !tbaa !67, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fc:                                            ; preds = %bb.fa
  %i.no = atomicrmw volatile add ptr %i.nk, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fd:                                            ; preds = %bb.ew
  %i.np = urem i64 %i.nd, 1000
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %i.nr)
          to label %bb.ff unwind label %.loopexit190.i, !noalias !1478

bb.ff:                                            ; preds = %bb.fe
  %i.ns = load ptr, ptr %11, align 8, !tbaa !166, !noalias !1479
  %i.nt = load ptr, ptr %.sink402.i.sroa.gep152.i, align 8, !tbaa !130, !noalias !1479
  store ptr null, ptr %.sink402.i.sroa.gep152.i, align 8, !tbaa !130, !noalias !1479
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fg:                                            ; preds = %bb.fd
  %i.nu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.fh unwind label %.loopexit190.i, !noalias !1478 ; 2 uses

bb.fh:                                            ; preds = %bb.fg
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !166, !noalias !1478 ; 4 uses
  store ptr %i.nv, ptr %.sroa.0160.i, align 8, !tbaa !166, !noalias !1479
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i247.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i247.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 3 uses
  %i.nz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i248.i.i = icmp eq i8 %i.nz, 0
  br i1 %.not.i.i.i.i248.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.oa = load i32, ptr %i.ny, align 4, !tbaa !67, !noalias !1478
  %i.ob = add nsw i32 %i.oa, 1
  store i32 %i.ob, ptr %i.ny, align 4, !tbaa !67, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fk:                                            ; preds = %bb.fi
  %i.oc = atomicrmw volatile add ptr %i.ny, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fl:                                            ; preds = %bb.ew
  %i.od = urem i64 %i.nd, 1000000
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.of = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %12, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %i.of)
          to label %bb.fn unwind label %.loopexit190.i, !noalias !1478

bb.fn:                                            ; preds = %bb.fm
  %i.og = load ptr, ptr %12, align 8, !tbaa !166, !noalias !1479
  %i.oh = load ptr, ptr %.sink402.i.sroa.gep150.i, align 8, !tbaa !130, !noalias !1479
  store ptr null, ptr %.sink402.i.sroa.gep150.i, align 8, !tbaa !130, !noalias !1479
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fo:                                            ; preds = %bb.fl
  %i.oi = urem i64 %i.nd, 1000
  %i.oj = icmp eq i64 %i.oi, 0
  br i1 %i.oj, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %13, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ok)
          to label %bb.fq unwind label %.loopexit190.i, !noalias !1478

bb.fq:                                            ; preds = %bb.fp
  %i.ol = load ptr, ptr %13, align 8, !tbaa !166, !noalias !1479
  %i.om = load ptr, ptr %.sink402.i.sroa.gep149.i, align 8, !tbaa !130, !noalias !1479
  store ptr null, ptr %.sink402.i.sroa.gep149.i, align 8, !tbaa !130, !noalias !1479
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fr:                                            ; preds = %bb.fo
  %i.on = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.fs unwind label %.loopexit190.i, !noalias !1478 ; 2 uses

bb.fs:                                            ; preds = %bb.fr
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !166, !noalias !1478 ; 4 uses
  store ptr %i.oo, ptr %.sroa.0158.i, align 8, !tbaa !166, !noalias !1479
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i250.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i250.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 3 uses
  %i.os = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i251.i.i = icmp eq i8 %i.os, 0
  br i1 %.not.i.i.i.i251.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ot = load i32, ptr %i.or, align 4, !tbaa !67, !noalias !1478
  %i.ou = add nsw i32 %i.ot, 1
  store i32 %i.ou, ptr %i.or, align 4, !tbaa !67, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fv:                                            ; preds = %bb.ft
  %i.ov = atomicrmw volatile add ptr %i.or, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fw:                                            ; preds = %bb.ew
  %i.ow = urem i64 %i.nd, 1000000000
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %bb.fw
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %14, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %i.oy)
          to label %bb.fy unwind label %.loopexit190.i, !noalias !1478

bb.fy:                                            ; preds = %bb.fx
  %i.oz = load ptr, ptr %14, align 8, !tbaa !166, !noalias !1479
  %i.pa = load ptr, ptr %.sink402.i.sroa.gep147.i, align 8, !tbaa !130, !noalias !1479
  store ptr null, ptr %.sink402.i.sroa.gep147.i, align 8, !tbaa !130, !noalias !1479
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fz:                                            ; preds = %bb.fw
  %i.pb = urem i64 %i.nd, 1000000
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.pd = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %15, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.pd)
          to label %bb.gb unwind label %.loopexit190.i, !noalias !1478

bb.gb:                                            ; preds = %bb.ga
  %i.pe = load ptr, ptr %15, align 8, !tbaa !166, !noalias !1479
  %i.pf = load ptr, ptr %.sink402.i.sroa.gep146.i, align 8, !tbaa !130, !noalias !1479
  store ptr null, ptr %.sink402.i.sroa.gep146.i, align 8, !tbaa !130, !noalias !1479
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.gc:                                            ; preds = %bb.fz
  %i.pg = urem i64 %i.nd, 1000
  %i.ph = icmp eq i64 %i.pg, 0
  br i1 %i.ph, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.pi = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %16, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %i.pi)
          to label %bb.ge unwind label %.loopexit190.i, !noalias !1478

bb.ge:                                            ; preds = %bb.gd
  %i.pj = load ptr, ptr %16, align 8, !tbaa !166, !noalias !1479
  %i.pk = load ptr, ptr %.sink402.i.sroa.gep145.i, align 8, !tbaa !130, !noalias !1479
  store ptr null, ptr %.sink402.i.sroa.gep145.i, align 8, !tbaa !130, !noalias !1479
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.gf:                                            ; preds = %bb.gc
  %i.pl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.gg unwind label %.loopexit190.i, !noalias !1478 ; 2 uses

bb.gg:                                            ; preds = %bb.gf
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !166, !noalias !1478 ; 4 uses
  store ptr %i.pm, ptr %.sroa.0156.i, align 8, !tbaa !166, !noalias !1479
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i253.i.i = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i253.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 3 uses
  %i.pq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i254.i.i = icmp eq i8 %i.pq, 0
  br i1 %.not.i.i.i.i254.i.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.pr = load i32, ptr %i.pp, align 4, !tbaa !67, !noalias !1478
  %i.ps = add nsw i32 %i.pr, 1
  store i32 %i.ps, ptr %i.pp, align 4, !tbaa !67, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.gj:                                            ; preds = %bb.gh
  %i.pt = atomicrmw volatile add ptr %i.pp, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.gk:                                            ; preds = %bb.ew
  %i.pu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.gl unwind label %.loopexit190.i, !noalias !1478 ; 2 uses

bb.gl:                                            ; preds = %bb.gk
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !166, !noalias !1478 ; 4 uses
  store ptr %i.pv, ptr %.sroa.0154.i, align 8, !tbaa !166, !noalias !1479
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i256.i.i = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i256.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 3 uses
  %i.pz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i257.i.i = icmp eq i8 %i.pz, 0
  br i1 %.not.i.i.i.i257.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.qa = load i32, ptr %i.py, align 4, !tbaa !67, !noalias !1478
  %i.qb = add nsw i32 %i.qa, 1
  store i32 %i.qb, ptr %i.py, align 4, !tbaa !67, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.go:                                            ; preds = %bb.gm
  %i.qc = atomicrmw volatile add ptr %i.py, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.go, %bb.gn, %bb.gl, %bb.gj, %bb.gi, %bb.gg, %bb.ge, %bb.gb, %bb.fy, %bb.fv, %bb.fu, %bb.fs, %bb.fq, %bb.fn, %bb.fk, %bb.fj, %bb.fh, %bb.ff, %bb.fc, %bb.fb, %bb.ez
  %.sroa.43.0.i = phi ptr [ %i.pm, %bb.gg ], [ %i.oo, %bb.fs ], [ %i.ns, %bb.ff ], [ %i.nh, %bb.ez ], [ %i.og, %bb.fn ], [ %i.ol, %bb.fq ], [ %i.nv, %bb.fh ], [ %i.oz, %bb.fy ], [ %i.pe, %bb.gb ], [ %i.pj, %bb.ge ], [ %i.nh, %bb.fc ], [ %i.nh, %bb.fb ], [ %i.nv, %bb.fk ], [ %i.nv, %bb.fj ], [ %i.oo, %bb.fv ], [ %i.oo, %bb.fu ], [ %i.pm, %bb.gj ], [ %i.pm, %bb.gi ], [ %i.pv, %bb.go ], [ %i.pv, %bb.gn ], [ %i.pv, %bb.gl ]
  %.sroa.84.0.i = phi ptr [ null, %bb.gg ], [ null, %bb.fs ], [ %i.nt, %bb.ff ], [ null, %bb.ez ], [ %i.oh, %bb.fn ], [ %i.om, %bb.fq ], [ null, %bb.fh ], [ %i.pa, %bb.fy ], [ %i.pf, %bb.gb ], [ %i.pk, %bb.ge ], [ %i.nj, %bb.fc ], [ %i.nj, %bb.fb ], [ %i.nx, %bb.fk ], [ %i.nx, %bb.fj ], [ %i.oq, %bb.fv ], [ %i.oq, %bb.fu ], [ %i.po, %bb.gj ], [ %i.po, %bb.gi ], [ %i.px, %bb.go ], [ %i.px, %bb.gn ], [ null, %bb.gl ]
  %.sink402.i.i = phi ptr [ %.sroa.0156.i, %bb.gg ], [ %.sroa.0158.i, %bb.fs ], [ %11, %bb.ff ], [ %.sroa.0162.i, %bb.ez ], [ %12, %bb.fn ], [ %13, %bb.fq ], [ %.sroa.0160.i, %bb.fh ], [ %14, %bb.fy ], [ %15, %bb.gb ], [ %16, %bb.ge ], [ %.sroa.0162.i, %bb.fc ], [ %.sroa.0162.i, %bb.fb ], [ %.sroa.0160.i, %bb.fk ], [ %.sroa.0160.i, %bb.fj ], [ %.sroa.0158.i, %bb.fv ], [ %.sroa.0158.i, %bb.fu ], [ %.sroa.0156.i, %bb.gj ], [ %.sroa.0156.i, %bb.gi ], [ %.sroa.0154.i, %bb.go ], [ %.sroa.0154.i, %bb.gn ], [ %.sroa.0154.i, %bb.gl ]
  store ptr null, ptr %.sink402.i.i, align 8, !tbaa !166, !noalias !1479
  %i.qd = load ptr, ptr %i.ax, align 8, !tbaa !130, !noalias !1479 ; 8 uses
  %.not.i.i259.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i.i259.i.i, label %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 4 uses
  %i.qf = load atomic i64, ptr %i.qe acquire, align 8, !noalias !1478 ; 2 uses
  %i.qg = icmp eq i64 %i.qf, 4294967297
  %i.qh = trunc i64 %i.qf to i32                  ; 2 uses
  br i1 %i.qg, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  store i32 0, ptr %i.qe, align 8, !tbaa !132, !noalias !1478
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  store i32 0, ptr %i.qi, align 4, !tbaa !133, !noalias !1478
  %i.qj = load ptr, ptr %i.qd, align 8, !tbaa !135, !noalias !1478
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !noalias !1478
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #31, !noalias !1478, !inline_history !1426
  %i.qm = load ptr, ptr %i.qd, align 8, !tbaa !135, !noalias !1478
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !noalias !1478
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #31, !noalias !1478, !inline_history !1426
  br label %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.qp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i260.i.i = icmp eq i8 %i.qp, 0
  br i1 %.not.i.i.i260.i.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.qq = add nsw i32 %i.qh, -1
  store i32 %i.qq, ptr %i.qe, align 8, !tbaa !67, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i261.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.qr = atomicrmw volatile add ptr %i.qe, i32 -1 acq_rel, align 4, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i261.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i261.i.i: ; preds = %bb.gt, %bb.gs
  %.0.i.i.i.i262.i.i = phi i32 [ %i.qh, %bb.gs ], [ %i.qr, %bb.gt ]
  %i.qs = icmp eq i32 %.0.i.i.i.i262.i.i, 1
  br i1 %i.qs, label %bb.gu, label %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !137

bb.gu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i261.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #31, !noalias !1478
  br label %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.gu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i261.i.i, %bb.gq, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !1479
  br label %bb.gz

bb.gv:                                            ; preds = %.noexc23.i
  %i.qt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.noexc61.i unwind label %.loopexit.i, !noalias !1478 ; 2 uses

.noexc61.i:                                       ; preds = %bb.gv
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !166, !noalias !1478 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !130, !noalias !1478 ; 4 uses
  %.not.i.i.i263.i.i = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i263.i.i, label %bb.gz, label %bb.gw

bb.gw:                                            ; preds = %.noexc61.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8 ; 3 uses
  %i.qy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1479
  %.not.i.i.i.i264.i.i = icmp eq i8 %i.qy, 0
  br i1 %.not.i.i.i.i264.i.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.qz = load i32, ptr %i.qx, align 4, !tbaa !67, !noalias !1478
  %i.ra = add nsw i32 %i.qz, 1
  store i32 %i.ra, ptr %i.qx, align 4, !tbaa !67, !noalias !1478
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.rb = atomicrmw volatile add ptr %i.qx, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %.noexc61.i, %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.eq, %bb.ep, %.noexc59.i, %bb.em, %bb.el, %.noexc58.i, %bb.eh, %bb.eg, %.noexc56.i, %bb.ed, %bb.ec, %.noexc55.i, %bb.dy, %bb.dx, %.noexc53.i, %bb.du, %bb.dt, %.noexc52.i, %bb.dp, %bb.do, %.noexc51.i, %bb.dk, %bb.dj, %.noexc49.i, %bb.dg, %bb.df, %.noexc48.i, %bb.db, %bb.da, %.noexc47.i, %bb.cw, %bb.cv, %.noexc46.i, %bb.cr, %bb.cq, %.noexc44.i, %bb.cn, %bb.cm, %.noexc43.i, %bb.ci, %bb.ch, %.noexc42.i, %bb.cd, %bb.cc, %.noexc41.i, %bb.bx, %bb.bw, %.noexc39.i, %bb.bt, %bb.bs, %.noexc38.i, %bb.bo, %bb.bn, %.noexc37.i, %bb.bj, %bb.bi, %.noexc35.i, %bb.bf, %bb.be, %.noexc34.i, %bb.ba, %bb.az, %.noexc33.i, %bb.au, %bb.at, %.noexc31.i, %bb.aq, %bb.ap, %.noexc30.i, %bb.al, %bb.ak, %.noexc28.i, %bb.ah, %bb.ag, %.noexc27.i, %bb.ac, %bb.ab, %.noexc25.i, %bb.y, %bb.x, %.noexc24.i
  %.sroa.43.1.i = phi ptr [ %i.mh, %.noexc59.i ], [ %.sroa.43.0.i, %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %i.bl, %.noexc24.i ], [ %i.ck, %bb.ah ], [ %i.bu, %.noexc25.i ], [ %i.dg, %.noexc30.i ], [ %i.ct, %.noexc28.i ], [ %i.el, %bb.bf ], [ %i.ec, %bb.ba ], [ %i.dp, %.noexc31.i ], [ %i.fq, %bb.bt ], [ %i.fh, %.noexc37.i ], [ %i.eu, %.noexc35.i ], [ %i.he, %bb.cn ], [ %i.gv, %bb.ci ], [ %i.gm, %bb.cd ], [ %i.fz, %bb.bx ], [ %i.is, %bb.dg ], [ %i.ij, %bb.db ], [ %i.ia, %.noexc46.i ], [ %i.hn, %.noexc44.i ], [ %i.jb, %bb.dk ], [ %i.jq, %.noexc51.i ], [ %i.kc, %.noexc52.i ], [ %i.la, %.noexc55.i ], [ %i.kl, %bb.dy ], [ %i.ly, %.noexc58.i ], [ %i.lj, %.noexc56.i ], [ %i.bl, %bb.y ], [ %i.bl, %bb.x ], [ %i.bu, %bb.ac ], [ %i.bu, %bb.ab ], [ %i.ck, %.noexc27.i ], [ %i.ck, %bb.ag ], [ %i.ct, %bb.al ], [ %i.ct, %bb.ak ], [ %i.dg, %bb.aq ], [ %i.dg, %bb.ap ], [ %i.dp, %bb.au ], [ %i.dp, %bb.at ], [ %i.ec, %.noexc33.i ], [ %i.ec, %bb.az ], [ %i.el, %.noexc34.i ], [ %i.el, %bb.be ], [ %i.eu, %bb.bj ], [ %i.eu, %bb.bi ], [ %i.fh, %bb.bo ], [ %i.fh, %bb.bn ], [ %i.fq, %.noexc38.i ], [ %i.fq, %bb.bs ], [ %i.fz, %.noexc39.i ], [ %i.fz, %bb.bw ], [ %i.gm, %.noexc41.i ], [ %i.gm, %bb.cc ], [ %i.gv, %.noexc42.i ], [ %i.gv, %bb.ch ], [ %i.he, %.noexc43.i ], [ %i.he, %bb.cm ], [ %i.hn, %bb.cr ], [ %i.hn, %bb.cq ], [ %i.ia, %bb.cw ], [ %i.ia, %bb.cv ], [ %i.ij, %.noexc47.i ], [ %i.ij, %bb.da ], [ %i.is, %.noexc48.i ], [ %i.is, %bb.df ], [ %i.jb, %.noexc49.i ], [ %i.jb, %bb.dj ], [ %i.jq, %bb.dp ], [ %i.jq, %bb.do ], [ %i.kc, %bb.du ], [ %i.kc, %bb.dt ], [ %i.kl, %.noexc53.i ], [ %i.kl, %bb.dx ], [ %i.la, %bb.ed ], [ %i.la, %bb.ec ], [ %i.lj, %bb.eh ], [ %i.lj, %bb.eg ], [ %i.ly, %bb.em ], [ %i.ly, %bb.el ], [ %i.mh, %bb.eq ], [ %i.mh, %bb.ep ], [ %i.qu, %bb.gy ], [ %i.qu, %bb.gx ], [ %i.qu, %.noexc61.i ] ; 2 uses
  %.sroa.84.1.i = phi ptr [ null, %.noexc59.i ], [ %.sroa.84.0.i, %_ZNSt12__shared_ptrIN5arrow13TimestampTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ null, %.noexc24.i ], [ %i.cm, %bb.ah ], [ null, %.noexc25.i ], [ null, %.noexc30.i ], [ null, %.noexc28.i ], [ %i.en, %bb.bf ], [ %i.ee, %bb.ba ], [ null, %.noexc31.i ], [ %i.fs, %bb.bt ], [ null, %.noexc37.i ], [ null, %.noexc35.i ], [ %i.hg, %bb.cn ], [ %i.gx, %bb.ci ], [ %i.go, %bb.cd ], [ %i.gb, %bb.bx ], [ %i.iu, %bb.dg ], [ %i.il, %bb.db ], [ null, %.noexc46.i ], [ null, %.noexc44.i ], [ %i.jd, %bb.dk ], [ null, %.noexc51.i ], [ null, %.noexc52.i ], [ null, %.noexc55.i ], [ %i.kn, %bb.dy ], [ null, %.noexc58.i ], [ null, %.noexc56.i ], [ %i.bn, %bb.y ], [ %i.bn, %bb.x ], [ %i.bw, %bb.ac ], [ %i.bw, %bb.ab ], [ null, %.noexc27.i ], [ %i.cm, %bb.ag ], [ %i.cv, %bb.al ], [ %i.cv, %bb.ak ], [ %i.di, %bb.aq ], [ %i.di, %bb.ap ], [ %i.dr, %bb.au ], [ %i.dr, %bb.at ], [ null, %.noexc33.i ], [ %i.ee, %bb.az ], [ null, %.noexc34.i ], [ %i.en, %bb.be ], [ %i.ew, %bb.bj ], [ %i.ew, %bb.bi ], [ %i.fj, %bb.bo ], [ %i.fj, %bb.bn ], [ null, %.noexc38.i ], [ %i.fs, %bb.bs ], [ null, %.noexc39.i ], [ %i.gb, %bb.bw ], [ null, %.noexc41.i ], [ %i.go, %bb.cc ], [ null, %.noexc42.i ], [ %i.gx, %bb.ch ], [ null, %.noexc43.i ], [ %i.hg, %bb.cm ], [ %i.hp, %bb.cr ], [ %i.hp, %bb.cq ], [ %i.ic, %bb.cw ], [ %i.ic, %bb.cv ], [ null, %.noexc47.i ], [ %i.il, %bb.da ], [ null, %.noexc48.i ], [ %i.iu, %bb.df ], [ null, %.noexc49.i ], [ %i.jd, %bb.dj ], [ %i.js, %bb.dp ], [ %i.js, %bb.do ], [ %i.ke, %bb.du ], [ %i.ke, %bb.dt ], [ null, %.noexc53.i ], [ %i.kn, %bb.dx ], [ %i.lc, %bb.ed ], [ %i.lc, %bb.ec ], [ %i.ll, %bb.eh ], [ %i.ll, %bb.eg ], [ %i.ma, %bb.em ], [ %i.ma, %bb.el ], [ %i.mj, %bb.eq ], [ %i.mj, %bb.ep ], [ %i.qw, %bb.gy ], [ %i.qw, %bb.gx ], [ null, %.noexc61.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0162.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0160.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0158.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0156.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0154.i)
  %i.rc = load ptr, ptr %20, align 8, !tbaa !326, !alias.scope !1478
  %i.rd = getelementptr inbounds nuw [24 x i8], ptr %i.rc, i64 %.0195.i ; 3 uses
  store ptr %.sroa.43.1.i, ptr %i.rd, align 8, !tbaa !251, !noalias !1478
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %.sroa.43.1.i, ptr %i.re, align 8, !tbaa !223, !noalias !1478
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 16 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !130, !noalias !1478 ; 8 uses
  store ptr %.sroa.84.1.i, ptr %i.rf, align 8, !tbaa !130, !noalias !1478
  %.not.i.i.i.i.i62.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.i.i62.i, label %_ZN5arrow10TypeHolderD2Ev.exit.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 4 uses
  %i.ri = load atomic i64, ptr %i.rh acquire, align 8, !noalias !1478 ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 4294967297
  %i.rk = trunc i64 %i.ri to i32                  ; 2 uses
  br i1 %i.rj, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  store i32 0, ptr %i.rh, align 8, !tbaa !132, !noalias !1478
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 12
  store i32 0, ptr %i.rl, align 4, !tbaa !133, !noalias !1478
  %i.rm = load ptr, ptr %i.rg, align 8, !tbaa !135, !noalias !1478
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !noalias !1478
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(16) %i.rg) #31, !noalias !1478, !inline_history !1427
  %i.rp = load ptr, ptr %i.rg, align 8, !tbaa !135, !noalias !1478
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !1478
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(16) %i.rg) #31, !noalias !1478, !inline_history !1427
  br label %_ZN5arrow10TypeHolderD2Ev.exit.i

bb.hc:                                            ; preds = %bb.ha
  %i.rs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1478
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.rs, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.rt = add nsw i32 %i.rk, -1
  store i32 %i.rt, ptr %i.rh, align 8, !tbaa !67, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  %i.ru = atomicrmw volatile add ptr %i.rh, i32 -1 acq_rel, align 4, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.he, %bb.hd
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.rk, %bb.hd ], [ %i.ru, %bb.he ]
  %i.rv = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.rv, label %bb.hf, label %_ZN5arrow10TypeHolderD2Ev.exit.i, !prof !137

bb.hf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rg) #31, !noalias !1478
  br label %_ZN5arrow10TypeHolderD2Ev.exit.i

.loopexit.i:                                      ; preds = %bb.gv, %bb.er, %bb.en, %bb.ej, %bb.ee, %bb.ea, %bb.dv, %bb.dr, %bb.dm, %bb.dh, %bb.dd, %bb.cy, %bb.ct, %bb.co, %.thread329.i.i, %.thread325.i.i, %bb.ca, %bb.bu, %bb.bq, %bb.bl, %bb.bg, %.thread321.i.i, %bb.ax, %bb.ar, %bb.an, %bb.ai, %bb.ae, %bb.z, %bb.v, %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  br label %_ZNK5arrow7compute10Expression4typeEv.exit.sink.split.i

_ZNK5arrow7compute10Expression4typeEv.exit.sink.split.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %.sink247.i = phi i64 [ 120, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i ], [ 40, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i ]
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink247.i
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !223, !noalias !1478
  br label %_ZNK5arrow7compute10Expression4typeEv.exit.i

_ZNK5arrow7compute10Expression4typeEv.exit.i:     ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit.sink.split.i, %bb.s
  %.2.i.i = phi ptr [ null, %bb.s ], [ %i.rx, %_ZNK5arrow7compute10Expression4typeEv.exit.sink.split.i ]
  %i.ry = load ptr, ptr %20, align 8, !tbaa !326, !alias.scope !1478
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.ry, i64 %.0195.i ; 3 uses
  store ptr %.2.i.i, ptr %i.rz, align 8, !tbaa !251, !noalias !1478
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store ptr null, ptr %i.sa, align 8, !tbaa !223, !noalias !1478
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !130, !noalias !1478 ; 8 uses
  store ptr null, ptr %i.sb, align 8, !tbaa !130, !noalias !1478
  %.not.i.i.i.i.i67.i = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i.i.i67.i, label %_ZN5arrow10TypeHolderD2Ev.exit.i, label %bb.hg

bb.hg:                                            ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 4 uses
  %i.se = load atomic i64, ptr %i.sd acquire, align 8, !noalias !1478 ; 2 uses
  %i.sf = icmp eq i64 %i.se, 4294967297
  %i.sg = trunc i64 %i.se to i32                  ; 2 uses
  br i1 %i.sf, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 0, ptr %i.sd, align 8, !tbaa !132, !noalias !1478
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  store i32 0, ptr %i.sh, align 4, !tbaa !133, !noalias !1478
  %i.si = load ptr, ptr %i.sc, align 8, !tbaa !135, !noalias !1478
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !1478
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #31, !noalias !1478, !inline_history !1427
  %i.sl = load ptr, ptr %i.sc, align 8, !tbaa !135, !noalias !1478
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !noalias !1478
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #31, !noalias !1478, !inline_history !1427
  br label %_ZN5arrow10TypeHolderD2Ev.exit.i

bb.hi:                                            ; preds = %bb.hg
  %i.so = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136, !noalias !1478
  %.not.i.i.i.i.i.i68.i = icmp eq i8 %i.so, 0
  br i1 %.not.i.i.i.i.i.i68.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.sp = add nsw i32 %i.sg, -1
  store i32 %i.sp, ptr %i.sd, align 8, !tbaa !67, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i

bb.hk:                                            ; preds = %bb.hi
  %i.sq = atomicrmw volatile add ptr %i.sd, i32 -1 acq_rel, align 4, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i: ; preds = %bb.hk, %bb.hj
  %.0.i.i.i.i.i.i.i70.i = phi i32 [ %i.sg, %bb.hj ], [ %i.sq, %bb.hk ]
  %i.sr = icmp eq i32 %.0.i.i.i.i.i.i.i70.i, 1
  br i1 %i.sr, label %bb.hl, label %_ZN5arrow10TypeHolderD2Ev.exit.i, !prof !137

bb.hl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #31, !noalias !1478
  br label %_ZN5arrow10TypeHolderD2Ev.exit.i

_ZN5arrow10TypeHolderD2Ev.exit.i:                 ; preds = %bb.hl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i, %bb.hh, %_ZNK5arrow7compute10Expression4typeEv.exit.i, %bb.hf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.hb, %bb.gz, %bb.t
  %i.ss = add nuw i64 %.0195.i, 1                 ; 2 uses
  %i.st = load ptr, ptr %i.aj, align 8, !tbaa !161, !noalias !1478
  %i.su = load ptr, ptr %i.b, align 8, !tbaa !160, !noalias !1478 ; 2 uses
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = ashr exact i64 %i.sx, 4
  %i.sz = icmp ult i64 %i.ss, %i.sy
  br i1 %i.sz, label %bb.s, label %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit.loopexit, !llvm.loop !1428

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.ex
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.phi194.i, %bb.ex ], [ %lpad.loopexit.i, %.loopexit.i ]
  call void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #31
  br label %.body

_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit.loopexit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit.i
  %.pre = load ptr, ptr %20, align 8, !tbaa !326
  %.pre331 = load ptr, ptr %i.av, align 8, !tbaa !328
  %.pre333 = load ptr, ptr %i.aw, align 8, !tbaa !327
  br label %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit

_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit: ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit.loopexit, %.noexc104
  %i.ta = phi ptr [ %.pre333, %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit.loopexit ], [ %i.at, %.noexc104 ], [ null, %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ]
  %i.tb = phi ptr [ %.pre331, %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit.loopexit ], [ %scevgep.i.i.i.i.i.i, %.noexc104 ], [ null, %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ]
  %i.tc = phi ptr [ %.pre, %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit.loopexit ], [ %i.as, %.noexc104 ], [ null, %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ]
  %i.td = load ptr, ptr %17, align 8, !tbaa !326  ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !328 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !327
  store ptr %i.tc, ptr %17, align 8, !tbaa !326
  %i.ti = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.tb, ptr %i.te, align 8, !tbaa !328
  %i.tj = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.ta, ptr %i.tg, align 8, !tbaa !327
  %.not4.i.i.i.i.i = icmp eq ptr %i.td, %i.tf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ub, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i.i.i ], [ %i.td, %_ZN5arrow7compute12_GLOBAL__N_141GetTypesWithSmallestLiteralRepresentationERKSt6vectorINS0_10ExpressionESaIS3_EE.exit ] ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 4 uses
  %i.tn = load atomic i64, ptr %i.tm acquire, align 8 ; 2 uses
  %i.to = icmp eq i64 %i.tn, 4294967297
  %i.tp = trunc i64 %i.tn to i32                  ; 2 uses
  br i1 %i.to, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  store i32 0, ptr %i.tm, align 8, !tbaa !132
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  store i32 0, ptr %i.tq, align 4, !tbaa !133
  %i.tr = load ptr, ptr %i.tl, align 8, !tbaa !135
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8
  call void %i.tt(ptr noundef nonnull align 8 dereferenceable(16) %i.tl) #31, !inline_history !1429
  %i.tu = load ptr, ptr %i.tl, align 8, !tbaa !135
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8
  call void %i.tw(ptr noundef nonnull align 8 dereferenceable(16) %i.tl) #31, !inline_history !1429
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i.i.i

bb.ho:                                            ; preds = %bb.hm
end_hunk_1
