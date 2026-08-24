Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_instantiator?download=true
inline.NumInlined: 12553
inline.NumDeleted: 2538
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6casadi6MatrixINS_6SXElemEE7densifyERKS2_
define weak_odr void @_ZN6casadi6MatrixINS_6SXElemEE7densifyERKS2_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Matrix", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN6casadi6MatrixINS_6SXElemEEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef 0.000000e+00)
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE7densifyERKS2_S4_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixINS_6SXElemEE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #30
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #31
  br label %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixINS_6SXElemEEC2Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6casadi6MatrixINS_6SXElemEEC5Ed) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %i.a, i64 noundef 1, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

declare void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixINS_6SXElemEEC2ERKSt6vectorIS3_IdSaIdEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6casadi6MatrixINS_6SXElemEEC5ERKSt6vectorIS3_IdSaIdEESaIS5_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.std::vector.7", align 8    ; 5 uses
  %19 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %20 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6casadi8SparsityC1Ex(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !66     ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = sdiv i64 %i.k, 24                        ; 3 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.m = icmp eq ptr %i.h, %i.g
  br i1 %i.m, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !tbaa !67
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !67
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %smax = tail call i64 @llvm.smax.i64(i64 %i.l, i64 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ai, %.thread, %bb.b
  %i.v = phi i64 [ 1, %.thread ], [ %i.t, %bb.b ], [ %i.t, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %19, i64 noundef %i.l, i64 noundef %i.v)
          to label %bb.aj unwind label %bb.ao

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %.055138 = phi i64 [ %i.eg, %bb.ai ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.055138 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.s, %i.ac
  br i1 %i.ad, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.14)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.15)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.af = load ptr, ptr %1, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.055138 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  store i64 %i.an, ptr %i.c, align 8, !tbaa !47
  invoke void @_ZN6casadi3strImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.16)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !73
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #28
          to label %bb.az unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread: ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.t:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.u:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.v:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.w:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.x:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.y:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.z:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.aa:                                            ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ab:                                            ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ac:                                            ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ad:                                            ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.ae:                                            ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.af:                                            ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.s, %bb.r
  %.020 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !35
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn59 = phi { ptr, i32 } [ %i.bb, %bb.af ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bc, %bb.ag ] ; 2 uses
  %.1 = phi i1 [ true, %bb.af ], [ %.020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.020, %bb.ag ] ; 2 uses
  %i.bi = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
