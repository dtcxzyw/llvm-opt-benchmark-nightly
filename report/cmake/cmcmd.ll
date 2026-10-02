Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmcmd?download=true
inline.NumInlined: 4314
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN12_GLOBAL__N_112CoCompileJobESaIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_112CoCompileJobEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN12_GLOBAL__N_112CoCompileJobEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !31 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN12_GLOBAL__N_112CoCompileJobEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112CoCompileJobEEvPT_.exit.i.i

_ZSt8_DestroyIN12_GLOBAL__N_112CoCompileJobEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112CoCompileJobEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_112CoCompileJobESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = ptrtoint ptr %.val1 to i64
  %i.l = ptrtoint ptr %.val to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.m) #29
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_112CoCompileJobESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_112CoCompileJobESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CoCompileJobES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN5cmcmd19ExecuteCMakeCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt8optionalIN2cm5StdIo7ConsoleEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 1 %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %4 = alloca %"class.std::optional.12", align 8  ; 27 uses
  %5 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %6 = alloca [1 x %struct.cmCommandLineArgument], align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::function.26", align 8  ; 12 uses
  %9 = alloca %"class.std::vector.3", align 8     ; 16 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %10 = alloca %"struct.cmsys::SystemTools::CopyStatus", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::optional.12", align 8 ; 18 uses
  %13 = alloca %"class.std::vector.20", align 8   ; 7 uses
  %14 = alloca [1 x %struct.cmCommandLineArgument], align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::function.26", align 8 ; 12 uses
  %17 = alloca %"class.std::vector.3", align 8    ; 16 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %18 = alloca %"class.cmsys::Status", align 8    ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::basic_ifstream", align 8 ; 9 uses
  %22 = alloca %"class.std::vector.3", align 8    ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %class.cmFileTime, align 8         ; 6 uses
  %25 = alloca %class.cmFileTime, align 8         ; 6 uses
  %26 = alloca %class.bindexplib, align 8         ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 2 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::basic_string_view", align 8 ; 2 uses
  %35 = alloca %class.cmEnvironmentModification, align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %class.cmEnvironment, align 8      ; 9 uses
  %42 = alloca %"class.std::vector.3", align 8    ; 7 uses
  %43 = alloca %class.cmEnvironment, align 8      ; 7 uses
  %44 = alloca %"class.std::vector.3", align 8    ; 7 uses
  %45 = alloca %"class.std::vector.3", align 8    ; 7 uses
  %46 = alloca %"class.std::allocator.5", align 1 ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %47 = alloca %"class.std::vector.3", align 8    ; 4 uses
  %48 = alloca %"class.std::vector.3", align 8    ; 8 uses
  %49 = alloca %"class.cmsys::Status", align 8    ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %56 = alloca %class.cmake, align 8              ; 7 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.n = alloca double, align 8                   ; 7 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %58 = alloca %"class.std::vector.3", align 8    ; 7 uses
  %59 = alloca %"class.std::allocator.5", align 1 ; 4 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %60 = alloca %"class.std::vector.3", align 8    ; 4 uses
  %61 = alloca %"class.std::optional.12", align 8 ; 2 uses
  %62 = alloca %"class.std::optional.12", align 8 ; 2 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %67 = alloca %"class.std::optional.12", align 8 ; 6 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %class.cmRange, align 16           ; 4 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i32, align 4                      ; 7 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %76 = alloca %class.cmake, align 8              ; 12 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %99 = alloca %class.cmStateSnapshot, align 8    ; 5 uses
  %100 = alloca %"class.std::unique_ptr.137", align 8 ; 8 uses
  %101 = alloca %"class.std::unique_ptr.137", align 8 ; 4 uses
  %102 = alloca %class.cmStateSnapshot, align 8   ; 7 uses
  %103 = alloca %class.cmStateDirectory, align 8  ; 5 uses
  %104 = alloca %class.cmStateDirectory, align 8  ; 5 uses
  %105 = alloca %class.cmMakefile, align 8        ; 7 uses
  %106 = alloca %"class.std::unique_ptr.334", align 8 ; 8 uses
  %107 = alloca %"class.std::optional", align 1   ; 5 uses
  %108 = alloca %"class.std::optional", align 1   ; 5 uses
  %i.t = alloca [6 x ptr], align 16               ; 6 uses
  %109 = alloca %"class.std::vector.3", align 8   ; 13 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.u = alloca i32, align 4                      ; 8 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %113 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.x = alloca i8, align 1                       ; 5 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %133 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %135 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca i32, align 4                      ; 8 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %138 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %142 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %144 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %145 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %146 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %147 = alloca %"class.std::optional.596", align 8 ; 7 uses
  %148 = alloca %"class.std::optional.596", align 8 ; 7 uses
  %149 = alloca %"class.std::optional.596", align 8 ; 7 uses
  %i.aa = alloca i8, align 1                      ; 6 uses
  %i.ab = alloca i8, align 1                      ; 6 uses
  %i.ac = alloca i32, align 4                     ; 6 uses
  %150 = alloca %"class.std::vector.20", align 8  ; 8 uses
  %151 = alloca [6 x %struct.cmCommandLineArgument], align 8 ; 25 uses
  %152 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %153 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %154 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %155 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %156 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %157 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %159 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %160 = alloca %"class.std::function.26", align 8 ; 12 uses
  %161 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %162 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %163 = alloca %"class.std::function.26", align 8 ; 12 uses
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %165 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %166 = alloca %"class.std::allocator.22", align 1 ; 4 uses
  %i.ad = alloca i64, align 8                     ; 13 uses
  %167 = alloca %"class.std::optional.608", align 8 ; 10 uses
  %168 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %169 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %170 = alloca %class.cmGeneratedFileStream, align 8 ; 11 uses
  %171 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %172 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %173 = alloca %class.cmake, align 8             ; 12 uses
  %174 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %175 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %176 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %177 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %178 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %179 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %180 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %181 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %182 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %183 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %184 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %185 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %186 = alloca %class.cmStateSnapshot, align 8   ; 5 uses
  %187 = alloca %"class.std::unique_ptr.137", align 8 ; 8 uses
  %188 = alloca %"class.std::unique_ptr.137", align 8 ; 4 uses
  %189 = alloca %class.cmStateSnapshot, align 8   ; 7 uses
  %190 = alloca %class.cmStateDirectory, align 8  ; 5 uses
  %191 = alloca %class.cmStateDirectory, align 8  ; 5 uses
  %192 = alloca %class.cmMakefile, align 8        ; 7 uses
  %193 = alloca %"class.std::unique_ptr.334", align 8 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 54 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.ag = load ptr, ptr %0, align 8, !tbaa !55    ; 9 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 5                 ; 5 uses
  %i.al = icmp ugt i64 %i.ak, 1
  br i1 %i.al, label %bb.b, label %bb.agj

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27 ; 9 uses
  switch i64 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1566.thread2786 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1345
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1347
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1429_crit_edge
    i64 27, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1431_crit_edge
    i64 23, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1433_crit_edge
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1544_crit_edge
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !31 ; 6 uses
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = icmp ne i32 %i.aq, 2037411683
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1566.thread2786

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1544_crit_edge: ; preds = %bb.b
  %.pre3491 = load ptr, ptr %i.am, align 8, !tbaa !31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1544

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1433_crit_edge: ; preds = %bb.b
  %.pre3490 = load ptr, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %bcmp.i1432 = tail call i32 @bcmp(ptr %.pre3490, ptr nonnull @.str.27, i64 %i.ao)
  %i.au = icmp eq i32 %bcmp.i1432, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1437, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1566.thread2786

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1431_crit_edge: ; preds = %bb.b
  %.pre3489 = load ptr, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %bcmp.i1430 = tail call i32 @bcmp(ptr %.pre3489, ptr nonnull @.str.26, i64 %i.ao)
  %i.av = icmp eq i32 %bcmp.i1430, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1435, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1566.thread2786

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2741._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1429_crit_edge: ; preds = %bb.b
  %.pre3488 = load ptr, ptr %i.am, align 8, !tbaa !31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1429

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1345: ; preds = %bb.b
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = xor i128 %i.ax, 146741821747483272976434079304132882275
  %i.az = getelementptr i8, ptr %i.aw, i64 16
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i128
  %i.bc = xor i128 %i.bb, 116
  %i.bd = or i128 %i.ay, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  %.old29154096 = icmp ugt i64 %i.ak, 3
  %or.cond4205 = and i1 %i.bg, %.old29154096
  br i1 %or.cond4205, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1566.thread2786

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1347: ; preds = %bb.b
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %bcmp.i1346 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.12, i64 %i.ao)
  %i.bh = icmp eq i32 %bcmp.i1346, 0
  %i.bi = icmp ugt i64 %i.ak, 3
  %or.cond2916 = and i1 %i.bi, %i.bh
  br i1 %or.cond2916, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread4098, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1566

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread4098: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1347
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !27
  store i8 0, ptr %i.bj, align 8, !tbaa !28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.old2915 = icmp ugt i64 %i.ak, 3
  br i1 %.old2915, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1347.thread2743

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1345
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bl, ptr %3, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !27
  store i8 0, ptr %i.bl, align 8, !tbaa !28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !27
  store i8 0, ptr %i.bn, align 8, !tbaa !28
  %i.bp = load i32, ptr %i.ap, align 1
  %i.bq = icmp ne i32 %i.bp, 2037411683
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread
  %i.bu = phi ptr [ %i.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745 ], [ %i.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread ], [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349
  %i.bw = icmp eq i64 %i.ao, 17
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744
  %i.bx = phi ptr [ %i.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread ], [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744 ] ; 2 uses
  %i.by = phi ptr [ %i.bl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread ], [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744 ] ; 3 uses
  %i.bz = phi ptr [ %i.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread ], [ %i.bo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744 ] ; 2 uses
  %i.ca = load i128, ptr %i.bx, align 1
  %i.cb = xor i128 %i.ca, 146741821747483272976434079304132882275
  %i.cc = getelementptr i8, ptr %i.bx, i64 16
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i128
  %i.cf = xor i128 %i.ce, 116
  %i.cg = or i128 %i.cb, %i.cf
  %i.ch = icmp ne i128 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 38)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread4098, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351
  %i.cl = phi ptr [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744 ], [ %i.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351 ], [ %i.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread4098 ] ; 2 uses
  %i.cm = phi ptr [ %i.bo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744 ], [ %i.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351 ], [ %i.bk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread2744.thread4098 ]
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 34)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread
  %i.co = phi ptr [ %i.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread ], [ %i.bo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread ], [ %i.cm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745 ]
  %i.cp = phi ptr [ %i.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread ], [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread ], [ %i.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745 ] ; 3 uses
  %.0692 = phi ptr [ @_ZN5cmsys11SystemTools19CopyFileIfDifferentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread ], [ @_ZN5cmsys11SystemTools14CopyFileAlwaysERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1349.thread ], [ @_ZN5cmsys11SystemTools15CopyFileIfNewerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1351.thread2745 ]
  %i.cq = load ptr, ptr %0, align 8, !tbaa !55    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 10 uses
  store i8 0, ptr %i.cs, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ct, ptr %7, align 8, !tbaa !24
  store i16 29741, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.cu, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.cv, align 2, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cy, align 8, !alias.scope !224
  %i.cz = ptrtoint ptr %4 to i64
  store i64 %i.cz, ptr %8, align 8, !tbaa !61, !alias.scope !224
  store ptr @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN21cmCommandLineArgumentIS8_E20ArgumentLambdaHelperIS8_E18generateSetToValueERSt8optionalIS5_EEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.cx, align 8, !tbaa !63, !alias.scope !224
  store ptr @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN21cmCommandLineArgumentIS8_E20ArgumentLambdaHelperIS8_E18generateSetToValueERSt8optionalIS5_EEUlS7_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.cw, align 8, !tbaa !19, !alias.scope !224
  invoke void @_ZN21cmCommandLineArgumentIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ISt8functionIS8_EEES5_NS9_6ValuesEOT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 %7, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.da = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #30
          to label %.noexc2546 unwind label %.body2547.thread ; 10 uses

