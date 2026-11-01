Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPerturbationHandler?download=true
inline.NumInlined: 132
inline.NumDeleted: 69
begin_hunk_0
$_ZTIN5Ipopt23AlgorithmStrategyObjectE = comdat any

$_ZTSN5Ipopt23AlgorithmStrategyObjectE = comdat any

$_ZTIN5Ipopt16ReferencedObjectE = comdat any

$_ZTSN5Ipopt16ReferencedObjectE = comdat any

@_ZTVN5Ipopt21CGPerturbationHandlerE = constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN5Ipopt21CGPerturbationHandlerE, ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, ptr @_ZN5Ipopt21CGPerturbationHandlerD0Ev, ptr @_ZN5Ipopt21CGPerturbationHandler14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN5Ipopt21CGPerturbationHandler17ConsiderNewSystemERdS1_S1_S1_, ptr @_ZN5Ipopt21CGPerturbationHandler21PerturbForSingularityERdS1_S1_S1_, ptr @_ZN5Ipopt21PDPerturbationHandler22PerturbForWrongInertiaERdS1_S1_S1_, ptr @_ZN5Ipopt21PDPerturbationHandler19CurrentPerturbationERdS1_S1_S1_] }, align 8
@.str = private unnamed_addr constant [12 x i8] c"penalty_max\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mult_diverg_feasibility_tol\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"Degeneracy test for hess_degenerate_ = %d and jac_degenerate_ = %d\0A       test_status_ = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"Can't get_deltas_for_wrong_inertia for delta_x_curr_ = %e and delta_c_curr_ = %e\0A\00", align 1
@_ZTIN5Ipopt21CGPerturbationHandlerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt21CGPerturbationHandlerE, ptr @_ZTIN5Ipopt21PDPerturbationHandlerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt21CGPerturbationHandlerE = constant [32 x i8] c"N5Ipopt21CGPerturbationHandlerE\00", align 1
@_ZTIN5Ipopt21PDPerturbationHandlerE = external constant ptr
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN5Ipopt23AlgorithmStrategyObjectE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Ipopt23AlgorithmStrategyObjectE, ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, ptr @_ZN5Ipopt23AlgorithmStrategyObjectD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN5Ipopt23AlgorithmStrategyObjectE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt23AlgorithmStrategyObjectE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt23AlgorithmStrategyObjectE = linkonce_odr constant [34 x i8] c"N5Ipopt23AlgorithmStrategyObjectE\00", comdat, align 1
@_ZTIN5Ipopt16ReferencedObjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt16ReferencedObjectE = linkonce_odr constant [27 x i8] c"N5Ipopt16ReferencedObjectE\00", comdat, align 1

@_ZN5Ipopt21CGPerturbationHandlerC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt21CGPerturbationHandlerC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt21CGPerturbationHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5Ipopt21PDPerturbationHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(217) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5Ipopt21CGPerturbationHandlerE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

