Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme?download=true
inline.NumInlined: 2554
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z18minimalPmeGridSizei:bb.a
bb.e:                                             ; preds = %bb.c
  ret i32 %i.b
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_Z33numGridLinesForExtendedHaloRegioniff(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = fdiv float %1, %2
  %i.b = tail call noundef float @llvm.ceil.f32(float %i.a)
  %i.c = fptosi float %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = add nsw i32 %0, -1
  %i.e = add nsw i32 %i.d, %.sroa.speculated
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_Z21getGridSpacingFromBoxPA3_KfPKi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !256    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 4, !tbaa !284  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !284 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !284 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = uitofp nneg i32 %i.a to float
  %i.l = fdiv float %sqrt.i, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi float [ %i.l, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !256  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !284 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !284 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !284 ; 2 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.v)
  %sqrt.i.1 = tail call noundef float @llvm.sqrt.f32(float %i.y)
  %i.z = uitofp nneg i32 %i.o to float
  %i.aa = fdiv float %sqrt.i.1, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi float [ %i.aa, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !256 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !284 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !284 ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load float, ptr %i.al, align 4, !tbaa !284 ; 2 uses
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ak)
  %sqrt.i.2 = tail call noundef float @llvm.sqrt.f32(float %i.an)
  %i.ao = uitofp nneg i32 %i.ad to float
  %i.ap = fdiv float %sqrt.i.2, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi float [ %i.ap, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.ar = fcmp ogt float %i.m, 0.000000e+00
  %spec.select = select i1 %i.ar, float %i.m, float 0.000000e+00 ; 2 uses
  %i.as = fcmp ogt float %i.ab, %spec.select
  %spec.select.1 = select i1 %i.as, float %i.ab, float %spec.select ; 2 uses
  %i.at = fcmp ogt float %i.aq, %spec.select.1
  %spec.select.2 = select i1 %i.at, float %i.aq, float %spec.select.1
  ret float %spec.select.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z26gmx_pme_check_restrictionsiiiiiiibbb(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %16 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %17 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp sgt i32 %0, 12
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %9, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.18, i32 noundef %0, i32 noundef 12)
  %i.b = call ptr @__cxa_allocate_exception(i64 24) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %bb.e unwind label %.thread84

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %11, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %13, align 8, !tbaa !286
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @__PRETTY_FUNCTION__._Z26gmx_pme_check_restrictionsiiiiiiibbb, ptr %i.c, align 8, !tbaa !287
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.15, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !287
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 529, ptr %.sroa.578.0..sroa_idx, align 8, !tbaa !256
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.b, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #32
          to label %bb.aj unwind label %bb.g

.thread:                                          ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread84:                                        ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #11
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.f
  %.039 = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #11
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br i1 %.039, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %.thread, %.thread84
  %.pn62.pn83.ph = phi { ptr, i32 } [ %i.e, %.thread84 ], [ %i.d, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.pn62.pn83 = phi { ptr, i32 } [ %i.f, %bb.g ], [ %.pn62.pn83.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn62.pn82 = phi { ptr, i32 } [ %.pn62.pn83, %bb.h ], [ %i.f, %bb.g ]
  %i.g = load ptr, ptr %10, align 8, !tbaa !21    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !24
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.ai

bb.j:                                             ; preds = %bb.a
  %i.l = shl i32 %0, 1
  %i.m = add i32 %i.l, -2                         ; 5 uses
  %i.n = icmp sgt i32 %0, 2
  br i1 %i.n, label %20, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ18minimalPmeGridSizeiENK3$_0clEv", ptr noundef nonnull @.str.15, i32 noundef 477) #32
  unreachable

20:                                               ; preds = %bb.j
  %.not.not.i = icmp sgt i32 %i.m, %0
  br i1 %.not.not.i, label %_Z18minimalPmeGridSizei.exit, label %21

21:                                               ; preds = %20
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ18minimalPmeGridSizeiENK3$_0clEv", ptr noundef nonnull @.str.15, i32 noundef 478) #32
  unreachable

_Z18minimalPmeGridSizei.exit:                     ; preds = %20
  %i.o = icmp slt i32 %1, %i.m
  %i.p = icmp slt i32 %2, %i.m
  %or.cond66 = or i1 %i.o, %i.p
  %i.q = icmp slt i32 %3, %i.m
  %or.cond67 = or i1 %or.cond66, %i.q
  br i1 %or.cond67, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_Z18minimalPmeGridSizei.exit
  br i1 %9, label %bb.m, label %bb.ah

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.19, i32 noundef %i.m)
  %i.r = call ptr @__cxa_allocate_exception(i64 24) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.n unwind label %.thread87

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(56) %16)
          to label %bb.o unwind label %.thread92

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %15, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %17, align 8, !tbaa !286
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @__PRETTY_FUNCTION__._Z26gmx_pme_check_restrictionsiiiiiiibbb, ptr %i.s, align 8, !tbaa !287
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @.str.15, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !287
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 541, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !256
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.r, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr %i.r, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #32
          to label %bb.aj unwind label %bb.q

.thread87:                                        ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split104

.thread92:                                        ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #11
  br label %.sink.split104

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #11
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br i1 %.0, label %bb.r, label %bb.s

.sink.split104:                                   ; preds = %.thread87, %.thread92
  %.pn.pn91.ph = phi { ptr, i32 } [ %i.u, %.thread92 ], [ %i.t, %.thread87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.r

bb.r:                                             ; preds = %.sink.split104, %bb.q
  %.pn.pn91 = phi { ptr, i32 } [ %i.v, %bb.q ], [ %.pn.pn91.ph, %.sink.split104 ]
  call void @__cxa_free_exception(ptr %i.r) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn90 = phi { ptr, i32 } [ %.pn.pn91, %bb.r ], [ %i.v, %bb.q ]
  %i.w = load ptr, ptr %14, align 8, !tbaa !21    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.s
  %i.z = load i64, ptr %i.x, align 8, !tbaa !24
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.ai

bb.t:                                             ; preds = %_Z18minimalPmeGridSizei.exit
  %i.ab = mul nsw i32 %4, %0
  %i.ac = icmp slt i32 %1, %i.ab
  %or.cond69 = select i1 %8, i1 %i.ac, i1 false
  br i1 %or.cond69, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ad = add nsw i32 %0, -1
  %i.ae = mul nsw i32 %4, %i.ad
  %.not = icmp eq i32 %1, %i.ae
  br i1 %.not, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %9, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA58_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(58) @.str.15, i8 noundef zeroext 2)
  %i.af = uitofp nneg i32 %1 to double
  %i.ag = sitofp i32 %4 to double
  %i.ah = fdiv double %i.af, %i.ag
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 554, ptr noundef nonnull @.str.20, double noundef %i.ah, i32 noundef %0) #32
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.ai

bb.z:                                             ; preds = %bb.u, %bb.t
  br i1 %7, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.aj = icmp sgt i32 %4, 1
  %i.ak = icmp sgt i32 %5, 1
  %or.cond = or i1 %i.aj, %i.ak
  br i1 %or.cond, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.al = sdiv i32 %1, %4
  %i.am = icmp sgt i32 %6, %i.al
  br i1 %i.am, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.an = sdiv i32 %2, %5
  %i.ao = icmp sle i32 %6, %i.an                  ; 2 uses
  %.not71 = xor i1 %9, true
  %brmerge = or i1 %i.ao, %.not71
  br i1 %brmerge, label %bb.ah, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br i1 %9, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA58_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(58) @.str.15, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 574, ptr noundef nonnull @.str.21, i32 noundef %6) #32
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac, %bb.l, %bb.v, %bb.ad, %bb.aa, %bb.z, %bb.b
  %.152 = phi i1 [ false, %bb.b ], [ false, %bb.ad ], [ false, %bb.l ], [ false, %bb.v ], [ true, %bb.aa ], [ %i.ao, %bb.ac ], [ true, %bb.z ]
  ret i1 %.152

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.y, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ai, %bb.y ], [ %i.ap, %bb.ag ]
  resume { ptr, i32 } %.pn62.pn.pn

bb.aj:                                            ; preds = %bb.p, %bb.f
  unreachable
}

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InconsistentInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.212", align 8 ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !286
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !288
  store ptr %i.a, ptr %3, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !293
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.d = load ptr, ptr %3, align 8, !tbaa !290    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
end_hunk_0