.noexc2546:                                       ; preds = %bb.d
  store ptr %i.da, ptr %5, align 8, !tbaa !66
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 136 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !67
  invoke void @_ZN21cmCommandLineArgumentIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(136) %i.da, ptr noundef nonnull align 8 dereferenceable(136) %6)
          to label %_ZSt10_ConstructI21cmCommandLineArgumentIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKSA_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructI21cmCommandLineArgumentIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKSA_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc2546
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !68
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.i

end_hunk_0
begin_hunk_1_@_ZN5cmcmd19ExecuteCMakeCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt8optionalIN2cm5StdIo7ConsoleEE:bb.a
bb.mq:                                            ; preds = %bb.mp
  %i.axz = load ptr, ptr %65, align 8, !tbaa !31  ; 2 uses
  %i.aya = icmp eq ptr %i.axz, %i.aws
  br i1 %i.aya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1835

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1835: ; preds = %bb.mq
  %i.ayb = load i64, ptr %i.aws, align 8, !tbaa !28
  %i.ayc = add i64 %i.ayb, 1
  call void @_ZdlPvm(ptr noundef %i.axz, i64 noundef %i.ayc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1835
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850

bb.mr:                                            ; preds = %bb.mp
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  %i.aye = load ptr, ptr %65, align 8, !tbaa !31  ; 2 uses
  %i.ayf = icmp eq ptr %i.aye, %i.aws
  br i1 %i.ayf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838: ; preds = %bb.mr
  %i.ayg = load i64, ptr %i.aws, align 8, !tbaa !28
  %i.ayh = add i64 %i.ayg, 1
  call void @_ZdlPvm(ptr noundef %i.aye, i64 noundef %i.ayh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840: ; preds = %bb.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853

bb.ms:                                            ; preds = %bb.mo
  %i.ayi = call noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02617.03315)
  br i1 %i.ayi, label %bb.mw, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #28
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02617.03315, ptr noundef nonnull @.str.94)
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.mu unwind label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %i.ayj = load ptr, ptr %66, align 8, !tbaa !31  ; 2 uses
  %i.ayk = icmp eq ptr %i.ayj, %i.awo
  br i1 %i.ayk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1843, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1841

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1841: ; preds = %bb.mu
  %i.ayl = load i64, ptr %i.awo, align 8, !tbaa !28
  %i.aym = add i64 %i.ayl, 1
  call void @_ZdlPvm(ptr noundef %i.ayj, i64 noundef %i.aym) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1843

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1843: ; preds = %bb.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1841
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850

