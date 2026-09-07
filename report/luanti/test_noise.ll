Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_noise?download=true
inline.NumInlined: 475
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci:bb.a
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19TestFailedExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise22testNoise2dWithMaxSeedEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call nsz noundef float @_Z7noise2diii(i32 noundef 4096, i32 noundef 4096, i32 noundef 2147483647)
  %i.b = fadd nsz float %i.a, f0xBF735AEA
  %i.c = tail call nsz noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fpext nsz float %i.c to double
  %i.e = fcmp nsz ugt double %i.d, 1.000000e-05
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.12, i32 noundef 64)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise24testNoise2dWithFunPrimesEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call nsz noundef float @_Z7noise2diii(i32 noundef -3947, i32 noundef -2333, i32 noundef 7027)
  %i.b = fadd nsz float %i.a, 2.949070e-01
  %i.c = tail call nsz noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fpext nsz float %i.c to double
  %i.e = fcmp nsz ugt double %i.d, 1.000000e-05
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.12, i32 noundef 71)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise16testNoise2dPointEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.NoiseParams, align 16       ; 19 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <4 x float> <float 2.000000e+01, float 4.000000e+01, float 5.000000e+01, float 5.000000e+01>, ptr %1, align 16, !tbaa !24
  store float 5.000000e+01, ptr %i.a, align 16, !tbaa !24
  store i32 9, ptr %i.b, align 4, !tbaa !28
  store i16 5, ptr %i.c, align 8, !tbaa !29
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.d, align 4, !tbaa !24
  store i32 1, ptr %i.e, align 4, !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.r
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.r ] ; 11 uses
  %.01528 = phi i32 [ 0, %bb.a ], [ %i.cp, %bb.r ] ; 2 uses
  %i.f = uitofp nsz nneg i32 %.01528 to float     ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 10
  %i.g = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 0.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 8, !tbaa !24
  %i.j = fsub nsz float %i.g, %i.i
  %i.k = call nsz noundef float @llvm.fabs.f32(float %i.j)
  %i.l = fpext nsz float %i.k to double
  %i.m = fcmp nsz ugt double %i.l, 1.000000e-05
  br i1 %i.m, label %bb.c, label %bb.i

bb.b:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.preheader
  %i.n = call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.n, ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.12, i32 noundef 83)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.s unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %.pn23, %bb.g ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn22

bb.i:                                             ; preds = %.preheader
  %i.v = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 1.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !24
  %i.z = fsub nsz float %i.v, %i.y
  %i.aa = call nsz noundef float @llvm.fabs.f32(float %i.z)
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = fcmp nsz ugt double %i.ab, 1.000000e-05
  br i1 %i.ac, label %bb.c, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 2.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 8, !tbaa !24
  %i.ah = fsub nsz float %i.ad, %i.ag
  %i.ai = call nsz noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = fcmp nsz ugt double %i.aj, 1.000000e-05
  br i1 %i.ak, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 3.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !24
  %i.ap = fsub nsz float %i.al, %i.ao
  %i.aq = call nsz noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = fpext nsz float %i.aq to double
  %i.as = fcmp nsz ugt double %i.ar, 1.000000e-05
  br i1 %i.as, label %bb.c, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 4.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load float, ptr %i.av, align 8, !tbaa !24
  %i.ax = fsub nsz float %i.at, %i.aw
  %i.ay = call nsz noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = fpext nsz float %i.ay to double
  %i.ba = fcmp nsz ugt double %i.az, 1.000000e-05
  br i1 %i.ba, label %bb.c, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 5.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load float, ptr %i.bd, align 4, !tbaa !24
  %i.bf = fsub nsz float %i.bb, %i.be
  %i.bg = call nsz noundef float @llvm.fabs.f32(float %i.bf)
  %i.bh = fpext nsz float %i.bg to double
  %i.bi = fcmp nsz ugt double %i.bh, 1.000000e-05
  br i1 %i.bi, label %bb.c, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 6.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !24
  %i.bn = fsub nsz float %i.bj, %i.bm
  %i.bo = call nsz noundef float @llvm.fabs.f32(float %i.bn)
  %i.bp = fpext nsz float %i.bo to double
  %i.bq = fcmp nsz ugt double %i.bp, 1.000000e-05
  br i1 %i.bq, label %bb.c, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 7.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !24
  %i.bv = fsub nsz float %i.br, %i.bu
  %i.bw = call nsz noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fpext nsz float %i.bw to double
  %i.by = fcmp nsz ugt double %i.bx, 1.000000e-05
  br i1 %i.by, label %bb.c, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 8.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !24
  %i.cd = fsub nsz float %i.bz, %i.cc
  %i.ce = call nsz noundef float @llvm.fabs.f32(float %i.cd)
  %i.cf = fpext nsz float %i.ce to double
  %i.cg = fcmp nsz ugt double %i.cf, 1.000000e-05
  br i1 %i.cg, label %bb.c, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef nonnull %1, float noundef 9.000000e+00, float noundef %i.f, i32 noundef 1337)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !24
  %i.cl = fsub nsz float %i.ch, %i.ck
  %i.cm = call nsz noundef float @llvm.fabs.f32(float %i.cl)
  %i.cn = fpext nsz float %i.cm to double
  %i.co = fcmp nsz ugt double %i.cn, 1.000000e-05
  br i1 %i.co, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add nuw nsw i32 %.01528, 1              ; 2 uses
  %.not = icmp eq i32 %i.cp, 10
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !46

