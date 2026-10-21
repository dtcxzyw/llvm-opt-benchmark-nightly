Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }
%"class.ncnn::ParamDict" = type { ptr, ptr }
%"class.ncnn::ModelBinFromMatArray" = type { %"class.ncnn::ModelBin", ptr }
%"class.ncnn::ModelBin" = type { ptr }
%"class.ncnn::Option" = type { i8, i8, i8, i8, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

$_ZN4ncnn24Deconvolution_x86_avx512D2Ev = comdat any

$_ZN4ncnn24Deconvolution_x86_avx512D0Ev = comdat any

$_ZN4ncnn13DeconvolutionD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn24Deconvolution_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn24Deconvolution_x86_avx512E, ptr @_ZN4ncnn24Deconvolution_x86_avx512D2Ev, ptr @_ZN4ncnn24Deconvolution_x86_avx512D0Ev, ptr @_ZN4ncnn13Deconvolution10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn13Deconvolution10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn24Deconvolution_x86_avx51216destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn24Deconvolution_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn24Deconvolution_x86_avx512E, ptr @_ZTIN4ncnn13DeconvolutionE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn24Deconvolution_x86_avx512E = hidden constant [34 x i8] c"N4ncnn24Deconvolution_x86_avx512E\00", align 1
@_ZTIN4ncnn13DeconvolutionE = external constant ptr
@_ZTVN4ncnn13DeconvolutionE = external constant { [12 x ptr] }, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn24Deconvolution_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn24Deconvolution_x86_avx512C2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn24Deconvolution_x86_avx512D2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn24Deconvolution_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %.not3.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.o, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13DeconvolutionD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) #9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn24Deconvolution_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn24Deconvolution_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4ncnn24Deconvolution_x86_avx512D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn24Deconvolution_x86_avx512D2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn24Deconvolution_x86_avx512D2Ev.exit unwind label %bb.g, !inline_history !93

bb.e:                                             ; preds = %bb.c
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN4ncnn24Deconvolution_x86_avx512D2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #9, !inline_history !93
  br label %_ZN4ncnn24Deconvolution_x86_avx512D2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24, !inline_history !93
  unreachable

_ZN4ncnn24Deconvolution_x86_avx512D2Ev.exit:      ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.o, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13DeconvolutionD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(592) %0) #9, !inline_history !93
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #25
  ret void
}

declare noundef i32 @_ZN4ncnn13Deconvolution10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn13Deconvolution10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 50 uses
  %4 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %5 = alloca %"class.ncnn::ParamDict", align 8   ; 8 uses
  %6 = alloca %"class.ncnn::ParamDict", align 8   ; 9 uses
  %7 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %8 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %9 = alloca %"class.ncnn::ParamDict", align 8   ; 9 uses
  %10 = alloca %"class.ncnn::ParamDict", align 8  ; 18 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %13 = alloca [1 x %"class.ncnn::Mat"], align 16 ; 20 uses
  %14 = alloca %"class.ncnn::ModelBinFromMatArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i32, ptr %i.a, align 8, !tbaa !716
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  switch i32 %i.d, label %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit [
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.j
    i32 4, label %bb.o
    i32 5, label %bb.r
    i32 6, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 26) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 26) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.n = load float, ptr %i.m, align 4, !tbaa !39
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, float noundef nofpclass(nan inf) %i.n)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.z

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %common.resume

bb.j:                                             ; preds = %bb.b
  %i.t = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 54) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.v = load float, ptr %i.u, align 4, !tbaa !39
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0, float noundef nofpclass(nan inf) %i.v)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1, float noundef nofpclass(nan inf) %i.y)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.z

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %common.resume

bb.o:                                             ; preds = %bb.b
  %i.ae = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 30) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %common.resume

bb.r:                                             ; preds = %bb.b
  %i.ak = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 71) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %common.resume

bb.u:                                             ; preds = %bb.b
  %i.aq = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 67) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !39
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, float noundef nofpclass(nan inf) %i.as)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !39
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 1, float noundef nofpclass(nan inf) %i.av)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %common.resume

