Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/dropout_x86_avx512?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$_ZN4ncnn18Dropout_x86_avx512D0Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn18Dropout_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn18Dropout_x86_avx512E, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn18Dropout_x86_avx512D0Ev, ptr @_ZN4ncnn7Dropout10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn18Dropout_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn18Dropout_x86_avx512E, ptr @_ZTIN4ncnn7DropoutE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn18Dropout_x86_avx512E = hidden constant [28 x i8] c"N4ncnn18Dropout_x86_avx512E\00", align 1
@_ZTIN4ncnn7DropoutE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn18Dropout_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn18Dropout_x86_avx512C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn18Dropout_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %0) #7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #18
  ret void
}

declare noundef i32 @_ZN4ncnn7Dropout10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(212), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca <8 x float>, align 32             ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca <4 x float>, align 16             ; 6 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load float, ptr %i.l, align 8, !tbaa !28 ; 3 uses
  %i.n = fcmp fast oeq float %i.m, 1.000000e+00
  br i1 %i.n, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !51, !range !52, !noundef !53
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !32   ; 4 uses
  br i1 %i.q, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %.tr.i = trunc i64 %i.u to i32
  %i.v = shl i32 %.tr.i, 3
  %i.w = sdiv i32 %i.v, %i.s
  %i.x = icmp eq i32 %i.w, 16
  br i1 %i.x, label %bb.d, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.y = tail call noundef i32 @_ZNK4ncnn18Dropout_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %bb.af

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.b, %bb.c, %_ZNK4ncnn3Mat8elembitsEv.exit
  %4 = phi i32 [ %i.s, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.c ], [ %i.s, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !54  ; 4 uses
  switch i32 %4, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread [
    i32 16, label %bb.e
    i32 8, label %bb.v
    i32 4, label %bb.aa
  ]

bb.e:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.ad, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %0, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.g unwind label %bb.o       ; 0 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ai, null
  br i1 %.not.i54, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit53

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %.not3.i = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.am)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.n, !inline_history !50

bb.l:                                             ; preds = %bb.j
  %.not.i60 = icmp eq ptr %i.am, null
  br i1 %.not.i60, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.am) #7
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.n:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.af

bb.o:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %.not.i55 = icmp eq ptr %i.at, null
  br i1 %.not.i55, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %.not3.i56 = icmp eq ptr %i.aw, null
  %i.ax = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ax)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.u, !inline_history !50

bb.s:                                             ; preds = %bb.q
  %.not.i59 = icmp eq ptr %i.ax, null
  br i1 %.not.i59, label %_ZN4ncnn3MatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ax) #7
  br label %_ZN4ncnn3MatD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.p, %bb.o, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %i.as

bb.v:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38 ; 2 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !42
  store i32 %i.bk, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bl = mul nsw i32 %i.bg, %i.be
  %i.bm = mul nsw i32 %i.bl, %i.bi
  store i32 %i.bm, ptr %i.d, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.bn = insertelement <8 x float> poison, float %i.m, i64 0
  %i.bo = shufflevector <8 x float> %i.bn, <8 x float> poison, <8 x i32> zeroinitializer
  store <8 x float> %i.bo, ptr %i.e, align 32, !tbaa !43
  switch i32 %i.aa, label %bb.y [
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %i.e)
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bs)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.e)
  br label %.thread

bb.y:                                             ; preds = %bb.v
  %i.bt = add i32 %i.aa, -3
  %or.cond = icmp ult i32 %i.bt, 2
  br i1 %or.cond, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.d, ptr nonnull %i.e)
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.w, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.af

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !38 ; 2 uses
  store i32 %i.bx, ptr %i.f, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !40 ; 2 uses
  store i32 %i.bz, ptr %i.g, align 4, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !42
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.ce = mul nsw i32 %i.bz, %i.bx
  %i.cf = mul nsw i32 %i.ce, %i.cb
  store i32 %i.cf, ptr %i.i, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.cg = insertelement <4 x float> poison, float %i.m, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ch, ptr %i.j, align 16, !tbaa !43
  switch i32 %i.aa, label %bb.ad [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.cj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3, ptr nonnull %i.f, ptr nonnull %1, ptr nonnull %i.j)
  br label %.thread64

