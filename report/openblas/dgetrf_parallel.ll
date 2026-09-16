Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgetrf_parallel?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dgetrf_parallel:bb.a
  %i.cf = fdiv double 1.000000e+00, %i.bo
  %i.cg = fsub double 1.000000e+00, %i.cf
  %i.ch = call double @sqrt(double noundef %i.cg) #7
  %i.ci = fsub double 1.000000e+00, %i.ch
  %i.cj = fmul double %i.ci, %i.ce
  %i.ck = fptosi double %i.cj to i64
  %i.cl = add nsw i64 %i.ck, 2
  %i.cm = sdiv i64 %i.cl, 2
  %i.cn = shl nsw i64 %i.cm, 1
  %spec.select355 = call i64 @llvm.smin.i64(i64 %i.cn, i64 %.1301394) ; 2 uses
  %spec.select361 = call i64 @llvm.smin.i64(i64 %spec.select355, i64 %i.ca)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2323 = phi i64 [ %.0321391, %bb.f ], [ %spec.select355, %bb.g ] ; 3 uses
  %.1313 = phi i64 [ %spec.select354, %bb.f ], [ %spec.select361, %bb.g ] ; 4 uses
  %.not348 = icmp eq i64 %.0299395, 0
  br i1 %.not348, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !32
  %i.co = call i32 @exec_blas_async_wait(i64 noundef %.0299395, ptr noundef nonnull %7) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %4, ptr %6, align 8, !tbaa !12
  %i.cp = mul i64 %.0302393, %i.aw
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0316, i64 %i.cp
  store ptr %i.cq, ptr %i.ax, align 8, !tbaa !18
  store ptr %i.i, ptr %i.ay, align 8, !tbaa !19
  store i64 %i.bj, ptr %i.az, align 8, !tbaa !11
  store i64 %i.bl, ptr %i.ba, align 8, !tbaa !31
  store i64 %.1301394, ptr %i.bb, align 8, !tbaa !20
  %i.cr = add nsw i64 %.0302393, %.0326
  store i64 %i.cr, ptr %i.bc, align 8, !tbaa !21
  %i.cs = sub nsw i64 %i.bl, %.1313               ; 2 uses
  store i64 %.1313, ptr %i.h, align 16, !tbaa !15
  store i64 0, ptr %i.g, align 16, !tbaa !15
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.j, %bb.q
  %.1.neg386 = phi i64 [ %i.cv, %bb.q ], [ 0, %bb.j ] ; 4 uses
  %.1385 = phi i64 [ %i.fv, %bb.q ], [ 0, %bb.j ] ; 10 uses
  %.0308384 = phi i64 [ %.1309, %bb.q ], [ %i.bj, %bb.j ] ; 9 uses
  %.0310383 = phi i64 [ %.1311, %bb.q ], [ %i.cs, %bb.j ] ; 9 uses
  %.not352 = icmp slt i64 %.0308384, %.0310383
  %i.cu = load i64, ptr %i.av, align 8, !tbaa !17 ; 5 uses
  %i.cv = xor i64 %.1385, -1                      ; 4 uses
  %i.cw = add i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = and i64 %i.cw, 4294967294
  %i.cy = icmp eq i64 %i.cx, 0                    ; 2 uses
  br i1 %.not352, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.cz = add i64 %.1.neg386, %.0310383
  %i.da = add i64 %i.cz, %i.cu
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.cy, label %blas_quickdivide.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = and i64 %i.cw, 4294967295
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !33
  %i.df = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.de, i32 %i.db) #7, !srcloc !34
  %i.dg = extractvalue { i32, i32 } %i.df, 0
  store volatile i32 %i.dg, ptr %i.d, align 4, !tbaa !33
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.d, align 4, !tbaa !33
  %.pre = load i64, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %.pre409 = add i64 %.pre, %i.cv                 ; 2 uses
  %.pre411 = and i64 %.pre409, 4294967294
  %i.dh = icmp eq i64 %.pre411, 0
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %bb.k, %bb.l
  %.pre-phi412 = phi i1 [ true, %bb.k ], [ %i.dh, %bb.l ]
  %.pre-phi410 = phi i64 [ %i.cw, %bb.k ], [ %.pre409, %bb.l ]
  %i.di = phi i64 [ %i.cu, %bb.k ], [ %.pre, %bb.l ]
  %.0.i = phi i32 [ %i.db, %bb.k ], [ %.0..0..0..0..0..0..i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dj = zext i32 %.0.i to i64
  %i.dk = icmp eq i32 %.0.i, 0
  %i.dl = call i64 @llvm.umin.i64(i64 %.0310383, i64 %i.dj)
  %.3315 = select i1 %i.dk, i64 %.0310383, i64 %i.dl ; 2 uses
  %i.dm = sub nsw i64 %.0310383, %.3315           ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.1385
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !15
  %i.dp = add nsw i64 %.3315, %i.do
  %i.dq = add nuw nsw i64 %.1385, 1               ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dq
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !15
  %i.ds = add i64 %.1.neg386, %.0308384
  %i.dt = add i64 %i.ds, %i.di
  %i.du = trunc i64 %i.dt to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br i1 %.pre-phi412, label %blas_quickdivide.exit367, label %bb.m

bb.m:                                             ; preds = %blas_quickdivide.exit
  %i.dv = and i64 %.pre-phi410, 4294967295
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33
  %i.dy = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.dx, i32 %i.du) #7, !srcloc !34
  %i.dz = extractvalue { i32, i32 } %i.dy, 0
  store volatile i32 %i.dz, ptr %i.c, align 4, !tbaa !33
  %.0..0..0..0..0..0..i365 = load volatile i32, ptr %i.c, align 4, !tbaa !33
  br label %blas_quickdivide.exit367

