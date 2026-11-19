Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn11RotaryEmbedD0Ev = comdat any

@_ZTVN4ncnn11RotaryEmbedE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn11RotaryEmbedE, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn11RotaryEmbedD0Ev, ptr @_ZN4ncnn11RotaryEmbed10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn11RotaryEmbedE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn11RotaryEmbedE, ptr @_ZTIN4ncnn5LayerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn11RotaryEmbedE = hidden constant [21 x i8] c"N4ncnn11RotaryEmbedE\00", align 1
@_ZTIN4ncnn5LayerE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn11RotaryEmbedC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn11RotaryEmbedC2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn11RotaryEmbedD0Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn11RotaryEmbed10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(212) initializes((208, 212)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.a, ptr %i.b, align 8, !tbaa !27
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.e = load ptr, ptr %1, align 8, !tbaa !36     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  store i32 %i.k, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38
  store i32 %i.m, ptr %i.c, align 4, !tbaa !31
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef %i.p)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !38
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %i.t, %i.w
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.aa)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.n, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn11RotaryEmbedC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11RotaryEmbedE, i64 16), ptr %0, align 8, !tbaa !43
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30, !noalias !65
  %i.n = load ptr, ptr %3, align 8, !tbaa !32, !noalias !65 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !65 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !66, !noalias !65 ; 8 uses
  %factor.op.mul150 = mul i64 %i.p, %i.r          ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30, !noalias !67
  %i.v = load ptr, ptr %4, align 8, !tbaa !32, !noalias !67 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33, !noalias !67 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !66, !noalias !67 ; 9 uses
  %factor.op.mul152 = mul i64 %i.x, %i.z          ; 2 uses
  %i.aa = sext i32 %i.u to i64                    ; 5 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !31    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = mul i64 %i.r, %i.s                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = mul i64 %i.z, %i.aa                     ; 2 uses
  br i1 %i.ac, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %.not84 = icmp eq i32 %i.ak, 0
  br i1 %.not84, label %.noexc.lr.ph.split.split.us, label %.noexc.lr.ph.split.split