end_hunk_0
begin_hunk_1_@_ZN6casadi6MatrixINS_6SXElemEEC2ERKSt6vectorIS3_IdSaIdEESaIS5_EE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !35
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.ab
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.ab ], [ %.pn59.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn59.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.ab ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %i.cc = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !35
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.aa
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.aa ], [ %.pn59.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn59.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %.6 = phi i1 [ true, %bb.aa ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.ch = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !35
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.z
  %.pn59.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.z ], [ %.pn59.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn59.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %.7 = phi i1 [ true, %bb.z ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %i.cm = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.y
  %.pn59.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.y ], [ %.pn59.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn59.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.y ], [ %.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %i.cr = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !35
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.x
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.x ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.x ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.cw = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !35
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.w
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.w ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 2 uses
  %.10 = phi i1 [ true, %bb.w ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 2 uses
  %i.db = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !35
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.v
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.v ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %.11 = phi i1 [ true, %bb.v ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %i.dg = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !35
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.u
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %.12 = phi i1 [ true, %bb.u ], [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.dl = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !35
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.t
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 4 uses
  %.13 = phi i1 [ true, %bb.t ], [ %.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 2 uses
  %i.dq = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !35
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.dv = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread: ; preds = %bb.d
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.ef) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.13, label %bb.ah, label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.13, label %bb.ah, label %bb.ax

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn123.ph = phi { ptr, i32 } [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn123 = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn123.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ae) #30
  br label %bb.ax

bb.ai:                                            ; preds = %.lr.ph
  %i.eg = add nuw nsw i64 %.055138, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

bb.aj:                                            ; preds = %._crit_edge
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.ap ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.aj
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #27
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !67
  %i.el = load i64, ptr %i.b, align 8, !tbaa !67
  %i.em = mul nsw i64 %i.el, %i.ek                ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !12 ; 3 uses
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3                 ; 3 uses
  %i.eu = icmp ugt i64 %i.em, %i.et
  br i1 %i.eu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.ev = sub nuw i64 %i.em, %i.et
  invoke void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ev)
          to label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit unwind label %bb.ar

bb.am:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.ew = icmp ult i64 %i.em, %i.et
  br i1 %i.ew, label %bb.an, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.em ; 3 uses
  %.not.i.i = icmp eq ptr %i.eo, %i.ex
  br i1 %.not.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i ], [ %i.ex, %bb.an ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ey, %i.eo
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ex, ptr %i.en, align 8, !tbaa !12
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !67  ; 2 uses
  %i.fa = icmp sgt i64 %i.ez, 0
  br i1 %i.fa, label %.preheader.lr.ph, label %._crit_edge145

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  br i1 %i.fc, label %.preheader.preheader, label %._crit_edge145

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fd = load ptr, ptr %i.e, align 8, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge142
  %i.fe = phi i64 [ %i.fm, %._crit_edge142 ], [ %i.ez, %.preheader.preheader ]
  %i.ff = phi i64 [ %i.fn, %._crit_edge142 ], [ %i.fb, %.preheader.preheader ] ; 2 uses
  %.019144 = phi i64 [ %i.fo, %._crit_edge142 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.0120.0143 = phi ptr [ %.sroa.0120.1.lcssa, %._crit_edge142 ], [ %i.fd, %.preheader.preheader ] ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph141, label %._crit_edge142

._crit_edge145:                                   ; preds = %._crit_edge142, %.preheader.lr.ph, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.ao:                                            ; preds = %._crit_edge
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit118

bb.ap:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit118 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #27
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit118: ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.ao ], [ %i.fi, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.ax

bb.ar:                                            ; preds = %bb.al
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

._crit_edge142.loopexit:                          ; preds = %bb.at
  %.pre = load i64, ptr %i.b, align 8, !tbaa !67
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %.preheader
  %i.fm = phi i64 [ %i.fe, %.preheader ], [ %.pre, %._crit_edge142.loopexit ] ; 2 uses
  %i.fn = phi i64 [ %i.ff, %.preheader ], [ %i.fy, %._crit_edge142.loopexit ]
  %.sroa.0120.1.lcssa = phi ptr [ %.sroa.0120.0143, %.preheader ], [ %i.fw, %._crit_edge142.loopexit ]
  %i.fo = add nuw nsw i64 %.019144, 1             ; 2 uses
  %i.fp = icmp slt i64 %i.fo, %i.fm
  br i1 %i.fp, label %.preheader, label %._crit_edge145, !llvm.loop !77

.lr.ph141:                                        ; preds = %.preheader, %bb.at
  %.0140 = phi i64 [ %i.fx, %bb.at ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0120.1139 = phi ptr [ %i.fw, %bb.at ], [ %.sroa.0120.0143, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.fq = load ptr, ptr %1, align 8, !tbaa !66
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %.0140
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.019144
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !79
  invoke void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %20, double noundef %i.fu)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.lr.ph141
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0120.1139, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.at unwind label %bb.av     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0120.1139, i64 8 ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.fx = add nuw nsw i64 %.0140, 1               ; 2 uses
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.fz = icmp slt i64 %i.fx, %i.fy
  br i1 %i.fz, label %.lr.ph141, label %._crit_edge142.loopexit, !llvm.loop !81

bb.au:                                            ; preds = %.lr.ph141
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn57 = phi { ptr, i32 } [ %i.gb, %bb.av ], [ %i.ga, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.ah, %bb.aw, %bb.ar, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit118
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit118 ], [ %.pn57, %bb.aw ], [ %i.fl, %bb.ar ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn123, %bb.ah ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #30
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit119 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #27
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit119: ; preds = %bb.ax
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.az:                                            ; preds = %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !67
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZNSolsEx.exit unwind label %bb.e ; 0 uses

_ZNSolsEx.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
end_hunk_1
begin_hunk_2_@_ZN6casadi16einstein_processINS_6MatrixINS_6SXElemEEEEExRKT_S6_S6_RKSt6vectorIxSaIxEESB_SB_SB_SB_SB_RS9_SC_SC_SC_:bb.a
bb.jh:                                            ; preds = %bb.hf, %bb.gj, %bb.fn, %bb.es, %bb.eb, %bb.dk, %bb.ct, %bb.cc, %bb.bl, %bb.au, %bb.ac, %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalINS_6SXElemEEEvxRKSt6vectorIxSaIxEES6_S6_S6_PKT_S9_PS7_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %9 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !112   ; 5 uses
  %.pre213.a = load ptr, ptr %3, align 8, !tbaa !112 ; 5 uses
  %.pre214 = load ptr, ptr %4, align 8, !tbaa !112 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre213.a, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre214, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre213.a, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre214, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre213.a, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre214, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !67
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ]
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ]
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.pre213.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.pre214, i64 8
  %i.an = load i64, ptr %.pre, align 8, !tbaa !67
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %.pre213.a, align 8, !tbaa !67
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %.pre214, align 8, !tbaa !67
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 2 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %i.g, 3
  %i.ay = icmp slt i64 %.0137, 1
  %i.az = icmp slt i64 %.0135147163, 1
  %i.ba = icmp slt i64 %.0136164, 1
  %or.cond.not226 = or i1 %i.ay, %i.ba
  %brmerge = or i1 %or.cond.not226, %i.az
  br i1 %brmerge, label %.loopexit, label %.preheader171.us.us.us.preheader

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph
  %i.bb = add nsw i64 %i.g, -4
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.cg, %._crit_edge196.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 2 uses
  br i1 %i.ax, label %.lr.ph.us.us.us, label %.preheader169.us.us.us.preheader

.lr.ph.us.us.us:                                  ; preds = %.preheader171.us.us.us, %.lr.ph.us.us.us
  %.0120176.us.us.us = phi i64 [ %i.bs, %.lr.ph.us.us.us ], [ 0, %.preheader171.us.us.us ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %i.br, %.lr.ph.us.us.us ], [ %.0125198.us.us.us, %.preheader171.us.us.us ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.bq, %.lr.ph.us.us.us ], [ %i.as, %.preheader171.us.us.us ]
  %.0123173.us.us.us = phi ptr [ %i.bm, %.lr.ph.us.us.us ], [ %i.aq, %.preheader171.us.us.us ]
  %.0124172.us.us.us = phi ptr [ %i.bi, %.lr.ph.us.us.us ], [ %i.ao, %.preheader171.us.us.us ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !67 ; 2 uses
  %i.be = srem i64 %.0121175.us.us.us, %i.bd      ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !67
  %i.bh = mul nsw i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !67
  %i.bl = mul nsw i64 %i.bk, %i.be
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !67
  %i.bp = mul nsw i64 %i.bo, %i.be
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bp ; 2 uses
  %i.br = sdiv i64 %.0121175.us.us.us, %i.bd
  %i.bs = add nuw nsw i64 %.0120176.us.us.us, 1
  %exitcond.not = icmp eq i64 %.0120176.us.us.us, %i.bb
  br i1 %exitcond.not, label %.preheader169.us.us.us.preheader, label %.lr.ph.us.us.us, !llvm.loop !653

.preheader169.us.us.us.preheader:                 ; preds = %.lr.ph.us.us.us, %.preheader171.us.us.us
  %.0117193.us.us.us.ph = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.bq, %.lr.ph.us.us.us ]
  %.0118191.us.us.us.ph = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.bm, %.lr.ph.us.us.us ]
  %.0119189.us.us.us.ph = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.bi, %.lr.ph.us.us.us ]
  br label %.preheader169.us.us.us

bb.f:                                             ; preds = %.preheader.us.us.us, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us
  %.0182.us.us.us = phi i64 [ 0, %.preheader.us.us.us ], [ %i.bx, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ]
  %.0109181.us.us.us = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.bw, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.bv, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.bu, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %9, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %.0111179.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %.0110180.us.us.us)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %8, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %.0109181.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc.i.us.us.us unwind label %.split.us.split.us.split.us

.noexc.i.us.us.us:                                ; preds = %bb.f
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0109181.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us unwind label %.split200.us.split.us.split.us ; 0 uses

_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us: ; preds = %.noexc.i.us.us.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162
  %i.bv = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160
  %i.bx = add nuw nsw i64 %.0182.us.us.us, 1      ; 2 uses
  %exitcond209.not = icmp eq i64 %i.bx, %.0135147163
  br i1 %exitcond209.not, label %._crit_edge.us.us.us, label %bb.f, !llvm.loop !654

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.cb, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.ca, %._crit_edge.us.us.us ] ; 2 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.bz, %._crit_edge.us.us.us ] ; 2 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.by, %._crit_edge.us.us.us ] ; 2 uses
  br label %bb.f

