Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsyrk_thread_LT?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsyrk_thread_LT:bb.a

.lr.ph:                                           ; preds = %bb.h, %bb.n
  %i.an = phi i64 [ %i.bb, %bb.n ], [ 0, %bb.h ]
  %.0101115 = phi i64 [ %i.bm, %bb.n ], [ 0, %bb.h ] ; 4 uses
  %.0104114 = phi i64 [ %i.bc, %bb.n ], [ 0, %bb.h ] ; 5 uses
  %i.ao = sub nsw i64 %i.c, %.0104114
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph
  %i.aq = sitofp i64 %.0101115 to double          ; 4 uses
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ak) ; 2 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = call double @sqrt(double noundef %i.ar) #11
  %i.au = fsub double %i.at, %i.aq
  %i.av = fadd double %i.au, 3.100000e+01
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = fsub double 3.100000e+01, %i.aq
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0102.in.in.in = phi double [ %i.av, %bb.j ], [ %i.aw, %bb.k ]
  %.0102.in.in = fptosi double %.0102.in.in.in to i64 ; 2 uses
  %.0102.in = sdiv i64 %.0102.in.in, 32
  %.0102 = shl nsw i64 %.0102.in, 5
  %i.ax = sub nsw i64 %i.ag, %.0101115            ; 2 uses
  %i.ay = icmp slt i64 %.0102.in.in, 32
  %i.az = call i64 @llvm.smin.i64(i64 %.0102, i64 %i.ax)
  %spec.select = select i1 %i.ay, i64 %i.ax, i64 %i.az
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.ba = sub nsw i64 %i.ag, %.0101115
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1103 = phi i64 [ %i.ba, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.bb = add nsw i64 %i.an, %.1103               ; 2 uses
  %i.bc = add nuw nsw i64 %.0104114, 1            ; 8 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bc
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %.0104114 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  store i32 3, ptr %i.bf, align 8, !tbaa !27
  store ptr @inner_thread, ptr %i.be, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %6, ptr %i.bg, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %1, ptr %i.bh, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bk = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !32
  %i.bm = add nsw i64 %.1103, %.0101115           ; 2 uses
  %i.bn = icmp slt i64 %i.bm, %i.ag
  br i1 %i.bn, label %.lr.ph, label %.preheader112.preheader, !llvm.loop !18

.preheader112.preheader:                          ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 %i.bc, ptr %i.bo, align 16, !tbaa !11
  %xtraiter = and i64 %i.bc, 7                    ; 3 uses
  %i.bp = icmp samesign ult i64 %.0104114, 7
  %unroll_iter = and i64 %i.bc, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %.epilog-lcssa
  %.0100118 = phi i64 [ %i.cs, %.epilog-lcssa ], [ 0, %.preheader112.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8192 x i8], ptr %i.x, i64 %.0100118 ; 9 uses
  br i1 %i.bp, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader112, %.preheader
  %.1117 = phi i64 [ %i.co, %.preheader ], [ 0, %.preheader112 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader ], [ 0, %.preheader112 ]
  %i.br = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  store atomic i64 0, ptr %i.br seq_cst, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store atomic i64 0, ptr %i.bs seq_cst, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  store atomic i64 0, ptr %i.bu seq_cst, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 192
  store atomic i64 0, ptr %i.bv seq_cst, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  store atomic i64 0, ptr %i.bx seq_cst, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 320
  store atomic i64 0, ptr %i.by seq_cst, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 384
  store atomic i64 0, ptr %i.ca seq_cst, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 448
  store atomic i64 0, ptr %i.cb seq_cst, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 512
  store atomic i64 0, ptr %i.cd seq_cst, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 576
  store atomic i64 0, ptr %i.ce seq_cst, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 640
  store atomic i64 0, ptr %i.cg seq_cst, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 704
  store atomic i64 0, ptr %i.ch seq_cst, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 768
  store atomic i64 0, ptr %i.cj seq_cst, align 8, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 832
  store atomic i64 0, ptr %i.ck seq_cst, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 896
  store atomic i64 0, ptr %i.cm seq_cst, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 960
  store atomic i64 0, ptr %i.cn seq_cst, align 8, !tbaa !17
  %i.co = add nuw nsw i64 %.1117, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader, !llvm.loop !19

.unr-lcssa:                                       ; preds = %.preheader
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader112
  %.1117.epil.init = phi i64 [ 0, %.preheader112 ], [ %i.co, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod129)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.1117.epil = phi i64 [ %.1117.epil.init, %.preheader.epil.preheader ], [ %i.cr, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %.1117.epil ; 2 uses
  store atomic i64 0, ptr %i.cp seq_cst, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store atomic i64 0, ptr %i.cq seq_cst, align 8, !tbaa !17
  %i.cr = add nuw nsw i64 %.1117.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %i.cs = add nuw nsw i64 %.0100118, 1
  %exitcond119.not = icmp eq i64 %.0100118, %.0104114
  br i1 %exitcond119.not, label %bb.o, label %.preheader112, !llvm.loop !21

bb.o:                                             ; preds = %.epilog-lcssa
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %3, ptr %i.ct, align 16, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %4, ptr %i.cu, align 8, !tbaa !35
  %i.cv = getelementptr [168 x i8], ptr %7, i64 %i.bc
  %i.cw = getelementptr i8, ptr %i.cv, i64 -104
  store ptr null, ptr %i.cw, align 8, !tbaa !32
  %i.cx = call i32 @exec_blas(i64 noundef %i.bc, ptr noundef nonnull %7) #11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread, %bb.o
  call void @free(ptr noundef nonnull %i.x) #11
  call void @blas_level3_thread_leave() #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dsyrk_LT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @blas_level3_thread_enter() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @inner_thread(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
bb.a:
  %6 = alloca [2 x ptr], align 16                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51   ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54   ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.v = load i64, ptr %2, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.z)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0288 = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]  ; 6 uses
  %.0287 = phi i64 [ %i.u, %bb.b ], [ %i.q, %bb.a ] ; 7 uses
  %.0286 = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %.0285 = phi i64 [ %i.aa, %bb.b ], [ %i.q, %bb.a ]
  %.not307 = icmp eq ptr %i.o, null
  br i1 %.not307, label %syrk_beta.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load double, ptr %i.o, align 8, !tbaa !58
  %i.ac = fcmp une double %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.e, label %syrk_beta.exit

