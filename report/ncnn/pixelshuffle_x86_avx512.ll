Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pixelshuffle_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn23PixelShuffle_x86_avx512D0Ev = comdat any

@_ZTVN4ncnn23PixelShuffle_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn23PixelShuffle_x86_avx512E, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn23PixelShuffle_x86_avx512D0Ev, ptr @_ZN4ncnn12PixelShuffle10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn23PixelShuffle_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn23PixelShuffle_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn23PixelShuffle_x86_avx512E, ptr @_ZTIN4ncnn12PixelShuffleE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn23PixelShuffle_x86_avx512E = hidden constant [33 x i8] c"N4ncnn23PixelShuffle_x86_avx512E\00", align 1
@_ZTIN4ncnn12PixelShuffleE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn23PixelShuffle_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn23PixelShuffle_x86_avx512C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn23PixelShuffle_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #9
  ret void
}

declare noundef i32 @_ZN4ncnn12PixelShuffle10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn23PixelShuffle_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38   ; 6 uses
  store i32 %i.p, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.q = mul nsw i32 %i.p, %i.p                   ; 2 uses
  %i.r = sdiv i32 %i.l, %i.q                      ; 2 uses
  store i32 %i.r, ptr %i.d, align 4, !tbaa !15
  switch i32 %i.p, label %bb.b [
    i32 4, label %bb.c
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZNK4ncnn12PixelShuffle7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.t = mul nsw i32 %i.p, %i.j
  %i.u = mul nsw i32 %i.p, %i.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.u, i32 noundef %i.t, i32 noundef %i.r, i64 noundef %i.n, ptr noundef %i.w)
  %i.x = load ptr, ptr %2, align 8, !tbaa !32
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.aa, %i.ad
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 %i.q, ptr %i.e, align 4, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn23PixelShuffle_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.c, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.d, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.d ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn23PixelShuffle_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn12PixelShuffleC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn23PixelShuffle_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !43
  ret void
}

declare void @_ZN4ncnn12PixelShuffleC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef i32 @_ZNK4ncnn12PixelShuffle7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn23PixelShuffle_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [4 x ptr], align 16               ; 13 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.h, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.i = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !15
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !15
  %i.l = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %.not245 = icmp sgt i32 %i.l, %i.k
  br i1 %.not245, label %._crit_edge247, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load i32, ptr %4, align 4, !tbaa !15     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge247

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.l to i64
  %i.y = add nsw i32 %i.k, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.z = phi i32 [ %i.v, %.noexc.preheader ], [ %i.al, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv305 = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next306, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !32, !noalias !77
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !77
  %i.ac = mul i64 %i.ab, %indvars.iv305
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !77 ; 2 uses
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %i.aa, i64 %i.ae  ; 2 uses
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.noexc
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !14, !noalias !77
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.ad, %i.ai                    ; 2 uses
  %i.ak = trunc nsw i64 %indvars.iv305 to i32
  %broadcast.splatinsert463.a = insertelement <8 x i64> poison, i64 %indvars.iv305, i64 0
  %broadcast.splat464.a = shufflevector <8 x i64> %broadcast.splatinsert463.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert493.a = insertelement <8 x i64> poison, i64 %indvars.iv305, i64 0
  %broadcast.splat494.a = shufflevector <8 x i64> %broadcast.splatinsert493.a, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.c

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit, %.noexc
  %i.al = phi i32 [ %i.z, %.noexc ], [ %i.lw, %.loopexit ]
  %indvars.iv.next306 = add nsw i64 %indvars.iv305, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next306 to i32
  %exitcond308.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond308.not, label %._crit_edge247, label %.noexc, !llvm.loop !46

bb.c:                                             ; preds = %.lr.ph244, %.loopexit
  %indvars.iv302 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next303, %.loopexit ] ; 5 uses
  %.pr = phi i32 [ %i.z, %.lr.ph244 ], [ %i.lw, %.loopexit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.am = icmp sgt i32 %.pr, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.an = load i32, ptr %i.p, align 4, !tbaa !79
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = load ptr, ptr %7, align 8, !tbaa !32, !noalias !80 ; 14 uses
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !33, !noalias !80
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !80
  %factor.op.mul = mul i64 %i.aq, %i.ar           ; 8 uses
  %exitcond263.peel.not = icmp eq i32 %.pr, 1     ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.as = load i32, ptr %6, align 4, !tbaa !15
  %i.at = mul nsw i32 %i.as, %i.ak                ; 2 uses
  %wide.trip.count262 = zext nneg i32 %.pr to i64 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.av = mul nuw nsw i32 %.pr, %i.au             ; 2 uses
  %i.aw = add i32 %i.av, %i.at
  %i.ax = sext i32 %i.aw to i64
  %.reass.us.peel = mul i64 %factor.op.mul, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.us.peel ; 5 uses
  store ptr %i.ay, ptr %i.e, align 16, !tbaa !82
  br i1 %exitcond263.peel.not, label %._crit_edge.thread, label %iter.check433

iter.check433:                                    ; preds = %.lr.ph.split.us
  %invariant.op = add i32 %i.av, %i.at            ; 3 uses
  %i.az = add nsw i64 %wide.trip.count262, -1     ; 5 uses
  %min.iters.check417.a = icmp ult i32 %.pr, 9
  br i1 %min.iters.check417.a, label %.noexc172.us.preheader, label %vector.main.loop.iter.check418

vector.main.loop.iter.check418:                   ; preds = %iter.check433
  %min.iters.check419 = icmp ult i32 %.pr, 33
  br i1 %min.iters.check419, label %vec.epilog.ph437, label %vector.ph420

vector.ph420:                                     ; preds = %vector.main.loop.iter.check418
  %i.ba = and i64 %i.az, 24
  %n.vec421 = and i64 %i.az, -32                  ; 4 uses
  %i.bb = or disjoint i64 %n.vec421, 1            ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert422 = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat423 = shufflevector <8 x i64> %broadcast.splatinsert422, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op525.a = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op527.a = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op529 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph420, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph420 ], [ %index.next429, %vector.body424 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph420 ], [ %vec.ind.next, %vector.body424 ] ; 5 uses
  %i.bc = add <8 x i32> %broadcast.splat, %vec.ind
  %.reass526.a = add <8 x i32> %vec.ind, %invariant.op525.a
  %.reass528.a = add <8 x i32> %vec.ind, %invariant.op527.a
  %.reass530 = add <8 x i32> %vec.ind, %invariant.op529
  %i.bd = sext <8 x i32> %i.bc to <8 x i64>
  %i.be = sext <8 x i32> %.reass526.a to <8 x i64>
  %i.bf = sext <8 x i32> %.reass528.a to <8 x i64>
  %i.bg = sext <8 x i32> %.reass530 to <8 x i64>
  %i.bh = mul <8 x i64> %broadcast.splat423, %i.bd
  %i.bi = mul <8 x i64> %broadcast.splat423, %i.be
  %i.bj = mul <8 x i64> %broadcast.splat423, %i.bf
  %i.bk = mul <8 x i64> %broadcast.splat423, %i.bg
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bh
  %wide.gep426.a = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bi
  %wide.gep427 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bj
  %wide.gep428 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bk
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index425 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  store <8 x ptr> %wide.gep, ptr %i.bm, align 8, !tbaa !82
  store <8 x ptr> %wide.gep426.a, ptr %i.bn, align 8, !tbaa !82
  store <8 x ptr> %wide.gep427, ptr %i.bo, align 8, !tbaa !82
  store <8 x ptr> %wide.gep428, ptr %i.bp, align 8, !tbaa !82
  %index.next429 = add nuw i64 %index425, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bq = icmp eq i64 %index.next429, %n.vec421
  br i1 %i.bq, label %middle.block430, label %vector.body424, !llvm.loop !49

