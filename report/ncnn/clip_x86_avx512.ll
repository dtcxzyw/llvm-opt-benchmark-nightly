Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/clip_x86_avx512?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn15Clip_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn15Clip_x86_avx512C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn15Clip_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #12
  ret void
}

declare noundef i32 @_ZN4ncnn4Clip10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn15Clip_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !48, !range !49, !noundef !50
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16   ; 4 uses
  br i1 %i.f, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %.tr.i = trunc i64 %i.j to i32
  %i.k = shl i32 %.tr.i, 3
  %i.l = sdiv i32 %i.k, %i.h
  %i.m = icmp eq i32 %i.l, 16
  br i1 %i.m, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.n = tail call noundef i32 @_ZNK4ncnn15Clip_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %bb.d

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.o = phi i32 [ %i.h, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.h, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  store i32 %i.w, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.x = mul nsw i32 %i.s, %i.q
  %i.y = mul nsw i32 %i.x, %i.u
  %i.z = mul nsw i32 %i.y, %i.o
  store i32 %i.z, ptr %i.b, align 4, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.ab)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Clip_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn15Clip_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn4ClipC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn15Clip_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !55
  ret void
}

declare void @_ZN4ncnn4ClipC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn15Clip_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load float, ptr %i.e, align 8, !tbaa !39 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.h = load float, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store float %i.f, ptr %i.a, align 4, !tbaa !41
  store float %i.h, ptr %i.b, align 4, !tbaa !41
  %i.j = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn21clip_bf16s_avx512bf16ERNS_3MatEffRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, float noundef nofpclass(nan inf) %i.f, float noundef nofpclass(nan inf) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %_ZN4ncnnL10clip_bf16sERNS_3MatEffRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21
  store i32 %i.r, ptr %i.c, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.u = mul nsw i32 %i.n, %i.l
  %i.v = mul nsw i32 %i.u, %i.p
  %i.w = mul nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.d, align 4, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.y)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL10clip_bf16sERNS_3MatEffRKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %_ZN4ncnnL10clip_bf16sERNS_3MatEffRKNS_6OptionE.exit

