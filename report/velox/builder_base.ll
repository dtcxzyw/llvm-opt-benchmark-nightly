Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/builder_base?download=true
inline.NumInlined: 2872
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow6Status8FromArgsIJRA34_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_:bb.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135, !nonnull !63, !align !125 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !418
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRPKcEEvRSoOT_.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, i64 noundef %i.k)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRPKcEEvRSoOT_.exit unwind label %bb.e ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRPKcEEvRSoOT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRPKcEEvRSoOT_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %_ZN5arrow4util22StringBuilderRecursiveIRPKcEEvRSoOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA30_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S2_SA_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135, !nonnull !63, !align !125 ; 4 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g)
          to label %.noexc5 unwind label %bb.c    ; 0 uses

.noexc5:                                          ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %3) #19
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) %3, i64 noundef %i.i)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.k = load ptr, ptr %4, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA30_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S2_SA_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA30_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S2_SA_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc6
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA30_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S2_SA_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc5, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA30_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S2_SA_EEEvRSoOT_DpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly %2) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %28 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %29 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %34 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %35 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %40 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %41 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %42 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %43 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %44 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %45 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %46 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %47 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %51 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %52 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %53 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %54 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %58 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %59 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %66 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %67 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %68 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %69 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %71 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %72 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %73 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %74 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %76 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %77 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %78 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %79 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %81 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %.sroa.02.i.i.i.i.i.i405 = alloca %struct.anon.191, align 8 ; 7 uses
  %82 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %83 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %85 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %86 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %.sroa.02.i.i.i.i.i.i = alloca %struct.anon.191, align 8 ; 7 uses
  %87 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %88 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %89 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %90 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %91 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %92 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %93 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %94 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %95 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %96 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %97 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %98 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %99 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %100 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %101 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %102 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %103 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  switch i32 %i.p, label %bb.rw [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.l
    i32 5, label %bb.p
    i32 4, label %bb.t
    i32 7, label %bb.x
    i32 6, label %bb.ab
    i32 9, label %bb.af
    i32 8, label %bb.aj
    i32 10, label %bb.an
    i32 11, label %bb.ar
    i32 12, label %bb.av
    i32 13, label %bb.az
    i32 39, label %bb.bg
    i32 14, label %bb.bo
    i32 40, label %bb.bv
    i32 34, label %bb.cd
    i32 35, label %bb.ck
    i32 15, label %bb.cr
    i32 33, label %bb.cv
    i32 16, label %bb.cz
    i32 17, label %bb.dd
    i32 18, label %bb.dh
    i32 19, label %bb.dl
    i32 20, label %bb.dp
    i32 37, label %bb.dt
    i32 21, label %bb.dx
    i32 22, label %bb.eb
    i32 43, label %bb.ef
    i32 44, label %bb.ej
    i32 23, label %bb.en
    i32 24, label %bb.er
    i32 25, label %bb.ev
    i32 36, label %bb.gw
    i32 41, label %bb.ix
    i32 42, label %bb.ky
    i32 30, label %bb.mz
    i32 32, label %bb.oz
    i32 26, label %bb.qz
    i32 27, label %bb.rf
    i32 28, label %bb.rj
    i32 29, label %bb.rt
    i32 38, label %bb.ru
    i32 31, label %bb.rv
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA23_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(23) @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !139, !noalias !1255 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #19, !noalias !1255
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102, !noalias !1255
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101, !noalias !1255
  %i.w = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1255
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 48
  %i.ab = mul nsw i64 %i.aa, %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77, !noalias !1256 ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !59, !noalias !1256
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1256
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(144) %i.r), !noalias !1256, !inline_history !425
  %i.ai = add nsw i64 %i.ah, %i.ab                ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.ai, %i.ad
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19, !noalias !1255
  br label %_ZN5arrow6StatusD2Ev.exit17.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.c
  %i.aj = shl nsw i64 %i.ad, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !59, !noalias !1256
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1256
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %103, ptr noundef nonnull align 8 dereferenceable(144) %i.r, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !1255, !inline_history !425
  %.pr.i.i = load ptr, ptr %103, align 8, !tbaa !31, !noalias !1257 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !31, !alias.scope !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19, !noalias !1255
  %i.an = icmp eq ptr %.pr.i.i, null
  br i1 %i.an, label %_ZN5arrow6StatusD2Ev.exit17.i.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit17.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !102, !noalias !1255 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph4.i.i, label %._crit_edge5.i.i

.lr.ph4.i.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit17.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 168 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 200 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 208 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1255
  %i.ay = load ptr, ptr %i.u, align 8, !tbaa !101, !noalias !1255 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %._crit_edge5.i.i, label %.lr.ph4.split.i.i

._crit_edge5.i.i:                                 ; preds = %._crit_edge.i.i, %.lr.ph4.i.i, %_ZN5arrow6StatusD2Ev.exit17.i.i
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !1259
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

.lr.ph4.split.i.i:                                ; preds = %.lr.ph4.i.i, %._crit_edge.i.i
  %i.ba = phi i64 [ %i.bd, %._crit_edge.i.i ], [ %i.ao, %.lr.ph4.i.i ]
  %i.bb = phi ptr [ %i.be, %._crit_edge.i.i ], [ %i.ay, %.lr.ph4.i.i ] ; 2 uses
  %.0123.i.i = phi i64 [ %i.bf, %._crit_edge.i.i ], [ 0, %.lr.ph4.i.i ]
  %i.bc = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1255 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !102, !noalias !1255
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.lr.ph4.split.i.i
  %i.bd = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ba, %.lr.ph4.split.i.i ] ; 2 uses
  %i.be = phi ptr [ %i.dp, %._crit_edge.loopexit.i.i ], [ %i.bb, %.lr.ph4.split.i.i ]
  %i.bf = add nuw nsw i64 %.0123.i.i, 1           ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.bd
  br i1 %i.bg, label %.lr.ph4.split.i.i, label %._crit_edge5.i.i, !llvm.loop !430

.lr.ph.i.i:                                       ; preds = %.lr.ph4.split.i.i, %bb.g
  %.02.i.i = phi ptr [ %i.dp, %bb.g ], [ %i.bc, %.lr.ph4.split.i.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !145, !range !62, !noalias !1255, !noundef !63
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 41
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !148, !range !62, !noalias !1255, !noundef !63 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !78, !noalias !1255
  %i.bo = load i64, ptr %i.ar, align 8, !tbaa !79, !noalias !1255 ; 2 uses
  %.neg.i.i.i.i.i = sub nsw i8 0, %i.bl
  %i.bp = sdiv i64 %i.bo, 8
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !28, !noalias !1255 ; 2 uses
  %i.bs = xor i8 %i.br, %.neg.i.i.i.i.i
  %i.bt = srem i64 %i.bo, 8
  %i.bu = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28, !noalias !1255
  %i.bw = and i8 %i.bs, %i.bv
  %i.bx = xor i8 %i.bw, %i.br
  store i8 %i.bx, ptr %i.bq, align 1, !tbaa !28, !noalias !1255
  br i1 %i.bm, label %_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = load i64, ptr %i.as, align 8, !tbaa !80, !noalias !1255
  %i.bz = add nsw i64 %i.by, 1
  store i64 %i.bz, ptr %i.as, align 8, !tbaa !80, !noalias !1255
  br label %_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i

_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !79, !noalias !1255
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br label %._crit_edge12.i392

._crit_edge12.i392:                               ; preds = %._crit_edge12.loopexit.i390, %.lr.ph14.split.i384
  %i.awa = phi i64 [ %.pre.i391, %._crit_edge12.loopexit.i390 ], [ %i.avx, %.lr.ph14.split.i384 ] ; 2 uses
  %i.awb = phi ptr [ %i.ayg, %._crit_edge12.loopexit.i390 ], [ %i.avy, %.lr.ph14.split.i384 ]
  %i.awc = add nuw nsw i64 %.02513.i385, 1        ; 2 uses
  %i.awd = icmp slt i64 %i.awc, %i.awa
  br i1 %i.awd, label %.lr.ph14.split.i384, label %._crit_edge15.i382, !llvm.loop !641

.lr.ph11.i387:                                    ; preds = %.lr.ph14.split.i384, %bb.bu
  %.0249.i388 = phi ptr [ %i.ayg, %bb.bu ], [ %i.avz, %.lr.ph14.split.i384 ] ; 3 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %.0249.i388, i64 40
  %i.awf = load i8, ptr %i.awe, align 8, !tbaa !145, !range !62, !noalias !1362, !noundef !63
  %i.awg = trunc nuw i8 %i.awf to i1
  br i1 %i.awg, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph11.i387
  %i.awh = getelementptr inbounds nuw i8, ptr %.0249.i388, i64 48
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !175, !noalias !1362 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 16
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !176, !noalias !1362
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awi, i64 24
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !57, !noalias !1362
  %i.awn = load i64, ptr %i.avb, align 8, !tbaa !151, !noalias !1362
  %i.awo = trunc i64 %i.awn to i32
  %i.awp = load ptr, ptr %i.avn, align 8, !tbaa !78, !noalias !1362
  %i.awq = load i64, ptr %i.avo, align 8, !tbaa !151, !noalias !1362
  %i.awr = getelementptr inbounds i8, ptr %i.awp, i64 %i.awq
  store i32 %i.awo, ptr %i.awr, align 1, !noalias !1362
  %i.aws = load i64, ptr %i.avo, align 8, !tbaa !151, !noalias !1362
  %i.awt = add nsw i64 %i.aws, 4
  store i64 %i.awt, ptr %i.avo, align 8, !tbaa !151, !noalias !1362
  %sext.i.i393 = shl i64 %i.awm, 32
  %i.awu = ashr exact i64 %sext.i.i393, 32        ; 2 uses
  %i.awv = load ptr, ptr %i.avt, align 8, !tbaa !78, !noalias !1362
  %i.aww = load i64, ptr %i.avb, align 8, !tbaa !151, !noalias !1362
  %i.awx = getelementptr inbounds i8, ptr %i.awv, i64 %i.aww
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awx, ptr align 1 %i.awk, i64 %i.awu, i1 false), !noalias !1362
  %i.awy = load i64, ptr %i.avb, align 8, !tbaa !151, !noalias !1362
  %i.awz = add nsw i64 %i.awy, %i.awu
  store i64 %i.awz, ptr %i.avb, align 8, !tbaa !151, !noalias !1362
  %i.axa = load ptr, ptr %i.avp, align 8, !tbaa !78, !noalias !1362
  %i.axb = load i64, ptr %i.avq, align 8, !tbaa !79, !noalias !1362 ; 2 uses
  %i.axc = sdiv i64 %i.axb, 8
  %i.axd = getelementptr inbounds i8, ptr %i.axa, i64 %i.axc ; 2 uses
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !28, !noalias !1362
  %i.axf = srem i64 %i.axb, 8
  %i.axg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.axf
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !28, !noalias !1362
  %i.axi = or i8 %i.axh, %i.axe
  store i8 %i.axi, ptr %i.axd, align 1, !tbaa !28, !noalias !1362
  %i.axj = load i64, ptr %i.avq, align 8, !tbaa !79, !noalias !1362
  %i.axk = load i64, ptr %i.avs, align 8, !tbaa !82, !noalias !1362
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph11.i387
  %i.axl = load i64, ptr %i.avb, align 8, !tbaa !151, !noalias !1362
  %i.axm = trunc i64 %i.axl to i32
  %i.axn = load ptr, ptr %i.avn, align 8, !tbaa !78, !noalias !1362
  %i.axo = load i64, ptr %i.avo, align 8, !tbaa !151, !noalias !1362
  %i.axp = getelementptr inbounds i8, ptr %i.axn, i64 %i.axo
  store i32 %i.axm, ptr %i.axp, align 1, !noalias !1362
  %i.axq = load i64, ptr %i.avo, align 8, !tbaa !151, !noalias !1362
  %i.axr = add nsw i64 %i.axq, 4
  store i64 %i.axr, ptr %i.avo, align 8, !tbaa !151, !noalias !1362
  %i.axs = load ptr, ptr %i.avp, align 8, !tbaa !78, !noalias !1362
  %i.axt = load i64, ptr %i.avq, align 8, !tbaa !79, !noalias !1362 ; 2 uses
  %i.axu = sdiv i64 %i.axt, 8
  %i.axv = getelementptr inbounds i8, ptr %i.axs, i64 %i.axu ; 2 uses
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !28, !noalias !1362
  %i.axx = srem i64 %i.axt, 8
  %i.axy = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.axx
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !28, !noalias !1362
  %i.aya = xor i8 %i.axz, -1
  %i.ayb = and i8 %i.axw, %i.aya
  store i8 %i.ayb, ptr %i.axv, align 1, !tbaa !28, !noalias !1362
  %i.ayc = load i64, ptr %i.avq, align 8, !tbaa !79, !noalias !1362
  %i.ayd = load i64, ptr %i.avs, align 8, !tbaa !81, !noalias !1362
  %i.aye = load <2 x i64>, ptr %i.avr, align 8, !tbaa !82, !noalias !1362
  %i.ayf = add nsw <2 x i64> %i.aye, splat (i64 1)
  store <2 x i64> %i.ayf, ptr %i.avr, align 8, !tbaa !82, !noalias !1362
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink1495.in.a = phi i64 [ %i.axj, %bb.bs ], [ %i.ayc, %bb.bt ]
  %.sink1494.in.a = phi i64 [ %i.axk, %bb.bs ], [ %i.ayd, %bb.bt ]
  %.sink1494.a = add nsw i64 %.sink1494.in.a, 1
  %.sink1495.a = add nsw i64 %.sink1495.in.a, 1
  store i64 %.sink1495.a, ptr %i.avq, align 8, !tbaa !79, !noalias !1362
  store i64 %.sink1494.a, ptr %i.avs, align 8, !tbaa !82, !noalias !1362
  %i.ayg = getelementptr inbounds nuw i8, ptr %.0249.i388, i64 48 ; 3 uses
  %i.ayh = load ptr, ptr %i.att, align 8, !tbaa !101, !noalias !1362
  %.not30.i389 = icmp eq ptr %i.ayg, %i.ayh
  br i1 %.not30.i389, label %._crit_edge12.loopexit.i390, label %.lr.ph11.i387, !llvm.loop !642