.preheader169.us.us.us:                           ; preds = %.preheader169.us.us.us.preheader, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.cf, %._crit_edge188.us.us.us ], [ 0, %.preheader169.us.us.us.preheader ]
  %.0117193.us.us.us = phi ptr [ %i.ce, %._crit_edge188.us.us.us ], [ %.0117193.us.us.us.ph, %.preheader169.us.us.us.preheader ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.cd, %._crit_edge188.us.us.us ], [ %.0118191.us.us.us.ph, %.preheader169.us.us.us.preheader ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.cc, %._crit_edge188.us.us.us ], [ %.0119189.us.us.us.ph, %.preheader169.us.us.us.preheader ] ; 2 uses
  br label %.preheader.us.us.us

._crit_edge.us.us.us:                             ; preds = %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us
  %i.by = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.cb = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond210.not = icmp eq i64 %i.cb, %.0136164
  br i1 %exitcond210.not, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !655

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.cc = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.cf = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond211.not = icmp eq i64 %i.cf, %.0137
  br i1 %exitcond211.not, label %._crit_edge196.us.us.us, label %.preheader169.us.us.us, !llvm.loop !656

._crit_edge196.us.us.us:                          ; preds = %._crit_edge188.us.us.us
  %i.cg = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %10 = icmp slt i64 %i.cg, %i.av
  br i1 %10, label %.preheader171.us.us.us, label %.loopexit, !llvm.loop !657