middle.block430:                                  ; preds = %vector.body424
  %cmp.n431 = icmp eq i64 %i.az, %n.vec421
  br i1 %cmp.n431, label %._crit_edge, label %vec.epilog.iter.check435

vec.epilog.iter.check435:                         ; preds = %middle.block430
  %min.epilog.iters.check436 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check436, label %.noexc172.us.preheader, label %vec.epilog.ph437, !prof !87

vec.epilog.ph437:                                 ; preds = %vector.main.loop.iter.check418, %vec.epilog.iter.check435
  %vec.epilog.resume.val432 = phi i64 [ %n.vec421, %vec.epilog.iter.check435 ], [ 0, %vector.main.loop.iter.check418 ]
  %bc.resume.val = phi i64 [ %i.bb, %vec.epilog.iter.check435 ], [ 1, %vector.main.loop.iter.check418 ]
  %n.vec438 = and i64 %i.az, -8                   ; 3 uses
  %i.br = or disjoint i64 %n.vec438, 1
  %broadcast.splatinsert439.a = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat440.a = shufflevector <8 x i32> %broadcast.splatinsert439.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert441.a = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat442.a = shufflevector <8 x i64> %broadcast.splatinsert441.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bs = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert443 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat444 = shufflevector <8 x i32> %broadcast.splatinsert443, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat444, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body445

vec.epilog.vector.body445:                        ; preds = %vec.epilog.vector.body445, %vec.epilog.ph437
  %index446 = phi i64 [ %vec.epilog.resume.val432, %vec.epilog.ph437 ], [ %index.next449, %vec.epilog.vector.body445 ] ; 2 uses
  %vec.ind447 = phi <8 x i32> [ %induction, %vec.epilog.ph437 ], [ %vec.ind.next450, %vec.epilog.vector.body445 ] ; 2 uses
  %i.bt = add <8 x i32> %broadcast.splat440.a, %vec.ind447
  %i.bu = sext <8 x i32> %i.bt to <8 x i64>
  %i.bv = mul <8 x i64> %broadcast.splat442.a, %i.bu
  %wide.gep448 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bv
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index446
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store <8 x ptr> %wide.gep448, ptr %i.bx, align 8, !tbaa !82
  %index.next449 = add nuw i64 %index446, 8       ; 2 uses
  %vec.ind.next450 = add <8 x i32> %vec.ind447, splat (i32 8)
  %i.by = icmp eq i64 %index.next449, %n.vec438
  br i1 %i.by, label %vec.epilog.middle.block451, label %vec.epilog.vector.body445, !llvm.loop !50

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body445
  %cmp.n452 = icmp eq i64 %i.az, %n.vec438
  br i1 %cmp.n452, label %._crit_edge, label %.noexc172.us.preheader

.noexc172.us.preheader:                           ; preds = %iter.check433, %vec.epilog.iter.check435, %vec.epilog.middle.block451
  %indvars.iv258.ph = phi i64 [ 1, %iter.check433 ], [ %i.bb, %vec.epilog.iter.check435 ], [ %i.br, %vec.epilog.middle.block451 ]
  br label %.noexc172.us

.noexc172.us:                                     ; preds = %.noexc172.us.preheader, %.noexc172.us
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %.noexc172.us ], [ %indvars.iv258.ph, %.noexc172.us.preheader ] ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv258 to i32
  %.reass329 = add i32 %invariant.op, %i.bz
  %i.ca = sext i32 %.reass329 to i64
  %.reass.us = mul i64 %factor.op.mul, %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.us
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv258
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !82
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge, label %.noexc172.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cd = load i32, ptr %2, align 4, !tbaa !15    ; 4 uses
  %wide.trip.count = zext nneg i32 %.pr to i64    ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.cf = mul nuw nsw i32 %.pr, %i.ce             ; 4 uses
  %i.cg = mul nsw i32 %i.cd, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %indvars.iv305, %i.ch
  %.reass.peel = mul i64 %factor.op.mul, %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.peel ; 5 uses
  store ptr %i.cj, ptr %i.e, align 16, !tbaa !82
  br i1 %exitcond263.peel.not, label %._crit_edge.thread, label %iter.check483