bb.z:                                             ; preds = %bb.x, %bb.s, %bb.p, %bb.m, %bb.h, %bb.d
  %.023.ph.i = phi ptr [ %i.aq, %bb.x ], [ %i.ak, %bb.s ], [ %i.ae, %bb.p ], [ %i.t, %bb.m ], [ %i.l, %bb.h ], [ %i.f, %bb.d ] ; 3 uses
  %i.bb = load ptr, ptr %.023.ph.i, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(208) %.023.ph.i, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !94 ; 0 uses
  br label %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit

common.resume:                                    ; preds = %bb.e, %bb.i, %bb.n, %bb.q, %bb.t, %bb.y, %_ZN4ncnn3MatD2Ev.exit.i, %bb.db
  %common.resume.op = phi { ptr, i32 } [ %.pn920.pn.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn59.pn.pn.pn, %bb.db ], [ %i.k, %bb.e ], [ %i.s, %bb.i ], [ %i.ad, %bb.n ], [ %i.aj, %bb.q ], [ %i.ap, %bb.t ], [ %i.ba, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit: ; preds = %bb.b, %bb.z
  %.02329.i = phi ptr [ %.023.ph.i, %bb.z ], [ null, %bb.b ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %.02329.i, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !44, !range !45, !noundef !46
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !47 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !48 ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bk                ; 91 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.bq = sdiv i32 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !50 ; 47 uses
  %i.bt = insertelement <2 x i32> <i32 poison, i32 -1>, i32 %i.bq, i64 0
  %i.bu = insertelement <2 x i32> <i32 poison, i32 1>, i32 %i.bs, i64 0
  %i.bv = sdiv <2 x i32> %i.bt, %i.bu             ; 11 uses
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bx = extractelement <2 x i32> %i.bv, i64 0   ; 133 uses
  br i1 %i.bi, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 520
  call fastcc void @_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i32 noundef %i.bx, i32 noundef %i.bs, i32 noundef %i.bk, i32 noundef %i.bm)
  %i.ca = load i8, ptr %1, align 8, !tbaa !51, !range !45, !noundef !46
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.ab, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i115, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = atomicrmw add ptr %i.cd, i32 -1 acq_rel, align 4
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.ad, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 3 uses
  %.not3.i.i116 = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i.i116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci), !inline_history !717
  br label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split

bb.af:                                            ; preds = %bb.ad
  %.not.i3.i = icmp eq ptr %i.ci, null
  br i1 %.not.i3.i, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ci) #9
  br label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split

bb.ah:                                            ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52, !range !45, !noundef !46
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cp = and i32 %i.bs, 15
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = and i32 %i.bs, 7
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = and i32 %i.bs, 3
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = select i1 %i.cu, i32 4, i32 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ah
  %.053 = phi i32 [ 1, %bb.ah ], [ 16, %bb.ai ], [ %i.cv, %bb.ak ], [ 8, %bb.aj ] ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !53, !range !45, !noundef !46
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.am, label %bb.dc

bb.am:                                            ; preds = %bb.al
  %i.cz = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 2, i32 noundef 1)
          to label %bb.an unwind label %bb.bg

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 3, i32 noundef 0)
          to label %bb.ao unwind label %bb.bg

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 4, i32 noundef 1)
          to label %bb.ap unwind label %bb.bg

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 5, i32 noundef 0)
          to label %bb.aq unwind label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 6, i32 noundef 1)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  %i.db = load i32, ptr %i.br, align 8, !tbaa !50
  %i.dc = mul nsw i32 %i.db, %i.bn
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 7, i32 noundef %i.dc)
          to label %bb.as unwind label %bb.bg

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 8, i32 noundef 0)
          to label %bb.at unwind label %bb.bg

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 9, i32 noundef %i.bx)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 10, i32 noundef -1)
          to label %bb.av unwind label %bb.bg

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 11, i32 noundef 0)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 12, i32 noundef %.053)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(208) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bg     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 0, ptr %i.dp, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dr = load i32, ptr %i.br, align 8, !tbaa !50
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i32 noundef %i.bn, i32 noundef %i.bx, i32 noundef %i.dr, ptr noundef null)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.ds = load i32, ptr %i.br, align 8, !tbaa !50
  %i.dt = mul nsw i32 %i.ds, %i.bn
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.dt, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %.preheader198 unwind label %bb.bi