.split.us.split.us.split.us:                      ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.split200.us.split.us.split.us:                   ; preds = %.noexc.i.us.us.us
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body.i

.body.i:                                          ; preds = %.split.us.split.us.split.us, %.split200.us.split.us.split.us
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ch, %.split.us.split.us.split.us ], [ %i.ci, %.split200.us.split.us.split.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  resume { ptr, i32 } %eh.lpad-body.i

.loopexit:                                        ; preds = %._crit_edge196.us.us.us, %.preheader171.lr.ph, %.thread151, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixINS_6SXElemEE8einsteinERKS2_S4_RKSt6vectorIxSaIxEES9_S9_S9_S9_S9_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.casadi::Matrix", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !103    ; 11 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.g, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.08.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.an, %.lr.ph.i ] ; 9 uses
  %.067.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.am, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67
  %i.k = mul nsw i64 %i.j, %.067.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67
  %i.o = mul nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  %i.s = mul nsw i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67
  %i.w = mul nsw i64 %i.v, %i.s
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %i.aa = mul nsw i64 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.ae = mul nsw i64 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67
  %i.ai = mul nsw i64 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.am = mul nsw i64 %i.al, %i.ai                ; 3 uses
  %i.an = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !597

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.am, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ar, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.067.i.epil = phi i64 [ %i.aq, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i.epil
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !67
  %i.aq = mul nsw i64 %i.ap, %.067.i.epil         ; 2 uses
  %i.ar = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil, !llvm.loop !658

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit: ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.06.lcssa.i = phi i64 [ 1, %bb.a ], [ %i.am, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ]
  call void @_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %9, i64 noundef %.06.lcssa.i, i64 noundef 1)
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE8einsteinERKS2_S4_S4_RKSt6vectorIxSaIxEES9_S9_S9_S9_S9_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.at, %bb.b ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.as, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.ax = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.at, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #27
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

bb.e:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosExx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, i64 noundef %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !659
  invoke void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKNS_8SparsityERKS1_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !659
  br label %.body

bb.c:                                             ; preds = %.noexc
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !659
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.d
end_hunk_2
begin_hunk_3_@_ZN6casadi6MatrixINS_6SXElemEE3cseERKSt6vectorIS2_SaIS2_EE:._crit_edge.i.i
  %i.de = phi ptr [ %i.cf, %.lr.ph ], [ %i.dy, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ]
  %.0173664 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30, !noalias !1387
  invoke void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %53, double noundef 0.000000e+00)
          to label %.noexc284 unwind label %bb.v

.noexc284:                                        ; preds = %bb.o
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.0173664
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKNS_8SparsityERKS1_b(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %53, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.noexc284
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30, !noalias !1387
  br label %.body285

bb.q:                                             ; preds = %.noexc284
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30, !noalias !1387
  %i.di = load ptr, ptr %i.cg, align 8, !tbaa !274 ; 3 uses
  %i.dj = load ptr, ptr %i.ch, align 8, !tbaa !276
  %.not.i.i287 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i287, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull align 8 dereferenceable(40) %61)
          to label %.noexc288 unwind label %bb.w

.noexc288:                                        ; preds = %bb.r
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !274
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store ptr %i.dl, ptr %i.cg, align 8, !tbaa !274
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.di, ptr noundef nonnull align 8 dereferenceable(40) %61)
          to label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit unwind label %bb.w

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit: ; preds = %.noexc288, %bb.s
  %i.dm = load ptr, ptr %i.ci, align 8, !tbaa !15 ; 3 uses
  %i.dn = load ptr, ptr %i.cj, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dm, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ci, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit
  %i.dp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dm, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dq = load ptr, ptr %i.ck, align 8, !tbaa !17
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.t, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  %i.dw = add nuw nsw i64 %.0173664, 1            ; 2 uses
  %i.dx = load ptr, ptr %i.cd, align 8, !tbaa !274
  %i.dy = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 40
  %i.ed = icmp ult i64 %i.dw, %i.ec
  br i1 %i.ed, label %bb.o, label %._crit_edge, !llvm.loop !1390

bb.v:                                             ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body285

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %61) #30
  br label %.body285