bb.mv:                                            ; preds = %bb.mt
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  %i.ayo = load ptr, ptr %66, align 8, !tbaa !31  ; 2 uses
  %i.ayp = icmp eq ptr %i.ayo, %i.awo
  br i1 %i.ayp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1846, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1844: ; preds = %bb.mv
  %i.ayq = load i64, ptr %i.awo, align 8, !tbaa !28
  %i.ayr = add i64 %i.ayq, 1
  call void @_ZdlPvm(ptr noundef %i.ayo, i64 noundef %i.ayr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1846

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1846: ; preds = %bb.mv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1844
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853

bb.mw:                                            ; preds = %bb.ms
  %i.ays = call noundef i64 @_ZN5cmsys11SystemTools10FileLengthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02617.03315)
  %i.ayt = icmp eq i64 %i.ays, 0
  br i1 %i.ayt, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.ayu = load i8, ptr %i.awp, align 1, !tbaa !76, !range !38, !noundef !39
  %i.ayv = trunc nuw i8 %i.ayu to i1
  store i8 0, ptr %i.awp, align 1, !tbaa !76
  br i1 %i.ayv, label %bb.my, label %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1847

bb.my:                                            ; preds = %bb.mx
  call void @_ZN2cm5StdIo7ConsoleD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %1) #28
  br label %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1847