.preheader198:                                    ; preds = %bb.az
  %i.du = icmp sgt i32 %i.bx, 0
  br i1 %i.du, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader198
  %i.dv = load ptr, ptr %11, align 16, !tbaa !20
  %i.dw = load i32, ptr %i.dn, align 4, !tbaa !55
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.dj, align 16, !tbaa !56
  %factor.op.mul250 = mul i64 %i.dy, %i.dx
  %i.dz = load i32, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not251 = icmp sgt i32 %.053, %i.dz
  %i.ea = icmp sgt i32 %i.bn, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not251, label %._crit_edge.split, label %.preheader197.lr.ph.preheader

.preheader197.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.ee = add nsw i32 %.053, -1
  %i.ef = zext nneg i32 %.053 to i64              ; 9 uses
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = zext nneg i32 %i.dz to i64
  %wide.trip.count307 = zext nneg i32 %i.bx to i64
  %.pre309 = load ptr, ptr %12, align 8
  %wide.trip.count299 = zext nneg i32 %i.bn to i64
  %i.ei = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ef, 2
  %min.iters.check5793 = icmp samesign ult i32 %.053, 4
  %min.iters.check5795 = icmp samesign ult i32 %.053, 16
  %n.vec5797 = and i64 %i.ef, 16                  ; 2 uses
  %i.ek = shl nuw nsw i64 %n.vec5797, 2
  %n.vec5814 = and i64 %i.ef, 12                  ; 3 uses
  %i.el = shl nuw nsw i64 %n.vec5814, 2
  %i.em = icmp eq i64 %n.vec5814, 4
  %i.en = icmp eq i64 %n.vec5814, 8
  %xtraiter5916 = and i64 %i.ef, 1
  %i.eo = icmp samesign ult i32 %.053, 4
  %unroll_iter = and i64 %i.ef, 28
  %lcmp.mod5917.not = icmp eq i64 %xtraiter5916, 0
  %lcmp.mod5919 = trunc i32 %.053 to i1
  br label %.preheader197.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge248, %.lr.ph, %.preheader198
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !18 ; 2 uses
  %.not.i70 = icmp eq ptr %i.eq, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.split
  %i.er = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit68

bb.bb:                                            ; preds = %bb.ba
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19 ; 3 uses
  %.not3.i71 = icmp eq ptr %i.eu, null
  %i.ev = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i71, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.ev)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.bf, !inline_history !0

bb.bd:                                            ; preds = %bb.bb
  %.not.i108 = icmp eq ptr %i.ev, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.ev) #9
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.bf:                                            ; preds = %bb.bc
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.ba, %._crit_edge.split, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  store i64 0, ptr %i.fg, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fd, i8 0, i64 28, i1 false)
  %i.fh = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i113 = icmp eq ptr %i.fh, null
  br i1 %.not.i113, label %.thread, label %bb.bj

bb.bg:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bh:                                            ; preds = %bb.ay
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.bi:                                            ; preds = %bb.az
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !18 ; 2 uses
  %.not.i82 = icmp eq ptr %i.fm, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.cd