blas_quickdivide.exit367:                         ; preds = %blas_quickdivide.exit, %bb.m
  %.0.i366 = phi i32 [ %.0..0..0..0..0..0..i365, %bb.m ], [ %i.du, %blas_quickdivide.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ea = zext i32 %.0.i366 to i64
  %i.eb = icmp eq i32 %.0.i366, 0
  %i.ec = call i64 @llvm.umin.i64(i64 %.0308384, i64 %i.ea)
  %i.ed = icmp slt i64 %i.dm, 1
  %i.ee = select i1 %i.ed, i1 true, i1 %i.eb
  %.6 = select i1 %i.ee, i64 %.0308384, i64 %i.ec ; 2 uses
  %i.ef = sub nsw i64 %.0308384, %.6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1385
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !15
  %i.ei = add nsw i64 %.6, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dq
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !15
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %i.ek = add i64 %.1.neg386, %.0308384
  %i.el = add i64 %i.ek, %i.cu
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.cy, label %blas_quickdivide.exit370, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = and i64 %i.cw, 4294967295
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !33
  %i.eq = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.ep, i32 %i.em) #7, !srcloc !34
  %i.er = extractvalue { i32, i32 } %i.eq, 0
  store volatile i32 %i.er, ptr %i.b, align 4, !tbaa !33
  %.0..0..0..0..0..0..i368 = load volatile i32, ptr %i.b, align 4, !tbaa !33
  %.pre404 = load i64, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %.pre405 = add i64 %.pre404, %i.cv              ; 2 uses
  %.pre406 = and i64 %.pre405, 4294967294
  %i.es = icmp eq i64 %.pre406, 0
  br label %blas_quickdivide.exit370

blas_quickdivide.exit370:                         ; preds = %bb.n, %bb.o
  %.pre-phi407 = phi i1 [ true, %bb.n ], [ %i.es, %bb.o ]
  %.pre-phi = phi i64 [ %i.cw, %bb.n ], [ %.pre405, %bb.o ]
  %i.et = phi i64 [ %i.cu, %bb.n ], [ %.pre404, %bb.o ]
  %.0.i369 = phi i32 [ %i.em, %bb.n ], [ %.0..0..0..0..0..0..i368, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eu = zext i32 %.0.i369 to i64
  %i.ev = icmp eq i32 %.0.i369, 0
  %i.ew = call i64 @llvm.smin.i64(i64 %.0308384, i64 %i.eu)
  %.8 = select i1 %i.ev, i64 %.0308384, i64 %i.ew ; 2 uses
  %i.ex = sub nsw i64 %.0308384, %.8              ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1385
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !15
  %i.fa = add nsw i64 %.8, %i.ez
  %i.fb = add nuw nsw i64 %.1385, 1               ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fb
  store i64 %i.fa, ptr %i.fc, align 8, !tbaa !15
  %i.fd = add i64 %.1.neg386, %.0310383
  %i.fe = add i64 %i.fd, %i.et
  %i.ff = trunc i64 %i.fe to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.pre-phi407, label %blas_quickdivide.exit373, label %bb.p

bb.p:                                             ; preds = %blas_quickdivide.exit370
  %i.fg = and i64 %.pre-phi, 4294967295
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33
  %i.fj = call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.fi, i32 %i.ff) #7, !srcloc !34
  %i.fk = extractvalue { i32, i32 } %i.fj, 0
  store volatile i32 %i.fk, ptr %i.a, align 4, !tbaa !33
  %.0..0..0..0..0..0..i371 = load volatile i32, ptr %i.a, align 4, !tbaa !33
  br label %blas_quickdivide.exit373