.body285:                                         ; preds = %bb.v, %bb.p, %bb.w
  %.pn273 = phi { ptr, i32 } [ %i.ef, %bb.w ], [ %i.ee, %bb.v ], [ %i.dh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br label %bb.iy

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  %i.eg = invoke noundef i64 @_ZNK6casadi8Function6sz_argEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.y unwind label %bb.ag      ; 5 uses

bb.y:                                             ; preds = %bb.x
  %i.eh = icmp ugt i64 %i.eg, 1152921504606846975
  br i1 %i.eh, label %bb.z, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
          to label %.noexc292 unwind label %bb.ah

.noexc292:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.y
  %.not.i.i.i.i291 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i291, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.ei = shl nuw nsw i64 %i.eg, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #29
          to label %.noexc293 unwind label %bb.ah ; 5 uses

.noexc293:                                        ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  store ptr null, ptr %i.ej, align 8, !tbaa !18
  %i.el = add nsw i64 %i.eg, -1                   ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit, label %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc293
  %i.en = getelementptr i8, ptr %i.ej, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.el, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.en, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc293, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.sroa.12604.0 = phi ptr [ %i.ek, %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ek, %.noexc293 ], [ null, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.sroa.0598.0 = phi ptr [ %i.ej, %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ej, %.noexc293 ], [ null, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 8 uses
  %i.eo = invoke noundef i64 @_ZNK6casadi8Function6sz_resEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.ab unwind label %bb.ai     ; 5 uses

bb.ab:                                            ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit
  %i.ep = icmp ugt i64 %i.eo, 1152921504606846975
  br i1 %i.ep, label %bb.ac, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
          to label %.noexc297 unwind label %bb.aj

.noexc297:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.ab
  %.not.i.i.i.i294 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i.i294, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.eq = shl nuw nsw i64 %i.eo, 3
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #29
          to label %.noexc298 unwind label %bb.aj ; 5 uses

.noexc298:                                        ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eo ; 2 uses
  store ptr null, ptr %i.er, align 8, !tbaa !18
  %i.et = add nsw i64 %i.eo, -1                   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc298
  %i.ev = getelementptr i8, ptr %i.er, i64 8
  %.idx.i.i.i.i.i.i.i295 = shl nuw nsw i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ev, i8 0, i64 %.idx.i.i.i.i.i.i.i295, i1 false), !tbaa !18
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc298, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.12.0 = phi ptr [ %i.es, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.es, %.noexc298 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sroa.0591.0 = phi ptr [ %i.er, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.er, %.noexc298 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 11 uses
  %i.ew = load ptr, ptr %i.cd, align 8, !tbaa !274 ; 2 uses
  %i.ex = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  %.not685 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not685, label %._crit_edge667, label %.lr.ph666

.lr.ph666:                                        ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv i64 %i.fa, 40                      ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !274
  %i.fe = load ptr, ptr %0, align 8, !tbaa !277   ; 8 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 40                ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.fb, i64 1) ; 2 uses
  %i.fj = add i64 %umax, -1
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.fj) ; 2 uses
  %i.fl = add nuw i64 %i.fk, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fk, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph666
  %.0172665.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph666 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph666
  %90 = call i64 @llvm.usub.sat.i64(i64 %i.fb, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %i.fi, i64 %90) ; 2 uses
  %i.fm = shl i64 %umin, 3
  %i.fn = getelementptr i8, ptr %.sroa.0591.0, i64 %i.fm
  %scevgep = getelementptr i8, ptr %i.fn, i64 8
  %scevgep905 = getelementptr i8, ptr %i.fe, i64 16
  %i.fo = mul i64 %umin, 40
  %i.fp = getelementptr i8, ptr %i.fe, i64 %i.fo
  %scevgep906 = getelementptr i8, ptr %i.fp, i64 32
  %bound0 = icmp ult ptr %.sroa.0591.0, %scevgep906
  %bound1 = icmp ult ptr %scevgep905, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fq = and i64 %i.fl, 3                        ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  %i.fs = select i1 %i.fr, i64 4, i64 %i.fq
  %n.vec = sub i64 %i.fl, %i.fs                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 136
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !18, !alias.scope !1391
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !18, !alias.scope !1391
  %i.gd = insertelement <2 x ptr> poison, ptr %i.gb, i64 0
  %i.ge = insertelement <2 x ptr> %i.gd, ptr %i.gc, i64 1 ; 2 uses
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !18, !alias.scope !1391
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !18, !alias.scope !1391
  %i.gh = insertelement <2 x ptr> poison, ptr %i.gf, i64 0
  %i.gi = insertelement <2 x ptr> %i.gh, ptr %i.gg, i64 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 144
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !18, !alias.scope !1391
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !18, !alias.scope !1391
  %i.gp = insertelement <2 x ptr> poison, ptr %i.gn, i64 0
  %i.gq = insertelement <2 x ptr> %i.gp, ptr %i.go, i64 1
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !18, !alias.scope !1391
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !18, !alias.scope !1391
  %i.gt = insertelement <2 x ptr> poison, ptr %i.gr, i64 0
  %i.gu = insertelement <2 x ptr> %i.gt, ptr %i.gs, i64 1
  %i.gv = icmp eq <2 x ptr> %i.ge, %i.gq
  %i.gw = icmp eq <2 x ptr> %i.gi, %i.gu
  %i.gx = select <2 x i1> %i.gv, <2 x ptr> splat (ptr null), <2 x ptr> %i.ge
  %i.gy = select <2 x i1> %i.gw, <2 x ptr> splat (ptr null), <2 x ptr> %i.gi
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0591.0, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x ptr> %i.gx, ptr %i.gz, align 8, !tbaa !18, !alias.scope !1394, !noalias !1391
  store <2 x ptr> %i.gy, ptr %i.ha, align 8, !tbaa !18, !alias.scope !1394, !noalias !1391
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1396

._crit_edge667:                                   ; preds = %bb.al, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #30
  %i.hc = getelementptr inbounds nuw i8, ptr %64, i64 48 ; 2 uses
  store ptr %i.hc, ptr %64, align 8, !tbaa !1397
  %i.hd = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  store i64 1, ptr %i.hd, align 8, !tbaa !1399
  %i.he = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %64, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hf, align 8, !tbaa !1400
  %i.hg = getelementptr inbounds nuw i8, ptr %64, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(496) %65)
          to label %.noexc299 unwind label %bb.au

.noexc299:                                        ; preds = %._crit_edge667
  %i.hh = getelementptr inbounds nuw i8, ptr %65, i64 392 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i8 0, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %65, i64 416
  %i.hj = getelementptr inbounds nuw i8, ptr %65, i64 16
  invoke void @_ZN6casadi17SerializingStreamC1ERSo(ptr noundef nonnull align 8 dereferenceable(73) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
          to label %_ZN6casadi21IncrementalSerializerC2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc299
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hh) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(496) %65) #30
  br label %.body300