bb.e:                                             ; preds = %bb.d
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %.0288, i64 %.0286) ; 3 uses
  %i.ad = sub nsw i64 %.0287, %spec.select.i
  %i.ae = sub nsw i64 %.0285, %.0286              ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %syrk_beta.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ag = getelementptr [8 x i8], ptr %i.g, i64 %spec.select.i
  %i.ah = mul nsw i64 %.0286, %i.k
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = sub nsw i64 %spec.select.i, %.0286
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.046.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %bb.f ] ; 3 uses
  %.03645.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.1.i, %bb.f ] ; 2 uses
  %i.ak = add i64 %.0286, %.046.i
  %i.al = sub i64 %.0287, %i.ak
  %..i = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.ad)
  %i.am = load double, ptr %i.o, align 8, !tbaa !58
  %i.an = tail call i32 @dscal_k(i64 noundef %..i, i64 noundef 0, i64 noundef 0, double noundef %i.am, ptr noundef %.03645.i, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #11 ; 0 uses
  %i.ao = icmp slt i64 %.046.i, %i.aj
  %i.ap = getelementptr [8 x i8], ptr %.03645.i, i64 %i.k
  %.1.idx.i = select i1 %i.ao, i64 0, i64 8
  %.1.i = getelementptr i8, ptr %i.ap, i64 %.1.idx.i
  %i.aq = add nuw nsw i64 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %i.ae
  br i1 %exitcond.not.i, label %syrk_beta.exit, label %bb.f, !llvm.loop !36

syrk_beta.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ar = icmp eq i64 %i.d, 0
  %i.as = icmp eq ptr %i.m, null
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %.loopexit324, label %bb.g

bb.g:                                             ; preds = %syrk_beta.exit
  %i.at = load double, ptr %i.m, align 8, !tbaa !58
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %.loopexit324, label %.critedge

.critedge:                                        ; preds = %bb.g
  %i.av = sub nsw i64 %.0287, %.0288
  %.fr378 = freeze i64 %i.av                      ; 8 uses
  %i.aw = add nsw i64 %.fr378, 1
  %i.ax = sdiv i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, 31
  %i.az = sdiv i64 %i.ay, 32                      ; 2 uses
  %i.ba = shl nsw i64 %i.az, 5
  store ptr %4, ptr %6, align 16, !tbaa !60
  %.idx317 = mul nsw i64 %i.az, 98304
  %7 = getelementptr inbounds i8, ptr %4, i64 %.idx317
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.bb, align 8, !tbaa !60
  %i.bc = icmp sgt i64 %i.d, 0
  br i1 %i.bc, label %.lr.ph371, label %.preheader323

.lr.ph371:                                        ; preds = %.critedge
  %i.bd = icmp sgt i64 %.fr378, 383
  %i.be = icmp sgt i64 %.fr378, 192
  %i.bf = lshr i64 %.fr378, 1
  %i.bg = add nuw nsw i64 %i.bf, 31
  %i.bh = and i64 %i.bg, 9223372036854775776
  %i.bi = icmp slt i64 %.0288, %.0287
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.1270337 = add nsw i64 %5, 1                   ; 2 uses
  %i.bk = getelementptr inbounds [8192 x i8], ptr %i.b, i64 %5 ; 2 uses
  %invariant.gep352 = getelementptr [128 x i8], ptr %i.b, i64 %5 ; 3 uses
  %i.bl = icmp sgt i64 %5, 0
  %spec.select = select i1 %i.be, i64 %i.bh, i64 %.fr378
  %.0271 = select i1 %i.bd, i64 192, i64 %spec.select ; 2 uses
  %i.bm = sub nsw i64 %.fr378, %.0271
  %i.bn = srem i64 %i.bm, 192                     ; 2 uses
  %.not310 = icmp eq i64 %i.bn, 0
  %.neg = add nsw i64 %i.bn, -192
  %i.bo = select i1 %.not310, i64 0, i64 %.neg
  %.1272 = add i64 %i.bo, %.0271                  ; 5 uses
  %i.bp = sub nsw i64 %.0287, %.1272              ; 9 uses
  %i.bq = mul nsw i64 %i.bp, %i.i
  %i.br = getelementptr [8 x i8], ptr %i.g, i64 %i.bp
  %i.bs = getelementptr [8 x i8], ptr %i.g, i64 %i.bp ; 2 uses
  %i.bt = icmp eq i64 %.fr378, %.1272
  %i.bu = icmp slt i64 %.0288, %i.bp
  br label %bb.h

.preheader323:                                    ; preds = %._crit_edge369, %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph377, label %.loopexit324

.lr.ph377:                                        ; preds = %.preheader323
  %i.by = getelementptr inbounds [8192 x i8], ptr %i.b, i64 %5
  br label %bb.s

bb.h:                                             ; preds = %.lr.ph371, %._crit_edge369
  %.0277370 = phi i64 [ 0, %.lr.ph371 ], [ %i.hz, %._crit_edge369 ] ; 3 uses
  %i.bz = sub nsw i64 %i.d, %.0277370             ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 767
  br i1 %i.ca, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = icmp sgt i64 %i.bz, 384
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = add nuw nsw i64 %i.bz, 1
  %i.cd = lshr i64 %i.cc, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0276 = phi i64 [ %i.bz, %bb.i ], [ %i.cd, %bb.j ], [ 384, %bb.h ] ; 10 uses
  %i.ce = getelementptr [8 x i8], ptr %i.e, i64 %.0277370 ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.bq
  %i.cg = tail call i32 @dgemm_incopy(i64 noundef %.0276, i64 noundef %.1272, ptr noundef %i.cf, i64 noundef %i.i, ptr noundef %3) #11 ; 0 uses
  br i1 %i.bi, label %.preheader331, label %.preheader333

.preheader333:                                    ; preds = %._crit_edge, %bb.k
  br i1 %i.bl, label %.lr.ph357, label %.preheader332

.preheader331:                                    ; preds = %bb.k, %._crit_edge
  %.0278346 = phi i64 [ %i.dl, %._crit_edge ], [ 0, %bb.k ] ; 5 uses
  %.0281345 = phi i64 [ %i.cm, %._crit_edge ], [ %.0288, %bb.k ] ; 4 uses
  %i.ch = load i64, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.ci = icmp slt i64 %.1270337, %i.ch
  br i1 %i.ci, label %.preheader326.lr.ph, label %.preheader330

.preheader326.lr.ph:                              ; preds = %.preheader331
  %.idx315 = shl nuw nsw i64 %.0278346, 6
  %invariant.gep = getelementptr i8, ptr %i.bk, i64 %.idx315
  br label %.preheader326

.loopexit327:                                     ; preds = %.lr.ph, %.preheader326
  %.1270 = add nsw i64 %.1270338, 1               ; 2 uses
  %i.cj = load i64, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.ck = icmp slt i64 %.1270, %i.cj
  br i1 %i.ck, label %.preheader326, label %.preheader330, !llvm.loop !37

.preheader330:                                    ; preds = %.loopexit327, %.preheader331
  %i.cl = phi i64 [ %i.ch, %.preheader331 ], [ %i.cj, %.loopexit327 ]
  %i.cm = add nsw i64 %.0281345, %i.ba            ; 3 uses
  %i.cn = tail call i64 @llvm.smin.i64(i64 %.0287, i64 %i.cm) ; 3 uses
  %i.co = icmp slt i64 %.0281345, %i.cn
  br i1 %i.co, label %.lr.ph340, label %.preheader329

.lr.ph340:                                        ; preds = %.preheader330
  %8 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.0278346
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  br label %bb.l

.preheader326:                                    ; preds = %.preheader326.lr.ph, %.loopexit327
  %.1270338 = phi i64 [ %.1270337, %.preheader326.lr.ph ], [ %.1270, %.loopexit327 ] ; 2 uses
  %gep = getelementptr [128 x i8], ptr %invariant.gep, i64 %.1270338 ; 2 uses
  %i.cp = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !17
  %.not316336 = icmp eq i64 %i.cp, 0
  br i1 %.not316336, label %.loopexit327, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader326, %.lr.ph
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !61
  %i.cq = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !17
  %.not316 = icmp eq i64 %i.cq, 0
  br i1 %.not316, label %.loopexit327, label %.lr.ph, !llvm.loop !38

.preheader329.loopexit:                           ; preds = %bb.l
  %.pre = load i64, ptr %i.bj, align 8, !tbaa !11
  br label %.preheader329

.preheader329:                                    ; preds = %.preheader329.loopexit, %.preheader330
  %i.cr = phi i64 [ %.pre, %.preheader329.loopexit ], [ %i.cl, %.preheader330 ]
  %i.cs = icmp slt i64 %5, %i.cr
  br i1 %i.cs, label %.lr.ph342, label %._crit_edge

.lr.ph342:                                        ; preds = %.preheader329
  %10 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.0278346
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %i.ct = ptrtoint ptr %11 to i64
  %.idx314 = shl nuw nsw i64 %.0278346, 6
  %invariant.gep343 = getelementptr i8, ptr %i.bk, i64 %.idx314
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph340, %bb.l
  %.0275339 = phi i64 [ %.0281345, %.lr.ph340 ], [ %i.dg, %bb.l ] ; 6 uses
  %i.cu = sub nsw i64 %i.cn, %.0275339
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 32) ; 3 uses
  %i.cv = mul nsw i64 %.0275339, %i.i
  %i.cw = getelementptr [8 x i8], ptr %i.ce, i64 %i.cv
  %i.cx = sub nsw i64 %.0275339, %.0281345
  %i.cy = mul nsw i64 %i.cx, %.0276
  %i.cz = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cy ; 2 uses
  %i.da = tail call i32 @dgemm_oncopy(i64 noundef %.0276, i64 noundef %spec.store.select, ptr noundef %i.cw, i64 noundef %i.i, ptr noundef %i.cz) #11 ; 0 uses
  %i.db = load double, ptr %i.m, align 8, !tbaa !58
  %i.dc = mul nsw i64 %.0275339, %i.k
  %i.dd = getelementptr [8 x i8], ptr %i.br, i64 %i.dc
  %i.de = sub nsw i64 %i.bp, %.0275339
  %i.df = tail call i32 @dsyrk_kernel_L(i64 noundef %.1272, i64 noundef %spec.store.select, i64 noundef %.0276, double noundef %i.db, ptr noundef %3, ptr noundef %i.cz, ptr noundef %i.dd, i64 noundef %i.k, i64 noundef %i.de) #11 ; 0 uses
  %i.dg = add nsw i64 %spec.store.select, %.0275339 ; 2 uses
  %i.dh = icmp slt i64 %i.dg, %i.cn
  br i1 %i.dh, label %bb.l, label %.preheader329.loopexit, !llvm.loop !39