iter.check483:                                    ; preds = %.lr.ph.split
  %i.ck = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check454.a = icmp ult i32 %.pr, 9
  br i1 %min.iters.check454.a, label %.noexc172.preheader, label %vector.main.loop.iter.check455

vector.main.loop.iter.check455:                   ; preds = %iter.check483
  %min.iters.check456 = icmp ult i32 %.pr, 33
  br i1 %min.iters.check456, label %vec.epilog.ph487, label %vector.ph457

vector.ph457:                                     ; preds = %vector.main.loop.iter.check455
  %i.cl = and i64 %i.ck, 24
  %n.vec458 = and i64 %i.ck, -32                  ; 4 uses
  %i.cm = or disjoint i64 %n.vec458, 1            ; 2 uses
  %broadcast.splatinsert459.a = insertelement <8 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat460.a = shufflevector <8 x i32> %broadcast.splatinsert459.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert461 = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat462 = shufflevector <8 x i32> %broadcast.splatinsert461, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert465 = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat466 = shufflevector <8 x i64> %broadcast.splatinsert465, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op519.a = add <8 x i32> splat (i32 8), %broadcast.splat460.a
  %invariant.op521.a = add <8 x i32> splat (i32 16), %broadcast.splat460.a
  %invariant.op523 = add <8 x i32> splat (i32 24), %broadcast.splat460.a
  br label %vector.body467

vector.body467:                                   ; preds = %vector.ph457, %vector.body467
  %index468 = phi i64 [ 0, %vector.ph457 ], [ %index.next477, %vector.body467 ] ; 2 uses
  %vec.ind469 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph457 ], [ %vec.ind.next478, %vector.body467 ] ; 5 uses
  %i.cn = add nsw <8 x i32> %broadcast.splat460.a, %vec.ind469
  %.reass520.a = add <8 x i32> %vec.ind469, %invariant.op519.a
  %.reass522.a = add <8 x i32> %vec.ind469, %invariant.op521.a
  %.reass524 = add <8 x i32> %vec.ind469, %invariant.op523
  %i.co = mul nsw <8 x i32> %broadcast.splat462, %i.cn
  %i.cp = mul nsw <8 x i32> %broadcast.splat462, %.reass520.a
  %i.cq = mul nsw <8 x i32> %broadcast.splat462, %.reass522.a
  %i.cr = mul nsw <8 x i32> %broadcast.splat462, %.reass524
  %i.cs = sext <8 x i32> %i.co to <8 x i64>
  %i.ct = sext <8 x i32> %i.cp to <8 x i64>
  %i.cu = sext <8 x i32> %i.cq to <8 x i64>
  %i.cv = sext <8 x i32> %i.cr to <8 x i64>
  %i.cw = add nsw <8 x i64> %broadcast.splat464.a, %i.cs
  %i.cx = add nsw <8 x i64> %broadcast.splat464.a, %i.ct
  %i.cy = add nsw <8 x i64> %broadcast.splat464.a, %i.cu
  %i.cz = add nsw <8 x i64> %broadcast.splat464.a, %i.cv
  %i.da = mul <8 x i64> %broadcast.splat466, %i.cw
  %i.db = mul <8 x i64> %broadcast.splat466, %i.cx
  %i.dc = mul <8 x i64> %broadcast.splat466, %i.cy
  %i.dd = mul <8 x i64> %broadcast.splat466, %i.cz
  %wide.gep473.a = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.da
  %wide.gep474.a = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.db
  %wide.gep475 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.dc
  %wide.gep476 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index468 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  store <8 x ptr> %wide.gep473.a, ptr %i.df, align 8, !tbaa !82
  store <8 x ptr> %wide.gep474.a, ptr %i.dg, align 8, !tbaa !82
  store <8 x ptr> %wide.gep475, ptr %i.dh, align 8, !tbaa !82
  store <8 x ptr> %wide.gep476, ptr %i.di, align 8, !tbaa !82
  %index.next477 = add nuw i64 %index468, 32      ; 2 uses
  %vec.ind.next478 = add <8 x i32> %vec.ind469, splat (i32 32)
  %i.dj = icmp eq i64 %index.next477, %n.vec458
  br i1 %i.dj, label %middle.block479, label %vector.body467, !llvm.loop !52

middle.block479:                                  ; preds = %vector.body467
  %cmp.n480 = icmp eq i64 %i.ck, %n.vec458
  br i1 %cmp.n480, label %._crit_edge, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check486, label %.noexc172.preheader, label %vec.epilog.ph487, !prof !87

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check455, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec458, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check455 ]
  %bc.resume.val482 = phi i64 [ %i.cm, %vec.epilog.iter.check485 ], [ 1, %vector.main.loop.iter.check455 ]
  %n.vec488 = and i64 %i.ck, -8                   ; 3 uses
  %i.dk = or disjoint i64 %n.vec488, 1
  %broadcast.splatinsert489.a = insertelement <8 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat490.a = shufflevector <8 x i32> %broadcast.splatinsert489.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert491 = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat492 = shufflevector <8 x i32> %broadcast.splatinsert491, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert495.a = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat496.a = shufflevector <8 x i64> %broadcast.splatinsert495.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dl = trunc nsw i64 %bc.resume.val482 to i32
  %broadcast.splatinsert497 = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat498 = shufflevector <8 x i32> %broadcast.splatinsert497, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction499 = add <8 x i32> %broadcast.splat498, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body500

