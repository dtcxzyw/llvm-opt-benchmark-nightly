Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/umatrix?download=true
inline.NumInlined: 433
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv4UMatC2ENS_14UMatUsageFlagsE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #24
  unreachable
}

declare void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2EiiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  store i32 1124007936, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i32 %4, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false), !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %1, ptr %i.a, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.g, align 4, !tbaa !26
  call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat6createEiiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %1, ptr %i.a, align 4, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !26
  call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2EiiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  store i32 1124007936, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i32 %5, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false), !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %1, ptr %i.a, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.g, align 4, !tbaa !26
  call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !47
  store i64 17179869185, ptr %i.h, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.k = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKNS_7Scalar_IdEE(ptr noundef nonnull returned align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !47
  store i64 17179869185, ptr %i.a, align 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.d = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2ENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, i64 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  store i32 1124007936, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i32 %3, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false), !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.g, align 4, !tbaa !26
  call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2ENS_5Size_IiEEiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  store i32 1124007936, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i32 %4, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false), !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.g, align 4, !tbaa !26
  call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.i, align 8, !tbaa !47
  store i64 17179869185, ptr %i.h, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.k = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2EiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 1124007936, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i32 %4, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false), !tbaa !28
  tail call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !26
  %i.c = icmp eq i32 %1, 0
  %spec.select = select i1 %i.c, ptr %i.a, ptr %2 ; 5 uses
  %spec.select77 = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 5 uses
  %or.cond = icmp ult i32 %1, 33
  %i.d = icmp ne ptr %spec.select, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE, ptr noundef nonnull @.str.1, i32 noundef 609) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %9, align 8, !tbaa !30     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.l = and i32 %3, 4095                         ; 4 uses
  %i.m = icmp eq i32 %4, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.056 = select i1 %i.m, i32 %i.o, i32 %4        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 3 uses
  %.not = icmp ne ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %spec.select77, %i.s
  %or.cond80 = select i1 %.not, i1 %i.t, i1 false
  br i1 %or.cond80, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr %0, align 8, !tbaa !42
  %i.v = and i32 %i.u, 4095
  %i.w = icmp eq i32 %i.l, %i.v
  %i.x = icmp eq i32 %.056, %i.o
  %or.cond91 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond91, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !49
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %wide.trip.count = zext nneg i32 %narrow.i to i64
  %wide.trip.count99 = zext nneg i32 %spec.select77 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.j, label %_ZN2cv8MatShapeixEm.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 97) #23
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn73.pn.pn, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  %.not63 = icmp eq i32 %i.ai, %i.ak
  br i1 %.not63, label %bb.m, label %_ZN2cv8MatShapeixEm.exit._crit_edge

bb.m:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next, %wide.trip.count99
  br i1 %exitcond100.not, label %_ZN2cv8MatShapeixEm.exit._crit_edge.thread, label %bb.i, !llvm.loop !94

_ZN2cv8MatShapeixEm.exit._crit_edge:              ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = icmp eq i32 %spec.select77, %i.al
  br i1 %i.am, label %_ZN2cv8MatShapeixEm.exit._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %_ZN2cv8MatShapeixEm.exit._crit_edge, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 13 uses
  %i.ap = icmp eq ptr %spec.select, %i.ao
  br i1 %i.ap, label %.lr.ph97.preheader, label %.loopexit

.lr.ph97.preheader:                               ; preds = %bb.n
  %i.aq = shl nuw nsw i32 %spec.select77, 2
  %i.ar = zext nneg i32 %i.aq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %spec.select, i64 %i.ar, i1 false), !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph97.preheader, %bb.n
  %.158 = phi ptr [ %spec.select, %bb.n ], [ %i.b, %.lr.ph97.preheader ]
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN2cv4UMat7releaseEv.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.at = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 8
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.p, label %_ZN2cv4UMat7releaseEv.exit

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.av), !inline_history !51
  br label %_ZN2cv4UMat7releaseEv.exit

_ZN2cv4UMat7releaseEv.exit:                       ; preds = %.loopexit, %bb.o, %bb.p
  store ptr null, ptr %i.p, align 8, !tbaa !48
  call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.an)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !53
  store i32 0, ptr %i.r, align 4, !tbaa !54
  store i32 %.056, ptr %i.n, align 8, !tbaa !43
  %i.bd = or disjoint i32 %i.l, 1124007936
  store i32 %i.bd, ptr %0, align 8, !tbaa !42
  call void @_ZN2cv7setSizeERNS_4UMatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %spec.select77, ptr noundef nonnull %.158, ptr noundef null, i1 noundef zeroext true)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !55
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !54  ; 5 uses
  %i.bg = icmp slt i32 %i.bf, 3
  br i1 %i.bg, label %bb.q, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv4UMat7releaseEv.exit
  %i.bh = load i32, ptr %i.an, align 8, !tbaa !49
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.bh, i32 1)
  %i.bi = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bj = add nsw i32 %i.bf, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.bj
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.r

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.bi, 7                    ; 3 uses
  %i.bk = icmp ult i32 %i.bf, 8
  br i1 %i.bk, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.bi, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.q:                                             ; preds = %_ZN2cv4UMat7releaseEv.exit
  %i.bl = load i32, ptr %i.bb, align 8, !tbaa !52
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i32, ptr %i.bc, align 4, !tbaa !53
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, %i.bm
  br label %_ZNK2cv4UMat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.dc, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !26
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %.069.i, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !26
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !26
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !26
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !26
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !26
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !26
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !26
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cx, %i.db                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !0

bb.r:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 103) #23
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !25
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa:     ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv4UMat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.dc, %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod129)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.dm, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.epil
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !26
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul i64 %.069.i.epil, %i.dl             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv4UMat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !95

_ZNK2cv4UMat5totalEv.exit:                        ; preds = %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.q
  %.07.i = phi i64 [ %i.bp, %bb.q ], [ %i.dc, %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa ], [ %i.dm, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %.not64 = icmp eq i64 %.07.i, 0
  br i1 %.not64, label %_ZNK2cv4UMat5totalEv.exit._crit_edge, label %bb.u

_ZNK2cv4UMat5totalEv.exit._crit_edge:             ; preds = %_ZNK2cv4UMat5totalEv.exit
  %.pre = load i32, ptr %0, align 8, !tbaa !42
  br label %bb.ax

bb.u:                                             ; preds = %_ZNK2cv4UMat5totalEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !57 ; 2 uses
  %i.dp = call noundef ptr @_ZN2cv3Mat19getDefaultAllocatorEv() ; 2 uses
  %.not65 = icmp eq ptr %i.do, null
  br i1 %.not65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dq = call noundef ptr @_ZN2cv3Mat19getDefaultAllocatorEv()
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.045 = phi ptr [ %i.do, %bb.u ], [ %i.dp, %bb.v ] ; 3 uses
  %.0 = phi ptr [ %i.dp, %bb.u ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dr = load i32, ptr %i.r, align 4, !tbaa !54
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.dt = load i32, ptr %i.n, align 8, !tbaa !43
  %i.du = load ptr, ptr %.045, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %.045, i32 noundef %i.dr, ptr noundef nonnull %i.ao, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.ds, i32 noundef 50331648, i32 noundef %i.dt)
end_hunk_0