bb.bv:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.ayi = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1379 ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !101, !noalias !1379 ; 3 uses
  %.not3.i407 = icmp eq ptr %i.ayi, %i.ayk
  br i1 %.not3.i407, label %._crit_edge.i413, label %.lr.ph.i408

._crit_edge.i413:                                 ; preds = %bb.bx, %bb.bv
  %.0.lcssa.i414 = phi i64 [ 0, %bb.bv ], [ %.1.i411, %bb.bx ]
  %i.ayl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !139, !noalias !1379 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19, !noalias !1379
  %i.ayn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ayo = load i64, ptr %i.ayn, align 8, !tbaa !102, !noalias !1379
  %i.ayp = ptrtoint ptr %i.ayk to i64
  %i.ayq = ptrtoint ptr %i.ayi to i64
  %i.ayr = sub i64 %i.ayp, %i.ayq
  %i.ays = sdiv exact i64 %i.ayr, 48
  %i.ayt = mul nsw i64 %i.ayo, %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.aym, i64 112
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !77, !noalias !1380 ; 2 uses
  %i.ayw = load ptr, ptr %i.aym, align 8, !tbaa !59, !noalias !1380
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 16
  %i.ayy = load ptr, ptr %i.ayx, align 8, !noalias !1380
  %i.ayz = tail call noundef i64 %i.ayy(ptr noundef nonnull align 8 dereferenceable(144) %i.aym), !noalias !1380, !inline_history !647
  %i.aza = add nsw i64 %i.ayz, %i.ayt             ; 2 uses
  %.not.i.i415 = icmp sgt i64 %i.aza, %i.ayv
  br i1 %.not.i.i415, label %_ZN5arrow6StatusD2Ev.exit.i449, label %_ZN5arrow6StatusD2Ev.exit.thread.i416

_ZN5arrow6StatusD2Ev.exit.thread.i416:            ; preds = %._crit_edge.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19, !noalias !1379
  br label %_ZN5arrow6StatusD2Ev.exit37.i417

_ZN5arrow6StatusD2Ev.exit.i449:                   ; preds = %._crit_edge.i413
  %i.azb = shl nsw i64 %i.ayv, 1
  %.sroa.speculated.i.i.i450 = tail call noundef i64 @llvm.smax.i64(i64 %i.aza, i64 %i.azb)
  %i.azc = load ptr, ptr %i.aym, align 8, !tbaa !59, !noalias !1380
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 24
  %i.aze = load ptr, ptr %i.azd, align 8, !noalias !1380
  call void %i.aze(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %82, ptr noundef nonnull align 8 dereferenceable(144) %i.aym, i64 noundef %.sroa.speculated.i.i.i450), !noalias !1379, !inline_history !647
  %.pr.i451 = load ptr, ptr %82, align 8, !tbaa !31, !noalias !1381 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  store ptr %.pr.i451, ptr %0, align 8, !tbaa !31, !alias.scope !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19, !noalias !1379
  %i.azf = icmp eq ptr %.pr.i451, null
  br i1 %i.azf, label %_ZN5arrow6StatusD2Ev.exit37.i417, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

.lr.ph.i408:                                      ; preds = %bb.bv, %bb.bx
  %.05.i409 = phi i64 [ %.1.i411, %bb.bx ], [ 0, %bb.bv ] ; 2 uses
  %.0234.i410 = phi ptr [ %i.azo, %bb.bx ], [ %i.ayi, %bb.bv ] ; 3 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %.0234.i410, i64 40
  %i.azh = load i8, ptr %i.azg, align 8, !tbaa !145, !range !62, !noalias !1379, !noundef !63
  %i.azi = trunc nuw i8 %i.azh to i1
  br i1 %i.azi, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph.i408
  %i.azj = getelementptr inbounds nuw i8, ptr %.0234.i410, i64 48
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !175, !noalias !1379
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 24
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !57, !noalias !1379
  %i.azn = add nsw i64 %i.azm, %.05.i409
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i408
  %.1.i411 = phi i64 [ %i.azn, %bb.bw ], [ %.05.i409, %.lr.ph.i408 ] ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.0234.i410, i64 48 ; 2 uses
  %.not.i412 = icmp eq ptr %i.azo, %i.ayk
  br i1 %.not.i412, label %._crit_edge.i413, label %.lr.ph.i408, !llvm.loop !650

_ZN5arrow6StatusD2Ev.exit37.i417:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i449, %_ZN5arrow6StatusD2Ev.exit.thread.i416
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19, !noalias !1379
  %i.azp = load i64, ptr %i.ayn, align 8, !tbaa !102, !noalias !1379
  %i.azq = mul nsw i64 %i.azp, %.0.lcssa.i414
  call void @_ZN5arrow17BinaryViewBuilder11ReserveDataEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %83, ptr noundef nonnull align 8 dereferenceable(272) %i.aym, i64 noundef %i.azq), !noalias !1379
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.azr = load ptr, ptr %83, align 8, !tbaa !31, !noalias !1384 ; 2 uses
  store ptr %i.azr, ptr %0, align 8, !tbaa !31, !alias.scope !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19, !noalias !1379
  %i.azs = icmp eq ptr %i.azr, null
  br i1 %i.azs, label %_ZN5arrow6StatusD2Ev.exit39.preheader.i418, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit39.preheader.i418:       ; preds = %_ZN5arrow6StatusD2Ev.exit37.i417
  %i.azt = load i64, ptr %i.ayn, align 8, !tbaa !102, !noalias !1379 ; 2 uses
  %i.azu = icmp sgt i64 %i.azt, 0
  br i1 %i.azu, label %.lr.ph13.i420, label %_ZN5arrow6StatusD2Ev.exit39._crit_edge.i419

.lr.ph13.i420:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit39.preheader.i418
  %i.azv = getelementptr inbounds nuw i8, ptr %i.aym, i64 168 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.aym, i64 184 ; 6 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.aym, i64 48 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.aym, i64 80 ; 6 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.aym, i64 104 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.aym, i64 96 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.aym, i64 224
  %i.bac = getelementptr inbounds nuw i8, ptr %i.aym, i64 232
  %i.bad = getelementptr inbounds nuw i8, ptr %i.aym, i64 248 ; 3 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.aym, i64 256 ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.aym, i64 264 ; 2 uses
  %i.bag = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1379
  %i.bah = load ptr, ptr %i.ayj, align 8, !tbaa !101, !noalias !1379 ; 2 uses
  %i.bai = icmp eq ptr %i.bag, %i.bah
  br i1 %i.bai, label %_ZN5arrow6StatusD2Ev.exit39._crit_edge.i419, label %.lr.ph13.split.i424.preheader

.lr.ph13.split.i424.preheader:                    ; preds = %.lr.ph13.i420
  %.sroa.02.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx2301 = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i405, i64 4
  %.sroa.02.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i405, i64 4
  %.sroa.02.i.i.i.i.i.i406.8.i.i.i.i.i.i406.8.i.i.i.i.i.i406.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i405, i64 8
  br label %.lr.ph13.split.i424

