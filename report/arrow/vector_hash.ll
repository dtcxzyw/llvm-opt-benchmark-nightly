inline.NumInlined: 10352
inline.NumDeleted: 3952
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !40
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.40", align 16 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 7 uses
  %3 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %4 = alloca %"class.std::function", align 8     ; 7 uses
  %5 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %6 = alloca %"class.std::function", align 8     ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 7 uses
  %8 = alloca %"class.std::function", align 8     ; 8 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %10 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %11 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %13 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %17 = alloca %"class.std::function", align 8    ; 8 uses
  %18 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %19 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %20 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %21 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %22 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %25 = alloca %"class.std::function", align 8    ; 8 uses
  %26 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %27 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %28 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %29 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %30 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %33 = alloca %"class.std::function", align 8    ; 8 uses
  %34 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %35 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %36 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %37 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %38 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %39 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %41 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %.sroa.0.i.i.i542 = alloca { i64, i64 }, align 8 ; 4 uses
  %42 = alloca %"class.std::function.13", align 8 ; 9 uses
  %43 = alloca %"class.std::shared_ptr.40", align 16 ; 4 uses
  %.sroa.0.i.i.i474 = alloca { i64, i64 }, align 8 ; 4 uses
  %44 = alloca %"class.std::function.13", align 8 ; 9 uses
  %.sroa.0.i.i.i470 = alloca { i64, i64 }, align 8 ; 4 uses
  %45 = alloca %"class.std::function", align 8    ; 9 uses
  %46 = alloca %"class.std::function", align 8    ; 7 uses
  %47 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %48 = alloca %"class.std::function", align 8    ; 7 uses
  %49 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %50 = alloca %"class.std::function", align 8    ; 7 uses
  %51 = alloca %"class.std::function", align 8    ; 7 uses
  %52 = alloca %"class.std::function", align 8    ; 8 uses
  %53 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %54 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %55 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %56 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %57 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %58 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %60 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %61 = alloca %"class.std::function", align 8    ; 8 uses
  %62 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %63 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %64 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %65 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %66 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %67 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %68 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %69 = alloca %"class.std::function", align 8    ; 8 uses
  %70 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %71 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %72 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %73 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %74 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %76 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %77 = alloca %"class.std::function", align 8    ; 8 uses
  %78 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %79 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %80 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %81 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %82 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %83 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %85 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %.sroa.0.i.i.i112 = alloca { i64, i64 }, align 8 ; 4 uses
  %86 = alloca %"class.std::function.13", align 8 ; 9 uses
  %87 = alloca %"class.std::shared_ptr.40", align 16 ; 4 uses
  %.sroa.0.i.i.i68 = alloca { i64, i64 }, align 8 ; 4 uses
  %88 = alloca %"class.std::function.13", align 8 ; 9 uses
  %.sroa.0.i.i.i65 = alloca { i64, i64 }, align 8 ; 4 uses
  %89 = alloca %"class.std::function", align 8    ; 9 uses
  %90 = alloca %"class.std::function", align 8    ; 7 uses
  %91 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %92 = alloca %"class.std::function", align 8    ; 7 uses
  %93 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %94 = alloca %"class.std::function", align 8    ; 7 uses
  %95 = alloca %"class.std::function", align 8    ; 7 uses
  %96 = alloca %"class.std::function", align 8    ; 8 uses
  %97 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %98 = alloca %"class.std::vector.31", align 8   ; 10 uses
  %99 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %100 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %101 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %102 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %103 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %104 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %105 = alloca %"class.std::function", align 8   ; 8 uses
  %106 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %107 = alloca %"class.std::vector.31", align 8  ; 10 uses
  %108 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %109 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %110 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %111 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %112 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %i.c = alloca [2 x i32], align 4                ; 6 uses
  %113 = alloca %"class.std::function", align 8   ; 8 uses
  %114 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %115 = alloca %"class.std::vector.31", align 8  ; 10 uses
  %116 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %117 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %118 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %119 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %120 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %121 = alloca %"class.std::function", align 8   ; 8 uses
  %122 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %123 = alloca %"class.std::vector.31", align 8  ; 10 uses
  %124 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %125 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %126 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %127 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %128 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %129 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %130 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 30 uses
  %131 = alloca %"class.std::shared_ptr.16", align 8 ; 8 uses
  %132 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %133 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 21 uses
  %134 = alloca %"class.arrow::compute::OutputType", align 8 ; 11 uses
  %135 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %136 = alloca %"class.std::vector.31", align 8  ; 8 uses
  %137 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %138 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %139 = alloca %"class.std::shared_ptr.36", align 8 ; 4 uses
  %140 = alloca %"class.arrow::Status", align 8   ; 3 uses
  %141 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 6 uses
  %142 = alloca %"class.arrow::Status", align 8   ; 3 uses
  %143 = alloca %"class.std::shared_ptr.50", align 8 ; 4 uses
  %144 = alloca %"class.std::shared_ptr.16", align 8 ; 8 uses
  %145 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %146 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 21 uses
  %147 = alloca %"class.arrow::compute::OutputType", align 8 ; 11 uses
  %148 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %149 = alloca %"class.std::vector.31", align 8  ; 8 uses
  %150 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %151 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %152 = alloca %"class.std::shared_ptr.36", align 8 ; 4 uses
  %153 = alloca %"class.arrow::Status", align 8   ; 3 uses
  %154 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 6 uses
  %155 = alloca %"class.arrow::Status", align 8   ; 3 uses
  %156 = alloca %"class.std::shared_ptr.50", align 8 ; 4 uses
  %157 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %158 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %159 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 21 uses
  %160 = alloca %"class.arrow::compute::OutputType", align 8 ; 11 uses
  %161 = alloca %"class.arrow::Status", align 8   ; 3 uses
  %162 = alloca %"class.std::vector.31", align 8  ; 8 uses
  %163 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %164 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %165 = alloca %"class.std::function", align 8   ; 8 uses
  %166 = alloca %"class.arrow::Status", align 8   ; 3 uses
  %167 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #32
  %i.e = getelementptr inbounds nuw i8, ptr %130, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(131) %130, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %130, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %130, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %130, i64 120
  store i64 0, ptr %i.g, align 16
  store i32 2, ptr %i.h, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %130, i64 124
  store i32 1, ptr %i.i, align 4, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %130, i64 128
  store i8 1, ptr %i.j, align 16, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %130, i64 129
  store i8 1, ptr %i.k, align 1, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %130, i64 130 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %130, i64 72
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18HashExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.m, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %130, i64 88 ; 11 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_114UniqueFinalizeEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %130, i64 96
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %130, i64 104 ; 14 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %130, i64 112 ; 5 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  store i8 0, ptr %i.l, align 2, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #32
  store i40 1, ptr %132, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.q = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #33
          to label %.noexc unwind label %bb.my    ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !77, !noalias !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !79, !noalias !74
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !80, !noalias !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute14VectorFunctionEJRA7_KcNS1_5ArityERKNS1_11FunctionDocEEEvPT_DpOT0_(ptr noundef nonnull %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, ptr noundef nonnull align 4 dereferenceable(5) %132, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_110unique_docE)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !74

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 232) #34, !noalias !74
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %131, i64 8 ; 4 uses
  store ptr %i.q, ptr %i.v, align 8, !tbaa !82, !alias.scope !74
  store ptr %i.t, ptr %131, align 8, !tbaa !83, !alias.scope !74
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #32
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %133, ptr noundef nonnull align 8 dereferenceable(131) %130)
          to label %bb.c unwind label %bb.mz

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %134, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %134, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %134, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %134, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %134, i64 40 ; 2 uses
  store ptr @_ZN5arrow7compute8internal9FirstTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE, ptr %i.x, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_, ptr %i.y, align 8, !tbaa !92
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.z, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %98)
  call void @llvm.lifetime.start.p0(ptr nonnull %100)
  call void @llvm.lifetime.start.p0(ptr nonnull %101)
  call void @llvm.lifetime.start.p0(ptr nonnull %102)
  call void @llvm.lifetime.start.p0(ptr nonnull %103)
  call void @llvm.lifetime.start.p0(ptr nonnull %104)
  call void @llvm.lifetime.start.p0(ptr nonnull %107)
  call void @llvm.lifetime.start.p0(ptr nonnull %109)
  call void @llvm.lifetime.start.p0(ptr nonnull %110)
  call void @llvm.lifetime.start.p0(ptr nonnull %111)
  call void @llvm.lifetime.start.p0(ptr nonnull %112)
  call void @llvm.lifetime.start.p0(ptr nonnull %115)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %118)
  call void @llvm.lifetime.start.p0(ptr nonnull %119)
  call void @llvm.lifetime.start.p0(ptr nonnull %120)
  call void @llvm.lifetime.start.p0(ptr nonnull %123)
  call void @llvm.lifetime.start.p0(ptr nonnull %125)
  call void @llvm.lifetime.start.p0(ptr nonnull %126)
  call void @llvm.lifetime.start.p0(ptr nonnull %127)
  call void @llvm.lifetime.start.p0(ptr nonnull %128)
  call void @llvm.lifetime.start.p0(ptr nonnull %129)
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14PrimitiveTypesEv()
          to label %.noexc44 unwind label %.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc44:                                         ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc44
  %i.af = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %133, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %133, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %100, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %99, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %101, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %101, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %101, i64 16
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i: ; preds = %bb.kd, %bb.kc
  %.0.i.i.i.i299.i = phi i32 [ %i.aeu, %bb.kc ], [ %i.afe, %bb.kd ]
  %i.aff = icmp eq i32 %.0.i.i.i.i299.i, 1
  br i1 %i.aff, label %bb.ke, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i, !prof !37

bb.ke:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeq) #32
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i: ; preds = %bb.ke, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i, %bb.ka, %_ZN5arrow7compute9InputTypeD2Ev.exit295.i
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #32
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %129, ptr noundef nonnull align 8 dereferenceable(131) %133)
          to label %.noexc53 unwind label %.loopexit1008

.noexc53:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i
  invoke void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %128, ptr noundef nonnull align 8 dereferenceable(216) %i.t, ptr noundef nonnull %129)
          to label %bb.kf unwind label %bb.kn

bb.kf:                                            ; preds = %.noexc53
  %i.afg = load ptr, ptr %128, align 8, !tbaa !137 ; 2 uses
  %.not.i301.i = icmp eq ptr %i.afg, null
  br i1 %.not.i301.i, label %_ZN5arrow6StatusD2Ev.exit302.i, label %bb.kg, !prof !140

