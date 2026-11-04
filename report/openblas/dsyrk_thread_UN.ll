Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsyrk_thread_UN?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dsyrk_thread_UN:bb.a
  %i.bo = call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.al) ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = call double @sqrt(double noundef %i.bo) #12
  %i.br = fsub double %i.bq, %i.bn
  %i.bs = fadd double %i.br, 3.100000e+01
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bt = fsub double 3.100000e+01, %i.bn
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0112.in.in.in = phi double [ %i.bs, %bb.n ], [ %i.bt, %bb.o ]
  %.0112.in.in = fptosi double %.0112.in.in.in to i64 ; 2 uses
  %.0112.in = sdiv i64 %.0112.in.in, 32
  %.0112 = shl nsw i64 %.0112.in, 5
  %i.bu = sub nsw i64 %i.ag, %.0111128            ; 2 uses
  %i.bv = icmp slt i64 %.0112.in.in, 32
  %i.bw = call i64 @llvm.smin.i64(i64 %.0112, i64 %i.bu)
  %spec.select = select i1 %i.bv, i64 %i.bu, i64 %i.bw
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.bx = sub nsw i64 %i.ag, %.0111128
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2114 = phi i64 [ %i.bx, %bb.q ], [ %spec.select, %bb.p ] ; 2 uses
  %i.by = sub nuw nsw i64 64, %.0115127
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !14
  %i.cb = sub nsw i64 %i.ca, %.2114
  %i.cc = sub nuw nsw i64 63, %.0115127
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cc
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %.0115127 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  store i32 3, ptr %i.cf, align 8, !tbaa !31
  store ptr @inner_thread, ptr %i.ce, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %6, ptr %i.cg, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr %1, ptr %i.ch, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cj = add nuw nsw i64 %.0115127, 1            ; 3 uses
  %i.ck = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !35
  %i.cm = add nsw i64 %.2114, %.0111128           ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.ag
  br i1 %i.cn, label %.lr.ph, label %iter.check, !llvm.loop !21

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1129 = phi i64 [ %i.cq, %vec.epilog.scalar.ph ], [ %.1129.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %.1129
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !36
  %i.cq = add nuw nsw i64 %.1129, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %.0115.lcssa.ph
  br i1 %exitcond.not, label %.preheader124.preheader, label %vec.epilog.scalar.ph, !llvm.loop !22

.preheader124.preheader:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 %.0115.lcssa.ph, ptr %i.cr, align 16, !tbaa !11
  %xtraiter = and i64 %.0115.lcssa.ph, 7          ; 3 uses
  %i.cs = icmp ult i64 %.0115.lcssa.ph, 8
  %unroll_iter = and i64 %.0115.lcssa.ph, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.preheader, %.epilog-lcssa
  %.0110133 = phi i64 [ %i.dv, %.epilog-lcssa ], [ 0, %.preheader124.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8192 x i8], ptr %i.x, i64 %.0110133 ; 9 uses
  br i1 %i.cs, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader124, %.preheader
  %.2132 = phi i64 [ %i.dr, %.preheader ], [ 0, %.preheader124 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader ], [ 0, %.preheader124 ]
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  store atomic i64 0, ptr %i.cu seq_cst, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store atomic i64 0, ptr %i.cv seq_cst, align 8, !tbaa !17
  %i.cw = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  store atomic i64 0, ptr %i.cx seq_cst, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  store atomic i64 0, ptr %i.cy seq_cst, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 256
  store atomic i64 0, ptr %i.da seq_cst, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 320
  store atomic i64 0, ptr %i.db seq_cst, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 384
  store atomic i64 0, ptr %i.dd seq_cst, align 8, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 448
  store atomic i64 0, ptr %i.de seq_cst, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 512
  store atomic i64 0, ptr %i.dg seq_cst, align 8, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 576
  store atomic i64 0, ptr %i.dh seq_cst, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 640
  store atomic i64 0, ptr %i.dj seq_cst, align 8, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store atomic i64 0, ptr %i.dk seq_cst, align 8, !tbaa !17
  %i.dl = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 768
  store atomic i64 0, ptr %i.dm seq_cst, align 8, !tbaa !17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 832
  store atomic i64 0, ptr %i.dn seq_cst, align 8, !tbaa !17
  %i.do = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 896
  store atomic i64 0, ptr %i.dp seq_cst, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 960
  store atomic i64 0, ptr %i.dq seq_cst, align 8, !tbaa !17
  %i.dr = add nuw nsw i64 %.2132, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader, !llvm.loop !23

.unr-lcssa:                                       ; preds = %.preheader
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader124
  %.2132.epil.init = phi i64 [ 0, %.preheader124 ], [ %i.dr, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.2132.epil = phi i64 [ %.2132.epil.init, %.preheader.epil.preheader ], [ %i.du, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.ds = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %.2132.epil ; 2 uses
  store atomic i64 0, ptr %i.ds seq_cst, align 8, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  store atomic i64 0, ptr %i.dt seq_cst, align 8, !tbaa !17
  %i.du = add nuw nsw i64 %.2132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !24

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %i.dv = add nuw nsw i64 %.0110133, 1            ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dv, %.0115.lcssa.ph
  br i1 %exitcond137.not, label %bb.s, label %.preheader124, !llvm.loop !25

bb.s:                                             ; preds = %.epilog-lcssa
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %3, ptr %i.dw, align 16, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %4, ptr %i.dx, align 8, !tbaa !42
  %i.dy = getelementptr [168 x i8], ptr %7, i64 %.0115.lcssa.ph
  %i.dz = getelementptr i8, ptr %i.dy, i64 -104
  store ptr null, ptr %i.dz, align 8, !tbaa !35
  %i.ea = call i32 @exec_blas(i64 noundef %.0115.lcssa.ph, ptr noundef nonnull %7) #12 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread, %bb.s
  call void @free(ptr noundef nonnull %i.x) #12
  call void @blas_level3_thread_leave() #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dsyrk_UN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = load i64, ptr %2, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %i.v)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0279 = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]  ; 13 uses
  %.0278 = phi i64 [ %i.u, %bb.b ], [ %i.q, %bb.a ] ; 8 uses
  %.0277 = phi i64 [ %i.aa, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0276 = phi i64 [ %i.z, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %.not298 = icmp eq ptr %i.o, null
  br i1 %.not298, label %syrk_beta.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load double, ptr %i.o, align 8, !tbaa !66
  %i.ac = fcmp une double %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.e, label %syrk_beta.exit

bb.e:                                             ; preds = %bb.d
  %.028.i = tail call i64 @llvm.smin.i64(i64 %.0278, i64 %.0276) ; 2 uses
  %i.ad = sub nsw i64 %.028.i, %.0279
  %i.ae = sub nsw i64 %.0276, %.0277              ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %syrk_beta.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ag = getelementptr [8 x i8], ptr %i.g, i64 %.0279
  %i.ah = mul nsw i64 %.0277, %i.k
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %invariant.op = sub i64 1, %.0279
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.038.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.02937.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.an, %bb.f ] ; 2 uses
  %i.aj = add nsw i64 %.038.i, %.0277             ; 2 uses
  %.not.i = icmp slt i64 %i.aj, %.028.i
  %.reass.i.reass.reass = add i64 %i.aj, %invariant.op
  %i.ak = select i1 %.not.i, i64 %.reass.i.reass.reass, i64 %i.ad
  %i.al = load double, ptr %i.o, align 8, !tbaa !66
  %i.am = tail call i32 @dscal_k(i64 noundef %i.ak, i64 noundef 0, i64 noundef 0, double noundef %i.al, ptr noundef %.02937.i, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #12 ; 0 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.02937.i, i64 %i.k
  %i.ao = add nuw nsw i64 %.038.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not.i, label %syrk_beta.exit, label %bb.f, !llvm.loop !43

syrk_beta.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ap = icmp eq i64 %i.d, 0
  %i.aq = icmp eq ptr %i.m, null
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %.loopexit314, label %bb.g

bb.g:                                             ; preds = %syrk_beta.exit
  %i.ar = load double, ptr %i.m, align 8, !tbaa !66
  %i.as = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.as, label %.loopexit314, label %.critedge

.critedge:                                        ; preds = %bb.g
  %i.at = sub nsw i64 %.0278, %.0279
  %.fr373 = freeze i64 %i.at                      ; 7 uses
  %i.au = add nsw i64 %.fr373, 1
  %i.av = sdiv i64 %i.au, 2
  %i.aw = add nsw i64 %i.av, 31
  %i.ax = sdiv i64 %i.aw, 32                      ; 2 uses
  %i.ay = shl nsw i64 %i.ax, 5
  store ptr %4, ptr %6, align 16, !tbaa !68
  %.idx309 = mul nsw i64 %i.ax, 98304
  %7 = getelementptr inbounds i8, ptr %4, i64 %.idx309
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.az, align 8, !tbaa !68
  %i.ba = icmp sgt i64 %i.d, 0
  br i1 %i.ba, label %.lr.ph365, label %.critedge..preheader313_crit_edge

.critedge..preheader313_crit_edge:                ; preds = %.critedge
  %.phi.trans.insert381 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre382 = load i64, ptr %.phi.trans.insert381, align 8, !tbaa !11
  br label %.preheader313

.lr.ph365:                                        ; preds = %.critedge
  %i.bb = icmp sgt i64 %.fr373, 383
  %i.bc = icmp sgt i64 %.fr373, 192
  %i.bd = lshr i64 %.fr373, 1
  %i.be = add nuw nsw i64 %i.bd, 31
  %i.bf = and i64 %i.be, 9223372036854775776
  %i.bg = getelementptr [8 x i8], ptr %i.e, i64 %.0279
  %i.bh = icmp slt i64 %.0279, %.0278
  %i.bi = icmp sgt i64 %5, 0
  %i.bj = getelementptr inbounds [8192 x i8], ptr %i.b, i64 %5 ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.g, i64 %.0279 ; 3 uses
  %.not305329 = icmp slt i64 %5, 0
  %i.bl = add i64 %5, 1                           ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %invariant.gep343 = getelementptr [128 x i8], ptr %i.b, i64 %5 ; 3 uses
  %spec.select372 = select i1 %i.bc, i64 %i.bf, i64 %.fr373
  %.0262 = select i1 %i.bb, i64 192, i64 %spec.select372 ; 6 uses
  %i.bn = icmp eq i64 %.fr373, %.0262
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bl
  %i.bo = add nsw i64 %.0262, %.0279              ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %.0278
  %.phi.trans.insert377 = getelementptr inbounds [8 x i8], ptr %2, i64 %5
  %.phi.trans.insert379 = getelementptr inbounds [8 x i8], ptr %2, i64 %5
  %xtraiter = and i64 %i.bl, 7                    ; 3 uses
  %i.bq = icmp ult i64 %5, 7
  %unroll_iter = and i64 %i.bl, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod453 = icmp ne i64 %xtraiter, 0
  br label %bb.h

.preheader313:                                    ; preds = %._crit_edge363, %.critedge..preheader313_crit_edge
  %i.br = phi i64 [ %.pre382, %.critedge..preheader313_crit_edge ], [ %i.hy, %._crit_edge363 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = icmp sgt i64 %i.br, 0
  br i1 %i.bt, label %.lr.ph371, label %.loopexit314

.lr.ph371:                                        ; preds = %.preheader313
  %i.bu = getelementptr inbounds [8192 x i8], ptr %i.b, i64 %5
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph365, %._crit_edge363
  %.0268364 = phi i64 [ 0, %.lr.ph365 ], [ %i.hz, %._crit_edge363 ] ; 3 uses
  %i.bv = sub nsw i64 %i.d, %.0268364             ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 767
  br i1 %i.bw, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = icmp sgt i64 %i.bv, 384
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = add nuw nsw i64 %i.bv, 1
  %i.bz = lshr i64 %i.by, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0267 = phi i64 [ %i.bv, %bb.i ], [ %i.bz, %bb.j ], [ 384, %bb.h ] ; 10 uses
  %i.ca = mul nsw i64 %.0268364, %i.i             ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bg, i64 %i.ca
  %i.cc = tail call i32 @dgemm_itcopy(i64 noundef %.0267, i64 noundef %.0262, ptr noundef %i.cb, i64 noundef %i.i, ptr noundef %3) #12 ; 0 uses
  br i1 %i.bh, label %.preheader320.lr.ph, label %._crit_edge337

.preheader320.lr.ph:                              ; preds = %bb.k
  %invariant.gep325 = getelementptr [8 x i8], ptr %i.e, i64 %i.ca
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader320.lr.ph, %._crit_edge332
  %.0269336 = phi i64 [ 0, %.preheader320.lr.ph ], [ %i.dg, %._crit_edge332 ] ; 5 uses
  %.0272335 = phi i64 [ %.0279, %.preheader320.lr.ph ], [ %i.cd, %._crit_edge332 ] ; 5 uses
  br i1 %i.bi, label %.preheader316.lr.ph, label %.preheader319

.preheader316.lr.ph:                              ; preds = %.preheader320
  %.idx307 = shl nuw nsw i64 %.0269336, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx307
  br label %.preheader316

.preheader319:                                    ; preds = %._crit_edge, %.preheader320
  %i.cd = add nsw i64 %.0272335, %i.ay            ; 3 uses
  %i.ce = tail call i64 @llvm.smin.i64(i64 %.0278, i64 %i.cd) ; 3 uses
  %i.cf = icmp slt i64 %.0272335, %i.ce
  br i1 %i.cf, label %.lr.ph328, label %.preheader318

.lr.ph328:                                        ; preds = %.preheader319
  %i.cg = icmp eq i64 %.0272335, %.0279
  %8 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.0269336
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %.0262. = select i1 %i.cg, i64 %.0262, i64 32
  br label %bb.l

.preheader316:                                    ; preds = %.preheader316.lr.ph, %._crit_edge
  %.1261324 = phi i64 [ 0, %.preheader316.lr.ph ], [ %i.cj, %._crit_edge ] ; 2 uses
  %gep = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep, i64 %.1261324 ; 2 uses
  %i.ch = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !17
  %.not308323 = icmp eq i64 %i.ch, 0
  br i1 %.not308323, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader316, %.lr.ph
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !69
  %i.ci = load atomic i64, ptr %gep seq_cst, align 8, !tbaa !17
  %.not308 = icmp eq i64 %i.ci, 0
  br i1 %.not308, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %.preheader316
  %i.cj = add nuw nsw i64 %.1261324, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %5
  br i1 %exitcond.not, label %.preheader319, label %.preheader316, !llvm.loop !45

.preheader318:                                    ; preds = %bb.l, %.preheader319
  br i1 %.not305329, label %._crit_edge332, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader318
  %10 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.0269336
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %i.ck = ptrtoint ptr %11 to i64                 ; 9 uses
  %.idx306 = shl nuw nsw i64 %.0269336, 6
  %invariant.gep333 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx306 ; 9 uses
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph331.new

bb.l:                                             ; preds = %.lr.ph328, %bb.l
  %.0266327 = phi i64 [ %.0272335, %.lr.ph328 ], [ %i.cv, %bb.l ] ; 6 uses
  %i.cl = sub nsw i64 %i.ce, %.0266327
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.cl, i64 %.0262.) ; 3 uses
  %gep326 = getelementptr [8 x i8], ptr %invariant.gep325, i64 %.0266327
  %i.cm = sub nsw i64 %.0266327, %.0272335
  %i.cn = mul nsw i64 %i.cm, %.0267
  %i.co = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cn ; 2 uses
  %i.cp = tail call i32 @dgemm_otcopy(i64 noundef %.0267, i64 noundef %spec.select, ptr noundef %gep326, i64 noundef %i.i, ptr noundef %i.co) #12 ; 0 uses
  %i.cq = load double, ptr %i.m, align 8, !tbaa !66
  %i.cr = mul nsw i64 %.0266327, %i.k
  %i.cs = getelementptr [8 x i8], ptr %i.bk, i64 %i.cr
  %i.ct = sub nsw i64 %.0279, %.0266327
  %i.cu = tail call i32 @dsyrk_kernel_U(i64 noundef %.0262, i64 noundef %spec.select, i64 noundef %.0267, double noundef %i.cq, ptr noundef %3, ptr noundef %i.co, ptr noundef %i.cs, i64 noundef %i.k, i64 noundef %i.ct) #12 ; 0 uses
  %i.cv = add nsw i64 %spec.select, %.0266327     ; 2 uses
  %i.cw = icmp slt i64 %i.cv, %i.ce
  br i1 %i.cw, label %bb.l, label %.preheader318, !llvm.loop !46

.lr.ph331.new:                                    ; preds = %.lr.ph331, %.lr.ph331.new
  %.2330 = phi i64 [ %i.de, %.lr.ph331.new ], [ 0, %.lr.ph331 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph331.new ], [ 0, %.lr.ph331 ]
  %gep334 = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  store atomic i64 %i.ck, ptr %gep334 seq_cst, align 8, !tbaa !17
  %i.cx = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.1 = getelementptr inbounds nuw i8, ptr %i.cx, i64 128
  store atomic i64 %i.ck, ptr %gep334.1 seq_cst, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.2 = getelementptr inbounds nuw i8, ptr %i.cy, i64 256
  store atomic i64 %i.ck, ptr %gep334.2 seq_cst, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.3 = getelementptr inbounds nuw i8, ptr %i.cz, i64 384
  store atomic i64 %i.ck, ptr %gep334.3 seq_cst, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.4 = getelementptr inbounds nuw i8, ptr %i.da, i64 512
  store atomic i64 %i.ck, ptr %gep334.4 seq_cst, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.5 = getelementptr inbounds nuw i8, ptr %i.db, i64 640
  store atomic i64 %i.ck, ptr %gep334.5 seq_cst, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.6 = getelementptr inbounds nuw i8, ptr %i.dc, i64 768
  store atomic i64 %i.ck, ptr %gep334.6 seq_cst, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330
  %gep334.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 896
  store atomic i64 %i.ck, ptr %gep334.7 seq_cst, align 8, !tbaa !17
  %i.de = add nuw i64 %.2330, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge332.loopexit.unr-lcssa, label %.lr.ph331.new, !llvm.loop !47

._crit_edge332.loopexit.unr-lcssa:                ; preds = %.lr.ph331.new
  br i1 %lcmp.mod.not, label %._crit_edge332, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge332.loopexit.unr-lcssa, %.lr.ph331
  %.2330.epil.init = phi i64 [ 0, %.lr.ph331 ], [ %i.de, %._crit_edge332.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod453)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.2330.epil = phi i64 [ %.2330.epil.init, %.epil.preheader ], [ %i.df, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %gep334.epil = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep333, i64 %.2330.epil
  store atomic i64 %i.ck, ptr %gep334.epil seq_cst, align 8, !tbaa !17
  %i.df = add nuw i64 %.2330.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge332, label %bb.m, !llvm.loop !48

._crit_edge332:                                   ; preds = %._crit_edge332.loopexit.unr-lcssa, %bb.m, %.preheader318
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !70
  %i.dg = add nuw nsw i64 %.0269336, 1
  %i.dh = icmp slt i64 %i.cd, %.0278
  br i1 %i.dh, label %.preheader320, label %._crit_edge337, !llvm.loop !49

._crit_edge337:                                   ; preds = %._crit_edge332, %bb.k
  %i.di = load i64, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %i.dj = icmp slt i64 %i.bl, %i.di
  br i1 %i.dj, label %.lr.ph347, label %._crit_edge348

.lr.ph347:                                        ; preds = %._crit_edge337
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %bb.n

.loopexit317:                                     ; preds = %._crit_edge339, %._crit_edge339.us, %bb.n
  %i.dk = phi i64 [ %i.ep, %._crit_edge339.us ], [ %i.dq, %bb.n ], [ %i.fh, %._crit_edge339 ]
  %i.dl = load i64, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %i.dm = icmp slt i64 %i.do, %i.dl
  br i1 %i.dm, label %bb.n, label %._crit_edge348, !llvm.loop !50

bb.n:                                             ; preds = %.lr.ph347, %.loopexit317
  %i.dn = phi i64 [ %.pre, %.lr.ph347 ], [ %i.dk, %.loopexit317 ] ; 4 uses
  %.0345 = phi i64 [ %i.bl, %.lr.ph347 ], [ %i.do, %.loopexit317 ] ; 2 uses
  %i.do = add nsw i64 %.0345, 1                   ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do ; 5 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !14 ; 3 uses
  %i.dr = add i64 %i.dq, 1
  %i.ds = sub i64 %i.dr, %i.dn
  %i.dt = sdiv i64 %i.ds, 2
  %i.du = add nsw i64 %i.dt, 31
  %i.dv = sdiv i64 %i.du, 32
  %i.dw = shl nsw i64 %i.dv, 5                    ; 4 uses
  %i.dx = icmp slt i64 %i.dn, %i.dq
  br i1 %i.dx, label %.preheader315.lr.ph, label %.loopexit317

.preheader315.lr.ph:                              ; preds = %bb.n
  %gep344 = getelementptr [8192 x i8], ptr %invariant.gep343, i64 %.0345 ; 2 uses
  br i1 %i.bn, label %.preheader315.us, label %.preheader315

.preheader315.us:                                 ; preds = %.preheader315.lr.ph, %._crit_edge339.us
  %.1270342.us = phi i64 [ %i.eo, %._crit_edge339.us ], [ 0, %.preheader315.lr.ph ] ; 2 uses
  %.1273341.us = phi i64 [ %i.en, %._crit_edge339.us ], [ %i.dn, %.preheader315.lr.ph ] ; 4 uses
  %.idx304.us = shl nuw nsw i64 %.1270342.us, 6
  %i.dy = getelementptr inbounds nuw i8, ptr %gep344, i64 %.idx304.us ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy seq_cst, align 8, !tbaa !17
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph338.us, label %._crit_edge339.us

.lr.ph338.us:                                     ; preds = %.preheader315.us, %.lr.ph338.us
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !71
  %i.eb = load atomic i64, ptr %i.dy seq_cst, align 8, !tbaa !17
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph338.us, label %._crit_edge339.us, !llvm.loop !51

._crit_edge339.us:                                ; preds = %.lr.ph338.us, %.preheader315.us
  %i.ed = load i64, ptr %i.dp, align 8, !tbaa !14
  %i.ee = sub nsw i64 %i.ed, %.1273341.us
  %..us = tail call i64 @llvm.smin.i64(i64 %i.ee, i64 %i.dw)
  %i.ef = load double, ptr %i.m, align 8, !tbaa !66
  %i.eg = load atomic i64, ptr %i.dy seq_cst, align 8, !tbaa !17
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = mul nsw i64 %.1273341.us, %i.k
  %i.ej = getelementptr [8 x i8], ptr %i.bk, i64 %i.ei
  %i.ek = sub nsw i64 %.0279, %.1273341.us
  %i.el = tail call i32 @dsyrk_kernel_U(i64 noundef %.fr373, i64 noundef %..us, i64 noundef %.0267, double noundef %i.ef, ptr noundef %3, ptr noundef %i.eh, ptr noundef %i.ej, i64 noundef %i.k, i64 noundef %i.ek) #12 ; 0 uses
  %i.em = atomicrmw xchg ptr %i.dy, i64 0 seq_cst, align 8 ; 0 uses
  %i.en = add nsw i64 %.1273341.us, %i.dw         ; 2 uses
  %i.eo = add nuw nsw i64 %.1270342.us, 1
  %i.ep = load i64, ptr %i.dp, align 8, !tbaa !14 ; 2 uses
  %i.eq = icmp slt i64 %i.en, %i.ep
  br i1 %i.eq, label %.preheader315.us, label %.loopexit317, !llvm.loop !52

.preheader315:                                    ; preds = %.preheader315.lr.ph, %._crit_edge339
  %.1270342 = phi i64 [ %i.fg, %._crit_edge339 ], [ 0, %.preheader315.lr.ph ] ; 2 uses
  %.1273341 = phi i64 [ %i.ff, %._crit_edge339 ], [ %i.dn, %.preheader315.lr.ph ] ; 4 uses
  %.idx304 = shl nuw nsw i64 %.1270342, 6
  %i.er = getelementptr inbounds nuw i8, ptr %gep344, i64 %.idx304 ; 3 uses
  %i.es = load atomic i64, ptr %i.er seq_cst, align 8, !tbaa !17
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.lr.ph338, label %._crit_edge339

.lr.ph338:                                        ; preds = %.preheader315, %.lr.ph338
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !71
  %i.eu = load atomic i64, ptr %i.er seq_cst, align 8, !tbaa !17
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph338, label %._crit_edge339, !llvm.loop !51

._crit_edge339:                                   ; preds = %.lr.ph338, %.preheader315
  %i.ew = load i64, ptr %i.dp, align 8, !tbaa !14
  %i.ex = sub nsw i64 %i.ew, %.1273341
  %. = tail call i64 @llvm.smin.i64(i64 %i.ex, i64 %i.dw)
  %i.ey = load double, ptr %i.m, align 8, !tbaa !66
  %i.ez = load atomic i64, ptr %i.er seq_cst, align 8, !tbaa !17
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = mul nsw i64 %.1273341, %i.k
  %i.fc = getelementptr [8 x i8], ptr %i.bk, i64 %i.fb
  %i.fd = sub nsw i64 %.0279, %.1273341
  %i.fe = tail call i32 @dsyrk_kernel_U(i64 noundef %.0262, i64 noundef %., i64 noundef %.0267, double noundef %i.ey, ptr noundef %3, ptr noundef %i.fa, ptr noundef %i.fc, i64 noundef %i.k, i64 noundef %i.fd) #12 ; 0 uses
  %i.ff = add nsw i64 %.1273341, %i.dw            ; 2 uses
  %i.fg = add nuw nsw i64 %.1270342, 1
  %i.fh = load i64, ptr %i.dp, align 8, !tbaa !14 ; 2 uses
  %i.fi = icmp slt i64 %i.ff, %i.fh
  br i1 %i.fi, label %.preheader315, label %.loopexit317, !llvm.loop !52

._crit_edge348:                                   ; preds = %.loopexit317, %._crit_edge337
  %i.fj = phi i64 [ %i.di, %._crit_edge337 ], [ %i.dl, %.loopexit317 ]
  %invariant.gep358 = getelementptr [8 x i8], ptr %i.e, i64 %i.ca
  br i1 %i.bp, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %._crit_edge348, %.split357.us
  %.0264360 = phi i64 [ %i.ft, %.split357.us ], [ %i.bo, %._crit_edge348 ] ; 6 uses
  %i.fk = sub nsw i64 %.0278, %.0264360           ; 4 uses
  %i.fl = icmp sgt i64 %i.fk, 383
  br i1 %i.fl, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph362
  %i.fm = icmp sgt i64 %i.fk, 192
  br i1 %i.fm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = add nuw nsw i64 %i.fk, 1
  %i.fo = lshr i64 %i.fn, 1
  %i.fp = add nuw nsw i64 %i.fo, 31
  %i.fq = and i64 %i.fp, 9223372036854775776
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph362, %bb.o, %bb.p
  %.1263 = phi i64 [ %i.fk, %bb.o ], [ %i.fq, %bb.p ], [ 192, %.lr.ph362 ] ; 4 uses
  %gep359 = getelementptr [8 x i8], ptr %invariant.gep358, i64 %.0264360
  %i.fr = tail call i32 @dgemm_itcopy(i64 noundef %.0267, i64 noundef %.1263, ptr noundef %gep359, i64 noundef %i.i, ptr noundef %3) #12 ; 0 uses
  %i.fs = getelementptr [8 x i8], ptr %i.g, i64 %.0264360 ; 2 uses
  %i.ft = add nsw i64 %.1263, %.0264360           ; 2 uses
  %.not303 = icmp slt i64 %i.ft, %.0278
  %.not303.fr = freeze i1 %.not303                ; 2 uses
  br i1 %.not303.fr, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.q
  %.pre378 = load i64, ptr %.phi.trans.insert377, align 8, !tbaa !14
  br label %.split

.split.us.preheader:                              ; preds = %bb.q
  %.pre380 = load i64, ptr %.phi.trans.insert379, align 8, !tbaa !14
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %._crit_edge353.split.us.us
  %i.fu = phi i64 [ %i.gt, %._crit_edge353.split.us.us ], [ %.pre380, %.split.us.preheader ] ; 3 uses
  %.1.us = phi i64 [ %i.fv, %._crit_edge353.split.us.us ], [ %5, %.split.us.preheader ] ; 2 uses
  %i.fv = add nsw i64 %.1.us, 1                   ; 4 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fv ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !14 ; 4 uses
  %i.fy = add i64 %i.fx, 1
  %i.fz = sub i64 %i.fy, %i.fu
  %i.ga = sdiv i64 %i.fz, 2
  %i.gb = add nsw i64 %i.ga, 31
  %i.gc = sdiv i64 %i.gb, 32
  %i.gd = shl nsw i64 %i.gc, 5                    ; 2 uses
  %i.ge = icmp slt i64 %i.fu, %i.fx
  br i1 %i.ge, label %.lr.ph352.us, label %._crit_edge353.split.us.us

.lr.ph352.us:                                     ; preds = %.split.us
  %gep355.us = getelementptr [8192 x i8], ptr %invariant.gep343, i64 %.1.us
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph352.us
  %i.gf = phi i64 [ %i.fx, %.lr.ph352.us ], [ %i.gr, %bb.r ]
  %.2271350.us.us = phi i64 [ 0, %.lr.ph352.us ], [ %i.gq, %bb.r ] ; 2 uses
  %.2274349.us.us = phi i64 [ %i.fu, %.lr.ph352.us ], [ %i.gp, %bb.r ] ; 4 uses
  %i.gg = sub nsw i64 %i.gf, %.2274349.us.us
  %.310.us.us = tail call i64 @llvm.smin.i64(i64 %i.gg, i64 %i.gd)
  %i.gh = load double, ptr %i.m, align 8, !tbaa !66
  %.idx302.us.us = shl nuw nsw i64 %.2271350.us.us, 6
  %i.gi = getelementptr inbounds nuw i8, ptr %gep355.us, i64 %.idx302.us.us
  %i.gj = load atomic i64, ptr %i.gi seq_cst, align 8, !tbaa !17
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = mul nsw i64 %.2274349.us.us, %i.k
  %i.gm = getelementptr [8 x i8], ptr %i.fs, i64 %i.gl
  %i.gn = sub nsw i64 %.0264360, %.2274349.us.us
  %i.go = tail call i32 @dsyrk_kernel_U(i64 noundef %.1263, i64 noundef %.310.us.us, i64 noundef %.0267, double noundef %i.gh, ptr noundef %3, ptr noundef %i.gk, ptr noundef %i.gm, i64 noundef %i.k, i64 noundef %i.gn) #12 ; 0 uses
  %i.gp = add nsw i64 %.2274349.us.us, %i.gd      ; 2 uses
  %i.gq = add nuw nsw i64 %.2271350.us.us, 1
  %i.gr = load i64, ptr %i.fw, align 8, !tbaa !14 ; 3 uses
  %i.gs = icmp slt i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.r, label %._crit_edge353.split.us.us, !llvm.loop !53

._crit_edge353.split.us.us:                       ; preds = %bb.r, %.split.us
  %i.gt = phi i64 [ %i.fx, %.split.us ], [ %i.gr, %bb.r ]
  %i.gu = load i64, ptr %i.bm, align 8, !tbaa !11
  %.not301.us = icmp eq i64 %i.fv, %i.gu
  br i1 %.not301.us, label %.split357.us, label %.split.us, !llvm.loop !54

.split:                                           ; preds = %.split.preheader, %._crit_edge353.split
  %i.gv = phi i64 [ %i.hv, %._crit_edge353.split ], [ %.pre378, %.split.preheader ] ; 3 uses
  %.1 = phi i64 [ %i.gw, %._crit_edge353.split ], [ %5, %.split.preheader ] ; 2 uses
  %i.gw = add nsw i64 %.1, 1                      ; 4 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gw ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !14 ; 4 uses
  %i.gz = add i64 %i.gy, 1
  %i.ha = sub i64 %i.gz, %i.gv
  %i.hb = sdiv i64 %i.ha, 2
  %i.hc = add nsw i64 %i.hb, 31
  %i.hd = sdiv i64 %i.hc, 32
  %i.he = shl nsw i64 %i.hd, 5                    ; 2 uses
  %i.hf = icmp slt i64 %i.gv, %i.gy
  br i1 %i.hf, label %.lr.ph352, label %._crit_edge353.split

.lr.ph352:                                        ; preds = %.split
  %gep355 = getelementptr [8192 x i8], ptr %invariant.gep343, i64 %.1
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph352, %bb.s
  %i.hg = phi i64 [ %i.gy, %.lr.ph352 ], [ %i.ht, %bb.s ]
  %.2271350 = phi i64 [ 0, %.lr.ph352 ], [ %i.hs, %bb.s ] ; 2 uses
  %.2274349 = phi i64 [ %i.gv, %.lr.ph352 ], [ %i.hr, %bb.s ] ; 4 uses
  %i.hh = sub nsw i64 %i.hg, %.2274349
  %.310 = tail call i64 @llvm.smin.i64(i64 %i.hh, i64 %i.he)
  %i.hi = load double, ptr %i.m, align 8, !tbaa !66
  %.idx302 = shl nuw nsw i64 %.2271350, 6
  %i.hj = getelementptr inbounds nuw i8, ptr %gep355, i64 %.idx302 ; 2 uses
  %i.hk = load atomic i64, ptr %i.hj seq_cst, align 8, !tbaa !17
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = mul nsw i64 %.2274349, %i.k
  %i.hn = getelementptr [8 x i8], ptr %i.fs, i64 %i.hm
  %i.ho = sub nsw i64 %.0264360, %.2274349
  %i.hp = tail call i32 @dsyrk_kernel_U(i64 noundef %.1263, i64 noundef %.310, i64 noundef %.0267, double noundef %i.hi, ptr noundef %3, ptr noundef %i.hl, ptr noundef %i.hn, i64 noundef %i.k, i64 noundef %i.ho) #12 ; 0 uses
  %i.hq = atomicrmw xchg ptr %i.hj, i64 0 seq_cst, align 8 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !72
  %i.hr = add nsw i64 %.2274349, %i.he            ; 2 uses
  %i.hs = add nuw nsw i64 %.2271350, 1
  %i.ht = load i64, ptr %i.gx, align 8, !tbaa !14 ; 3 uses
  %i.hu = icmp slt i64 %i.hr, %i.ht
  br i1 %i.hu, label %bb.s, label %._crit_edge353.split, !llvm.loop !53

._crit_edge353.split:                             ; preds = %bb.s, %.split
  %i.hv = phi i64 [ %i.gy, %.split ], [ %i.ht, %bb.s ]
  %i.hw = load i64, ptr %i.bm, align 8, !tbaa !11
  %.not301 = icmp eq i64 %i.gw, %i.hw
  br i1 %.not301, label %.split357.us, label %.split, !llvm.loop !54

.split357.us:                                     ; preds = %._crit_edge353.split, %._crit_edge353.split.us.us
  %i.hx = phi i64 [ %i.fv, %._crit_edge353.split.us.us ], [ %i.gw, %._crit_edge353.split ]
  br i1 %.not303.fr, label %.lr.ph362, label %._crit_edge363, !llvm.loop !55

._crit_edge363:                                   ; preds = %.split357.us, %._crit_edge348
  %i.hy = phi i64 [ %i.fj, %._crit_edge348 ], [ %i.hx, %.split357.us ]
  %i.hz = add nsw i64 %.0267, %.0268364           ; 2 uses
  %i.ia = icmp slt i64 %i.hz, %i.d
  br i1 %i.ia, label %bb.h, label %.preheader313, !llvm.loop !56

bb.t:                                             ; preds = %.lr.ph371, %.loopexit
  %i.ib = phi i64 [ %i.br, %.lr.ph371 ], [ %i.ii, %.loopexit ]
  %.3370 = phi i64 [ 0, %.lr.ph371 ], [ %i.ij, %.loopexit ] ; 3 uses
  %.not299 = icmp eq i64 %.3370, %5
  br i1 %.not299, label %.loopexit, label %.preheader312

.preheader312:                                    ; preds = %bb.t
  %i.ic = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %.3370 ; 3 uses
  %i.id = load atomic i64, ptr %i.ic seq_cst, align 8, !tbaa !17
  %.not300366 = icmp eq i64 %i.id, 0
  br i1 %.not300366, label %._crit_edge368, label %.lr.ph367

.lr.ph367:                                        ; preds = %.preheader312, %.lr.ph367
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !73
  %i.ie = load atomic i64, ptr %i.ic seq_cst, align 8, !tbaa !17
  %.not300 = icmp eq i64 %i.ie, 0
  br i1 %.not300, label %._crit_edge368, label %.lr.ph367, !llvm.loop !57

._crit_edge368:                                   ; preds = %.lr.ph367, %.preheader312
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 64 ; 2 uses
  %i.ig = load atomic i64, ptr %i.if seq_cst, align 8, !tbaa !17
  %.not300366.1 = icmp eq i64 %i.ig, 0
  br i1 %.not300366.1, label %._crit_edge368.1, label %.lr.ph367.1

.lr.ph367.1:                                      ; preds = %._crit_edge368, %.lr.ph367.1
  tail call void asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !73
  %i.ih = load atomic i64, ptr %i.if seq_cst, align 8, !tbaa !17
  %.not300.1 = icmp eq i64 %i.ih, 0
  br i1 %.not300.1, label %._crit_edge368.1, label %.lr.ph367.1, !llvm.loop !57

._crit_edge368.1:                                 ; preds = %.lr.ph367.1, %._crit_edge368
  %.pre383 = load i64, ptr %i.bs, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge368.1, %bb.t
  %i.ii = phi i64 [ %.pre383, %._crit_edge368.1 ], [ %i.ib, %bb.t ] ; 2 uses
  %i.ij = add nuw nsw i64 %.3370, 1               ; 2 uses
  %i.ik = icmp slt i64 %i.ij, %i.ii
  br i1 %i.ik, label %bb.t, label %.loopexit314, !llvm.loop !58

.loopexit314:                                     ; preds = %.loopexit, %.preheader313, %bb.g, %syrk_beta.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 0
}

declare i32 @exec_blas(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @blas_level3_thread_leave() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_otcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsyrk_kernel_U(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dscal_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr>, <4 x ptr>, <4 x i1>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { cold noreturn nounwind }

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
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !16, !37, !38}
!20 = distinct !{!20, !16, !37, !38}
!21 = distinct !{!21, !16, !40}
!22 = distinct !{!22, !16, !38, !37}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !16}
!26 = !{!8, !8, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS10blas_queue", !8, i64 0}
!30 = !{!"blas_queue", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !29, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!31 = !{!30, !5, i64 160}
!32 = !{!30, !8, i64 0}
!33 = !{!30, !8, i64 24}
!34 = !{!30, !8, i64 32}
!35 = !{!30, !29, i64 64}
!36 = !{!30, !8, i64 40}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 4, i32 12}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = !{!30, !8, i64 48}
!42 = !{!30, !8, i64 56}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = !{!10, !9, i64 64}
!60 = !{!10, !8, i64 0}
!61 = !{!10, !9, i64 72}
!62 = !{!10, !9, i64 88}
!63 = !{!10, !8, i64 32}
!64 = !{!10, !8, i64 40}
!65 = !{!"double", !4, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"p1 double", !8, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{i64 2149625275}
!70 = !{i64 2149625969}
!71 = !{i64 2149626156}
!72 = !{i64 2149627560}
!73 = !{i64 2149627616}
end_hunk_0