_ZN5arrow6StatusD2Ev.exit39._crit_edge.i419:      ; preds = %_ZN5arrow6StatusD2Ev.exit39.i432, %.lr.ph13.i420, %_ZN5arrow6StatusD2Ev.exit39.preheader.i418
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !1385
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

.lr.ph13.split.i424:                              ; preds = %.lr.ph13.split.i424.preheader, %_ZN5arrow6StatusD2Ev.exit39.i432
  %i.baj = phi i64 [ %i.bam, %_ZN5arrow6StatusD2Ev.exit39.i432 ], [ %i.azt, %.lr.ph13.split.i424.preheader ]
  %i.bak = phi ptr [ %i.ban, %_ZN5arrow6StatusD2Ev.exit39.i432 ], [ %i.bah, %.lr.ph13.split.i424.preheader ] ; 2 uses
  %.02512.i425 = phi i64 [ %i.bao, %_ZN5arrow6StatusD2Ev.exit39.i432 ], [ 0, %.lr.ph13.split.i424.preheader ]
  %i.bal = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1379 ; 2 uses
  %.not307.i426 = icmp eq ptr %i.bal, %i.bak
  br i1 %.not307.i426, label %_ZN5arrow6StatusD2Ev.exit39.i432, label %.lr.ph10.i427

_ZN5arrow6StatusD2Ev.exit39.loopexit.i430:        ; preds = %bb.cc
  %.pre.i431 = load i64, ptr %i.ayn, align 8, !tbaa !102, !noalias !1379
  br label %_ZN5arrow6StatusD2Ev.exit39.i432

_ZN5arrow6StatusD2Ev.exit39.i432:                 ; preds = %_ZN5arrow6StatusD2Ev.exit39.loopexit.i430, %.lr.ph13.split.i424
  %i.bam = phi i64 [ %.pre.i431, %_ZN5arrow6StatusD2Ev.exit39.loopexit.i430 ], [ %i.baj, %.lr.ph13.split.i424 ] ; 2 uses
  %i.ban = phi ptr [ %i.bdc, %_ZN5arrow6StatusD2Ev.exit39.loopexit.i430 ], [ %i.bak, %.lr.ph13.split.i424 ]
  %i.bao = add nuw nsw i64 %.02512.i425, 1        ; 2 uses
  %i.bap = icmp slt i64 %i.bao, %i.bam
  br i1 %i.bap, label %.lr.ph13.split.i424, label %_ZN5arrow6StatusD2Ev.exit39._crit_edge.i419, !llvm.loop !655

.lr.ph10.i427:                                    ; preds = %.lr.ph13.split.i424, %bb.cc
  %.0248.i428 = phi ptr [ %i.bdc, %bb.cc ], [ %i.bal, %.lr.ph13.split.i424 ] ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.0248.i428, i64 40
  %i.bar = load i8, ptr %i.baq, align 8, !tbaa !145, !range !62, !noalias !1379, !noundef !63
  %i.bas = trunc nuw i8 %i.bar to i1
  br i1 %i.bas, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %.lr.ph10.i427
  %i.bat = getelementptr inbounds nuw i8, ptr %.0248.i428, i64 48
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !175, !noalias !1379 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 16
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !176, !noalias !1379 ; 3 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bau, i64 24
  %i.bay = load i64, ptr %i.bax, align 8, !tbaa !57, !noalias !1379 ; 7 uses
  %i.baz = load ptr, ptr %i.azx, align 8, !tbaa !78, !noalias !1379
  %i.bba = load i64, ptr %i.azy, align 8, !tbaa !79, !noalias !1379 ; 2 uses
  %i.bbb = sdiv i64 %i.bba, 8
  %i.bbc = getelementptr inbounds i8, ptr %i.baz, i64 %i.bbb ; 2 uses
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !28, !noalias !1379
  %i.bbe = srem i64 %i.bba, 8
  %i.bbf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bbe
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !28, !noalias !1379
  %i.bbh = or i8 %i.bbg, %i.bbd
  store i8 %i.bbh, ptr %i.bbc, align 1, !tbaa !28, !noalias !1379
  %i.bbi = load i64, ptr %i.azy, align 8, !tbaa !79, !noalias !1379
  %i.bbj = add nsw i64 %i.bbi, 1
  store i64 %i.bbj, ptr %i.azy, align 8, !tbaa !79, !noalias !1379
  %i.bbk = load i64, ptr %i.azz, align 8, !tbaa !82, !noalias !1379
  %i.bbl = add nsw i64 %i.bbk, 1
  store i64 %i.bbl, ptr %i.azz, align 8, !tbaa !82, !noalias !1379
  %i.bbm = icmp slt i64 %i.bay, 13
  %i.bbn = trunc i64 %i.bay to i32                ; 2 uses
  br i1 %i.bbm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i405)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.02.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx2301, i8 0, i64 12, i1 false), !noalias !1379
  store i32 %i.bbn, ptr %.sroa.02.i.i.i.i.i.i405, align 8, !tbaa !96, !noalias !1379
  %sext.i.i.i.i.i446 = shl i64 %i.bay, 32
  %i.bbo = ashr exact i64 %sext.i.i.i.i.i446, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.02.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.i406.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, ptr align 1 %i.baw, i64 %i.bbo, i1 false), !noalias !1379
  %.sroa.02.i.i.i.i.i.i406.0..sroa.02.i.i.i.i.i.i406.0..sroa.02.i.i.i.i.i.i406.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.0..sroa.02.i.i.0..sroa.02.i.0..sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.i.i.i.i.i447 = load i64, ptr %.sroa.02.i.i.i.i.i.i405, align 8, !noalias !1379
  %.sroa.02.i.i.i.i.i.i406.8..sroa.02.i.i.i.i.i.i406.8..sroa.02.i.i.i.i.i.i406.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.8..sroa.02.i.i.8..sroa.02.i.8..sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.i.i.i.i.i448 = load i64, ptr %.sroa.02.i.i.i.i.i.i406.8.i.i.i.i.i.i406.8.i.i.i.i.i.i406.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx, align 8, !noalias !1379
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i405)
  br label %_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i442

bb.ca:                                            ; preds = %bb.by
  %i.bbp = load ptr, ptr %i.bac, align 8, !tbaa !179, !noalias !1379
  %i.bbq = load ptr, ptr %i.bab, align 8, !tbaa !180, !noalias !1379
  %i.bbr = ptrtoint ptr %i.bbp to i64
  %i.bbs = ptrtoint ptr %i.bbq to i64
  %i.bbt = sub i64 %i.bbr, %i.bbs
  %i.bbu = lshr exact i64 %i.bbt, 4
  %i.bbv = add nuw nsw i64 %i.bbu, 4294967295
  %i.bbw = load i32, ptr %i.bad, align 8, !tbaa !185, !noalias !1379
  %.sroa.2.4.copyload.i.i.i.i.i.i433 = load i32, ptr %i.baw, align 1, !noalias !1379
  %.sroa.2.0.insert.ext.i.i.i.i.i.i434 = zext i32 %.sroa.2.4.copyload.i.i.i.i.i.i433 to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i.i435 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i434, 32
  %.sroa.03.0.insert.ext.i.i.i.i.i.i436 = and i64 %i.bay, 4294967295
  %.sroa.03.0.insert.insert.i.i.i.i.i.i437 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i435, %.sroa.03.0.insert.ext.i.i.i.i.i.i436
  %.sroa.65.8.insert.ext.i.i.i.i.i.i438 = zext i32 %i.bbw to i64
  %.sroa.65.8.insert.shift.i.i.i.i.i.i439 = shl nuw i64 %.sroa.65.8.insert.ext.i.i.i.i.i.i438, 32
  %.sroa.44.8.insert.ext.i.i.i.i.i.i440 = and i64 %i.bbv, 4294967295
  %.sroa.44.8.insert.insert.i.i.i.i.i.i441 = or disjoint i64 %.sroa.44.8.insert.ext.i.i.i.i.i.i440, %.sroa.65.8.insert.shift.i.i.i.i.i.i439
  %i.bbx = load ptr, ptr %i.bae, align 8, !tbaa !186, !noalias !1379
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbx, ptr nonnull align 1 %i.baw, i64 %i.bay, i1 false), !noalias !1379
  %i.bby = load ptr, ptr %i.bae, align 8, !tbaa !186, !noalias !1379
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 %i.bay
  store ptr %i.bbz, ptr %i.bae, align 8, !tbaa !186, !noalias !1379
  %i.bca = load i64, ptr %i.baf, align 8, !tbaa !187, !noalias !1379
  %i.bcb = sub nsw i64 %i.bca, %i.bay
  store i64 %i.bcb, ptr %i.baf, align 8, !tbaa !187, !noalias !1379
  %i.bcc = load i32, ptr %i.bad, align 8, !tbaa !185, !noalias !1379
  %i.bcd = add nsw i32 %i.bcc, %i.bbn
  store i32 %i.bcd, ptr %i.bad, align 8, !tbaa !185, !noalias !1379
  br label %_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i442

_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i442: ; preds = %bb.ca, %bb.bz
  %.sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.pn.i.i.i.i.i443 = phi i64 [ %.sroa.02.i.i.i.i.i.i406.0..sroa.02.i.i.i.i.i.i406.0..sroa.02.i.i.i.i.i.i406.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.0..sroa.02.i.i.0..sroa.02.i.0..sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.i.i.i.i.i447, %bb.bz ], [ %.sroa.03.0.insert.insert.i.i.i.i.i.i437, %bb.ca ]
  %.sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.pn.i.i.i.i.i444 = phi i64 [ %.sroa.02.i.i.i.i.i.i406.8..sroa.02.i.i.i.i.i.i406.8..sroa.02.i.i.i.i.i.i406.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.8..sroa.02.i.i.8..sroa.02.i.8..sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.i.i.i.i.i448, %bb.bz ], [ %.sroa.44.8.insert.insert.i.i.i.i.i.i441, %bb.ca ]
  %i.bce = load ptr, ptr %i.azv, align 8, !tbaa !78, !noalias !1379
  %i.bcf = load i64, ptr %i.azw, align 8, !tbaa !151, !noalias !1379
  %i.bcg = getelementptr inbounds i8, ptr %i.bce, i64 %i.bcf ; 2 uses
  store i64 %.sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.pn.i.i.i.i.i443, ptr %i.bcg, align 1, !noalias !1379
  %.sroa.2.0..sroa_idx.i.i.i.i.i445 = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8
  store i64 %.sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.pn.i.i.i.i.i444, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i445, align 1, !noalias !1379
  %i.bch = load i64, ptr %i.azw, align 8, !tbaa !151, !noalias !1379
  %i.bci = add nsw i64 %i.bch, 16
  store i64 %i.bci, ptr %i.azw, align 8, !tbaa !151, !noalias !1379
  br label %bb.cc