bb.m:                                             ; preds = %.lr.ph342, %bb.m
  %.2341 = phi i64 [ %5, %.lr.ph342 ], [ %i.di, %bb.m ] ; 2 uses
  %gep344 = getelementptr [128 x i8], ptr %invariant.gep343, i64 %.2341
  store atomic i64 %i.ct, ptr %gep344 seq_cst, align 8, !tbaa !17
  %i.di = add nsw i64 %.2341, 1                   ; 2 uses
  %i.dj = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.dk = icmp slt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.m, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.m, %.preheader329
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !62
  %i.dl = add nuw nsw i64 %.0278346, 1
  %i.dm = icmp slt i64 %i.cm, %.0287
  br i1 %i.dm, label %.preheader331, label %.preheader333, !llvm.loop !41

.loopexit328:                                     ; preds = %._crit_edge348, %._crit_edge348.us, %.lr.ph357
  %i.dn = icmp sgt i64 %.0.in355, 1
  br i1 %i.dn, label %.lr.ph357, label %.preheader332, !llvm.loop !42

.preheader332:                                    ; preds = %.loopexit328, %.preheader333
  br i1 %i.bu, label %.lr.ph368, label %._crit_edge369

.lr.ph357:                                        ; preds = %.preheader333, %.loopexit328
  %.0.in355 = phi i64 [ %.0356, %.loopexit328 ], [ %5, %.preheader333 ] ; 3 uses
  %.0356 = add nsw i64 %.0.in355, -1              ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.in355 ; 5 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !14 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0356
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !14 ; 4 uses
  %i.ds = add i64 %i.dp, 1
  %i.dt = sub i64 %i.ds, %i.dr
  %i.du = sdiv i64 %i.dt, 2
  %i.dv = add nsw i64 %i.du, 31
  %i.dw = sdiv i64 %i.dv, 32
  %i.dx = shl nsw i64 %i.dw, 5                    ; 4 uses
  %i.dy = icmp slt i64 %i.dr, %i.dp
  br i1 %i.dy, label %.preheader325.lr.ph, label %.loopexit328