declare void @_ZN5Ipopt21PDPerturbationHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(217)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5Ipopt21CGPerturbationHandler15RegisterOptionsENS_8SmartPtrINS_17RegisteredOptionsEEE(ptr nofree noundef readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21CGPerturbationHandler14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %1, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.c       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.b, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 27, ptr %i.a, align 8, !tbaa !68
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.d   ; 2 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.o, ptr %4, align 8, !tbaa !18
  %i.p = load i64, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.o, ptr noundef nonnull align 1 dereferenceable(27) @.str.1, i64 27, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !16
  %i.r = load ptr, ptr %4, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = load ptr, ptr %1, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %.noexc17
  %i.y = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.n
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.b
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !17
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.ac = call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %i.ac

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.c
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.e:                                             ; preds = %.noexc17
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.n
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.e
  %i.am = load i64, ptr %i.n, align 8, !tbaa !17
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.d
  %.pn12 = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21CGPerturbationHandler17ConsiderNewSystemERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %3, ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5Ipopt21PDPerturbationHandler13finalize_testEv(ptr noundef nonnull align 8 dereferenceable(217) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %i.j, align 4, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i8 0, i64 64, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i8, ptr %i.l, align 8, !tbaa !71, !range !49, !noundef !50
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !51 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load <2 x double>, ptr %i.o, align 8, !tbaa !52
  store <2 x double> %5, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = load double, ptr %i.r, align 8, !tbaa !53
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %6, ptr %7, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load double, ptr %i.s, align 8, !tbaa !54
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.u = fcmp ogt double %i.p, 0.000000e+00
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.p, ptr %i.v, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load double, ptr %i.w, align 8, !tbaa !55 ; 2 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.x, ptr %i.z, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %i.ac = fcmp ogt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.ab, ptr %i.ad, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load double, ptr %i.ae, align 8, !tbaa !54 ; 2 uses
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.d
  %.sink = phi double [ %i.t, %bb.d ], [ %i.af, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %.sink, ptr %i.ah, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load i32, ptr %i.al, align 8, !tbaa !57
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !76, !range !49, !noundef !50
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.av = tail call noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.au)
  %i.aw = tail call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0)
  %i.ax = fcmp olt double %i.av, %i.aw
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 41
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62, !range !49, !noundef !50
  %.not = icmp eq i8 %i.bc, 0
  %spec.select = select i1 %.not, i32 1, i32 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.n, %bb.o
  %.sink40 = phi i32 [ 1, %bb.n ], [ 0, %bb.m ], [ %spec.select, %bb.p ], [ 1, %bb.o ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink40, ptr %i.bd, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  %i.bi = tail call noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.bh) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !57
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2192
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 41
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62, !range !49, !noundef !50
  %.not31 = icmp eq i8 %i.bq, 0
  br i1 %.not31, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !76, !range !49, !noundef !50
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.t, label %.thread33

.thread:                                          ; preds = %bb.q
  %i.bu = fcmp olt double %i.bi, f0x3D19000000000000
  br i1 %i.bu, label %.thread33, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.thread
  br label %.thread33

.thread33:                                        ; preds = %bb.s, %.thread, %bb.t
  %.sink42 = phi double [ f0x3D19000000000000, %.thread ], [ %i.bi, %bb.t ], [ 0.000000e+00, %bb.s ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %.sink42, ptr %i.bv, align 8, !tbaa !53
  store double %.sink42, ptr %3, align 8, !tbaa !52
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2192
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store double %.sink42, ptr %i.bz, align 8, !tbaa !77
  %i.ca = load double, ptr %3, align 8, !tbaa !52 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !54
  store double %i.ca, ptr %4, align 8, !tbaa !52
  %i.cc = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread33
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  %i.cf = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.cf, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.w

bb.v:                                             ; preds = %.thread33
  store double 0.000000e+00, ptr %1, align 8, !tbaa !52
  store double 0.000000e+00, ptr %2, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.v
  %i.cg = phi ptr [ %.pre, %._crit_edge ], [ %i.bw, %bb.v ]
  %i.ch = load double, ptr %1, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ch, ptr %i.ci, align 8, !tbaa !51
  %i.cj = load double, ptr %2, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.cj, ptr %i.ck, align 8, !tbaa !55
  %i.cl = load double, ptr %3, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.cl, ptr %i.cm, align 8, !tbaa !53
  %i.cn = load double, ptr %4, align 8, !tbaa !52
  store double %i.cn, ptr %i.cb, align 8, !tbaa !54
  %i.co = load double, ptr %1, align 8, !tbaa !52
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  store double %i.co, ptr %i.cp, align 8, !tbaa !64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.cq, align 8, !tbaa !78
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %.1 = phi i1 [ true, %bb.w ], [ false, %bb.u ]
  ret i1 %.1
}

declare void @_ZN5Ipopt21PDPerturbationHandler13finalize_testEv(ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #1

declare noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #1

declare noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21CGPerturbationHandler21PerturbForSingularityERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !63
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.2, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %i.j)
  %i.n = load i32, ptr %i.i, align 8, !tbaa !63
  switch i32 %i.n, label %bb.t [
    i32 1, label %bb.c
    i32 2, label %bb.g
    i32 3, label %bb.i
    i32 4, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.d, align 8, !tbaa !57
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.q, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.q, ptr %i.s, align 8, !tbaa !54
  store i32 2, ptr %i.i, align 8, !tbaa !63
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.t, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %i.i, align 8, !tbaa !63
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.u = tail call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.z = tail call noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.y) ; 2 uses
  %i.aa = fcmp olt double %i.u, %i.z
  %.sroa.speculated.i = select i1 %i.aa, double %i.z, double %i.u ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %.sroa.speculated.i, ptr %i.ac, align 8, !tbaa !54
  %i.ad = tail call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0)
  %i.ae = fcmp olt double %.sroa.speculated.i, %i.ad
  %. = select i1 %i.ae, i32 3, i32 4
  store i32 %., ptr %i.i, align 8, !tbaa !63
  %i.af = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.af, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  store i32 3, ptr %i.i, align 8, !tbaa !63
  br label %bb.t