vec.epilog.vector.body500:                        ; preds = %vec.epilog.vector.body500, %vec.epilog.ph487
  %index501 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next504, %vec.epilog.vector.body500 ] ; 2 uses
  %vec.ind502 = phi <8 x i32> [ %induction499, %vec.epilog.ph487 ], [ %vec.ind.next505, %vec.epilog.vector.body500 ] ; 2 uses
  %i.dm = add nsw <8 x i32> %broadcast.splat490.a, %vec.ind502
  %i.dn = mul nsw <8 x i32> %broadcast.splat492, %i.dm
  %i.do = sext <8 x i32> %i.dn to <8 x i64>
  %i.dp = add nsw <8 x i64> %broadcast.splat494.a, %i.do
  %i.dq = mul <8 x i64> %broadcast.splat496.a, %i.dp
  %wide.gep503 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.dq
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index501
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <8 x ptr> %wide.gep503, ptr %i.ds, align 8, !tbaa !82
  %index.next504 = add nuw i64 %index501, 8       ; 2 uses
  %vec.ind.next505 = add <8 x i32> %vec.ind502, splat (i32 8)
  %i.dt = icmp eq i64 %index.next504, %n.vec488
  br i1 %i.dt, label %vec.epilog.middle.block506, label %vec.epilog.vector.body500, !llvm.loop !53

vec.epilog.middle.block506:                       ; preds = %vec.epilog.vector.body500
  %cmp.n507 = icmp eq i64 %i.ck, %n.vec488
  br i1 %cmp.n507, label %._crit_edge, label %.noexc172.preheader

.noexc172.preheader:                              ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block506
  %indvars.iv.ph = phi i64 [ 1, %iter.check483 ], [ %i.cm, %vec.epilog.iter.check485 ], [ %i.dk, %vec.epilog.middle.block506 ]
  br label %.noexc172

._crit_edge:                                      ; preds = %.noexc172, %.noexc172.us, %middle.block479, %vec.epilog.middle.block506, %middle.block430, %vec.epilog.middle.block451
  %i.du = phi ptr [ %i.ay, %middle.block430 ], [ %i.cj, %middle.block479 ], [ %i.ay, %vec.epilog.middle.block451 ], [ %i.ay, %.noexc172.us ], [ %i.cj, %vec.epilog.middle.block506 ], [ %i.cj, %.noexc172 ] ; 2 uses
  %i.dv = icmp eq i32 %.pr, 2
  br i1 %i.dv, label %bb.d, label %._crit_edge.thread

.noexc172:                                        ; preds = %.noexc172.preheader, %.noexc172
  %indvars.iv = phi i64 [ %indvars.iv.next, %.noexc172 ], [ %indvars.iv.ph, %.noexc172.preheader ] ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = add nsw i32 %i.cf, %i.dw
  %i.dy = mul nsw i32 %i.cd, %i.dx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add nsw i64 %indvars.iv305, %i.dz
  %.reass = mul i64 %factor.op.mul, %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.noexc172, !llvm.loop !54

bb.d:                                             ; preds = %._crit_edge
  %i.ed = load i32, ptr %8, align 4, !tbaa !15
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph240.preheader, label %.loopexit

.lr.ph240.preheader:                              ; preds = %bb.d
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !82
  %.pre309 = load i32, ptr %9, align 4, !tbaa !15
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge235
  %i.eg = phi i32 [ %.pre309, %.lr.ph240.preheader ], [ %i.fb, %._crit_edge235 ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph240.preheader ], [ %indvars.iv.next300, %._crit_edge235 ] ; 2 uses
  %.0157238 = phi ptr [ %i.du, %.lr.ph240.preheader ], [ %i.hj, %._crit_edge235 ] ; 10 uses
  %.0158237 = phi ptr [ %i.ef, %.lr.ph240.preheader ], [ %i.hk, %._crit_edge235 ] ; 10 uses
  %i.eh = shl nuw nsw i64 %indvars.iv299, 1
  %i.ei = add nuw nsw i64 %i.eh, %indvars.iv302
  %i.ej = mul i64 %i.aj, %i.ei
  %i.ek = getelementptr i8, ptr %i.af, i64 %i.ej  ; 10 uses
  %.not170223 = icmp slt i32 %i.eg, 8
  br i1 %.not170223, label %.preheader201, label %.lr.ph226

.preheader201.loopexit:                           ; preds = %.lr.ph226
  %i.el = trunc nuw nsw i64 %indvars.iv280 to i32
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %.lr.ph240
  %i.em = phi i32 [ %i.eg, %.lr.ph240 ], [ %i.ey, %.preheader201.loopexit ] ; 2 uses
  %.0160.lcssa = phi i32 [ 0, %.lr.ph240 ], [ %i.el, %.preheader201.loopexit ] ; 3 uses
  %i.en = or disjoint i32 %.0160.lcssa, 4
  %.not171228 = icmp sgt i32 %i.en, %i.em
  br i1 %.not171228, label %.preheader, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %.preheader201
  %i.eo = zext nneg i32 %.0160.lcssa to i64       ; 2 uses
  %i.ep = add nuw nsw i64 %i.eo, 4
  br label %.lr.ph230