.preheader197.lr.ph:                              ; preds = %.preheader197.lr.ph.preheader, %._crit_edge248
  %15 = phi ptr [ %.pre309, %.preheader197.lr.ph.preheader ], [ %16, %._crit_edge248 ] ; 5 uses
  %indvars.iv304 = phi i64 [ 0, %.preheader197.lr.ph.preheader ], [ %indvars.iv.next305, %._crit_edge248 ] ; 4 uses
  %i.fn = load i32, ptr %i.eb, align 4
  %i.fo = load i64, ptr %i.ec, align 8            ; 5 uses
  %i.fp = load i64, ptr %i.ed, align 8            ; 6 uses
  %factor.op.mul = mul i64 %i.fo, %i.fp           ; 9 uses
  %i.fq = sext i32 %i.fn to i64                   ; 2 uses
  %i.fr = mul i64 %indvars.iv304, %i.fq
  %i.fs = mul i64 %i.fr, %i.fp                    ; 3 uses
  %invariant.gep = getelementptr i8, ptr %15, i64 %i.fs
  br i1 %i.ea, label %.preheader197.us.preheader, label %._crit_edge248

.preheader197.us.preheader:                       ; preds = %.preheader197.lr.ph
  %.reass = mul i64 %factor.op.mul250, %indvars.iv304
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.reass
  %i.fu = mul i64 %i.fo, %i.fp
  %i.fv = sub i64 0, %i.fu
  %i.fw = mul i64 %i.fo, %i.ef
  %i.fx = mul i64 %i.fw, %i.fp
  %i.fy = mul i64 %i.fo, %i.ef
  %i.fz = mul i64 %i.fy, %i.fp
  %i.ga = mul i64 %i.ei, %i.fo
  %i.gb = mul i64 %indvars.iv304, %i.fq
  %i.gc = add i64 %i.ga, %i.gb
  %i.gd = mul i64 %i.fp, %i.gc
  %i.ge = getelementptr i8, ptr %15, i64 %i.fs
  %i.gf = getelementptr i8, ptr %15, i64 %i.gd
  %i.gg = getelementptr i8, ptr %15, i64 %i.fs
  %i.gh = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.gi = select i1 %i.gh, i64 %i.fv, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gi, i64 %i.ei) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gj = sub i64 0, %mul.result
  %broadcast.splatinsert5798 = insertelement <16 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat5799 = shufflevector <16 x i64> %broadcast.splatinsert5798, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert5817.a = insertelement <4 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat5818.a = shufflevector <4 x i64> %broadcast.splatinsert5817.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader197.us