.noexc.lr.ph.split.split.us:                      ; preds = %.noexc.lr.ph.split
  %i.al = load i32, ptr %9, align 4, !tbaa !31    ; 2 uses
  %i.am = sdiv i32 %i.al, 2                       ; 6 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = load ptr, ptr %8, align 8, !tbaa !32    ; 4 uses
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul144.us = mul i64 %i.ar, %i.aq
  %i.as = load ptr, ptr %7, align 8, !tbaa !32    ; 4 uses
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = load i64, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul146.us = mul i64 %i.av, %i.au
  %i.aw = icmp sgt i32 %i.al, 1
  br i1 %i.aw, label %.noexc.us.preheader, label %._crit_edge.split

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.us
  %i.ax = sext i32 %i.k to i64                    ; 5 uses
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count167 = zext nneg i32 %i.ab to i64 ; 2 uses
  %10 = add nsw i64 %wide.trip.count167, -1       ; 4 uses
  %11 = mul nsw i64 %10, %i.aa
  %i.az = mul i64 %i.x, %i.ax
  %i.ba = add i64 %11, %i.az
  %i.bb = mul i64 %i.z, %i.ba                     ; 2 uses
  %12 = shl nuw nsw i64 %i.an, 2                  ; 4 uses
  %i.bc = add nsw i32 %i.am, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 8 uses
  %13 = mul i64 %i.x, %i.z
  %14 = mul i64 %i.ar, %i.aq
  %15 = mul i64 %i.ar, %10
  %16 = mul i64 %15, %i.aq
  %i.bf = getelementptr i8, ptr %i.ao, i64 %16
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.be
  %scevgep264 = getelementptr i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bh = mul i64 %i.av, %i.au
  %i.bi = mul i64 %i.av, %10
  %i.bj = mul i64 %i.bi, %i.au
  %i.bk = getelementptr i8, ptr %i.as, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.be
  %scevgep265 = getelementptr i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bm = mul nsw i64 %10, %i.s
  %i.bn = mul i64 %i.p, %i.ax
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = mul i64 %i.r, %i.bo                     ; 2 uses
  %i.bq = mul i64 %i.p, %i.r                      ; 2 uses
  %i.br = mul i64 %i.r, %i.s
  %17 = mul i64 %i.z, %i.aa
  %i.bs = mul i64 %i.bq, %i.ax
  %i.bt = mul i64 %i.x, %i.z
  %i.bu = mul i64 %i.bt, %i.ax                    ; 2 uses
  %18 = add i64 %i.bu, %12                        ; 2 uses
  %19 = getelementptr i8, ptr %i.v, i64 %i.bb
  %20 = getelementptr i8, ptr %19, i64 %12
  %21 = getelementptr i8, ptr %20, i64 %i.be
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %i.n, i64 %i.bp
  %i.bv = getelementptr i8, ptr %23, i64 %i.be
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %i.bx = getelementptr i8, ptr %i.n, i64 %i.bp
  %i.by = getelementptr i8, ptr %i.bx, i64 %12
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.be
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = getelementptr i8, ptr %i.n, i64 %i.bs
  %i.cc = getelementptr i8, ptr %i.cb, i64 %12
  %i.cd = getelementptr i8, ptr %i.v, i64 %i.bb
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.be
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %i.cg = getelementptr i8, ptr %i.v, i64 %18
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.be
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %i.cj = getelementptr i8, ptr %i.v, i64 %18
  %i.ck = getelementptr i8, ptr %i.v, i64 %i.bu
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.be
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = add nsw i32 %i.am, -1                   ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check275 = icmp ult i32 %i.cn, 11
  %24 = or i64 %i.br, %17
  %stride.check284 = icmp slt i64 %24, 0
  %stride.check293 = icmp slt i64 %i.bh, 0
  %stride.check298 = icmp slt i64 %14, 0
  %n.vec317 = and i64 %i.cp, 8589934588           ; 4 uses
  %i.cq = trunc i64 %n.vec317 to i32
  %i.cr = shl nuw nsw i64 %n.vec317, 2            ; 6 uses
  %cmp.n332 = icmp eq i64 %i.cp, %n.vec317
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us
  %indvar266 = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next267, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv169 = phi i64 [ %i.ax, %.noexc.us.preheader ], [ %indvars.iv.next170, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us ] ; 3 uses
  %25 = mul i64 %13, %indvar266                   ; 5 uses
  %scevgep268 = getelementptr i8, ptr %22, i64 %25 ; 4 uses
  %i.cs = mul i64 %i.bq, %indvar266               ; 3 uses
  %scevgep268.a = getelementptr i8, ptr %i.bw, i64 %i.cs ; 2 uses
  %scevgep269 = getelementptr i8, ptr %i.ca, i64 %i.cs ; 2 uses
  %scevgep270 = getelementptr i8, ptr %i.cc, i64 %i.cs ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.cf, i64 %25 ; 4 uses
  %scevgep271 = getelementptr i8, ptr %i.ci, i64 %25
  %scevgep272 = getelementptr i8, ptr %i.cj, i64 %25 ; 5 uses
  %scevgep273 = getelementptr i8, ptr %i.cm, i64 %25
  %.reass151.us = mul i64 %factor.op.mul150, %indvars.iv169
  %i.ct = getelementptr i8, ptr %i.n, i64 %.reass151.us ; 3 uses
  %.reass153.us = mul i64 %factor.op.mul152, %indvars.iv169
  %i.cu = getelementptr i8, ptr %i.v, i64 %.reass153.us ; 6 uses
  %bound0277 = icmp ult ptr %i.cu, %scevgep271
  %bound1278 = icmp ult ptr %scevgep272, %scevgep273
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0281 = icmp ult ptr %i.cu, %scevgep269
  %bound1282 = icmp ult ptr %scevgep270, %scevgep274
  %found.conflict283 = and i1 %bound0281, %bound1282
  %i.cv = or i1 %found.conflict283, %stride.check284
  %conflict.rdx285 = or i1 %found.conflict279, %i.cv
  %bound0286 = icmp ult ptr %i.cu, %scevgep268.a
  %bound1287 = icmp ult ptr %i.ct, %scevgep274
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %i.cu, %scevgep265
  %bound1291 = icmp ult ptr %i.as, %scevgep274
  %found.conflict292 = and i1 %bound0290, %bound1291
  %i.cw = or i1 %found.conflict292, %stride.check293
  %conflict.rdx294 = or i1 %conflict.rdx289, %i.cw
  %bound0295 = icmp ult ptr %i.cu, %scevgep264
  %bound1296 = icmp ult ptr %i.ao, %scevgep274
  %found.conflict297 = and i1 %bound0295, %bound1296
  %i.cx = or i1 %found.conflict297, %stride.check298
  %conflict.rdx299 = or i1 %conflict.rdx294, %i.cx
  %bound0300 = icmp ult ptr %scevgep272, %scevgep269
  %bound1301 = icmp ult ptr %scevgep270, %scevgep268
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %scevgep272, %scevgep268.a
  %bound1305 = icmp ult ptr %i.ct, %scevgep268
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %scevgep272, %scevgep265
  %bound1309 = icmp ult ptr %i.as, %scevgep268
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0312 = icmp ult ptr %scevgep272, %scevgep264
  %bound1313 = icmp ult ptr %i.ao, %scevgep268
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  br label %.lr.ph139.us.us

