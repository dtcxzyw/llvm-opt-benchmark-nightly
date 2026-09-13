Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sliba?download=true
inline.NumInlined: 128
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@arcons:bb.a

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %.368.epil = phi i64 [ %i.da, %.lr.ph69.epil ], [ %.368.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %epil.iter101 = phi i64 [ %epil.iter101.next, %.lr.ph69.epil ], [ 0, %.lr.ph69.epil.preheader ]
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.368.epil
  store i8 0, ptr %i.cz, align 1, !tbaa !23
  %i.da = add nuw nsw i64 %.368.epil, 1
  %epil.iter101.next = add i64 %epil.iter101, 1   ; 2 uses
  %epil.iter101.cmp.not = icmp eq i64 %epil.iter101.next, %xtraiter100
  br i1 %epil.iter101.cmp.not, label %.loopexit, label %.lr.ph69.epil, !llvm.loop !70

.loopexit.loopexit92.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit92.unr-lcssa, %.lr.ph.preheader
  %.465.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cq, %.loopexit.loopexit92.unr-lcssa ]
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.465.epil = phi i64 [ %i.dd, %.lr.ph.epil ], [ %.465.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.db = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.465.epil
  store ptr null, ptr %i.dc, align 8, !tbaa !19
  %i.dd = add nuw nsw i64 %.465.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !71

.loopexit:                                        ; preds = %.loopexit.loopexit92.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit91.unr-lcssa, %.lr.ph69.epil, %.loopexit.loopexit90.unr-lcssa, %.lr.ph71.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph73.epil, %bb.e, %.loopexit63, %bb.c, %bb.b, %bb.f
  %i.de = trunc i64 %0 to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !22
  %i.dg = tail call i64 @no_interrupt(i64 noundef %i.a) #24 ; 0 uses
  ret ptr %i.b
}

declare ptr @errswitch() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mallocl(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = and i64 %1, 7
  %.not = icmp ne i64 %i.b, 0
  %i.c = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %i.a, %i.c       ; 2 uses
  %i.d = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.e = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select, ptr %i.f, align 8, !tbaa !23
  %i.g = shl i64 %spec.select, 3
  %i.h = tail call ptr @must_malloc(i64 noundef %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 15, ptr %i.j, align 2, !tbaa !22
  %i.k = tail call i64 @no_interrupt(i64 noundef %i.d) #24 ; 0 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !23
  store ptr %i.l, ptr %0, align 8, !tbaa !73
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cons_array(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !22
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !23 ; 2 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  br i1 %i.g, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.h = tail call ptr @err(ptr noundef nonnull @.str.23, ptr noundef %0) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.i = fptosi double %i.f to i64                ; 31 uses
  %i.j = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.k = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 16 uses
  %i.l = tail call ptr @cintern(ptr noundef nonnull @.str.24) #24
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 14, ptr %i.n, align 2, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.o, align 8, !tbaa !23
  %i.p = shl i64 %i.i, 3
  %i.q = tail call ptr @must_malloc(i64 noundef %i.p) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %bb.e
  %xtraiter126 = and i64 %i.i, 3                  ; 3 uses
  %i.t = icmp ult i64 %i.i, 4
  br i1 %i.t, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter130 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83, %.lr.ph83.preheader.new
  %.082 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %i.af, %.lr.ph83 ] ; 5 uses
  %niter131 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %niter131.next.3, %.lr.ph83 ]
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.082
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !28
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.082
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !28
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.082
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !28
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.082
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !28
  %i.af = add nuw nsw i64 %.082, 4                ; 2 uses
  %niter131.next.3 = add nuw nsw i64 %niter131, 4 ; 2 uses
  %niter131.ncmp.3 = icmp eq i64 %niter131.next.3, %unroll_iter130
  br i1 %niter131.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph83, !llvm.loop !74

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call ptr @cintern(ptr noundef nonnull @.str.25) #24
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 15, ptr %i.ai, align 2, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.aj, align 8, !tbaa !23
  %i.ak = shl i64 %i.i, 3
  %i.al = tail call ptr @must_malloc(i64 noundef %i.ak) #24
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !23
  %i.an = icmp sgt i64 %i.i, 0
  br i1 %i.an, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %bb.g
  %xtraiter120 = and i64 %i.i, 3                  ; 3 uses
  %i.ao = icmp ult i64 %i.i, 4
  br i1 %i.ao, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader.new

.lr.ph81.preheader.new:                           ; preds = %.lr.ph81.preheader
  %unroll_iter124 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader.new
  %.180 = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %i.ba, %.lr.ph81 ] ; 5 uses
  %niter125 = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %niter125.next.3, %.lr.ph81 ]
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.180
  store i64 0, ptr %i.aq, align 8, !tbaa !30
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.180
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !30
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.180
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.180
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 0, ptr %i.az, align 8, !tbaa !30
  %i.ba = add nuw nsw i64 %.180, 4                ; 2 uses
  %niter125.next.3 = add nuw nsw i64 %niter125, 4 ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %.loopexit.loopexit103.unr-lcssa, label %.lr.ph81, !llvm.loop !75

