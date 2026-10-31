Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn8ROIAlignD0Ev = comdat any

@_ZTVN4ncnn8ROIAlignE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn8ROIAlignE, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn8ROIAlignD0Ev, ptr @_ZN4ncnn8ROIAlign10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn8ROIAlignE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn8ROIAlignE, ptr @_ZTIN4ncnn5LayerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn8ROIAlignE = hidden constant [17 x i8] c"N4ncnn8ROIAlignE\00", align 1
@_ZTIN4ncnn5LayerE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn8ROIAlignC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn8ROIAlignC2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn8ROIAlignD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn8ROIAlign10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(232) initializes((208, 225), (228, 232)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.a, ptr %i.b, align 8, !tbaa !28
  %i.c = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.c, ptr %i.d, align 4, !tbaa !29
  %i.e = tail call fast noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, float noundef nofpclass(nan inf) 1.000000e+00)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %i.e, ptr %i.f, align 8, !tbaa !43
  %i.g = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 3, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.g, ptr %i.h, align 4, !tbaa !30
  %i.i = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 4, i32 noundef 0)
  %i.j = icmp ne i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 8, !tbaa !31
  %i.m = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 5, i32 noundef 0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.m, ptr %i.n, align 4, !tbaa !32
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca float, align 4                    ; 4 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !44     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  store i32 %i.n, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46
  store i32 %i.p, ptr %i.b, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  store i32 %i.t, ptr %i.c, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.v = load ptr, ptr %2, align 8, !tbaa !44     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.t, i64 noundef %i.r, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !47
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.af, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = load <1 x float>, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load float, ptr %i.al, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ar = load float, ptr %i.ao, align 4, !tbaa !39
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = shufflevector <1 x float> %i.an, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = fmul fast <2 x float> %i.at, %i.au      ; 5 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %i.d, align 4, !tbaa !39
  %i.ax = extractelement <2 x float> %i.av, i64 1
  store float %i.ax, ptr %i.e, align 4, !tbaa !39
  %i.ay = load <2 x float>, ptr %i.ap, align 4, !tbaa !39
  %i.az = fmul fast <2 x float> %i.ay, %i.au      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !31, !range !50, !noundef !51
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bd = fadd fast <2 x float> %i.av, splat (float -5.000000e-01) ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  store float %i.be, ptr %i.d, align 4, !tbaa !39
  %i.bf = extractelement <2 x float> %i.bd, i64 1
  store float %i.bf, ptr %i.e, align 4, !tbaa !39
  %i.bg = fsub fast <2 x float> %i.az, %i.av
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = fsub fast <2 x float> %i.az, %i.av
  %i.bi = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bh, <2 x float> splat (float 1.000000e+00))
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.bj = phi <2 x float> [ %i.bg, %.thread ], [ %i.bi, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.bk = load <2 x i32>, ptr %i.w, align 8, !tbaa !35
  %i.bl = sitofp fast <2 x i32> %i.bk to <2 x float>
  %i.bm = fdiv fast <2 x float> %i.bj, %i.bl      ; 3 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  store float %i.bn, ptr %i.f, align 4, !tbaa !39
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  store float %i.bo, ptr %i.g, align 4, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  switch i32 %i.bq, label %bb.j [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bs)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = uitofp nneg i32 %i.bu to float
  %i.bx = fptosi float %i.bw to i32
  %i.by = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %i.bz = shufflevector <2 x i32> %i.by, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ca = tail call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bm)
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = phi <2 x i32> [ %i.cb, %bb.h ], [ %i.bz, %bb.g ] ; 2 uses
  %i.cd = extractelement <2 x i32> %i.cc, i64 1   ; 2 uses
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !35
  %i.ce = extractelement <2 x i32> %i.cc, i64 0   ; 2 uses
  store i32 %i.ce, ptr %i.i, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.cf = mul nsw i32 %i.cd, %i.ce
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = uitofp nneg i32 %.sroa.speculated to float
  store float %i.cg, ptr %i.j, align 4, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ci)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.j
  %.028 = phi i32 [ 0, %bb.j ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.028
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn8ROIAlignC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8ROIAlignE, i64 16), ptr %0, align 8, !tbaa !54
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %.not158 = icmp sgt i32 %i.k, %i.j
  br i1 %.not158, label %._crit_edge160.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !37, !noalias !63
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !63
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !63
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !37, !noalias !64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !64
  %factor.op.mul162 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge160.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge160.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !35   ; 3 uses
  %i.ae = load i32, ptr %11, align 4, !tbaa !35   ; 5 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp fast <2 x i32> %i.ag to <2 x float> ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !30  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = uitofp nneg i32 %i.ai to float
  %i.al = add nsw i32 %i.ae, -1
  %i.am = add nsw i32 %i.ad, -1
  %i.an = sext i32 %i.k to i64
  %i.ao = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge157
  %indvars.iv170 = phi i64 [ %i.an, %.noexc.lr.ph.split.split ], [ %indvars.iv.next171, %._crit_edge157 ] ; 3 uses
  %.reass161 = mul i64 %factor.op.mul, %indvars.iv170
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass161 ; 4 uses
  %.reass163 = mul i64 %factor.op.mul162, %indvars.iv170
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass163
  br label %.preheader