bb.s:                                             ; preds = %bb.e
  unreachable
}

declare noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise15testNoise2dBulkEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.NoiseParams, align 16       ; 10 uses
  %2 = alloca %class.Noise, align 8               ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <4 x float> <float 2.000000e+01, float 4.000000e+01, float 5.000000e+01, float 5.000000e+01>, ptr %1, align 16, !tbaa !24
  store float 5.000000e+01, ptr %i.a, align 16, !tbaa !24
  store i32 9, ptr %i.b, align 4, !tbaa !28
  store i16 5, ptr %i.c, align 8, !tbaa !29
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.d, align 4, !tbaa !24
  store i32 1, ptr %i.e, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %1, i32 noundef 1337, i32 noundef 10, i32 noundef 10, i32 noundef 1)
  %i.f = invoke noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %2, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null)
          to label %.preheader unwind label %bb.d ; 2 uses

.preheader.1:                                     ; preds = %.preheader
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.h = load float, ptr %i.g, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv.next
  %i.j = load float, ptr %i.i, align 4, !tbaa !24
  %i.k = fsub nsz float %i.h, %i.j
  %i.l = call nsz noundef float @llvm.fabs.f32(float %i.k)
  %i.m = fpext nsz float %i.l to double
  %i.n = fcmp nsz ugt double %i.m, 1.000000e-05
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, 100
  br i1 %.not.1, label %bb.c, label %.preheader, !llvm.loop !47

bb.c:                                             ; preds = %bb.b
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_2d_resultsE, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 8, !tbaa !24
  %i.t = fsub nsz float %i.q, %i.s
  %i.u = call nsz noundef float @llvm.fabs.f32(float %i.t)
  %i.v = fpext nsz float %i.u to double
  %i.w = fcmp nsz ugt double %i.v, 1.000000e-05
  br i1 %i.w, label %bb.e, label %.preheader.1

bb.e:                                             ; preds = %.preheader.1, %.preheader
  %i.x = call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.x, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.12, i32 noundef 96)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.k unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.x) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn18, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise31testNoise3dAtOriginWithZeroSeedEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call nsz noundef float @_Z7noise2diii(i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.b = fadd nsz float %i.a, 2.817910e-01
  %i.c = tail call nsz noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fpext nsz float %i.c to double
  %i.e = fcmp nsz ugt double %i.d, 1.000000e-05
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.12, i32 noundef 104)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise22testNoise3dWithMaxSeedEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call nsz noundef float @_Z7noise3diiii(i32 noundef 4096, i32 noundef 4096, i32 noundef 4096, i32 noundef 2147483647)
  %i.b = fadd nsz float %i.a, f0x3F467653
  %i.c = tail call nsz noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fpext nsz float %i.c to double
  %i.e = fcmp nsz ugt double %i.d, 1.000000e-05
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.12, i32 noundef 111)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef float @_Z7noise3diiii(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise24testNoise3dWithFunPrimesEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call nsz noundef float @_Z7noise2diii(i32 noundef 3903, i32 noundef -1723, i32 noundef 7411)
  %i.b = fadd nsz float %i.a, -9.891240e-01
  %i.c = tail call nsz noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fpext nsz float %i.c to double
  %i.e = fcmp nsz ugt double %i.d, 1.000000e-05
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.12, i32 noundef 118)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  ret void

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise16testNoise3dPointEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.NoiseParams, align 16       ; 19 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <4 x float> <float 2.000000e+01, float 4.000000e+01, float 5.000000e+01, float 5.000000e+01>, ptr %1, align 16, !tbaa !24
  store float 5.000000e+01, ptr %i.b, align 16, !tbaa !24
  store i32 9, ptr %i.c, align 4, !tbaa !28
  store i16 5, ptr %i.d, align 8, !tbaa !29
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.e, align 4, !tbaa !24
  store i32 1, ptr %i.f, align 4, !tbaa !30
  br label %.preheader30

