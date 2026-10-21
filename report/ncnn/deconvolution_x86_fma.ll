Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_fma?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }
%"class.ncnn::ParamDict" = type { ptr, ptr }
%"class.ncnn::ModelBinFromMatArray" = type { %"class.ncnn::ModelBin", ptr }
%"class.ncnn::ModelBin" = type { ptr }
%"class.ncnn::Option" = type { i8, i8, i8, i8, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

$_ZN4ncnn21Deconvolution_x86_fmaD2Ev = comdat any

$_ZN4ncnn21Deconvolution_x86_fmaD0Ev = comdat any

$_ZN4ncnn13DeconvolutionD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn21Deconvolution_x86_fmaE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn21Deconvolution_x86_fmaE, ptr @_ZN4ncnn21Deconvolution_x86_fmaD2Ev, ptr @_ZN4ncnn21Deconvolution_x86_fmaD0Ev, ptr @_ZN4ncnn13Deconvolution10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn13Deconvolution10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn21Deconvolution_x86_fma15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn21Deconvolution_x86_fma16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn21Deconvolution_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn21Deconvolution_x86_fmaE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn21Deconvolution_x86_fmaE, ptr @_ZTIN4ncnn13DeconvolutionE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn21Deconvolution_x86_fmaE = hidden constant [31 x i8] c"N4ncnn21Deconvolution_x86_fmaE\00", align 1
@_ZTIN4ncnn13DeconvolutionE = external constant ptr
@_ZTVN4ncnn13DeconvolutionE = external constant { [12 x ptr] }, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@switch.table._ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE = private unnamed_addr constant [8 x ptr] [ptr @_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr poison, ptr poison, ptr @_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr poison, ptr poison, ptr poison, ptr @_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined], align 8

@_ZN4ncnn21Deconvolution_x86_fmaC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn21Deconvolution_x86_fmaC2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn21Deconvolution_x86_fmaD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn21Deconvolution_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !12
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
  tail call void @free(ptr noundef nonnull %i.h) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.o, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13DeconvolutionD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn21Deconvolution_x86_fmaD0Ev(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn21Deconvolution_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4ncnn21Deconvolution_x86_fmaD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn21Deconvolution_x86_fmaD2Ev.exit

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
          to label %_ZN4ncnn21Deconvolution_x86_fmaD2Ev.exit unwind label %bb.g, !inline_history !93

bb.e:                                             ; preds = %bb.c
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN4ncnn21Deconvolution_x86_fmaD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #10, !inline_history !93
  br label %_ZN4ncnn21Deconvolution_x86_fmaD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19, !inline_history !93
  unreachable

_ZN4ncnn21Deconvolution_x86_fmaD2Ev.exit:         ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.o, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13DeconvolutionD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(592) %0) #10, !inline_history !93
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #20
  ret void
}

declare noundef i32 @_ZN4ncnn13Deconvolution10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn13Deconvolution10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn21Deconvolution_x86_fma15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 38 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !232
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.fg

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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 26) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
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
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.z

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %common.resume

bb.j:                                             ; preds = %bb.b
  %i.t = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 54) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
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
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.z

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %common.resume

bb.o:                                             ; preds = %bb.b
  %i.ae = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 30) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %common.resume

bb.r:                                             ; preds = %bb.b
  %i.ak = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 71) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %common.resume

bb.u:                                             ; preds = %bb.b
  %i.aq = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 67) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
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
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %common.resume

bb.z:                                             ; preds = %bb.x, %bb.s, %bb.p, %bb.m, %bb.h, %bb.d
  %.023.ph.i = phi ptr [ %i.aq, %bb.x ], [ %i.ak, %bb.s ], [ %i.ae, %bb.p ], [ %i.t, %bb.m ], [ %i.l, %bb.h ], [ %i.f, %bb.d ] ; 3 uses
  %i.bb = load ptr, ptr %.023.ph.i, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(208) %.023.ph.i, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !94 ; 0 uses
  br label %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit

