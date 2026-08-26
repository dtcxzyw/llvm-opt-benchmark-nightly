Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/quantize_x86_avx512bf16?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$__clang_call_terminate = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn33quantize_forward_bf16s_avx512bf16ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 7 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17   ; 4 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18   ; 2 uses
  store i32 %i.q, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  store i32 %i.s, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20   ; 10 uses
  store i32 %i.u, ptr %i.f, align 4, !tbaa !9
  switch i32 %i.k, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %._crit_edge.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21, !range !24, !noundef !25
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = mul nsw i32 %i.u, %i.m                   ; 3 uses
  %i.z = and i32 %i.y, 7
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = and i1 %i.aa, %i.x                      ; 2 uses
  %.092.i = select i1 %i.ab, i32 8, i32 1         ; 2 uses
  %i.ac = sdiv i32 %i.y, 8
  %5 = select i1 %i.ab, i32 %i.ac, i32 %i.y
  %i.ad = zext nneg i32 %.092.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %5, i64 noundef %i.ad, i32 noundef %.092.i, ptr noundef %i.af)
  %i.ag = load ptr, ptr %1, align 8, !tbaa !27
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit103.i

_ZNK4ncnn3Mat5emptyEv.exit103.i:                  ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.aj, %i.am
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit103.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29 ; 2 uses
  %i.ar = sdiv i32 %i.m, %i.aq
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1) ; 3 uses
  store i32 %.sroa.speculated.i, ptr %i.g, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.as = add i32 %i.m, -1
  %i.at = add i32 %i.as, %.sroa.speculated.i
  %i.au = sdiv i32 %i.at, %.sroa.speculated.i
  store i32 %i.au, ptr %i.h, align 4, !tbaa !9
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.aq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

._crit_edge.i:                                    ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = mul nsw i32 %i.u, %i.o                  ; 3 uses
  %i.az = and i32 %i.ay, 7
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = and i1 %i.ba, %i.ax                     ; 4 uses
  %.097.i = select i1 %i.bb, i32 8, i32 1         ; 3 uses
  %i.bc = sdiv i32 %i.ay, 8
  %6 = select i1 %i.bb, i32 %i.bc, i32 %i.ay
  %i.bd = zext nneg i32 %.097.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.m, i32 noundef %6, i64 noundef %i.bd, i32 noundef %.097.i, ptr noundef %i.bf)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !27
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit102.i

_ZNK4ncnn3Mat5emptyEv.exit102.i:                  ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !19
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.bj, %i.bm
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit102.i
  %i.bp = icmp eq i32 %i.u, 16
  %or.cond.i = and i1 %i.bp, %i.bb
  br i1 %or.cond.i, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = icmp ne i32 %i.u, 4
  %or.cond5.not.i = or i1 %i.bq, %i.bb
  br i1 %or.cond5.not.i, label %bb.f, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1.sink.i = phi ptr [ @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1, %bb.d ], [ @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !29
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.bs)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1.sink.i, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.f, ptr nonnull %i.b)
  %.pre = load i32, ptr %i.f, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.e
  %i.bt = phi i32 [ %.pre, %.sink.split.i ], [ %i.u, %bb.e ]
  %i.bu = icmp eq i32 %i.bt, %.097.i
  br i1 %i.bu, label %bb.g, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.bw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.3, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.f, ptr nonnull %i.b)
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.h:                                             ; preds = %bb.a
  %i.bx = add i32 %i.k, -3
  %or.cond7.i = icmp ult i32 %i.bx, 2
  br i1 %or.cond7.i, label %._crit_edge112.i, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

._crit_edge112.i:                                 ; preds = %bb.h
  %i.by = icmp eq i32 %i.k, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !21, !range !24, !noundef !25
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = mul nsw i32 %i.u, %i.s                  ; 3 uses
  %i.cd = and i32 %i.cc, 7
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false     ; 4 uses
  %.093.i = select i1 %i.cf, i32 8, i32 1         ; 4 uses
  %i.cg = sdiv i32 %i.cc, 8
  %7 = select i1 %i.cf, i32 %i.cg, i32 %i.cc      ; 2 uses
  %i.ch = zext nneg i32 %.093.i to i64            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !26 ; 2 uses
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge112.i
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %7, i64 noundef %i.ch, i32 noundef %.093.i, ptr noundef %i.cj)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge112.i
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %7, i64 noundef %i.ch, i32 noundef %.093.i, ptr noundef %i.cj)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ck = load ptr, ptr %1, align 8, !tbaa !27
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !19
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %i.cn, %i.cq
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  %i.ct = icmp eq i32 %i.u, 16
  %or.cond9.i = and i1 %i.ct, %i.cf
  br i1 %or.cond9.i, label %.sink.split116.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp ne i32 %i.u, 4
  %or.cond11.not.i = or i1 %i.cu, %i.cf
  br i1 %or.cond11.not.i, label %bb.n, label %.sink.split116.i