.preheader30:                                     ; preds = %bb.a, %bb.c
  %.01938 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.c ] ; 2 uses
  %.02037 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  %i.g = uitofp nsz nneg i32 %.01938 to float     ; 10 uses
  %i.h = add nuw nsw i32 %.02037, 100
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

.preheader:                                       ; preds = %.preheader30, %bb.q
  %.01836 = phi i32 [ 0, %.preheader30 ], [ %i.cf, %bb.q ] ; 2 uses
  %.12135 = phi i32 [ %.02037, %.preheader30 ], [ %3, %bb.q ] ; 11 uses
  %i.i = uitofp nsz nneg i32 %.01836 to float     ; 10 uses
  %3 = add i32 %.12135, 10
  %i.j = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 0.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %4 = zext i32 %.12135 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %4
  %i.l = load float, ptr %i.k, align 8, !tbaa !24
  %i.m = fsub nsz float %i.j, %i.l
  %i.n = call nsz noundef float @llvm.fabs.f32(float %i.m)
  %i.o = fpext nsz float %i.n to double
  %i.p = fcmp nsz ugt double %i.o, 1.000000e-05
  br i1 %i.p, label %.noexc.i, label %bb.h

bb.c:                                             ; preds = %bb.q
  %i.q = add nuw nsw i32 %.01938, 1               ; 2 uses
  %.not = icmp eq i32 %i.q, 10
  br i1 %.not, label %bb.b, label %.preheader30, !llvm.loop !48

.noexc.i:                                         ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.preheader
  %i.r = call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 39, ptr %i.a, align 8, !tbaa !21
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  %i.u = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.t, ptr noundef nonnull align 1 dereferenceable(39) @.str.11, i64 39, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.r, ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.12, i32 noundef 131)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.r unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %.noexc
  %.0 = phi i1 [ false, %bb.d ], [ true, %.noexc ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.s
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #20
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn29 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.r) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn28 = phi { ptr, i32 } [ %.pn29, %bb.f ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn28

bb.h:                                             ; preds = %.preheader
  %5 = or disjoint i32 %.12135, 1
  %i.ad = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 1.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %6
  %i.ae = load float, ptr %7, align 4, !tbaa !24
  %i.af = fsub nsz float %i.ad, %i.ae
  %i.ag = call nsz noundef float @llvm.fabs.f32(float %i.af)
  %i.ah = fpext nsz float %i.ag to double
  %i.ai = fcmp nsz ugt double %i.ah, 1.000000e-05
  br i1 %i.ai, label %.noexc.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %8 = add i32 %.12135, 2
  %i.aj = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 2.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %9
  %i.ak = load float, ptr %10, align 8, !tbaa !24
  %i.al = fsub nsz float %i.aj, %i.ak
  %i.am = call nsz noundef float @llvm.fabs.f32(float %i.al)
  %i.an = fpext nsz float %i.am to double
  %i.ao = fcmp nsz ugt double %i.an, 1.000000e-05
  br i1 %i.ao, label %.noexc.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %11 = add i32 %.12135, 3
  %i.ap = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 3.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %12
  %i.aq = load float, ptr %13, align 4, !tbaa !24
  %i.ar = fsub nsz float %i.ap, %i.aq
  %i.as = call nsz noundef float @llvm.fabs.f32(float %i.ar)
  %i.at = fpext nsz float %i.as to double
  %i.au = fcmp nsz ugt double %i.at, 1.000000e-05
  br i1 %i.au, label %.noexc.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %14 = add i32 %.12135, 4
  %i.av = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 4.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %15
  %i.aw = load float, ptr %16, align 8, !tbaa !24
  %i.ax = fsub nsz float %i.av, %i.aw
  %i.ay = call nsz noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = fpext nsz float %i.ay to double
  %i.ba = fcmp nsz ugt double %i.az, 1.000000e-05
  br i1 %i.ba, label %.noexc.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %17 = add i32 %.12135, 5
  %i.bb = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 5.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %18
  %i.bc = load float, ptr %19, align 4, !tbaa !24
  %i.bd = fsub nsz float %i.bb, %i.bc
  %i.be = call nsz noundef float @llvm.fabs.f32(float %i.bd)
  %i.bf = fpext nsz float %i.be to double
  %i.bg = fcmp nsz ugt double %i.bf, 1.000000e-05
  br i1 %i.bg, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %20 = add i32 %.12135, 6
  %i.bh = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 6.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %21
  %i.bi = load float, ptr %22, align 8, !tbaa !24
  %i.bj = fsub nsz float %i.bh, %i.bi
  %i.bk = call nsz noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = fpext nsz float %i.bk to double
  %i.bm = fcmp nsz ugt double %i.bl, 1.000000e-05
  br i1 %i.bm, label %.noexc.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %23 = add i32 %.12135, 7
  %i.bn = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 7.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %24
  %i.bo = load float, ptr %25, align 4, !tbaa !24
  %i.bp = fsub nsz float %i.bn, %i.bo
  %i.bq = call nsz noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fpext nsz float %i.bq to double
  %i.bs = fcmp nsz ugt double %i.br, 1.000000e-05
  br i1 %i.bs, label %.noexc.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %26 = add i32 %.12135, 8
  %i.bt = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 8.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %27
  %i.bu = load float, ptr %28, align 8, !tbaa !24
  %i.bv = fsub nsz float %i.bt, %i.bu
  %i.bw = call nsz noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fpext nsz float %i.bw to double
  %i.by = fcmp nsz ugt double %i.bx, 1.000000e-05
  br i1 %i.by, label %.noexc.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %29 = add i32 %.12135, 9
  %i.bz = call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %1, float noundef 9.000000e+00, float noundef %i.i, float noundef %i.g, i32 noundef 1337)
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %30
  %i.ca = load float, ptr %31, align 4, !tbaa !24
  %i.cb = fsub nsz float %i.bz, %i.ca
  %i.cc = call nsz noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fpext nsz float %i.cc to double
  %i.ce = fcmp nsz ugt double %i.cd, 1.000000e-05
  br i1 %i.ce, label %.noexc.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = add nuw nsw i32 %.01836, 1              ; 2 uses
  %.not22 = icmp eq i32 %i.cf, 10
  br i1 %.not22, label %bb.c, label %.preheader, !llvm.loop !49