common.resume:                                    ; preds = %bb.e, %bb.i, %bb.n, %bb.q, %bb.t, %bb.y, %_ZN4ncnn3MatD2Ev.exit.i, %bb.ct
  %common.resume.op = phi { ptr, i32 } [ %.pn586.pn.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn59.pn.pn.pn, %bb.ct ], [ %i.k, %bb.e ], [ %i.s, %bb.i ], [ %i.ad, %bb.n ], [ %i.aj, %bb.q ], [ %i.ap, %bb.t ], [ %i.ba, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit: ; preds = %bb.b, %bb.z
  %.02329.i = phi ptr [ %.023.ph.i, %bb.z ], [ null, %bb.b ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %.02329.i, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !44, !range !45, !noundef !46
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.bj = call noundef i32 @_ZN4ncnn21Deconvolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.fg

bb.ab:                                            ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !48
  %i.bo = mul nsw i32 %i.bn, %i.bl                ; 47 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !49
  %i.br = sdiv i32 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !50 ; 35 uses
  %i.bu = sdiv i32 %i.br, %i.bt                   ; 96 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !51, !range !45, !noundef !46
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.by = and i32 %i.bt, 7
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = and i32 %i.bt, 3
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %i.cb, i32 4, i32 1
  %i.cd = select i1 %i.bz, i32 8, i32 %i.cc
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.053 = phi i32 [ %i.cd, %bb.ac ], [ 1, %bb.ab ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52, !range !45, !noundef !46
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ae, label %bb.cu

bb.ae:                                            ; preds = %bb.ad
  %i.ch = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 2, i32 noundef 1)
          to label %bb.af unwind label %bb.ay

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 3, i32 noundef 0)
          to label %bb.ag unwind label %bb.ay

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 4, i32 noundef 1)
          to label %bb.ah unwind label %bb.ay

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 5, i32 noundef 0)
          to label %bb.ai unwind label %bb.ay

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 6, i32 noundef 1)
          to label %bb.aj unwind label %bb.ay

bb.aj:                                            ; preds = %bb.ai
  %i.cj = load i32, ptr %i.bs, align 8, !tbaa !50
  %i.ck = mul nsw i32 %i.cj, %i.bo
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 7, i32 noundef %i.ck)
          to label %bb.ak unwind label %bb.ay

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 8, i32 noundef 0)
          to label %bb.al unwind label %bb.ay

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 9, i32 noundef %i.bu)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 10, i32 noundef -1)
          to label %bb.an unwind label %bb.ay

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 11, i32 noundef 0)
          to label %bb.ao unwind label %bb.ay

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 12, i32 noundef %.053)
          to label %bb.ap unwind label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !53 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(208) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.aq unwind label %bb.ay     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 0, ptr %i.cx, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ct, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cz = load i32, ptr %i.bs, align 8, !tbaa !50
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.cy, i32 noundef %i.bo, i32 noundef %i.bu, i32 noundef %i.cz, ptr noundef null)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.da = load i32, ptr %i.bs, align 8, !tbaa !50
  %i.db = mul nsw i32 %i.da, %i.bo
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.db, i32 noundef %i.bu, i64 noundef 4, ptr noundef null)
          to label %.preheader172 unwind label %bb.ba

.preheader172:                                    ; preds = %bb.ar
  %i.dc = icmp sgt i32 %i.bu, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader172
  %i.dd = load ptr, ptr %11, align 16, !tbaa !20
  %i.de = load i32, ptr %i.cv, align 4, !tbaa !54
  %i.df = sext i32 %i.de to i64
  %i.dg = load i64, ptr %i.cr, align 16, !tbaa !55
  %factor.op.mul207 = mul i64 %i.dg, %i.df
  %i.dh = load i32, ptr %i.bs, align 8, !tbaa !50 ; 2 uses
  %.not208 = icmp sgt i32 %.053, %i.dh
  %i.di = icmp sgt i32 %i.bo, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not208, label %._crit_edge.split, label %.preheader171.lr.ph.preheader

.preheader171.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.dm = add nsw i32 %.053, -1
  %i.dn = zext i32 %.053 to i64                   ; 3 uses
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = zext nneg i32 %i.dh to i64
  %wide.trip.count247 = zext nneg i32 %i.bu to i64
  %.pre249 = load ptr, ptr %12, align 8
  %wide.trip.count239 = zext nneg i32 %i.bo to i64
  %xtraiter958 = and i64 %i.dn, 3                 ; 3 uses
  %i.dq = add nsw i32 %.053, -1
  %i.dr = icmp ult i32 %i.dq, 3
  %unroll_iter = and i64 %i.dn, 4294967292
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  %lcmp.mod961 = icmp ne i64 %xtraiter958, 0
  br label %.preheader171.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge205, %.lr.ph, %.preheader172
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !18 ; 2 uses
  %.not.i70 = icmp eq ptr %i.dt, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.as