.preheader:                                       ; preds = %.noexc, %._crit_edge
  %.058156 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %.059155 = phi ptr [ %i.as, %.noexc ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.at = uitofp ninf nsz nneg i32 %.058156 to float
  %i.au = add nuw nsw i32 %.058156, 1             ; 3 uses
  %i.av = uitofp ninf nsz nneg i32 %i.au to float
  %i.aw = insertelement <2 x float> poison, float %i.at, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.av, i64 1
  br label %bb.c

._crit_edge157:                                   ; preds = %._crit_edge
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next171 to i32
  %exitcond173.not = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond173.not, label %._crit_edge160.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge150
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.059155, i64 %i.ac
  %exitcond169.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond169.not, label %._crit_edge157, label %.preheader, !llvm.loop !59

bb.c:                                             ; preds = %.preheader, %._crit_edge150
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge150 ] ; 3 uses
  %i.az = load float, ptr %6, align 4, !tbaa !39
  %i.ba = load float, ptr %7, align 4, !tbaa !39  ; 2 uses
  %i.bb = load float, ptr %8, align 4, !tbaa !39
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = uitofp ninf nsz nneg i32 %i.bc to float
  %i.be = load float, ptr %9, align 4, !tbaa !39  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = uitofp ninf nsz nneg i32 %i.bf to float
  %i.bh = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ba, i64 1 ; 2 uses
  %i.bj = insertelement <2 x float> %i.aw, float %i.bd, i64 0
  %i.bk = fmul fast <2 x float> %i.bi, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.az, i64 1 ; 2 uses
  %i.bn = fadd fast <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> %i.ax, float %i.bg, i64 0
  %i.bp = fmul fast <2 x float> %i.bi, %i.bo
  %i.bq = fadd fast <2 x float> %i.bp, %i.bm
  %i.br = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bn, <2 x float> zeroinitializer)
  %i.bs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.br, <2 x float> %i.ah) ; 3 uses
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = fsub fast <2 x float> %i.bu, %i.bs
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bx = phi <2 x float> [ %i.bw, %bb.d ], [ %i.aq, %bb.c ]
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 4 uses
  %i.bz = extractelement <2 x float> %i.bu, i64 1
  %i.ca = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.cb = fcmp fast ole float %i.bz, %i.ca
  %i.cc = extractelement <2 x float> %i.bu, i64 0
  %i.cd = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.ce = fcmp fast ole float %i.cc, %i.cd
  %i.cf = select i1 %i.cb, i1 true, i1 %i.ce
  %i.cg = extractelement <2 x i32> %i.by, i64 0   ; 2 uses
  %i.ch = extractelement <2 x i32> %i.by, i64 1   ; 2 uses
  %i.ci = mul nsw i32 %i.cg, %i.ch
  %i.cj = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %i.ck = extractelement <2 x i1> %i.cj, i64 0
  %i.cl = extractelement <2 x i1> %i.cj, i64 1
  %or.cond = select i1 %i.cl, i1 %i.ck, i1 false
  br i1 %or.cond, label %.lr.ph149.split.us, label %._crit_edge150