bb.h:                                             ; preds = %bb.f
  %i.bb = tail call ptr @cintern(ptr noundef nonnull @.str.26) #24
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 13, ptr %i.bd, align 2, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.be, align 8, !tbaa !23
  %i.bf = add nsw i64 %i.i, 1
  %i.bg = tail call ptr @must_malloc(i64 noundef %i.bf) #24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !23
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.i
  store i8 0, ptr %i.bi, align 1, !tbaa !23
  %i.bj = icmp sgt i64 %i.i, 0
  br i1 %i.bj, label %.lr.ph79.preheader, label %.loopexit

.lr.ph79.preheader:                               ; preds = %bb.i
  %xtraiter114 = and i64 %i.i, 3                  ; 3 uses
  %i.bk = icmp ult i64 %i.i, 4
  br i1 %i.bk, label %.lr.ph79.epil.preheader, label %.lr.ph79.preheader.new

.lr.ph79.preheader.new:                           ; preds = %.lr.ph79.preheader
  %unroll_iter118 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79, %.lr.ph79.preheader.new
  %.278 = phi i64 [ 0, %.lr.ph79.preheader.new ], [ %i.bw, %.lr.ph79 ] ; 5 uses
  %niter119 = phi i64 [ 0, %.lr.ph79.preheader.new ], [ %niter119.next.3, %.lr.ph79 ]
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.278
  store i8 32, ptr %i.bm, align 1, !tbaa !23
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.278
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 32, ptr %i.bp, align 1, !tbaa !23
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.278
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 32, ptr %i.bs, align 1, !tbaa !23
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.278
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 32, ptr %i.bv, align 1, !tbaa !23
  %i.bw = add nuw nsw i64 %.278, 4                ; 2 uses
  %niter119.next.3 = add nuw nsw i64 %niter119, 4 ; 2 uses
  %niter119.ncmp.3 = icmp eq i64 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %.loopexit.loopexit104.unr-lcssa, label %.lr.ph79, !llvm.loop !76

bb.j:                                             ; preds = %bb.h
  %i.bx = tail call ptr @cintern(ptr noundef nonnull @.str.27) #24
  %i.by = icmp eq ptr %i.bx, %1
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 18, ptr %i.bz, align 2, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.ca, align 8, !tbaa !23
  %i.cb = tail call ptr @must_malloc(i64 noundef %i.i) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !23
  %i.cd = icmp sgt i64 %i.i, 0
  br i1 %i.cd, label %.lr.ph77.preheader, label %.loopexit

.lr.ph77.preheader:                               ; preds = %bb.k
  %xtraiter108 = and i64 %i.i, 3                  ; 3 uses
  %i.ce = icmp ult i64 %i.i, 4
  br i1 %i.ce, label %.lr.ph77.epil.preheader, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.preheader
  %unroll_iter112 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.new
  %.376 = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %i.cq, %.lr.ph77 ] ; 5 uses
  %niter113 = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %niter113.next.3, %.lr.ph77 ]
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.376
  store i8 0, ptr %i.cg, align 1, !tbaa !23
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.376
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 0, ptr %i.cj, align 1, !tbaa !23
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.376
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 0, ptr %i.cm, align 1, !tbaa !23
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.376
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 0, ptr %i.cp, align 1, !tbaa !23
  %i.cq = add nuw nsw i64 %.376, 4                ; 2 uses
  %niter113.next.3 = add nuw nsw i64 %niter113, 4 ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %.loopexit.loopexit105.unr-lcssa, label %.lr.ph77, !llvm.loop !77