_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1847: ; preds = %bb.mx, %bb.my
  call void @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %67, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02617.03315)
  invoke fastcc void @_ZN12_GLOBAL__N_19cmCatFileESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef align 8 %67)
          to label %bb.mz unwind label %bb.nb

bb.mz:                                            ; preds = %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1847
  %i.ayw = load i8, ptr %i.awq, align 8, !tbaa !59, !range !38, !noundef !39
  %i.ayx = trunc nuw i8 %i.ayw to i1
  store i8 0, ptr %i.awq, align 8, !tbaa !59
  br i1 %i.ayx, label %bb.na, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850

bb.na:                                            ; preds = %bb.mz
  %i.ayy = load ptr, ptr %67, align 8, !tbaa !31  ; 2 uses
  %i.ayz = icmp eq ptr %i.ayy, %i.awr
  br i1 %i.ayz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1848

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1848: ; preds = %bb.na
  %i.aza = load i64, ptr %i.awr, align 8, !tbaa !28
  %i.azb = add i64 %i.aza, 1
  call void @_ZdlPvm(ptr noundef %i.ayy, i64 noundef %i.azb) #29
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850

bb.nb:                                            ; preds = %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1847
  %i.azc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.azd = load i8, ptr %i.awq, align 8, !tbaa !59, !range !38, !noundef !39
  %i.aze = trunc nuw i8 %i.azd to i1
  store i8 0, ptr %i.awq, align 8, !tbaa !59
  br i1 %i.aze, label %bb.nc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853