.preheader325.lr.ph:                              ; preds = %.lr.ph357
  %gep353 = getelementptr [8192 x i8], ptr %invariant.gep352, i64 %.0356 ; 2 uses
  br i1 %i.bt, label %.preheader325.us, label %.preheader325

.preheader325.us:                                 ; preds = %.preheader325.lr.ph, %._crit_edge348.us
  %.1279351.us = phi i64 [ %i.ep, %._crit_edge348.us ], [ 0, %.preheader325.lr.ph ] ; 2 uses
  %.1282350.us = phi i64 [ %i.eo, %._crit_edge348.us ], [ %i.dr, %.preheader325.lr.ph ] ; 4 uses
  %.idx313.us = shl nuw nsw i64 %.1279351.us, 6
  %i.dz = getelementptr inbounds nuw i8, ptr %gep353, i64 %.idx313.us ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz seq_cst, align 8, !tbaa !17
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.lr.ph347.us, label %._crit_edge348.us

.lr.ph347.us:                                     ; preds = %.preheader325.us, %.lr.ph347.us
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !63
  %i.ec = load atomic i64, ptr %i.dz seq_cst, align 8, !tbaa !17
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph347.us, label %._crit_edge348.us, !llvm.loop !43

._crit_edge348.us:                                ; preds = %.lr.ph347.us, %.preheader325.us
  %i.ee = load i64, ptr %i.do, align 8, !tbaa !14
  %i.ef = sub nsw i64 %i.ee, %.1282350.us
  %..us = tail call i64 @llvm.smin.i64(i64 %i.ef, i64 %i.dx)
  %i.eg = load double, ptr %i.m, align 8, !tbaa !58
  %i.eh = load atomic i64, ptr %i.dz seq_cst, align 8, !tbaa !17
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = mul nsw i64 %.1282350.us, %i.k
  %i.ek = getelementptr [8 x i8], ptr %i.bs, i64 %i.ej
  %i.el = sub nsw i64 %i.bp, %.1282350.us
  %i.em = tail call i32 @dsyrk_kernel_L(i64 noundef %.fr378, i64 noundef %..us, i64 noundef %.0276, double noundef %i.eg, ptr noundef %3, ptr noundef %i.ei, ptr noundef %i.ek, i64 noundef %i.k, i64 noundef %i.el) #11 ; 0 uses
  %i.en = atomicrmw xchg ptr %i.dz, i64 0 seq_cst, align 8 ; 0 uses
  %i.eo = add nsw i64 %.1282350.us, %i.dx         ; 2 uses
  %i.ep = add nuw nsw i64 %.1279351.us, 1
  %i.eq = load i64, ptr %i.do, align 8, !tbaa !14
  %i.er = icmp slt i64 %i.eo, %i.eq
  br i1 %i.er, label %.preheader325.us, label %.loopexit328, !llvm.loop !44