bb.af:                                            ; preds = %._crit_edge
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %bb.ix

bb.ag:                                            ; preds = %bb.x
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit572

bb.ah:                                            ; preds = %bb.aa, %bb.z
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit572

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit570

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit570

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.al
  %.0172665 = phi i64 [ %i.hx, %bb.al ], [ %.0172665.ph, %scalar.ph.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %.0172665, %i.fi
  br i1 %exitcond.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %scalar.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.482, i64 noundef %i.fi, i64 noundef %i.fi) #28
          to label %.noexc303 unwind label %bb.am

.noexc303:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %scalar.ph
  %i.hq = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %.0172665 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !18 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !18
  %i.hv = icmp eq ptr %i.hs, %i.hu
  %spec.select.i = select i1 %i.hv, ptr null, ptr %i.hs
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0591.0, i64 %.0172665
  store ptr %spec.select.i, ptr %i.hw, align 8, !tbaa !18
  %i.hx = add nuw i64 %.0172665, 1                ; 2 uses
  %exitcond713.not = icmp eq i64 %i.hx, %umax
  br i1 %exitcond713.not, label %._crit_edge667, label %scalar.ph, !llvm.loop !1401

bb.am:                                            ; preds = %bb.ak
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

_ZN6casadi21IncrementalSerializerC2Ev.exit:       ; preds = %.noexc299
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cc, i64 1440
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cc, i64 1392
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #30
  %i.id = getelementptr inbounds nuw i8, ptr %66, i64 48 ; 2 uses
  store ptr %i.id, ptr %66, align 8, !tbaa !1402
  %i.ie = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 3 uses
  store i64 1, ptr %i.ie, align 8, !tbaa !1404
  %i.if = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %66, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !1400
  %i.ih = getelementptr inbounds nuw i8, ptr %66, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cc, i64 1360
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !1237 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cc, i64 1368
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1237 ; 2 uses
  %.not628678 = icmp eq ptr %i.ij, %i.il
  br i1 %.not628678, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph682

.lr.ph682:                                        ; preds = %_ZN6casadi21IncrementalSerializerC2Ev.exit
  %i.im = getelementptr inbounds nuw i8, ptr %i.cc, i64 1584
  %i.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 1592
  %i.io = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %74, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %74, i64 40
  %i.it = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 4 uses
  br label %bb.av

._crit_edge683:                                   ; preds = %bb.is
  %.pre715 = load ptr, ptr %i.if, align 8, !tbaa !1405 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre715, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %._crit_edge683, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %.pre715, %._crit_edge683 ] ; 5 uses
  %i.jf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1013 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jh) #30
  %i.ji = load ptr, ptr %i.jg, align 8, !tbaa !30 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i304
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !35
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #31
  %.not.i.i.i.i305 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i305, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i304, !llvm.loop !1406

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZN6casadi21IncrementalSerializerC2Ev.exit, %._crit_edge683
  %i.jn = load ptr, ptr %66, align 8, !tbaa !1402
  %i.jo = load i64, ptr %i.ie, align 8, !tbaa !1404
  %i.jp = shl i64 %i.jo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jn, i8 0, i64 %i.jp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  %i.jq = load ptr, ptr %66, align 8, !tbaa !1402 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.id
  br i1 %i.jr, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.js = load i64, ptr %i.ie, align 8, !tbaa !1404
  %i.jt = shl i64 %i.js, 3
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  call void @_ZN6casadi21IncrementalSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(496) dereferenceable(496) %65) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #30
  %i.ju = load ptr, ptr %i.he, align 8, !tbaa !1407 ; 2 uses
  %.not5.i.i.i.i306 = icmp eq ptr %i.ju, null
  br i1 %.not5.i.i.i.i306, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6SXElemEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i307