bb.kg:                                            ; preds = %bb.kf
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !141, !range !147, !noundef !148
  %i.afj = trunc nuw i8 %i.afi to i1
  br i1 %i.afj, label %_ZN5arrow6StatusD2Ev.exit302.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %128) #32
  br label %_ZN5arrow6StatusD2Ev.exit302.i

_ZN5arrow6StatusD2Ev.exit302.i:                   ; preds = %bb.kh, %bb.kg, %bb.kf
  %i.afk = load ptr, ptr %i.rl, align 8, !tbaa !93 ; 2 uses
  %.not.i.i303.i = icmp eq ptr %i.afk, null
  br i1 %.not.i.i303.i, label %_ZN5arrow7compute12VectorKernelD2Ev.exit305.i, label %bb.ki

bb.ki:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit302.i
  %i.afl = invoke noundef zeroext i1 %i.afk(ptr noundef nonnull align 8 dereferenceable(32) %i.rm, ptr noundef nonnull align 8 dereferenceable(32) %i.rm, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit305.i unwind label %bb.kj ; 0 uses

bb.kj:                                            ; preds = %bb.ki
  %i.afm = landingpad { ptr, i32 }
          catch ptr null
  %i.afn = extractvalue { ptr, i32 } %i.afm, 0
  call void @__clang_call_terminate(ptr %i.afn) #35
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit305.i:    ; preds = %bb.ki, %_ZN5arrow6StatusD2Ev.exit302.i
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %129) #32
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0377.0428.i, i64 16 ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.qv
  br i1 %i.afp, label %.loopexit1012, label %bb.hk

bb.kk:                                            ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit375.i
  %i.afq = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.kl:                                            ; preds = %bb.ij
  %i.afr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %127) #32
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %126) #32
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.pn.i = phi { ptr, i32 } [ %i.afr, %bb.kl ], [ %i.afq, %bb.kk ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %123) #32
  br label %.body257.i

.body257.i:                                       ; preds = %bb.km, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i251.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.km ], [ %i.aak, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i251.i ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %124) #32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %125) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #32
  br label %.body54

bb.kn:                                            ; preds = %.noexc53
  %i.afs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %129) #32
  br label %.body54

.loopexit1012:                                    ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit305.i, %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %98)
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  call void @llvm.lifetime.end.p0(ptr nonnull %101)
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %104)
  call void @llvm.lifetime.end.p0(ptr nonnull %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %109)
  call void @llvm.lifetime.end.p0(ptr nonnull %110)
  call void @llvm.lifetime.end.p0(ptr nonnull %111)
  call void @llvm.lifetime.end.p0(ptr nonnull %112)
  call void @llvm.lifetime.end.p0(ptr nonnull %115)
  call void @llvm.lifetime.end.p0(ptr nonnull %117)
  call void @llvm.lifetime.end.p0(ptr nonnull %118)
  call void @llvm.lifetime.end.p0(ptr nonnull %119)
  call void @llvm.lifetime.end.p0(ptr nonnull %120)
  call void @llvm.lifetime.end.p0(ptr nonnull %123)
  call void @llvm.lifetime.end.p0(ptr nonnull %125)
  call void @llvm.lifetime.end.p0(ptr nonnull %126)
  call void @llvm.lifetime.end.p0(ptr nonnull %127)
  call void @llvm.lifetime.end.p0(ptr nonnull %128)
  call void @llvm.lifetime.end.p0(ptr nonnull %129)
  %i.aft = load ptr, ptr %i.z, align 8, !tbaa !93 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.aft, null
  br i1 %.not.i.i56, label %_ZNSt14_Function_baseD2Ev.exit.i57, label %bb.ko

bb.ko:                                            ; preds = %.loopexit1012
  %i.afu = invoke noundef zeroext i1 %i.aft(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i57 unwind label %bb.kp ; 0 uses

bb.kp:                                            ; preds = %bb.ko
  %i.afv = landingpad { ptr, i32 }
          catch ptr null
  %i.afw = extractvalue { ptr, i32 } %i.afv, 0
  call void @__clang_call_terminate(ptr %i.afw) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i57:               ; preds = %bb.ko, %.loopexit1012
  %i.afx = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i58 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i.i58, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, label %bb.kq

bb.kq:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i57
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 4 uses
  %i.aga = load atomic i64, ptr %i.afz acquire, align 8 ; 2 uses
  %i.agb = icmp eq i64 %i.aga, 4294967297
  %i.agc = trunc i64 %i.aga to i32                ; 2 uses
  br i1 %i.agb, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  store i32 0, ptr %i.afz, align 8, !tbaa !77
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afy, i64 12
  store i32 0, ptr %i.agd, align 4, !tbaa !79
  %i.age = load ptr, ptr %i.afy, align 8, !tbaa !80
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agg = load ptr, ptr %i.agf, align 8
  call void %i.agg(ptr noundef nonnull align 8 dereferenceable(16) %i.afy) #32, !inline_history !159
  %i.agh = load ptr, ptr %i.afy, align 8, !tbaa !80
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.agj = load ptr, ptr %i.agi, align 8
  call void %i.agj(ptr noundef nonnull align 8 dereferenceable(16) %i.afy) #32, !inline_history !159
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

bb.ks:                                            ; preds = %bb.kq
  %i.agk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i59 = icmp eq i8 %i.agk, 0
  br i1 %.not.i.i.i.i59, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.agl = add nsw i32 %i.agc, -1
  store i32 %i.agl, ptr %i.afz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60

bb.ku:                                            ; preds = %bb.ks
  %i.agm = atomicrmw volatile add ptr %i.afz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60: ; preds = %bb.ku, %bb.kt
  %.0.i.i.i.i.i61 = phi i32 [ %i.agc, %bb.kt ], [ %i.agm, %bb.ku ]
  %i.agn = icmp eq i32 %.0.i.i.i.i.i61, 1
  br i1 %i.agn, label %bb.kv, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, !prof !37

bb.kv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afy) #32
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

_ZN5arrow7compute10OutputTypeD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i57, %bb.kr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60, %bb.kv
  %i.ago = getelementptr inbounds nuw i8, ptr %133, i64 104
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !93 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i63, label %_ZN5arrow7compute12VectorKernelD2Ev.exit, label %bb.kw

bb.kw:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.agq = getelementptr inbounds nuw i8, ptr %133, i64 88 ; 2 uses
  %i.agr = invoke noundef zeroext i1 %i.agp(ptr noundef nonnull align 8 dereferenceable(32) %i.agq, ptr noundef nonnull align 8 dereferenceable(32) %i.agq, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit unwind label %bb.kx ; 0 uses

bb.kx:                                            ; preds = %bb.kw
  %i.ags = landingpad { ptr, i32 }
          catch ptr null
  %i.agt = extractvalue { ptr, i32 } %i.ags, 0
  call void @__clang_call_terminate(ptr %i.agt) #35
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit:         ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit, %bb.kw
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %133) #32
  %i.agu = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #32
  %i.agv = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.agw = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 0, ptr %i.agw, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118DictionaryHashInitINS2_12UniqueActionEEENS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS7_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %89, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i65, ptr noundef nonnull align 8 dereferenceable(32) %89, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 16 dereferenceable(32) %i.agu, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i65, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i65)
  %i.agx = getelementptr inbounds nuw i8, ptr %130, i64 32 ; 6 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %130, i64 40 ; 2 uses
  %i.agz = load <2 x ptr>, ptr %i.agx, align 16, !tbaa !72
  %i.aha = load ptr, ptr %i.agx, align 16, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.agx, align 16, !tbaa !72
  store <2 x ptr> %i.agz, ptr %i.agv, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.agy, align 8, !tbaa !72
  %.not.i.i66 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i66, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, label %bb.ky

bb.ky:                                            ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit
  %i.ahb = invoke noundef zeroext i1 %i.aha(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(32) %89, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit unwind label %bb.kz ; 0 uses

bb.kz:                                            ; preds = %bb.ky
  %i.ahc = landingpad { ptr, i32 }
          catch ptr null
  %i.ahd = extractvalue { ptr, i32 } %i.ahc, 0
  call void @__clang_call_terminate(ptr %i.ahd) #35
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit: ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #32
  %i.ahe = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.ahf = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 0, ptr %i.ahf, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124UniqueFinalizeDictionaryEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %88, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i68)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i68, ptr noundef nonnull align 8 dereferenceable(32) %88, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i68, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i68)
  %i.ahg = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.ahh = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.ahg, ptr %i.ahe, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i69 = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i69, label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit71, label %bb.la

bb.la:                                            ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.ahi = invoke noundef zeroext i1 %i.ahh(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(32) %88, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit71 unwind label %bb.lb ; 0 uses

bb.lb:                                            ; preds = %bb.la
  %i.ahj = landingpad { ptr, i32 }
          catch ptr null
  %i.ahk = extractvalue { ptr, i32 } %i.ahj, 0
  call void @__clang_call_terminate(ptr %i.ahk) #35
  unreachable

_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit71: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %87, i32 noundef 29)
          to label %bb.lc unwind label %bb.na

bb.lc:                                            ; preds = %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit71
  store i32 2, ptr %137, align 8, !tbaa !116
  %i.ahl = getelementptr inbounds nuw i8, ptr %137, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahl, i8 0, i64 16, i1 false)
  %i.ahm = getelementptr inbounds nuw i8, ptr %137, i64 24
  %i.ahn = load <2 x ptr>, ptr %87, align 16, !tbaa !72
  store <2 x ptr> %i.ahn, ptr %i.ahm, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %136, i8 0, i64 24, i1 false)
  %i.aho = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc3.i unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ; 4 uses

.noexc3.i:                                        ; preds = %bb.lc
  store ptr %i.aho, ptr %136, align 8, !tbaa !122
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 40 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 2 uses
  store ptr %i.ahp, ptr %i.ahq, align 8, !tbaa !125
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahr, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.aho, ptr noundef nonnull align 8 dereferenceable(40) %137)
  %i.ahs = getelementptr inbounds nuw i8, ptr %136, i64 8 ; 2 uses
  store ptr %i.ahp, ptr %i.ahs, align 8, !tbaa !129
  store i32 1, ptr %138, align 8, !tbaa !85
  %i.aht = getelementptr inbounds nuw i8, ptr %138, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aht, i8 0, i64 32, i1 false)
  %i.ahu = getelementptr inbounds nuw i8, ptr %138, i64 24 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %138, i64 48
  %i.ahw = getelementptr inbounds nuw i8, ptr %138, i64 40 ; 2 uses
  store ptr @_ZN5arrow7compute8internal9FirstTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE, ptr %i.ahu, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_, ptr %i.ahv, align 8, !tbaa !92
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.ahw, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %139, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %135, ptr noundef nonnull %136, ptr noundef nonnull %138, i1 noundef zeroext false, ptr noundef nonnull %139)
          to label %bb.ld unwind label %bb.nb

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i: ; preds = %bb.lc
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %.body75