.lr.ph226:                                        ; preds = %.lr.ph240, %.lr.ph226
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %.lr.ph226 ], [ 0, %.lr.ph240 ] ; 4 uses
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.lr.ph226 ], [ 8, %.lr.ph240 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv282
  %i.er = load <8 x float>, ptr %i.eq, align 1, !tbaa !88 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv282
  %i.et = load <8 x float>, ptr %i.es, align 1, !tbaa !88 ; 2 uses
  %i.eu = shufflevector <8 x float> %i.er, <8 x float> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = shufflevector <8 x float> %i.er, <8 x float> %i.et, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %.idx321 = shl nuw nsw i64 %indvars.iv282, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx321 ; 2 uses
  store <8 x float> %i.eu, ptr %i.ew, align 1, !tbaa !88
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store <8 x float> %i.ev, ptr %i.ex, align 1, !tbaa !88
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 8 ; 2 uses
  %i.ey = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %.not170 = icmp sgt i64 %indvars.iv.next281, %i.ez
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 8
  br i1 %.not170, label %.preheader201.loopexit, label %.lr.ph226, !llvm.loop !55

.preheader.loopexit:                              ; preds = %.lr.ph230
  %i.fa = trunc nuw nsw i64 %indvars.iv287 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader201
  %i.fb = phi i32 [ %i.em, %.preheader201 ], [ %i.gu, %.preheader.loopexit ] ; 4 uses
  %.1161.lcssa = phi i32 [ %.0160.lcssa, %.preheader201 ], [ %i.fa, %.preheader.loopexit ] ; 2 uses
  %i.fc = icmp slt i32 %.1161.lcssa, %i.fb
  br i1 %i.fc, label %iter.check402, label %._crit_edge235

iter.check402:                                    ; preds = %.preheader
  %i.fd = zext i32 %.1161.lcssa to i64            ; 9 uses
  %wide.trip.count297 = zext i32 %i.fb to i64     ; 6 uses
  %i.fe = sub nsw i64 %wide.trip.count297, %i.fd  ; 7 uses
  %min.iters.check385.a = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check385.a, label %.lr.ph234.preheader, label %vector.memcheck370

vector.memcheck370:                               ; preds = %iter.check402
  %i.ff = shl nuw nsw i64 %i.fd, 3
  %scevgep372.a = getelementptr i8, ptr %i.ek, i64 %i.ff ; 2 uses
  %i.fg = shl nuw nsw i64 %wide.trip.count297, 3
  %scevgep373.a = getelementptr i8, ptr %i.ek, i64 %i.fg ; 2 uses
  %i.fh = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  %scevgep374.a = getelementptr i8, ptr %.0157238, i64 %i.fh
  %i.fi = shl nuw nsw i64 %wide.trip.count297, 2  ; 2 uses
  %scevgep375.a = getelementptr i8, ptr %.0157238, i64 %i.fi
  %scevgep376 = getelementptr i8, ptr %.0158237, i64 %i.fh
  %scevgep377 = getelementptr i8, ptr %.0158237, i64 %i.fi
  %bound0378 = icmp ult ptr %scevgep372.a, %scevgep375.a
  %bound1379 = icmp ult ptr %scevgep374.a, %scevgep373.a
  %found.conflict380 = and i1 %bound0378, %bound1379
  %bound0381 = icmp ult ptr %scevgep372.a, %scevgep377
  %bound1382 = icmp ult ptr %scevgep376, %scevgep373.a
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx384 = or i1 %found.conflict380, %found.conflict383
  br i1 %conflict.rdx384, label %.lr.ph234.preheader, label %vector.main.loop.iter.check386

vector.main.loop.iter.check386:                   ; preds = %vector.memcheck370
  %min.iters.check387 = icmp ult i64 %i.fe, 32
  br i1 %min.iters.check387, label %vec.epilog.ph406, label %vector.ph388

vector.ph388:                                     ; preds = %vector.main.loop.iter.check386
  %i.fj = and i64 %i.fe, 24
  %n.vec389 = and i64 %i.fe, -32                  ; 4 uses
  %i.fk = add nsw i64 %n.vec389, %i.fd
  br label %vector.body390

vector.body390:                                   ; preds = %vector.ph388, %vector.body390
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next398, %vector.body390 ] ; 2 uses
  %i.fl = add nuw i64 %index391, %i.fd            ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %wide.load392.a = load <16 x float>, ptr %i.fm, align 4, !tbaa !90, !alias.scope !91
  %wide.load393.a = load <16 x float>, ptr %i.fn, align 4, !tbaa !90, !alias.scope !91
  %i.fo = shl nuw nsw i64 %i.fl, 3
  %i.fp = shl i64 %i.fl, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.ek, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 128
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %i.fl ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %wide.load394 = load <16 x float>, ptr %i.ft, align 4, !tbaa !90, !alias.scope !92
  %wide.load395 = load <16 x float>, ptr %i.fu, align 4, !tbaa !90, !alias.scope !92
  %interleaved.vec396 = shufflevector <16 x float> %wide.load392.a, <16 x float> %wide.load394, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec396, ptr %i.fq, align 4, !tbaa !90, !alias.scope !93, !noalias !94
  %interleaved.vec397 = shufflevector <16 x float> %wide.load393.a, <16 x float> %wide.load395, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec397, ptr %i.fs, align 4, !tbaa !90, !alias.scope !93, !noalias !94
  %index.next398 = add nuw i64 %index391, 32      ; 2 uses
  %i.fv = icmp eq i64 %index.next398, %n.vec389
  br i1 %i.fv, label %middle.block399, label %vector.body390, !llvm.loop !60

middle.block399:                                  ; preds = %vector.body390
  %cmp.n400 = icmp eq i64 %i.fe, %n.vec389
  br i1 %cmp.n400, label %._crit_edge235, label %vec.epilog.iter.check404

vec.epilog.iter.check404:                         ; preds = %middle.block399
  %min.epilog.iters.check405 = icmp eq i64 %i.fj, 0
  br i1 %min.epilog.iters.check405, label %.lr.ph234.preheader, label %vec.epilog.ph406, !prof !87

vec.epilog.ph406:                                 ; preds = %vector.main.loop.iter.check386, %vec.epilog.iter.check404
  %vec.epilog.resume.val401 = phi i64 [ %n.vec389, %vec.epilog.iter.check404 ], [ 0, %vector.main.loop.iter.check386 ]
  %n.vec407 = and i64 %i.fe, -8                   ; 3 uses
  %i.fw = add nsw i64 %n.vec407, %i.fd
  br label %vec.epilog.vector.body408

vec.epilog.vector.body408:                        ; preds = %vec.epilog.vector.body408, %vec.epilog.ph406
  %index409 = phi i64 [ %vec.epilog.resume.val401, %vec.epilog.ph406 ], [ %index.next413, %vec.epilog.vector.body408 ] ; 2 uses
  %i.fx = add nuw i64 %index409, %i.fd            ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %i.fx
  %wide.load410 = load <8 x float>, ptr %i.fy, align 4, !tbaa !90, !alias.scope !91
  %i.fz = shl nuw nsw i64 %i.fx, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %i.fx
  %wide.load411 = load <8 x float>, ptr %i.gb, align 4, !tbaa !90, !alias.scope !92
  %interleaved.vec412 = shufflevector <8 x float> %wide.load410, <8 x float> %wide.load411, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec412, ptr %i.ga, align 4, !tbaa !90, !alias.scope !93, !noalias !94
  %index.next413 = add nuw i64 %index409, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next413, %n.vec407
  br i1 %i.gc, label %vec.epilog.middle.block414, label %vec.epilog.vector.body408, !llvm.loop !61

