Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_thread_tn?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dgemm_thread_tn:bb.a

bb.z:                                             ; preds = %.lr.ph195.i
  %i.ib = and i64 %i.hy, 4294967295
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !17
  %i.ie = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.id, i32 %i.hx) #11, !srcloc !18
  %i.if = extractvalue { i32, i32 } %i.ie, 0
  store volatile i32 %i.if, ptr %i.a, align 4, !tbaa !17
  %.0..0..0..0..0..0..0..0..i176.i = load volatile i32, ptr %i.a, align 4, !tbaa !17
  br label %blas_quickdivide.exit178.i

blas_quickdivide.exit178.i:                       ; preds = %bb.z, %.lr.ph195.i
  %.0.i177.i = phi i32 [ %.0..0..0..0..0..0..0..0..i176.i, %bb.z ], [ %i.hx, %.lr.ph195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select171.i = call i32 @llvm.umax.i32(i32 %.0.i177.i, i32 8) ; 3 uses
  %i.ig = trunc i64 %.0154192.i to i32
  %i.ih = icmp slt i32 %i.ig, 8
  %i.ii = icmp slt i32 %spec.select171.i, 9
  %or.cond.i179.i = or i1 %i.ih, %i.ii
  %i.ij = add nuw nsw i32 %spec.select171.i, 7
  %i.ik = and i32 %i.ij, 2147483640
  %.0.i180.i = select i1 %or.cond.i179.i, i32 %spec.select171.i, i32 %i.ik
  %i.il = sext i32 %.0.i180.i to i64              ; 2 uses
  %i.im = sub nsw i64 %.0154192.i, %i.il          ; 2 uses
  %i.in = icmp slt i64 %i.im, 0
  %.2158.i = select i1 %i.in, i64 %.0154192.i, i64 %i.il
  %.1155.i = call i64 @llvm.smax.i64(i64 %i.im, i64 0)
  %i.io = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.2194.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !13
  %i.iq = add nsw i64 %.2158.i, %i.ip
  %i.ir = add nsw i64 %.2194.i, 1                 ; 3 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ir
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !13
  %i.it = add nuw nsw i64 %.2153193.i, 1          ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.it, %.3
  br i1 %exitcond217.not.i, label %._crit_edge196.i, label %.lr.ph195.i, !llvm.loop !47

._crit_edge196.i:                                 ; preds = %blas_quickdivide.exit178.i, %blas_quickdivide.exit175.i
  %.2.lcssa.i = phi i64 [ %.1200.i, %blas_quickdivide.exit175.i ], [ %i.ir, %blas_quickdivide.exit178.i ] ; 4 uses
  %i.iu = add nuw nsw i64 %.0148198.i, 1          ; 2 uses
  %exitcond218.not.i = icmp eq i64 %i.iu, %.288
  br i1 %exitcond218.not.i, label %.preheader183.i, label %.lr.ph202.i, !llvm.loop !48

vec.epilog.scalar.ph152:                          ; preds = %vec.epilog.scalar.ph152.preheader, %vec.epilog.scalar.ph152
  %.1149204.i = phi i64 [ %i.iv, %vec.epilog.scalar.ph152 ], [ %.1149204.i.ph, %vec.epilog.scalar.ph152.preheader ]
  %i.iv = add nsw i64 %.1149204.i, 1              ; 3 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.iv
  store i64 %.pre.i, ptr %i.iw, align 8, !tbaa !13
  %exitcond219.not.i = icmp eq i64 %i.iv, 64
  br i1 %exitcond219.not.i, label %.preheader181.i.preheader, label %vec.epilog.scalar.ph152, !llvm.loop !49

.preheader181.i.preheader:                        ; preds = %vec.epilog.scalar.ph152, %middle.block148, %vec.epilog.middle.block162, %.preheader183.i
  br label %.preheader181.i

.preheader181.i:                                  ; preds = %.preheader181.i.preheader, %._crit_edge208.i
  %.3209.i = phi i64 [ %i.jz, %._crit_edge208.i ], [ 0, %.preheader181.i.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8192 x i8], ptr %i.br, i64 %.3209.i ; 9 uses
  br i1 %i.go, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader181.i, %.preheader.i
  %.2150207.i = phi i64 [ %i.jv, %.preheader.i ], [ 0, %.preheader181.i ] ; 9 uses
  %niter174 = phi i64 [ %niter174.next.7, %.preheader.i ], [ 0, %.preheader181.i ]
  %i.iy = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  store atomic i64 0, ptr %i.iy seq_cst, align 8, !tbaa !50
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  store atomic i64 0, ptr %i.iz seq_cst, align 8, !tbaa !50
  %i.ja = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  store atomic i64 0, ptr %i.jb seq_cst, align 8, !tbaa !50
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 192
  store atomic i64 0, ptr %i.jc seq_cst, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 256
  store atomic i64 0, ptr %i.je seq_cst, align 8, !tbaa !50
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 320
  store atomic i64 0, ptr %i.jf seq_cst, align 8, !tbaa !50
  %i.jg = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 384
  store atomic i64 0, ptr %i.jh seq_cst, align 8, !tbaa !50
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 448
  store atomic i64 0, ptr %i.ji seq_cst, align 8, !tbaa !50
  %i.jj = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 512
  store atomic i64 0, ptr %i.jk seq_cst, align 8, !tbaa !50
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 576
  store atomic i64 0, ptr %i.jl seq_cst, align 8, !tbaa !50
  %i.jm = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 640
  store atomic i64 0, ptr %i.jn seq_cst, align 8, !tbaa !50
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 704
  store atomic i64 0, ptr %i.jo seq_cst, align 8, !tbaa !50
  %i.jp = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 768
  store atomic i64 0, ptr %i.jq seq_cst, align 8, !tbaa !50
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 832
  store atomic i64 0, ptr %i.jr seq_cst, align 8, !tbaa !50
  %i.js = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 896
  store atomic i64 0, ptr %i.jt seq_cst, align 8, !tbaa !50
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 960
  store atomic i64 0, ptr %i.ju seq_cst, align 8, !tbaa !50
  %i.jv = add nuw nsw i64 %.2150207.i, 8          ; 2 uses
  %niter174.next.7 = add i64 %niter174, 8         ; 2 uses
  %niter174.ncmp.7 = icmp eq i64 %niter174.next.7, %unroll_iter173
  br i1 %niter174.ncmp.7, label %._crit_edge208.i.unr-lcssa, label %.preheader.i, !llvm.loop !51

._crit_edge208.i.unr-lcssa:                       ; preds = %.preheader.i
  br i1 %lcmp.mod171.not, label %._crit_edge208.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge208.i.unr-lcssa, %.preheader181.i
  %.2150207.i.epil.init = phi i64 [ 0, %.preheader181.i ], [ %i.jv, %._crit_edge208.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod172)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.2150207.i.epil = phi i64 [ %.2150207.i.epil.init, %.preheader.i.epil.preheader ], [ %i.jy, %.preheader.i.epil ] ; 2 uses
  %epil.iter170 = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter170.next, %.preheader.i.epil ]
  %i.jw = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2150207.i.epil ; 2 uses
  store atomic i64 0, ptr %i.jw seq_cst, align 8, !tbaa !50
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  store atomic i64 0, ptr %i.jx seq_cst, align 8, !tbaa !50
  %i.jy = add nuw nsw i64 %.2150207.i.epil, 1
  %epil.iter170.next = add i64 %epil.iter170, 1   ; 2 uses
  %epil.iter170.cmp.not = icmp eq i64 %epil.iter170.next, %xtraiter169
  br i1 %epil.iter170.cmp.not, label %._crit_edge208.i, label %.preheader.i.epil, !llvm.loop !52