.lr.ph139.us.us:                                  ; preds = %.noexc.us, %..loopexit_crit_edge.us.us
  %indvars.iv164 = phi i64 [ 0, %.noexc.us ], [ %indvars.iv.next165, %..loopexit_crit_edge.us.us ] ; 5 uses
  %i.cy = mul i64 %i.ad, %indvars.iv164
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.an ; 4 uses
  %.reass145.us = mul i64 %factor.op.mul144.us, %indvars.iv164
  %i.db = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.reass145.us ; 4 uses
  %.reass147.us = mul i64 %factor.op.mul146.us, %indvars.iv164
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 %.reass147.us ; 4 uses
  %i.dd = mul i64 %i.ai, %indvars.iv164
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.an ; 4 uses
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph139.us.us
  br i1 %conflict.rdx315, label %scalar.ph274.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %vector.memcheck276
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.cr
  %i.dh = getelementptr i8, ptr %i.de, i64 %i.cr
  %i.di = getelementptr i8, ptr %i.dc, i64 %i.cr
  %i.dj = getelementptr i8, ptr %i.db, i64 %i.cr
  %i.dk = getelementptr i8, ptr %i.da, i64 %i.cr
  %i.dl = getelementptr i8, ptr %i.cz, i64 %i.cr
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next330, %vector.body318 ] ; 2 uses
  %i.dm = shl i64 %index319, 2                    ; 6 uses
  %next.gep320 = getelementptr i8, ptr %i.df, i64 %i.dm
  %next.gep321 = getelementptr i8, ptr %i.de, i64 %i.dm
  %next.gep322 = getelementptr i8, ptr %i.dc, i64 %i.dm
  %next.gep323 = getelementptr i8, ptr %i.db, i64 %i.dm
  %next.gep324 = getelementptr i8, ptr %i.da, i64 %i.dm
  %next.gep325 = getelementptr i8, ptr %i.cz, i64 %i.dm
  %wide.load326 = load <4 x float>, ptr %next.gep325, align 4, !tbaa !69, !alias.scope !70 ; 2 uses
  %wide.load327 = load <4 x float>, ptr %next.gep324, align 4, !tbaa !69, !alias.scope !71 ; 2 uses
  %wide.load328 = load <4 x float>, ptr %next.gep322, align 4, !tbaa !69, !alias.scope !72 ; 2 uses
  %wide.load329 = load <4 x float>, ptr %next.gep323, align 4, !tbaa !69, !alias.scope !73 ; 2 uses
  %i.dn = fmul fast <4 x float> %wide.load328, %wide.load326
  %i.do = fmul fast <4 x float> %wide.load329, %wide.load327
  %i.dp = fsub fast <4 x float> %i.dn, %i.do
  store <4 x float> %i.dp, ptr %next.gep321, align 4, !tbaa !69, !alias.scope !74, !noalias !75
  %i.dq = fmul fast <4 x float> %wide.load329, %wide.load326
  %i.dr = fmul fast <4 x float> %wide.load328, %wide.load327
  %i.ds = fadd fast <4 x float> %i.dq, %i.dr
  store <4 x float> %i.ds, ptr %next.gep320, align 4, !tbaa !69, !alias.scope !76, !noalias !77
  %index.next330 = add nuw i64 %index319, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next330, %n.vec317
  br i1 %i.dt, label %middle.block331, label %vector.body318, !llvm.loop !55

middle.block331:                                  ; preds = %vector.body318
  br i1 %cmp.n332, label %..loopexit_crit_edge.us.us, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %vector.memcheck276, %.lr.ph139.us.us, %middle.block331
  %.071138.us.us.ph = phi i32 [ 0, %vector.memcheck276 ], [ 0, %.lr.ph139.us.us ], [ %i.cq, %middle.block331 ] ; 4 uses
  %.072137.us.us.ph = phi ptr [ %i.df, %vector.memcheck276 ], [ %i.df, %.lr.ph139.us.us ], [ %i.dg, %middle.block331 ] ; 3 uses
  %.073136.us.us.ph = phi ptr [ %i.de, %vector.memcheck276 ], [ %i.de, %.lr.ph139.us.us ], [ %i.dh, %middle.block331 ] ; 3 uses
  %.074135.us.us.ph = phi ptr [ %i.dc, %vector.memcheck276 ], [ %i.dc, %.lr.ph139.us.us ], [ %i.di, %middle.block331 ] ; 3 uses
  %.075134.us.us.ph = phi ptr [ %i.db, %vector.memcheck276 ], [ %i.db, %.lr.ph139.us.us ], [ %i.dj, %middle.block331 ] ; 3 uses
  %.076133.us.us.ph = phi ptr [ %i.da, %vector.memcheck276 ], [ %i.da, %.lr.ph139.us.us ], [ %i.dk, %middle.block331 ] ; 3 uses
  %.077132.us.us.ph = phi ptr [ %i.cz, %vector.memcheck276 ], [ %i.cz, %.lr.ph139.us.us ], [ %i.dl, %middle.block331 ] ; 3 uses
  %i.du = sub i32 %i.am, %.071138.us.us.ph
  %.neg343 = add i32 %.071138.us.us.ph, 1
  %xtraiter341 = and i32 %i.du, 1
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol

scalar.ph274.prol:                                ; preds = %scalar.ph274.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %.077132.us.us.ph, i64 4
  %i.dw = load float, ptr %.077132.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.076133.us.us.ph, i64 4
  %i.dy = load float, ptr %.076133.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.074135.us.us.ph, i64 4
  %i.ea = load float, ptr %.074135.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.075134.us.us.ph, i64 4
  %i.ec = load float, ptr %.075134.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.ed = fmul fast float %i.ea, %i.dw
  %i.ee = fmul fast float %i.ec, %i.dy
  %i.ef = fsub fast float %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.073136.us.us.ph, i64 4
  store float %i.ef, ptr %.073136.us.us.ph, align 4, !tbaa !69
  %i.eh = fmul fast float %i.ec, %i.dw
  %i.ei = fmul fast float %i.ea, %i.dy
  %i.ej = fadd fast float %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.072137.us.us.ph, i64 4
  store float %i.ej, ptr %.072137.us.us.ph, align 4, !tbaa !69
  %i.el = add nuw nsw i32 %.071138.us.us.ph, 1
  br label %scalar.ph274.prol.loopexit

scalar.ph274.prol.loopexit:                       ; preds = %scalar.ph274.prol, %scalar.ph274.preheader
  %.071138.us.us.unr = phi i32 [ %.071138.us.us.ph, %scalar.ph274.preheader ], [ %i.el, %scalar.ph274.prol ]
  %.072137.us.us.unr = phi ptr [ %.072137.us.us.ph, %scalar.ph274.preheader ], [ %i.ek, %scalar.ph274.prol ]
  %.073136.us.us.unr = phi ptr [ %.073136.us.us.ph, %scalar.ph274.preheader ], [ %i.eg, %scalar.ph274.prol ]
  %.074135.us.us.unr = phi ptr [ %.074135.us.us.ph, %scalar.ph274.preheader ], [ %i.dz, %scalar.ph274.prol ]
  %.075134.us.us.unr = phi ptr [ %.075134.us.us.ph, %scalar.ph274.preheader ], [ %i.eb, %scalar.ph274.prol ]
  %.076133.us.us.unr = phi ptr [ %.076133.us.us.ph, %scalar.ph274.preheader ], [ %i.dx, %scalar.ph274.prol ]
  %.077132.us.us.unr = phi ptr [ %.077132.us.us.ph, %scalar.ph274.preheader ], [ %i.dv, %scalar.ph274.prol ]
  %i.em = icmp eq i32 %i.am, %.neg343
  br i1 %i.em, label %..loopexit_crit_edge.us.us, label %scalar.ph274