bb.as:                                            ; preds = %._crit_edge.split
  %i.du = atomicrmw add ptr %i.dt, i32 -1 acq_rel, align 4
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit68

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !19 ; 3 uses
  %.not3.i71 = icmp eq ptr %i.dx, null
  %i.dy = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i71, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %i.dy)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.ax, !inline_history !0

bb.av:                                            ; preds = %bb.at
  %.not.i108 = icmp eq ptr %i.dy, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.dy) #10
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.ax:                                            ; preds = %bb.au
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.as, %._crit_edge.split, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  store i64 0, ptr %i.ej, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.eg, i8 0, i64 28, i1 false)
  %i.ek = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ek, null
  br i1 %.not.i113, label %.thread, label %bb.bb

bb.ay:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.az:                                            ; preds = %bb.aq
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.ba:                                            ; preds = %bb.ar
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !18 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ep, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.bv

.preheader171.lr.ph:                              ; preds = %.preheader171.lr.ph.preheader, %._crit_edge205
  %15 = phi ptr [ %.pre249, %.preheader171.lr.ph.preheader ], [ %16, %._crit_edge205 ] ; 2 uses
  %indvars.iv244 = phi i64 [ 0, %.preheader171.lr.ph.preheader ], [ %indvars.iv.next245, %._crit_edge205 ] ; 3 uses
  %i.eq = load i32, ptr %i.dj, align 4
  %i.er = load i64, ptr %i.dk, align 8
  %i.es = load i64, ptr %i.dl, align 8            ; 2 uses
  %factor.op.mul = mul i64 %i.er, %i.es           ; 5 uses
  %i.et = sext i32 %i.eq to i64
  %i.eu = mul nsw i64 %indvars.iv244, %i.et
  %i.ev = mul i64 %i.eu, %i.es
  %invariant.gep = getelementptr i8, ptr %15, i64 %i.ev
  br i1 %i.di, label %.preheader171.us.preheader, label %._crit_edge205

.preheader171.us.preheader:                       ; preds = %.preheader171.lr.ph
  %.reass = mul i64 %factor.op.mul207, %indvars.iv244
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.reass
  br label %.preheader171.us

.preheader171.us:                                 ; preds = %.preheader171.us.preheader, %._crit_edge.us
  %indvars.iv241 = phi i64 [ 0, %.preheader171.us.preheader ], [ %indvars.iv.next242, %._crit_edge.us ] ; 6 uses
  %.042203.us = phi ptr [ %i.ew, %.preheader171.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  br label %.preheader170.us

.noexc112.us:                                     ; preds = %.preheader170.us, %.noexc112.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc112.us ], [ 0, %.preheader170.us ] ; 5 uses
  %.2199.us = phi ptr [ %i.fi, %.noexc112.us ], [ %.1201.us, %.preheader170.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc112.us ], [ 0, %.preheader170.us ]
  %i.ex = add nuw nsw i64 %indvars.iv, %indvars.iv241
  %.reass.us = mul i64 %factor.op.mul, %i.ex
  %gep198.us = getelementptr i8, ptr %invariant.gep197.us, i64 %.reass.us
  %i.ey = load float, ptr %gep198.us, align 4, !tbaa !39
  store float %i.ey, ptr %.2199.us, align 4, !tbaa !39
  %i.ez = getelementptr inbounds nuw i8, ptr %.2199.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.fa = add nuw nsw i64 %indvars.iv.next, %indvars.iv241
  %.reass.us.1 = mul i64 %factor.op.mul, %i.fa
  %gep198.us.1 = getelementptr i8, ptr %invariant.gep197.us, i64 %.reass.us.1
  %i.fb = load float, ptr %gep198.us.1, align 4, !tbaa !39
  store float %i.fb, ptr %i.ez, align 4, !tbaa !39
  %i.fc = getelementptr inbounds nuw i8, ptr %.2199.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.fd = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv241
  %.reass.us.2 = mul i64 %factor.op.mul, %i.fd
  %gep198.us.2 = getelementptr i8, ptr %invariant.gep197.us, i64 %.reass.us.2
  %i.fe = load float, ptr %gep198.us.2, align 4, !tbaa !39
  store float %i.fe, ptr %i.fc, align 4, !tbaa !39
  %i.ff = getelementptr inbounds nuw i8, ptr %.2199.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.fg = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv241
  %.reass.us.3 = mul i64 %factor.op.mul, %i.fg
  %gep198.us.3 = getelementptr i8, ptr %invariant.gep197.us, i64 %.reass.us.3
  %i.fh = load float, ptr %gep198.us.3, align 4, !tbaa !39
  store float %i.fh, ptr %i.ff, align 4, !tbaa !39
  %i.fi = getelementptr inbounds nuw i8, ptr %.2199.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.noexc112.us, !llvm.loop !95