._crit_edge208.i:                                 ; preds = %.preheader.i.epil, %._crit_edge208.i.unr-lcssa
  %i.jz = add nuw nsw i64 %.3209.i, 1             ; 2 uses
  %exitcond221.not.i = icmp eq i64 %i.jz, %i.bn
  br i1 %exitcond221.not.i, label %._crit_edge210.i, label %.preheader181.i, !llvm.loop !53

._crit_edge210.i:                                 ; preds = %._crit_edge208.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !54
  %i.ka = call i32 @exec_blas(i64 noundef %i.bn, ptr noundef nonnull %7) #11 ; 0 uses
  %i.kb = add nsw i64 %.0146211.i, %i.gl          ; 2 uses
  %i.kc = icmp slt i64 %i.kb, %.0140.i
  br i1 %i.kc, label %bb.x, label %gemm_driver.exit, !llvm.loop !55

gemm_driver.exit:                                 ; preds = %._crit_edge210.i, %bb.w
  call void @free(ptr noundef %i.br) #11
  call void @blas_level3_thread_leave() #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.aa

bb.aa:                                            ; preds = %gemm_driver.exit, %bb.o
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemm_tn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @blas_level3_thread_enter() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @inner_thread(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61   ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !12
  %i.x = icmp sgt i64 %i.w, -1                    ; 6 uses
  %spec.select = select i1 %i.x, i64 2, i64 1     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 -8
  %.0321.in = select i1 %.not, ptr %i.y, ptr %i.z
  %.0321 = load i64, ptr %.0321.in, align 8, !tbaa !13 ; 6 uses
  %i.aa = trunc i64 %5 to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = and i64 %.0321, 4294967294
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %blas_quickdivide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = and i64 %.0321, 4294967295
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ag = tail call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.af, i32 %i.aa) #11, !srcloc !18
  %i.ah = extractvalue { i32, i32 } %i.ag, 0
  store volatile i32 %i.ah, ptr %i.a, align 4, !tbaa !17
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !17
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.0..0..0..0..0..0..i, %bb.b ], [ %i.aa, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = zext i32 %.0.i to i64                   ; 3 uses
  %i.aj = mul nsw i64 %.0321, %i.ai               ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %blas_quickdivide.exit
  %i.al = sub nsw i64 %5, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %blas_quickdivide.exit
  %.0319.in = phi ptr [ %i.ao, %bb.c ], [ %i.ak, %blas_quickdivide.exit ]
  %.0304 = phi i64 [ %i.an, %bb.c ], [ 0, %blas_quickdivide.exit ] ; 6 uses
  %.0319 = load i64, ptr %.0319.in, align 8, !tbaa !13 ; 5 uses
  %.not341 = icmp eq ptr %2, null
  br i1 %.not341, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0322.in = phi ptr [ %i.ar, %bb.e ], [ %i.v, %bb.d ]
  %.0320 = phi i64 [ %i.aq, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %.0322 = load i64, ptr %.0322.in, align 8, !tbaa !13 ; 4 uses
  %.not342 = icmp eq ptr %i.u, null
  br i1 %.not342, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load double, ptr %i.u, align 8, !tbaa !64 ; 2 uses
  %i.at = fcmp une double %i.as, 1.000000e+00
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = sub nsw i64 %.0319, %.0304
  %i.av = add nuw nsw i64 %i.ai, 1
  %i.aw = mul nsw i64 %i.av, %.0321
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !13
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aj
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bb = sub nsw i64 %i.ay, %i.ba
  %i.bc = mul nsw i64 %i.ba, %i.q
  %i.bd = getelementptr [8 x i8], ptr %i.k, i64 %.0304
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = tail call i32 @dgemm_beta(i64 noundef %i.au, i64 noundef %i.bb, i64 noundef 0, double noundef %i.as, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.q) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bg = icmp eq i64 %i.f, 0
  %i.bh = icmp eq ptr %i.s, null
  %or.cond = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load double, ptr %i.s, align 8, !tbaa !64
  %i.bj = fcmp oeq double %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = xor i64 %.0320, -1
  %i.bl = add i64 %spec.select, %i.bk
  %i.bm = add i64 %i.bl, %.0322                   ; 2 uses
  %i.bn = sdiv i64 %i.bm, 2                       ; 2 uses
  %6 = select i1 %i.x, i64 %i.bn, i64 %i.bm
  store ptr %4, ptr %i.b, align 16, !tbaa !66
  br i1 %i.x, label %.lr.ph, label %.preheader368

.lr.ph:                                           ; preds = %bb.k
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = sdiv i64 %i.bo, 2
  %.idx356 = mul nsw i64 %i.bp, 6144
  %i.bq = getelementptr inbounds i8, ptr %4, i64 %.idx356
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !66
  br label %.preheader368

.preheader368:                                    ; preds = %.lr.ph, %bb.k
  %i.bs = icmp sgt i64 %i.f, 0
  br i1 %i.bs, label %.lr.ph413, label %.preheader363

.lr.ph413:                                        ; preds = %.preheader368
  %i.bt = sub nsw i64 %.0319, %.0304              ; 5 uses
  %i.bu = icmp sgt i64 %i.bt, 383
  %i.bv = icmp sgt i64 %i.bt, 192
  %i.bw = lshr i64 %i.bt, 1
  %i.bx = add nuw nsw i64 %i.bw, 15
  %i.by = and i64 %i.bx, 9223372036854775792
  %i.bz = mul nsw i64 %.0304, %i.m
  %i.ca = icmp slt i64 %.0320, %.0322
  %i.cb = getelementptr inbounds [8192 x i8], ptr %i.d, i64 %5 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.k, i64 %.0304 ; 2 uses
  %i.cd = add nuw nsw i64 %i.ai, 1
  %i.ce = mul nsw i64 %i.cd, %.0321               ; 4 uses
  %i.cf = icmp sgt i64 %.0321, 0
  %i.cg = add nsw i64 %spec.select, -1            ; 3 uses
  %invariant.gep395 = getelementptr [128 x i8], ptr %i.d, i64 %5 ; 3 uses
  %.mux = select i1 %i.bu, i64 192, i64 %i.by
  br label %bb.l

.preheader363:                                    ; preds = %._crit_edge411, %.preheader368
  %i.ch = load i64, ptr %i.y, align 8, !tbaa !14
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.preheader362.lr.ph, label %._crit_edge419

.preheader362.lr.ph:                              ; preds = %.preheader363
  %i.cj = getelementptr inbounds [8192 x i8], ptr %i.d, i64 %5
  br label %.preheader362

bb.l:                                             ; preds = %.lr.ph413, %._crit_edge411
  %.0312412 = phi i64 [ 0, %.lr.ph413 ], [ %i.hq, %._crit_edge411 ] ; 4 uses
  %i.ck = sub nsw i64 %i.f, %.0312412             ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 767
  br i1 %i.cl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = icmp sgt i64 %i.ck, 384
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = add nuw nsw i64 %i.ck, 1
  %i.co = lshr i64 %i.cn, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.0305 = phi i64 [ %i.ck, %bb.m ], [ %i.co, %bb.n ], [ 384, %bb.l ] ; 10 uses
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = load i64, ptr %i.y, align 8, !tbaa !14
  %.not420 = icmp eq i64 %i.cp, 1
  %i.cq = select i1 %.not420, i64 0, i64 %.0305
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0306 = phi i64 [ %i.bt, %bb.p ], [ %.mux, %bb.o ] ; 5 uses
  %.0298 = phi i64 [ %i.cq, %bb.p ], [ %.0305, %bb.o ]
  %i.cr = getelementptr [8 x i8], ptr %i.g, i64 %.0312412 ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %i.bz
  %i.ct = tail call i32 @dgemm_incopy(i64 noundef %.0305, i64 noundef %.0306, ptr noundef %i.cs, i64 noundef %i.m, ptr noundef %3) #11 ; 0 uses
  br i1 %i.ca, label %.preheader366.lr.ph, label %.preheader367

.preheader366.lr.ph:                              ; preds = %bb.q
  %i.cu = getelementptr [8 x i8], ptr %i.i, i64 %.0312412
  br label %.preheader366

.preheader367:                                    ; preds = %._crit_edge382, %bb.q
  %i.cv = icmp eq i64 %i.bt, %.0306               ; 2 uses
  br label %bb.t

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge382
  %.0309386 = phi i64 [ 0, %.preheader366.lr.ph ], [ %i.ea, %._crit_edge382 ] ; 5 uses
  %.0313385 = phi i64 [ %.0320, %.preheader366.lr.ph ], [ %i.dd, %._crit_edge382 ] ; 4 uses
  %i.cw = load i64, ptr %i.y, align 8, !tbaa !14
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.preheader365.lr.ph, label %._crit_edge374

.preheader365.lr.ph:                              ; preds = %.preheader366
  %.idx354 = shl nsw i64 %.0309386, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx354
  br label %.preheader365

.preheader365:                                    ; preds = %.preheader365.lr.ph, %._crit_edge
  %.1301373 = phi i64 [ 0, %.preheader365.lr.ph ], [ %i.da, %._crit_edge ] ; 2 uses
  %gep = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep, i64 %.1301373 ; 2 uses
  %i.cy = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !50
  %.not355371 = icmp eq i64 %i.cy, 0
  br i1 %.not355371, label %._crit_edge, label %.lr.ph372

.lr.ph372:                                        ; preds = %.preheader365, %.lr.ph372
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !68
  %i.cz = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !50
  %.not355 = icmp eq i64 %i.cz, 0
  br i1 %.not355, label %._crit_edge, label %.lr.ph372, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph372, %.preheader365
  %i.da = add nuw nsw i64 %.1301373, 1            ; 2 uses
  %i.db = load i64, ptr %i.y, align 8, !tbaa !14
  %i.dc = icmp slt i64 %i.da, %i.db
  br i1 %i.dc, label %.preheader365, label %._crit_edge374, !llvm.loop !70

._crit_edge374:                                   ; preds = %._crit_edge, %.preheader366
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !71
  %i.dd = add nsw i64 %.0313385, %6               ; 3 uses
  %i.de = tail call i64 @llvm.smin.i64(i64 %.0322, i64 %i.dd) ; 3 uses
  %i.df = icmp slt i64 %.0313385, %i.de
  br i1 %i.df, label %.lr.ph377, label %._crit_edge378

.lr.ph377:                                        ; preds = %._crit_edge374
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0309386
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !66
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph377, %bb.r
  %.0308375 = phi i64 [ %.0313385, %.lr.ph377 ], [ %i.dt, %bb.r ] ; 5 uses
  %i.di = sub nsw i64 %i.de, %.0308375
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.di, i64 12) ; 3 uses
  %i.dj = mul nsw i64 %.0308375, %i.o
  %i.dk = getelementptr [8 x i8], ptr %i.cu, i64 %i.dj
  %i.dl = sub nsw i64 %.0308375, %.0313385
  %i.dm = mul i64 %.0298, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm ; 2 uses
  %i.do = tail call i32 @dgemm_oncopy(i64 noundef %.0305, i64 noundef %spec.store.select, ptr noundef %i.dk, i64 noundef %i.o, ptr noundef %i.dn) #11 ; 0 uses
  %i.dp = load double, ptr %i.s, align 8, !tbaa !64
  %i.dq = mul nsw i64 %.0308375, %i.q
  %i.dr = getelementptr [8 x i8], ptr %i.cc, i64 %i.dq
  %i.ds = tail call i32 @dgemm_kernel(i64 noundef %.0306, i64 noundef %spec.store.select, i64 noundef %.0305, double noundef %i.dp, ptr noundef %3, ptr noundef %i.dn, ptr noundef %i.dr, i64 noundef %i.q) #11 ; 0 uses
  %i.dt = add nsw i64 %spec.store.select, %.0308375 ; 2 uses
  %i.du = icmp slt i64 %i.dt, %i.de
  br i1 %i.du, label %bb.r, label %._crit_edge378, !llvm.loop !72

._crit_edge378:                                   ; preds = %bb.r, %._crit_edge374
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !73
  br i1 %i.cf, label %.lr.ph381, label %._crit_edge382

.lr.ph381:                                        ; preds = %._crit_edge378
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0309386
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !66
  %i.dx = ptrtoint ptr %i.dw to i64
  %.idx353 = shl nsw i64 %.0309386, 6
  %invariant.gep383 = getelementptr i8, ptr %i.cb, i64 %.idx353
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph381, %bb.s
  %.2302379 = phi i64 [ %i.aj, %.lr.ph381 ], [ %i.dy, %bb.s ] ; 2 uses
  %gep384 = getelementptr [128 x i8], ptr %invariant.gep383, i64 %.2302379
  store atomic i64 %i.dx, ptr %gep384 seq_cst, align 8, !tbaa !50
  %i.dy = add nuw nsw i64 %.2302379, 1            ; 2 uses
  %i.dz = icmp slt i64 %i.dy, %i.ce
  br i1 %i.dz, label %bb.s, label %._crit_edge382, !llvm.loop !74

._crit_edge382:                                   ; preds = %bb.s, %._crit_edge378
  %i.ea = add nuw nsw i64 %.0309386, 1
  %i.eb = icmp slt i64 %i.dd, %.0322
  br i1 %i.eb, label %.preheader366, label %.preheader367, !llvm.loop !75

bb.t:                                             ; preds = %.preheader367, %._crit_edge394
  %.0299 = phi i64 [ %spec.select358, %._crit_edge394 ], [ %5, %.preheader367 ]
  %i.ec = add nsw i64 %.0299, 1                   ; 2 uses
  %.not344 = icmp slt i64 %i.ec, %i.ce
  %spec.select358 = select i1 %.not344, i64 %i.ec, i64 %i.aj ; 5 uses
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %spec.select358 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8      ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !13 ; 2 uses
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !13 ; 4 uses
  %i.eh = add i64 %i.cg, %i.ef
  %i.ei = sub i64 %i.eh, %i.eg                    ; 2 uses
  %i.ej = sdiv i64 %i.ei, 2
  %7 = select i1 %i.x, i64 %i.ej, i64 %i.ei       ; 3 uses
  %i.ek = icmp slt i64 %i.eg, %i.ef
  br i1 %i.ek, label %.lr.ph393, label %._crit_edge394

.lr.ph393:                                        ; preds = %bb.t
  %.not350 = icmp eq i64 %spec.select358, %5
  %gep396 = getelementptr [8192 x i8], ptr %invariant.gep395, i64 %spec.select358 ; 2 uses
  br i1 %.not350, label %.lr.ph393.split.us, label %.preheader364

.lr.ph393.split.us:                               ; preds = %.lr.ph393
  br i1 %i.cv, label %.lr.ph393.split.us.split.us, label %._crit_edge394

.lr.ph393.split.us.split.us:                      ; preds = %.lr.ph393.split.us, %.lr.ph393.split.us.split.us
  %.1310391.us.us = phi i64 [ %i.eo, %.lr.ph393.split.us.split.us ], [ 0, %.lr.ph393.split.us ] ; 2 uses
  %.1314390.us.us = phi i64 [ %i.en, %.lr.ph393.split.us.split.us ], [ %i.eg, %.lr.ph393.split.us ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !76
  %.idx352.us.us = shl nsw i64 %.1310391.us.us, 6
  %i.el = getelementptr inbounds nuw i8, ptr %gep396, i64 %.idx352.us.us
  %i.em = atomicrmw xchg ptr %i.el, i64 0 seq_cst, align 8 ; 0 uses
  %i.en = add nsw i64 %.1314390.us.us, %7         ; 2 uses
  %i.eo = add nuw nsw i64 %.1310391.us.us, 1
  %i.ep = load i64, ptr %i.ee, align 8, !tbaa !13
  %i.eq = icmp slt i64 %i.en, %i.ep
  br i1 %i.eq, label %.lr.ph393.split.us.split.us, label %._crit_edge394, !llvm.loop !77

.preheader364:                                    ; preds = %.lr.ph393, %bb.v
  %.1310391 = phi i64 [ %i.fg, %bb.v ], [ 0, %.lr.ph393 ] ; 2 uses
  %.1314390 = phi i64 [ %i.ff, %bb.v ], [ %i.eg, %.lr.ph393 ] ; 3 uses
  %.idx351 = shl nuw nsw i64 %.1310391, 6
  %i.er = getelementptr inbounds nuw i8, ptr %gep396, i64 %.idx351 ; 4 uses
  %i.es = load atomic i64, ptr %i.er seq_cst, align 8, !tbaa !50
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.lr.ph387, label %._crit_edge388

.lr.ph387:                                        ; preds = %.preheader364, %.lr.ph387
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !78
  %i.eu = load atomic i64, ptr %i.er seq_cst, align 8, !tbaa !50
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph387, label %._crit_edge388, !llvm.loop !79

._crit_edge388:                                   ; preds = %.lr.ph387, %.preheader364
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !80
  %i.ew = load i64, ptr %i.ee, align 8, !tbaa !13
  %i.ex = sub nsw i64 %i.ew, %.1314390
  %. = tail call i64 @llvm.smin.i64(i64 %i.ex, i64 %7)
  %i.ey = load double, ptr %i.s, align 8, !tbaa !64
  %i.ez = load atomic i64, ptr %i.er seq_cst, align 8, !tbaa !50
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = mul nsw i64 %.1314390, %i.q
  %i.fc = getelementptr [8 x i8], ptr %i.cc, i64 %i.fb
  %i.fd = tail call i32 @dgemm_kernel(i64 noundef %.0306, i64 noundef %., i64 noundef %.0305, double noundef %i.ey, ptr noundef %3, ptr noundef %i.fa, ptr noundef %i.fc, i64 noundef %i.q) #11 ; 0 uses
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge388
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !76
  %i.fe = atomicrmw xchg ptr %i.er, i64 0 seq_cst, align 8 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge388, %bb.u
  %i.ff = add nsw i64 %.1314390, %7               ; 2 uses
  %i.fg = add nuw nsw i64 %.1310391, 1
  %i.fh = load i64, ptr %i.ee, align 8, !tbaa !13
  %i.fi = icmp slt i64 %i.ff, %i.fh
  br i1 %i.fi, label %.preheader364, label %._crit_edge394, !llvm.loop !77

._crit_edge394:                                   ; preds = %bb.v, %.lr.ph393.split.us.split.us, %.lr.ph393.split.us, %bb.t
  %.not345 = icmp eq i64 %spec.select358, %5
  br i1 %.not345, label %bb.w, label %bb.t, !llvm.loop !81

bb.w:                                             ; preds = %._crit_edge394
  %i.fj = add nsw i64 %.0306, %.0304              ; 2 uses
  %i.fk = icmp slt i64 %i.fj, %.0319
  br i1 %i.fk, label %.lr.ph410, label %._crit_edge411

.lr.ph410:                                        ; preds = %bb.w, %.split407.us
  %.0317408 = phi i64 [ %i.fw, %.split407.us ], [ %i.fj, %bb.w ] ; 4 uses
  %i.fl = sub nsw i64 %.0319, %.0317408           ; 4 uses
  %i.fm = icmp sgt i64 %i.fl, 383
  br i1 %i.fm, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph410
  %i.fn = icmp sgt i64 %i.fl, 192
  br i1 %i.fn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fo = add nuw nsw i64 %i.fl, 1
  %i.fp = lshr i64 %i.fo, 1
  %i.fq = add nuw nsw i64 %i.fp, 15
  %i.fr = and i64 %i.fq, 9223372036854775792
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph410, %bb.x, %bb.y
  %.1307 = phi i64 [ %i.fl, %bb.x ], [ %i.fr, %bb.y ], [ 192, %.lr.ph410 ] ; 4 uses
  %i.fs = mul nsw i64 %.0317408, %i.m
  %i.ft = getelementptr [8 x i8], ptr %i.cr, i64 %i.fs
  %i.fu = tail call i32 @dgemm_incopy(i64 noundef %.0305, i64 noundef %.1307, ptr noundef %i.ft, i64 noundef %i.m, ptr noundef %3) #11 ; 0 uses
  %i.fv = getelementptr [8 x i8], ptr %i.k, i64 %.0317408 ; 2 uses
  %i.fw = add nsw i64 %.1307, %.0317408           ; 2 uses
  %.not349 = icmp slt i64 %i.fw, %.0319
  %.not349.fr = freeze i1 %.not349                ; 2 uses
  br i1 %.not349.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.z, %._crit_edge403.split.us.us
  %.2.us = phi i64 [ %spec.select360.us, %._crit_edge403.split.us.us ], [ %5, %bb.z ] ; 3 uses
  %i.fx = add nsw i64 %.2.us, 1                   ; 3 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fx ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !13 ; 3 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %2, i64 %.2.us
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !13 ; 3 uses
  %i.gc = add i64 %i.cg, %i.fz
  %i.gd = sub i64 %i.gc, %i.gb                    ; 2 uses
  %i.ge = sdiv i64 %i.gd, 2
  %8 = select i1 %i.x, i64 %i.ge, i64 %i.gd       ; 2 uses
  %i.gf = icmp slt i64 %i.gb, %i.fz
  br i1 %i.gf, label %.lr.ph402.us, label %._crit_edge403.split.us.us

._crit_edge403.split.us.us:                       ; preds = %bb.aa, %.split.us
  %.not346.us = icmp slt i64 %i.fx, %i.ce
  %spec.select360.us = select i1 %.not346.us, i64 %i.fx, i64 %i.aj ; 2 uses
  %.not347.us = icmp eq i64 %spec.select360.us, %5
  br i1 %.not347.us, label %.split407.us, label %.split.us, !llvm.loop !82

.lr.ph402.us:                                     ; preds = %.split.us
  %gep405.us = getelementptr [8192 x i8], ptr %invariant.gep395, i64 %.2.us
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph402.us
  %i.gg = phi i64 [ %i.fz, %.lr.ph402.us ], [ %i.gr, %bb.aa ]
  %.2311400.us.us = phi i64 [ 0, %.lr.ph402.us ], [ %i.gq, %bb.aa ] ; 2 uses
  %.2315399.us.us = phi i64 [ %i.gb, %.lr.ph402.us ], [ %i.gp, %bb.aa ] ; 3 uses
  %i.gh = sub nsw i64 %i.gg, %.2315399.us.us
  %.359.us.us = tail call i64 @llvm.smin.i64(i64 %i.gh, i64 %8)
  %i.gi = load double, ptr %i.s, align 8, !tbaa !64
  %.idx348.us.us = shl nuw nsw i64 %.2311400.us.us, 6
  %i.gj = getelementptr inbounds nuw i8, ptr %gep405.us, i64 %.idx348.us.us
  %i.gk = load atomic i64, ptr %i.gj seq_cst, align 8, !tbaa !50
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = mul nsw i64 %.2315399.us.us, %i.q
  %i.gn = getelementptr [8 x i8], ptr %i.fv, i64 %i.gm
  %i.go = tail call i32 @dgemm_kernel(i64 noundef %.1307, i64 noundef %.359.us.us, i64 noundef %.0305, double noundef %i.gi, ptr noundef %3, ptr noundef %i.gl, ptr noundef %i.gn, i64 noundef %i.q) #11 ; 0 uses
  %i.gp = add nsw i64 %.2315399.us.us, %8         ; 2 uses
  %i.gq = add nuw nsw i64 %.2311400.us.us, 1
  %i.gr = load i64, ptr %i.fy, align 8, !tbaa !13 ; 2 uses
  %i.gs = icmp slt i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.aa, label %._crit_edge403.split.us.us, !llvm.loop !83

.split:                                           ; preds = %bb.z, %._crit_edge403.split
  %.2 = phi i64 [ %spec.select360, %._crit_edge403.split ], [ %5, %bb.z ] ; 3 uses
  %i.gt = add nsw i64 %.2, 1                      ; 3 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gt ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !13 ; 3 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %2, i64 %.2
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !13 ; 3 uses
  %i.gy = add i64 %i.cg, %i.gv
  %i.gz = sub i64 %i.gy, %i.gx                    ; 2 uses
  %i.ha = sdiv i64 %i.gz, 2
  %9 = select i1 %i.x, i64 %i.ha, i64 %i.gz       ; 2 uses
  %i.hb = icmp slt i64 %i.gx, %i.gv
  br i1 %i.hb, label %.lr.ph402, label %._crit_edge403.split

.lr.ph402:                                        ; preds = %.split
  %gep405 = getelementptr [8192 x i8], ptr %invariant.gep395, i64 %.2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph402, %bb.ab
  %i.hc = phi i64 [ %i.gv, %.lr.ph402 ], [ %i.ho, %bb.ab ]
  %.2311400 = phi i64 [ 0, %.lr.ph402 ], [ %i.hn, %bb.ab ] ; 2 uses
  %.2315399 = phi i64 [ %i.gx, %.lr.ph402 ], [ %i.hm, %bb.ab ] ; 3 uses
  %i.hd = sub nsw i64 %i.hc, %.2315399
  %.359 = tail call i64 @llvm.smin.i64(i64 %i.hd, i64 %9)
  %i.he = load double, ptr %i.s, align 8, !tbaa !64
  %.idx348 = shl nuw nsw i64 %.2311400, 6
  %i.hf = getelementptr inbounds nuw i8, ptr %gep405, i64 %.idx348 ; 2 uses
  %i.hg = load atomic i64, ptr %i.hf seq_cst, align 8, !tbaa !50
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = mul nsw i64 %.2315399, %i.q
  %i.hj = getelementptr [8 x i8], ptr %i.fv, i64 %i.hi
  %i.hk = tail call i32 @dgemm_kernel(i64 noundef %.1307, i64 noundef %.359, i64 noundef %.0305, double noundef %i.he, ptr noundef %3, ptr noundef %i.hh, ptr noundef %i.hj, i64 noundef %i.q) #11 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !84
  %i.hl = atomicrmw xchg ptr %i.hf, i64 0 seq_cst, align 8 ; 0 uses
  %i.hm = add nsw i64 %.2315399, %9               ; 2 uses
  %i.hn = add nuw nsw i64 %.2311400, 1
  %i.ho = load i64, ptr %i.gu, align 8, !tbaa !13 ; 2 uses
  %i.hp = icmp slt i64 %i.hm, %i.ho
  br i1 %i.hp, label %bb.ab, label %._crit_edge403.split, !llvm.loop !83

._crit_edge403.split:                             ; preds = %bb.ab, %.split
  %.not346 = icmp slt i64 %i.gt, %i.ce
  %spec.select360 = select i1 %.not346, i64 %i.gt, i64 %i.aj ; 2 uses
  %.not347 = icmp eq i64 %spec.select360, %5
  br i1 %.not347, label %.split407.us, label %.split, !llvm.loop !82

.split407.us:                                     ; preds = %._crit_edge403.split, %._crit_edge403.split.us.us
  br i1 %.not349.fr, label %.lr.ph410, label %._crit_edge411, !llvm.loop !85

._crit_edge411:                                   ; preds = %.split407.us, %bb.w
  %i.hq = add nsw i64 %.0305, %.0312412           ; 2 uses
  %i.hr = icmp slt i64 %i.hq, %i.f
  br i1 %i.hr, label %bb.l, label %.preheader363, !llvm.loop !86

.preheader362:                                    ; preds = %.preheader362.lr.ph, %bb.ac
  %.3303418 = phi i64 [ 0, %.preheader362.lr.ph ], [ %i.hx, %bb.ac ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %.3303418
  br label %.preheader

.preheader:                                       ; preds = %.preheader362, %._crit_edge416
  %.3316417 = phi i64 [ 0, %.preheader362 ], [ %i.hw, %._crit_edge416 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.3316417, 6
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx ; 2 uses
  %i.hu = load atomic i64, ptr %i.ht seq_cst, align 8, !tbaa !50
  %.not343414 = icmp eq i64 %i.hu, 0
  br i1 %.not343414, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader, %.lr.ph415
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !87
  %i.hv = load atomic i64, ptr %i.ht seq_cst, align 8, !tbaa !50
  %.not343 = icmp eq i64 %i.hv, 0
  br i1 %.not343, label %._crit_edge416, label %.lr.ph415, !llvm.loop !88

._crit_edge416:                                   ; preds = %.lr.ph415, %.preheader
  %i.hw = add nuw nsw i64 %.3316417, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hw, %spec.select
  br i1 %exitcond.not, label %bb.ac, label %.preheader, !llvm.loop !89

bb.ac:                                            ; preds = %._crit_edge416
  %i.hx = add nuw nsw i64 %.3303418, 1            ; 2 uses
  %i.hy = load i64, ptr %i.y, align 8, !tbaa !14
  %i.hz = icmp slt i64 %i.hx, %i.hy
  br i1 %i.hz, label %.preheader362, label %._crit_edge419, !llvm.loop !90

._crit_edge419:                                   ; preds = %bb.ac, %.preheader363
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !91
  br label %bb.ad

bb.ad:                                            ; preds = %bb.j, %bb.i, %._crit_edge419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 0
}

declare i32 @exec_blas(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @blas_level3_thread_leave() local_unnamed_addr #3

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dgemm_incopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 48}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !5, i64 128}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 56}
!13 = !{!11, !11, i64 0}
!14 = !{!9, !11, i64 112}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!5, !5, i64 0}
!18 = !{i64 1068705}
!19 = distinct !{!19, !16}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!9, !10, i64 16}
!24 = !{!9, !10, i64 104}
!25 = distinct !{!25, !16, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !16, !26, !27}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16, !27, !26}
!32 = !{!33, !5, i64 160}
!33 = !{!"blas_queue", !10, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !34, i64 64, !6, i64 72, !6, i64 112, !5, i64 160, !5, i64 164}
!34 = !{!"p1 _ZTS10blas_queue", !10, i64 0}
!35 = !{!33, !10, i64 0}
!36 = !{!33, !10, i64 24}
!37 = !{!33, !10, i64 32}
!38 = !{!33, !10, i64 40}
!39 = !{!33, !34, i64 64}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!33, !10, i64 48}
!44 = !{!33, !10, i64 56}
!45 = distinct !{!45, !16, !26, !27}
!46 = distinct !{!46, !16, !26, !27}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16, !27, !26}
!50 = !{!6, !6, i64 0}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !16}
!54 = !{i64 2149635396}
!55 = distinct !{!55, !16}
!56 = !{!9, !11, i64 64}
!57 = !{!9, !10, i64 0}
!58 = !{!9, !10, i64 8}
!59 = !{!9, !11, i64 72}
!60 = !{!9, !11, i64 80}
!61 = !{!9, !11, i64 88}
!62 = !{!9, !10, i64 32}
!63 = !{!9, !10, i64 40}
!64 = !{!65, !65, i64 0}
!65 = !{!"double", !6, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 double", !10, i64 0}
!68 = !{i64 2149632836}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = !{i64 2149632901}
!72 = distinct !{!72, !16}
!73 = !{i64 2149633583}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = !{i64 2149634163}
!77 = distinct !{!77, !16}
!78 = !{i64 2149633639}
!79 = distinct !{!79, !16}
!80 = !{i64 2149633704}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = !{i64 2149634975}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = !{i64 2149635031}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = !{i64 2149635096}
end_hunk_0