bb.ac:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.cl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4, ptr nonnull %i.g, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %i.j)
  br label %.thread64

bb.ad:                                            ; preds = %bb.aa
  %i.cm = add i32 %i.aa, -3
  %or.cond3 = icmp ult i32 %i.cm, 2
  br i1 %or.cond3, label %bb.ae, label %.thread64

bb.ae:                                            ; preds = %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.co)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.5, ptr nonnull %i.h, ptr nonnull %1, ptr nonnull %i.i, ptr nonnull %i.j)
  br label %.thread64

.thread64:                                        ; preds = %bb.ac, %bb.ab, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.af

_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread:      ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cp = tail call noundef i32 @_ZNK4ncnn7Dropout15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.af

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit53, %.thread, %.thread64, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread, %bb.a, %bb.d
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %_ZN4ncnn3MatD2Ev.exit53 ], [ 0, %.thread ], [ 0, %.thread64 ], [ %i.cp, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn18Dropout_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn7DropoutC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn18Dropout_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !58
  ret void
}

declare void @_ZN4ncnn7DropoutC2Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn18Dropout_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load float, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  %i.f = fcmp fast oeq float %i.e, 1.000000e+00
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store float %i.e, ptr %i.a, align 4, !tbaa !45
  %i.h = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4ncnn24dropout_bf16s_avx512bf16ERNS_3MatEfRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, float noundef nofpclass(nan inf) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %_ZN4ncnnL13dropout_bf16sERNS_3MatEfRKNS_6OptionE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !42
  store i32 %i.p, ptr %i.b, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.s = mul nsw i32 %i.l, %i.j
  %i.t = mul nsw i32 %i.s, %i.n
  %i.u = mul nsw i32 %i.t, %i.r
  store i32 %i.u, ptr %i.c, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.w)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL13dropout_bf16sERNS_3MatEfRKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %_ZN4ncnnL13dropout_bf16sERNS_3MatEfRKNS_6OptionE.exit

_ZN4ncnnL13dropout_bf16sERNS_3MatEfRKNS_6OptionE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4ncnnL13dropout_bf16sERNS_3MatEfRKNS_6OptionE.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(32) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 4 uses
  %.not18 = icmp sgt i32 %i.k, %i.j
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = add nsw i32 %i.j, 1
  %i.n = add i32 %i.j, %i.k
  %i.o = and i32 %i.n, 1
  %lcmp.mod.not.not = icmp eq i32 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = load ptr, ptr %3, align 8, !tbaa !37
  %.idx.prol = shl nsw i64 %i.l, 5
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx.prol ; 2 uses
  %i.r = load <8 x float>, ptr %i.q, align 1, !tbaa !43
  %i.s = load <8 x float>, ptr %4, align 32, !tbaa !43
  %i.t = fmul fast <8 x float> %i.s, %i.r
  store <8 x float> %i.t, ptr %i.q, align 1, !tbaa !43
  %indvars.iv.next.prol = add nsw i64 %i.l, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.u = icmp eq i32 %i.j, %i.k
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !37
  %.idx = shl nsw i64 %indvars.iv, 5
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.idx ; 2 uses
  %i.x = load <8 x float>, ptr %i.w, align 1, !tbaa !43
  %i.y = load <8 x float>, ptr %4, align 32, !tbaa !43
  %i.z = fmul fast <8 x float> %i.y, %i.x
  store <8 x float> %i.z, ptr %i.w, align 1, !tbaa !43
  %i.aa = load ptr, ptr %3, align 8, !tbaa !37
  %indvars.iv.next = shl i64 %indvars.iv, 5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %indvars.iv.next
  %i.ac = getelementptr i8, ptr %i.ab, i64 32     ; 2 uses
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !43
  %i.ae = load <8 x float>, ptr %4, align 32, !tbaa !43
  %i.af = fmul fast <8 x float> %i.ae, %i.ad
  store <8 x float> %i.af, ptr %i.ac, align 1, !tbaa !43
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.m, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
end_hunk_0
