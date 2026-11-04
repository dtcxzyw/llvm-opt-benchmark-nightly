Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_thread_tn?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dgemm_thread_tn:bb.a
  %.0..0..0..0..0..0..0..0..i173.i = load volatile i32, ptr %i.b, align 4, !tbaa !15
  br label %blas_quickdivide.exit175.i

blas_quickdivide.exit175.i:                       ; preds = %bb.y, %.lr.ph202.i
  %.0.i174.i = phi i32 [ %.0..0..0..0..0..0..0..0..i173.i, %bb.y ], [ %i.hj, %.lr.ph202.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hs = zext i32 %.0.i174.i to i64              ; 2 uses
  %i.ht = sub nsw i64 %.1200.i, %i.hs
  br i1 %i.gn, label %.lr.ph195.i, label %._crit_edge196.i

.lr.ph195.i:                                      ; preds = %blas_quickdivide.exit175.i, %blas_quickdivide.exit178.i
  %.2150194.i = phi i64 [ %i.it, %blas_quickdivide.exit178.i ], [ 0, %blas_quickdivide.exit175.i ] ; 3 uses
  %.0151193.i = phi i64 [ %.1152.i, %blas_quickdivide.exit178.i ], [ %i.hs, %blas_quickdivide.exit175.i ] ; 4 uses
  %.2158192.i = phi i64 [ %i.ir, %blas_quickdivide.exit178.i ], [ %.1157198.i, %blas_quickdivide.exit175.i ] ; 2 uses
  %i.hu = xor i64 %.2150194.i, -1
  %i.hv = add nsw i64 %.386, %i.hu
  %i.hw = add i64 %i.hv, %.0151193.i
  %i.hx = trunc i64 %i.hw to i32                  ; 2 uses
  %i.hy = sub nuw nsw i64 %.386, %.2150194.i      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.hz = and i64 %i.hy, 4294967294
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %blas_quickdivide.exit178.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph195.i
  %i.ib = and i64 %i.hy, 4294967295
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !15
  %i.ie = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.id, i32 %i.hx) #11, !srcloc !16
  %i.if = extractvalue { i32, i32 } %i.ie, 0
  store volatile i32 %i.if, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..i176.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  br label %blas_quickdivide.exit178.i