.unr-lcssa:                                       ; preds = %.noexc112.us
  br i1 %lcmp.mod959.not, label %.epilog-lcssa, label %.noexc112.us.epil.preheader

.noexc112.us.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader170.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader170.us ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.2199.us.epil.init = phi ptr [ %.1201.us, %.preheader170.us ], [ %i.fi, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod961)
  br label %.noexc112.us.epil

.noexc112.us.epil:                                ; preds = %.noexc112.us.epil, %.noexc112.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.noexc112.us.epil.preheader ], [ %indvars.iv.next.epil, %.noexc112.us.epil ] ; 2 uses
  %.2199.us.epil = phi ptr [ %.2199.us.epil.init, %.noexc112.us.epil.preheader ], [ %i.fl, %.noexc112.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.noexc112.us.epil.preheader ], [ %epil.iter.next, %.noexc112.us.epil ]
  %i.fj = add nuw nsw i64 %indvars.iv.epil, %indvars.iv241
  %.reass.us.epil = mul i64 %factor.op.mul, %i.fj
  %gep198.us.epil = getelementptr i8, ptr %invariant.gep197.us, i64 %.reass.us.epil
  %i.fk = load float, ptr %gep198.us.epil, align 4, !tbaa !39
  store float %i.fk, ptr %.2199.us.epil, align 4, !tbaa !39
  %i.fl = getelementptr inbounds nuw i8, ptr %.2199.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter958
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.noexc112.us.epil, !llvm.loop !96

.epilog-lcssa:                                    ; preds = %.noexc112.us.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.fi, %.unr-lcssa ], [ %i.fl, %.noexc112.us.epil ] ; 2 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %._crit_edge.us, label %.preheader170.us, !llvm.loop !97

.preheader170.us:                                 ; preds = %.preheader171.us, %.epilog-lcssa
  %indvars.iv236 = phi i64 [ 0, %.preheader171.us ], [ %indvars.iv.next237, %.epilog-lcssa ] ; 2 uses
  %.1201.us = phi ptr [ %.042203.us, %.preheader171.us ], [ %.lcssa, %.epilog-lcssa ] ; 2 uses
  %invariant.gep197.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv236 ; 5 uses
  br i1 %i.dr, label %.noexc112.us.epil.preheader, label %.noexc112.us

._crit_edge.us:                                   ; preds = %.epilog-lcssa
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, %i.dn ; 2 uses
  %i.fm = add nuw nsw i64 %indvars.iv.next242, %i.do
  %i.fn = icmp samesign ult i64 %i.fm, %i.dp
  br i1 %i.fn, label %.preheader171.us, label %._crit_edge205.loopexit, !llvm.loop !98

._crit_edge205.loopexit:                          ; preds = %._crit_edge.us
  %.pre = load ptr, ptr %12, align 8
  br label %._crit_edge205

._crit_edge205:                                   ; preds = %.preheader171.lr.ph, %._crit_edge205.loopexit
  %16 = phi ptr [ %.pre, %._crit_edge205.loopexit ], [ %15, %.preheader171.lr.ph ]
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge.split, label %.preheader171.lr.ph, !llvm.loop !99

bb.bb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fp = atomicrmw add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.a = load ptr, ptr %i.fo, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.a, null
  br i1 %.not.i.i, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fq = atomicrmw add ptr %.pre.a, i32 -1 acq_rel, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.fs = load ptr, ptr %i.eg, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.fs, null
  %i.ft = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.ft)
          to label %.thread unwind label %bb.cb, !inline_history !1

bb.bf:                                            ; preds = %bb.bd
  %.not.i18.i = icmp eq ptr %i.ft, null
  br i1 %.not.i18.i, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.ft) #10
  br label %.thread