bb.ld:                                            ; preds = %.noexc3.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 2 uses
  %i.aia = load <2 x ptr>, ptr %135, align 16, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %135, i8 0, i64 16, i1 false)
  %i.aib = load ptr, ptr %i.ahz, align 8, !tbaa !82 ; 8 uses
  store <2 x ptr> %i.aia, ptr %130, align 16, !tbaa !72
  %.not.i.i.i.i77 = icmp eq ptr %i.aib, null
  br i1 %.not.i.i.i.i77, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8 ; 4 uses
  %i.aid = load atomic i64, ptr %i.aic acquire, align 8 ; 2 uses
  %i.aie = icmp eq i64 %i.aid, 4294967297
  %i.aif = trunc i64 %i.aid to i32                ; 2 uses
  br i1 %i.aie, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  store i32 0, ptr %i.aic, align 8, !tbaa !77
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aib, i64 12
  store i32 0, ptr %i.aig, align 4, !tbaa !79
  %i.aih = load ptr, ptr %i.aib, align 8, !tbaa !80
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(16) %i.aib) #32, !inline_history !160
  %i.aik = load ptr, ptr %i.aib, align 8, !tbaa !80
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 24
  %i.aim = load ptr, ptr %i.ail, align 8
  call void %i.aim(ptr noundef nonnull align 8 dereferenceable(16) %i.aib) #32, !inline_history !160
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit

bb.lg:                                            ; preds = %bb.le
  %i.ain = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i78 = icmp eq i8 %i.ain, 0
  br i1 %.not.i.i.i.i.i78, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.aio = add nsw i32 %i.aif, -1
  store i32 %i.aio, ptr %i.aic, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79

bb.li:                                            ; preds = %bb.lg
  %i.aip = atomicrmw volatile add ptr %i.aic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79: ; preds = %bb.li, %bb.lh
  %.0.i.i.i.i.i.i80 = phi i32 [ %i.aif, %bb.lh ], [ %i.aip, %bb.li ]
  %i.aiq = icmp eq i32 %.0.i.i.i.i.i.i80, 1
  br i1 %i.aiq, label %bb.lj, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, !prof !37

bb.lj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aib) #32
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit: ; preds = %bb.ld, %bb.lf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79, %bb.lj
  %i.air = load ptr, ptr %i.ahy, align 8, !tbaa !82 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.air, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.lk

bb.lk:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 8 ; 4 uses
  %i.ait = load atomic i64, ptr %i.ais acquire, align 8 ; 2 uses
  %i.aiu = icmp eq i64 %i.ait, 4294967297
  %i.aiv = trunc i64 %i.ait to i32                ; 2 uses
  br i1 %i.aiu, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  store i32 0, ptr %i.ais, align 8, !tbaa !77
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.air, i64 12
  store i32 0, ptr %i.aiw, align 4, !tbaa !79
  %i.aix = load ptr, ptr %i.air, align 8, !tbaa !80
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 16
  %i.aiz = load ptr, ptr %i.aiy, align 8
  call void %i.aiz(ptr noundef nonnull align 8 dereferenceable(16) %i.air) #32, !inline_history !161
  %i.aja = load ptr, ptr %i.air, align 8, !tbaa !80
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 24
  %i.ajc = load ptr, ptr %i.ajb, align 8
  call void %i.ajc(ptr noundef nonnull align 8 dereferenceable(16) %i.air) #32, !inline_history !161
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.lm:                                            ; preds = %bb.lk
  %i.ajd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i82 = icmp eq i8 %i.ajd, 0
  br i1 %.not.i.i.i82, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.aje = add nsw i32 %i.aiv, -1
  store i32 %i.aje, ptr %i.ais, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.lo:                                            ; preds = %bb.lm
  %i.ajf = atomicrmw volatile add ptr %i.ais, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.lo, %bb.ln
  %.0.i.i.i.i = phi i32 [ %i.aiv, %bb.ln ], [ %i.ajf, %bb.lo ]
  %i.ajg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ajg, label %bb.lp, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.lp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.air) #32
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, %bb.ll, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.lp
  %i.ajh = getelementptr inbounds nuw i8, ptr %139, i64 8
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !82 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.aji, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.lq

bb.lq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8 ; 4 uses
  %i.ajk = load atomic i64, ptr %i.ajj acquire, align 8 ; 2 uses
  %i.ajl = icmp eq i64 %i.ajk, 4294967297
  %i.ajm = trunc i64 %i.ajk to i32                ; 2 uses
  br i1 %i.ajl, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  store i32 0, ptr %i.ajj, align 8, !tbaa !77
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aji, i64 12
  store i32 0, ptr %i.ajn, align 4, !tbaa !79
  %i.ajo = load ptr, ptr %i.aji, align 8, !tbaa !80
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  %i.ajq = load ptr, ptr %i.ajp, align 8
  call void %i.ajq(ptr noundef nonnull align 8 dereferenceable(16) %i.aji) #32, !inline_history !162
  %i.ajr = load ptr, ptr %i.aji, align 8, !tbaa !80
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.ajt = load ptr, ptr %i.ajs, align 8
  call void %i.ajt(ptr noundef nonnull align 8 dereferenceable(16) %i.aji) #32, !inline_history !162
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ls:                                            ; preds = %bb.lq
  %i.aju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i84 = icmp eq i8 %i.aju, 0
  br i1 %.not.i.i.i84, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.ajv = add nsw i32 %i.ajm, -1
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
_ZN5arrow7compute9InputTypeD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.mn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #32
  %i.amk = load ptr, ptr %131, align 8, !tbaa !165 ; 2 uses
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %141, ptr noundef nonnull align 8 dereferenceable(131) %130)
          to label %bb.ms unwind label %bb.mz

bb.ms:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit
  invoke void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %140, ptr noundef nonnull align 8 dereferenceable(216) %i.amk, ptr noundef nonnull %141)
          to label %bb.mt unwind label %bb.nc

bb.mt:                                            ; preds = %bb.ms
  %i.aml = load ptr, ptr %140, align 8, !tbaa !137 ; 2 uses
  %.not.i102 = icmp eq ptr %i.aml, null
  br i1 %.not.i102, label %_ZN5arrow6StatusD2Ev.exit, label %bb.mu, !prof !140

bb.mu:                                            ; preds = %bb.mt
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 1
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !141, !range !147, !noundef !148
  %i.amo = trunc nuw i8 %i.amn to i1
  br i1 %i.amo, label %_ZN5arrow6StatusD2Ev.exit, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %140) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.amp = getelementptr inbounds nuw i8, ptr %141, i64 104
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !93 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.amq, null
  br i1 %.not.i.i103, label %_ZN5arrow7compute12VectorKernelD2Ev.exit105, label %bb.mw

bb.mw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.amr = getelementptr inbounds nuw i8, ptr %141, i64 88 ; 2 uses
  %i.ams = invoke noundef zeroext i1 %i.amq(ptr noundef nonnull align 8 dereferenceable(32) %i.amr, ptr noundef nonnull align 8 dereferenceable(32) %i.amr, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit105 unwind label %bb.mx ; 0 uses

bb.mx:                                            ; preds = %bb.mw
  %i.amt = landingpad { ptr, i32 }
          catch ptr null
  %i.amu = extractvalue { ptr, i32 } %i.amt, 0
  call void @__clang_call_terminate(ptr %i.amu) #35
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit105:      ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.mw
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %141) #32
  store ptr %i.amk, ptr %143, align 8, !tbaa !167
  %i.amv = getelementptr inbounds nuw i8, ptr %143, i64 8 ; 2 uses
  %i.amw = load ptr, ptr %i.v, align 8, !tbaa !82
  store ptr null, ptr %i.v, align 8, !tbaa !82
  store ptr %i.amw, ptr %i.amv, align 8, !tbaa !82
  store ptr null, ptr %131, align 8, !tbaa !165
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %142, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %143, i1 noundef zeroext false)
          to label %bb.nd unwind label %bb.no

bb.my:                                            ; preds = %bb.a
  %i.amx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.my
  %eh.lpad-body = phi { ptr, i32 } [ %i.amx, %bb.my ], [ %i.u, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #32
  br label %bb.aqw

bb.mz:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit, %bb.b
  %i.amy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqv

.loopexit1008:                                    ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i
  %lpad.loopexit1010 = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.loopexit.split-lp1009.loopexit:                  ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit231.i
  %lpad.loopexit1013 = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.loopexit.split-lp1009.loopexit.split-lp.loopexit: ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit168.i
  %lpad.loopexit1016 = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %lpad.loopexit1018 = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.ev, %bb.c
  %lpad.loopexit.split-lp1019 = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %.loopexit1008, %.loopexit.split-lp1009.loopexit.split-lp.loopexit, %.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1009.loopexit, %.body.i, %bb.cg, %.loopexit392.i, %bb.eu, %bb.hj, %.body257.i, %bb.kn
  %eh.lpad-body55 = phi { ptr, i32 } [ %.pn.pn.i, %.body257.i ], [ %.pn83.pn.i, %.body.i ], [ %i.ju, %bb.cg ], [ %.pn76.pn.pn.i, %.loopexit392.i ], [ %.pn74.i, %bb.hj ], [ %i.qr, %bb.eu ], [ %i.afs, %bb.kn ], [ %lpad.loopexit1010, %.loopexit1008 ], [ %lpad.loopexit1013, %.loopexit.split-lp1009.loopexit ], [ %lpad.loopexit1016, %.loopexit.split-lp1009.loopexit.split-lp.loopexit ], [ %lpad.loopexit1018, %.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1019, %.loopexit.split-lp1009.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %134) #32
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %133) #32
  br label %bb.aqv

bb.na:                                            ; preds = %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit71
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1007

bb.nb:                                            ; preds = %.noexc3.i
  %i.ana = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %139) #32
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %138) #32
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %136) #32
  br label %.body75

.body75:                                          ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i, %bb.nb
  %.pn = phi { ptr, i32 } [ %i.ana, %bb.nb ], [ %i.ahx, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %137) #32
  br label %.loopexit1007

.loopexit1007:                                    ; preds = %.body75, %bb.na
  %.pn.pn = phi { ptr, i32 } [ %i.amz, %bb.na ], [ %.pn, %.body75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #32
  br label %bb.aqv

bb.nc:                                            ; preds = %bb.ms
  %i.anb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %141) #32
  br label %bb.aqv