.preheader197.us:                                 ; preds = %.preheader197.us.preheader, %._crit_edge.us
  %indvar5782 = phi i64 [ 0, %.preheader197.us.preheader ], [ %indvar.next5783, %._crit_edge.us ] ; 3 uses
  %indvars.iv301 = phi i64 [ 0, %.preheader197.us.preheader ], [ %indvars.iv.next302, %._crit_edge.us ] ; 8 uses
  %.042246.us = phi ptr [ %i.ft, %.preheader197.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  %i.gk = mul i64 %i.fz, %indvar5782              ; 2 uses
  %i.gl = mul i64 %i.fx, %indvar5782
  %i.gm = getelementptr i8, ptr %i.ge, i64 %i.gk
  %i.gn = getelementptr i8, ptr %i.gf, i64 %i.gk
  %i.go = getelementptr i8, ptr %i.gg, i64 %i.gl
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv301, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert5815 = insertelement <4 x i64> poison, i64 %indvars.iv301, i64 0
  %broadcast.splat5816 = shufflevector <4 x i64> %broadcast.splatinsert5815, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.gp = add nuw nsw <4 x i64> %broadcast.splat5816, <i64 0, i64 1, i64 2, i64 3>
  %i.gq = mul <4 x i64> %broadcast.splat5818.a, %i.gp
  %i.gr = add nuw nsw <4 x i64> %broadcast.splat5816, <i64 4, i64 5, i64 6, i64 7>
  %i.gs = mul <4 x i64> %broadcast.splat5818.a, %i.gr
  %i.gt = add nuw nsw <4 x i64> %broadcast.splat5816, <i64 8, i64 9, i64 10, i64 11>
  %i.gu = mul <4 x i64> %broadcast.splat5818.a, %i.gt
  br label %iter.check5809

.noexc112.us:                                     ; preds = %.noexc112.us.preheader, %.noexc112.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc112.us ], [ 0, %.noexc112.us.preheader ] ; 5 uses
  %.2242.us = phi ptr [ %i.hg, %.noexc112.us ], [ %.1244.us, %.noexc112.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc112.us ], [ 0, %.noexc112.us.preheader ]
  %i.gv = add nuw nsw i64 %indvars.iv, %indvars.iv301
  %.reass.us = mul i64 %factor.op.mul, %i.gv
  %gep241.us = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us
  %i.gw = load float, ptr %gep241.us, align 4, !tbaa !39
  store float %i.gw, ptr %.2242.us, align 4, !tbaa !39
  %i.gx = getelementptr inbounds nuw i8, ptr %.2242.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.gy = add nuw nsw i64 %indvars.iv.next, %indvars.iv301
  %.reass.us.1 = mul i64 %factor.op.mul, %i.gy
  %gep241.us.1 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.1
  %i.gz = load float, ptr %gep241.us.1, align 4, !tbaa !39
  store float %i.gz, ptr %i.gx, align 4, !tbaa !39
  %i.ha = getelementptr inbounds nuw i8, ptr %.2242.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.hb = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv301
  %.reass.us.2 = mul i64 %factor.op.mul, %i.hb
  %gep241.us.2 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.2
  %i.hc = load float, ptr %gep241.us.2, align 4, !tbaa !39
  store float %i.hc, ptr %i.ha, align 4, !tbaa !39
  %i.hd = getelementptr inbounds nuw i8, ptr %.2242.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.he = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv301
  %.reass.us.3 = mul i64 %factor.op.mul, %i.he
  %gep241.us.3 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.3
  %i.hf = load float, ptr %gep241.us.3, align 4, !tbaa !39
  store float %i.hf, ptr %i.hd, align 4, !tbaa !39
  %i.hg = getelementptr inbounds nuw i8, ptr %.2242.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.noexc112.us, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %.noexc112.us
  br i1 %lcmp.mod5917.not, label %.loopexit, label %.noexc112.us.epil.preheader

.noexc112.us.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.noexc112.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.noexc112.us.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.2242.us.epil.init = phi ptr [ %.1244.us, %.noexc112.us.preheader ], [ %i.hg, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod5919)
  br label %.noexc112.us.epil

.noexc112.us.epil:                                ; preds = %.noexc112.us.epil, %.noexc112.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.noexc112.us.epil ], [ %indvars.iv.epil.init, %.noexc112.us.epil.preheader ] ; 2 uses
  %.2242.us.epil = phi ptr [ %i.hj, %.noexc112.us.epil ], [ %.2242.us.epil.init, %.noexc112.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.noexc112.us.epil ], [ 0, %.noexc112.us.epil.preheader ] ; 2 uses
  %i.hh = add nuw nsw i64 %indvars.iv.epil, %indvars.iv301
  %.reass.us.epil = mul i64 %factor.op.mul, %i.hh
  %gep241.us.epil = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.epil
  %i.hi = load float, ptr %gep241.us.epil, align 4, !tbaa !39
  store float %i.hi, ptr %.2242.us.epil, align 4, !tbaa !39
  %i.hj = getelementptr inbounds nuw i8, ptr %.2242.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.noexc112.us.epil, !llvm.loop !96

.loopexit:                                        ; preds = %vector.body5800, %vec.epilog.ph5813, %vec.epilog.vector.body5821.1, %vec.epilog.vector.body5821.2, %.loopexit.loopexit.unr-lcssa, %.noexc112.us.epil
  %.lcssa = phi ptr [ %i.hj, %.noexc112.us.epil ], [ %i.hz, %vec.epilog.ph5813 ], [ %i.hg, %.loopexit.loopexit.unr-lcssa ], [ %i.hz, %vec.epilog.vector.body5821.2 ], [ %i.hz, %vec.epilog.vector.body5821.1 ], [ %i.hu, %vector.body5800 ] ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge.us, label %iter.check5809, !llvm.loop !97