.preheader325:                                    ; preds = %.preheader325.lr.ph, %._crit_edge348
  %.1279351 = phi i64 [ %i.fh, %._crit_edge348 ], [ 0, %.preheader325.lr.ph ] ; 2 uses
  %.1282350 = phi i64 [ %i.fg, %._crit_edge348 ], [ %i.dr, %.preheader325.lr.ph ] ; 4 uses
  %.idx313 = shl nuw nsw i64 %.1279351, 6
  %i.es = getelementptr inbounds nuw i8, ptr %gep353, i64 %.idx313 ; 3 uses
  %i.et = load atomic i64, ptr %i.es seq_cst, align 8, !tbaa !17
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %.lr.ph347, label %._crit_edge348

.lr.ph347:                                        ; preds = %.preheader325, %.lr.ph347
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !63
  %i.ev = load atomic i64, ptr %i.es seq_cst, align 8, !tbaa !17
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph347, label %._crit_edge348, !llvm.loop !43

._crit_edge348:                                   ; preds = %.lr.ph347, %.preheader325
  %i.ex = load i64, ptr %i.do, align 8, !tbaa !14
  %i.ey = sub nsw i64 %i.ex, %.1282350
  %. = tail call i64 @llvm.smin.i64(i64 %i.ey, i64 %i.dx)
  %i.ez = load double, ptr %i.m, align 8, !tbaa !58
  %i.fa = load atomic i64, ptr %i.es seq_cst, align 8, !tbaa !17
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = mul nsw i64 %.1282350, %i.k
  %i.fd = getelementptr [8 x i8], ptr %i.bs, i64 %i.fc
  %i.fe = sub nsw i64 %i.bp, %.1282350
  %i.ff = tail call i32 @dsyrk_kernel_L(i64 noundef %.1272, i64 noundef %., i64 noundef %.0276, double noundef %i.ez, ptr noundef %3, ptr noundef %i.fb, ptr noundef %i.fd, i64 noundef %i.k, i64 noundef %i.fe) #11 ; 0 uses
  %i.fg = add nsw i64 %.1282350, %i.dx            ; 2 uses
  %i.fh = add nuw nsw i64 %.1279351, 1
  %i.fi = load i64, ptr %i.do, align 8, !tbaa !14
  %i.fj = icmp slt i64 %i.fg, %i.fi
  br i1 %i.fj, label %.preheader325, label %.loopexit328, !llvm.loop !44