bb.i:                                             ; preds = %bb.b
  %i.ag = tail call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.al = tail call noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.ak) ; 2 uses
  %i.am = fcmp olt double %i.ag, %i.al
  %.sroa.speculated.i50 = select i1 %i.am, double %i.al, double %i.ag ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %.sroa.speculated.i50, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %.sroa.speculated.i50, ptr %i.ao, align 8, !tbaa !54
  %i.ap = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ap, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  store i32 4, ptr %i.i, align 8, !tbaa !63
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.aq = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.aq, label %bb.t, label %bb.u

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !53
  %i.at = fcmp ogt double %i.as, 0.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load i8, ptr %i.au, align 8, !range !49
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond49 = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %or.cond49, label %bb.m, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ax, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !51
  %i.bc = load double, ptr %i.ar, align 8, !tbaa !53
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.3, double noundef %i.bb, double noundef %i.bc)
  br label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.l
  %i.bg = tail call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0) ; 2 uses
  store double %i.bg, ptr %i.ar, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store double %i.bg, ptr %i.bh, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bk, ptr %5, align 8, !tbaa !13
  store i8 76, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.bm, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 168
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = icmp eq i64 %i.bo, 4611686018427387903
  br i1 %i.bp, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #11
          to label %.noexc51 unwind label %bb.r

.noexc51:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull %i.bk, i64 noundef 1)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.r ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.bs = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bk
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bu = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !58 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef double %i.ca(ptr noundef nonnull align 8 dereferenceable(2185) %i.bx, i32 noundef 1)
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2192
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 41
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62, !range !49, !noundef !50
  %.not = icmp eq i8 %i.cg, 0
  br i1 %.not, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !80
  %i.cj = fcmp ogt double %i.cb, %i.ci
  br i1 %i.cj, label %._crit_edge.i.i57, label %bb.t

._crit_edge.i.i57:                                ; preds = %bb.p
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !61
  %i.cn = call noundef double @_ZN5Ipopt11CGPenaltyCq29compute_curr_cg_penalty_scaleEv(ptr noundef nonnull align 8 dereferenceable(241) %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cp = load double, ptr %i.co, align 8, !tbaa !81 ; 2 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2192
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !82 ; 2 uses
  %i.cv = fcmp olt double %i.cn, %i.cu
  %.sroa.speculated.i53 = select i1 %i.cv, double %i.cu, double %i.cn ; 2 uses
  %i.cw = fcmp olt double %.sroa.speculated.i53, %i.cp
  %.sroa.speculated.i54 = select i1 %i.cw, double %.sroa.speculated.i53, double %i.cp
  store double %.sroa.speculated.i54, ptr %i.ct, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  store i8 1, ptr %i.cx, align 8, !tbaa !83
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !58
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !61
  %i.db = call noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.da) ; 2 uses
  %i.dc = call noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr noundef nonnull align 8 dereferenceable(217) %0) ; 2 uses
  %i.dd = fcmp olt double %i.db, %i.dc
  %.sroa.speculated.i55 = select i1 %i.dd, double %i.dc, double %i.db ; 2 uses
  %i.de = fcmp ogt double %.sroa.speculated.i55, f0x3D4F400000000000
  %.sroa.speculated.i56 = select i1 %i.de, double %.sroa.speculated.i55, double f0x3D4F400000000000 ; 2 uses
  store double %.sroa.speculated.i56, ptr %i.ar, align 8, !tbaa !53
  store double %.sroa.speculated.i56, ptr %i.bh, align 8, !tbaa !54
  %i.df = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.dg, ptr %6, align 8, !tbaa !13
  store i8 117, ptr %i.dg, align 8, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.dh, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.di, align 1, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 168
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !16
  %i.dl = icmp eq i64 %i.dk, 4611686018427387903
  br i1 %i.dl, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i61

bb.q:                                             ; preds = %._crit_edge.i.i57
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #11
          to label %.noexc62 unwind label %bb.s