iter.check5809:                                   ; preds = %.preheader197.us, %.loopexit
  %indvars.iv296 = phi i64 [ 0, %.preheader197.us ], [ %indvars.iv.next297, %.loopexit ] ; 4 uses
  %.1244.us = phi ptr [ %.042246.us, %.preheader197.us ], [ %.lcssa, %.loopexit ] ; 10 uses
  %i.hk = shl nuw nsw i64 %indvars.iv296, 2       ; 2 uses
  %scevgep5787 = getelementptr i8, ptr %i.gm, i64 %i.hk ; 4 uses
  %scevgep5788.a = getelementptr i8, ptr %i.gn, i64 %i.hk ; 4 uses
  %i.hl = icmp ult ptr %scevgep5787, %scevgep5788.a
  %umin = select i1 %i.hl, ptr %scevgep5787, ptr %scevgep5788.a
  %i.hm = icmp ugt ptr %scevgep5787, %scevgep5788.a
  %umax = select i1 %i.hm, ptr %scevgep5787, ptr %scevgep5788.a
  %scevgep5789 = getelementptr i8, ptr %umax, i64 4
  %invariant.gep240.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv296 ; 9 uses
  br i1 %min.iters.check5793, label %.noexc112.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check5809
  %i.hn = shl nuw nsw i64 %indvars.iv296, 2
  %scevgep5784 = getelementptr i8, ptr %i.go, i64 %i.hn ; 4 uses
  %i.ho = getelementptr i8, ptr %scevgep5784, i64 %mul.result
  %i.hp = getelementptr i8, ptr %scevgep5784, i64 %i.gj
  %i.hq = icmp ult ptr %i.ho, %scevgep5784
  %i.hr = icmp ugt ptr %i.hp, %scevgep5784
  %i.hs = select i1 %i.gh, i1 %i.hr, i1 %i.hq
  %i.ht = or i1 %i.hs, %mul.overflow
  br i1 %i.ht, label %.noexc112.us.preheader, label %vector.memcheck5785

vector.memcheck5785:                              ; preds = %vector.scevcheck
  %scevgep5786 = getelementptr i8, ptr %.1244.us, i64 %i.ej
  %bound05790 = icmp ult ptr %.1244.us, %scevgep5789
  %bound15791 = icmp ult ptr %umin, %scevgep5786
  %found.conflict5792 = and i1 %bound05790, %bound15791
  br i1 %found.conflict5792, label %.noexc112.us.preheader, label %vector.main.loop.iter.check5794

.noexc112.us.preheader:                           ; preds = %iter.check5809, %vector.scevcheck, %vector.memcheck5785
  br i1 %i.eo, label %.noexc112.us.epil.preheader, label %.noexc112.us

vector.main.loop.iter.check5794:                  ; preds = %vector.memcheck5785
  br i1 %min.iters.check5795, label %vec.epilog.ph5813, label %vector.ph5796

vector.ph5796:                                    ; preds = %vector.main.loop.iter.check5794
  %i.hu = getelementptr i8, ptr %.1244.us, i64 %i.ek
  br label %vector.body5800

vector.body5800:                                  ; preds = %vector.ph5796, %vector.body5800
  %index5801 = phi i64 [ 0, %vector.ph5796 ], [ %index.next5804, %vector.body5800 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph5796 ], [ %vec.ind.next, %vector.body5800 ] ; 2 uses
  %i.hv = shl i64 %index5801, 2
  %next.gep5802 = getelementptr i8, ptr %.1244.us, i64 %i.hv
  %i.hw = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.hx = mul <16 x i64> %broadcast.splat5799, %i.hw
  %wide.gep5803 = getelementptr i8, ptr %invariant.gep240.us, <16 x i64> %i.hx
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep5803, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !718
  store <16 x float> %wide.masked.gather, ptr %next.gep5802, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  %index.next5804 = add nuw i64 %index5801, 16    ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.hy = icmp eq i64 %index.next5804, %n.vec5797
  br i1 %i.hy, label %.loopexit, label %vector.body5800, !llvm.loop !101