_ZN4ncnnL10clip_bf16sERNS_3MatEffRKNS_6OptionE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Clip_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.h = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !22
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %.not51 = icmp sgt i32 %i.k, %i.j
  br i1 %.not51, label %._crit_edge53, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.p = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.q = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.au, %bb.d ]
  %indvars.iv = phi i64 [ %i.p, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !42, !noalias !59
  %i.s = load i64, ptr %i.l, align 8, !tbaa !43, !noalias !59
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !59
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  %i.x = load float, ptr %i.n, align 8, !tbaa !39
  %i.y = insertelement <16 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <16 x float> %i.y, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aa = load float, ptr %i.o, align 4, !tbaa !40
  %i.ab = insertelement <16 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <16 x float> %i.ab, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %6 = load i32, ptr %5, align 4, !tbaa !22       ; 2 uses
  %i.ad = icmp sgt i32 %6, 15
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.03748 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.noexc ]
  %.03847 = phi ptr [ %i.ah, %.lr.ph ], [ %i.w, %.noexc ] ; 3 uses
  %i.ae = load <16 x float>, ptr %.03847, align 1, !tbaa !44
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> nofpclass(nan inf) %i.z, i32 4)
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> nofpclass(nan inf) %i.ac, i32 4)
  store <16 x float> %i.ag, ptr %.03847, align 1, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %.03847, i64 64 ; 2 uses
  %i.ai = add nuw nsw i32 %.03748, 16             ; 3 uses
  %i.aj = or disjoint i32 %i.ai, 15
  %i.ak = load i32, ptr %5, align 4, !tbaa !22    ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.038.lcssa = phi ptr [ %i.w, %.noexc ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.037.lcssa = phi i32 [ 0, %.noexc ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %6, %.noexc ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.am = icmp slt i32 %.037.lcssa, %.lcssa
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.an = sub nuw nsw i32 %.lcssa, %.037.lcssa
  %notmask = shl nsw i32 -1, %i.an
  %i.ao = trunc i32 %notmask to i16
  %i.ap = xor i16 %i.ao, -1
  %i.aq = bitcast i16 %i.ap to <16 x i1>          ; 2 uses
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.038.lcssa, <16 x i1> %i.aq, <16 x float> zeroinitializer)
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.z, i32 4)
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ac, i32 4)
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.at, ptr align 1 %.038.lcssa, <16 x i1> %i.aq)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.au = phi i32 [ %.pre, %bb.c ], [ %i.q, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.av = sext i32 %i.au to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.av
  br i1 %.not.not, label %.noexc, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge53, %bb.a
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
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #9

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn21clip_bf16s_avx512bf16ERNS_3MatEffRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), float noundef nofpclass(nan inf), float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10clip_bf16sERNS_3MatEffRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.h = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !22
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge74, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %6, align 4, !tbaa !22
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge71
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.by, %._crit_edge71 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge71 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !42, !noalias !66
  %i.q = load i64, ptr %i.l, align 8, !tbaa !43, !noalias !66
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !66
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load float, ptr %4, align 4, !tbaa !41
  %i.w = insertelement <16 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <16 x float> %i.w, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.y = load float, ptr %5, align 4, !tbaa !41
  %i.z = insertelement <16 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <16 x float> %i.z, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ab = icmp sgt i32 %i.o, 15
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.04264 = phi i32 [ %i.av, %.lr.ph ], [ 0, %.noexc ]
  %.04463 = phi ptr [ %i.au, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.ac = load <16 x i16>, ptr %.04463, align 1, !tbaa !44 ; 2 uses
  %i.ad = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ac, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ae = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ac, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.af = shufflevector <16 x i16> %i.ad, <16 x i16> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ag = shufflevector <16 x i16> %i.ad, <16 x i16> %i.ae, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ah = bitcast <16 x i16> %i.af to <8 x i32>
  %i.ai = bitcast <16 x i16> %i.ag to <8 x i32>
  %i.aj = shufflevector <8 x i32> %i.ah, <8 x i32> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float>
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.x, i32 4)
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.aa, i32 4)
  %i.an = bitcast <16 x float> %i.am to <16 x i32>
  %i.ao = lshr <16 x i32> %i.an, splat (i32 16)   ; 2 uses
  %i.ap = shufflevector <16 x i32> %i.ao, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = shufflevector <16 x i32> %i.ao, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ap, <8 x i32> %i.aq)
  %i.as = bitcast <16 x i16> %i.ar to <4 x i64>
  %i.at = shufflevector <4 x i64> %i.as, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.at, ptr %.04463, align 1, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %.04463, i64 32 ; 2 uses
  %i.av = add nuw nsw i32 %.04264, 16             ; 3 uses
  %i.aw = or disjoint i32 %i.av, 15
  %i.ax = load i32, ptr %6, align 4, !tbaa !22    ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.az = phi i32 [ %i.o, %.noexc ], [ %i.ax, %.lr.ph ] ; 4 uses
  %.044.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.au, %.lr.ph ] ; 7 uses
  %.042.lcssa = phi i32 [ 0, %.noexc ], [ %i.av, %.lr.ph ] ; 3 uses
  %i.ba = icmp slt i32 %.042.lcssa, %i.az
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bb = sub nuw nsw i32 %i.az, %.042.lcssa
  %notmask = shl nsw i32 -1, %i.bb
  %i.bc = trunc i32 %notmask to i16
  %i.bd = xor i16 %i.bc, -1
  %i.be = bitcast i16 %i.bd to <16 x i1>          ; 2 uses
  %i.bf = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.044.lcssa, <16 x i1> %i.be, <16 x i16> zeroinitializer) ; 2 uses
  %i.bg = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bh = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bf, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i16> %i.bg, <16 x i16> %i.bh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bj = shufflevector <16 x i16> %i.bg, <16 x i16> %i.bh, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bk = bitcast <16 x i16> %i.bi to <8 x i32>
  %i.bl = bitcast <16 x i16> %i.bj to <8 x i32>
  %i.bm = shufflevector <8 x i32> %i.bk, <8 x i32> %i.bl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bn = bitcast <16 x i32> %i.bm to <16 x float>
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.x, i32 4)
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> nofpclass(nan inf) %i.aa, i32 4)
  %i.bq = bitcast <16 x float> %i.bp to <16 x i32>
  %i.br = lshr <16 x i32> %i.bq, splat (i32 16)   ; 2 uses
  %i.bs = shufflevector <16 x i32> %i.br, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = shufflevector <16 x i32> %i.br, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bs, <8 x i32> %i.bt)
  %i.bv = bitcast <16 x i16> %i.bu to <4 x i64>
  %i.bw = shufflevector <4 x i64> %i.bv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bx = bitcast <4 x i64> %i.bw to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bx, ptr align 1 %.044.lcssa, <16 x i1> %i.be)
  %.pre79 = load i32, ptr %6, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.by = phi i32 [ %.pre79, %bb.c ], [ %i.az, %._crit_edge ] ; 4 uses
  %.143 = phi i32 [ %i.az, %bb.c ], [ %.042.lcssa, %._crit_edge ] ; 5 uses
  %i.bz = icmp slt i32 %.143, %i.by
  br i1 %i.bz, label %iter.check, label %._crit_edge71

iter.check:                                       ; preds = %bb.d
  %i.ca = load float, ptr %4, align 4, !tbaa !41  ; 3 uses
  %i.cb = load float, ptr %5, align 4, !tbaa !41  ; 3 uses
  %i.cc = xor i32 %.143, -1
  %i.cd = add i32 %i.by, %i.cc                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cd, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i32 %i.cd, 31
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 24
  %n.vec = and i64 %i.cf, 8589934560              ; 5 uses
  %i.ch = trunc i64 %n.vec to i32
  %i.ci = add i32 %.143, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec, 1
end_hunk_0