.lr.ph.i.i.i.i307:                                ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i308 = phi ptr [ %i.jv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.ju, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 5 uses
  %i.jv = load ptr, ptr %.06.i.i.i.i308, align 8, !tbaa !1013 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i308, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i308, i64 40
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jx) #30
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !30 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i308, i64 24 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i309: ; preds = %.lr.ph.i.i.i.i307
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !35
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i309
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i308, i64 noundef 56) #31
  %.not.i.i.i.i310 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i310, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6SXElemEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i307, !llvm.loop !1408

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6SXElemEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.kd = load ptr, ptr %64, align 8, !tbaa !1397
  %i.ke = load i64, ptr %i.hd, align 8, !tbaa !1399
  %i.kf = shl i64 %i.ke, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kd, i8 0, i64 %i.kf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  %i.kg = load ptr, ptr %64, align 8, !tbaa !1397 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.hc
  br i1 %i.kh, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6SXElemEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ki = load i64, ptr %i.hd, align 8, !tbaa !1399
  %i.kj = shl i64 %i.ki, 3
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6SXElemEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  %.not.i.i.i312 = icmp eq ptr %.sroa.0591.0, null
  br i1 %.not.i.i.i312, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.kk = ptrtoint ptr %.sroa.12.0 to i64
  %i.kl = ptrtoint ptr %.sroa.0591.0 to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0591.0, i64 noundef %i.km) #31
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit:  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6SXElemESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %bb.ap
  %.not.i.i.i313 = icmp eq ptr %.sroa.0598.0, null
  br i1 %.not.i.i.i313, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit
  %i.kn = ptrtoint ptr %.sroa.12604.0 to i64
  %i.ko = ptrtoint ptr %.sroa.0598.0 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0598.0, i64 noundef %i.kp) #31
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit, %bb.aq
  %i.kq = load ptr, ptr %62, align 8, !tbaa !15   ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i314 = icmp eq ptr %i.kq, %i.ks
  br i1 %.not4.i.i.i314, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i315

.lr.ph.i.i.i315:                                  ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit, %.lr.ph.i.i.i315
  %.05.i.i.i316 = phi ptr [ %i.kt, %.lr.ph.i.i.i315 ], [ %i.kq, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i316) #30
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i316, i64 8 ; 2 uses
  %.not.i.i.i317 = icmp eq ptr %i.kt, %i.ks
  br i1 %.not.i.i.i317, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i315, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i315
  %.pr.i318 = load ptr, ptr %62, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit
  %i.ku = phi ptr [ %.pr.i318, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.kq, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i319 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i1.i319, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i
  %i.kv = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !17
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #30
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6casadi6SXElemESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_:bb.a
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29
  br label %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN6casadi6SXElemEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN6casadi6SXElemEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 6 uses
  %.not14.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not14.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6casadi6SXElemEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN6casadi6SXElemEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN6casadi6SXElemEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE11_M_allocateEm.exit ] ; 4 uses
  %.01215.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN6casadi6SXElemEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi6SXElemEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN6casadi6SXElemEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6casadi6SXElemEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1684

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #30 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %.016.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #30
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  invoke void @__cxa_rethrow() #28
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemEEvT_S3_.exit.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIPKN6casadi6SXElemEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6casadi6SXElemEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.g
  %i.o = extractvalue { ptr, i32 } %i.l, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #30 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.q = shl i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.q) #31
  br label %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.j, %.body
  invoke void @__cxa_rethrow() #28
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.r

bb.m:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

declare void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6casadi17SerializingStream4packERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73), i8 noundef signext) local_unnamed_addr #1

declare void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef) local_unnamed_addr #1