.lr.ph368:                                        ; preds = %.preheader332, %.split366.us
  %.0274367 = phi i64 [ %i.fv, %.split366.us ], [ %.0288, %.preheader332 ] ; 6 uses
  %i.fk = sub nsw i64 %i.bp, %.0274367            ; 4 uses
  %i.fl = icmp sgt i64 %i.fk, 383
  br i1 %i.fl, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph368
  %i.fm = icmp sgt i64 %i.fk, 192
  br i1 %i.fm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fn = add nuw nsw i64 %i.fk, 1
  %i.fo = lshr i64 %i.fn, 1
  %i.fp = add nuw nsw i64 %i.fo, 31
  %i.fq = and i64 %i.fp, 9223372036854775776
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph368, %bb.n, %bb.o
  %.2273 = phi i64 [ %i.fk, %bb.n ], [ %i.fq, %bb.o ], [ 192, %.lr.ph368 ] ; 4 uses
  %i.fr = mul nsw i64 %.0274367, %i.i
  %i.fs = getelementptr [8 x i8], ptr %i.ce, i64 %i.fr
  %i.ft = tail call i32 @dgemm_incopy(i64 noundef %.0276, i64 noundef %.2273, ptr noundef %i.fs, i64 noundef %i.i, ptr noundef %3) #11 ; 0 uses
  %i.fu = getelementptr [8 x i8], ptr %i.g, i64 %.0274367 ; 2 uses
  %i.fv = add nsw i64 %.2273, %.0274367           ; 2 uses
  %.not312 = icmp slt i64 %i.fv, %i.bp
  %.not312.fr = freeze i1 %.not312                ; 2 uses
  br i1 %.not312.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.p, %._crit_edge362.split.us.us
  %.1.us = phi i64 [ %i.gv, %._crit_edge362.split.us.us ], [ %5, %bb.p ] ; 4 uses
  %i.fw = getelementptr [8 x i8], ptr %2, i64 %.1.us ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 8      ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !14 ; 3 uses
  %i.fz = load i64, ptr %i.fw, align 8, !tbaa !14 ; 3 uses
  %i.ga = add i64 %i.fy, 1
  %i.gb = sub i64 %i.ga, %i.fz
  %i.gc = sdiv i64 %i.gb, 2
  %i.gd = add nsw i64 %i.gc, 31
  %i.ge = sdiv i64 %i.gd, 32
  %i.gf = shl nsw i64 %i.ge, 5                    ; 2 uses
  %i.gg = icmp slt i64 %i.fz, %i.fy
  br i1 %i.gg, label %.lr.ph361.us, label %._crit_edge362.split.us.us