bb.cb:                                            ; preds = %.lr.ph10.i427
  %i.bcj = load ptr, ptr %i.azv, align 8, !tbaa !78, !noalias !1379
  %i.bck = load i64, ptr %i.azw, align 8, !tbaa !151, !noalias !1379
  %i.bcl = getelementptr inbounds i8, ptr %i.bcj, i64 %i.bck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bcl, i8 0, i64 16, i1 false), !noalias !1379
  %i.bcm = load i64, ptr %i.azw, align 8, !tbaa !151, !noalias !1379
  %i.bcn = add nsw i64 %i.bcm, 16
  store i64 %i.bcn, ptr %i.azw, align 8, !tbaa !151, !noalias !1379
  %i.bco = load ptr, ptr %i.azx, align 8, !tbaa !78, !noalias !1379
  %i.bcp = load i64, ptr %i.azy, align 8, !tbaa !79, !noalias !1379 ; 2 uses
  %i.bcq = sdiv i64 %i.bcp, 8
  %i.bcr = getelementptr inbounds i8, ptr %i.bco, i64 %i.bcq ; 2 uses
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !28, !noalias !1379
  %i.bct = srem i64 %i.bcp, 8
  %i.bcu = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !28, !noalias !1379
  %i.bcw = xor i8 %i.bcv, -1
  %i.bcx = and i8 %i.bcs, %i.bcw
  store i8 %i.bcx, ptr %i.bcr, align 1, !tbaa !28, !noalias !1379
  %i.bcy = load <2 x i64>, ptr %i.azy, align 8, !tbaa !82, !noalias !1379
  %i.bcz = add nsw <2 x i64> %i.bcy, splat (i64 1)
  store <2 x i64> %i.bcz, ptr %i.azy, align 8, !tbaa !82, !noalias !1379
  %i.bda = load <2 x i64>, ptr %i.baa, align 8, !tbaa !82, !noalias !1379
  %i.bdb = add nsw <2 x i64> %i.bda, splat (i64 1)
  store <2 x i64> %i.bdb, ptr %i.baa, align 8, !tbaa !82, !noalias !1379
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i442
  %i.bdc = getelementptr inbounds nuw i8, ptr %.0248.i428, i64 48 ; 3 uses
  %i.bdd = load ptr, ptr %i.ayj, align 8, !tbaa !101, !noalias !1379
  %.not30.i429 = icmp eq ptr %i.bdc, %i.bdd
  br i1 %.not30.i429, label %_ZN5arrow6StatusD2Ev.exit39.loopexit.i430, label %.lr.ph10.i427, !llvm.loop !656

bb.cd:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.bde = load ptr, ptr %2, align 8, !tbaa !100, !noalias !1386 ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !101, !noalias !1386 ; 3 uses
  %.not4.i452 = icmp eq ptr %i.bde, %i.bdg
  br i1 %.not4.i452, label %._crit_edge.i458, label %.lr.ph.i453

._crit_edge.i458:                                 ; preds = %bb.cf, %bb.cd
  %.0.lcssa.i459 = phi i64 [ 0, %bb.cd ], [ %.1.i456, %bb.cf ]
  %i.bdh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bdi = load ptr, ptr %i.bdh, align 8, !tbaa !139, !noalias !1386 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19, !noalias !1386
  %i.bdj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bdk = load i64, ptr %i.bdj, align 8, !tbaa !102, !noalias !1386
  %i.bdl = ptrtoint ptr %i.bdg to i64
  %i.bdm = ptrtoint ptr %i.bde to i64
  %i.bdn = sub i64 %i.bdl, %i.bdm
  %i.bdo = sdiv exact i64 %i.bdn, 48
  %i.bdp = mul nsw i64 %i.bdk, %i.bdo
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdi, i64 112
  %i.bdr = load i64, ptr %i.bdq, align 8, !tbaa !77, !noalias !1387 ; 2 uses
  %i.bds = load ptr, ptr %i.bdi, align 8, !tbaa !59, !noalias !1387
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 16
  %i.bdu = load ptr, ptr %i.bdt, align 8, !noalias !1387
  %i.bdv = tail call noundef i64 %i.bdu(ptr noundef nonnull align 8 dereferenceable(144) %i.bdi), !noalias !1387, !inline_history !661
  %i.bdw = add nsw i64 %i.bdv, %i.bdp             ; 2 uses
  %.not.i.i460 = icmp sgt i64 %i.bdw, %i.bdr
  br i1 %.not.i.i460, label %_ZN5arrow6StatusD2Ev.exit.i488, label %_ZN5arrow6StatusD2Ev.exit.thread.i461

_ZN5arrow6StatusD2Ev.exit.thread.i461:            ; preds = %._crit_edge.i458
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19, !noalias !1386
  br label %_ZN5arrow6StatusD2Ev.exit35.i462

_ZN5arrow6StatusD2Ev.exit.i488:                   ; preds = %._crit_edge.i458
  %i.bdx = shl nsw i64 %i.bdr, 1
  %.sroa.speculated.i.i.i489 = tail call noundef i64 @llvm.smax.i64(i64 %i.bdw, i64 %i.bdx)
  %i.bdy = load ptr, ptr %i.bdi, align 8, !tbaa !59, !noalias !1387
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 24
  %i.bea = load ptr, ptr %i.bdz, align 8, !noalias !1387
  call void %i.bea(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %80, ptr noundef nonnull align 8 dereferenceable(144) %i.bdi, i64 noundef %.sroa.speculated.i.i.i489), !noalias !1386, !inline_history !661
  %.pr.i490 = load ptr, ptr %80, align 8, !tbaa !31, !noalias !1389 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  store ptr %.pr.i490, ptr %0, align 8, !tbaa !31, !alias.scope !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19, !noalias !1386
  %i.beb = icmp eq ptr %.pr.i490, null
  br i1 %i.beb, label %_ZN5arrow6StatusD2Ev.exit35.i462, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

.lr.ph.i453:                                      ; preds = %bb.cd, %bb.cf
  %.06.i454 = phi i64 [ %.1.i456, %bb.cf ], [ 0, %bb.cd ] ; 2 uses
  %.0235.i455 = phi ptr [ %i.bek, %bb.cf ], [ %i.bde, %bb.cd ] ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %.0235.i455, i64 40
  %i.bed = load i8, ptr %i.bec, align 8, !tbaa !145, !range !62, !noalias !1386, !noundef !63
  %i.bee = trunc nuw i8 %i.bed to i1
  br i1 %i.bee, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i453
  %i.bef = getelementptr inbounds nuw i8, ptr %.0235.i455, i64 48
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !175, !noalias !1386
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 24
  %i.bei = load i64, ptr %i.beh, align 8, !tbaa !57, !noalias !1386
  %i.bej = add nsw i64 %i.bei, %.06.i454
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i453
  %.1.i456 = phi i64 [ %i.bej, %bb.ce ], [ %.06.i454, %.lr.ph.i453 ] ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %.0235.i455, i64 48 ; 2 uses
  %.not.i457 = icmp eq ptr %i.bek, %i.bdg
  br i1 %.not.i457, label %._crit_edge.i458, label %.lr.ph.i453, !llvm.loop !665

_ZN5arrow6StatusD2Ev.exit35.i462:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i488, %_ZN5arrow6StatusD2Ev.exit.thread.i461
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19, !noalias !1386
  %i.bel = load i64, ptr %i.bdj, align 8, !tbaa !102, !noalias !1386
  %i.bem = mul nsw i64 %i.bel, %.0.lcssa.i459     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19, !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19, !noalias !1393
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bdi, i64 240 ; 7 uses
  %i.beo = load i64, ptr %i.ben, align 8, !tbaa !151, !noalias !1393
  %i.bep = add nsw i64 %i.beo, %i.bem             ; 3 uses
  store i64 %i.bep, ptr %i.i, align 8, !tbaa !82, !noalias !1393
  %i.beq = icmp eq i64 %i.bep, 9223372036854775807
  br i1 %i.beq, label %_ZN5arrow6StatusD2Ev.exit.i.i482, label %_ZN5arrow6StatusD2Ev.exit6.thread.i.i463, !prof !90

_ZN5arrow6StatusD2Ev.exit6.thread.i.i463:         ; preds = %_ZN5arrow6StatusD2Ev.exit35.i462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19, !noalias !1393
  store ptr null, ptr %81, align 8, !tbaa !31, !alias.scope !1394, !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19, !noalias !1392
  br label %bb.cg

_ZN5arrow6StatusD2Ev.exit.i.i482:                 ; preds = %_ZN5arrow6StatusD2Ev.exit35.i462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19, !noalias !1393
  store i64 9223372036854775806, ptr %i.j, align 8, !tbaa !82, !noalias !1393
  call void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %79, ptr noundef nonnull align 1 dereferenceable(32) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(14) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19, !noalias !1393
  %.pr.i.i483 = load ptr, ptr %79, align 8, !tbaa !31, !noalias !1395 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19, !noalias !1393
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  store ptr %.pr.i.i483, ptr %81, align 8, !tbaa !31, !alias.scope !1397, !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19, !noalias !1392
  %i.ber = icmp eq ptr %.pr.i.i483, null
  br i1 %i.ber, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i485, label %_ZN5arrow6StatusD2Ev.exit37.thread2.i484

_ZN5arrow6StatusD2Ev.exit37.thread2.i484:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i482
  store ptr %.pr.i.i483, ptr %0, align 8, !tbaa !31, !alias.scope !1398
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19, !noalias !1386
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i485:      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i482
  %.pre.i.i486 = load i64, ptr %i.ben, align 8, !tbaa !151, !noalias !1399
  %.pre8.i.i487 = add nsw i64 %.pre.i.i486, %i.bem
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i485, %_ZN5arrow6StatusD2Ev.exit6.thread.i.i463
  %.pre-phi.i.i464 = phi i64 [ %.pre8.i.i487, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i485 ], [ %i.bep, %_ZN5arrow6StatusD2Ev.exit6.thread.i.i463 ] ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bdi, i64 232
  %i.bet = load i64, ptr %i.bes, align 8, !tbaa !91, !noalias !1399 ; 2 uses
  %.not.i.i.i.i465 = icmp sgt i64 %.pre-phi.i.i464, %i.bet
  br i1 %.not.i.i.i.i465, label %_ZN5arrow6StatusD2Ev.exit37.i479, label %_ZN5arrow6StatusD2Ev.exit37.thread.i466