.noexc62:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i61: ; preds = %._crit_edge.i.i57
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 160
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull %i.dg, i64 noundef 1)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64 unwind label %bb.s ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i61
  %i.do = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dg
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64
  %i.dq = load i64, ptr %i.dg, align 8, !tbaa !17
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.o
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bk
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.r
  %i.dv = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i61, %bb.q
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dg
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.s
  %i.ea = load i64, ptr %i.dg, align 8, !tbaa !17
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.m, %bb.b, %bb.h, %bb.j, %bb.f, %bb.d, %bb.k
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !51
  store double %i.ed, ptr %1, align 8, !tbaa !52
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !55
  store double %i.ef, ptr %2, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !53
  store double %i.eh, ptr %3, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !54
  store double %i.ej, ptr %4, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.em = load double, ptr %1, align 8, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 120
  store double %i.em, ptr %i.en, align 8, !tbaa !64
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.t, %bb.n
  %.040 = phi i1 [ true, %bb.t ], [ false, %bb.n ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ]
  ret i1 %.040

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn42.pn = phi { ptr, i32 } [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  resume { ptr, i32 } %.pn42.pn
}

declare noundef double @_ZN5Ipopt11CGPenaltyCq29compute_curr_cg_penalty_scaleEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt21CGPerturbationHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt23AlgorithmStrategyObjectE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !66
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(2185) %i.b) #9, !inline_history !84
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !66
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(2232) %i.k) #9, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i:    ; preds = %bb.e, %bb.d, %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67   ; 4 uses
  %.not.i.i2.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i2.i, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !66
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !66
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #9, !inline_history !86
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i:     ; preds = %bb.g, %bb.f, %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 4 uses
  %.not.i.i3.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i3.i, label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !66
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !66
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #9, !inline_history !87
  br label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit

_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit:      ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i, %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #10
  ret void
}

