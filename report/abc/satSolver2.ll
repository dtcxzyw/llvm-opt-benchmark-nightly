Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver2?download=true
inline.NumInlined: 491
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@sat_solver2_memory:bb.a
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = uitofp i64 %i.p to double
  %i.r = fadd double %i.k, %i.q
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = uitofp i64 %i.w to double
  %i.y = fadd double %i.r, %i.x
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !45
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = uitofp i64 %i.ad to double
  %i.af = fadd double %i.y, %i.ae                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !193

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.059.epil.init = phi double [ 6.160000e+02, %.lr.ph ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.059.epil = phi double [ %.059.epil.init, %.epil.preheader ], [ %i.al, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !45
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = uitofp i64 %i.aj to double
  %i.al = fadd double %.059.epil, %i.ak           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.c, !llvm.loop !194

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.c, %bb.a
  %.1 = phi double [ 6.160000e+02, %bb.a ], [ %i.af, %.loopexit.loopexit.unr-lcssa ], [ %i.al, %bb.c ]
  %i.am = sext i32 %.pre to i64                   ; 3 uses
  %i.an = shl nsw i64 %i.am, 4
  %i.ao = uitofp i64 %i.an to double
  %i.ap = fadd double %.1, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !195
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = uitofp i64 %i.at to double
  %i.av = fadd double %i.ap, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = uitofp i64 %i.az to double
  %i.bb = fadd double %i.av, %i.ba
  %i.bc = shl nsw i64 %i.am, 2
  %i.bd = uitofp i64 %i.bc to double              ; 9 uses
  %i.be = fadd double %i.bb, %i.bd
  %i.bf = fadd double %i.be, %i.bd
  %i.bg = uitofp i64 %i.am to double
  %i.bh = fadd double %i.bf, %i.bg
  %i.bi = fadd double %i.bh, %i.bd                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %.not57 = icmp eq ptr %i.bk, null
  %i.bl = fadd double %i.bi, %i.bd
  %.2 = select i1 %.not57, double %i.bi, double %i.bl
  %i.bm = fadd double %.2, %i.bd
  %i.bn = fadd double %i.bm, %i.bd
  %i.bo = fadd double %i.bn, %i.bd
  %i.bp = fadd double %i.bo, %i.bd
  %i.bq = fadd double %i.bp, %i.bd
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !197
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 2
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fadd double %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !198
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %i.cb = uitofp i64 %i.ca to double
  %i.cc = fadd double %i.bw, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !199
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = uitofp i64 %i.cg to double
  %i.ci = fadd double %i.cc, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !200
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 2
  %i.cn = uitofp i64 %i.cm to double
  %i.co = fadd double %i.ci, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !201
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 2
  %i.ct = uitofp i64 %i.cs to double
  %i.cu = fadd double %i.co, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !202
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2
  %i.cz = uitofp i64 %i.cy to double
  %i.da = fadd double %i.cu, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !203
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 2
  %i.df = uitofp i64 %i.de to double
  %i.dg = fadd double %i.da, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !204
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2
  %i.dl = uitofp i64 %i.dk to double
  %i.dm = fadd double %i.dg, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !205
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 2
  %i.dr = uitofp i64 %i.dq to double
  %i.ds = fadd double %i.dm, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !206
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = uitofp i64 %i.dw to double
  %i.dy = fadd double %i.ds, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !36
  %i.ed = add i32 %i.ea, 2
  %i.ee = add i32 %i.ed, %i.ec
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !41
  %i.ei = add nsw i32 %i.eh, 2
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fmul nnan double %i.ef, %i.ek
  %i.em = fadd double %i.el, %i.dy
  ret double %i.em
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @sat_solver2_memory_proof(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load double, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = uitofp i64 %i.h to double
  %i.j = fadd double %i.i, 3.200000e+01
  %i.k = load i32, ptr %i.d, align 8, !tbaa !83
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl i64 8, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !81
  %i.p = add nsw i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = mul i64 %i.m, %i.q
  %i.s = uitofp i64 %i.r to double
  %i.t = fadd double %i.j, %i.s
  %i.u = fadd double %i.b, %i.t
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.u, %bb.b ], [ %i.b, %bb.a ]
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef i32 @sat_solver2_check_watched(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %1 = alloca [2 x i32], align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %1, align 8
  %i.a = load i32, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr i8, ptr %0, i64 152
  %i.f = getelementptr i8, ptr %0, i64 156
  %i.g = getelementptr i8, ptr %0, i64 168
  %i.h = getelementptr i8, ptr %0, i64 248
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %._crit_edge49
  %i.i = phi i32 [ %i.a, %.lr.ph53 ], [ %i.ap, %._crit_edge49 ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next60, %._crit_edge49 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv59 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 4        ; 3 uses
  %.val3344 = load i32, ptr %i.l, align 4, !tbaa !39 ; 2 uses
  %i.m = icmp sgt i32 %.val3344, 0
  br i1 %i.m, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %bb.b
  %.val6.i.i.pre = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.e
  %.val3362 = phi i32 [ %.val3344, %.lr.ph48.preheader ], [ %.val33, %bb.e ]
  %indvars.iv56 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next57, %bb.e ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph48.preheader ], [ %.1, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv56
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36   ; 4 uses
  %.not.i.i = icmp ne i32 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %.val.i.i = load i32, ptr %i.e, align 8, !tbaa !41
  %i.p = ashr i32 %i.o, %.val.i.i
  %.val5.i.i = load i32, ptr %i.f, align 4, !tbaa !42
  %i.q = and i32 %.val5.i.i, %i.o
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %.val6.i.i.pre, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.v, align 4              ; 2 uses
  %i.y = lshr i32 %i.x, 11                        ; 3 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph48
  %.val34 = load ptr, ptr %i.h, align 8, !tbaa !30
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36  ; 2 uses
  %i.ab = ashr i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %.val34, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.af = sext i8 %i.ae to i32
  %i.ag = and i32 %i.aa, 1
  %i.ah = icmp eq i32 %i.ag, %i.af
  br i1 %i.ah, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.c, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.c
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = icmp eq i32 %i.y, %i.ai
  br i1 %i.aj, label %._crit_edge.thread, label %2

._crit_edge.thread:                               ; preds = %bb.d, %.lr.ph48, %._crit_edge
  %i.ak = add nsw i32 %.046, 1
  %i.al = sext i32 %.046 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.al
  store i32 %i.o, ptr %i.am, align 4, !tbaa !36
  %.val33.pre = load i32, ptr %i.l, align 4, !tbaa !39
  br label %bb.e

2:                                                ; preds = %._crit_edge
  %3 = and i32 %i.x, 1
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4 ; 2 uses
  %6 = load i32, ptr %5, align 4, !tbaa !36
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %2, %._crit_edge.thread
  %.val33 = phi i32 [ %.val33.pre, %._crit_edge.thread ], [ %.val3362, %2 ] ; 2 uses
  %.1 = phi i32 [ %i.ak, %._crit_edge.thread ], [ %.046, %2 ] ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.an = sext i32 %.val33 to i64
  %i.ao = icmp slt i64 %indvars.iv.next57, %i.an
  br i1 %i.ao, label %.lr.ph48, label %._crit_edge49.loopexit, !llvm.loop !208

._crit_edge49.loopexit:                           ; preds = %bb.e
  %.pre = load i32, ptr %0, align 8, !tbaa !99
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %bb.b
  %i.ap = phi i32 [ %i.i, %bb.b ], [ %.pre, %._crit_edge49.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %._crit_edge49.loopexit ]
  store i32 %.0.lcssa, ptr %i.l, align 4, !tbaa !39
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next60, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge54, !llvm.loop !209

._crit_edge54:                                    ; preds = %._crit_edge49, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @sat_solver2_solve(ptr noundef initializes((16, 20), (480, 488), (592, 608)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 -1, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 4 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %.not = icmp eq i64 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.f = load i64, ptr %i.e, align 8, !tbaa !228
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !229
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.not114 = icmp eq i64 %4, 0
  br i1 %.not114, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = add nsw i64 %i.j, %4                     ; 2 uses
  store i64 %i.k, ptr %i.d, align 8, !tbaa !230
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %.not115 = icmp eq i64 %5, 0
  br i1 %.not115, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %i.h, 0
  %i.n = icmp sgt i64 %i.h, %5
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %5, ptr %i.c, align 8, !tbaa !229
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.not116 = icmp eq i64 %6, 0
  br i1 %.not116, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp eq i64 %i.l, 0
  %i.p = icmp sgt i64 %i.l, %6
  %or.cond125 = or i1 %i.o, %i.p
  br i1 %or.cond125, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %6, ptr %i.d, align 8, !tbaa !230
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !109
  %i.w = icmp ult ptr %1, %2
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.z = getelementptr i8, ptr %0, i64 348        ; 8 uses
  %i.aa = getelementptr i8, ptr %0, i64 352       ; 5 uses
  %i.ab = getelementptr i8, ptr %0, i64 248       ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 272       ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  br label %bb.m

bb.l:                                             ; preds = %.critedge127
  %i.af = getelementptr inbounds nuw i8, ptr %.099228, i64 4 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %2
  br i1 %i.ag, label %bb.m, label %._crit_edge, !llvm.loop !210

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.099228 = phi ptr [ %1, %.lr.ph ], [ %i.af, %bb.l ] ; 2 uses
  %i.ah = load i32, ptr %.099228, align 4, !tbaa !36 ; 7 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !33
  %i.aj = load i32, ptr %i.z, align 4, !tbaa !39  ; 5 uses
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !45
  %i.al = icmp eq i32 %i.aj, %i.ak
  %.pre263 = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 3 uses
  br i1 %i.al, label %bb.n, label %veci_push.exit

bb.n:                                             ; preds = %bb.m
  %i.am = icmp slt i32 %i.aj, 4
  %i.an = shl nsw i32 %i.aj, 1
  %i.ao = lshr i32 %i.aj, 1
  %i.ap = mul nuw nsw i32 %i.ao, 3
  %i.aq = select i1 %i.am, i32 %i.an, i32 %i.ap   ; 3 uses
  %.not.i = icmp eq ptr %.pre263, null
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 2                    ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call ptr @realloc(ptr noundef nonnull %.pre263, i64 noundef %i.as) #26
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.as) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = phi ptr [ %i.at, %bb.o ], [ %i.au, %bb.p ] ; 3 uses
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !38
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !45
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fmul nnan double %i.ay, f0x3EB0000000000000
  %i.ba = sitofp i32 %i.aq to double
  %i.bb = fmul nnan double %i.ba, f0x3EB0000000000000
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.az, double noundef %i.bb) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !47
  %i.be = tail call i32 @fflush(ptr noundef %i.bd) ; 0 uses
  %.pre.pre = load ptr, ptr %i.aa, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre = phi ptr [ %.pre.pre, %bb.r ], [ %i.av, %bb.q ]
  store i32 %i.aq, ptr %i.x, align 8, !tbaa !45
  %.pre.i = load i32, ptr %i.z, align 4, !tbaa !39
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.m, %bb.s
  %i.bf = phi ptr [ %.pre, %bb.s ], [ %.pre263, %bb.m ]
  %i.bg = phi i32 [ %.pre.i, %bb.s ], [ %i.aj, %bb.m ] ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.z, align 4, !tbaa !39
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bi
  store i32 %i.ai, ptr %i.bj, align 4, !tbaa !36
  %i.bk = ashr i32 %i.ah, 1
  %.val20.i = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.bl = sext i32 %i.bk to i64                   ; 5 uses
  %i.bm = getelementptr inbounds i8, ptr %.val20.i, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31  ; 2 uses
  %.not.i130 = icmp eq i8 %i.bn, 3
  br i1 %.not.i130, label %solver2_enqueue.exit.thread, label %solver2_enqueue.exit

solver2_enqueue.exit.thread:                      ; preds = %veci_push.exit
  %i.bo = trunc i32 %i.ah to i8
  %i.bp = and i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !31
  %.val21.i = load i32, ptr %i.z, align 4, !tbaa !39
  %.val23.i = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.bq = getelementptr inbounds [4 x i8], ptr %.val23.i, i64 %i.bl
  store i32 %.val21.i, ptr %i.bq, align 4, !tbaa !36
  %i.br = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bl
  store i32 0, ptr %i.bs, align 4, !tbaa !36
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.bu = load i32, ptr %i.y, align 4, !tbaa !33  ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.y, align 4, !tbaa !33
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bw
  store i32 %i.ah, ptr %i.bx, align 4, !tbaa !36
  br label %.critedge127

solver2_enqueue.exit:                             ; preds = %veci_push.exit
  %i.by = sext i8 %i.bn to i32
  %i.bz = and i32 %i.ah, 1
  %.not194 = icmp eq i32 %i.bz, %i.by
  br i1 %.not194, label %.critedge127, label %bb.t

bb.t:                                             ; preds = %solver2_enqueue.exit
  %.val129 = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.ca = getelementptr inbounds [4 x i8], ptr %.val129, i64 %i.bl
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !36 ; 3 uses
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %clause2_read.exit.thread, label %clause2_read.exit

clause2_read.exit:                                ; preds = %bb.t
  %i.cc = getelementptr i8, ptr %0, i64 152
  %.val.i.i = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.cd = ashr i32 %i.cb, %.val.i.i
  %i.ce = getelementptr i8, ptr %0, i64 168
end_hunk_0