end_hunk_1
begin_hunk_2_@_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev:bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !96
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, !prof !90

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !31
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, !prof !137

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread
  ret void
}

declare void @_ZN5arrow10MapBuilder6AppendEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(296)) local_unnamed_addr #1

declare void @_ZN5arrow20FixedSizeListBuilder6AppendEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !1712
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1712
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135, !noalias !1712, !nonnull !63, !align !125
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #19, !noalias !1712
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA21_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !1712 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA21_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow4util13StringBuilderIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA21_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !1712
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA21_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !1712
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_116AppendScalarImplINS1_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS8_SaIS8_EEEEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly %2) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %28 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %29 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %34 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %35 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %40 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %41 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %42 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %43 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %44 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %45 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %46 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %47 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %51 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %52 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %53 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %54 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %58 = alloca %"class.arrow::Result.261", align 8 ; 19 uses
  %59 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %66 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %67 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %68 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %69 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %71 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %72 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %73 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %74 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %76 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %77 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %78 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %79 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %81 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %.sroa.02.i.i.i.i.i.i481 = alloca %struct.anon.191, align 8 ; 7 uses
  %82 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %83 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %85 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %86 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %.sroa.02.i.i.i.i.i.i = alloca %struct.anon.191, align 8 ; 7 uses
  %87 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %88 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %89 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %90 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %91 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %92 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %93 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %94 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %95 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %96 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %97 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %98 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %99 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %100 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %101 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %102 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %103 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  switch i32 %i.p, label %bb.tl [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.i
    i32 2, label %bb.n
    i32 5, label %bb.s
    i32 4, label %bb.x
    i32 7, label %bb.ac
    i32 6, label %bb.ah
    i32 9, label %bb.am
    i32 8, label %bb.ar
    i32 10, label %bb.aw
    i32 11, label %bb.bb
    i32 12, label %bb.bg
    i32 13, label %bb.bl
    i32 39, label %bb.bt
    i32 14, label %bb.cc
    i32 40, label %bb.ck
    i32 34, label %bb.ct
    i32 35, label %bb.db
    i32 15, label %bb.dj
    i32 33, label %bb.do
    i32 16, label %bb.dt
    i32 17, label %bb.dy
    i32 18, label %bb.ed
    i32 19, label %bb.ei
    i32 20, label %bb.en
    i32 37, label %bb.es
    i32 21, label %bb.ex
    i32 22, label %bb.fc
    i32 43, label %bb.fh
    i32 44, label %bb.fm
    i32 23, label %bb.fr
    i32 24, label %bb.fw
    i32 25, label %bb.gb
    i32 36, label %bb.id
    i32 41, label %bb.kf
    i32 42, label %bb.mh
    i32 30, label %bb.oj
    i32 32, label %bb.qk
    i32 26, label %bb.sl
    i32 27, label %bb.ss
    i32 28, label %bb.sx
    i32 29, label %bb.ti
    i32 38, label %bb.tj
    i32 31, label %bb.tk
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA23_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(23) @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !139, !noalias !2549 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #19, !noalias !2549
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !2549
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !105, !noalias !2549
  %.val11.i.i = load ptr, ptr %2, align 8, !tbaa !105, !noalias !2549
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = ptrtoint ptr %.val11.i.i to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  %i.z = mul nsw i64 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77, !noalias !2550 ; 2 uses
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !59, !noalias !2550
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !2550
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %i.r), !noalias !2550, !inline_history !1719
  %i.ag = add nsw i64 %i.af, %i.z                 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.ag, %i.ab
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19, !noalias !2549
  br label %_ZN5arrow6StatusD2Ev.exit17.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.c
  %i.ah = shl nsw i64 %i.ab, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !59, !noalias !2550
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2550
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %103, ptr noundef nonnull align 8 dereferenceable(144) %i.r, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !2549, !inline_history !1719
  %.pr.i.i = load ptr, ptr %103, align 8, !tbaa !31, !noalias !2551 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !31, !alias.scope !2551
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19, !noalias !2549
  %i.al = icmp eq ptr %.pr.i.i, null
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit17.i.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit17.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i
  %i.am = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !2549 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph5.i.i, label %._crit_edge6.i.i

.lr.ph5.i.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit17.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 200 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 208 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %.val131.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !105, !noalias !2549
  br label %bb.d

._crit_edge6.i.i:                                 ; preds = %._crit_edge.i.i, %_ZN5arrow6StatusD2Ev.exit17.i.i
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !2553
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph5.i.i
  %i.av = phi i64 [ %i.am, %.lr.ph5.i.i ], [ %i.ay, %._crit_edge.i.i ]
  %.val131.i.i = phi ptr [ %.val131.pre.i.i, %.lr.ph5.i.i ], [ %.val1317.i.i, %._crit_edge.i.i ] ; 2 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph5.i.i ], [ %i.az, %._crit_edge.i.i ]
  %i.aw = load i64, ptr %2, align 8, !tbaa !105, !noalias !2549
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %.not2.i.i = icmp eq ptr %.val131.i.i, %i.ax
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !2549
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.ay = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %.val1317.i.i = phi ptr [ %i.dj, %._crit_edge.loopexit.i.i ], [ %.val131.i.i, %bb.d ]
  %i.az = add nuw nsw i64 %.04.i.i, 1             ; 2 uses
  %i.ba = icmp slt i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.d, label %._crit_edge6.i.i, !llvm.loop !1724

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.h
  %.sroa.0.03.i.i = phi ptr [ %i.dj, %bb.h ], [ %i.ax, %bb.d ] ; 2 uses
  %.val14.val.i.i = load ptr, ptr %.sroa.0.03.i.i, align 8, !tbaa !107, !noalias !2549 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val14.val.i.i, i64 40
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !145, !range !62, !noalias !2549, !noundef !63
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val14.val.i.i, i64 41
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !148, !range !62, !noalias !2549, !noundef !63 ; 2 uses
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !78, !noalias !2549
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !79, !noalias !2549 ; 2 uses
  %.neg.i.i.i.i.i = sub nsw i8 0, %i.bf
  %i.bj = sdiv i64 %i.bi, 8
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !28, !noalias !2549 ; 2 uses
  %i.bm = xor i8 %i.bl, %.neg.i.i.i.i.i
  %i.bn = srem i64 %i.bi, 8
  %i.bo = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !28, !noalias !2549
  %i.bq = and i8 %i.bm, %i.bp
  %i.br = xor i8 %i.bq, %i.bl
  store i8 %i.br, ptr %i.bk, align 1, !tbaa !28, !noalias !2549
  br i1 %i.bg, label %_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %i.aq, align 8, !tbaa !80, !noalias !2549
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.aq, align 8, !tbaa !80, !noalias !2549
  br label %_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i

_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i: ; preds = %bb.f, %bb.e
  %i.bu = load i64, ptr %i.ap, align 8, !tbaa !79, !noalias !2549
end_hunk_2
begin_hunk_3_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_116AppendScalarImplINS1_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS8_SaIS8_EEEEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

._crit_edge14.loopexit.i465:                      ; preds = %bb.cj
  %.pre.i466 = load i64, ptr %i.aqf, align 8, !tbaa !111, !noalias !2655
  br label %._crit_edge14.i467

._crit_edge14.i467:                               ; preds = %._crit_edge14.loopexit.i465, %bb.cg
  %i.ase = phi i64 [ %.pre.i466, %._crit_edge14.loopexit.i465 ], [ %i.asb, %bb.cg ] ; 2 uses
  %.val26918.i468 = phi ptr [ %i.auj, %._crit_edge14.loopexit.i465 ], [ %.val269.i457, %bb.cg ]
  %i.asf = add nuw nsw i64 %.01715.i458, 1        ; 2 uses
  %i.asg = icmp slt i64 %i.asf, %i.ase
  br i1 %i.asg, label %bb.cg, label %._crit_edge17.i454, !llvm.loop !1935