bb.nc:                                            ; preds = %bb.nb
  %i.azf = load ptr, ptr %67, align 8, !tbaa !31  ; 2 uses
  %i.azg = icmp eq ptr %i.azf, %i.awr
  br i1 %i.azg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1851: ; preds = %bb.nc
  %i.azh = load i64, ptr %i.awr, align 8, !tbaa !28
  %i.azi = add i64 %i.azh, 1
  call void @_ZdlPvm(ptr noundef %i.azf, i64 noundef %i.azi) #29
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1850: ; preds = %bb.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1848, %bb.mz, %bb.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1825, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837, %bb.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1843, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1831, %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1813
  %.11075 = phi i1 [ false, %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1813 ], [ %.010743316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1831 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1825 ], [ %.010743316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837 ], [ %.010743316, %bb.mw ], [ false, %bb.mg ], [ %.010743316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1843 ], [ %.010743316, %bb.mz ], [ %.010743316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1848 ], [ %.010743316, %bb.na ]
  %.11073 = phi i32 [ %.010723317, %_ZNSt8optionalIN2cm5StdIo7ConsoleEE5resetEv.exit1813 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1831 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1825 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837 ], [ %.010723317, %bb.mw ], [ %.010723317, %bb.mg ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1843 ], [ %.010723317, %bb.mz ], [ %.010723317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1848 ], [ %.010723317, %bb.na ] ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %.sroa.02617.03315, i64 32 ; 2 uses
  %.not2966 = icmp eq ptr %i.azj, %i.awb
  br i1 %.not2966, label %_ZNSt14_Optional_baseIN2cm5StdIo7ConsoleELb0ELb0EED2Ev.exit, label %bb.mb

bb.nd:                                            ; preds = %bb.lw
  %i.azk = load ptr, ptr %0, align 8, !tbaa !55
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 32
  %i.azm = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.azl, ptr noundef nonnull @.str.95)
  %.pre3506 = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  br i1 %i.azm, label %bb.ne, label %bb.nm

bb.ne:                                            ; preds = %bb.nd
  %i.azn = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.azo = ptrtoint ptr %i.azn to i64
  %i.azp = ptrtoint ptr %.pre3506 to i64
  %i.azq = sub i64 %i.azo, %i.azp
  %i.azr = icmp ugt i64 %i.azq, 96
  br i1 %i.azr, label %bb.nf, label %bb.nm