vec.epilog.middle.block414:                       ; preds = %vec.epilog.vector.body408
  %cmp.n415 = icmp eq i64 %i.fe, %n.vec407
  br i1 %cmp.n415, label %._crit_edge235, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %iter.check402, %vector.memcheck370, %vec.epilog.iter.check404, %vec.epilog.middle.block414
  %indvars.iv294.ph = phi i64 [ %i.fd, %iter.check402 ], [ %i.fd, %vector.memcheck370 ], [ %i.fk, %vec.epilog.iter.check404 ], [ %i.fw, %vec.epilog.middle.block414 ] ; 7 uses
  %i.gd = sub nsw i64 %wide.trip.count297, %indvars.iv294.ph
  %xtraiter = and i64 %i.gd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph234.prol.loopexit, label %.lr.ph234.prol

.lr.ph234.prol:                                   ; preds = %.lr.ph234.preheader
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv294.ph
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !90
  %.idx323.prol = shl nuw nsw i64 %indvars.iv294.ph, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx323.prol ; 2 uses
  store float %i.gf, ptr %i.gg, align 4, !tbaa !90
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv294.ph
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !90
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float %i.gi, ptr %i.gj, align 4, !tbaa !90
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph234.prol.loopexit

.lr.ph234.prol.loopexit:                          ; preds = %.lr.ph234.prol, %.lr.ph234.preheader
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph234.preheader ], [ %indvars.iv.next295.prol, %.lr.ph234.prol ]
  %i.gk = add nsw i64 %wide.trip.count297, -1
  %i.gl = icmp eq i64 %indvars.iv294.ph, %i.gk
  br i1 %i.gl, label %._crit_edge235, label %.lr.ph234

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %indvars.iv289 = phi i64 [ %i.eo, %.lr.ph230.preheader ], [ %indvars.iv.next290, %.lr.ph230 ] ; 4 uses
  %indvars.iv287 = phi i64 [ %i.ep, %.lr.ph230.preheader ], [ %indvars.iv.next288, %.lr.ph230 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv289
  %i.gn = load <4 x float>, ptr %i.gm, align 1, !tbaa !88 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv289
  %i.gp = load <4 x float>, ptr %i.go, align 1, !tbaa !88 ; 2 uses
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %.idx322 = shl nuw nsw i64 %indvars.iv289, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx322 ; 2 uses
  store <4 x float> %i.gq, ptr %i.gs, align 1, !tbaa !88
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <4 x float> %i.gr, ptr %i.gt, align 1, !tbaa !88
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 4 ; 2 uses
  %i.gu = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.gv = trunc nuw i64 %indvars.iv.next288 to i32
  %.not171 = icmp slt i32 %i.gu, %i.gv
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 4
  br i1 %.not171, label %.preheader.loopexit, label %.lr.ph230, !llvm.loop !62

.lr.ph234:                                        ; preds = %.lr.ph234.prol.loopexit, %.lr.ph234
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %.lr.ph234 ], [ %indvars.iv294.unr, %.lr.ph234.prol.loopexit ] ; 5 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv294
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !90
  %.idx323 = shl nuw nsw i64 %indvars.iv294, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx323 ; 2 uses
  store float %i.gx, ptr %i.gy, align 4, !tbaa !90
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv294
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !90
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.ha, ptr %i.hb, align 4, !tbaa !90
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv.next295
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !90
  %.idx323.1 = shl nuw nsw i64 %indvars.iv.next295, 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx323.1 ; 2 uses
  store float %i.hd, ptr %i.he, align 4, !tbaa !90
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv.next295
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !90
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store float %i.hg, ptr %i.hh, align 4, !tbaa !90
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %exitcond298.not.1 = icmp eq i64 %indvars.iv.next295.1, %wide.trip.count297
  br i1 %exitcond298.not.1, label %._crit_edge235, label %.lr.ph234, !llvm.loop !63

._crit_edge235:                                   ; preds = %.lr.ph234.prol.loopexit, %.lr.ph234, %middle.block399, %vec.epilog.middle.block414, %.preheader
  %i.hi = sext i32 %i.fb to i64                   ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %.0157238, i64 %i.hi
  %i.hk = getelementptr inbounds [4 x i8], ptr %.0158237, i64 %i.hi
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.hl = load i32, ptr %8, align 4, !tbaa !15
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next300, %i.hm
  br i1 %i.hn, label %.lr.ph240, label %.loopexit, !llvm.loop !64

._crit_edge.thread:                               ; preds = %bb.c, %.lr.ph.split.us, %.lr.ph.split, %._crit_edge
  %i.ho = phi ptr [ %i.du, %._crit_edge ], [ %i.cj, %.lr.ph.split ], [ undef, %bb.c ], [ %i.ay, %.lr.ph.split.us ]
  %i.hp = load i32, ptr %8, align 4, !tbaa !15
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %.lr.ph222.preheader, label %.loopexit