.lr.ph13.i460:                                    ; preds = %bb.cg, %bb.cj
  %.sroa.0.011.i461 = phi ptr [ %i.auj, %bb.cj ], [ %i.asd, %bb.cg ] ; 2 uses
  %.val29.val.i462 = load ptr, ptr %.sroa.0.011.i461, align 8, !tbaa !107, !noalias !2655 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.val29.val.i462, i64 40
  %i.asi = load i8, ptr %i.ash, align 8, !tbaa !145, !range !62, !noalias !2655, !noundef !63
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph13.i460
  %i.ask = getelementptr inbounds nuw i8, ptr %.val29.val.i462, i64 48
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !175, !noalias !2655 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 16
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !176, !noalias !2655
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asl, i64 24
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !57, !noalias !2655
  %i.asq = load i64, ptr %i.ari, align 8, !tbaa !151, !noalias !2655
  %i.asr = trunc i64 %i.asq to i32
  %i.ass = load ptr, ptr %i.aru, align 8, !tbaa !78, !noalias !2655
  %i.ast = load i64, ptr %i.arv, align 8, !tbaa !151, !noalias !2655
  %i.asu = getelementptr inbounds i8, ptr %i.ass, i64 %i.ast
  store i32 %i.asr, ptr %i.asu, align 1, !noalias !2655
  %i.asv = load i64, ptr %i.arv, align 8, !tbaa !151, !noalias !2655
  %i.asw = add nsw i64 %i.asv, 4
  store i64 %i.asw, ptr %i.arv, align 8, !tbaa !151, !noalias !2655
  %sext.i.i469 = shl i64 %i.asp, 32
  %i.asx = ashr exact i64 %sext.i.i469, 32        ; 2 uses
  %i.asy = load ptr, ptr %i.asa, align 8, !tbaa !78, !noalias !2655
  %i.asz = load i64, ptr %i.ari, align 8, !tbaa !151, !noalias !2655
  %i.ata = getelementptr inbounds i8, ptr %i.asy, i64 %i.asz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ata, ptr align 1 %i.asn, i64 %i.asx, i1 false), !noalias !2655
  %i.atb = load i64, ptr %i.ari, align 8, !tbaa !151, !noalias !2655
  %i.atc = add nsw i64 %i.atb, %i.asx
  store i64 %i.atc, ptr %i.ari, align 8, !tbaa !151, !noalias !2655
  %i.atd = load ptr, ptr %i.arw, align 8, !tbaa !78, !noalias !2655
  %i.ate = load i64, ptr %i.arx, align 8, !tbaa !79, !noalias !2655 ; 2 uses
  %i.atf = sdiv i64 %i.ate, 8
  %i.atg = getelementptr inbounds i8, ptr %i.atd, i64 %i.atf ; 2 uses
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !28, !noalias !2655
  %i.ati = srem i64 %i.ate, 8
  %i.atj = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ati
  %i.atk = load i8, ptr %i.atj, align 1, !tbaa !28, !noalias !2655
  %i.atl = or i8 %i.atk, %i.ath
  store i8 %i.atl, ptr %i.atg, align 1, !tbaa !28, !noalias !2655
  %i.atm = load i64, ptr %i.arx, align 8, !tbaa !79, !noalias !2655
  %i.atn = load i64, ptr %i.arz, align 8, !tbaa !82, !noalias !2655
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph13.i460
  %i.ato = load i64, ptr %i.ari, align 8, !tbaa !151, !noalias !2655
  %i.atp = trunc i64 %i.ato to i32
  %i.atq = load ptr, ptr %i.aru, align 8, !tbaa !78, !noalias !2655
  %i.atr = load i64, ptr %i.arv, align 8, !tbaa !151, !noalias !2655
  %i.ats = getelementptr inbounds i8, ptr %i.atq, i64 %i.atr
  store i32 %i.atp, ptr %i.ats, align 1, !noalias !2655
  %i.att = load i64, ptr %i.arv, align 8, !tbaa !151, !noalias !2655
  %i.atu = add nsw i64 %i.att, 4
  store i64 %i.atu, ptr %i.arv, align 8, !tbaa !151, !noalias !2655
  %i.atv = load ptr, ptr %i.arw, align 8, !tbaa !78, !noalias !2655
  %i.atw = load i64, ptr %i.arx, align 8, !tbaa !79, !noalias !2655 ; 2 uses
  %i.atx = sdiv i64 %i.atw, 8
  %i.aty = getelementptr inbounds i8, ptr %i.atv, i64 %i.atx ; 2 uses
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !28, !noalias !2655
  %i.aua = srem i64 %i.atw, 8
  %i.aub = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.aua
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !28, !noalias !2655
  %i.aud = xor i8 %i.auc, -1
  %i.aue = and i8 %i.atz, %i.aud
  store i8 %i.aue, ptr %i.aty, align 1, !tbaa !28, !noalias !2655
  %i.auf = load i64, ptr %i.arx, align 8, !tbaa !79, !noalias !2655
  %i.aug = load i64, ptr %i.arz, align 8, !tbaa !81, !noalias !2655
  %i.auh = load <2 x i64>, ptr %i.ary, align 8, !tbaa !82, !noalias !2655
  %i.aui = add nsw <2 x i64> %i.auh, splat (i64 1)
  store <2 x i64> %i.aui, ptr %i.ary, align 8, !tbaa !82, !noalias !2655
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink1700.in.a = phi i64 [ %i.atm, %bb.ch ], [ %i.auf, %bb.ci ]
  %.sink1699.in.a = phi i64 [ %i.atn, %bb.ch ], [ %i.aug, %bb.ci ]
  %.sink1699.a = add nsw i64 %.sink1699.in.a, 1
  %.sink1700.a = add nsw i64 %.sink1700.in.a, 1
  store i64 %.sink1700.a, ptr %i.arx, align 8, !tbaa !79, !noalias !2655
  store i64 %.sink1699.a, ptr %i.arz, align 8, !tbaa !82, !noalias !2655
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i461, i64 16 ; 3 uses
  %.val26.i463 = load ptr, ptr %i.aqc, align 8, !tbaa !105, !noalias !2655
  %.not4.i464 = icmp eq ptr %i.auj, %.val26.i463
  br i1 %.not4.i464, label %._crit_edge14.loopexit.i465, label %.lr.ph13.i460, !llvm.loop !1936

bb.ck:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  %i.auk = load i64, ptr %2, align 8, !noalias !2672 ; 2 uses
  %i.aul = inttoptr i64 %i.auk to ptr             ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val28.i483 = load ptr, ptr %i.aum, align 8, !tbaa !105, !noalias !2672 ; 3 uses
  %.not4.i484 = icmp eq ptr %.val28.i483, %i.aul
  br i1 %.not4.i484, label %._crit_edge.i491, label %.lr.ph.i485

._crit_edge.i491:                                 ; preds = %bb.cm, %bb.ck
  %.0.lcssa.i492 = phi i64 [ 0, %bb.ck ], [ %.1.i489, %bb.cm ]
  %i.aun = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !139, !noalias !2672 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19, !noalias !2672
  %i.aup = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.auq = load i64, ptr %i.aup, align 8, !tbaa !111, !noalias !2672
  %i.aur = ptrtoint ptr %.val28.i483 to i64
  %i.aus = sub i64 %i.aur, %i.auk
  %i.aut = ashr exact i64 %i.aus, 4
  %i.auu = mul nsw i64 %i.auq, %i.aut
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auo, i64 112
  %i.auw = load i64, ptr %i.auv, align 8, !tbaa !77, !noalias !2673 ; 2 uses
  %i.aux = load ptr, ptr %i.auo, align 8, !tbaa !59, !noalias !2673
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 16
  %i.auz = load ptr, ptr %i.auy, align 8, !noalias !2673
  %i.ava = tail call noundef i64 %i.auz(ptr noundef nonnull align 8 dereferenceable(144) %i.auo), !noalias !2673, !inline_history !1941
  %i.avb = add nsw i64 %i.ava, %i.auu             ; 2 uses
  %.not.i.i493 = icmp sgt i64 %i.avb, %i.auw
  br i1 %.not.i.i493, label %_ZN5arrow6StatusD2Ev.exit.i530, label %_ZN5arrow6StatusD2Ev.exit.thread.i494

_ZN5arrow6StatusD2Ev.exit.thread.i494:            ; preds = %._crit_edge.i491
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19, !noalias !2672
  br label %_ZN5arrow6StatusD2Ev.exit35.i495

_ZN5arrow6StatusD2Ev.exit.i530:                   ; preds = %._crit_edge.i491
  %i.avc = shl nsw i64 %i.auw, 1
  %.sroa.speculated.i.i.i531 = tail call noundef i64 @llvm.smax.i64(i64 %i.avb, i64 %i.avc)
  %i.avd = load ptr, ptr %i.auo, align 8, !tbaa !59, !noalias !2673
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 24
  %i.avf = load ptr, ptr %i.ave, align 8, !noalias !2673
  call void %i.avf(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %82, ptr noundef nonnull align 8 dereferenceable(144) %i.auo, i64 noundef %.sroa.speculated.i.i.i531), !noalias !2672, !inline_history !1941
  %.pr.i532 = load ptr, ptr %82, align 8, !tbaa !31, !noalias !2674 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  store ptr %.pr.i532, ptr %0, align 8, !tbaa !31, !alias.scope !2674
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19, !noalias !2672
  %i.avg = icmp eq ptr %.pr.i532, null
  br i1 %i.avg, label %_ZN5arrow6StatusD2Ev.exit35.i495, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

.lr.ph.i485:                                      ; preds = %bb.ck, %bb.cm
  %.06.i486 = phi i64 [ %.1.i489, %bb.cm ], [ 0, %bb.ck ] ; 2 uses
  %.sroa.01.05.i487 = phi ptr [ %i.avp, %bb.cm ], [ %i.aul, %bb.ck ] ; 2 uses
  %.val30.val.i488 = load ptr, ptr %.sroa.01.05.i487, align 8, !tbaa !107, !noalias !2672 ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.val30.val.i488, i64 40
  %i.avi = load i8, ptr %i.avh, align 8, !tbaa !145, !range !62, !noalias !2672, !noundef !63
  %i.avj = trunc nuw i8 %i.avi to i1
  br i1 %i.avj, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i485
  %i.avk = getelementptr inbounds nuw i8, ptr %.val30.val.i488, i64 48
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !175, !noalias !2672
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 24
  %i.avn = load i64, ptr %i.avm, align 8, !tbaa !57, !noalias !2672
  %i.avo = add nsw i64 %i.avn, %.06.i486
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i485
  %.1.i489 = phi i64 [ %i.avo, %bb.cl ], [ %.06.i486, %.lr.ph.i485 ] ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i487, i64 16 ; 2 uses
  %.not.i490 = icmp eq ptr %i.avp, %.val28.i483
  br i1 %.not.i490, label %._crit_edge.i491, label %.lr.ph.i485, !llvm.loop !1944

_ZN5arrow6StatusD2Ev.exit35.i495:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i530, %_ZN5arrow6StatusD2Ev.exit.thread.i494
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19, !noalias !2672
  %i.avq = load i64, ptr %i.aup, align 8, !tbaa !111, !noalias !2672
  %i.avr = mul nsw i64 %i.avq, %.0.lcssa.i492
  call void @_ZN5arrow17BinaryViewBuilder11ReserveDataEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %83, ptr noundef nonnull align 8 dereferenceable(272) %i.auo, i64 noundef %i.avr), !noalias !2672
  call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  %i.avs = load ptr, ptr %83, align 8, !tbaa !31, !noalias !2677 ; 2 uses
  store ptr %i.avs, ptr %0, align 8, !tbaa !31, !alias.scope !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19, !noalias !2672
  %i.avt = icmp eq ptr %i.avs, null
  br i1 %i.avt, label %_ZN5arrow6StatusD2Ev.exit37.preheader.i496, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit37.preheader.i496:       ; preds = %_ZN5arrow6StatusD2Ev.exit35.i495
  %i.avu = load i64, ptr %i.aup, align 8, !tbaa !111, !noalias !2672 ; 2 uses
  %i.avv = icmp sgt i64 %i.avu, 0
  br i1 %i.avv, label %.lr.ph15.i498, label %_ZN5arrow6StatusD2Ev.exit37._crit_edge.i497

.lr.ph15.i498:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit37.preheader.i496
  %i.avw = getelementptr inbounds nuw i8, ptr %i.auo, i64 168 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.auo, i64 184 ; 6 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.auo, i64 48 ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.auo, i64 80 ; 6 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.auo, i64 104 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.auo, i64 96 ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.auo, i64 224
  %i.awd = getelementptr inbounds nuw i8, ptr %i.auo, i64 232
  %i.awe = getelementptr inbounds nuw i8, ptr %i.auo, i64 248 ; 3 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.auo, i64 256 ; 3 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.auo, i64 264 ; 2 uses
  %.val268.pre.i499 = load ptr, ptr %i.aum, align 8, !tbaa !105, !noalias !2672
  %.sroa.02.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx2410 = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i481, i64 4
  %.sroa.02.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i481, i64 4
  %.sroa.02.i.i.i.i.i.i482.8.i.i.i.i.i.i482.8.i.i.i.i.i.i482.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i481, i64 8
  br label %bb.cn

