Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/blas_l1_thread?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_queue = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@blas_quick_divide_table = external local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind uwtable
define noundef i32 @blas_level1_thread(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %13 = alloca [64 x %struct.blas_queue], align 16 ; 15 uses
  %14 = alloca [64 x %struct.blas_arg_t], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.b = and i32 %0, 15                           ; 2 uses
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.d
    i32 10, label %bb.e
    i32 11, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = lshr i32 %0, 12
  %.lobit86 = and i32 %i.c, 1
  %i.d = add nuw nsw i32 %.lobit86, %i.b          ; 2 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i32 %0, 12
  %.lobit85 = and i32 %i.e, 1                     ; 2 uses
  %i.f = or disjoint i32 %.lobit85, 2
  %i.g = add nuw nsw i32 %.lobit85, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = lshr i32 %0, 12
  %.lobit84 = and i32 %i.h, 1                     ; 2 uses
  %i.i = add nuw nsw i32 %.lobit84, 3
  %i.j = add nuw nsw i32 %.lobit84, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = lshr i32 %0, 12
  %.lobit83 = and i32 %i.k, 1                     ; 2 uses
  %i.l = add nuw nsw i32 %.lobit83, 1
  %i.m = or disjoint i32 %.lobit83, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = lshr i32 %0, 12
  %.lobit = and i32 %i.n, 1                       ; 2 uses
  %i.o = add nuw nsw i32 %.lobit, 1
  %i.p = add nuw nsw i32 %.lobit, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.074 = phi i32 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.p, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.q = shl i32 %0, 1
  %i.r = and i32 %i.q, 32768
  %i.s = xor i32 %i.r, 32768
  %spec.select = or i32 %i.s, %0
  %15 = zext i32 %12 to i64                       ; 2 uses
  %i.t = icmp sgt i32 %12, 0
  br i1 %i.t, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %xtraiter = and i64 %15, 7                      ; 3 uses
  %i.u = icmp ult i32 %12, 8
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %15, 2147483640
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07890.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.at, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07890.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.07890.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.v = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = add nuw nsw i64 %.07890.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !31

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.g
  %i.y = icmp sgt i64 %1, 0
  br i1 %i.y, label %.lr.ph95, label %._crit_edge.thread

.lr.ph95:                                         ; preds = %.preheader
  %i.z = and i32 %0, 256
  %.not88 = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not88, i64 %8, i64 1
  %i.ab = zext nneg i32 %.074 to i64
  %i.ac = zext nneg i32 %.0 to i64
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07890 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1056
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07890
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.at = add nuw nsw i64 %.07890, 8              ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

bb.h:                                             ; preds = %.lr.ph95, %blas_quickdivide.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next, %blas_quickdivide.exit ] ; 5 uses
  %.193 = phi i64 [ %1, %.lr.ph95 ], [ %i.bd, %blas_quickdivide.exit ] ; 3 uses
  %.08092 = phi ptr [ %5, %.lr.ph95 ], [ %i.bz, %blas_quickdivide.exit ] ; 2 uses
  %.08191 = phi ptr [ %7, %.lr.ph95 ], [ %i.cc, %blas_quickdivide.exit ] ; 2 uses
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  %17 = xor i32 %16, -1
  %18 = trunc i64 %.193 to i32
  %19 = add i32 %12, %18
  %20 = add i32 %19, %17                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.au = trunc i64 %indvars.iv to i32
  %i.av = sub i32 %12, %i.au                      ; 2 uses
  %i.aw = icmp ult i32 %i.av, 2
  br i1 %i.aw, label %blas_quickdivide.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !10
  %i.ba = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.az, i32 %20) #5, !srcloc !11
  %i.bb = extractvalue { i32, i32 } %i.ba, 0
  store volatile i32 %i.bb, ptr %i.a, align 4, !tbaa !10
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !10
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %.0..0..0..0..0..0..i, %bb.i ], [ %20, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = zext i32 %.0.i to i64                   ; 2 uses
  %i.bd = sub nsw i64 %.193, %i.bc                ; 3 uses
  %i.be = icmp slt i64 %i.bd, 0
  %spec.select89 = select i1 %i.be, i64 %.193, i64 %i.bc ; 3 uses
  %i.bf = mul nsw i64 %spec.select89, %6
  %.076 = mul nsw i64 %spec.select89, %i.aa
  %i.bg = shl i64 %i.bf, %i.ab
  %i.bh = shl i64 %.076, %i.ac
  %i.bi = getelementptr inbounds nuw [136 x i8], ptr %14, i64 %indvars.iv ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i64 %spec.select89, ptr %i.bj, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i64 %2, ptr %i.bk, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store i64 %3, ptr %i.bl, align 8, !tbaa !17
  store ptr %.08092, ptr %i.bi, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.08191, ptr %i.bm, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %9, ptr %i.bn, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store i64 %6, ptr %i.bo, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store i64 %8, ptr %i.bp, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  store i64 %10, ptr %i.bq, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %4, ptr %i.br, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %indvars.iv ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !27
  store ptr %11, ptr %i.bs, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.bi, ptr %i.bu, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bv = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %indvars.iv.next
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !30
  %i.bx = ptrtoint ptr %.08092 to i64
  %i.by = add i64 %i.bg, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = ptrtoint ptr %.08191 to i64
  %i.cb = add i64 %i.bh, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = icmp sgt i64 %i.bd, 0
  br i1 %i.cd, label %bb.h, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %blas_quickdivide.exit
  %i.ce = getelementptr [168 x i8], ptr %13, i64 %indvars.iv.next
  %i.cf = getelementptr i8, ptr %i.ce, i64 -104
  store ptr null, ptr %i.cf, align 8, !tbaa !30
  %i.cg = call i32 @exec_blas(i64 noundef %indvars.iv.next, ptr noundef nonnull %13) #5 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @exec_blas(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @blas_level1_thread_with_return_value(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %13 = alloca [64 x %struct.blas_queue], align 16 ; 15 uses
  %14 = alloca [64 x %struct.blas_arg_t], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.b = and i32 %0, 15                           ; 2 uses
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.d
    i32 10, label %bb.e
    i32 11, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = lshr i32 %0, 12
  %.lobit85 = and i32 %i.c, 1
  %i.d = add nuw nsw i32 %.lobit85, %i.b          ; 2 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i32 %0, 12
  %.lobit84 = and i32 %i.e, 1                     ; 2 uses
  %i.f = or disjoint i32 %.lobit84, 2
  %i.g = add nuw nsw i32 %.lobit84, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = lshr i32 %0, 12
  %.lobit83 = and i32 %i.h, 1                     ; 2 uses
  %i.i = add nuw nsw i32 %.lobit83, 3
  %i.j = add nuw nsw i32 %.lobit83, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = lshr i32 %0, 12
  %.lobit82 = and i32 %i.k, 1                     ; 2 uses
  %i.l = add nuw nsw i32 %.lobit82, 1
  %i.m = or disjoint i32 %.lobit82, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = lshr i32 %0, 12
  %.lobit = and i32 %i.n, 1                       ; 2 uses
  %i.o = add nuw nsw i32 %.lobit, 1
  %i.p = add nuw nsw i32 %.lobit, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.074 = phi i32 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.p, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.q = or i32 %0, 32768
  %15 = zext i32 %12 to i64                       ; 2 uses
  %i.r = icmp sgt i32 %12, 0
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %xtraiter = and i64 %15, 7                      ; 3 uses
  %i.s = icmp ult i32 %12, 8
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %15, 2147483640
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07887.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ar, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07887.epil = phi i64 [ %i.v, %.lr.ph.epil ], [ %.07887.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.t = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887.epil
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = add nuw nsw i64 %.07887.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !34

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.g
  %i.w = icmp sgt i64 %1, 0
  br i1 %i.w, label %.lr.ph92, label %._crit_edge.thread

.lr.ph92:                                         ; preds = %.preheader
  %i.x = and i32 %0, 256
  %.not86 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not86, i64 %8, i64 1
  %i.z = zext nneg i32 %.074 to i64
  %i.aa = zext nneg i32 %.0 to i64
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07887 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1056
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %.07887
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ar = add nuw nsw i64 %.07887, 8              ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !35

bb.h:                                             ; preds = %.lr.ph92, %blas_quickdivide.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next, %blas_quickdivide.exit ] ; 6 uses
  %.190 = phi i64 [ %1, %.lr.ph92 ], [ %i.bb, %blas_quickdivide.exit ] ; 3 uses
  %.07989 = phi ptr [ %5, %.lr.ph92 ], [ %i.bz, %blas_quickdivide.exit ] ; 2 uses
  %.08088 = phi ptr [ %7, %.lr.ph92 ], [ %i.cc, %blas_quickdivide.exit ] ; 2 uses
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  %17 = xor i32 %16, -1
  %18 = trunc i64 %.190 to i32
  %19 = add i32 %12, %18
  %20 = add i32 %19, %17                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.as = trunc i64 %indvars.iv to i32
  %i.at = sub i32 %12, %i.as                      ; 2 uses
  %i.au = icmp ult i32 %i.at, 2
  br i1 %i.au, label %blas_quickdivide.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  %i.ay = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.ax, i32 %20) #5, !srcloc !11
  %i.az = extractvalue { i32, i32 } %i.ay, 0
  store volatile i32 %i.az, ptr %i.a, align 4, !tbaa !10
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !10
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %.0..0..0..0..0..0..i, %bb.i ], [ %20, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = zext i32 %.0.i to i64                   ; 2 uses
  %i.bb = sub nsw i64 %.190, %i.ba                ; 3 uses
  %i.bc = icmp slt i64 %i.bb, 0
  %spec.select = select i1 %i.bc, i64 %.190, i64 %i.ba ; 3 uses
  %i.bd = mul nsw i64 %spec.select, %6
  %.076 = mul nsw i64 %spec.select, %i.y
  %i.be = shl i64 %i.bd, %i.z
  %i.bf = shl i64 %.076, %i.aa
  %i.bg = getelementptr inbounds nuw [136 x i8], ptr %14, i64 %indvars.iv ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i64 %spec.select, ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i64 %2, ptr %i.bi, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  store i64 %3, ptr %i.bj, align 8, !tbaa !17
  store ptr %.07989, ptr %i.bg, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.08088, ptr %i.bk, align 8, !tbaa !19
  %i.bl = shl nuw nsw i64 %indvars.iv, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i64 %6, ptr %i.bo, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store i64 %8, ptr %i.bp, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %10, ptr %i.bq, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %4, ptr %i.br, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %indvars.iv ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  store i32 %i.q, ptr %i.bt, align 8, !tbaa !27
  store ptr %11, ptr %i.bs, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bv = getelementptr inbounds nuw [168 x i8], ptr %13, i64 %indvars.iv.next
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !30
  %i.bx = ptrtoint ptr %.07989 to i64
  %i.by = add i64 %i.be, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = ptrtoint ptr %.08088 to i64
  %i.cb = add i64 %i.bf, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = icmp sgt i64 %i.bb, 0
  br i1 %i.cd, label %bb.h, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %blas_quickdivide.exit
  %i.ce = getelementptr [168 x i8], ptr %13, i64 %indvars.iv.next
  %i.cf = getelementptr i8, ptr %i.ce, i64 -104
  store ptr null, ptr %i.cf, align 8, !tbaa !30
  %i.cg = call i32 @exec_blas(i64 noundef %indvars.iv.next, ptr noundef nonnull %13) #5 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!5, !5, i64 0}
!11 = !{i64 1072579}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !12, i64 104, !13, i64 112, !12, i64 120, !5, i64 128}
!15 = !{!14, !13, i64 48}
!16 = !{!14, !13, i64 56}
!17 = !{!14, !13, i64 64}
!18 = !{!14, !12, i64 0}
!19 = !{!14, !12, i64 8}
!20 = !{!14, !12, i64 16}
!21 = !{!14, !13, i64 72}
!22 = !{!14, !13, i64 80}
!23 = !{!14, !13, i64 88}
!24 = !{!14, !12, i64 32}
!25 = !{!"p1 _ZTS10blas_queue", !12, i64 0}
!26 = !{!"blas_queue", !12, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !25, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!27 = !{!26, !5, i64 160}
!28 = !{!26, !12, i64 0}
!29 = !{!26, !12, i64 24}
!30 = !{!26, !25, i64 64}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
end_hunk_0