blas_quickdivide.exit373:                         ; preds = %blas_quickdivide.exit370, %bb.p
  %.0.i372 = phi i32 [ %.0..0..0..0..0..0..i371, %bb.p ], [ %i.ff, %blas_quickdivide.exit370 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fl = zext i32 %.0.i372 to i64
  %i.fm = icmp eq i32 %.0.i372, 0
  %i.fn = call i64 @llvm.umin.i64(i64 %.0310383, i64 %i.fl)
  %i.fo = icmp slt i64 %i.ex, 1
  %i.fp = select i1 %i.fo, i1 true, i1 %i.fm
  %.11 = select i1 %i.fp, i64 %.0310383, i64 %i.fn ; 2 uses
  %i.fq = sub nsw i64 %.0310383, %.11
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.1385
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !15
  %i.ft = add nsw i64 %.11, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fb
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %blas_quickdivide.exit373, %blas_quickdivide.exit367
  %.pre-phi408 = phi i64 [ %i.fb, %blas_quickdivide.exit373 ], [ %i.dq, %blas_quickdivide.exit367 ]
  %.1311 = phi i64 [ %i.fq, %blas_quickdivide.exit373 ], [ %i.dm, %blas_quickdivide.exit367 ] ; 2 uses
  %.1309 = phi i64 [ %i.ex, %blas_quickdivide.exit373 ], [ %i.ef, %blas_quickdivide.exit367 ]
  %i.fv = freeze i64 %.pre-phi408                 ; 10 uses
  %i.fw = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %.1385 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 160
  store i32 3, ptr %i.fx, align 8, !tbaa !37
  store ptr @inner_advanced_thread, ptr %i.fw, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %6, ptr %i.fy, align 8, !tbaa !39
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1385
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !40
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store ptr %i.h, ptr %i.gb, align 8, !tbaa !41
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.gd = getelementptr inbounds nuw [168 x i8], ptr %7, i64 %i.fv
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false)
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !42
  %.idx353 = shl nuw nsw i64 %.1385, 6
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx353
  store atomic volatile i64 1, ptr %i.gf release, align 64
  %i.gg = icmp sgt i64 %.1311, 0
  br i1 %i.gg, label %.lr.ph, label %.preheader381.preheader, !llvm.loop !23

.preheader381.preheader:                          ; preds = %bb.q
  store i64 %i.fv, ptr %i.bd, align 8, !tbaa !17
  %xtraiter = and i64 %i.fv, 7                    ; 3 uses
  %9 = icmp ult i64 %i.fv, 8
  %unroll_iter = and i64 %i.fv, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod427 = icmp ne i64 %xtraiter, 0
  br label %.preheader381

.thread:                                          ; preds = %bb.j
  store i64 0, ptr %i.bd, align 8, !tbaa !17
  %spec.select358376 = call i64 @llvm.smin.i64(i64 %i.ca, i64 %.2323) ; 3 uses
  %i.gh = add nsw i64 %i.bi, %.0326               ; 2 uses
  store i64 %i.gh, ptr %i.e, align 16, !tbaa !15
  %i.gi = add nsw i64 %spec.select358376, %i.gh
  store i64 %i.gi, ptr %i.al, align 8, !tbaa !15
  call fastcc void @inner_basic_thread(ptr noundef %6, i64 0, i64 %.1313, ptr noundef %3, ptr noundef %i.au)
  %i.gj = call i32 @dgetrf_single(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %i.au, i64 noundef 0) #7 ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  %i.gl = icmp ne i32 %.1318392, 0
  %or.cond7 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %or.cond7, label %bb.w, label %bb.v