bb.l:                                             ; preds = %bb.j
  %i.cr = tail call ptr @cintern(ptr noundef nonnull @.str.28) #24
  %i.cs = icmp eq ptr %i.cr, %1
  %i.ct = icmp eq ptr %1, null
  %or.cond = or i1 %i.ct, %i.cs
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 16, ptr %i.cu, align 2, !tbaa !22
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.cv, align 8, !tbaa !23
  %i.cw = shl i64 %i.i, 3
  %i.cx = tail call ptr @must_malloc(i64 noundef %i.cw) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !23
  %i.cz = icmp sgt i64 %i.i, 0
  br i1 %i.cz, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.m
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.da = icmp ult i64 %i.i, 4
  br i1 %i.da, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.475 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dm, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.475
  store ptr null, ptr %i.dc, align 8, !tbaa !19
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.475
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr null, ptr %i.df, align 8, !tbaa !19
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.475
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr null, ptr %i.di, align 8, !tbaa !19
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.475
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr null, ptr %i.dl, align 8, !tbaa !19
  %i.dm = add nuw nsw i64 %.475, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit106.unr-lcssa, label %.lr.ph, !llvm.loop !78

bb.n:                                             ; preds = %bb.l
  %i.dn = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef nonnull %1) #24 ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph83
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod128.not, label %.loopexit, label %.lr.ph83.epil.preheader

.lr.ph83.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph83.preheader
  %.082.epil.init = phi i64 [ 0, %.lr.ph83.preheader ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %.lr.ph83.epil

.lr.ph83.epil:                                    ; preds = %.lr.ph83.epil, %.lr.ph83.epil.preheader
  %.082.epil = phi i64 [ %i.dq, %.lr.ph83.epil ], [ %.082.epil.init, %.lr.ph83.epil.preheader ] ; 2 uses
  %epil.iter127 = phi i64 [ %epil.iter127.next, %.lr.ph83.epil ], [ 0, %.lr.ph83.epil.preheader ]
  %i.do = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.082.epil
  store double 0.000000e+00, ptr %i.dp, align 8, !tbaa !28
  %i.dq = add nuw nsw i64 %.082.epil, 1
  %epil.iter127.next = add i64 %epil.iter127, 1   ; 2 uses
  %epil.iter127.cmp.not = icmp eq i64 %epil.iter127.next, %xtraiter126
  br i1 %epil.iter127.cmp.not, label %.loopexit, label %.lr.ph83.epil, !llvm.loop !79

.loopexit.loopexit103.unr-lcssa:                  ; preds = %.lr.ph81
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %.loopexit, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit.loopexit103.unr-lcssa, %.lr.ph81.preheader
  %.180.epil.init = phi i64 [ 0, %.lr.ph81.preheader ], [ %i.ba, %.loopexit.loopexit103.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph81.epil

.lr.ph81.epil:                                    ; preds = %.lr.ph81.epil, %.lr.ph81.epil.preheader
  %.180.epil = phi i64 [ %i.dt, %.lr.ph81.epil ], [ %.180.epil.init, %.lr.ph81.epil.preheader ] ; 2 uses
  %epil.iter121 = phi i64 [ %epil.iter121.next, %.lr.ph81.epil ], [ 0, %.lr.ph81.epil.preheader ]
  %i.dr = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.180.epil
  store i64 0, ptr %i.ds, align 8, !tbaa !30
  %i.dt = add nuw nsw i64 %.180.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %.loopexit, label %.lr.ph81.epil, !llvm.loop !80

.loopexit.loopexit104.unr-lcssa:                  ; preds = %.lr.ph79
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %.loopexit, label %.lr.ph79.epil.preheader

.lr.ph79.epil.preheader:                          ; preds = %.loopexit.loopexit104.unr-lcssa, %.lr.ph79.preheader
  %.278.epil.init = phi i64 [ 0, %.lr.ph79.preheader ], [ %i.bw, %.loopexit.loopexit104.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph79.epil

.lr.ph79.epil:                                    ; preds = %.lr.ph79.epil, %.lr.ph79.epil.preheader
  %.278.epil = phi i64 [ %i.dw, %.lr.ph79.epil ], [ %.278.epil.init, %.lr.ph79.epil.preheader ] ; 2 uses
  %epil.iter115 = phi i64 [ %epil.iter115.next, %.lr.ph79.epil ], [ 0, %.lr.ph79.epil.preheader ]
  %i.du = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.278.epil
  store i8 32, ptr %i.dv, align 1, !tbaa !23
  %i.dw = add nuw nsw i64 %.278.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
end_hunk_0