scalar.ph274:                                     ; preds = %scalar.ph274.prol.loopexit, %scalar.ph274
  %.071138.us.us = phi i32 [ %i.ft, %scalar.ph274 ], [ %.071138.us.us.unr, %scalar.ph274.prol.loopexit ]
  %.072137.us.us = phi ptr [ %i.fs, %scalar.ph274 ], [ %.072137.us.us.unr, %scalar.ph274.prol.loopexit ] ; 3 uses
  %.073136.us.us = phi ptr [ %i.fo, %scalar.ph274 ], [ %.073136.us.us.unr, %scalar.ph274.prol.loopexit ] ; 3 uses
  %.074135.us.us = phi ptr [ %i.fh, %scalar.ph274 ], [ %.074135.us.us.unr, %scalar.ph274.prol.loopexit ] ; 3 uses
  %.075134.us.us = phi ptr [ %i.fj, %scalar.ph274 ], [ %.075134.us.us.unr, %scalar.ph274.prol.loopexit ] ; 3 uses
  %.076133.us.us = phi ptr [ %i.ff, %scalar.ph274 ], [ %.076133.us.us.unr, %scalar.ph274.prol.loopexit ] ; 3 uses
  %.077132.us.us = phi ptr [ %i.fd, %scalar.ph274 ], [ %.077132.us.us.unr, %scalar.ph274.prol.loopexit ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.077132.us.us, i64 4
  %i.eo = load float, ptr %.077132.us.us, align 4, !tbaa !69 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.076133.us.us, i64 4
  %i.eq = load float, ptr %.076133.us.us, align 4, !tbaa !69 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.074135.us.us, i64 4
  %i.es = load float, ptr %.074135.us.us, align 4, !tbaa !69 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.075134.us.us, i64 4
  %i.eu = load float, ptr %.075134.us.us, align 4, !tbaa !69 ; 2 uses
  %i.ev = fmul fast float %i.es, %i.eo
  %i.ew = fmul fast float %i.eu, %i.eq
  %i.ex = fsub fast float %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.073136.us.us, i64 4
  store float %i.ex, ptr %.073136.us.us, align 4, !tbaa !69
  %i.ez = fmul fast float %i.eu, %i.eo
  %i.fa = fmul fast float %i.es, %i.eq
  %i.fb = fadd fast float %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.072137.us.us, i64 4
  store float %i.fb, ptr %.072137.us.us, align 4, !tbaa !69
  %i.fd = getelementptr inbounds nuw i8, ptr %.077132.us.us, i64 8
  %i.fe = load float, ptr %i.en, align 4, !tbaa !69 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.076133.us.us, i64 8
  %i.fg = load float, ptr %i.ep, align 4, !tbaa !69 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.074135.us.us, i64 8
  %i.fi = load float, ptr %i.er, align 4, !tbaa !69 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.075134.us.us, i64 8
  %i.fk = load float, ptr %i.et, align 4, !tbaa !69 ; 2 uses
  %i.fl = fmul fast float %i.fi, %i.fe
  %i.fm = fmul fast float %i.fk, %i.fg
  %i.fn = fsub fast float %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.073136.us.us, i64 8
  store float %i.fn, ptr %i.ey, align 4, !tbaa !69
  %i.fp = fmul fast float %i.fk, %i.fe
  %i.fq = fmul fast float %i.fi, %i.fg
  %i.fr = fadd fast float %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.072137.us.us, i64 8
  store float %i.fr, ptr %i.fc, align 4, !tbaa !69
  %i.ft = add nuw nsw i32 %.071138.us.us, 2       ; 2 uses
  %exitcond163.not.1 = icmp eq i32 %i.ft, %i.am
  br i1 %exitcond163.not.1, label %..loopexit_crit_edge.us.us, label %scalar.ph274, !llvm.loop !56

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph274.prol.loopexit, %scalar.ph274, %middle.block331
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us, label %.lr.ph139.us.us, !llvm.loop !57

._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us:     ; preds = %..loopexit_crit_edge.us.us
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1 ; 2 uses
  %lftr.wideiv172 = trunc i64 %indvars.iv.next170 to i32
  %exitcond173.not = icmp eq i32 %i.ay, %lftr.wideiv172
  %indvar.next267 = add i64 %indvar266, 1
  br i1 %exitcond173.not, label %._crit_edge.split, label %.noexc.us

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.fu = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.fv = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = load i64, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul = mul i64 %i.fx, %i.fw
  %i.fy = load ptr, ptr %8, align 8, !tbaa !32    ; 3 uses
  %i.fz = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = load i64, ptr %i.ah, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul142 = mul i64 %i.gb, %i.ga
  %i.gc = load i32, ptr %9, align 4, !tbaa !31    ; 2 uses
  %i.gd = sdiv i32 %i.gc, 2                       ; 5 uses
  %i.ge = icmp sgt i32 %i.gc, 1
  br i1 %i.ge, label %.noexc.preheader, label %._crit_edge.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.gf = sext i32 %i.k to i64                    ; 3 uses
  %i.gg = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 2 uses
  %i.gh = mul i64 %i.gb, %i.ga
  %i.gi = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.gj = mul i64 %i.gb, %i.gi
  %i.gk = mul i64 %i.gj, %i.ga
  %i.gl = add nsw i32 %i.gd, -1
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = shl nuw nsw i64 %i.gm, 2                ; 2 uses
  %i.go = getelementptr i8, ptr %i.fy, i64 %i.gk
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gn
  %scevgep = getelementptr i8, ptr %i.gp, i64 4
  %i.gq = mul i64 %i.fx, %i.fw
  %i.gr = mul i64 %i.fx, %i.gi
  %i.gs = mul i64 %i.gr, %i.fw
  %i.gt = getelementptr i8, ptr %i.fu, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gn
end_hunk_0