bb.nf:                                            ; preds = %bb.ne
  %i.azs = getelementptr inbounds nuw i8, ptr %.pre3506, i64 64 ; 3 uses
  %i.azt = tail call noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.azs)
  br i1 %i.azt, label %bb.nj, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull @.str.96, ptr noundef nonnull align 8 dereferenceable(32) %i.azs)
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %68)
          to label %bb.nh unwind label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.azu = load ptr, ptr %68, align 8, !tbaa !31  ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.azw = icmp eq ptr %i.azu, %i.azv
  br i1 %i.azw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1854

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1854: ; preds = %bb.nh
  %i.azx = load i64, ptr %i.azv, align 8, !tbaa !28
  %i.azy = add i64 %i.azx, 1
  call void @_ZdlPvm(ptr noundef %i.azu, i64 noundef %i.azy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856: ; preds = %bb.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1854
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %_ZNSt14_Optional_baseIN2cm5StdIo7ConsoleELb0ELb0EED2Ev.exit

bb.ni:                                            ; preds = %bb.ng
  %i.azz = landingpad { ptr, i32 }
          cleanup
  %i.baa = load ptr, ptr %68, align 8, !tbaa !31  ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.bac = icmp eq ptr %i.baa, %i.bab
  br i1 %i.bac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1857: ; preds = %bb.ni
  %i.bad = load i64, ptr %i.bab, align 8, !tbaa !28
  %i.bae = add i64 %i.bad, 1
  call void @_ZdlPvm(ptr noundef %i.baa, i64 noundef %i.bae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859: ; preds = %bb.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1857
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853

bb.nj:                                            ; preds = %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28
  %194 = load <2 x ptr>, ptr %0, align 8, !tbaa !30
  %195 = getelementptr inbounds nuw i8, <2 x ptr> %194, <2 x i64> <i64 96, i64 0>
  store <2 x ptr> %195, ptr %70, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 34, ptr %i.a, align 1, !tbaa !28, !noalias !232
  store i8 34, ptr %i.b, align 1, !tbaa !28, !noalias !232
  store i64 1, ptr %2, align 8, !tbaa !33, !noalias !232
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.46, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !77, !noalias !232
  call void @_Z6cmWrapI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_St17basic_string_viewIcS6_ERKT_SH_SH_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, i64 1, ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(16) %70, i64 1, ptr nonnull %i.b, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  store i32 0, ptr %i.r, align 4, !tbaa !56
  %i.baf = load ptr, ptr %i.azs, align 8, !tbaa !31
  %i.bag = invoke noundef zeroext i1 @_ZN13cmSystemTools16RunSingleCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_S8_PiPKcNS_12OutputOptionENSt6chrono8durationIdSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.r, ptr noundef %i.baf, i32 noundef 3, double 0.000000e+00)
          to label %bb.nk unwind label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.bah = load i32, ptr %i.r, align 4
  %.45 = select i1 %i.bag, i32 %i.bah, i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  %i.bai = load ptr, ptr %69, align 8, !tbaa !31  ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.bak = icmp eq ptr %i.bai, %i.baj
  br i1 %i.bak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1866

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1866: ; preds = %bb.nk
  %i.bal = load i64, ptr %i.baj, align 8, !tbaa !28
  %i.bam = add i64 %i.bal, 1
  call void @_ZdlPvm(ptr noundef %i.bai, i64 noundef %i.bam) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868: ; preds = %bb.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1866
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  br label %_ZNSt14_Optional_baseIN2cm5StdIo7ConsoleELb0ELb0EED2Ev.exit

bb.nl:                                            ; preds = %bb.nj
  %i.ban = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  %i.bao = load ptr, ptr %69, align 8, !tbaa !31  ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.baq = icmp eq ptr %i.bao, %i.bap
  br i1 %i.baq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1869

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1869: ; preds = %bb.nl
  %i.bar = load i64, ptr %i.bap, align 8, !tbaa !28
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %i.bao, i64 noundef %i.bas) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871: ; preds = %bb.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1869
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1853

bb.nm:                                            ; preds = %bb.ne, %bb.nd
  %i.bat = getelementptr inbounds nuw i8, ptr %.pre3506, i64 32
  %i.bau = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bat, ptr noundef nonnull @.str.97)
  %.pre3507 = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  br i1 %i.bau, label %bb.nn, label %bb.ok

bb.nn:                                            ; preds = %bb.nm
  %i.bav = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.baw = ptrtoint ptr %i.bav to i64
  %i.bax = ptrtoint ptr %.pre3507 to i64
  %i.bay = sub i64 %i.baw, %i.bax
  %i.baz = icmp eq i64 %i.bay, 128
  br i1 %i.baz, label %bb.no, label %bb.ok

bb.no:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #28
  %i.bba = getelementptr inbounds nuw i8, ptr %.pre3507, i64 64
  call void @_Z8cmStrCatIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA10_KcJEES5_OT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(32) %i.bba, ptr noundef nonnull align 1 dereferenceable(10) @.str.98)
  %i.bbb = invoke i64 @_ZN5cmsys11SystemTools16RemoveADirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %bb.np unwind label %bb.nu     ; 0 uses

bb.np:                                            ; preds = %bb.no
  %i.bbc = load ptr, ptr %0, align 8, !tbaa !55
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 96
  %i.bbe = invoke noundef ptr @_ZN5cmsys11SystemTools5FopenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bbd, ptr noundef nonnull @.str.99)
          to label %bb.nq unwind label %bb.nv     ; 3 uses