_ZN5arrow6StatusD2Ev.exit37._crit_edge.i497:      ; preds = %_ZN5arrow6StatusD2Ev.exit37.i512, %_ZN5arrow6StatusD2Ev.exit37.preheader.i496
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !2678
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

bb.cn:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit37.i512, %.lr.ph15.i498
  %i.awh = phi i64 [ %i.avu, %.lr.ph15.i498 ], [ %i.awk, %_ZN5arrow6StatusD2Ev.exit37.i512 ]
  %.val268.i502 = phi ptr [ %.val268.pre.i499, %.lr.ph15.i498 ], [ %.val26817.i513, %_ZN5arrow6StatusD2Ev.exit37.i512 ] ; 2 uses
  %.01714.i503 = phi i64 [ 0, %.lr.ph15.i498 ], [ %i.awl, %_ZN5arrow6StatusD2Ev.exit37.i512 ]
  %i.awi = load i64, ptr %2, align 8, !tbaa !105, !noalias !2672
  %i.awj = inttoptr i64 %i.awi to ptr             ; 2 uses
  %.not39.i504 = icmp eq ptr %.val268.i502, %i.awj
  br i1 %.not39.i504, label %_ZN5arrow6StatusD2Ev.exit37.i512, label %.lr.ph12.i505

_ZN5arrow6StatusD2Ev.exit37.loopexit.i510:        ; preds = %bb.cs
  %.pre.i511 = load i64, ptr %i.aup, align 8, !tbaa !111, !noalias !2672
  br label %_ZN5arrow6StatusD2Ev.exit37.i512

_ZN5arrow6StatusD2Ev.exit37.i512:                 ; preds = %_ZN5arrow6StatusD2Ev.exit37.loopexit.i510, %bb.cn
  %i.awk = phi i64 [ %.pre.i511, %_ZN5arrow6StatusD2Ev.exit37.loopexit.i510 ], [ %i.awh, %bb.cn ] ; 2 uses
  %.val26817.i513 = phi ptr [ %i.ayz, %_ZN5arrow6StatusD2Ev.exit37.loopexit.i510 ], [ %.val268.i502, %bb.cn ]
  %i.awl = add nuw nsw i64 %.01714.i503, 1        ; 2 uses
  %i.awm = icmp slt i64 %i.awl, %i.awk
  br i1 %i.awm, label %bb.cn, label %_ZN5arrow6StatusD2Ev.exit37._crit_edge.i497, !llvm.loop !1949

.lr.ph12.i505:                                    ; preds = %bb.cn, %bb.cs
  %.sroa.0.010.i506 = phi ptr [ %i.ayz, %bb.cs ], [ %i.awj, %bb.cn ] ; 2 uses
  %.val29.val.i507 = load ptr, ptr %.sroa.0.010.i506, align 8, !tbaa !107, !noalias !2672 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.val29.val.i507, i64 40
  %i.awo = load i8, ptr %i.awn, align 8, !tbaa !145, !range !62, !noalias !2672, !noundef !63
  %i.awp = trunc nuw i8 %i.awo to i1
  br i1 %i.awp, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %.lr.ph12.i505
  %i.awq = getelementptr inbounds nuw i8, ptr %.val29.val.i507, i64 48
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !175, !noalias !2672 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 16
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !176, !noalias !2672 ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awr, i64 24
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !57, !noalias !2672 ; 7 uses
  %i.aww = load ptr, ptr %i.avy, align 8, !tbaa !78, !noalias !2672
  %i.awx = load i64, ptr %i.avz, align 8, !tbaa !79, !noalias !2672 ; 2 uses
  %i.awy = sdiv i64 %i.awx, 8
  %i.awz = getelementptr inbounds i8, ptr %i.aww, i64 %i.awy ; 2 uses
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !28, !noalias !2672
  %i.axb = srem i64 %i.awx, 8
  %i.axc = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.axb
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !28, !noalias !2672
  %i.axe = or i8 %i.axd, %i.axa
  store i8 %i.axe, ptr %i.awz, align 1, !tbaa !28, !noalias !2672
  %i.axf = load i64, ptr %i.avz, align 8, !tbaa !79, !noalias !2672
  %i.axg = add nsw i64 %i.axf, 1
  store i64 %i.axg, ptr %i.avz, align 8, !tbaa !79, !noalias !2672
  %i.axh = load i64, ptr %i.awa, align 8, !tbaa !82, !noalias !2672
  %i.axi = add nsw i64 %i.axh, 1
  store i64 %i.axi, ptr %i.awa, align 8, !tbaa !82, !noalias !2672
  %i.axj = icmp slt i64 %i.awv, 13
  %i.axk = trunc i64 %i.awv to i32                ; 2 uses
  br i1 %i.axj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i481)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.02.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx2410, i8 0, i64 12, i1 false), !noalias !2672
  store i32 %i.axk, ptr %.sroa.02.i.i.i.i.i.i481, align 8, !tbaa !96, !noalias !2672
  %sext.i.i.i.i.i527 = shl i64 %i.awv, 32
  %i.axl = ashr exact i64 %sext.i.i.i.i.i527, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.02.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.i482.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, ptr align 1 %i.awt, i64 %i.axl, i1 false), !noalias !2672
  %.sroa.02.i.i.i.i.i.i482.0..sroa.02.i.i.i.i.i.i482.0..sroa.02.i.i.i.i.i.i482.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.0..sroa.02.i.i.0..sroa.02.i.0..sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.i.i.i.i.i528 = load i64, ptr %.sroa.02.i.i.i.i.i.i481, align 8, !noalias !2672
  %.sroa.02.i.i.i.i.i.i482.8..sroa.02.i.i.i.i.i.i482.8..sroa.02.i.i.i.i.i.i482.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.8..sroa.02.i.i.8..sroa.02.i.8..sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.i.i.i.i.i529 = load i64, ptr %.sroa.02.i.i.i.i.i.i482.8.i.i.i.i.i.i482.8.i.i.i.i.i.i482.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx, align 8, !noalias !2672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i481)
  br label %_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i523

bb.cq:                                            ; preds = %bb.co
  %i.axm = load ptr, ptr %i.awd, align 8, !tbaa !179, !noalias !2672
  %i.axn = load ptr, ptr %i.awc, align 8, !tbaa !180, !noalias !2672
  %i.axo = ptrtoint ptr %i.axm to i64
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = sub i64 %i.axo, %i.axp
  %i.axr = lshr exact i64 %i.axq, 4
  %i.axs = add nuw nsw i64 %i.axr, 4294967295
  %i.axt = load i32, ptr %i.awe, align 8, !tbaa !185, !noalias !2672
  %.sroa.2.4.copyload.i.i.i.i.i.i514 = load i32, ptr %i.awt, align 1, !noalias !2672
  %.sroa.2.0.insert.ext.i.i.i.i.i.i515 = zext i32 %.sroa.2.4.copyload.i.i.i.i.i.i514 to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i.i516 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i515, 32
  %.sroa.03.0.insert.ext.i.i.i.i.i.i517 = and i64 %i.awv, 4294967295
  %.sroa.03.0.insert.insert.i.i.i.i.i.i518 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i516, %.sroa.03.0.insert.ext.i.i.i.i.i.i517
  %.sroa.65.8.insert.ext.i.i.i.i.i.i519 = zext i32 %i.axt to i64
  %.sroa.65.8.insert.shift.i.i.i.i.i.i520 = shl nuw i64 %.sroa.65.8.insert.ext.i.i.i.i.i.i519, 32
  %.sroa.44.8.insert.ext.i.i.i.i.i.i521 = and i64 %i.axs, 4294967295
  %.sroa.44.8.insert.insert.i.i.i.i.i.i522 = or disjoint i64 %.sroa.44.8.insert.ext.i.i.i.i.i.i521, %.sroa.65.8.insert.shift.i.i.i.i.i.i520
  %i.axu = load ptr, ptr %i.awf, align 8, !tbaa !186, !noalias !2672
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axu, ptr nonnull align 1 %i.awt, i64 %i.awv, i1 false), !noalias !2672
  %i.axv = load ptr, ptr %i.awf, align 8, !tbaa !186, !noalias !2672
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 %i.awv
  store ptr %i.axw, ptr %i.awf, align 8, !tbaa !186, !noalias !2672
  %i.axx = load i64, ptr %i.awg, align 8, !tbaa !187, !noalias !2672
  %i.axy = sub nsw i64 %i.axx, %i.awv
  store i64 %i.axy, ptr %i.awg, align 8, !tbaa !187, !noalias !2672
  %i.axz = load i32, ptr %i.awe, align 8, !tbaa !185, !noalias !2672
  %i.aya = add nsw i32 %i.axz, %i.axk
  store i32 %i.aya, ptr %i.awe, align 8, !tbaa !185, !noalias !2672
  br label %_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i523

_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i523: ; preds = %bb.cq, %bb.cp
  %.sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.pn.i.i.i.i.i524 = phi i64 [ %.sroa.02.i.i.i.i.i.i482.0..sroa.02.i.i.i.i.i.i482.0..sroa.02.i.i.i.i.i.i482.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.0..sroa.02.i.i.0..sroa.02.i.0..sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.i.i.i.i.i528, %bb.cp ], [ %.sroa.03.0.insert.insert.i.i.i.i.i.i518, %bb.cq ]
  %.sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.pn.i.i.i.i.i525 = phi i64 [ %.sroa.02.i.i.i.i.i.i482.8..sroa.02.i.i.i.i.i.i482.8..sroa.02.i.i.i.i.i.i482.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.8..sroa.02.i.i.8..sroa.02.i.8..sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.i.i.i.i.i529, %bb.cp ], [ %.sroa.44.8.insert.insert.i.i.i.i.i.i522, %bb.cq ]
  %i.ayb = load ptr, ptr %i.avw, align 8, !tbaa !78, !noalias !2672
  %i.ayc = load i64, ptr %i.avx, align 8, !tbaa !151, !noalias !2672
  %i.ayd = getelementptr inbounds i8, ptr %i.ayb, i64 %i.ayc ; 2 uses
  store i64 %.sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.pn.i.i.i.i.i524, ptr %i.ayd, align 1, !noalias !2672
  %.sroa.2.0..sroa_idx.i.i.i.i.i526 = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  store i64 %.sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.pn.i.i.i.i.i525, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i526, align 1, !noalias !2672
  %i.aye = load i64, ptr %i.avx, align 8, !tbaa !151, !noalias !2672
  %i.ayf = add nsw i64 %i.aye, 16
  store i64 %i.ayf, ptr %i.avx, align 8, !tbaa !151, !noalias !2672
  br label %bb.cs

