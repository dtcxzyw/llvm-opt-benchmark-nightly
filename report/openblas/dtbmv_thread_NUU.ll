Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtbmv_thread_NUU?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }
%struct.blas_queue = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }

@blas_quick_divide_table = external local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind uwtable
define noundef i32 @dtbmv_thread_NUU(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.blas_arg_t, align 8         ; 11 uses
  %9 = alloca [64 x %struct.blas_queue], align 16 ; 10 uses
  %i.b = alloca [65 x i64], align 16              ; 9 uses
  %i.c = alloca [65 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %0, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %1, ptr %i.e, align 8, !tbaa !12
  store ptr %2, ptr %8, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %6, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %3, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 %5, ptr %i.i, align 8, !tbaa !17
  %i.j = sitofp i64 %0 to double                  ; 2 uses
  %i.k = sitofp i32 %7 to double
  %i.l = shl nsw i64 %1, 1
  %i.m = icmp slt i64 %0, %i.l
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 %0, ptr %i.n, align 16, !tbaa !18
  %i.o = icmp sgt i64 %0, 0
  br i1 %i.o, label %.lr.ph140, label %._crit_edge

.lr.ph140:                                        ; preds = %bb.b
  %i.p = sext i32 %7 to i64
  %invariant.op = add nsw i64 %i.p, -1
  %i.q = fneg double %i.j
  %i.r = fmul nnan double %i.j, %i.q
  %i.s = fdiv double %i.r, %i.k
  %i.t = add nuw nsw i64 %0, 15
  %i.u = and i64 %i.t, 9223372036854775792
  %i.v = add nuw nsw i64 %i.u, 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %bb.g
  %.0139 = phi i64 [ 0, %.lr.ph140 ], [ %i.av, %bb.g ] ; 8 uses
  %.0120138 = phi i64 [ 0, %.lr.ph140 ], [ %i.ay, %bb.g ] ; 2 uses
  %i.w = icmp slt i64 %.0139, %invariant.op
  %i.x = sub nsw i64 %0, %.0120138                ; 4 uses
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = sitofp i64 %i.x to double                ; 3 uses
  %i.z = call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.s) ; 2 uses
  %i.aa = fcmp ogt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = call double @sqrt(double noundef %i.z) #6
  %i.ac = fsub double %i.y, %i.ab
  %i.ad = fptosi double %i.ac to i64
  %i.ae = add nsw i64 %i.ad, 7
  %i.af = and i64 %i.ae, -8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0123 = phi i64 [ %i.af, %bb.e ], [ %i.x, %bb.d ]
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.0123, i64 16)
  %spec.select = call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.2125 = phi i64 [ %spec.select, %bb.f ], [ %i.x, %bb.c ] ; 2 uses
  %i.ag = sub nuw nsw i64 64, %.0139
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = sub nsw i64 %i.ai, %.2125
  %i.ak = sub nsw i64 63, %.0139
  %i.al = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !18
  %i.am = mul nuw nsw i64 %.0139, %i.v
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0139 ; 2 uses
  %i.ao = mul nuw nsw i64 %.0139, %0
  %spec.select133 = call i64 @llvm.smin.i64(i64 %i.am, i64 %i.ao)
  store i64 %spec.select133, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw [168 x i8], ptr %9, i64 %.0139 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store i32 3, ptr %i.aq, align 8, !tbaa !19
  store ptr @trmv_kernel, ptr %i.ap, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %8, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.al, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.an, ptr %i.at, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.av = add nuw nsw i64 %.0139, 1               ; 3 uses
  %i.aw = getelementptr inbounds nuw [168 x i8], ptr %9, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = add nsw i64 %.2125, %.0120138           ; 2 uses
  %i.az = icmp slt i64 %i.ay, %0
  br i1 %i.az, label %bb.c, label %.loopexit, !llvm.loop !27

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 16, !tbaa !18
  %i.ba = icmp sgt i64 %0, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.bb = zext i32 %7 to i64
  %i.bc = add nuw nsw i64 %0, 15
  %i.bd = and i64 %i.bc, 9223372036854775792
  %i.be = add nuw nsw i64 %i.bd, 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %blas_quickdivide.exit
  %i.bf = phi i64 [ 0, %.lr.ph ], [ %i.bv, %blas_quickdivide.exit ]
  %.1137 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %blas_quickdivide.exit ] ; 9 uses
  %.1121136 = phi i64 [ %0, %.lr.ph ], [ %i.cj, %blas_quickdivide.exit ] ; 3 uses
  %i.bg = add nuw i64 %.1121136, %i.bb
  %i.bh = xor i64 %.1137, -1
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = trunc i64 %.1137 to i32
  %i.bl = sub i32 %7, %i.bk                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = icmp ult i32 %i.bl, 2
  br i1 %i.bm, label %blas_quickdivide.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29
  %i.bq = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.bp, i32 %i.bj) #6, !srcloc !30
  %i.br = extractvalue { i32, i32 } %i.bq, 0
  store volatile i32 %i.br, ptr %i.a, align 4, !tbaa !29
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !29
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1137
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %bb.i, %bb.j
  %i.bs = phi i64 [ %.pre, %bb.j ], [ %i.bf, %bb.i ]
  %.0.i = phi i32 [ %.0..0..0..0..0..0..i, %bb.j ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = call i32 @llvm.umax.i32(i32 %.0.i, i32 4)
  %spec.store.select1 = zext i32 %i.bt to i64
  %spec.select134 = call i64 @llvm.umin.i64(i64 %.1121136, i64 %spec.store.select1) ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1137
  %i.bv = add nsw i64 %spec.select134, %i.bs      ; 2 uses
  %i.bw = add nuw nsw i64 %.1137, 1               ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !18
  %i.by = mul nuw nsw i64 %.1137, %i.be
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.1137 ; 2 uses
  %i.ca = mul nuw nsw i64 %.1137, %0
  %storemerge = call i64 @llvm.smin.i64(i64 %i.by, i64 %i.ca)
  store i64 %storemerge, ptr %i.bz, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw [168 x i8], ptr %9, i64 %.1137 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 160
  store i32 3, ptr %i.cc, align 8, !tbaa !19
  store ptr @trmv_kernel, ptr %i.cb, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %8, ptr %i.cd, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %i.bu, ptr %i.ce, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr %i.bz, ptr %i.cf, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ch = getelementptr inbounds nuw [168 x i8], ptr %9, i64 %i.bw
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = sub nsw i64 %.1121136, %spec.select134  ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %bb.i, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %blas_quickdivide.exit, %bb.g
  %.2 = phi i64 [ %i.av, %bb.g ], [ %i.bw, %blas_quickdivide.exit ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %i.cl, align 16, !tbaa !32
  %i.cm = add nsw i64 %0, 255
  %i.cn = and i64 %i.cm, -256
  %i.co = or disjoint i64 %i.cn, 16
  %i.cp = mul nsw i64 %.2, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !33
  %i.cs = getelementptr [168 x i8], ptr %9, i64 %.2
  %i.ct = getelementptr i8, ptr %i.cs, i64 -104
  store ptr null, ptr %i.ct, align 8, !tbaa !26
  %i.cu = call i32 @exec_blas(i64 noundef %.2, ptr noundef nonnull %9) #6 ; 0 uses
  %i.cv = icmp samesign ugt i64 %.2, 1
  br i1 %i.cv, label %.lr.ph143, label %._crit_edge

.lr.ph143:                                        ; preds = %.loopexit, %.lr.ph143
  %.2122142 = phi i64 [ %i.da, %.lr.ph143 ], [ 1, %.loopexit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.2122142
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !18
  %i.cy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.cx
  %i.cz = call i32 @daxpy_k(i64 noundef %0, i64 noundef 0, i64 noundef 0, double noundef 1.000000e+00, ptr noundef %i.cy, i64 noundef 1, ptr noundef %6, i64 noundef 1, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  %i.da = add nuw i64 %.2122142, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %.2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph143, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph143, %bb.b, %bb.h, %.loopexit
  %i.db = call i32 @dcopy_k(i64 noundef %0, ptr noundef %6, i64 noundef 1, ptr noundef %4, i64 noundef %5) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @trmv_kernel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i64 %5) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = mul nsw i64 %i.m, %i.j
  %i.p = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.052 = phi ptr [ %i.p, %bb.b ], [ %i.a, %bb.a ]
  %.049 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.048.in = phi ptr [ %i.n, %bb.b ], [ %i.h, %bb.a ]
  %.048 = load i64, ptr %.048.in, align 8, !tbaa !18 ; 2 uses
  %.not57 = icmp eq i64 %i.l, 1
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !8
  %i.r = tail call i32 @dcopy_k(i64 noundef %i.q, ptr noundef %i.c, i64 noundef %i.l, ptr noundef %4, i64 noundef 1) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.051 = phi ptr [ %4, %bb.d ], [ %i.c, %bb.c ]  ; 2 uses
  %.not58 = icmp eq ptr %2, null
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %2, align 8, !tbaa !18
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.s
  br label %bb.g
end_hunk_0