bb.nq:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28
  %.not1205 = icmp eq ptr %i.bbe, null
  br i1 %.not1205, label %bb.nx, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bbf = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.bbe, ptr noundef nonnull @.str.100, ptr noundef nonnull %i.s)
          to label %bb.ns unwind label %bb.nw

bb.ns:                                            ; preds = %bb.nr
  %.not1206 = icmp eq i32 %i.bbf, 1
  br i1 %.not1206, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1873, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bbg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.101, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1873 unwind label %bb.nw ; 0 uses

bb.nu:                                            ; preds = %bb.no
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.nv:                                            ; preds = %bb.np
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.nw:                                            ; preds = %bb.nt, %bb.nz, %bb.nr
  %i.bbj = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1873: ; preds = %bb.nt, %bb.ns
  %i.bbk = call i32 @fclose(ptr noundef nonnull %i.bbe) ; 0 uses
  %.pr = load i32, ptr %i.s, align 4, !tbaa !56
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nq
  %i.bbl = load ptr, ptr %0, align 8, !tbaa !55
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 96
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !31
  %i.bbo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bbn, ptr noundef null, i32 noundef 10) #28, !inline_history !212
  %i.bbp = trunc i64 %i.bbo to i32                ; 2 uses
  store i32 %i.bbp, ptr %i.s, align 4, !tbaa !56
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1873
  %i.bbq = phi i32 [ %i.bbp, %bb.nx ], [ %.pr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1873 ]
  %.not1207 = icmp eq i32 %i.bbq, 0
  br i1 %.not1207, label %bb.oh, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.bbr = invoke i64 @_ZN5cmsys11SystemTools13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKj(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef null)
          to label %bb.oa unwind label %bb.nw     ; 0 uses

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #28
  invoke void @_Z8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_KcJEES5_OT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 1 dereferenceable(11) @.str.102)
          to label %bb.ob unwind label %bb.oe

bb.ob:                                            ; preds = %bb.oa
  %i.bbs = invoke noundef ptr @_ZN5cmsys11SystemTools5FopenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.103)
          to label %bb.oc unwind label %bb.of     ; 3 uses

bb.oc:                                            ; preds = %bb.ob
  %.not1213 = icmp eq ptr %i.bbs, null
  br i1 %.not1213, label %bb.og, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bbt = load i32, ptr %i.s, align 4, !tbaa !56
  %i.bbu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bbs, ptr noundef nonnull @.str.104, i32 noundef %i.bbt) #28 ; 0 uses
  %i.bbv = call i32 @fclose(ptr noundef nonnull %i.bbs) ; 0 uses
  br label %bb.og

bb.oe:                                            ; preds = %bb.oa
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876

bb.of:                                            ; preds = %bb.ob
  %i.bbx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bby = load ptr, ptr %72, align 8, !tbaa !31  ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.bca = icmp eq ptr %i.bby, %i.bbz
  br i1 %i.bca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874: ; preds = %bb.of
  %i.bcb = load i64, ptr %i.bbz, align 8, !tbaa !28
  %i.bcc = add i64 %i.bcb, 1
  call void @_ZdlPvm(ptr noundef %i.bby, i64 noundef %i.bcc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876

bb.og:                                            ; preds = %bb.od, %bb.oc
  %i.bcd = load ptr, ptr %72, align 8, !tbaa !31  ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.bcf = icmp eq ptr %i.bcd, %i.bce
  br i1 %i.bcf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1879, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1877

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1877: ; preds = %bb.og
  %i.bcg = load i64, ptr %i.bce, align 8, !tbaa !28
  %i.bch = add i64 %i.bcg, 1
  call void @_ZdlPvm(ptr noundef %i.bcd, i64 noundef %i.bch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1879

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1879: ; preds = %bb.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1877
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  br label %bb.oh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876: ; preds = %bb.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874, %bb.oe
  %.pn1208 = phi { ptr, i32 } [ %i.bbw, %bb.oe ], [ %i.bbx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874 ], [ %i.bbx, %bb.of ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  br label %bb.oi

bb.oh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1879, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
end_hunk_1