bb.cr:                                            ; preds = %.lr.ph12.i505
  %i.ayg = load ptr, ptr %i.avw, align 8, !tbaa !78, !noalias !2672
  %i.ayh = load i64, ptr %i.avx, align 8, !tbaa !151, !noalias !2672
  %i.ayi = getelementptr inbounds i8, ptr %i.ayg, i64 %i.ayh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ayi, i8 0, i64 16, i1 false), !noalias !2672
  %i.ayj = load i64, ptr %i.avx, align 8, !tbaa !151, !noalias !2672
  %i.ayk = add nsw i64 %i.ayj, 16
  store i64 %i.ayk, ptr %i.avx, align 8, !tbaa !151, !noalias !2672
  %i.ayl = load ptr, ptr %i.avy, align 8, !tbaa !78, !noalias !2672
  %i.aym = load i64, ptr %i.avz, align 8, !tbaa !79, !noalias !2672 ; 2 uses
  %i.ayn = sdiv i64 %i.aym, 8
  %i.ayo = getelementptr inbounds i8, ptr %i.ayl, i64 %i.ayn ; 2 uses
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !28, !noalias !2672
  %i.ayq = srem i64 %i.aym, 8
  %i.ayr = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ayq
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !28, !noalias !2672
  %i.ayt = xor i8 %i.ays, -1
  %i.ayu = and i8 %i.ayp, %i.ayt
  store i8 %i.ayu, ptr %i.ayo, align 1, !tbaa !28, !noalias !2672
  %i.ayv = load <2 x i64>, ptr %i.avz, align 8, !tbaa !82, !noalias !2672
  %i.ayw = add nsw <2 x i64> %i.ayv, splat (i64 1)
  store <2 x i64> %i.ayw, ptr %i.avz, align 8, !tbaa !82, !noalias !2672
  %i.ayx = load <2 x i64>, ptr %i.awb, align 8, !tbaa !82, !noalias !2672
  %i.ayy = add nsw <2 x i64> %i.ayx, splat (i64 1)
  store <2 x i64> %i.ayy, ptr %i.awb, align 8, !tbaa !82, !noalias !2672
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN5arrow17BinaryViewBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i523
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i506, i64 16 ; 3 uses
  %.val26.i508 = load ptr, ptr %i.aum, align 8, !tbaa !105, !noalias !2672
  %.not3.i509 = icmp eq ptr %i.ayz, %.val26.i508
  br i1 %.not3.i509, label %_ZN5arrow6StatusD2Ev.exit37.loopexit.i510, label %.lr.ph12.i505, !llvm.loop !1950

bb.ct:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  %i.aza = load i64, ptr %2, align 8, !noalias !2679 ; 2 uses
  %i.azb = inttoptr i64 %i.aza to ptr             ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val28.i533 = load ptr, ptr %i.azc, align 8, !tbaa !105, !noalias !2679 ; 3 uses
  %.not5.i534 = icmp eq ptr %.val28.i533, %i.azb
  br i1 %.not5.i534, label %._crit_edge.i541, label %.lr.ph.i535

._crit_edge.i541:                                 ; preds = %bb.cv, %bb.ct
  %.0.lcssa.i542 = phi i64 [ 0, %bb.ct ], [ %.1.i539, %bb.cv ]
  %i.azd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !139, !noalias !2679 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19, !noalias !2679
  %i.azf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.azg = load i64, ptr %i.azf, align 8, !tbaa !111, !noalias !2679
  %i.azh = ptrtoint ptr %.val28.i533 to i64
  %i.azi = sub i64 %i.azh, %i.aza
  %i.azj = ashr exact i64 %i.azi, 4
  %i.azk = mul nsw i64 %i.azg, %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aze, i64 112
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !77, !noalias !2680 ; 2 uses
  %i.azn = load ptr, ptr %i.aze, align 8, !tbaa !59, !noalias !2680
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 16
  %i.azp = load ptr, ptr %i.azo, align 8, !noalias !2680
  %i.azq = tail call noundef i64 %i.azp(ptr noundef nonnull align 8 dereferenceable(144) %i.aze), !noalias !2680, !inline_history !1955
  %i.azr = add nsw i64 %i.azq, %i.azk             ; 2 uses
  %.not.i.i543 = icmp sgt i64 %i.azr, %i.azm
  br i1 %.not.i.i543, label %_ZN5arrow6StatusD2Ev.exit.i575, label %_ZN5arrow6StatusD2Ev.exit.thread.i544

_ZN5arrow6StatusD2Ev.exit.thread.i544:            ; preds = %._crit_edge.i541
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !2681
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19, !noalias !2679
  br label %_ZN5arrow6StatusD2Ev.exit33.i545

_ZN5arrow6StatusD2Ev.exit.i575:                   ; preds = %._crit_edge.i541
  %i.azs = shl nsw i64 %i.azm, 1
  %.sroa.speculated.i.i.i576 = tail call noundef i64 @llvm.smax.i64(i64 %i.azr, i64 %i.azs)
  %i.azt = load ptr, ptr %i.aze, align 8, !tbaa !59, !noalias !2680
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 24
  %i.azv = load ptr, ptr %i.azu, align 8, !noalias !2680
  call void %i.azv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %80, ptr noundef nonnull align 8 dereferenceable(144) %i.aze, i64 noundef %.sroa.speculated.i.i.i576), !noalias !2679, !inline_history !1955
  %.pr.i577 = load ptr, ptr %80, align 8, !tbaa !31, !noalias !2682 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  store ptr %.pr.i577, ptr %0, align 8, !tbaa !31, !alias.scope !2682
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19, !noalias !2679
  %i.azw = icmp eq ptr %.pr.i577, null
  br i1 %i.azw, label %_ZN5arrow6StatusD2Ev.exit33.i545, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

.lr.ph.i535:                                      ; preds = %bb.ct, %bb.cv
  %.07.i536 = phi i64 [ %.1.i539, %bb.cv ], [ 0, %bb.ct ] ; 2 uses
  %.sroa.01.06.i537 = phi ptr [ %i.baf, %bb.cv ], [ %i.azb, %bb.ct ] ; 2 uses
  %.val30.val.i538 = load ptr, ptr %.sroa.01.06.i537, align 8, !tbaa !107, !noalias !2679 ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %.val30.val.i538, i64 40
  %i.azy = load i8, ptr %i.azx, align 8, !tbaa !145, !range !62, !noalias !2679, !noundef !63
  %i.azz = trunc nuw i8 %i.azy to i1
  br i1 %i.azz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.lr.ph.i535
  %i.baa = getelementptr inbounds nuw i8, ptr %.val30.val.i538, i64 48
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !175, !noalias !2679
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 24
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !57, !noalias !2679
  %i.bae = add nsw i64 %i.bad, %.07.i536
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.lr.ph.i535
  %.1.i539 = phi i64 [ %i.bae, %bb.cu ], [ %.07.i536, %.lr.ph.i535 ] ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i537, i64 16 ; 2 uses
  %.not.i540 = icmp eq ptr %i.baf, %.val28.i533
  br i1 %.not.i540, label %._crit_edge.i541, label %.lr.ph.i535, !llvm.loop !1959

_ZN5arrow6StatusD2Ev.exit33.i545:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i575, %_ZN5arrow6StatusD2Ev.exit.thread.i544
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19, !noalias !2679
  %i.bag = load i64, ptr %i.azf, align 8, !tbaa !111, !noalias !2679
  %i.bah = mul nsw i64 %i.bag, %.0.lcssa.i542     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19, !noalias !2685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19, !noalias !2686
  %i.bai = getelementptr inbounds nuw i8, ptr %i.aze, i64 240 ; 7 uses
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !151, !noalias !2686
  %i.bak = add nsw i64 %i.baj, %i.bah             ; 3 uses
  store i64 %i.bak, ptr %i.i, align 8, !tbaa !82, !noalias !2686
  %i.bal = icmp eq i64 %i.bak, 9223372036854775807
  br i1 %i.bal, label %_ZN5arrow6StatusD2Ev.exit.i.i569, label %_ZN5arrow6StatusD2Ev.exit6.thread.i.i546, !prof !90

_ZN5arrow6StatusD2Ev.exit6.thread.i.i546:         ; preds = %_ZN5arrow6StatusD2Ev.exit33.i545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19, !noalias !2686
  store ptr null, ptr %81, align 8, !tbaa !31, !alias.scope !2687, !noalias !2679
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19, !noalias !2685
  br label %bb.cw

_ZN5arrow6StatusD2Ev.exit.i.i569:                 ; preds = %_ZN5arrow6StatusD2Ev.exit33.i545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19, !noalias !2686
  store i64 9223372036854775806, ptr %i.j, align 8, !tbaa !82, !noalias !2686
  call void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %79, ptr noundef nonnull align 1 dereferenceable(32) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(14) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !2685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19, !noalias !2686
  %.pr.i.i570 = load ptr, ptr %79, align 8, !tbaa !31, !noalias !2688 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19, !noalias !2686
  call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  store ptr %.pr.i.i570, ptr %81, align 8, !tbaa !31, !alias.scope !2690, !noalias !2679
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19, !noalias !2685
  %i.bam = icmp eq ptr %.pr.i.i570, null
  br i1 %i.bam, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i572, label %_ZN5arrow6StatusD2Ev.exit35.thread3.i571

_ZN5arrow6StatusD2Ev.exit35.thread3.i571:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i569
  store ptr %.pr.i.i570, ptr %0, align 8, !tbaa !31, !alias.scope !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19, !noalias !2679
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i572:      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i569
  %.pre.i.i573 = load i64, ptr %i.bai, align 8, !tbaa !151, !noalias !2692
  %.pre8.i.i574 = add nsw i64 %.pre.i.i573, %i.bah
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i572, %_ZN5arrow6StatusD2Ev.exit6.thread.i.i546
  %.pre-phi.i.i547 = phi i64 [ %.pre8.i.i574, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i572 ], [ %i.bak, %_ZN5arrow6StatusD2Ev.exit6.thread.i.i546 ] ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.aze, i64 232
  %i.bao = load i64, ptr %i.ban, align 8, !tbaa !91, !noalias !2692 ; 2 uses
  %.not.i.i.i.i548 = icmp sgt i64 %.pre-phi.i.i547, %i.bao
end_hunk_3