.lr.ph361.us:                                     ; preds = %.split.us
  %gep364.us = getelementptr [8192 x i8], ptr %invariant.gep352, i64 %.1.us
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph361.us
  %i.gh = phi i64 [ %i.fy, %.lr.ph361.us ], [ %i.gt, %bb.q ]
  %.2280359.us.us = phi i64 [ 0, %.lr.ph361.us ], [ %i.gs, %bb.q ] ; 2 uses
  %.2283358.us.us = phi i64 [ %i.fz, %.lr.ph361.us ], [ %i.gr, %bb.q ] ; 4 uses
  %i.gi = sub nsw i64 %i.gh, %.2283358.us.us
  %.318.us.us = tail call i64 @llvm.smin.i64(i64 %i.gi, i64 %i.gf)
  %i.gj = load double, ptr %i.m, align 8, !tbaa !58
  %.idx311.us.us = shl nuw nsw i64 %.2280359.us.us, 6
  %i.gk = getelementptr inbounds nuw i8, ptr %gep364.us, i64 %.idx311.us.us
  %i.gl = load atomic i64, ptr %i.gk seq_cst, align 8, !tbaa !17
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = mul nsw i64 %.2283358.us.us, %i.k
  %i.go = getelementptr [8 x i8], ptr %i.fu, i64 %i.gn
  %i.gp = sub nsw i64 %.0274367, %.2283358.us.us
  %i.gq = tail call i32 @dsyrk_kernel_L(i64 noundef %.2273, i64 noundef %.318.us.us, i64 noundef %.0276, double noundef %i.gj, ptr noundef %3, ptr noundef %i.gm, ptr noundef %i.go, i64 noundef %i.k, i64 noundef %i.gp) #11 ; 0 uses
  %i.gr = add nsw i64 %.2283358.us.us, %i.gf      ; 2 uses
  %i.gs = add nuw nsw i64 %.2280359.us.us, 1
  %i.gt = load i64, ptr %i.fx, align 8, !tbaa !14 ; 2 uses
  %i.gu = icmp slt i64 %i.gr, %i.gt
  br i1 %i.gu, label %bb.q, label %._crit_edge362.split.us.us, !llvm.loop !45

._crit_edge362.split.us.us:                       ; preds = %bb.q, %.split.us
  %i.gv = add nsw i64 %.1.us, -1
  %i.gw = icmp sgt i64 %.1.us, 0
  br i1 %i.gw, label %.split.us, label %.split366.us, !llvm.loop !46

.split:                                           ; preds = %bb.p, %._crit_edge362.split
  %.1 = phi i64 [ %i.hx, %._crit_edge362.split ], [ %5, %bb.p ] ; 4 uses
  %i.gx = getelementptr [8 x i8], ptr %2, i64 %.1 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 8      ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !14 ; 3 uses
  %i.ha = load i64, ptr %i.gx, align 8, !tbaa !14 ; 3 uses
  %i.hb = add i64 %i.gz, 1
  %i.hc = sub i64 %i.hb, %i.ha
  %i.hd = sdiv i64 %i.hc, 2
  %i.he = add nsw i64 %i.hd, 31
  %i.hf = sdiv i64 %i.he, 32
  %i.hg = shl nsw i64 %i.hf, 5                    ; 2 uses
  %i.hh = icmp slt i64 %i.ha, %i.gz
  br i1 %i.hh, label %.lr.ph361, label %._crit_edge362.split

.lr.ph361:                                        ; preds = %.split
  %gep364 = getelementptr [8192 x i8], ptr %invariant.gep352, i64 %.1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph361, %bb.r
  %i.hi = phi i64 [ %i.gz, %.lr.ph361 ], [ %i.hv, %bb.r ]
  %.2280359 = phi i64 [ 0, %.lr.ph361 ], [ %i.hu, %bb.r ] ; 2 uses
  %.2283358 = phi i64 [ %i.ha, %.lr.ph361 ], [ %i.ht, %bb.r ] ; 4 uses
  %i.hj = sub nsw i64 %i.hi, %.2283358
  %.318 = tail call i64 @llvm.smin.i64(i64 %i.hj, i64 %i.hg)
  %i.hk = load double, ptr %i.m, align 8, !tbaa !58
  %.idx311 = shl nuw nsw i64 %.2280359, 6
  %i.hl = getelementptr inbounds nuw i8, ptr %gep364, i64 %.idx311 ; 2 uses
  %i.hm = load atomic i64, ptr %i.hl seq_cst, align 8, !tbaa !17
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = mul nsw i64 %.2283358, %i.k
  %i.hp = getelementptr [8 x i8], ptr %i.fu, i64 %i.ho
  %i.hq = sub nsw i64 %.0274367, %.2283358
  %i.hr = tail call i32 @dsyrk_kernel_L(i64 noundef %.2273, i64 noundef %.318, i64 noundef %.0276, double noundef %i.hk, ptr noundef %3, ptr noundef %i.hn, ptr noundef %i.hp, i64 noundef %i.k, i64 noundef %i.hq) #11 ; 0 uses
  %i.hs = atomicrmw xchg ptr %i.hl, i64 0 seq_cst, align 8 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !64
  %i.ht = add nsw i64 %.2283358, %i.hg            ; 2 uses
  %i.hu = add nuw nsw i64 %.2280359, 1
  %i.hv = load i64, ptr %i.gy, align 8, !tbaa !14 ; 2 uses
  %i.hw = icmp slt i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.r, label %._crit_edge362.split, !llvm.loop !45