.lr.ph222.preheader:                              ; preds = %._crit_edge.thread
  %i.hr = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.hs = load ptr, ptr %i.t, align 16, !tbaa !82
  %i.ht = load ptr, ptr %i.s, align 8, !tbaa !82
  %.pre = load i32, ptr %9, align 4, !tbaa !15
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %._crit_edge215
  %i.hu = phi i32 [ %.pre, %.lr.ph222.preheader ], [ %i.ia, %._crit_edge215 ] ; 2 uses
  %indvars.iv277 = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvars.iv.next278, %._crit_edge215 ] ; 2 uses
  %.0153219 = phi ptr [ %i.hr, %.lr.ph222.preheader ], [ %i.ls, %._crit_edge215 ] ; 9 uses
  %.0154218 = phi ptr [ %i.hs, %.lr.ph222.preheader ], [ %i.lr, %._crit_edge215 ] ; 9 uses
  %.0155217 = phi ptr [ %i.ht, %.lr.ph222.preheader ], [ %i.lq, %._crit_edge215 ] ; 9 uses
  %.0156216 = phi ptr [ %i.ho, %.lr.ph222.preheader ], [ %i.lp, %._crit_edge215 ] ; 9 uses
  %i.hv = shl nuw nsw i64 %indvars.iv277, 2
  %i.hw = add nuw nsw i64 %i.hv, %indvars.iv302
  %i.hx = mul i64 %i.aj, %i.hw
  %i.hy = getelementptr i8, ptr %i.af, i64 %i.hx  ; 8 uses
  %.not169207 = icmp slt i32 %i.hu, 4
  br i1 %.not169207, label %.preheader202, label %.lr.ph210

.preheader202.loopexit:                           ; preds = %.lr.ph210
  %i.hz = trunc nuw nsw i64 %indvars.iv265 to i32
  br label %.preheader202

.preheader202:                                    ; preds = %.preheader202.loopexit, %.lr.ph222
  %i.ia = phi i32 [ %i.hu, %.lr.ph222 ], [ %i.ko, %.preheader202.loopexit ] ; 4 uses
  %.0151.lcssa = phi i32 [ 0, %.lr.ph222 ], [ %i.hz, %.preheader202.loopexit ] ; 2 uses
  %i.ib = icmp slt i32 %.0151.lcssa, %i.ia
  br i1 %i.ib, label %iter.check, label %._crit_edge215

iter.check:                                       ; preds = %.preheader202
  %i.ic = zext i32 %.0151.lcssa to i64            ; 9 uses
  %wide.trip.count275 = zext nneg i32 %i.ia to i64 ; 6 uses
  %i.id = sub nsw i64 %wide.trip.count275, %i.ic  ; 7 uses
  %min.iters.check = icmp ult i64 %i.id, 4
  br i1 %min.iters.check, label %.lr.ph214.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ie = shl nuw nsw i64 %i.ic, 4
  %scevgep335.a = getelementptr i8, ptr %i.hy, i64 %i.ie ; 4 uses
  %i.if = shl nuw nsw i64 %wide.trip.count275, 4
  %scevgep336.a = getelementptr i8, ptr %i.hy, i64 %i.if ; 4 uses
  %i.ig = shl nuw nsw i64 %i.ic, 2                ; 4 uses
  %scevgep337.a = getelementptr i8, ptr %.0156216, i64 %i.ig
  %i.ih = shl nuw nsw i64 %wide.trip.count275, 2  ; 4 uses
  %scevgep338.a = getelementptr i8, ptr %.0156216, i64 %i.ih
  %scevgep339.a = getelementptr i8, ptr %.0155217, i64 %i.ig
  %scevgep340.a = getelementptr i8, ptr %.0155217, i64 %i.ih
  %scevgep341.a = getelementptr i8, ptr %.0154218, i64 %i.ig
  %scevgep342.a = getelementptr i8, ptr %.0154218, i64 %i.ih
  %scevgep343.a = getelementptr i8, ptr %.0153219, i64 %i.ig
  %scevgep344 = getelementptr i8, ptr %.0153219, i64 %i.ih
  %bound0 = icmp ult ptr %scevgep335.a, %scevgep338.a
  %bound1 = icmp ult ptr %scevgep337.a, %scevgep336.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0345 = icmp ult ptr %scevgep335.a, %scevgep340.a
  %bound1346 = icmp ult ptr %scevgep339.a, %scevgep336.a
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx = or i1 %found.conflict, %found.conflict347
  %bound0348 = icmp ult ptr %scevgep335.a, %scevgep342.a
  %bound1349 = icmp ult ptr %scevgep341.a, %scevgep336.a
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx, %found.conflict350
  %bound0352 = icmp ult ptr %scevgep335.a, %scevgep344
  %bound1353 = icmp ult ptr %scevgep343.a, %scevgep336.a
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %.lr.ph214.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check356 = icmp ult i64 %i.id, 16
  br i1 %min.iters.check356, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ii = and i64 %i.id, 12
  %n.vec = and i64 %i.id, -16                     ; 4 uses
  %i.ij = add nsw i64 %n.vec, %i.ic
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ik = add nuw i64 %index, %i.ic               ; 5 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %i.ik
  %wide.load = load <16 x float>, ptr %i.il, align 4, !tbaa !90, !alias.scope !95
  %i.im = shl nuw nsw i64 %i.ik, 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %i.ik
  %wide.load357.a = load <16 x float>, ptr %i.io, align 4, !tbaa !90, !alias.scope !96
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %i.ik
  %wide.load358.a = load <16 x float>, ptr %i.ip, align 4, !tbaa !90, !alias.scope !97
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %i.ik
  %wide.load359 = load <16 x float>, ptr %i.iq, align 4, !tbaa !90, !alias.scope !98
  %i.ir = shufflevector <16 x float> %wide.load, <16 x float> %wide.load357.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.is = shufflevector <16 x float> %wide.load358.a, <16 x float> %wide.load359, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.ir, <32 x float> %i.is, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec, ptr %i.in, align 4, !tbaa !90, !alias.scope !99, !noalias !100
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %._crit_edge215, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check, label %.lr.ph214.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec360 = and i64 %i.id, -4                   ; 3 uses
  %i.iu = add nsw i64 %n.vec360, %i.ic
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index361 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next367, %vec.epilog.vector.body ] ; 2 uses
  %i.iv = add nuw i64 %index361, %i.ic            ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %i.iv
  %wide.load362.a = load <4 x float>, ptr %i.iw, align 4, !tbaa !90, !alias.scope !95
  %i.ix = shl nuw nsw i64 %i.iv, 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ix
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %i.iv
  %wide.load363.a = load <4 x float>, ptr %i.iz, align 4, !tbaa !90, !alias.scope !96
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %i.iv
  %wide.load364.a = load <4 x float>, ptr %i.ja, align 4, !tbaa !90, !alias.scope !97
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %i.iv
  %wide.load365 = load <4 x float>, ptr %i.jb, align 4, !tbaa !90, !alias.scope !98
  %i.jc = shufflevector <4 x float> %wide.load362.a, <4 x float> %wide.load363.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jd = shufflevector <4 x float> %wide.load364.a, <4 x float> %wide.load365, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec366 = shufflevector <8 x float> %i.jc, <8 x float> %i.jd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec366, ptr %i.iy, align 4, !tbaa !90, !alias.scope !99, !noalias !100
  %index.next367 = add nuw i64 %index361, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n368 = icmp eq i64 %i.id, %n.vec360
  br i1 %cmp.n368, label %._crit_edge215, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv272.ph = phi i64 [ %i.ic, %iter.check ], [ %i.ic, %vector.memcheck ], [ %i.ij, %vec.epilog.iter.check ], [ %i.iu, %vec.epilog.middle.block ] ; 9 uses
  %i.jf = sub nsw i64 %wide.trip.count275, %indvars.iv272.ph
  %xtraiter514 = and i64 %i.jf, 1
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph214.prol.loopexit, label %.lr.ph214.prol