declare noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler22PerturbForWrongInertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN5Ipopt21PDPerturbationHandler19CurrentPerturbationERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt23AlgorithmStrategyObjectE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !66
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(2185) %i.b) #9, !inline_history !88
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !66
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(2232) %i.k) #9, !inline_history !89
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit:      ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67   ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i.i2, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !66
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !66
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #9, !inline_history !90
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit:       ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 4 uses
  %.not.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i3, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !66
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !66
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #9, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit:   ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt23AlgorithmStrategyObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !4, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!4, !4, i64 0}
!18 = !{!15, !11, i64 0}
!19 = !{!"p1 _ZTSN5Ipopt9IpoptDataE", !10, i64 0}
!20 = !{!"_ZTSN5Ipopt8SmartPtrINS_9IpoptDataEEE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"p1 _ZTSN5Ipopt19IpoptAdditionalDataE", !10, i64 0}
!23 = !{!"_ZTSN5Ipopt8SmartPtrINS_19IpoptAdditionalDataEEE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !5, i64 8}
!26 = !{!"_ZTSN5Ipopt19IpoptAdditionalDataE", !25, i64 0}
!27 = !{!"p1 _ZTSN5Ipopt14IteratesVectorE", !10, i64 0}
!28 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_14IteratesVectorEEE", !27, i64 0}
!29 = !{!"bool", !4, i64 0}
!30 = !{!"double", !4, i64 0}
!31 = !{!"_ZTSN5Ipopt13CGPenaltyDataE", !26, i64 0, !28, i64 16, !29, i64 24, !28, i64 32, !29, i64 40, !29, i64 41, !5, i64 44, !30, i64 48, !30, i64 56, !29, i64 64, !30, i64 72, !29, i64 80, !30, i64 88, !30, i64 96, !29, i64 104}
!32 = !{!"p1 _ZTSN5Ipopt9SymMatrixE", !10, i64 0}
!33 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_9SymMatrixEEE", !32, i64 0}
!34 = !{!"p1 _ZTSN5Ipopt19IteratesVectorSpaceE", !10, i64 0}
!35 = !{!"_ZTSN5Ipopt8SmartPtrINS_19IteratesVectorSpaceEEE", !34, i64 0}
!36 = !{!"_ZTSN5Ipopt9TimedTaskE", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !29, i64 48, !29, i64 49, !29, i64 50}
!37 = !{!"_ZTSN5Ipopt16TimingStatisticsE", !25, i64 0, !36, i64 16, !36, i64 72, !36, i64 128, !36, i64 184, !36, i64 240, !36, i64 296, !36, i64 352, !36, i64 408, !36, i64 464, !36, i64 520, !36, i64 576, !36, i64 632, !36, i64 688, !36, i64 744, !36, i64 800, !36, i64 856, !36, i64 912, !36, i64 968, !36, i64 1024, !36, i64 1080, !36, i64 1136, !36, i64 1192, !36, i64 1248, !36, i64 1304, !36, i64 1360, !36, i64 1416, !36, i64 1472, !36, i64 1528, !36, i64 1584, !36, i64 1640, !36, i64 1696, !36, i64 1752, !36, i64 1808, !36, i64 1864, !36, i64 1920}
!38 = !{!"_ZTSN5Ipopt9IpoptDataE", !25, i64 0, !28, i64 16, !28, i64 24, !33, i64 32, !28, i64 40, !29, i64 48, !28, i64 56, !29, i64 64, !5, i64 68, !30, i64 72, !29, i64 80, !30, i64 88, !29, i64 96, !29, i64 97, !29, i64 98, !30, i64 104, !29, i64 112, !29, i64 113, !30, i64 120, !30, i64 128, !4, i64 136, !30, i64 144, !5, i64 152, !29, i64 156, !15, i64 160, !30, i64 192, !5, i64 200, !35, i64 208, !37, i64 216, !23, i64 2192, !30, i64 2200, !30, i64 2208, !30, i64 2216, !30, i64 2224}
!39 = !{!"p1 _ZTSN5Ipopt10JournalistE", !10, i64 0}
!40 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_10JournalistEEE", !39, i64 0}
!41 = !{!"p1 _ZTSN5Ipopt8IpoptNLPE", !10, i64 0}
!42 = !{!"_ZTSN5Ipopt8SmartPtrINS_8IpoptNLPEEE", !41, i64 0}
!43 = !{!"p1 _ZTSN5Ipopt25IpoptCalculatedQuantitiesE", !10, i64 0}
!44 = !{!"_ZTSN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEE", !43, i64 0}
!45 = !{!"_ZTSN5Ipopt23AlgorithmStrategyObjectE", !25, i64 0, !40, i64 16, !42, i64 24, !20, i64 32, !44, i64 40, !29, i64 48}
!46 = !{!"_ZTSN5Ipopt21PDPerturbationHandler9DegenTypeE", !4, i64 0}
!47 = !{!"_ZTSN5Ipopt21PDPerturbationHandler11TrialStatusE", !4, i64 0}
!48 = !{!"_ZTSN5Ipopt21PDPerturbationHandlerE", !45, i64 0, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !30, i64 104, !30, i64 112, !29, i64 120, !46, i64 124, !46, i64 128, !5, i64 132, !47, i64 136, !30, i64 144, !30, i64 152, !30, i64 160, !30, i64 168, !30, i64 176, !30, i64 184, !30, i64 192, !30, i64 200, !29, i64 208, !5, i64 212, !29, i64 216}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!48, !30, i64 88}
!52 = !{!30, !30, i64 0}
!53 = !{!48, !30, i64 104}
!54 = !{!48, !30, i64 112}
!55 = !{!48, !30, i64 96}
!56 = !{!48, !46, i64 124}
!57 = !{!48, !46, i64 128}
!58 = !{!44, !43, i64 0}
!59 = !{!"p1 _ZTSN5Ipopt17IpoptAdditionalCqE", !10, i64 0}
!60 = !{!"_ZTSN5Ipopt8SmartPtrINS_17IpoptAdditionalCqEEE", !59, i64 0}
!61 = !{!60, !59, i64 0}
!62 = !{!31, !29, i64 41}
!63 = !{!48, !47, i64 136}
!64 = !{!38, !30, i64 120}
!65 = !{!40, !39, i64 0}
!66 = !{!25, !5, i64 8}
!67 = !{!42, !41, i64 0}
!68 = !{!14, !14, i64 0}
!69 = !{!31, !5, i64 44}
!70 = !{!38, !5, i64 68}
!71 = !{!48, !29, i64 208}
!72 = !{!48, !30, i64 72}
!73 = !{!48, !30, i64 56}
!74 = !{!48, !30, i64 64}
!75 = !{!48, !30, i64 80}
!76 = !{!48, !29, i64 216}
!77 = !{!31, !30, i64 88}
!78 = !{!48, !29, i64 120}
!79 = !{!"_ZTSN5Ipopt21CGPerturbationHandlerE", !48, i64 0, !30, i64 224, !30, i64 232}
!80 = !{!79, !30, i64 232}
!81 = !{!79, !30, i64 224}
!82 = !{!31, !30, i64 72}
!83 = !{!31, !29, i64 80}
!84 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!85 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!86 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!87 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!88 = distinct !{null, null}
!89 = distinct !{null, null}
!90 = distinct !{null, null}
!91 = distinct !{null, null}
end_hunk_0