.lr.ph149.split.us:                               ; preds = %bb.e
  %i.cm = uitofp nneg <2 x i32> %i.by to <2 x float> ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 1
  %i.co = fdiv fast float 1.000000e+00, %i.cn
  %i.cp = extractelement <2 x float> %i.cm, i64 0
  %i.cq = fdiv fast float 1.000000e+00, %i.cp
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph149.split.us
  %.055147.us = phi i32 [ 0, %.lr.ph149.split.us ], [ %i.eq, %._crit_edge.us ] ; 2 uses
  %.056146.us = phi float [ 0.000000e+00, %.lr.ph149.split.us ], [ %i.eo, %._crit_edge.us ]
  %i.cr = uitofp ninf nsz nneg i32 %.055147.us to float
  %i.cs = fadd fast float %i.cr, 5.000000e-01
  %i.ct = fmul fast float %i.ba, %i.cs
  %i.cu = fmul fast float %i.ct, %i.co
  %i.cv = fadd fast float %i.cu, %i.ca            ; 3 uses
  %i.cw = fptosi float %i.cv to i32               ; 3 uses
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  %i.cy = sitofp fast i32 %i.cx to float
  %i.cz = fsub fast float %i.cy, %i.cv
  %i.da = sitofp fast i32 %i.cw to float
  %i.db = fsub fast float %i.cv, %i.da
  %.not51.i.us = icmp slt i32 %i.cx, %i.ad        ; 2 uses
  %.046.i.us = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.am)
  %.043.i.us = select nsz i1 %.not51.i.us, float %i.cz, float 1.000000e+00
  %.042.i.us = select nsz i1 %.not51.i.us, float %i.db, float 0.000000e+00
  %i.dc = mul nsw i32 %i.ae, %i.cw                ; 2 uses
  %i.dd = mul nsw i32 %.046.i.us, %i.ae           ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.f
  %.054145.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ep, %bb.f ] ; 2 uses
  %.1144.us = phi float [ %.056146.us, %.lr.ph.us ], [ %i.eo, %bb.f ]
  %i.de = uitofp ninf nsz nneg i32 %.054145.us to float
  %i.df = fadd fast float %i.de, 5.000000e-01
  %i.dg = fmul fast float %i.be, %i.df
  %i.dh = fmul fast float %i.dg, %i.cq
  %i.di = fadd fast float %i.dh, %i.cd            ; 3 uses
  %i.dj = fptosi float %i.di to i32               ; 4 uses
  %i.dk = add nsw i32 %i.dj, 1                    ; 3 uses
  %i.dl = sitofp fast i32 %i.dk to float
  %i.dm = fsub fast float %i.dl, %i.di
  %i.dn = sitofp fast i32 %i.dj to float
  %i.do = fsub fast float %i.di, %i.dn
  %.not.i82.us = icmp slt i32 %i.dk, %i.ae        ; 2 uses
  %.045.i.us = select nsz i1 %.not.i82.us, float %i.dm, float 1.000000e+00 ; 2 uses
  %.044.i.us = select nsz i1 %.not.i82.us, float %i.do, float 0.000000e+00 ; 2 uses
  %.0.i.us = call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.al) ; 2 uses
  %i.dp = add nsw i32 %i.dc, %i.dj
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !39
  %i.dt = fmul fast float %i.ds, %.045.i.us
  %i.du = add nsw i32 %.0.i.us, %i.dc
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !39
  %i.dy = fmul fast float %i.dx, %.044.i.us
  %i.dz = fadd fast float %i.dy, %i.dt
  %i.ea = add nsw i32 %i.dd, %i.dj
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !39
  %i.ee = fmul fast float %i.ed, %.045.i.us
  %i.ef = add nsw i32 %.0.i.us, %i.dd
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !39
  %i.ej = fmul fast float %i.ei, %.044.i.us
  %i.ek = fadd fast float %i.ej, %i.ee
  %i.el = fmul fast float %i.dz, %.043.i.us
  %i.em = fmul fast float %i.ek, %.042.i.us
  %i.en = fadd fast float %i.el, %.1144.us
  %i.eo = fadd fast float %i.en, %i.em            ; 3 uses
  %i.ep = add nuw nsw i32 %.054145.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ep, %i.cg
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !60

._crit_edge.us:                                   ; preds = %bb.f
  %i.eq = add nuw nsw i32 %.055147.us, 1          ; 2 uses
  %exitcond166.not = icmp eq i32 %i.eq, %i.ch
  br i1 %exitcond166.not, label %._crit_edge150, label %.lr.ph.us, !llvm.loop !61

._crit_edge150:                                   ; preds = %._crit_edge.us, %bb.e
  %.056.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %i.eo, %._crit_edge.us ]
  %i.er = sitofp fast i32 %i.ci to float
  %i.es = fdiv fast float %.056.lcssa, %i.er
  %i.et = select fast i1 %i.cf, float 0.000000e+00, float %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.059155, i64 %indvars.iv
  store float %i.et, ptr %i.eu, align 4, !tbaa !39
  %exitcond168.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond168.not, label %._crit_edge, label %bb.c, !llvm.loop !62

._crit_edge160.split:                             ; preds = %._crit_edge157, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge160.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !42 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 9 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 8 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge.split130, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !37, !noalias !75
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !75
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !75
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !37, !noalias !76 ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !76
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !76
  %factor.op.mul128 = mul i64 %i.s, %i.u          ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge.split130

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge.split130

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !35    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = sitofp fast i32 %i.ac to float
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = mul nuw nsw i64 %i.ag, %i.af
  %i.ai = shl nuw i64 %i.ah, 2                    ; 9 uses
  %i.aj = sext i32 %i.k to i64                    ; 2 uses
  %i.ak = add nsw i32 %i.j, 1
  %i.al = add i32 %i.j, 1
  %i.am = sub i32 %i.al, %i.k
  %i.an = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %i.aj, %.noexc.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader ]
  %.reass129.prol = mul i64 %factor.op.mul128, %indvars.iv.prol
  %i.ao = getelementptr i8, ptr %i.q, i64 %.reass129.prol
end_hunk_0