bb.nd:                                            ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit105
  %i.anc = load ptr, ptr %142, align 8, !tbaa !137 ; 2 uses
  %.not.i106 = icmp eq ptr %i.anc, null
  br i1 %.not.i106, label %_ZN5arrow6StatusD2Ev.exit107, label %bb.ne, !prof !140

bb.ne:                                            ; preds = %bb.nd
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 1
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !141, !range !147, !noundef !148
  %i.anf = trunc nuw i8 %i.ane to i1
  br i1 %i.anf, label %_ZN5arrow6StatusD2Ev.exit107, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %142) #32
  br label %_ZN5arrow6StatusD2Ev.exit107

_ZN5arrow6StatusD2Ev.exit107:                     ; preds = %bb.nd, %bb.ne, %bb.nf
  %i.ang = load ptr, ptr %i.amv, align 8, !tbaa !82 ; 8 uses
  %.not.i.i108 = icmp eq ptr %i.ang, null
  br i1 %.not.i.i108, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ng

bb.ng:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit107
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 8 ; 4 uses
  %i.ani = load atomic i64, ptr %i.anh acquire, align 8 ; 2 uses
  %i.anj = icmp eq i64 %i.ani, 4294967297
  %i.ank = trunc i64 %i.ani to i32                ; 2 uses
  br i1 %i.anj, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  store i32 0, ptr %i.anh, align 8, !tbaa !77
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ang, i64 12
  store i32 0, ptr %i.anl, align 4, !tbaa !79
  %i.anm = load ptr, ptr %i.ang, align 8, !tbaa !80
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  %i.ano = load ptr, ptr %i.ann, align 8
  call void %i.ano(ptr noundef nonnull align 8 dereferenceable(16) %i.ang) #32, !inline_history !170
  %i.anp = load ptr, ptr %i.ang, align 8, !tbaa !80
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 24
  %i.anr = load ptr, ptr %i.anq, align 8
  call void %i.anr(ptr noundef nonnull align 8 dereferenceable(16) %i.ang) #32, !inline_history !170
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ni:                                            ; preds = %bb.ng
  %i.ans = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i109 = icmp eq i8 %i.ans, 0
  br i1 %.not.i.i.i109, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.ant = add nsw i32 %i.ank, -1
  store i32 %i.ant, ptr %i.anh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

bb.nk:                                            ; preds = %bb.ni
  %i.anu = atomicrmw volatile add ptr %i.anh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110: ; preds = %bb.nk, %bb.nj
  %.0.i.i.i.i111 = phi i32 [ %i.ank, %bb.nj ], [ %i.anu, %bb.nk ]
  %i.anv = icmp eq i32 %.0.i.i.i.i111, 1
  br i1 %i.anv, label %bb.nl, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.nl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ang) #32
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit107, %bb.nh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110, %bb.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #32
  %i.anw = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.anx = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 0, ptr %i.anx, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_119ValueCountsFinalizeEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %86, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i112)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i112, ptr noundef nonnull align 8 dereferenceable(32) %86, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i112, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i112)
  %i.any = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.anz = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.any, ptr %i.anw, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i113 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i113, label %bb.np, label %bb.nm

bb.nm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aoa = invoke noundef zeroext i1 %i.anz(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(32) %86, i32 noundef 3)
          to label %bb.np unwind label %bb.nn     ; 0 uses

bb.nn:                                            ; preds = %bb.nm
  %i.aob = landingpad { ptr, i32 }
          catch ptr null
  %i.aoc = extractvalue { ptr, i32 } %i.aob, 0
  call void @__clang_call_terminate(ptr %i.aoc) #35
  unreachable

bb.no:                                            ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit105
  %i.aod = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %143) #32
  br label %bb.aqv

bb.np:                                            ; preds = %bb.nm, %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #32
  store i40 1, ptr %145, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.aoe = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #33
          to label %.noexc117 unwind label %bb.abn ; 6 uses

.noexc117:                                        ; preds = %bb.np
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  store i32 1, ptr %i.aof, align 8, !tbaa !77, !noalias !171
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aoe, i64 12
  store i32 1, ptr %i.aog, align 4, !tbaa !79, !noalias !171
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aoe, align 8, !tbaa !80, !noalias !171
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16 ; 6 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute14VectorFunctionEJRA13_KcNS1_5ArityERKNS1_11FunctionDocEEEvPT_DpOT0_(ptr noundef nonnull %i.aoh, ptr noundef nonnull align 1 dereferenceable(13) @.str.16, ptr noundef nonnull align 4 dereferenceable(5) %145, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_116value_counts_docE)
          to label %bb.nq unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i116, !noalias !171

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i116: ; preds = %.noexc117
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aoe, i64 noundef 232) #34, !noalias !171
  br label %.body118

bb.nq:                                            ; preds = %.noexc117
  %i.aoj = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 4 uses
  store ptr %i.aoe, ptr %i.aoj, align 8, !tbaa !82, !alias.scope !171
  store ptr %i.aoh, ptr %144, align 8, !tbaa !83, !alias.scope !171
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #32
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %146, ptr noundef nonnull align 8 dereferenceable(131) %130)
          to label %bb.nr unwind label %bb.abo

bb.nr:                                            ; preds = %bb.nq
  store i32 1, ptr %147, align 8, !tbaa !85
  %i.aok = getelementptr inbounds nuw i8, ptr %147, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aok, i8 0, i64 32, i1 false)
  %i.aol = getelementptr inbounds nuw i8, ptr %147, i64 24 ; 3 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %147, i64 48
  %i.aon = getelementptr inbounds nuw i8, ptr %147, i64 40 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_117ValueCountsOutputEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS6_EE, ptr %i.aol, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_, ptr %i.aom, align 8, !tbaa !92
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.aon, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  call void @llvm.lifetime.start.p0(ptr nonnull %66)
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %73)
  call void @llvm.lifetime.start.p0(ptr nonnull %74)
  call void @llvm.lifetime.start.p0(ptr nonnull %75)
  call void @llvm.lifetime.start.p0(ptr nonnull %76)
  call void @llvm.lifetime.start.p0(ptr nonnull %79)
  call void @llvm.lifetime.start.p0(ptr nonnull %81)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  call void @llvm.lifetime.start.p0(ptr nonnull %84)
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  %i.aoo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14PrimitiveTypesEv()
          to label %.noexc447 unwind label %.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc447:                                        ; preds = %bb.nr
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !94 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !94 ; 2 uses
  %i.aos = icmp eq ptr %i.aop, %i.aor
  br i1 %i.aos, label %.preheader.i202, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.noexc447
  %i.aot = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.aov = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.aox = getelementptr inbounds nuw i8, ptr %146, i64 32 ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %146, i64 40
  %i.aoz = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.apb = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %55, i64 24 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.apg = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.aph = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.api = getelementptr inbounds nuw i8, ptr %57, i64 40
  %i.apj = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.apl = getelementptr inbounds nuw i8, ptr %60, i64 104
  %i.apm = getelementptr inbounds nuw i8, ptr %60, i64 88 ; 2 uses
  %.phi.trans.insert.i121 = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 2 uses
  br label %bb.ns

.preheader.i202:                                  ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit.i201, %.noexc447
  %i.apn = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.app = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 6 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.apr = getelementptr inbounds nuw i8, ptr %146, i64 32 ; 9 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %146, i64 40 ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.apu = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.apv = getelementptr inbounds nuw i8, ptr %64, i64 32 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.apx = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %65, i64 40
  %i.aqd = getelementptr inbounds nuw i8, ptr %65, i64 24 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.aqf = getelementptr inbounds nuw i8, ptr %68, i64 104
  %i.aqg = getelementptr inbounds nuw i8, ptr %68, i64 88 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %64, i64 16
  br label %bb.qx

bb.ns:                                            ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit.i201, %.lr.ph.i120
  %.sroa.0389.0424.i122 = phi ptr [ %i.aop, %.lr.ph.i120 ], [ %i.aye, %_ZN5arrow7compute12VectorKernelD2Ev.exit.i201 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #32
  %i.aqi = load ptr, ptr %.sroa.0389.0424.i122, align 8, !tbaa !96
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 40
  %i.aqk = load i32, ptr %i.aqj, align 8, !tbaa !97 ; 3 uses
  %i.aql = icmp ult i32 %i.aqk, 41
  %switch.maskindex1285 = zext nneg i32 %i.aqk to i64
  %switch.shifted1286 = lshr i64 1846869490687, %switch.maskindex1285
  %switch.lobit1287 = trunc i64 %switch.shifted1286 to i1
  %or.cond1290 = select i1 %i.aql, i1 %switch.lobit1287, i1 false
  br i1 %or.cond1290, label %switch.lookup1284, label %.invoke1246

switch.lookup1284:                                ; preds = %bb.ns
  %i.aqm = zext nneg i32 %i.aqk to i64
  %switch.gep1288 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow7compute8internal12_GLOBAL__N_118DictionaryHashInitINS2_17ValueCountsActionEEENS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS7_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsE, i64 %i.aqm
  %switch.load1289 = load ptr, ptr %switch.gep1288, align 8
  store i64 0, ptr %i.aou, align 8, !alias.scope !174
  store ptr %switch.load1289, ptr %52, align 8, !tbaa !72, !alias.scope !174
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aot, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 16 dereferenceable(32) %i.aov, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aov, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false)
  %i.aqn = load <2 x ptr>, ptr %i.aox, align 16, !tbaa !72
  %i.aqo = load ptr, ptr %i.aox, align 16, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.aox, align 16, !tbaa !72
  store <2 x ptr> %i.aqn, ptr %i.aow, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.aoy, align 8, !tbaa !72
  %.not.i.i.i124 = icmp eq ptr %i.aqo, null
  br i1 %.not.i.i.i124, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSEOSF_.exit.thread.i446, label %bb.nt

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSEOSF_.exit.thread.i446: ; preds = %switch.lookup1284
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #32
  br label %_ZNSt14_Function_baseD2Ev.exit.i128