vec.epilog.ph5813:                                ; preds = %vector.main.loop.iter.check5794
  %i.hz = getelementptr i8, ptr %.1244.us, i64 %i.el ; 3 uses
  %wide.gep5825 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gq
  %wide.masked.gather5826 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep5825, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather5826, ptr %.1244.us, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br i1 %i.em, label %.loopexit, label %vec.epilog.vector.body5821.1

vec.epilog.vector.body5821.1:                     ; preds = %vec.epilog.ph5813
  %next.gep5824.1 = getelementptr i8, ptr %.1244.us, i64 16
  %wide.gep5825.1 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gs
  %wide.masked.gather5826.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep5825.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather5826.1, ptr %next.gep5824.1, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br i1 %i.en, label %.loopexit, label %vec.epilog.vector.body5821.2

vec.epilog.vector.body5821.2:                     ; preds = %vec.epilog.vector.body5821.1
  %next.gep5824.2 = getelementptr i8, ptr %.1244.us, i64 32
  %wide.gep5825.2 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gu
  %wide.masked.gather5826.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep5825.2, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather5826.2, ptr %next.gep5824.2, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br label %.loopexit

._crit_edge.us:                                   ; preds = %.loopexit
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, %i.ef ; 2 uses
  %i.ia = add nuw nsw i64 %indvars.iv.next302, %i.eg
  %i.ib = icmp samesign ult i64 %i.ia, %i.eh
  %indvar.next5783 = add i64 %indvar5782, 1
  br i1 %i.ib, label %.preheader197.us, label %._crit_edge248.loopexit, !llvm.loop !102

._crit_edge248.loopexit:                          ; preds = %._crit_edge.us
  %.pre = load ptr, ptr %12, align 8
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %.preheader197.lr.ph, %._crit_edge248.loopexit
  %16 = phi ptr [ %.pre, %._crit_edge248.loopexit ], [ %15, %.preheader197.lr.ph ]
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %._crit_edge.split, label %.preheader197.lr.ph, !llvm.loop !103

bb.bj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.id = atomicrmw add ptr %i.fh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.a = load ptr, ptr %i.ic, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.a, null
  br i1 %.not.i.i, label %.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ie = atomicrmw add ptr %.pre.a, i32 -1 acq_rel, align 4
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  %i.ig = load ptr, ptr %i.fd, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ig, null
  %i.ih = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ih)
          to label %.thread unwind label %bb.cj, !inline_history !1

bb.bn:                                            ; preds = %bb.bl
  %.not.i18.i = icmp eq ptr %i.ih, null
  br i1 %.not.i18.i, label %.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @free(ptr noundef nonnull %i.ih) #9
  br label %.thread

.thread:                                          ; preds = %_ZN4ncnn3MatD2Ev.exit68, %bb.bk, %bb.bj, %bb.bm, %bb.bo, %bb.bn
  %i.il = load <2 x ptr>, ptr %11, align 16, !tbaa !61
  store <2 x ptr> %i.il, ptr %13, align 16, !tbaa !61
  %i.im = load i64, ptr %i.dj, align 16, !tbaa !56
  store i64 %i.im, ptr %i.fb, align 16, !tbaa !56
  %i.in = load i32, ptr %i.dk, align 8, !tbaa !62
  store i32 %i.in, ptr %i.fc, align 8, !tbaa !62
  %i.io = load ptr, ptr %i.dl, align 16, !tbaa !19
  store ptr %i.io, ptr %i.fd, align 16, !tbaa !19
  %i.ip = load <4 x i32>, ptr %i.dm, align 8, !tbaa !63
  store <4 x i32> %i.ip, ptr %i.fe, align 8, !tbaa !63
  %i.iq = load i32, ptr %i.do, align 8, !tbaa !64
  store i32 %i.iq, ptr %i.ff, align 8, !tbaa !64
  %i.ir = load i64, ptr %i.dp, align 16, !tbaa !21
  store i64 %i.ir, ptr %i.fg, align 16, !tbaa !21
  %i.is = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %13)
          to label %bb.bp unwind label %bb.ck