.lr.ph214.prol:                                   ; preds = %.lr.ph214.preheader
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv272.ph
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !90
  %.idx320.prol = shl nuw nsw i64 %indvars.iv272.ph, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx320.prol ; 4 uses
  store float %i.jh, ptr %i.ji, align 4, !tbaa !90
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv272.ph
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !90
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store float %i.jk, ptr %i.jl, align 4, !tbaa !90
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv272.ph
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !90
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store float %i.jn, ptr %i.jo, align 4, !tbaa !90
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv272.ph
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !90
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store float %i.jq, ptr %i.jr, align 4, !tbaa !90
  %indvars.iv.next273.prol = add nuw nsw i64 %indvars.iv272.ph, 1
  br label %.lr.ph214.prol.loopexit

.lr.ph214.prol.loopexit:                          ; preds = %.lr.ph214.prol, %.lr.ph214.preheader
  %indvars.iv272.unr = phi i64 [ %indvars.iv272.ph, %.lr.ph214.preheader ], [ %indvars.iv.next273.prol, %.lr.ph214.prol ]
  %i.js = add nsw i64 %wide.trip.count275, -1
  %i.jt = icmp eq i64 %indvars.iv272.ph, %i.js
  br i1 %i.jt, label %._crit_edge215, label %.lr.ph214

.lr.ph210:                                        ; preds = %.lr.ph222, %.lr.ph210
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %.lr.ph210 ], [ 0, %.lr.ph222 ] ; 6 uses
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %.lr.ph210 ], [ 4, %.lr.ph222 ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv267
  %i.jv = load <4 x float>, ptr %i.ju, align 1, !tbaa !88 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv267
  %i.jx = load <4 x float>, ptr %i.jw, align 1, !tbaa !88 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv267
  %i.jz = load <4 x float>, ptr %i.jy, align 1, !tbaa !88 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv267
  %i.kb = load <4 x float>, ptr %i.ka, align 1, !tbaa !88 ; 2 uses
  %i.kc = shufflevector <4 x float> %i.jv, <4 x float> %i.jx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kd = shufflevector <4 x float> %i.jz, <4 x float> %i.kb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ke = shufflevector <4 x float> %i.jv, <4 x float> %i.jx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kf = shufflevector <4 x float> %i.jz, <4 x float> %i.kb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kg = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kh = shufflevector <4 x float> %i.kd, <4 x float> %i.kc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ki = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kj = shufflevector <4 x float> %i.kf, <4 x float> %i.ke, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %.idx = shl nuw nsw i64 %indvars.iv267, 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx ; 4 uses
  store <4 x float> %i.kg, ptr %i.kk, align 1, !tbaa !88
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <4 x float> %i.kh, ptr %i.kl, align 1, !tbaa !88
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  store <4 x float> %i.ki, ptr %i.km, align 1, !tbaa !88
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  store <4 x float> %i.kj, ptr %i.kn, align 1, !tbaa !88
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %i.ko = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %.not169 = icmp sgt i64 %indvars.iv.next266, %i.kp
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 4
  br i1 %.not169, label %.preheader202.loopexit, label %.lr.ph210, !llvm.loop !73

.lr.ph214:                                        ; preds = %.lr.ph214.prol.loopexit, %.lr.ph214
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.1, %.lr.ph214 ], [ %indvars.iv272.unr, %.lr.ph214.prol.loopexit ] ; 7 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv272
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !90
  %.idx320 = shl nuw nsw i64 %indvars.iv272, 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx320 ; 4 uses
  store float %i.kr, ptr %i.ks, align 4, !tbaa !90
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv272
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !90
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store float %i.ku, ptr %i.kv, align 4, !tbaa !90
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv272
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !90
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store float %i.kx, ptr %i.ky, align 4, !tbaa !90
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv272
  %i.la = load float, ptr %i.kz, align 4, !tbaa !90
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store float %i.la, ptr %i.lb, align 4, !tbaa !90
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 5 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv.next273
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !90
  %.idx320.1 = shl nuw nsw i64 %indvars.iv.next273, 4
  %i.le = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx320.1 ; 4 uses
  store float %i.ld, ptr %i.le, align 4, !tbaa !90
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv.next273
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !90
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store float %i.lg, ptr %i.lh, align 4, !tbaa !90
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv.next273
  %i.lj = load float, ptr %i.li, align 4, !tbaa !90
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store float %i.lj, ptr %i.lk, align 4, !tbaa !90
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv.next273
end_hunk_0