.thread:                                          ; preds = %_ZN4ncnn3MatD2Ev.exit68, %bb.bc, %bb.bb, %bb.be, %bb.bg, %bb.bf
  %i.fx = load <2 x ptr>, ptr %11, align 16, !tbaa !59
  store <2 x ptr> %i.fx, ptr %13, align 16, !tbaa !59
  %i.fy = load i64, ptr %i.cr, align 16, !tbaa !55
  store i64 %i.fy, ptr %i.ee, align 16, !tbaa !55
  %i.fz = load i32, ptr %i.cs, align 8, !tbaa !60
  store i32 %i.fz, ptr %i.ef, align 8, !tbaa !60
  %i.ga = load ptr, ptr %i.ct, align 16, !tbaa !19
  store ptr %i.ga, ptr %i.eg, align 16, !tbaa !19
  %i.gb = load <4 x i32>, ptr %i.cu, align 8, !tbaa !61
  store <4 x i32> %i.gb, ptr %i.eh, align 8, !tbaa !61
  %i.gc = load i32, ptr %i.cw, align 8, !tbaa !62
  store i32 %i.gc, ptr %i.ei, align 8, !tbaa !62
  %i.gd = load i64, ptr %i.cx, align 16, !tbaa !21
  store i64 %i.gd, ptr %i.ej, align 16, !tbaa !21
  %i.ge = load ptr, ptr %i.ci, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %13)
          to label %bb.bh unwind label %bb.cc

bb.bh:                                            ; preds = %.thread
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = invoke noundef i32 %i.gh(ptr noundef nonnull align 8 dereferenceable(208) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bi unwind label %bb.cd     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  %i.gj = load ptr, ptr %i.ci, align 8, !tbaa !53 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(208) %i.gj, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.preheader.preheader unwind label %bb.cb ; 0 uses

.preheader.preheader:                             ; preds = %bb.bi
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !18 ; 2 uses
  %.not.i74 = icmp eq ptr %i.gp, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.bj

bb.bj:                                            ; preds = %.preheader.preheader
  %i.gq = atomicrmw add ptr %i.gp, i32 -1 acq_rel, align 4
  %i.gr = icmp eq i32 %i.gq, 1
  br i1 %i.gr, label %bb.bk, label %_ZN4ncnn3MatD2Ev.exit67

bb.bk:                                            ; preds = %bb.bj
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gt = load ptr, ptr %i.gs, align 16, !tbaa !19 ; 3 uses
  %.not3.i75 = icmp eq ptr %i.gt, null
  %i.gu = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i75, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu)
          to label %_ZN4ncnn3MatD2Ev.exit67 unwind label %bb.bo, !inline_history !0

bb.bm:                                            ; preds = %bb.bk
  %.not.i106 = icmp eq ptr %i.gu, null
  br i1 %.not.i106, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @free(ptr noundef nonnull %i.gu) #10
  br label %_ZN4ncnn3MatD2Ev.exit67

bb.bo:                                            ; preds = %bb.bl
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %bb.bj, %.preheader.preheader, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.ha = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 2 uses
  %.not.i78 = icmp eq ptr %i.ha, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit67
  %i.hb = atomicrmw add ptr %i.ha, i32 -1 acq_rel, align 4
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.bq, label %_ZN4ncnn3MatD2Ev.exit66

bb.bq:                                            ; preds = %bb.bp
  %i.hd = load ptr, ptr %i.ct, align 16, !tbaa !19 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.hd, null
  %i.he = load ptr, ptr %11, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i79, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !12
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef %i.he)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.bu, !inline_history !0

bb.bs:                                            ; preds = %bb.bq
  %.not.i104 = icmp eq ptr %i.he, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef nonnull %i.he) #10
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.bu:                                            ; preds = %bb.br
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit66:                          ; preds = %bb.bp, %_ZN4ncnn3MatD2Ev.exit67, %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.ez

bb.bv:                                            ; preds = %bb.ba
  %i.hk = atomicrmw add ptr %i.ep, i32 -1 acq_rel, align 4
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.bw, label %_ZN4ncnn3MatD2Ev.exit65

bb.bw:                                            ; preds = %bb.bv
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !19 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i83, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit65 unwind label %bb.ca, !inline_history !0

bb.by:                                            ; preds = %bb.bw
  %.not.i102 = icmp eq ptr %i.ho, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.ho) #10
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.ca:                                            ; preds = %bb.bx
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit65:                          ; preds = %bb.bz, %bb.by, %bb.bx, %bb.ba, %bb.bv, %bb.az
  %.pn59.pn = phi { ptr, i32 } [ %i.em, %bb.az ], [ %i.en, %bb.bv ], [ %i.en, %bb.ba ], [ %i.en, %bb.bx ], [ %i.en, %bb.by ], [ %i.en, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %bb.cm

bb.cb:                                            ; preds = %bb.be, %bb.bi
  %i.hu = landingpad { ptr, i32 }
end_hunk_0