bb.r:                                             ; preds = %bb.d
  unreachable
}

declare noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise15testNoise3dBulkEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.NoiseParams, align 16       ; 10 uses
  %2 = alloca %class.Noise, align 8               ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <4 x float> <float 2.000000e+01, float 4.000000e+01, float 5.000000e+01, float 5.000000e+01>, ptr %1, align 16, !tbaa !24
  store float 5.000000e+01, ptr %i.a, align 16, !tbaa !24
  store i32 9, ptr %i.b, align 4, !tbaa !28
  store i16 5, ptr %i.c, align 8, !tbaa !29
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.d, align 4, !tbaa !24
  store i32 1, ptr %i.e, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %1, i32 noundef 1337, i32 noundef 10, i32 noundef 10, i32 noundef 10)
  %i.f = invoke noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null)
          to label %.preheader unwind label %bb.d ; 2 uses

.preheader.1:                                     ; preds = %.preheader
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.h = load float, ptr %i.g, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %indvars.iv.next
  %i.j = load float, ptr %i.i, align 4, !tbaa !24
  %i.k = fsub nsz float %i.h, %i.j
  %i.l = call nsz noundef float @llvm.fabs.f32(float %i.k)
  %i.m = fpext nsz float %i.l to double
  %i.n = fcmp nsz ugt double %i.m, 1.000000e-05
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, 1000
  br i1 %.not.1, label %bb.c, label %.preheader, !llvm.loop !50

bb.c:                                             ; preds = %bb.b
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN9TestNoise19expected_3d_resultsE, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 8, !tbaa !24
  %i.t = fsub nsz float %i.q, %i.s
  %i.u = call nsz noundef float @llvm.fabs.f32(float %i.t)
  %i.v = fpext nsz float %i.u to double
  %i.w = fcmp nsz ugt double %i.v, 1.000000e-05
  br i1 %i.w, label %bb.e, label %.preheader.1

bb.e:                                             ; preds = %.preheader.1, %.preheader
  %i.x = call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.x, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.12, i32 noundef 144)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.k unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.x) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn18, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9TestNoise22testNoiseInvalidParamsEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.NoiseParams, align 16       ; 10 uses
  %2 = alloca %class.Noise, align 8               ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <4 x float> <float 4.000000e+00, float 7.000000e+01, float 1.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !24
  store float 1.000000e+00, ptr %i.b, align 16, !tbaa !24
  store i32 5, ptr %i.c, align 4, !tbaa !28
  store i16 60, ptr %i.d, align 8, !tbaa !29
  store <2 x float> <float f0x3F333333, float 1.000000e+01>, ptr %i.e, align 4, !tbaa !24
  store i32 1, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %1, i32 noundef 1337, i32 noundef 200, i32 noundef 200, i32 noundef 200)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null)
          to label %.critedge unwind label %bb.d  ; 0 uses

.critedge:                                        ; preds = %bb.b
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.h = call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 16, ptr %i.a, align 8, !tbaa !21
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.critedge
  store ptr %i.j, ptr %3, align 8, !tbaa !16
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) @.str.13, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !22
  %i.m = load ptr, ptr %3, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.h, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.12, i32 noundef 160)
          to label %bb.g unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI27InvalidNoiseParamsException
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
end_hunk_0