bb.bp:                                            ; preds = %.thread
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = invoke noundef i32 %i.iv(ptr noundef nonnull align 8 dereferenceable(208) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.cl     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.ix = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef i32 %i.ja(ptr noundef nonnull align 8 dereferenceable(208) %i.ix, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.preheader.preheader unwind label %bb.cj ; 0 uses

.preheader.preheader:                             ; preds = %bb.bq
  %i.jc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !18 ; 2 uses
  %.not.i74 = icmp eq ptr %i.jd, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.br

bb.br:                                            ; preds = %.preheader.preheader
  %i.je = atomicrmw add ptr %i.jd, i32 -1 acq_rel, align 4
  %i.jf = icmp eq i32 %i.je, 1
  br i1 %i.jf, label %bb.bs, label %_ZN4ncnn3MatD2Ev.exit67

bb.bs:                                            ; preds = %bb.br
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.jh = load ptr, ptr %i.jg, align 16, !tbaa !19 ; 3 uses
  %.not3.i75 = icmp eq ptr %i.jh, null
  %i.ji = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i75, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  invoke void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef %i.ji)
          to label %_ZN4ncnn3MatD2Ev.exit67 unwind label %bb.bw, !inline_history !0

bb.bu:                                            ; preds = %bb.bs
  %.not.i106 = icmp eq ptr %i.ji, null
  br i1 %.not.i106, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef nonnull %i.ji) #9
  br label %_ZN4ncnn3MatD2Ev.exit67

bb.bw:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %bb.br, %.preheader.preheader, %bb.bt, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.jo = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i78 = icmp eq ptr %i.jo, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.bx

bb.bx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit67
  %i.jp = atomicrmw add ptr %i.jo, i32 -1 acq_rel, align 4
  %i.jq = icmp eq i32 %i.jp, 1
  br i1 %i.jq, label %bb.by, label %_ZN4ncnn3MatD2Ev.exit66

bb.by:                                            ; preds = %bb.bx
  %i.jr = load ptr, ptr %i.dl, align 16, !tbaa !19 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.jr, null
  %i.js = load ptr, ptr %11, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i79, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !12
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.js)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.cc, !inline_history !0

bb.ca:                                            ; preds = %bb.by
  %.not.i104 = icmp eq ptr %i.js, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef nonnull %i.js) #9
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.cc:                                            ; preds = %bb.bz
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit66:                          ; preds = %bb.bx, %_ZN4ncnn3MatD2Ev.exit67, %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.gb

bb.cd:                                            ; preds = %bb.bi
  %i.jy = atomicrmw add ptr %i.fm, i32 -1 acq_rel, align 4
  %i.jz = icmp eq i32 %i.jy, 1
  br i1 %i.jz, label %bb.ce, label %_ZN4ncnn3MatD2Ev.exit65

bb.ce:                                            ; preds = %bb.cd
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !19 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.kb, null
  %i.kc = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i83, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef %i.kc)
          to label %_ZN4ncnn3MatD2Ev.exit65 unwind label %bb.ci, !inline_history !0

bb.cg:                                            ; preds = %bb.ce
  %.not.i102 = icmp eq ptr %i.kc, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.kc) #9
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.ci:                                            ; preds = %bb.cf
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit65:                          ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.bi, %bb.cd, %bb.bh
  %.pn59.pn = phi { ptr, i32 } [ %i.fj, %bb.bh ], [ %i.fk, %bb.cd ], [ %i.fk, %bb.bi ], [ %i.fk, %bb.cf ], [ %i.fk, %bb.cg ], [ %i.fk, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.cu

bb.cj:                                            ; preds = %bb.bm, %bb.bq
  %i.ki = landingpad { ptr, i32 }
end_hunk_0