bb.nt:                                            ; preds = %switch.lookup1284
  %i.aqp = invoke noundef zeroext i1 %i.aqo(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %51, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSEOSF_.exit.i125 unwind label %bb.nu ; 0 uses

bb.nu:                                            ; preds = %bb.nt
  %i.aqq = landingpad { ptr, i32 }
          catch ptr null
  %i.aqr = extractvalue { ptr, i32 } %i.aqq, 0
  call void @__clang_call_terminate(ptr %i.aqr) #35
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSEOSF_.exit.i125: ; preds = %bb.nt
  %.pre.i126 = load ptr, ptr %i.aot, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #32
  %.not.i.i127 = icmp eq ptr %.pre.i126, null
  br i1 %.not.i.i127, label %_ZNSt14_Function_baseD2Ev.exit.i128, label %bb.nv

bb.nv:                                            ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSEOSF_.exit.i125
  %i.aqs = invoke noundef zeroext i1 %.pre.i126(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %52, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i128 unwind label %bb.nw ; 0 uses

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i404: ; preds = %bb.ys, %bb.yr
  %.0.i.i.i.i299.i405 = phi i32 [ %i.bti, %bb.yr ], [ %i.bts, %bb.ys ]
  %i.btt = icmp eq i32 %.0.i.i.i.i299.i405, 1
  br i1 %i.btt, label %bb.yt, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i406, !prof !37

bb.yt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i404
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bte) #32
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i406

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i406: ; preds = %bb.yt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i404, %bb.yp, %_ZN5arrow7compute9InputTypeD2Ev.exit295.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #32
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %85, ptr noundef nonnull align 8 dereferenceable(131) %146)
          to label %.noexc456 unwind label %.loopexit994

.noexc456:                                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i406
  invoke void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %84, ptr noundef nonnull align 8 dereferenceable(216) %i.aoh, ptr noundef nonnull %85)
          to label %bb.yu unwind label %bb.zc

bb.yu:                                            ; preds = %.noexc456
  %i.btu = load ptr, ptr %84, align 8, !tbaa !137 ; 2 uses
  %.not.i301.i407 = icmp eq ptr %i.btu, null
  br i1 %.not.i301.i407, label %_ZN5arrow6StatusD2Ev.exit302.i408, label %bb.yv, !prof !140

bb.yv:                                            ; preds = %bb.yu
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 1
  %i.btw = load i8, ptr %i.btv, align 1, !tbaa !141, !range !147, !noundef !148
  %i.btx = trunc nuw i8 %i.btw to i1
  br i1 %i.btx, label %_ZN5arrow6StatusD2Ev.exit302.i408, label %bb.yw

bb.yw:                                            ; preds = %bb.yv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %84) #32
  br label %_ZN5arrow6StatusD2Ev.exit302.i408

_ZN5arrow6StatusD2Ev.exit302.i408:                ; preds = %bb.yw, %bb.yv, %bb.yu
  %i.bty = load ptr, ptr %i.bfz, align 8, !tbaa !93 ; 2 uses
  %.not.i.i303.i409 = icmp eq ptr %i.bty, null
  br i1 %.not.i.i303.i409, label %_ZN5arrow7compute12VectorKernelD2Ev.exit305.i410, label %bb.yx

bb.yx:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit302.i408
  %i.btz = invoke noundef zeroext i1 %i.bty(ptr noundef nonnull align 8 dereferenceable(32) %i.bga, ptr noundef nonnull align 8 dereferenceable(32) %i.bga, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit305.i410 unwind label %bb.yy ; 0 uses

bb.yy:                                            ; preds = %bb.yx
  %i.bua = landingpad { ptr, i32 }
          catch ptr null
  %i.bub = extractvalue { ptr, i32 } %i.bua, 0
  call void @__clang_call_terminate(ptr %i.bub) #35
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit305.i410: ; preds = %bb.yx, %_ZN5arrow6StatusD2Ev.exit302.i408
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %85) #32
  %i.buc = getelementptr inbounds nuw i8, ptr %.sroa.0377.0428.i332, i64 16 ; 2 uses
  %i.bud = icmp eq ptr %i.buc, %i.bfj
  br i1 %i.bud, label %.loopexit998, label %bb.vz

bb.yz:                                            ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit375.i363
  %i.bue = landingpad { ptr, i32 }
          cleanup
  br label %bb.zb

bb.za:                                            ; preds = %bb.wy
  %i.buf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %83) #32
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %82) #32
  br label %bb.zb

bb.zb:                                            ; preds = %bb.za, %bb.yz
  %.pn.i364 = phi { ptr, i32 } [ %i.buf, %bb.za ], [ %i.bue, %bb.yz ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %79) #32
  br label %.body257.i343

.body257.i343:                                    ; preds = %bb.zb, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i251.i342
  %.pn.pn.i344 = phi { ptr, i32 } [ %.pn.i364, %bb.zb ], [ %i.boy, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i251.i342 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %80) #32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %81) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #32
  br label %.body457

bb.zc:                                            ; preds = %.noexc456
  %i.bug = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %85) #32
  br label %.body457

.loopexit998:                                     ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit305.i410, %.noexc452
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  call void @llvm.lifetime.end.p0(ptr nonnull %65)
  call void @llvm.lifetime.end.p0(ptr nonnull %66)
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  call void @llvm.lifetime.end.p0(ptr nonnull %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %73)
  call void @llvm.lifetime.end.p0(ptr nonnull %74)
  call void @llvm.lifetime.end.p0(ptr nonnull %75)
  call void @llvm.lifetime.end.p0(ptr nonnull %76)
  call void @llvm.lifetime.end.p0(ptr nonnull %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %82)
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %85)
  %i.buh = load ptr, ptr %i.aon, align 8, !tbaa !93 ; 2 uses
  %.not.i.i459 = icmp eq ptr %i.buh, null
  br i1 %.not.i.i459, label %_ZNSt14_Function_baseD2Ev.exit.i460, label %bb.zd

bb.zd:                                            ; preds = %.loopexit998
  %i.bui = invoke noundef zeroext i1 %i.buh(ptr noundef nonnull align 8 dereferenceable(32) %i.aol, ptr noundef nonnull align 8 dereferenceable(32) %i.aol, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i460 unwind label %bb.ze ; 0 uses

bb.ze:                                            ; preds = %bb.zd
  %i.buj = landingpad { ptr, i32 }
          catch ptr null
  %i.buk = extractvalue { ptr, i32 } %i.buj, 0
  call void @__clang_call_terminate(ptr %i.buk) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i460:              ; preds = %bb.zd, %.loopexit998
  %i.bul = getelementptr inbounds nuw i8, ptr %147, i64 16
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i461 = icmp eq ptr %i.bum, null
  br i1 %.not.i.i.i461, label %_ZN5arrow7compute10OutputTypeD2Ev.exit466, label %bb.zf

bb.zf:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i460
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 8 ; 4 uses
  %i.buo = load atomic i64, ptr %i.bun acquire, align 8 ; 2 uses
  %i.bup = icmp eq i64 %i.buo, 4294967297
  %i.buq = trunc i64 %i.buo to i32                ; 2 uses
  br i1 %i.bup, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  store i32 0, ptr %i.bun, align 8, !tbaa !77
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bum, i64 12
  store i32 0, ptr %i.bur, align 4, !tbaa !79
  %i.bus = load ptr, ptr %i.bum, align 8, !tbaa !80
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 16
  %i.buu = load ptr, ptr %i.but, align 8
  call void %i.buu(ptr noundef nonnull align 8 dereferenceable(16) %i.bum) #32, !inline_history !159
  %i.buv = load ptr, ptr %i.bum, align 8, !tbaa !80
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 24
  %i.bux = load ptr, ptr %i.buw, align 8
  call void %i.bux(ptr noundef nonnull align 8 dereferenceable(16) %i.bum) #32, !inline_history !159
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit466

bb.zh:                                            ; preds = %bb.zf
  %i.buy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i462 = icmp eq i8 %i.buy, 0
  br i1 %.not.i.i.i.i462, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.buz = add nsw i32 %i.buq, -1
  store i32 %i.buz, ptr %i.bun, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i463

bb.zj:                                            ; preds = %bb.zh
  %i.bva = atomicrmw volatile add ptr %i.bun, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i463

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i463: ; preds = %bb.zj, %bb.zi
  %.0.i.i.i.i.i464 = phi i32 [ %i.buq, %bb.zi ], [ %i.bva, %bb.zj ]
  %i.bvb = icmp eq i32 %.0.i.i.i.i.i464, 1
  br i1 %i.bvb, label %bb.zk, label %_ZN5arrow7compute10OutputTypeD2Ev.exit466, !prof !37

bb.zk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i463
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bum) #32
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit466

_ZN5arrow7compute10OutputTypeD2Ev.exit466:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i460, %bb.zg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i463, %bb.zk
  %i.bvc = getelementptr inbounds nuw i8, ptr %146, i64 104
  %i.bvd = load ptr, ptr %i.bvc, align 8, !tbaa !93 ; 2 uses
  %.not.i.i467 = icmp eq ptr %i.bvd, null
  br i1 %.not.i.i467, label %_ZN5arrow7compute12VectorKernelD2Ev.exit469, label %bb.zl

bb.zl:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit466
  %i.bve = getelementptr inbounds nuw i8, ptr %146, i64 88 ; 2 uses
  %i.bvf = invoke noundef zeroext i1 %i.bvd(ptr noundef nonnull align 8 dereferenceable(32) %i.bve, ptr noundef nonnull align 8 dereferenceable(32) %i.bve, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit469 unwind label %bb.zm ; 0 uses

bb.zm:                                            ; preds = %bb.zl
  %i.bvg = landingpad { ptr, i32 }
          catch ptr null
  %i.bvh = extractvalue { ptr, i32 } %i.bvg, 0
  call void @__clang_call_terminate(ptr %i.bvh) #35
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit469:      ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit466, %bb.zl
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %146) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #32
  %i.bvi = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.bvj = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.bvj, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118DictionaryHashInitINS2_17ValueCountsActionEEENS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS7_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %45, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i470)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i470, ptr noundef nonnull align 8 dereferenceable(32) %45, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 16 dereferenceable(32) %i.agu, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i470, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i470)
  %i.bvk = load <2 x ptr>, ptr %i.agx, align 16, !tbaa !72
  %i.bvl = load ptr, ptr %i.agx, align 16, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.agx, align 16, !tbaa !72
  store <2 x ptr> %i.bvk, ptr %i.bvi, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.agy, align 8, !tbaa !72
  %.not.i.i471 = icmp eq ptr %i.bvl, null
  br i1 %.not.i.i471, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit473, label %bb.zn

