Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/statisticspooling?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn17StatisticsPoolingD0Ev = comdat any

@_ZTVN4ncnn17StatisticsPoolingE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn17StatisticsPoolingE, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn17StatisticsPoolingD0Ev, ptr @_ZN4ncnn17StatisticsPooling10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn17StatisticsPooling7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn17StatisticsPoolingE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn17StatisticsPoolingE, ptr @_ZTIN4ncnn5LayerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn17StatisticsPoolingE = hidden constant [27 x i8] c"N4ncnn17StatisticsPoolingE\00", align 1
@_ZTIN4ncnn5LayerE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn17StatisticsPoolingC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn17StatisticsPoolingC2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn17StatisticsPoolingD0Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17StatisticsPooling10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(212) initializes((208, 212)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.a, ptr %i.b, align 8, !tbaa !27
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn17StatisticsPooling7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44   ; 4 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.m = mul nsw i32 %i.h, %i.f
  %i.n = mul nsw i32 %i.m, %i.j
  store i32 %i.n, ptr %i.b, align 4, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 %i.l, ptr %i.c, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.s, ptr %i.c, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i32 [ %i.s, %bb.b ], [ %i.l, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.t, i64 noundef %i.p, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.x)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn17StatisticsPooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %2)
  %i.y = load i32, ptr %i.w, align 4, !tbaa !47
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.y)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn17StatisticsPooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn17StatisticsPoolingC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn17StatisticsPoolingE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !51
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn17StatisticsPooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.h = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !30
  %i.k = load i32, ptr %i.a, align 4, !tbaa !30   ; 3 uses
  %.not36 = icmp sgt i32 %i.k, %i.j
  br i1 %.not36, label %._crit_edge38, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32, !noalias !56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !56
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31, !noalias !56
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !30     ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = load ptr, ptr %5, align 8, !tbaa !32     ; 2 uses
  %i.t = sext i32 %i.k to i64                     ; 2 uses
  br i1 %i.r, label %.noexc.us.preheader, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.u = shl nsw i64 %i.t, 2
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.u
  %6 = sub i32 %i.j, %i.k
  %i.v = zext i32 %6 to i64
  %7 = shl nuw nsw i64 %i.v, 2
  %i.w = add nuw nsw i64 %7, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.w, i1 false), !tbaa !35
  br label %._crit_edge38

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph
  %i.x = sitofp fast i32 %i.q to float
  %8 = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.y = fdiv fast float 1.000000e+00, %i.x
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ %i.t, %.noexc.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv42
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc.us ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ac, %vector.body ], [ zeroinitializer, %.noexc.us ]
  %vec.phi49 = phi <4 x float> [ %i.ad, %vector.body ], [ zeroinitializer, %.noexc.us ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 4, !tbaa !35
  %wide.load50 = load <4 x float>, ptr %i.ab, align 4, !tbaa !35
  %i.ac = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.ad = fadd fast <4 x float> %wide.load50, %vec.phi49 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ad, %i.ac
  %i.af = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.noexc.us ], [ %n.vec, %middle.block ]
  %.02333.us.ph = phi float [ 0.000000e+00, %.noexc.us ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.02333.us = phi float [ %i.ai, %scalar.ph ], [ %.02333.us.ph, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !35
  %i.ai = fadd fast float %i.ah, %.02333.us       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !55

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi float [ %i.af, %middle.block ], [ %i.ai, %scalar.ph ]
  %i.aj = fmul fast float %.lcssa, %i.y
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv42
  store float %i.aj, ptr %i.ak, align 4, !tbaa !35
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next43 to i32
  %exitcond45.not = icmp eq i32 %8, %lftr.wideiv
  br i1 %exitcond45.not, label %._crit_edge38, label %.noexc.us

._crit_edge38:                                    ; preds = %._crit_edge.us, %.noexc.preheader, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge38, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

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
declare !callback !40 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn17StatisticsPooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !30     ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.i, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.j = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !30
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 8 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !30
  %i.m = load i32, ptr %i.a, align 4, !tbaa !30   ; 8 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.noexc.lr.ph, label %._crit_edge47

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.p = load i32, ptr %3, align 4, !tbaa !30
  %i.q = load ptr, ptr %4, align 8, !tbaa !32, !noalias !64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33, !noalias !64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31, !noalias !64
  %factor.op.mul = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !30     ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = load ptr, ptr %6, align 8, !tbaa !32     ; 8 uses
  br i1 %i.w, label %.noexc.lr.ph.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.y = add i32 %i.l, 1
  %i.z = sub i32 %i.y, %i.m                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.z, 8
  br i1 %min.iters.check, label %.noexc.preheader74, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.noexc.preheader
  %i.aa = add i32 %i.m, %i.e
  %i.ab = add i32 %i.l, %i.e
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.noexc.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.z, -8                       ; 3 uses
  %i.ad = add i32 %i.m, %n.vec
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.ae = sext i32 %.reass to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !35
  store <4 x float> zeroinitializer, ptr %i.ag, align 4, !tbaa !35
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ah = icmp eq i32 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge47, label %.noexc.preheader74

.noexc.preheader74:                               ; preds = %vector.scevcheck, %.noexc.preheader, %middle.block
  %.046.ph = phi i32 [ %i.m, %vector.scevcheck ], [ %i.m, %.noexc.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %i.ai = add i32 %i.l, 1
  %i.aj = sub i32 %i.ai, %.046.ph
  %i.ak = sub i32 %i.l, %.046.ph
  %xtraiter = and i32 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader74, %.noexc.prol
  %.046.prol = phi i32 [ %i.ao, %.noexc.prol ], [ %.046.ph, %.noexc.preheader74 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader74 ]
  %i.al = add i32 %.046.prol, %i.e
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.am
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !35
  %i.ao = add nuw i32 %.046.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !60

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader74
  %.046.unr = phi i32 [ %.046.ph, %.noexc.preheader74 ], [ %i.ao, %.noexc.prol ]
  %i.ap = icmp ult i32 %i.ak, 3
  br i1 %i.ap, label %._crit_edge47, label %.noexc.preheader74.new

.noexc.preheader74.new:                           ; preds = %.noexc.prol.loopexit
  %invariant.op80 = add i32 1, %i.e
  %invariant.op82 = add i32 2, %i.e
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.aq = sitofp fast i32 %i.v to float
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 3 uses
  %min.iters.check60 = icmp ult i32 %i.v, 8
  %n.vec62 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n69 = icmp eq i64 %n.vec62, %wide.trip.count
  %i.ar = fdiv fast float 1.000000e+00, %i.aq
  br label %.noexc.us

.noexc.us:                                        ; preds = %._crit_edge.us, %.noexc.lr.ph.split.us
  %.046.us = phi i32 [ %i.m, %.noexc.lr.ph.split.us ], [ %i.br, %._crit_edge.us ] ; 3 uses
  %i.as = add i32 %.046.us, %i.e                  ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.p
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %.reass.us = mul i64 %factor.op.mul, %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass.us ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.au
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !35 ; 2 uses
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.noexc.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body63 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph61 ], [ %i.be, %vector.body63 ]
  %vec.phi65 = phi <4 x float> [ zeroinitializer, %vector.ph61 ], [ %i.bf, %vector.body63 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !35
  %wide.load66 = load <4 x float>, ptr %i.az, align 4, !tbaa !35
  %i.ba = fsub fast <4 x float> %wide.load, %broadcast.splat ; 2 uses
  %i.bb = fsub fast <4 x float> %wide.load66, %broadcast.splat ; 2 uses
  %i.bc = fmul fast <4 x float> %i.ba, %i.ba
  %i.bd = fmul fast <4 x float> %i.bb, %i.bb
  %i.be = fadd fast <4 x float> %i.bc, %vec.phi   ; 2 uses
  %i.bf = fadd fast <4 x float> %i.bd, %vec.phi65 ; 2 uses
  %index.next67 = add nuw i64 %index64, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.bg, label %middle.block68, label %vector.body63, !llvm.loop !61

middle.block68:                                   ; preds = %vector.body63
  %bin.rdx = fadd fast <4 x float> %i.bf, %i.be
  %i.bh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n69, label %._crit_edge.us, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.noexc.us, %middle.block68
  %indvars.iv.ph = phi i64 [ 0, %.noexc.us ], [ %n.vec62, %middle.block68 ]
  %.03343.us.ph = phi float [ 0.000000e+00, %.noexc.us ], [ %i.bh, %middle.block68 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph59 ], [ %indvars.iv.ph, %scalar.ph59.preheader ] ; 2 uses
  %.03343.us = phi float [ %i.bm, %scalar.ph59 ], [ %.03343.us.ph, %scalar.ph59.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !35
  %i.bk = fsub fast float %i.bj, %i.ax            ; 2 uses
  %i.bl = fmul fast float %i.bk, %i.bk
  %i.bm = fadd fast float %i.bl, %.03343.us       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond50.not, label %._crit_edge.us, label %scalar.ph59, !llvm.loop !62

._crit_edge.us:                                   ; preds = %scalar.ph59, %middle.block68
  %.lcssa = phi float [ %i.bh, %middle.block68 ], [ %i.bm, %scalar.ph59 ]
  %i.bn = fmul fast float %.lcssa, %i.ar
  %i.bo = call fast float @llvm.sqrt.f32(float %i.bn)
  %i.bp = sext i32 %i.as to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4, !tbaa !35
  %i.br = add nuw i32 %.046.us, 1
  %exitcond51.not = icmp eq i32 %.046.us, %i.l
  br i1 %exitcond51.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc, %.noexc.preheader74.new
  %.046 = phi i32 [ %.046.unr, %.noexc.preheader74.new ], [ %i.cd, %.noexc ] ; 5 uses
  %i.bs = add i32 %.046, %i.e
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bt
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !35
  %.reass81 = add i32 %.046, %invariant.op80
  %i.bv = sext i32 %.reass81 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bv
  store float 0.000000e+00, ptr %i.bw, align 4, !tbaa !35
  %.reass83 = add i32 %.046, %invariant.op82
  %i.bx = sext i32 %.reass83 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bx
  store float 0.000000e+00, ptr %i.by, align 4, !tbaa !35
  %i.bz = add nuw i32 %.046, 3                    ; 2 uses
  %i.ca = add i32 %i.bz, %i.e
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cb
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !35
  %i.cd = add nuw i32 %.046, 4
  %exitcond.not.3 = icmp eq i32 %i.bz, %i.l
  br i1 %exitcond.not.3, label %._crit_edge47, label %.noexc, !llvm.loop !63

._crit_edge47:                                    ; preds = %.noexc.prol.loopexit, %.noexc, %._crit_edge.us, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"_ZTSN4ncnn17StatisticsPoolingE", !25, i64 0, !6, i64 208}
!27 = !{!26, !6, i64 208}
!28 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!29 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !28, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!30 = !{!6, !6, i64 0}
!31 = !{!29, !13, i64 16}
!32 = !{!29, !10, i64 0}
!33 = !{!29, !13, i64 64}
!34 = !{!"float", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{i64 2, i64 -1, i64 -1, i1 true}
!40 = !{!39}
!41 = !{!29, !6, i64 44}
!42 = !{!29, !6, i64 48}
!43 = !{!29, !6, i64 52}
!44 = !{!29, !6, i64 56}
!45 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !28, i64 8, !28, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!46 = !{!45, !28, i64 8}
!47 = !{!45, !6, i64 4}
!48 = !{!"vtable pointer", !4, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!25, !9, i64 8}
!51 = !{!25, !9, i64 9}
!52 = distinct !{!52, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, !36, !37, !38}
!55 = distinct !{!55, !36, !38, !37}
!56 = !{!53}
!57 = distinct !{!57, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!58 = distinct !{!58, !57, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!59 = distinct !{!59, !37, !38}
!60 = distinct !{!60, !65}
!61 = distinct !{!61, !36, !37, !38}
!62 = distinct !{!62, !36, !38, !37}
!63 = distinct !{!63, !37}
!64 = !{!58}
!65 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