._crit_edge362.split:                             ; preds = %bb.r, %.split
  %i.hx = add nsw i64 %.1, -1
  %i.hy = icmp sgt i64 %.1, 0
  br i1 %i.hy, label %.split, label %.split366.us, !llvm.loop !46

.split366.us:                                     ; preds = %._crit_edge362.split, %._crit_edge362.split.us.us
  br i1 %.not312.fr, label %.lr.ph368, label %._crit_edge369, !llvm.loop !47

._crit_edge369:                                   ; preds = %.split366.us, %.preheader332
  %i.hz = add nsw i64 %.0276, %.0277370           ; 2 uses
  %i.ia = icmp slt i64 %i.hz, %i.d
  br i1 %i.ia, label %bb.h, label %.preheader323, !llvm.loop !48

bb.s:                                             ; preds = %.lr.ph377, %.loopexit
  %i.ib = phi i64 [ %i.bw, %.lr.ph377 ], [ %i.ii, %.loopexit ]
  %.3376 = phi i64 [ 0, %.lr.ph377 ], [ %i.ij, %.loopexit ] ; 3 uses
  %.not308 = icmp eq i64 %.3376, %5
  br i1 %.not308, label %.loopexit, label %.preheader322

.preheader322:                                    ; preds = %bb.s
  %i.ic = getelementptr inbounds nuw [128 x i8], ptr %i.by, i64 %.3376 ; 3 uses
  %i.id = load atomic i64, ptr %i.ic seq_cst, align 8, !tbaa !17
  %.not309372 = icmp eq i64 %i.id, 0
  br i1 %.not309372, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %.preheader322, %.lr.ph373
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !65
  %i.ie = load atomic i64, ptr %i.ic seq_cst, align 8, !tbaa !17
  %.not309 = icmp eq i64 %i.ie, 0
  br i1 %.not309, label %._crit_edge374, label %.lr.ph373, !llvm.loop !49

._crit_edge374:                                   ; preds = %.lr.ph373, %.preheader322
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 64 ; 2 uses
  %i.ig = load atomic i64, ptr %i.if seq_cst, align 8, !tbaa !17
  %.not309372.1 = icmp eq i64 %i.ig, 0
  br i1 %.not309372.1, label %._crit_edge374.1, label %.lr.ph373.1

.lr.ph373.1:                                      ; preds = %._crit_edge374, %.lr.ph373.1
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !65
  %i.ih = load atomic i64, ptr %i.if seq_cst, align 8, !tbaa !17
  %.not309.1 = icmp eq i64 %i.ih, 0
  br i1 %.not309.1, label %._crit_edge374.1, label %.lr.ph373.1, !llvm.loop !49

._crit_edge374.1:                                 ; preds = %.lr.ph373.1, %._crit_edge374
  %.pre381 = load i64, ptr %i.bv, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge374.1, %bb.s
  %i.ii = phi i64 [ %.pre381, %._crit_edge374.1 ], [ %i.ib, %bb.s ] ; 2 uses
  %i.ij = add nuw nsw i64 %.3376, 1               ; 2 uses
  %i.ik = icmp slt i64 %i.ij, %i.ii
  br i1 %i.ik, label %bb.s, label %.loopexit324, !llvm.loop !50

.loopexit324:                                     ; preds = %.loopexit, %.preheader323, %bb.g, %syrk_beta.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 0
}

declare i32 @exec_blas(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @blas_level3_thread_leave() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemm_incopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsyrk_kernel_L(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dscal_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
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
!11 = !{!10, !9, i64 112}
!12 = !{!10, !9, i64 56}
!13 = !{!10, !8, i64 16}
!14 = !{!9, !9, i64 0}
!15 = !{!10, !8, i64 104}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!4, !4, i64 0}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !33}
!21 = distinct !{!21, !16}
!22 = !{!8, !8, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTS10blas_queue", !8, i64 0}
!26 = !{!"blas_queue", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !25, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!27 = !{!26, !5, i64 160}
!28 = !{!26, !8, i64 0}
!29 = !{!26, !8, i64 24}
!30 = !{!26, !8, i64 32}
!31 = !{!26, !8, i64 40}
!32 = !{!26, !25, i64 64}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!26, !8, i64 48}
!35 = !{!26, !8, i64 56}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = !{!10, !9, i64 64}
!52 = !{!10, !8, i64 0}
!53 = !{!10, !9, i64 72}
!54 = !{!10, !9, i64 88}
!55 = !{!10, !8, i64 32}
!56 = !{!10, !8, i64 40}
!57 = !{!"double", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"p1 double", !8, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{i64 2149625373}
!62 = !{i64 2149626079}
!63 = !{i64 2149626266}
!64 = !{i64 2149627682}
!65 = !{i64 2149627738}
end_hunk_0