bb.zn:                                            ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit469
  %i.bvm = invoke noundef zeroext i1 %i.bvl(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit473 unwind label %bb.zo ; 0 uses

bb.zo:                                            ; preds = %bb.zn
  %i.bvn = landingpad { ptr, i32 }
          catch ptr null
  %i.bvo = extractvalue { ptr, i32 } %i.bvn, 0
  call void @__clang_call_terminate(ptr %i.bvo) #35
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit473: ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit469, %bb.zn
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #32
  %i.bvp = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bvq = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 0, ptr %i.bvq, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_129ValueCountsFinalizeDictionaryEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %44, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i474)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i474, ptr noundef nonnull align 8 dereferenceable(32) %44, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i474, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i474)
  %i.bvr = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.bvs = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.bvr, ptr %i.bvp, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i475 = icmp eq ptr %i.bvs, null
  br i1 %.not.i.i475, label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit477, label %bb.zp

bb.zp:                                            ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit473
  %i.bvt = invoke noundef zeroext i1 %i.bvs(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %44, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit477 unwind label %bb.zq ; 0 uses

bb.zq:                                            ; preds = %bb.zp
  %i.bvu = landingpad { ptr, i32 }
          catch ptr null
  %i.bvv = extractvalue { ptr, i32 } %i.bvu, 0
  call void @__clang_call_terminate(ptr %i.bvv) #35
  unreachable

_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit477: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit473, %bb.zp
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %43, i32 noundef 29)
          to label %bb.zr unwind label %bb.abp

bb.zr:                                            ; preds = %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit477
  store i32 2, ptr %150, align 8, !tbaa !116
  %i.bvw = getelementptr inbounds nuw i8, ptr %150, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bvw, i8 0, i64 16, i1 false)
  %i.bvx = getelementptr inbounds nuw i8, ptr %150, i64 24
  %i.bvy = load <2 x ptr>, ptr %43, align 16, !tbaa !72
  store <2 x ptr> %i.bvy, ptr %i.bvx, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %149, i8 0, i64 24, i1 false)
  %i.bvz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc3.i483 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i482 ; 4 uses

.noexc3.i483:                                     ; preds = %bb.zr
  store ptr %i.bvz, ptr %149, align 8, !tbaa !122
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 40 ; 2 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 2 uses
  store ptr %i.bwa, ptr %i.bwb, align 8, !tbaa !125
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bwc, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bvz, ptr noundef nonnull align 8 dereferenceable(40) %150)
  %i.bwd = getelementptr inbounds nuw i8, ptr %149, i64 8 ; 2 uses
  store ptr %i.bwa, ptr %i.bwd, align 8, !tbaa !129
  store i32 1, ptr %151, align 8, !tbaa !85
  %i.bwe = getelementptr inbounds nuw i8, ptr %151, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bwe, i8 0, i64 32, i1 false)
  %i.bwf = getelementptr inbounds nuw i8, ptr %151, i64 24 ; 3 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %151, i64 48
  %i.bwh = getelementptr inbounds nuw i8, ptr %151, i64 40 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_117ValueCountsOutputEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS6_EE, ptr %i.bwf, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_, ptr %i.bwg, align 8, !tbaa !92
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bwh, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %152, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %148, ptr noundef nonnull %149, ptr noundef nonnull %151, i1 noundef zeroext false, ptr noundef nonnull %152)
          to label %bb.zs unwind label %bb.abq

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i482: ; preds = %bb.zr
  %i.bwi = landingpad { ptr, i32 }
          cleanup
  br label %.body489

bb.zs:                                            ; preds = %.noexc3.i483
  %i.bwj = getelementptr inbounds nuw i8, ptr %148, i64 8
  %i.bwk = load <2 x ptr>, ptr %148, align 16, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %148, i8 0, i64 16, i1 false)
  %i.bwl = load ptr, ptr %i.ahz, align 8, !tbaa !82 ; 8 uses
  store <2 x ptr> %i.bwk, ptr %130, align 16, !tbaa !72
  %.not.i.i.i.i492 = icmp eq ptr %i.bwl, null
  br i1 %.not.i.i.i.i492, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 8 ; 4 uses
  %i.bwn = load atomic i64, ptr %i.bwm acquire, align 8 ; 2 uses
  %i.bwo = icmp eq i64 %i.bwn, 4294967297
  %i.bwp = trunc i64 %i.bwn to i32                ; 2 uses
  br i1 %i.bwo, label %bb.zu, label %bb.zv

bb.zu:                                            ; preds = %bb.zt
  store i32 0, ptr %i.bwm, align 8, !tbaa !77
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwl, i64 12
  store i32 0, ptr %i.bwq, align 4, !tbaa !79
  %i.bwr = load ptr, ptr %i.bwl, align 8, !tbaa !80
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwr, i64 16
  %i.bwt = load ptr, ptr %i.bws, align 8
  call void %i.bwt(ptr noundef nonnull align 8 dereferenceable(16) %i.bwl) #32, !inline_history !160
  %i.bwu = load ptr, ptr %i.bwl, align 8, !tbaa !80
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwu, i64 24
  %i.bww = load ptr, ptr %i.bwv, align 8
  call void %i.bww(ptr noundef nonnull align 8 dereferenceable(16) %i.bwl) #32, !inline_history !160
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit496

bb.zv:                                            ; preds = %bb.zt
  %i.bwx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i493 = icmp eq i8 %i.bwx, 0
  br i1 %.not.i.i.i.i.i493, label %bb.zx, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.bwy = add nsw i32 %i.bwp, -1
  store i32 %i.bwy, ptr %i.bwm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i494

bb.zx:                                            ; preds = %bb.zv
  %i.bwz = atomicrmw volatile add ptr %i.bwm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i494

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i494: ; preds = %bb.zx, %bb.zw
  %.0.i.i.i.i.i.i495 = phi i32 [ %i.bwp, %bb.zw ], [ %i.bwz, %bb.zx ]
  %i.bxa = icmp eq i32 %.0.i.i.i.i.i.i495, 1
  br i1 %i.bxa, label %bb.zy, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit496, !prof !37

bb.zy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i494
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bwl) #32
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit496

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit496: ; preds = %bb.zu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i494, %bb.zy
  %.pr = load ptr, ptr %i.bwj, align 8, !tbaa !82 ; 8 uses
  %.not.i.i497 = icmp eq ptr %.pr, null
  br i1 %.not.i.i497, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501, label %bb.zz

bb.zz:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit496
  %i.bxb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.bxc = load atomic i64, ptr %i.bxb acquire, align 8 ; 2 uses
  %i.bxd = icmp eq i64 %i.bxc, 4294967297
  %i.bxe = trunc i64 %i.bxc to i32                ; 2 uses
  br i1 %i.bxd, label %bb.aaa, label %bb.aab

bb.aaa:                                           ; preds = %bb.zz
  store i32 0, ptr %i.bxb, align 8, !tbaa !77
  %i.bxf = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bxf, align 4, !tbaa !79
  %i.bxg = load ptr, ptr %.pr, align 8, !tbaa !80
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 16
  %i.bxi = load ptr, ptr %i.bxh, align 8
  call void %i.bxi(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #32, !inline_history !161
  %i.bxj = load ptr, ptr %.pr, align 8, !tbaa !80
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxj, i64 24
  %i.bxl = load ptr, ptr %i.bxk, align 8
  call void %i.bxl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #32, !inline_history !161
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501

bb.aab:                                           ; preds = %bb.zz
  %i.bxm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i498 = icmp eq i8 %i.bxm, 0
  br i1 %.not.i.i.i498, label %bb.aad, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.bxn = add nsw i32 %i.bxe, -1
  store i32 %i.bxn, ptr %i.bxb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i499

bb.aad:                                           ; preds = %bb.aab
  %i.bxo = atomicrmw volatile add ptr %i.bxb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i499

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i499: ; preds = %bb.aad, %bb.aac
  %.0.i.i.i.i500 = phi i32 [ %i.bxe, %bb.aac ], [ %i.bxo, %bb.aad ]
  %i.bxp = icmp eq i32 %.0.i.i.i.i500, 1
  br i1 %i.bxp, label %bb.aae, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501, !prof !37

bb.aae:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i499
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #32
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501: ; preds = %bb.zs, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit496, %bb.aaa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i499, %bb.aae
  %i.bxq = getelementptr inbounds nuw i8, ptr %152, i64 8
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !82 ; 8 uses
  %.not.i.i502 = icmp eq ptr %i.bxr, null
  br i1 %.not.i.i502, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506, label %bb.aaf

bb.aaf:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit501
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxr, i64 8 ; 4 uses
  %i.bxt = load atomic i64, ptr %i.bxs acquire, align 8 ; 2 uses
  %i.bxu = icmp eq i64 %i.bxt, 4294967297
  %i.bxv = trunc i64 %i.bxt to i32                ; 2 uses
  br i1 %i.bxu, label %bb.aag, label %bb.aah

bb.aag:                                           ; preds = %bb.aaf
  store i32 0, ptr %i.bxs, align 8, !tbaa !77
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxr, i64 12
  store i32 0, ptr %i.bxw, align 4, !tbaa !79
  %i.bxx = load ptr, ptr %i.bxr, align 8, !tbaa !80
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 16
  %i.bxz = load ptr, ptr %i.bxy, align 8
  call void %i.bxz(ptr noundef nonnull align 8 dereferenceable(16) %i.bxr) #32, !inline_history !162
  %i.bya = load ptr, ptr %i.bxr, align 8, !tbaa !80
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 24
  %i.byc = load ptr, ptr %i.byb, align 8
  call void %i.byc(ptr noundef nonnull align 8 dereferenceable(16) %i.bxr) #32, !inline_history !162
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506

bb.aah:                                           ; preds = %bb.aaf
  %i.byd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i503 = icmp eq i8 %i.byd, 0
  br i1 %.not.i.i.i503, label %bb.aaj, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %i.bye = add nsw i32 %i.bxv, -1
  store i32 %i.bye, ptr %i.bxs, align 8, !tbaa !3
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
_ZN5arrow7compute9InputTypeD2Ev.exit529:          ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i523, %bb.abc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i526, %bb.abg
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #32
  %i.cat = load ptr, ptr %144, align 8, !tbaa !165 ; 2 uses
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %154, ptr noundef nonnull align 8 dereferenceable(131) %130)
          to label %bb.abh unwind label %bb.abo

bb.abh:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit529
  invoke void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %153, ptr noundef nonnull align 8 dereferenceable(216) %i.cat, ptr noundef nonnull %154)
          to label %bb.abi unwind label %bb.abr

bb.abi:                                           ; preds = %bb.abh
  %i.cau = load ptr, ptr %153, align 8, !tbaa !137 ; 2 uses
  %.not.i530 = icmp eq ptr %i.cau, null
  br i1 %.not.i530, label %_ZN5arrow6StatusD2Ev.exit531, label %bb.abj, !prof !140