.sink.split116.i:                                 ; preds = %bb.m, %bb.l
  %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.4.sink.i = phi ptr [ @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.4, %bb.l ], [ @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.5, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.cw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.4.sink.i, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  %.pre4 = load i32, ptr %i.f, align 4, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %.sink.split116.i, %bb.m
  %i.cx = phi i32 [ %.pre4, %.sink.split116.i ], [ %i.u, %bb.m ]
  %i.cy = icmp eq i32 %i.cx, %.093.i
  br i1 %i.cy, label %bb.o, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.da)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.6, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit: ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit103.i, %bb.c, %._crit_edge.i, %_ZNK4ncnn3Mat5emptyEv.exit102.i, %bb.f, %bb.g, %bb.h, %bb.k, %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.n, %bb.o
  %.5.i = phi i32 [ 0, %bb.h ], [ 0, %bb.c ], [ -100, %bb.b ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit102.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit103.i ], [ 0, %bb.o ], [ 0, %bb.n ], [ -100, %._crit_edge.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ -100, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.5.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.thread21.i

.thread21.i:                                      ; preds = %bb.b, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit
  %.036 = phi i32 [ %i.fw, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %i.m = mul nsw i32 %i.l, %.036                  ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !27
  %i.o = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.p = mul nsw i32 %i.o, %i.m
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !27
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.q ; 3 uses
  %i.u = load i32, ptr %7, align 4, !tbaa !9
  %i.v = sub nsw i32 %i.u, %i.m
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.v)
  %i.w = mul nsw i32 %.sroa.speculated, %i.o      ; 13 uses
  %.val = load ptr, ptr %8, align 8, !tbaa !27
  %i.x = load float, ptr %.val, align 4, !tbaa !30 ; 8 uses
  %i.y = insertelement <4 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = insertelement <8 x float> poison, float %i.x, i64 0
  %i.ab = shufflevector <8 x float> %i.aa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ac = insertelement <16 x float> poison, float %i.x, i64 0
  %i.ad = shufflevector <16 x float> %i.ac, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ae = icmp sgt i32 %i.w, 15
  br i1 %i.ae, label %.lr.ph.i.preheader, label %.preheader27.i

.lr.ph.i.preheader:                               ; preds = %.thread21.i
  %i.af = add nsw i32 %i.w, -16                   ; 2 uses
  %i.ag = lshr i32 %i.af, 4                       ; 2 uses
  %i.ah = add nuw nsw i32 %i.ag, 1                ; 2 uses
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ah, 536870910
  br label %.lr.ph.i

.preheader27.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i
  %i.aj = and i32 %i.af, 16
  %lcmp.mod.not.not = icmp eq i32 %i.aj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader27.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader27.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.030.i.epil.init = phi ptr [ %i.r, %.lr.ph.i.preheader ], [ %i.bp, %.preheader27.loopexit.i.unr-lcssa ] ; 2 uses
  %.05129.i.epil.init = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.bq, %.preheader27.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod88 = trunc i32 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.ak = load <16 x bfloat>, ptr %.030.i.epil.init, align 1, !tbaa !32
  %i.al = fpext fast <16 x bfloat> %i.ak to <16 x float>
  %i.am = fmul fast <16 x float> %i.ad, %i.al     ; 2 uses
  %i.an = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.am)
  %i.ao = fadd fast <16 x float> %i.an, %i.am
  %i.ap = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ao, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aq = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ap, <16 x i8> zeroinitializer, i16 -1)
  %i.ar = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aq, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ar, ptr %.05129.i.epil.init, align 1, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %.030.i.epil.init, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.05129.i.epil.init, i64 16
  br label %.preheader27.loopexit.i

.preheader27.loopexit.i:                          ; preds = %.preheader27.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa79 = phi ptr [ %i.bp, %.preheader27.loopexit.i.unr-lcssa ], [ %i.as, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.bq, %.preheader27.loopexit.i.unr-lcssa ], [ %i.at, %.lr.ph.i.epil.preheader ]
  %i.au = and i32 %i.w, 2147483632
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %.preheader27.loopexit.i, %.thread21.i
  %.055.lcssa.i = phi i32 [ 0, %.thread21.i ], [ %i.au, %.preheader27.loopexit.i ] ; 3 uses
  %.051.lcssa.i = phi ptr [ %i.t, %.thread21.i ], [ %.lcssa, %.preheader27.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.r, %.thread21.i ], [ %.lcssa79, %.preheader27.loopexit.i ] ; 2 uses
  %i.av = or disjoint i32 %.055.lcssa.i, 7
  %i.aw = icmp slt i32 %i.av, %i.w
  br i1 %i.aw, label %.lr.ph36.i, label %.preheader26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.030.i = phi ptr [ %i.r, %.lr.ph.i.preheader.new ], [ %i.bp, %.lr.ph.i ] ; 3 uses
  %.05129.i = phi ptr [ %i.t, %.lr.ph.i.preheader.new ], [ %i.bq, %.lr.ph.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ax = load <16 x bfloat>, ptr %.030.i, align 1, !tbaa !32
  %i.ay = fpext fast <16 x bfloat> %i.ax to <16 x float>
  %i.az = fmul fast <16 x float> %i.ad, %i.ay     ; 2 uses
  %i.ba = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.az)
  %i.bb = fadd fast <16 x float> %i.ba, %i.az
  %i.bc = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bd = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bc, <16 x i8> zeroinitializer, i16 -1)
  %i.be = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bd, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.be, ptr %.05129.i, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.05129.i, i64 16
  %i.bh = load <16 x bfloat>, ptr %i.bf, align 1, !tbaa !32
  %i.bi = fpext fast <16 x bfloat> %i.bh to <16 x float>
  %i.bj = fmul fast <16 x float> %i.ad, %i.bi     ; 2 uses
  %i.bk = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bj)
  %i.bl = fadd fast <16 x float> %i.bk, %i.bj
  %i.bm = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bn = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bm, <16 x i8> zeroinitializer, i16 -1)
  %i.bo = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bn, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bo, ptr %i.bg, align 1, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %.030.i, i64 64 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05129.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader27.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !33
end_hunk_0