.preheader381:                                    ; preds = %.preheader381.preheader, %.epilog-lcssa
  %.0305389 = phi i64 [ %i.ho, %.epilog-lcssa ], [ 0, %.preheader381.preheader ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [8192 x i8], ptr %8, i64 %.0305389 ; 9 uses
  br i1 %9, label %.preheader379.epil.preheader, label %.preheader379

.preheader379:                                    ; preds = %.preheader381, %.preheader379
  %.0306388 = phi i64 [ %i.hk, %.preheader379 ], [ 0, %.preheader381 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader379 ], [ 0, %.preheader381 ]
  %i.gn = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  store volatile i64 0, ptr %i.gn, align 16, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store volatile i64 0, ptr %i.go, align 16, !tbaa !15
  %i.gp = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  store volatile i64 0, ptr %i.gq, align 16, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 192
  store volatile i64 0, ptr %i.gr, align 16, !tbaa !15
  %i.gs = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 256
  store volatile i64 0, ptr %i.gt, align 16, !tbaa !15
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 320
  store volatile i64 0, ptr %i.gu, align 16, !tbaa !15
  %i.gv = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 384
  store volatile i64 0, ptr %i.gw, align 16, !tbaa !15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 448
  store volatile i64 0, ptr %i.gx, align 16, !tbaa !15
  %i.gy = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 512
  store volatile i64 0, ptr %i.gz, align 16, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 576
  store volatile i64 0, ptr %i.ha, align 16, !tbaa !15
  %i.hb = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 640
  store volatile i64 0, ptr %i.hc, align 16, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 704
  store volatile i64 0, ptr %i.hd, align 16, !tbaa !15
  %i.he = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 768
  store volatile i64 0, ptr %i.hf, align 16, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 832
  store volatile i64 0, ptr %i.hg, align 16, !tbaa !15
  %i.hh = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 896
  store volatile i64 0, ptr %i.hi, align 16, !tbaa !15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 960
  store volatile i64 0, ptr %i.hj, align 16, !tbaa !15
  %i.hk = add nuw i64 %.0306388, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader379, !llvm.loop !24

.unr-lcssa:                                       ; preds = %.preheader379
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader379.epil.preheader

.preheader379.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader381
  %.0306388.epil.init = phi i64 [ 0, %.preheader381 ], [ %i.hk, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod427)
  br label %.preheader379.epil

.preheader379.epil:                               ; preds = %.preheader379.epil, %.preheader379.epil.preheader
  %.0306388.epil = phi i64 [ %.0306388.epil.init, %.preheader379.epil.preheader ], [ %i.hn, %.preheader379.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader379.epil.preheader ], [ %epil.iter.next, %.preheader379.epil ]
  %i.hl = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %.0306388.epil ; 2 uses
  store volatile i64 0, ptr %i.hl, align 16, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  store volatile i64 0, ptr %i.hm, align 16, !tbaa !15
  %i.hn = add nuw i64 %.0306388.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader379.epil, !llvm.loop !25

.epilog-lcssa:                                    ; preds = %.preheader379.epil, %.unr-lcssa
  %i.ho = add nuw i64 %.0305389, 1                ; 2 uses
  %exitcond402.not = icmp eq i64 %i.ho, %i.fv
  br i1 %exitcond402.not, label %bb.r, label %.preheader381, !llvm.loop !26

bb.r:                                             ; preds = %.epilog-lcssa
  %spec.select358 = call i64 @llvm.smin.i64(i64 %i.ca, i64 %.2323) ; 4 uses
  %i.hp = add nsw i64 %i.bi, %.0326               ; 2 uses
  store i64 %i.hp, ptr %i.e, align 16, !tbaa !15
  %i.hq = add nsw i64 %spec.select358, %i.hp
  store i64 %i.hq, ptr %i.al, align 8, !tbaa !15
  %i.hr = getelementptr [168 x i8], ptr %7, i64 %i.fv
  %i.hs = getelementptr i8, ptr %i.hr, i64 -104
  store ptr null, ptr %i.hs, align 8, !tbaa !42
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !44
  %i.ht = call i32 @exec_blas_async(i64 noundef 0, ptr noundef nonnull %7) #7 ; 0 uses
  call fastcc void @inner_basic_thread(ptr noundef %6, i64 0, i64 %.1313, ptr noundef %3, ptr noundef %i.au)
  %i.hu = call i32 @dgetrf_single(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %i.au, i64 noundef 0) #7 ; 2 uses
  br label %.preheader380

.preheader380:                                    ; preds = %bb.r, %bb.t
  %.1307390 = phi i64 [ 0, %bb.r ], [ %i.hx, %bb.t ] ; 2 uses
  %.idx = shl nuw nsw i64 %.1307390, 6
  %i.hv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  br label %bb.s

bb.s:                                             ; preds = %.preheader380, %bb.s
  %i.hw = load atomic volatile i64, ptr %i.hv acquire, align 64
  %.not350 = icmp eq i64 %i.hw, 0
  br i1 %.not350, label %bb.t, label %bb.s, !llvm.loop !27

bb.t:                                             ; preds = %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !45
  %i.hx = add nuw i64 %.1307390, 1                ; 2 uses
  %exitcond403.not = icmp eq i64 %i.hx, %i.fv
  br i1 %exitcond403.not, label %bb.u, label %.preheader380, !llvm.loop !28

bb.u:                                             ; preds = %bb.t
  %i.hy = icmp eq i32 %i.hu, 0
  %i.hz = icmp ne i32 %.1318392, 0
  %or.cond5 = select i1 %i.hy, i1 true, i1 %i.hz
  %i.ia = trunc i64 %i.bi to i32
  %i.ib = add i32 %i.hu, %i.ia
  %.2319 = select i1 %or.cond5, i32 %.1318392, i32 %i.ib
  %i.ic = mul i64 %i.bi, %i.aw
  %i.id = getelementptr inbounds [8 x i8], ptr %.0316, i64 %i.ic
  %i.ie = call i32 @dtrsm_iltucopy(i64 noundef %spec.select358, i64 noundef %spec.select358, ptr noundef %i.id, i64 noundef %i.p, i64 noundef 0, ptr noundef %4) #7 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %.thread
  %i.if = trunc i64 %i.bi to i32
  %i.ig = add i32 %i.gj, %i.if
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.1.lcssa425 = phi i64 [ %i.fv, %bb.u ], [ 0, %.thread ], [ 0, %bb.v ]
  %spec.select358377 = phi i64 [ %spec.select358, %bb.u ], [ %spec.select358376, %.thread ], [ %spec.select358376, %bb.v ]
  %.3320 = phi i32 [ %.2319, %bb.u ], [ %.1318392, %.thread ], [ %i.ig, %bb.v ] ; 2 uses
  %i.ih = icmp slt i64 %i.bi, %i.ae
  br i1 %i.ih, label %bb.f, label %.lr.ph401, !llvm.loop !29

bb.x:                                             ; preds = %.lr.ph401, %bb.z
  %.1303400 = phi i64 [ 0, %.lr.ph401 ], [ %i.ik, %bb.z ] ; 4 uses
  %.3324399 = phi i64 [ %spec.store.select, %.lr.ph401 ], [ %.4325, %bb.z ] ; 2 uses
  %i.ii = sub nsw i64 %i.ae, %.1303400            ; 2 uses
  %spec.select359 = call i64 @llvm.smin.i64(i64 %i.ii, i64 %.3324399) ; 7 uses
  %i.ij = load i64, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.ik = add i64 %spec.select359, %.1303400      ; 5 uses
  %i.il = sub i64 %.0298, %i.ik
  %i.im = sitofp i64 %i.il to double              ; 2 uses
  %i.in = sub i64 %.0327, %i.ik
  %i.io = sitofp i64 %i.in to double
  %i.ip = sitofp i64 %spec.select359 to double    ; 2 uses
  %i.iq = sitofp i64 %i.ij to double              ; 3 uses
  %i.ir = fmul nnan double %i.ip, %i.im
  %i.is = fsub nnan double 1.000000e+00, %i.iq
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %i.ip, %i.im
  %i.iv = fdiv double %i.it, %i.iu
  %i.iw = fadd double %i.iv, %i.io
  %i.ix = fdiv double %i.iw, %i.iq
  %i.iy = fptosi double %i.ix to i64
  %i.iz = add nsw i64 %i.iy, 1
  %i.ja = sdiv i64 %i.iz, 2
  %i.jb = shl nsw i64 %i.ja, 1
  %i.jc = sub nsw i64 %i.ii, %spec.select359
  %.12 = call i64 @llvm.smin.i64(i64 %i.jb, i64 %i.jc)
  %i.jd = icmp slt i64 %.12, %spec.select359
  br i1 %i.jd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.je = sub i64 %.0327, %.1303400
  %i.jf = add nsw i64 %i.je, %spec.select359
  %i.jg = sitofp i64 %i.jf to double
  %i.jh = fdiv double 1.000000e+00, %i.iq
  %i.ji = fsub double 1.000000e+00, %i.jh
  %i.jj = call double @sqrt(double noundef %i.ji) #7
  %i.jk = fsub double 1.000000e+00, %i.jj
  %i.jl = fmul double %i.jk, %i.jg
  %i.jm = fptosi double %i.jl to i64
  %i.jn = add nsw i64 %i.jm, 2
  %i.jo = sdiv i64 %i.jn, 2
  %i.jp = shl nsw i64 %i.jo, 1
  %spec.select360 = call i64 @llvm.smin.i64(i64 %i.jp, i64 %spec.select359)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4325 = phi i64 [ %.3324399, %bb.x ], [ %spec.select360, %bb.y ]
  %i.jq = add i64 %i.bf, %i.ik
  %i.jr = mul nsw i64 %.1303400, %i.p
  %i.js = sub nsw i64 %i.jr, %.0326
  %i.jt = getelementptr inbounds [8 x i8], ptr %.0316, i64 %i.js
  %i.ju = trunc i64 %i.ij to i32
  %i.jv = call i32 @blas_level1_thread(i32 noundef 3, i64 noundef %spec.select359, i64 noundef %i.jq, i64 noundef %i.bg, ptr noundef nonnull %i.f, ptr noundef %i.jt, i64 noundef %i.p, ptr noundef null, i64 noundef 0, ptr noundef %i.r, i64 noundef 1, ptr noundef nonnull @dlaswp_plus, i32 noundef %i.ju) #7 ; 0 uses
  %i.jw = icmp slt i64 %i.ik, %i.ae
  br i1 %i.jw, label %bb.x, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.z, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.c ], [ %i.aj, %bb.e ], [ %.3320, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @dgetf2_k(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dtrsm_iltucopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare i32 @exec_blas_async_wait(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @inner_advanced_thread(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %i.m = mul nsw i64 %i.g, %i.e                   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %.preheader262

bb.b:                                             ; preds = %bb.a
  %i.v = tail call i32 @dtrsm_iltucopy(i64 noundef %i.e, i64 noundef %i.e, ptr noundef %i.k, i64 noundef %i.g, i64 noundef 0, ptr noundef %4) #7 ; 0 uses
  %i.w = mul nsw i64 %i.e, %i.e
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 16383
  %i.aa = and i64 %i.z, -16384
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %.preheader262

.preheader262:                                    ; preds = %bb.a, %bb.b
  %.0227 = phi ptr [ %i.ab, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %i.t, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.ae = load i64, ptr %1, align 8, !tbaa !15    ; 4 uses
  %i.af = sub nsw i64 %i.ad, %i.ae                ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !15 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15 ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ae
  %i.al = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ae
  %reass.sub = sub i64 %i.aj, %i.ah
  %i.am = add i64 %reass.sub, 1
  %i.an = sdiv i64 %i.am, 2                       ; 2 uses
  store ptr %.0227, ptr %i.a, align 16, !tbaa !59
  %i.ao = add nsw i64 %i.an, 1
  %i.ap = sdiv i64 %i.ao, 2
  %.idx254 = mul nsw i64 %i.ap, 6144
  %i.aq = getelementptr inbounds i8, ptr %.0227, i64 %.idx254
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !59
  %i.as = icmp slt i64 %i.ah, %i.aj
  br i1 %i.as, label %.preheader261.lr.ph, label %._crit_edge279

.preheader261.lr.ph:                              ; preds = %.preheader262
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.au = getelementptr inbounds [8192 x i8], ptr %i.c, i64 %5 ; 2 uses
  %i.av = add nsw i64 %i.i, 1
  %i.aw = add nsw i64 %i.i, %i.e
  %i.ax = icmp sgt i64 %i.e, 0
  %.pre = load i64, ptr %i.at, align 8, !tbaa !17
  br label %.preheader261

.preheader261:                                    ; preds = %.preheader261.lr.ph, %._crit_edge274
  %i.ay = phi i64 [ %.pre, %.preheader261.lr.ph ], [ %i.ck, %._crit_edge274 ]
  %.0223278 = phi i64 [ %i.ah, %.preheader261.lr.ph ], [ %i.ba, %._crit_edge274 ] ; 4 uses
  %.0224277 = phi i64 [ 0, %.preheader261.lr.ph ], [ %i.cl, %._crit_edge274 ] ; 5 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.preheader259.lr.ph, label %.preheader260

.preheader259.lr.ph:                              ; preds = %.preheader261
  %.idx252 = shl nuw nsw i64 %.0224277, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx252
  br label %.preheader259

.preheader260:                                    ; preds = %bb.d, %.preheader261
  %i.ba = add nsw i64 %.0223278, %i.an            ; 3 uses
  %i.bb = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.ba) ; 3 uses
  %i.bc = icmp slt i64 %.0223278, %i.bb
  br i1 %i.bc, label %.lr.ph269, label %._crit_edge270

end_hunk_0
begin_hunk_1_@inner_advanced_thread:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !64
  br i1 %.not249, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic volatile i64 0, ptr %i.eg release, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.eq = add nsw i64 %.2282, %i.dr               ; 2 uses
  %i.er = add nuw nsw i64 %.1225281, 1
  %i.es = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.et = icmp slt i64 %i.eq, %i.es
  br i1 %i.et, label %.preheader258, label %._crit_edge285, !llvm.loop !52

._crit_edge285:                                   ; preds = %bb.q, %bb.m, %bb.k
  %i.eu = load i64, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %.not245 = icmp slt i64 %i.dk, %i.eu
  %spec.store.select2 = select i1 %.not245, i64 %i.dk, i64 0 ; 2 uses
  %.not246 = icmp eq i64 %spec.store.select2, %5
  br i1 %.not246, label %bb.r, label %bb.k, !llvm.loop !54

bb.r:                                             ; preds = %._crit_edge285
  br i1 %.not249, label %bb.g, label %.preheader257, !llvm.loop !55

.preheader256:                                    ; preds = %.preheader256.lr.ph, %bb.u
  %.3235294 = phi i64 [ 0, %.preheader256.lr.ph ], [ %i.ez, %bb.u ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [128 x i8], ptr %i.cx, i64 %.3235294 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader256, %bb.s
  %i.ew = load atomic volatile i64, ptr %i.ev acquire, align 8
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %.preheader.1, label %bb.s, !llvm.loop !56

.preheader.1:                                     ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !66
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.1
  %i.ey = load atomic volatile i64, ptr %i.ex acquire, align 8
  %.not.1 = icmp eq i64 %i.ey, 0
  br i1 %.not.1, label %bb.u, label %bb.t, !llvm.loop !56

bb.u:                                             ; preds = %bb.t
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !66
  %i.ez = add nuw nsw i64 %.3235294, 1            ; 2 uses
  %i.fa = load i64, ptr %i.cv, align 8, !tbaa !17
  %i.fb = icmp slt i64 %i.ez, %i.fa
  br i1 %i.fb, label %.preheader256, label %._crit_edge295, !llvm.loop !57

._crit_edge295:                                   ; preds = %bb.u, %.preheader257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

declare i32 @exec_blas_async(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @inner_basic_thread(ptr nofree noundef nonnull readonly captures(none) %0, i64 %.0.val, i64 %.8.val, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.d ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = mul nsw i64 %i.f, %i.d                   ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.n
  %i.q = sub nsw i64 %.8.val, %.0.val             ; 3 uses
  %i.r = mul nsw i64 %i.f, %.0.val                ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.u = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call i32 @dtrsm_iltucopy(i64 noundef %i.d, i64 noundef %i.d, ptr noundef %i.j, i64 noundef %i.f, i64 noundef 0, ptr noundef %2) #7 ; 0 uses
  %i.x = mul nsw i64 %i.d, %i.d
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, 16383
  %i.ab = and i64 %i.aa, -16384
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0124 = phi ptr [ %i.ac, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %i.u, %bb.a ]
  %i.ad = icmp sgt i64 %i.q, 0
  br i1 %i.ad, label %.lr.ph13, label %._crit_edge14

.lr.ph13:                                         ; preds = %bb.c
  %i.ae = add nsw i64 %i.h, 1
  %i.af = add nsw i64 %i.h, %i.d
  %i.ag = icmp sgt i64 %i.d, 0
  %i.ah = icmp sgt i64 %i.b, 0
  br label %bb.d

.loopexit:                                        ; preds = %bb.e, %._crit_edge5
  %i.ai = icmp slt i64 %i.bf, %i.q
  br i1 %i.ai, label %bb.d, label %._crit_edge14, !llvm.loop !67

bb.d:                                             ; preds = %.lr.ph13, %.loopexit
  %.012911 = phi i64 [ 0, %.lr.ph13 ], [ %i.bf, %.loopexit ] ; 6 uses
  %i.aj = sub nuw nsw i64 %i.q, %.012911          ; 2 uses
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 8256) ; 2 uses
  %i.ak = add nuw nsw i64 %spec.store.select, %.012911 ; 2 uses
  %i.al = icmp sgt i64 %i.aj, 0
  br i1 %i.al, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %bb.d, %._crit_edge
  %.01282 = phi i64 [ %i.bd, %._crit_edge ], [ %.012911, %bb.d ] ; 4 uses
  %i.am = sub nuw nsw i64 %i.ak, %.01282
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.am, i64 2) ; 3 uses
  %i.an = mul nsw i64 %.01282, %i.f               ; 2 uses
  %i.ao = sub nsw i64 %i.an, %i.h
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = tail call i32 @dlaswp_plus(i64 noundef %spec.store.select1, i64 noundef %i.ae, i64 noundef %i.af, double noundef 0.000000e+00, ptr noundef %i.ap, i64 noundef %i.f, ptr noundef null, i64 noundef 0, ptr noundef %i.m, i64 noundef 1) #7 ; 0 uses
  %i.ar = getelementptr [8 x i8], ptr %i.s, i64 %i.an ; 2 uses
  %i.as = sub nuw nsw i64 %.01282, %.012911
  %i.at = mul nsw i64 %i.as, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %.0124, i64 %i.at ; 2 uses
  %i.av = tail call i32 @dgemm_oncopy(i64 noundef %i.d, i64 noundef %spec.store.select1, ptr noundef %i.ar, i64 noundef %i.f, ptr noundef %i.au) #7 ; 0 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph4, %.lr.ph
  %.01301 = phi i64 [ %i.bb, %.lr.ph ], [ 0, %.lr.ph4 ] ; 5 uses
  %i.aw = sub nuw nsw i64 %i.d, %.01301
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 192)
  %i.ay = mul nuw nsw i64 %.01301, %i.d
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.ay
  %gep = getelementptr [8 x i8], ptr %i.ar, i64 %.01301
  %i.ba = tail call i32 @dtrsm_kernel_LT(i64 noundef %i.ax, i64 noundef %spec.store.select1, i64 noundef %i.d, double noundef -1.000000e+00, ptr noundef %i.az, ptr noundef %i.au, ptr noundef %gep, i64 noundef %i.f, i64 noundef %.01301) #7 ; 0 uses
  %i.bb = add nuw nsw i64 %.01301, 192            ; 2 uses
  %i.bc = icmp slt i64 %i.bb, %i.d
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph4
  %i.bd = add nuw nsw i64 %.01282, 2              ; 2 uses
  %i.be = icmp slt i64 %i.bd, %i.ak
  br i1 %i.be, label %.lr.ph4, label %._crit_edge5, !llvm.loop !69

._crit_edge5:                                     ; preds = %._crit_edge, %bb.d
  %i.bf = add nuw nsw i64 %.012911, 8256          ; 2 uses
  br i1 %i.ah, label %.lr.ph8, label %.loopexit

.lr.ph8:                                          ; preds = %._crit_edge5
  %i.bg = mul nsw i64 %.012911, %i.f
  %invariant.gep9 = getelementptr [8 x i8], ptr %i.t, i64 %i.bg
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph8, %bb.e
  %.16 = phi i64 [ 0, %.lr.ph8 ], [ %i.bm, %bb.e ] ; 4 uses
  %i.bh = sub nuw nsw i64 %i.b, %.16
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 192) ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.16
  %i.bk = tail call i32 @dgemm_itcopy(i64 noundef %i.d, i64 noundef %i.bi, ptr noundef %i.bj, i64 noundef %i.f, ptr noundef %1) #7 ; 0 uses
  %gep10 = getelementptr [8 x i8], ptr %invariant.gep9, i64 %.16
  %i.bl = tail call i32 @dgemm_kernel(i64 noundef %i.bi, i64 noundef %spec.store.select, i64 noundef %i.d, double noundef -1.000000e+00, ptr noundef %1, ptr noundef %.0124, ptr noundef %gep10, i64 noundef %i.f) #7 ; 0 uses
  %i.bm = add nuw nsw i64 %.16, 192               ; 2 uses
  %i.bn = icmp slt i64 %i.bm, %i.b
  br i1 %i.bn, label %bb.e, label %.loopexit, !llvm.loop !70

._crit_edge14:                                    ; preds = %.loopexit, %bb.c
  ret void
}

declare i32 @dgetrf_single(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @blas_level1_thread(i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dlaswp_plus(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dtrsm_kernel_LT(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!11 = !{!10, !9, i64 48}
!12 = !{!10, !8, i64 0}
!13 = !{!10, !9, i64 72}
!14 = !{!10, !8, i64 16}
!15 = !{!9, !9, i64 0}
!16 = !{!10, !8, i64 104}
!17 = !{!10, !9, i64 112}
!18 = !{!10, !8, i64 8}
!19 = !{!10, !8, i64 24}
!20 = !{!10, !9, i64 64}
!21 = !{!10, !9, i64 80}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !43}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = !{!10, !9, i64 56}
!32 = !{i64 2149632118}
!33 = !{!5, !5, i64 0}
!34 = !{i64 1090037}
!35 = !{!"p1 _ZTS10blas_queue", !8, i64 0}
!36 = !{!"blas_queue", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !35, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!37 = !{!36, !5, i64 160}
!38 = !{!36, !8, i64 0}
!39 = !{!36, !8, i64 24}
!40 = !{!36, !8, i64 32}
!41 = !{!36, !8, i64 40}
!42 = !{!36, !35, i64 64}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{i64 2149632280}
!45 = !{i64 2149632426}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = !{!"p1 double", !8, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{i64 2149629192}
!61 = !{i64 2149629682}
!62 = !{i64 2149629852}
!63 = !{i64 2149629973}
!64 = !{i64 2149630976}
!65 = !{i64 2149630553}
!66 = !{i64 2149631200}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
end_hunk_1