blas_quickdivide.exit178.i:                       ; preds = %bb.z, %.lr.ph195.i
  %.0.i177.i = phi i32 [ %.0..0..0..0..0..0..0..0..i176.i, %bb.z ], [ %i.hx, %.lr.ph195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select171.i = call i32 @llvm.umax.i32(i32 %.0.i177.i, i32 8) ; 3 uses
  %i.ig = trunc i64 %.0151193.i to i32
  %i.ih = icmp slt i32 %i.ig, 8
  %i.ii = icmp slt i32 %spec.select171.i, 9
  %or.cond.i179.i = or i1 %i.ih, %i.ii
  %i.ij = add nuw nsw i32 %spec.select171.i, 7
  %i.ik = and i32 %i.ij, 2147483640
  %.0.i180.i = select i1 %or.cond.i179.i, i32 %spec.select171.i, i32 %i.ik
  %i.il = sext i32 %.0.i180.i to i64              ; 2 uses
  %i.im = sub nsw i64 %.0151193.i, %i.il          ; 2 uses
  %i.in = icmp slt i64 %i.im, 0
  %.2155.i = select i1 %i.in, i64 %.0151193.i, i64 %i.il
  %.1152.i = call i64 @llvm.smax.i64(i64 %i.im, i64 0)
  %i.io = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.2158192.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !12
  %i.iq = add nsw i64 %.2155.i, %i.ip
  %i.ir = add nsw i64 %.2158192.i, 1              ; 3 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ir
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !12
  %i.it = add nuw nsw i64 %.2150194.i, 1          ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.it, %.386
  br i1 %exitcond217.not.i, label %._crit_edge196.i, label %.lr.ph195.i, !llvm.loop !30

._crit_edge196.i:                                 ; preds = %blas_quickdivide.exit178.i, %blas_quickdivide.exit175.i
  %.2158.lcssa.i = phi i64 [ %.1157198.i, %blas_quickdivide.exit175.i ], [ %i.ir, %blas_quickdivide.exit178.i ] ; 4 uses
  %i.iu = add nuw nsw i64 %.0146199.i, 1          ; 2 uses
  %exitcond218.not.i = icmp eq i64 %i.iu, %.282
  br i1 %exitcond218.not.i, label %.preheader183.i, label %.lr.ph202.i, !llvm.loop !31

vec.epilog.scalar.ph151:                          ; preds = %vec.epilog.scalar.ph151.preheader, %vec.epilog.scalar.ph151
  %.1147204.i = phi i64 [ %i.iv, %vec.epilog.scalar.ph151 ], [ %.1147204.i.ph, %vec.epilog.scalar.ph151.preheader ]
  %i.iv = add nsw i64 %.1147204.i, 1              ; 3 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.iv
  store i64 %.pre.i, ptr %i.iw, align 8, !tbaa !12
  %exitcond219.not.i = icmp eq i64 %i.iv, 64
  br i1 %exitcond219.not.i, label %.preheader181.i.preheader, label %vec.epilog.scalar.ph151, !llvm.loop !32

.preheader181.i.preheader:                        ; preds = %vec.epilog.scalar.ph151, %middle.block147, %vec.epilog.middle.block161, %.preheader183.i
  br label %.preheader181.i

.preheader181.i:                                  ; preds = %.preheader181.i.preheader, %._crit_edge208.i
  %.3209.i = phi i64 [ %i.jz, %._crit_edge208.i ], [ 0, %.preheader181.i.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8192 x i8], ptr %i.br, i64 %.3209.i ; 9 uses
  br i1 %i.go, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader181.i, %.preheader.i
  %.2207.i = phi i64 [ %i.jv, %.preheader.i ], [ 0, %.preheader181.i ] ; 9 uses
  %niter173 = phi i64 [ %niter173.next.7, %.preheader.i ], [ 0, %.preheader181.i ]
  %i.iy = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  store atomic i64 0, ptr %i.iy seq_cst, align 8, !tbaa !19
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  store atomic i64 0, ptr %i.iz seq_cst, align 8, !tbaa !19
  %i.ja = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  store atomic i64 0, ptr %i.jb seq_cst, align 8, !tbaa !19
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 192
  store atomic i64 0, ptr %i.jc seq_cst, align 8, !tbaa !19
  %i.jd = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 256
  store atomic i64 0, ptr %i.je seq_cst, align 8, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 320
  store atomic i64 0, ptr %i.jf seq_cst, align 8, !tbaa !19
  %i.jg = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 384
  store atomic i64 0, ptr %i.jh seq_cst, align 8, !tbaa !19
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 448
  store atomic i64 0, ptr %i.ji seq_cst, align 8, !tbaa !19
  %i.jj = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 512
  store atomic i64 0, ptr %i.jk seq_cst, align 8, !tbaa !19
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 576
  store atomic i64 0, ptr %i.jl seq_cst, align 8, !tbaa !19
  %i.jm = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 640
  store atomic i64 0, ptr %i.jn seq_cst, align 8, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 704
  store atomic i64 0, ptr %i.jo seq_cst, align 8, !tbaa !19
  %i.jp = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 768
  store atomic i64 0, ptr %i.jq seq_cst, align 8, !tbaa !19
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 832
  store atomic i64 0, ptr %i.jr seq_cst, align 8, !tbaa !19
  %i.js = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 896
  store atomic i64 0, ptr %i.jt seq_cst, align 8, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 960
  store atomic i64 0, ptr %i.ju seq_cst, align 8, !tbaa !19
  %i.jv = add nuw nsw i64 %.2207.i, 8             ; 2 uses
  %niter173.next.7 = add i64 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i64 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %._crit_edge208.i.unr-lcssa, label %.preheader.i, !llvm.loop !33

._crit_edge208.i.unr-lcssa:                       ; preds = %.preheader.i
  br i1 %lcmp.mod170.not, label %._crit_edge208.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge208.i.unr-lcssa, %.preheader181.i
  %.2207.i.epil.init = phi i64 [ 0, %.preheader181.i ], [ %i.jv, %._crit_edge208.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.2207.i.epil = phi i64 [ %.2207.i.epil.init, %.preheader.i.epil.preheader ], [ %i.jy, %.preheader.i.epil ] ; 2 uses
  %epil.iter169 = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter169.next, %.preheader.i.epil ]
  %i.jw = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %.2207.i.epil ; 2 uses
  store atomic i64 0, ptr %i.jw seq_cst, align 8, !tbaa !19
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  store atomic i64 0, ptr %i.jx seq_cst, align 8, !tbaa !19
  %i.jy = add nuw nsw i64 %.2207.i.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %._crit_edge208.i, label %.preheader.i.epil, !llvm.loop !34

._crit_edge208.i:                                 ; preds = %.preheader.i.epil, %._crit_edge208.i.unr-lcssa
  %i.jz = add nuw nsw i64 %.3209.i, 1             ; 2 uses
  %exitcond221.not.i = icmp eq i64 %i.jz, %i.bn
  br i1 %exitcond221.not.i, label %._crit_edge210.i, label %.preheader181.i, !llvm.loop !35

._crit_edge210.i:                                 ; preds = %._crit_edge208.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !55
  %i.ka = call i32 @exec_blas(i64 noundef %i.bn, ptr noundef nonnull %7) #11 ; 0 uses
  %i.kb = add nsw i64 %.0144211.i, %i.gl          ; 2 uses
  %i.kc = icmp slt i64 %i.kb, %.0.i97
  br i1 %i.kc, label %bb.x, label %gemm_driver.exit, !llvm.loop !36

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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71   ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !76   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = icmp sgt i64 %i.v, -1                    ; 2 uses
  %spec.select = select i1 %i.w, i64 2, i64 1     ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %1, i64 -8
  %.0317.in = select i1 %.not, ptr %i.x, ptr %i.y
  %.0317 = load i64, ptr %.0317.in, align 8, !tbaa !12 ; 6 uses
  %i.z = trunc i64 %5 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = and i64 %.0317, 4294967294
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %blas_quickdivide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = and i64 %.0317, 4294967295
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15
  %i.af = tail call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.ae, i32 %i.z) #11, !srcloc !16
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  store volatile i32 %i.ag, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.0..0..0..0..0..0..i, %bb.b ], [ %i.z, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = zext i32 %.0.i to i64                   ; 3 uses
  %i.ai = mul nsw i64 %.0317, %i.ah               ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %blas_quickdivide.exit
  %i.ak = sub nsw i64 %5, %i.ai
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12
  %i.an = getelementptr i8, ptr %i.al, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %blas_quickdivide.exit
  %.0321 = phi i64 [ %i.am, %bb.c ], [ 0, %blas_quickdivide.exit ] ; 6 uses
  %.0320.in = phi ptr [ %i.an, %bb.c ], [ %i.aj, %blas_quickdivide.exit ]
  %.0320 = load i64, ptr %.0320.in, align 8, !tbaa !12 ; 5 uses
  %.not342 = icmp eq ptr %2, null
  br i1 %.not342, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !12
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0319 = phi i64 [ %i.ap, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %.0318.in = phi ptr [ %i.aq, %bb.e ], [ %i.u, %bb.d ]
  %.0318 = load i64, ptr %.0318.in, align 8, !tbaa !12 ; 4 uses
  %.not343 = icmp eq ptr %i.t, null
  br i1 %.not343, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load double, ptr %i.t, align 8, !tbaa !80 ; 2 uses
  %i.as = fcmp une double %i.ar, 1.000000e+00
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = sub nsw i64 %.0320, %.0321
  %i.au = add nuw nsw i64 %i.ah, 1
  %i.av = mul nsw i64 %i.au, %.0317
  %i.aw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !12
  %i.ay = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !12 ; 2 uses
  %i.ba = sub nsw i64 %i.ax, %i.az
  %i.bb = mul nsw i64 %i.az, %i.p
  %i.bc = getelementptr [8 x i8], ptr %i.j, i64 %.0321
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = tail call i32 @dgemm_beta(i64 noundef %i.at, i64 noundef %i.ba, i64 noundef 0, double noundef %i.ar, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %i.bd, i64 noundef %i.p) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bf = icmp eq i64 %i.e, 0
  %i.bg = icmp eq ptr %i.r, null
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load double, ptr %i.r, align 8, !tbaa !80
  %i.bi = fcmp oeq double %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = xor i64 %.0319, -1
  %i.bk = add i64 %spec.select, %i.bj
  %i.bl = add i64 %i.bk, %.0318
  %i.bm = sdiv i64 %i.bl, %spec.select            ; 2 uses
  br i1 %i.w, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.k
  %i.bn = add nsw i64 %i.bm, 1
  %i.bo = sdiv i64 %i.bn, 2
  %.idx357 = mul nsw i64 %i.bo, 6144
  %i.bp = getelementptr inbounds i8, ptr %4, i64 %.idx357
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  %.sroa.5.0 = phi ptr [ %i.bp, %.critedge ], [ undef, %bb.k ] ; 2 uses
  %i.bq = icmp sgt i64 %i.e, 0
  br i1 %i.bq, label %.lr.ph413, label %.preheader364

.lr.ph413:                                        ; preds = %bb.l
  %i.br = sub nsw i64 %.0320, %.0321              ; 5 uses
  %i.bs = icmp sgt i64 %i.br, 383
  %i.bt = icmp sgt i64 %i.br, 192
  %i.bu = lshr i64 %i.br, 1
  %i.bv = add nuw nsw i64 %i.bu, 15
  %i.bw = and i64 %i.bv, 9223372036854775792
  %i.bx = mul nsw i64 %.0321, %i.l
  %i.by = icmp slt i64 %.0319, %.0318
  %i.bz = getelementptr inbounds [8192 x i8], ptr %i.c, i64 %5 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.j, i64 %.0321 ; 2 uses
  %i.cb = add nuw nsw i64 %i.ah, 1
  %i.cc = mul nsw i64 %i.cb, %.0317               ; 4 uses
  %i.cd = icmp sgt i64 %.0317, 0
  %i.ce = add nsw i64 %spec.select, -1            ; 3 uses
  %invariant.gep394 = getelementptr [128 x i8], ptr %i.c, i64 %5 ; 3 uses
  %.mux = select i1 %i.bs, i64 192, i64 %i.bw
  br label %bb.m

.preheader364:                                    ; preds = %._crit_edge410, %bb.l
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !13
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.preheader363.lr.ph, label %._crit_edge419

.preheader363.lr.ph:                              ; preds = %.preheader364
  %i.ch = getelementptr inbounds [8192 x i8], ptr %i.c, i64 %5
  br label %.preheader363

bb.m:                                             ; preds = %.lr.ph413, %._crit_edge410
  %.0310411 = phi i64 [ 0, %.lr.ph413 ], [ %i.hk, %._crit_edge410 ] ; 4 uses
  %i.ci = sub nsw i64 %i.e, %.0310411             ; 4 uses
  %i.cj = icmp sgt i64 %i.ci, 767
  br i1 %i.cj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp sgt i64 %i.ci, 384
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = add nuw nsw i64 %i.ci, 1
  %i.cm = lshr i64 %i.cl, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.0303 = phi i64 [ %i.ci, %bb.n ], [ %i.cm, %bb.o ], [ 384, %bb.m ] ; 10 uses
  br i1 %i.bt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load i64, ptr %i.x, align 8, !tbaa !13
  %.not420 = icmp eq i64 %i.cn, 1
  %i.co = select i1 %.not420, i64 0, i64 %.0303
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0304 = phi i64 [ %i.br, %bb.q ], [ %.mux, %bb.p ] ; 5 uses
  %.0 = phi i64 [ %i.co, %bb.q ], [ %.0303, %bb.p ]
  %i.cp = getelementptr [8 x i8], ptr %i.f, i64 %.0310411 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.bx
  %i.cr = tail call i32 @dgemm_incopy(i64 noundef %.0303, i64 noundef %.0304, ptr noundef %i.cq, i64 noundef %i.l, ptr noundef %3) #11 ; 0 uses
  br i1 %i.by, label %.preheader367.lr.ph, label %.preheader368

.preheader367.lr.ph:                              ; preds = %bb.r
  %i.cs = getelementptr [8 x i8], ptr %i.h, i64 %.0310411
  br label %.preheader367

.preheader368:                                    ; preds = %._crit_edge381, %bb.r
  %i.ct = icmp eq i64 %i.br, %.0304               ; 2 uses
  br label %bb.u

.preheader367:                                    ; preds = %.preheader367.lr.ph, %._crit_edge381
  %.0307385 = phi i64 [ 0, %.preheader367.lr.ph ], [ %i.du, %._crit_edge381 ] ; 5 uses
  %.0311384 = phi i64 [ %.0319, %.preheader367.lr.ph ], [ %i.db, %._crit_edge381 ] ; 4 uses
  %i.cu = load i64, ptr %i.x, align 8, !tbaa !13
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %.preheader366.lr.ph, label %._crit_edge373

.preheader366.lr.ph:                              ; preds = %.preheader367
  %.idx355 = shl nuw nsw i64 %.0307385, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx355
  br label %.preheader366

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge
  %.1300372 = phi i64 [ 0, %.preheader366.lr.ph ], [ %i.cy, %._crit_edge ] ; 2 uses
  %gep = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep, i64 %.1300372 ; 2 uses
  %i.cw = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !19
  %.not356371 = icmp eq i64 %i.cw, 0
  br i1 %.not356371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader366, %.lr.ph
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !81
  %i.cx = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !19
  %.not356 = icmp eq i64 %i.cx, 0
  br i1 %.not356, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph, %.preheader366
  %i.cy = add nuw nsw i64 %.1300372, 1            ; 2 uses
  %i.cz = load i64, ptr %i.x, align 8, !tbaa !13
  %i.da = icmp slt i64 %i.cy, %i.cz
  br i1 %i.da, label %.preheader366, label %._crit_edge373, !llvm.loop !57

._crit_edge373:                                   ; preds = %._crit_edge, %.preheader367
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !82
  %i.db = add nsw i64 %.0311384, %i.bm            ; 3 uses
  %i.dc = tail call i64 @llvm.smin.i64(i64 %.0318, i64 %i.db) ; 3 uses
  %i.dd = icmp slt i64 %.0311384, %i.dc
  br i1 %i.dd, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %._crit_edge373
  %.sroa.idx424 = icmp eq i64 %.0307385, 1
  %.sroa.speculated = select i1 %.sroa.idx424, ptr %.sroa.5.0, ptr %4
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph376, %bb.s
  %.0306374 = phi i64 [ %.0311384, %.lr.ph376 ], [ %i.dp, %bb.s ] ; 5 uses
  %i.de = sub nsw i64 %i.dc, %.0306374
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.de, i64 12) ; 3 uses
  %i.df = mul nsw i64 %.0306374, %i.n
  %i.dg = getelementptr [8 x i8], ptr %i.cs, i64 %i.df
  %i.dh = sub nsw i64 %.0306374, %.0311384
  %i.di = mul i64 %.0, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sroa.speculated, i64 %i.di ; 2 uses
  %i.dk = tail call i32 @dgemm_oncopy(i64 noundef %.0303, i64 noundef %spec.store.select, ptr noundef %i.dg, i64 noundef %i.n, ptr noundef %i.dj) #11 ; 0 uses
  %i.dl = load double, ptr %i.r, align 8, !tbaa !80
  %i.dm = mul nsw i64 %.0306374, %i.p
  %i.dn = getelementptr [8 x i8], ptr %i.ca, i64 %i.dm
  %i.do = tail call i32 @dgemm_kernel(i64 noundef %.0304, i64 noundef %spec.store.select, i64 noundef %.0303, double noundef %i.dl, ptr noundef %3, ptr noundef %i.dj, ptr noundef %i.dn, i64 noundef %i.p) #11 ; 0 uses
  %i.dp = add nsw i64 %spec.store.select, %.0306374 ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.dc
  br i1 %i.dq, label %bb.s, label %._crit_edge377, !llvm.loop !58

._crit_edge377:                                   ; preds = %bb.s, %._crit_edge373
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !83
  br i1 %i.cd, label %.lr.ph380, label %._crit_edge381

.lr.ph380:                                        ; preds = %._crit_edge377
  %.sroa.idx = icmp eq i64 %.0307385, 1
  %.sroa.speculated430 = select i1 %.sroa.idx, ptr %.sroa.5.0, ptr %4
  %i.dr = ptrtoint ptr %.sroa.speculated430 to i64
  %.idx354 = shl nuw nsw i64 %.0307385, 6
  %invariant.gep382 = getelementptr i8, ptr %i.bz, i64 %.idx354
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph380, %bb.t
  %.2301378 = phi i64 [ %i.ai, %.lr.ph380 ], [ %i.ds, %bb.t ] ; 2 uses
  %gep383 = getelementptr [128 x i8], ptr %invariant.gep382, i64 %.2301378
  store atomic i64 %i.dr, ptr %gep383 seq_cst, align 8, !tbaa !19
  %i.ds = add nuw nsw i64 %.2301378, 1            ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.cc
  br i1 %i.dt, label %bb.t, label %._crit_edge381, !llvm.loop !59

._crit_edge381:                                   ; preds = %bb.t, %._crit_edge377
  %i.du = add nuw nsw i64 %.0307385, 1
  %i.dv = icmp slt i64 %i.db, %.0318
  br i1 %i.dv, label %.preheader367, label %.preheader368, !llvm.loop !60

bb.u:                                             ; preds = %.preheader368, %._crit_edge393
  %.0298 = phi i64 [ %spec.select359, %._crit_edge393 ], [ %5, %.preheader368 ]
  %i.dw = add nsw i64 %.0298, 1                   ; 2 uses
  %.not345 = icmp slt i64 %i.dw, %i.cc
  %spec.select359 = select i1 %.not345, i64 %i.dw, i64 %i.ai ; 5 uses
  %i.dx = getelementptr [8 x i8], ptr %2, i64 %spec.select359 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 8      ; 4 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !12 ; 2 uses
  %i.ea = load i64, ptr %i.dx, align 8, !tbaa !12 ; 4 uses
  %i.eb = add i64 %i.ce, %i.dz
  %i.ec = sub i64 %i.eb, %i.ea
  %i.ed = sdiv i64 %i.ec, %spec.select            ; 3 uses
  %i.ee = icmp slt i64 %i.ea, %i.dz
  br i1 %i.ee, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %bb.u
  %.not351 = icmp eq i64 %spec.select359, %5
  %gep395 = getelementptr [8192 x i8], ptr %invariant.gep394, i64 %spec.select359 ; 2 uses
  br i1 %.not351, label %.lr.ph392.split.us, label %.preheader365

.lr.ph392.split.us:                               ; preds = %.lr.ph392
  br i1 %i.ct, label %.lr.ph392.split.us.split.us, label %._crit_edge393

.lr.ph392.split.us.split.us:                      ; preds = %.lr.ph392.split.us, %.lr.ph392.split.us.split.us
  %.1308390.us.us = phi i64 [ %i.ei, %.lr.ph392.split.us.split.us ], [ 0, %.lr.ph392.split.us ] ; 2 uses
  %.1312389.us.us = phi i64 [ %i.eh, %.lr.ph392.split.us.split.us ], [ %i.ea, %.lr.ph392.split.us ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !84
  %.idx353.us.us = shl nuw nsw i64 %.1308390.us.us, 6
  %i.ef = getelementptr inbounds nuw i8, ptr %gep395, i64 %.idx353.us.us
  %i.eg = atomicrmw xchg ptr %i.ef, i64 0 seq_cst, align 8 ; 0 uses
  %i.eh = add nsw i64 %.1312389.us.us, %i.ed      ; 2 uses
  %i.ei = add nuw nsw i64 %.1308390.us.us, 1
  %i.ej = load i64, ptr %i.dy, align 8, !tbaa !12
  %i.ek = icmp slt i64 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph392.split.us.split.us, label %._crit_edge393, !llvm.loop !61

.preheader365:                                    ; preds = %.lr.ph392, %bb.w
  %.1308390 = phi i64 [ %i.fa, %bb.w ], [ 0, %.lr.ph392 ] ; 2 uses
  %.1312389 = phi i64 [ %i.ez, %bb.w ], [ %i.ea, %.lr.ph392 ] ; 3 uses
  %.idx352 = shl nuw nsw i64 %.1308390, 6
  %i.el = getelementptr inbounds nuw i8, ptr %gep395, i64 %.idx352 ; 4 uses
  %i.em = load atomic i64, ptr %i.el seq_cst, align 8, !tbaa !19
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.lr.ph386, label %._crit_edge387

.lr.ph386:                                        ; preds = %.preheader365, %.lr.ph386
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !85
  %i.eo = load atomic i64, ptr %i.el seq_cst, align 8, !tbaa !19
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph386, label %._crit_edge387, !llvm.loop !62

._crit_edge387:                                   ; preds = %.lr.ph386, %.preheader365
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !86
  %i.eq = load i64, ptr %i.dy, align 8, !tbaa !12
  %i.er = sub nsw i64 %i.eq, %.1312389
  %. = tail call i64 @llvm.smin.i64(i64 %i.er, i64 %i.ed)
  %i.es = load double, ptr %i.r, align 8, !tbaa !80
  %i.et = load atomic i64, ptr %i.el seq_cst, align 8, !tbaa !19
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = mul nsw i64 %.1312389, %i.p
  %i.ew = getelementptr [8 x i8], ptr %i.ca, i64 %i.ev
  %i.ex = tail call i32 @dgemm_kernel(i64 noundef %.0304, i64 noundef %., i64 noundef %.0303, double noundef %i.es, ptr noundef %3, ptr noundef %i.eu, ptr noundef %i.ew, i64 noundef %i.p) #11 ; 0 uses
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge387
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !84
  %i.ey = atomicrmw xchg ptr %i.el, i64 0 seq_cst, align 8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge387, %bb.v
  %i.ez = add nsw i64 %.1312389, %i.ed            ; 2 uses
  %i.fa = add nuw nsw i64 %.1308390, 1
  %i.fb = load i64, ptr %i.dy, align 8, !tbaa !12
  %i.fc = icmp slt i64 %i.ez, %i.fb
  br i1 %i.fc, label %.preheader365, label %._crit_edge393, !llvm.loop !61

._crit_edge393:                                   ; preds = %bb.w, %.lr.ph392.split.us.split.us, %.lr.ph392.split.us, %bb.u
  %.not346 = icmp eq i64 %spec.select359, %5
  br i1 %.not346, label %bb.x, label %bb.u, !llvm.loop !63

bb.x:                                             ; preds = %._crit_edge393
  %i.fd = add nsw i64 %.0304, %.0321              ; 2 uses
  %i.fe = icmp slt i64 %i.fd, %.0320
  br i1 %i.fe, label %.lr.ph409, label %._crit_edge410

.lr.ph409:                                        ; preds = %bb.x, %.split406.us
  %.0315407 = phi i64 [ %i.fq, %.split406.us ], [ %i.fd, %bb.x ] ; 4 uses
  %i.ff = sub nsw i64 %.0320, %.0315407           ; 4 uses
  %i.fg = icmp sgt i64 %i.ff, 383
  br i1 %i.fg, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph409
  %i.fh = icmp sgt i64 %i.ff, 192
  br i1 %i.fh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = add nuw nsw i64 %i.ff, 1
  %i.fj = lshr i64 %i.fi, 1
  %i.fk = add nuw nsw i64 %i.fj, 15
  %i.fl = and i64 %i.fk, 9223372036854775792
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph409, %bb.y, %bb.z
  %.1305 = phi i64 [ %i.ff, %bb.y ], [ %i.fl, %bb.z ], [ 192, %.lr.ph409 ] ; 4 uses
  %i.fm = mul nsw i64 %.0315407, %i.l
  %i.fn = getelementptr [8 x i8], ptr %i.cp, i64 %i.fm
  %i.fo = tail call i32 @dgemm_incopy(i64 noundef %.0303, i64 noundef %.1305, ptr noundef %i.fn, i64 noundef %i.l, ptr noundef %3) #11 ; 0 uses
  %i.fp = getelementptr [8 x i8], ptr %i.j, i64 %.0315407 ; 2 uses
  %i.fq = add nsw i64 %.1305, %.0315407           ; 2 uses
  %.not350 = icmp slt i64 %i.fq, %.0320
  %.not350.fr = freeze i1 %.not350                ; 2 uses
  br i1 %.not350.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.aa, %._crit_edge402.split.us.us
  %.2.us = phi i64 [ %spec.select361.us, %._crit_edge402.split.us.us ], [ %5, %bb.aa ] ; 3 uses
  %i.fr = add nsw i64 %.2.us, 1                   ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fr ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !12 ; 3 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %2, i64 %.2.us
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !12 ; 3 uses
  %i.fw = add i64 %i.ce, %i.ft
  %i.fx = sub i64 %i.fw, %i.fv
  %i.fy = sdiv i64 %i.fx, %spec.select            ; 2 uses
  %i.fz = icmp slt i64 %i.fv, %i.ft
  br i1 %i.fz, label %.lr.ph401.us, label %._crit_edge402.split.us.us

.lr.ph401.us:                                     ; preds = %.split.us
  %gep404.us = getelementptr [8192 x i8], ptr %invariant.gep394, i64 %.2.us
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph401.us
  %i.ga = phi i64 [ %i.ft, %.lr.ph401.us ], [ %i.gl, %bb.ab ]
  %.2309399.us.us = phi i64 [ 0, %.lr.ph401.us ], [ %i.gk, %bb.ab ] ; 2 uses
  %.2313398.us.us = phi i64 [ %i.fv, %.lr.ph401.us ], [ %i.gj, %bb.ab ] ; 3 uses
  %i.gb = sub nsw i64 %i.ga, %.2313398.us.us
  %.360.us.us = tail call i64 @llvm.smin.i64(i64 %i.gb, i64 %i.fy)
  %i.gc = load double, ptr %i.r, align 8, !tbaa !80
  %.idx349.us.us = shl nuw nsw i64 %.2309399.us.us, 6
  %i.gd = getelementptr inbounds nuw i8, ptr %gep404.us, i64 %.idx349.us.us
  %i.ge = load atomic i64, ptr %i.gd seq_cst, align 8, !tbaa !19
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = mul nsw i64 %.2313398.us.us, %i.p
  %i.gh = getelementptr [8 x i8], ptr %i.fp, i64 %i.gg
  %i.gi = tail call i32 @dgemm_kernel(i64 noundef %.1305, i64 noundef %.360.us.us, i64 noundef %.0303, double noundef %i.gc, ptr noundef %3, ptr noundef %i.gf, ptr noundef %i.gh, i64 noundef %i.p) #11 ; 0 uses
  %i.gj = add nsw i64 %.2313398.us.us, %i.fy      ; 2 uses
  %i.gk = add nuw nsw i64 %.2309399.us.us, 1
  %i.gl = load i64, ptr %i.fs, align 8, !tbaa !12 ; 2 uses
  %i.gm = icmp slt i64 %i.gj, %i.gl
  br i1 %i.gm, label %bb.ab, label %._crit_edge402.split.us.us, !llvm.loop !64

._crit_edge402.split.us.us:                       ; preds = %bb.ab, %.split.us
  %.not347.us = icmp slt i64 %i.fr, %i.cc
  %spec.select361.us = select i1 %.not347.us, i64 %i.fr, i64 %i.ai ; 2 uses
  %.not348.us = icmp eq i64 %spec.select361.us, %5
  br i1 %.not348.us, label %.split406.us, label %.split.us, !llvm.loop !65

.split:                                           ; preds = %bb.aa, %._crit_edge402.split
  %.2 = phi i64 [ %spec.select361, %._crit_edge402.split ], [ %5, %bb.aa ] ; 3 uses
  %i.gn = add nsw i64 %.2, 1                      ; 3 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !12 ; 3 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %2, i64 %.2
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !12 ; 3 uses
  %i.gs = add i64 %i.ce, %i.gp
  %i.gt = sub i64 %i.gs, %i.gr
  %i.gu = sdiv i64 %i.gt, %spec.select            ; 2 uses
  %i.gv = icmp slt i64 %i.gr, %i.gp
  br i1 %i.gv, label %.lr.ph401, label %._crit_edge402.split

.lr.ph401:                                        ; preds = %.split
  %gep404 = getelementptr [8192 x i8], ptr %invariant.gep394, i64 %.2
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph401, %bb.ac
  %i.gw = phi i64 [ %i.gp, %.lr.ph401 ], [ %i.hi, %bb.ac ]
  %.2309399 = phi i64 [ 0, %.lr.ph401 ], [ %i.hh, %bb.ac ] ; 2 uses
  %.2313398 = phi i64 [ %i.gr, %.lr.ph401 ], [ %i.hg, %bb.ac ] ; 3 uses
  %i.gx = sub nsw i64 %i.gw, %.2313398
  %.360 = tail call i64 @llvm.smin.i64(i64 %i.gx, i64 %i.gu)
  %i.gy = load double, ptr %i.r, align 8, !tbaa !80
  %.idx349 = shl nuw nsw i64 %.2309399, 6
  %i.gz = getelementptr inbounds nuw i8, ptr %gep404, i64 %.idx349 ; 2 uses
  %i.ha = load atomic i64, ptr %i.gz seq_cst, align 8, !tbaa !19
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = mul nsw i64 %.2313398, %i.p
  %i.hd = getelementptr [8 x i8], ptr %i.fp, i64 %i.hc
  %i.he = tail call i32 @dgemm_kernel(i64 noundef %.1305, i64 noundef %.360, i64 noundef %.0303, double noundef %i.gy, ptr noundef %3, ptr noundef %i.hb, ptr noundef %i.hd, i64 noundef %i.p) #11 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !87
  %i.hf = atomicrmw xchg ptr %i.gz, i64 0 seq_cst, align 8 ; 0 uses
  %i.hg = add nsw i64 %.2313398, %i.gu            ; 2 uses
  %i.hh = add nuw nsw i64 %.2309399, 1
  %i.hi = load i64, ptr %i.go, align 8, !tbaa !12 ; 2 uses
  %i.hj = icmp slt i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.ac, label %._crit_edge402.split, !llvm.loop !64

._crit_edge402.split:                             ; preds = %bb.ac, %.split
  %.not347 = icmp slt i64 %i.gn, %i.cc
  %spec.select361 = select i1 %.not347, i64 %i.gn, i64 %i.ai ; 2 uses
  %.not348 = icmp eq i64 %spec.select361, %5
  br i1 %.not348, label %.split406.us, label %.split, !llvm.loop !65

.split406.us:                                     ; preds = %._crit_edge402.split, %._crit_edge402.split.us.us
  br i1 %.not350.fr, label %.lr.ph409, label %._crit_edge410, !llvm.loop !66

._crit_edge410:                                   ; preds = %.split406.us, %bb.x
  %i.hk = add nsw i64 %.0303, %.0310411           ; 2 uses
  %i.hl = icmp slt i64 %i.hk, %i.e
  br i1 %i.hl, label %bb.m, label %.preheader364, !llvm.loop !67

.preheader363:                                    ; preds = %.preheader363.lr.ph, %bb.ad
  %.3302418 = phi i64 [ 0, %.preheader363.lr.ph ], [ %i.hr, %bb.ad ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [128 x i8], ptr %i.ch, i64 %.3302418
  br label %.preheader

.preheader:                                       ; preds = %.preheader363, %._crit_edge416
  %.3314417 = phi i64 [ 0, %.preheader363 ], [ %i.hq, %._crit_edge416 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.3314417, 6
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx ; 2 uses
  %i.ho = load atomic i64, ptr %i.hn seq_cst, align 8, !tbaa !19
  %.not344414 = icmp eq i64 %i.ho, 0
  br i1 %.not344414, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader, %.lr.ph415
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !88
  %i.hp = load atomic i64, ptr %i.hn seq_cst, align 8, !tbaa !19
  %.not344 = icmp eq i64 %i.hp, 0
  br i1 %.not344, label %._crit_edge416, label %.lr.ph415, !llvm.loop !68

._crit_edge416:                                   ; preds = %.lr.ph415, %.preheader
  %i.hq = add nuw nsw i64 %.3314417, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hq, %spec.select
  br i1 %exitcond.not, label %bb.ad, label %.preheader, !llvm.loop !69

bb.ad:                                            ; preds = %._crit_edge416
  %i.hr = add nuw nsw i64 %.3302418, 1            ; 2 uses
  %i.hs = load i64, ptr %i.x, align 8, !tbaa !13
  %i.ht = icmp slt i64 %i.hr, %i.hs
  br i1 %i.ht, label %.preheader363, label %._crit_edge419, !llvm.loop !70

._crit_edge419:                                   ; preds = %bb.ad, %.preheader364
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !89
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %bb.i, %._crit_edge419
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !8, i64 104, !9, i64 112, !8, i64 120, !5, i64 128}
!11 = !{!10, !9, i64 56}
!12 = !{!9, !9, i64 0}
!13 = !{!10, !9, i64 112}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!5, !5, i64 0}
!16 = !{i64 1068705}
!17 = !{!10, !8, i64 16}
!18 = !{!10, !8, i64 104}
!19 = !{!4, !4, i64 0}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14, !41, !42}
!23 = distinct !{!23, !14, !41, !42}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14, !42, !41}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !52}
!28 = distinct !{!28, !14, !41, !42}
!29 = distinct !{!29, !14, !41, !42}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14, !42, !41}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !52}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = !{!10, !9, i64 48}
!38 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!8, !8, i64 0}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 4, i32 12}
!44 = !{!"p1 _ZTS10blas_queue", !8, i64 0}
!45 = !{!"blas_queue", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !44, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!46 = !{!45, !5, i64 160}
!47 = !{!45, !8, i64 0}
!48 = !{!45, !8, i64 24}
!49 = !{!45, !8, i64 32}
!50 = !{!45, !8, i64 40}
!51 = !{!45, !44, i64 64}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!45, !8, i64 48}
!54 = !{!45, !8, i64 56}
!55 = !{i64 2149635396}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = !{!10, !9, i64 64}
!72 = !{!10, !8, i64 0}
!73 = !{!10, !8, i64 8}
!74 = !{!10, !9, i64 72}
!75 = !{!10, !9, i64 80}
!76 = !{!10, !9, i64 88}
!77 = !{!10, !8, i64 32}
!78 = !{!10, !8, i64 40}
!79 = !{!"double", !4, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{i64 2149632836}
!82 = !{i64 2149632901}
!83 = !{i64 2149633583}
!84 = !{i64 2149634163}
!85 = !{i64 2149633639}
!86 = !{i64 2149633704}
!87 = !{i64 2149634975}
!88 = !{i64 2149635031}
!89 = !{i64 2149635096}
end_hunk_0