declare void @_ZN6casadi17SerializingStream4packERKNS_6SXElemE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6casadi19DeserializingStream6unpackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6casadi19DeserializingStream6unpackERNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi19DeserializingStream6unpackINS_6SXElemEEEvRSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6casadi19DeserializingStream17assert_decorationEc(ptr noundef nonnull align 8 dereferenceable(42) %0, i8 noundef signext 86)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @_ZN6casadi19DeserializingStream6unpackERx(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.b, %i.i
  call void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.b, %i.i
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !12
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.m, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %.not9 = icmp eq ptr %i.p, %i.o
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit, %.lr.ph
  %.sroa.06.010 = phi ptr [ %i.q, %.lr.ph ], [ %i.p, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE6resizeEm.exit ] ; 2 uses
  call void @_ZN6casadi19DeserializingStream6unpackERNS_6SXElemE(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.06.010)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN6casadi19DeserializingStream17assert_decorationEc(ptr noundef nonnull align 8 dereferenceable(42), i8 noundef signext) local_unnamed_addr #1

declare void @_ZN6casadi19DeserializingStream6unpackERx(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6casadi19DeserializingStream6unpackERNS_6SXElemE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !10, i64 0}
!10 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSN6casadi6SXElemE", !11, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!13, !14, i64 16}
!18 = !{!14, !14, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!29 = distinct !{!29, !"_ZN6casadi6strvecB5cxx11Ev"}
!30 = !{!31, !33, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !34, i64 8, !6, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !11, i64 0}
!34 = !{!"long", !6, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!38 = distinct !{!38, !"_ZN6casadi6strvecB5cxx11Ev"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!41 = distinct !{!41, !"_ZN6casadi6strvecB5cxx11Ev"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!44 = distinct !{!44, !"_ZN6casadi6strvecB5cxx11Ev"}
!45 = !{!31, !34, i64 8}
!46 = !{!32, !33, i64 0}
!47 = !{!34, !34, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!52 = distinct !{!52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!53 = !{!54, !51}
!54 = distinct !{!54, !55, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!55 = distinct !{!55, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !7, i64 0}
!58 = !{!59, !49, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!60 = !{!59, !49, i64 8}
!61 = distinct !{!61, !20}
!62 = !{!59, !49, i64 16}
!63 = !{!64, !65, i64 8}
!64 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !11, i64 0}
!66 = !{!64, !65, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"long long", !6, i64 0}
!69 = !{!70, !71, i64 8}
!70 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 double", !11, i64 0}
!72 = !{!70, !71, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!75 = distinct !{!75, !"_ZN6casadi6strvecB5cxx11Ev"}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20, !78}
!78 = !{!"llvm.loop.unswitch.partial.disable"}
!79 = !{!80, !80, i64 0}
!80 = !{!"double", !6, i64 0}
!81 = distinct !{!81, !20}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!84 = distinct !{!84, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!87 = distinct !{!87, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!88 = !{!86, !83}
!89 = !{!90, !33, i64 40}
!90 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !91, i64 56}
!91 = !{!"_ZTSSt6locale", !92, i64 0}
!92 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!93 = !{!90, !33, i64 32}
!94 = !{!95, !34, i64 8}
!95 = !{!"_ZTSSi", !34, i64 8}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!98 = distinct !{!98, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = distinct !{!101, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!102 = !{!100, !97}
!103 = !{!104, !105, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!105 = !{!"p1 long long", !11, i64 0}
!106 = !{!104, !105, i64 16}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE: argument 0"}
!109 = distinct !{!109, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE"}
!110 = !{!104, !105, i64 8}
!111 = distinct !{!111, !20}
!112 = !{!105, !105, i64 0}
!113 = distinct !{!113, !20}
!114 = distinct !{!114, !20}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!117 = distinct !{!117, !"_ZN6casadi6strvecB5cxx11Ev"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE: argument 0"}
!120 = distinct !{!120, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!123 = distinct !{!123, !"_ZN6casadi6strvecB5cxx11Ev"}
!124 = distinct !{!124, !20}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!127 = distinct !{!127, !"_ZN6casadi6strvecB5cxx11Ev"}
!128 = !{!129, !68, i64 0}
!129 = !{!"_ZTSSt4pairIxxE", !68, i64 0, !68, i64 8}
!130 = !{!129, !68, i64 8}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!133 = distinct !{!133, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!136 = distinct !{!136, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!137 = !{!135, !132}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!140 = distinct !{!140, !"_ZN6casadi6strvecB5cxx11Ev"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE: argument 0"}
!143 = distinct !{!143, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE"}
!144 = distinct !{!144, !20}
!145 = distinct !{!145, !20}
!146 = distinct !{!146, !20}
!147 = distinct !{!147, !20}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!150 = distinct !{!150, !"_ZN6casadi6strvecB5cxx11Ev"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!153 = distinct !{!153, !"_ZN6casadi6strvecB5cxx11Ev"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE: argument 0"}
!156 = distinct !{!156, !"_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE"}
!157 = distinct !{!157, !20}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSNSt6vectorIN6casadi6SXElemESaIS1_EE16_Temporary_valueE", !160, i64 0, !6, i64 8}
!160 = !{!"p1 _ZTSSt6vectorIN6casadi6SXElemESaIS1_EE", !11, i64 0}
!161 = distinct !{!161, !20}
end_hunk_4