bb.abj:                                           ; preds = %bb.abi
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 1
  %i.caw = load i8, ptr %i.cav, align 1, !tbaa !141, !range !147, !noundef !148
  %i.cax = trunc nuw i8 %i.caw to i1
  br i1 %i.cax, label %_ZN5arrow6StatusD2Ev.exit531, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %153) #32
  br label %_ZN5arrow6StatusD2Ev.exit531

_ZN5arrow6StatusD2Ev.exit531:                     ; preds = %bb.abi, %bb.abj, %bb.abk
  %i.cay = getelementptr inbounds nuw i8, ptr %154, i64 104
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !93 ; 2 uses
  %.not.i.i532 = icmp eq ptr %i.caz, null
  br i1 %.not.i.i532, label %_ZN5arrow7compute12VectorKernelD2Ev.exit534, label %bb.abl

bb.abl:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit531
  %i.cba = getelementptr inbounds nuw i8, ptr %154, i64 88 ; 2 uses
  %i.cbb = invoke noundef zeroext i1 %i.caz(ptr noundef nonnull align 8 dereferenceable(32) %i.cba, ptr noundef nonnull align 8 dereferenceable(32) %i.cba, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit534 unwind label %bb.abm ; 0 uses

bb.abm:                                           ; preds = %bb.abl
  %i.cbc = landingpad { ptr, i32 }
          catch ptr null
  %i.cbd = extractvalue { ptr, i32 } %i.cbc, 0
  call void @__clang_call_terminate(ptr %i.cbd) #35
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit534:      ; preds = %_ZN5arrow6StatusD2Ev.exit531, %bb.abl
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %154) #32
  store ptr %i.cat, ptr %156, align 8, !tbaa !167
  %i.cbe = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.cbf = load ptr, ptr %i.aoj, align 8, !tbaa !82
  store ptr null, ptr %i.aoj, align 8, !tbaa !82
  store ptr %i.cbf, ptr %i.cbe, align 8, !tbaa !82
  store ptr null, ptr %144, align 8, !tbaa !165
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %155, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %156, i1 noundef zeroext false)
          to label %bb.abs unwind label %bb.acd

bb.abn:                                           ; preds = %bb.np
  %i.cbg = landingpad { ptr, i32 }
          cleanup
  br label %.body118

.body118:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i116, %bb.abn
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.cbg, %bb.abn ], [ %i.aoi, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #32
  br label %bb.aqu

bb.abo:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit529, %bb.nq
  %i.cbh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqt

.loopexit994:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit300.i406
  %lpad.loopexit996 = landingpad { ptr, i32 }
          cleanup
  br label %.body457

.loopexit.split-lp995.loopexit:                   ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit231.i323
  %lpad.loopexit999 = landingpad { ptr, i32 }
          cleanup
  br label %.body457

.loopexit.split-lp995.loopexit.split-lp.loopexit: ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit168.i259
  %lpad.loopexit1002 = landingpad { ptr, i32 }
          cleanup
  br label %.body457

.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197
  %lpad.loopexit1004 = landingpad { ptr, i32 }
          cleanup
  br label %.body457

.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1246, %bb.tk, %bb.nr
  %lpad.loopexit.split-lp1005 = landingpad { ptr, i32 }
          cleanup
  br label %.body457

.body457:                                         ; preds = %.loopexit994, %.loopexit.split-lp995.loopexit.split-lp.loopexit, %.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp995.loopexit, %.body.i133, %bb.qv, %.loopexit392.i211, %bb.tj, %bb.vy, %.body257.i343, %bb.zc
  %eh.lpad-body458 = phi { ptr, i32 } [ %.pn.pn.i344, %.body257.i343 ], [ %.pn83.pn.i134, %.body.i133 ], [ %i.ayi, %bb.qv ], [ %.pn76.pn.pn.i212, %.loopexit392.i211 ], [ %.pn74.i276, %bb.vy ], [ %i.bff, %bb.tj ], [ %i.bug, %bb.zc ], [ %lpad.loopexit996, %.loopexit994 ], [ %lpad.loopexit999, %.loopexit.split-lp995.loopexit ], [ %lpad.loopexit1002, %.loopexit.split-lp995.loopexit.split-lp.loopexit ], [ %lpad.loopexit1004, %.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1005, %.loopexit.split-lp995.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %147) #32
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %146) #32
  br label %bb.aqt

bb.abp:                                           ; preds = %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit477
  %i.cbi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit993

bb.abq:                                           ; preds = %.noexc3.i483
  %i.cbj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %152) #32
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %151) #32
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %149) #32
  br label %.body489

.body489:                                         ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i482, %bb.abq
  %.pn27 = phi { ptr, i32 } [ %i.cbj, %bb.abq ], [ %i.bwi, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i482 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %150) #32
  br label %.loopexit993

.loopexit993:                                     ; preds = %.body489, %bb.abp
  %.pn27.pn = phi { ptr, i32 } [ %i.cbi, %bb.abp ], [ %.pn27, %.body489 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #32
  br label %bb.aqt

bb.abr:                                           ; preds = %bb.abh
  %i.cbk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %154) #32
  br label %bb.aqt

bb.abs:                                           ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit534
  %i.cbl = load ptr, ptr %155, align 8, !tbaa !137 ; 2 uses
  %.not.i535 = icmp eq ptr %i.cbl, null
  br i1 %.not.i535, label %_ZN5arrow6StatusD2Ev.exit536, label %bb.abt, !prof !140

bb.abt:                                           ; preds = %bb.abs
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 1
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !141, !range !147, !noundef !148
  %i.cbo = trunc nuw i8 %i.cbn to i1
  br i1 %i.cbo, label %_ZN5arrow6StatusD2Ev.exit536, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %155) #32
  br label %_ZN5arrow6StatusD2Ev.exit536

_ZN5arrow6StatusD2Ev.exit536:                     ; preds = %bb.abs, %bb.abt, %bb.abu
  %i.cbp = load ptr, ptr %i.cbe, align 8, !tbaa !82 ; 8 uses
  %.not.i.i537 = icmp eq ptr %i.cbp, null
  br i1 %.not.i.i537, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541, label %bb.abv

bb.abv:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit536
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbp, i64 8 ; 4 uses
  %i.cbr = load atomic i64, ptr %i.cbq acquire, align 8 ; 2 uses
  %i.cbs = icmp eq i64 %i.cbr, 4294967297
  %i.cbt = trunc i64 %i.cbr to i32                ; 2 uses
  br i1 %i.cbs, label %bb.abw, label %bb.abx

bb.abw:                                           ; preds = %bb.abv
  store i32 0, ptr %i.cbq, align 8, !tbaa !77
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbp, i64 12
  store i32 0, ptr %i.cbu, align 4, !tbaa !79
  %i.cbv = load ptr, ptr %i.cbp, align 8, !tbaa !80
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 16
  %i.cbx = load ptr, ptr %i.cbw, align 8
  call void %i.cbx(ptr noundef nonnull align 8 dereferenceable(16) %i.cbp) #32, !inline_history !170
  %i.cby = load ptr, ptr %i.cbp, align 8, !tbaa !80
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 24
  %i.cca = load ptr, ptr %i.cbz, align 8
  call void %i.cca(ptr noundef nonnull align 8 dereferenceable(16) %i.cbp) #32, !inline_history !170
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541

bb.abx:                                           ; preds = %bb.abv
  %i.ccb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i538 = icmp eq i8 %i.ccb, 0
  br i1 %.not.i.i.i538, label %bb.abz, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  %i.ccc = add nsw i32 %i.cbt, -1
  store i32 %i.ccc, ptr %i.cbq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i539

bb.abz:                                           ; preds = %bb.abx
  %i.ccd = atomicrmw volatile add ptr %i.cbq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i539

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i539: ; preds = %bb.abz, %bb.aby
  %.0.i.i.i.i540 = phi i32 [ %i.cbt, %bb.aby ], [ %i.ccd, %bb.abz ]
  %i.cce = icmp eq i32 %.0.i.i.i.i540, 1
  br i1 %i.cce, label %bb.aca, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541, !prof !37

bb.aca:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i539
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cbp) #32
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541

_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541: ; preds = %_ZN5arrow6StatusD2Ev.exit536, %bb.abw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i539, %bb.aca
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #32
  %i.ccf = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ccg = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 0, ptr %i.ccg, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118DictEncodeFinalizeEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %42, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i542)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i542, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i542, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i542)
  %i.cch = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.cci = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.cch, ptr %i.ccf, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i543 = icmp eq ptr %i.cci, null
  br i1 %.not.i.i543, label %bb.ace, label %bb.acb

bb.acb:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541
  %i.ccj = invoke noundef zeroext i1 %i.cci(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %bb.ace unwind label %bb.acc   ; 0 uses

bb.acc:                                           ; preds = %bb.acb
  %i.cck = landingpad { ptr, i32 }
          catch ptr null
  %i.ccl = extractvalue { ptr, i32 } %i.cck, 0
  call void @__clang_call_terminate(ptr %i.ccl) #35
  unreachable

bb.acd:                                           ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit534
  %i.ccm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %156) #32
  br label %bb.aqt

bb.ace:                                           ; preds = %bb.acb, %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit541
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #32
  store i8 1, ptr %i.l, align 2, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #32
  store i40 1, ptr %158, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.ccn = load atomic i8, ptr @_ZGVZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEvE31kDefaultDictionaryEncodeOptions acquire, align 8
  %i.cco = icmp eq i8 %i.ccn, 0
  br i1 %i.cco, label %bb.acf, label %_ZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEv.exit, !prof !195

bb.acf:                                           ; preds = %bb.ace
  %i.ccp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEvE31kDefaultDictionaryEncodeOptions) #32
  %.not.i546 = icmp eq i32 %i.ccp, 0
  br i1 %.not.i546, label %_ZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEv.exit, label %bb.acg

bb.acg:                                           ; preds = %bb.acf
  invoke void @_ZN5arrow7compute23DictionaryEncodeOptionsC1ENS1_20NullEncodingBehaviorE(ptr noundef nonnull align 8 dereferenceable(20) @_ZZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEvE31kDefaultDictionaryEncodeOptions, i32 noundef 1)
          to label %_ZN5arrow7compute23DictionaryEncodeOptions8DefaultsEv.exit.i unwind label %bb.ach

_ZN5arrow7compute23DictionaryEncodeOptions8DefaultsEv.exit.i: ; preds = %bb.acg
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEvE31kDefaultDictionaryEncodeOptions) #32
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEv.exit

bb.ach:                                           ; preds = %bb.acg
  %i.ccq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEvE31kDefaultDictionaryEncodeOptions) #32
  br label %.body547

_ZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEv.exit: ; preds = %_ZN5arrow7compute23DictionaryEncodeOptions8DefaultsEv.exit.i, %bb.acf, %bb.ace
  store ptr @_ZZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEvE31kDefaultDictionaryEncodeOptions, ptr %i.d, align 8, !tbaa !196
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.ccr = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #33
          to label %.noexc549 unwind label %bb.aph ; 6 uses

.noexc549:                                        ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_133GetDefaultDictionaryEncodeOptionsEv.exit
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 8
  store i32 1, ptr %i.ccs, align 8, !tbaa !77, !noalias !198
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccr, i64 12
  store i32 1, ptr %i.cct, align 4, !tbaa !79, !noalias !198
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ccr, align 8, !tbaa !80, !noalias !198
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.ccr, i64 16 ; 6 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute14VectorFunctionEJRA18_KcNS1_5ArityERKNS1_11FunctionDocEPKNS1_23DictionaryEncodeOptionsEEEvPT_DpOT0_(ptr noundef nonnull %i.ccu, ptr noundef nonnull align 1 dereferenceable(18) @.str.17, ptr noundef nonnull align 4 dereferenceable(5) %158, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_121dictionary_encode_docE, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aci unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !198

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc549
  %i.ccv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ccr, i64 noundef 232) #34, !noalias !198
  br label %.body547

bb.aci:                                           ; preds = %.noexc549
  %i.ccw = getelementptr inbounds nuw i8, ptr %157, i64 8 ; 3 uses
  store ptr %i.ccr, ptr %i.ccw, align 8, !tbaa !82, !alias.scope !198
  store ptr %i.ccu, ptr %157, align 16, !tbaa !83, !alias.scope !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #32
  invoke void @_ZN5arrow7compute12VectorKernelC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(131) %159, ptr noundef nonnull align 8 dereferenceable(131) %130)
          to label %bb.acj unwind label %bb.api

bb.acj:                                           ; preds = %bb.aci
  store i32 1, ptr %160, align 8, !tbaa !85
  %i.ccx = getelementptr inbounds nuw i8, ptr %160, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ccx, i8 0, i64 32, i1 false)
  %i.ccy = getelementptr inbounds nuw i8, ptr %160, i64 24 ; 3 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %160, i64 48
  %i.cda = getelementptr inbounds nuw i8, ptr %160, i64 40 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116DictEncodeOutputEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS6_EE, ptr %i.ccy, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_, ptr %i.ccz, align 8, !tbaa !92
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.cda, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  %i.cdb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14PrimitiveTypesEv()
          to label %.noexc879 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc879:                                        ; preds = %bb.acj
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !94 ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cdb, i64 8
  %i.cde = load ptr, ptr %i.cdd, align 8, !tbaa !94 ; 2 uses
  %i.cdf = icmp eq ptr %i.cdc, %i.cde
  br i1 %i.cdf, label %.preheader.i634, label %.lr.ph.i552

.lr.ph.i552:                                      ; preds = %.noexc879
  %i.cdg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cdi = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 2 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cdk = getelementptr inbounds nuw i8, ptr %159, i64 32 ; 3 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %159, i64 40
  %i.cdm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cdo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cdt = getelementptr inbounds nuw i8, ptr %159, i64 8
  %i.cdu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cdv = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.cdw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cdy = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.cdz = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  %.phi.trans.insert.i553 = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  br label %bb.ack

.preheader.i634:                                  ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit.i633, %.noexc879
  %i.cea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cec = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 6 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cee = getelementptr inbounds nuw i8, ptr %159, i64 32 ; 9 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %159, i64 40 ; 3 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ceh = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.cei = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cek = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cen = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 3 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cep = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.ceq = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.cer = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ces = getelementptr inbounds nuw i8, ptr %24, i64 104
  %i.cet = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 2 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.afp

bb.ack:                                           ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit.i633, %.lr.ph.i552
  %.sroa.0389.0424.i554 = phi ptr [ %i.cdc, %.lr.ph.i552 ], [ %i.cmr, %_ZN5arrow7compute12VectorKernelD2Ev.exit.i633 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.cev = load ptr, ptr %.sroa.0389.0424.i554, align 8, !tbaa !96
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 40
  %i.cex = load i32, ptr %i.cew, align 8, !tbaa !97 ; 3 uses
  %i.cey = icmp ult i32 %i.cex, 41
  %switch.maskindex1317 = zext nneg i32 %i.cex to i64
  %switch.shifted1318 = lshr i64 1846869490687, %switch.maskindex1317
  %switch.lobit1319 = trunc i64 %switch.shifted1318 to i1
  %or.cond1322 = select i1 %i.cey, i1 %switch.lobit1319, i1 false
  br i1 %or.cond1322, label %switch.lookup1316, label %.invoke1248

switch.lookup1316:                                ; preds = %bb.ack
  %i.cez = zext nneg i32 %i.cex to i64
  %switch.gep1320 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE.937, i64 %i.cez
  %switch.load1321 = load ptr, ptr %switch.gep1320, align 8
  store i64 0, ptr %i.cdh, align 8, !alias.scope !201
  store ptr %switch.load1321, ptr %8, align 8, !tbaa !72, !alias.scope !201
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdg, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %i.cdi, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cdi, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  %i.cfa = load <2 x ptr>, ptr %i.cdk, align 16, !tbaa !72
  %i.cfb = load ptr, ptr %i.cdk, align 16, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.cdk, align 16, !tbaa !72
  store <2 x ptr> %i.cfa, ptr %i.cdj, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.cdl, align 8, !tbaa !72
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev:bb.a

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i) #32
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !539

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !535
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !540
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #34
  br label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute14VectorFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !535  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !538  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !541 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35, !inline_history !541
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i.i) #32, !inline_history !541
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !539

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !535
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !540
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #34, !inline_history !541
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #32, !inline_history !541
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute6detail12FunctionImplINS0_12VectorKernelEE11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !538
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !535
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 136
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function12DispatchBestEPSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.264") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZNK5arrow7compute8Function7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.264") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute8Function7is_pureEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !535  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !538  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !541 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35, !inline_history !541
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i.i) #32, !inline_history !541
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !539

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !535
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !540
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #34, !inline_history !541
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #32, !inline_history !541
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #34
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14PrimitiveTypesEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.22", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.c = load i32, ptr %1, align 8, !tbaa !85
  store i32 %i.c, ptr %0, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  store ptr %i.e, ptr %i.a, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !82 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !79
  %i.s = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #32, !inline_history !459
  %i.v = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #32, !inline_history !459
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !82
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !72
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #35
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.an = phi <2 x ptr> [ splat (ptr null), %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !72
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.ac, align 8, !tbaa !72
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #35
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.k, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.body, %bb.q
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32
  resume { ptr, i32 } %i.ai
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow13IntervalTypesEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_18HashInitINS2_14NullHashKernelINS2_12UniqueActionELb0EEEEENS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS9_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.27") align 8 %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.19", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246, !nonnull !148, !align !250
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254, !noalias !542 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322, !noalias !551 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !82, !alias.scope !551
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8, !noalias !551
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.c ], [ %i.n, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.l = cmpxchg weak ptr %i.i, i32 %.06.i.i.i.i.i.i.i, i32 %i.k acq_rel monotonic, align 8, !noalias !551 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  br i1 %i.m, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.d, !llvm.loop !324

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #32, !noalias !551 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.o, align 8, !tbaa !80, !noalias !551
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #31, !noalias !551
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !325, !noalias !551 ; 2 uses
  store ptr %i.q, ptr %3, align 16, !tbaa !96, !alias.scope !551
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !542
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  %i.r = phi ptr [ null, %bb.f ], [ %i.q, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ] ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !445
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !446  ; 5 uses
  %i.u = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33
          to label %.noexc unwind label %bb.t     ; 22 uses

.noexc:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !552
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_114NullHashKernelINS2_12UniqueActionELb0EEE, i64 16), ptr %i.u, align 8, !tbaa !80, !noalias !552
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.t, ptr %i.w, align 8, !tbaa !555, !noalias !552
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.r, ptr %i.x, align 8, !tbaa !96, !noalias !552
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82, !noalias !552 ; 5 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !82, !noalias !552
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %.thread35, label %bb.h

.thread35:                                        ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i8 0, ptr %i.ab, align 8, !tbaa !563, !noalias !552
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !96, !noalias !552
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store ptr null, ptr %i.ad, align 8, !tbaa !82, !noalias !552
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store ptr %i.t, ptr %i.ae, align 8, !tbaa !564, !noalias !552
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !552
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !552
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.al, ptr %i.af, align 4, !tbaa !3, !noalias !552
  store i8 0, ptr %i.ah, align 8, !tbaa !563, !noalias !552
  store ptr %i.r, ptr %i.ai, align 8, !tbaa !96, !noalias !552
  store ptr %i.aa, ptr %i.aj, align 8, !tbaa !82, !noalias !552
  br label %.thread38

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i: ; preds = %bb.h
  %i.am = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !552 ; 0 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !563, !noalias !552
  %.val7.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !82 ; 3 uses
  %i.an = load <2 x ptr>, ptr %3, align 16, !tbaa !72
  store <2 x ptr> %i.an, ptr %i.ai, align 8, !tbaa !72, !noalias !552
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val7.pre.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store ptr %i.t, ptr %i.ao, align 8, !tbaa !564, !noalias !552
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !552
  %i.ap = icmp eq i8 %.pre.i, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.val7.pre.i.i, i64 8 ; 3 uses
  br i1 %i.ap, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !552
  br label %.thread38

.thread38:                                        ; preds = %.thread.i, %._crit_edge
  %.pr31 = phi ptr [ %i.aa, %.thread.i ], [ %.val7.pre.i.i, %._crit_edge ]
  %i.ar = phi i32 [ %i.al, %.thread.i ], [ %.pre, %._crit_edge ]
  %i.as = phi ptr [ %i.af, %.thread.i ], [ %i.aq, %._crit_edge ]
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.as, align 4, !tbaa !3, !noalias !552
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store ptr %i.t, ptr %i.au, align 8, !tbaa !564, !noalias !552
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4, !noalias !552 ; 0 uses
  %.pr.pre = load ptr, ptr %i.z, align 8, !tbaa !82 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store ptr %i.t, ptr %i.aw, align 8, !tbaa !564, !noalias !552
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread38, %bb.j
  %.pr41 = phi ptr [ %.pr31, %.thread38 ], [ %.pr.pre, %bb.j ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr41, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
end_hunk_5
