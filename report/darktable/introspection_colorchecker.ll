Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 63
begin_hunk_0_@gauss_solve:bb.a
  %gep.i.112 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ac
  %i.ad = load double, ptr %gep.i.112, align 8, !tbaa !47
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, %i.r
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.1 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !47
  %i.ah = fadd reassoc nsz arcp contract afn double %i.ag, %i.ae
  store double %i.ah, ptr %i.af, align 8, !tbaa !47
  %indvars.iv.next60.i.113 = add nuw nsw i64 %indvars.iv59.i.1, 1 ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv.next60.i.113, %i.f
  %gep.i.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ai
  %i.aj = load double, ptr %gep.i.1.1, align 8, !tbaa !47
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, %i.r
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.113 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !47
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ak
  store double %i.an, ptr %i.al, align 8, !tbaa !47
  %indvars.iv.next60.i.1.1 = add nuw nsw i64 %indvars.iv59.i.1, 2 ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv.next60.i.1.1, %i.f
  %gep.i.2.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ao
  %i.ap = load double, ptr %gep.i.2.1, align 8, !tbaa !47
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, %i.r
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.1.1 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !47
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.aq
  store double %i.at, ptr %i.ar, align 8, !tbaa !47
  %indvars.iv.next60.i.2.1 = add nuw nsw i64 %indvars.iv59.i.1, 3 ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv.next60.i.2.1, %i.f
  %gep.i.3.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.au
  %i.av = load double, ptr %gep.i.3.1, align 8, !tbaa !47
  %i.aw = fmul reassoc nsz arcp contract afn double %i.av, %i.r
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.2.1 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !47
  %i.az = fadd reassoc nsz arcp contract afn double %i.ay, %i.aw
  store double %i.az, ptr %i.ax, align 8, !tbaa !47
  %indvars.iv.next60.i.3.1 = add nuw nsw i64 %indvars.iv59.i.1, 4 ; 2 uses
  %exitcond.not.i.3.1 = icmp eq i64 %indvars.iv.next60.i.3.1, %i.f
  br i1 %exitcond.not.i.3.1, label %.lr.ph58.i, label %.lr.ph.i.1

.lr.ph58.i:                                       ; preds = %.lr.ph.i.prol.loopexit.1, %.lr.ph.i.1, %.lr.ph.i.prol.loopexit
  %i.ba = add nuw nsw i32 %2, 1
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = mul nuw nsw i64 %wide.trip.count65.i, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %wide.trip.count65.i ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !47
  %i.bh = fdiv reassoc nsz arcp contract afn double %i.bg, %i.be ; 2 uses
  store double %i.bh, ptr %i.bf, align 8, !tbaa !47
  %invariant.gep75.i = getelementptr [8 x i8], ptr %0, i64 %wide.trip.count65.i
  %lcmp.mod16 = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.b

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv59.i.prol = phi i64 [ %indvars.iv.next60.i.prol, %.lr.ph.i.prol ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.bi = mul nuw nsw i64 %indvars.iv59.i.prol, %i.f
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bj = load double, ptr %gep.i.prol, align 8, !tbaa !47
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bj, %i.k
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.prol ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !47
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bm, %i.bk
  store double %i.bn, ptr %i.bl, align 8, !tbaa !47
  %indvars.iv.next60.i.prol = add nuw nsw i64 %indvars.iv59.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !185

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %exitcond66.not.i = icmp eq i32 %i.e, 1
  br i1 %exitcond66.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i.1

bb.b:                                             ; preds = %bb.b, %.lr.ph58.i
  %indvars.iv67.i.epil = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next68.i.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph58.i ], [ %epil.iter.next, %bb.b ]
  %i.bo = mul nuw nsw i64 %indvars.iv67.i.epil, %i.f
  %gep76.i.epil = getelementptr [8 x i8], ptr %invariant.gep75.i, i64 %i.bo
  %i.bp = load double, ptr %gep76.i.epil, align 8, !tbaa !47
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, %i.bh
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.epil ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !47
  %i.bt = fsub reassoc nsz arcp contract afn double %i.bs, %i.bq
  store double %i.bt, ptr %i.br, align 8, !tbaa !47
  %indvars.iv.next68.i.epil = add nuw nsw i64 %indvars.iv67.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count65.i
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !186

.epilog-lcssa:                                    ; preds = %bb.b
  %indvars.iv.next73.i = add nsw i64 %wide.trip.count65.i, -1 ; 5 uses
  %.not19 = icmp eq i32 %2, 2
  br i1 %.not19, label %gauss_solve_triangular.exit, label %bb.c

bb.c:                                             ; preds = %.epilog-lcssa
  %i.bu = mul nuw nsw i64 %indvars.iv.next73.i, %i.bb
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next73.i ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !47
  %i.bz = fdiv reassoc nsz arcp contract afn double %i.by, %i.bw ; 6 uses
  store double %i.bz, ptr %i.bx, align 8, !tbaa !47
  %invariant.gep75.i.1 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next73.i ; 5 uses
  %xtraiter14.1 = and i64 %indvars.iv.next73.i, 3 ; 3 uses
  %i.ca = add nsw i32 %2, -3
  %i.cb = icmp ult i32 %i.ca, 3
  br i1 %i.cb, label %.epil.preheader.1, label %.new.1

.new.1:                                           ; preds = %bb.c
  %unroll_iter.1 = and i64 %indvars.iv.next73.i, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new.1
  %indvars.iv67.i.1 = phi i64 [ 0, %.new.1 ], [ %indvars.iv.next68.i.3.1, %bb.d ] ; 6 uses
  %niter.1 = phi i64 [ 0, %.new.1 ], [ %niter.next.3.1, %bb.d ]
  %i.cc = mul nuw nsw i64 %indvars.iv67.i.1, %i.f
  %gep76.i.117 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.cc
  %i.cd = load double, ptr %gep76.i.117, align 8, !tbaa !47
  %i.ce = fmul reassoc nsz arcp contract afn double %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.1 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !47
  %i.ch = fsub reassoc nsz arcp contract afn double %i.cg, %i.ce
  store double %i.ch, ptr %i.cf, align 8, !tbaa !47
  %indvars.iv.next68.i.118 = or disjoint i64 %indvars.iv67.i.1, 1 ; 2 uses
  %i.ci = mul nuw nsw i64 %indvars.iv.next68.i.118, %i.f
  %gep76.i.1.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.ci
  %i.cj = load double, ptr %gep76.i.1.1, align 8, !tbaa !47
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, %i.bz
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.118 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !47
  %i.cn = fsub reassoc nsz arcp contract afn double %i.cm, %i.ck
  store double %i.cn, ptr %i.cl, align 8, !tbaa !47
  %indvars.iv.next68.i.1.1 = or disjoint i64 %indvars.iv67.i.1, 2 ; 2 uses
  %i.co = mul nuw nsw i64 %indvars.iv.next68.i.1.1, %i.f
  %gep76.i.2.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.co
  %i.cp = load double, ptr %gep76.i.2.1, align 8, !tbaa !47
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, %i.bz
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.1.1 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !47
  %i.ct = fsub reassoc nsz arcp contract afn double %i.cs, %i.cq
  store double %i.ct, ptr %i.cr, align 8, !tbaa !47
  %indvars.iv.next68.i.2.1 = or disjoint i64 %indvars.iv67.i.1, 3 ; 2 uses
  %i.cu = mul nuw nsw i64 %indvars.iv.next68.i.2.1, %i.f
  %gep76.i.3.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.cu
  %i.cv = load double, ptr %gep76.i.3.1, align 8, !tbaa !47
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cv, %i.bz
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.2.1 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !47
  %i.cz = fsub reassoc nsz arcp contract afn double %i.cy, %i.cw
  store double %i.cz, ptr %i.cx, align 8, !tbaa !47
  %indvars.iv.next68.i.3.1 = add nuw nsw i64 %indvars.iv67.i.1, 4 ; 2 uses
  %niter.next.3.1 = add i64 %niter.1, 4           ; 2 uses
  %niter.ncmp.3.1 = icmp eq i64 %niter.next.3.1, %unroll_iter.1
  br i1 %niter.ncmp.3.1, label %.unr-lcssa.1, label %bb.d

.unr-lcssa.1:                                     ; preds = %bb.d
  %lcmp.mod15.1.not = icmp eq i64 %xtraiter14.1, 0
  br i1 %lcmp.mod15.1.not, label %gauss_solve_triangular.exit, label %.epil.preheader.1

.epil.preheader.1:                                ; preds = %.unr-lcssa.1, %bb.c
  %indvars.iv67.i.epil.init.1 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next68.i.3.1, %.unr-lcssa.1 ]
  %lcmp.mod16.1 = icmp ne i64 %xtraiter14.1, 0
  tail call void @llvm.assume(i1 %lcmp.mod16.1)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader.1
  %indvars.iv67.i.epil.1 = phi i64 [ %indvars.iv67.i.epil.init.1, %.epil.preheader.1 ], [ %indvars.iv.next68.i.epil.1, %bb.e ] ; 3 uses
  %epil.iter.1 = phi i64 [ 0, %.epil.preheader.1 ], [ %epil.iter.next.1, %bb.e ]
  %i.da = mul nuw nsw i64 %indvars.iv67.i.epil.1, %i.f
  %gep76.i.epil.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.da
  %i.db = load double, ptr %gep76.i.epil.1, align 8, !tbaa !47
  %i.dc = fmul reassoc nsz arcp contract afn double %i.db, %i.bz
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.epil.1 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !47
  %i.df = fsub reassoc nsz arcp contract afn double %i.de, %i.dc
  store double %i.df, ptr %i.dd, align 8, !tbaa !47
  %indvars.iv.next68.i.epil.1 = add nuw nsw i64 %indvars.iv67.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %xtraiter14.1
  br i1 %epil.iter.cmp.1.not, label %gauss_solve_triangular.exit, label %bb.e, !llvm.loop !186

gauss_solve_triangular.exit:                      ; preds = %.unr-lcssa.1, %bb.e, %.epilog-lcssa
  %i.dg = load double, ptr %0, align 8, !tbaa !47
  %i.dh = load double, ptr %1, align 8, !tbaa !47
  %i.di = fdiv reassoc nsz arcp contract afn double %i.dh, %i.dg
  store double %i.di, ptr %1, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %gauss_solve_triangular.exit, %bb.a
  tail call void @free(ptr noundef %i.c) #23
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @gauss_make_triangular(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 2, 54) %2) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  store i32 %i.a, ptr %i.c, align 4, !tbaa !15
  %i.d = zext nneg i32 %2 to i64                  ; 24 uses
  %i.e = zext nneg i32 %2 to i64                  ; 8 uses
  %i.f = shl nuw nsw i64 %i.d, 3                  ; 4 uses
  %i.g = shl nuw nsw i64 %i.d, 3
  %3 = add nuw nsw i64 %i.f, 8                    ; 2 uses
  %i.h = add nsw i64 %i.f, -8
  %4 = mul nsw i64 %i.h, %i.d
  %i.i = mul nuw nsw i64 %i.d, %i.d
  %i.j = shl nuw nsw i64 %i.i, 3
  %scevgep178 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  %i.k = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.l = add nuw nsw i64 %i.k, 8
  %scevgep209 = getelementptr i8, ptr %0, i64 %i.k
  %i.m = add nsw i64 %i.e, -2
  %5 = getelementptr i8, ptr %0, i64 %i.f
  %6 = getelementptr i8, ptr %0, i64 %4
  %7 = getelementptr i8, ptr %6, i64 8
  %i.n = getelementptr i8, ptr %0, i64 %i.f
  %i.o = getelementptr i8, ptr %0, i64 %3
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge121, %.preheader111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %i.d
  br i1 %exitcond151.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv147 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next148, %.loopexit ] ; 20 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 15 uses
  %i.p = xor i64 %indvars.iv147, -1
  %i.q = add nsw i64 %i.p, %i.e                   ; 2 uses
  %i.r = sub i64 %i.m, %indvars.iv147             ; 2 uses
  %i.s = mul i64 %i.g, %indvars.iv147
  %scevgep = getelementptr i8, ptr %5, i64 %i.s
  %i.t = mul i64 %3, %indvars.iv147               ; 3 uses
  %8 = getelementptr i8, ptr %0, i64 %i.t
  %scevgep175 = getelementptr i8, ptr %8, i64 8
  %9 = shl nuw nsw i64 %indvars.iv147, 3
  %scevgep176 = getelementptr i8, ptr %7, i64 %9
  %scevgep177 = getelementptr i8, ptr %i.n, i64 %i.t
  %scevgep179 = getelementptr i8, ptr %i.o, i64 %i.t ; 2 uses
  %i.u = xor i64 %indvars.iv147, -1
  %i.v = add nsw i64 %i.u, %i.d                   ; 10 uses
  %indvars149 = trunc i64 %indvars.iv147 to i32   ; 4 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 3 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next148, %i.e ; 2 uses
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147 ; 5 uses
  %i.x = getelementptr [8 x i8], ptr %0, i64 %indvars.iv147 ; 5 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv124.prol = phi i64 [ %indvars.iv.next125.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 3 uses
  %.0100112.prol = phi i32 [ %spec.select.prol, %.lr.ph.prol ], [ %indvars149, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = mul nuw nsw i64 %indvars.iv124.prol, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.y
  %i.z = load double, ptr %gep.prol, align 8, !tbaa !47
  %i.aa = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.z)
  %i.ab = mul nsw i32 %.0100112.prol, %2
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !47
  %i.af = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp reassoc nsz arcp contract afn ogt double %i.aa, %i.af
  %i.ah = trunc nuw nsw i64 %indvars.iv124.prol to i32
  %spec.select.prol = select i1 %i.ag, i32 %i.ah, i32 %.0100112.prol ; 3 uses
  %indvars.iv.next125.prol = add nuw nsw i64 %indvars.iv124.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !187

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %indvars.iv124.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next125.prol, %.lr.ph.prol ]
  %.0100112.unr = phi i32 [ %indvars149, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.ai = icmp ult i64 %i.r, 3
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.0100.lcssa = phi i32 [ %indvars149, %bb.b ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.3, %.lr.ph ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv147
  store i32 %.0100.lcssa, ptr %i.aj, align 4, !tbaa !15
  %i.ak = mul nsw i32 %.0100.lcssa, %2
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %0, i64 %indvars.iv147
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !47 ; 7 uses
  %i.ap = mul nuw nsw i64 %indvars.iv147, %i.e    ; 2 uses
  %i.aq = mul nuw nsw i32 %2, %indvars149
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !47
  store double %i.au, ptr %i.an, align 8, !tbaa !47
  store double %i.ao, ptr %i.at, align 8, !tbaa !47
  %i.av = fcmp reassoc nsz arcp contract afn une double %i.ao, 0.000000e+00
  br i1 %i.av, label %.preheader111, label %.critedge

.preheader111:                                    ; preds = %._crit_edge
  br i1 %i.w, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %.preheader111
  %invariant.gep155 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147 ; 5 uses
  %xtraiter228 = and i64 %i.q, 3                  ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph115
  %i.aw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.prol.preheader
  %indvars.iv127.prol = phi i64 [ %indvars.iv, %.prol.preheader ], [ %indvars.iv.next128.prol, %bb.c ] ; 2 uses
  %prol.iter230 = phi i64 [ 0, %.prol.preheader ], [ %prol.iter230.next, %bb.c ]
  %i.ax = mul nuw nsw i64 %indvars.iv127.prol, %i.d
  %gep156.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155, i64 %i.ax ; 2 uses
  %i.ay = load double, ptr %gep156.prol, align 8, !tbaa !47
  %i.az = fneg reassoc nsz arcp contract afn double %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn double %i.az, %i.aw
  store double %i.ba, ptr %gep156.prol, align 8, !tbaa !47
  %indvars.iv.next128.prol = add nuw nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.prol.loopexit, label %bb.c, !llvm.loop !188

.prol.loopexit:                                   ; preds = %bb.c, %.lr.ph115
  %indvars.iv127.unr = phi i64 [ %indvars.iv, %.lr.ph115 ], [ %indvars.iv.next128.prol, %bb.c ]
  %i.bb = icmp ult i64 %i.r, 3
  br i1 %i.bb, label %._crit_edge116, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.prol.loopexit
  %i.bc = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao
  %i.bd = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao
  %i.be = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao
  %i.bf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.3, %.lr.ph ], [ %indvars.iv124.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0100112 = phi i32 [ %spec.select.3, %.lr.ph ], [ %.0100112.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bg = mul nuw nsw i64 %indvars.iv124, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load double, ptr %gep, align 8, !tbaa !47
  %i.bi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bh)
  %i.bj = mul nsw i32 %.0100112, %2
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.x, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !47
  %i.bn = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp reassoc nsz arcp contract afn ogt double %i.bi, %i.bn
  %i.bp = trunc nuw nsw i64 %indvars.iv124 to i32
  %spec.select = select i1 %i.bo, i32 %i.bp, i32 %.0100112 ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.bq = mul nuw nsw i64 %indvars.iv.next125, %i.d
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bq
  %i.br = load double, ptr %gep.1, align 8, !tbaa !47
  %i.bs = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.br)
  %i.bt = mul nsw i32 %spec.select, %2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.x, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !47
  %i.bx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp reassoc nsz arcp contract afn ogt double %i.bs, %i.bx
  %i.bz = trunc nuw nsw i64 %indvars.iv.next125 to i32
  %spec.select.1 = select i1 %i.by, i32 %i.bz, i32 %spec.select ; 2 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %i.ca = mul nuw nsw i64 %indvars.iv.next125.1, %i.d
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ca
  %i.cb = load double, ptr %gep.2, align 8, !tbaa !47
  %i.cc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cb)
  %i.cd = mul nsw i32 %spec.select.1, %2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %i.x, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !47
  %i.ch = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp reassoc nsz arcp contract afn ogt double %i.cc, %i.ch
  %i.cj = trunc nuw nsw i64 %indvars.iv.next125.1 to i32
  %spec.select.2 = select i1 %i.ci, i32 %i.cj, i32 %spec.select.1 ; 2 uses
  %indvars.iv.next125.2 = add nuw nsw i64 %indvars.iv124, 3 ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv.next125.2, %i.d
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ck
  %i.cl = load double, ptr %gep.3, align 8, !tbaa !47
  %i.cm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cl)
  %i.cn = mul nsw i32 %spec.select.2, %2
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.x, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !47
  %i.cr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp reassoc nsz arcp contract afn ogt double %i.cm, %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv.next125.2 to i32
  %spec.select.3 = select i1 %i.cs, i32 %i.ct, i32 %spec.select.2 ; 2 uses
  %indvars.iv.next125.3 = add nuw nsw i64 %indvars.iv124, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next125.3, %i.d
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph

._crit_edge116:                                   ; preds = %bb.d, %.prol.loopexit
  %i.cu = zext i32 %.0100.lcssa to i64
  %.not.not = icmp eq i64 %indvars.iv147, %i.cu
  br i1 %.not.not, label %.preheader.preheader, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %._crit_edge116
  %invariant.gep157 = getelementptr [8 x i8], ptr %0, i64 %i.al ; 6 uses
  %invariant.gep159 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 6 uses
  %min.iters.check210 = icmp ult i64 %i.v, 8
  br i1 %min.iters.check210, label %.lr.ph118.preheader227, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph118.preheader
  %i.cv = shl nuw nsw i64 %indvars.iv147, 3
  %i.cw = shl nsw i64 %i.al, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %i.da = getelementptr i8, ptr %scevgep209, i64 %i.cw
  %i.db = mul nuw nsw i64 %indvars.iv147, %i.l
  %i.dc = getelementptr i8, ptr %0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = add nuw i64 %indvars.iv147, 1
  %i.df = mul nuw i64 %i.k, %i.de
  %i.dg = getelementptr i8, ptr %0, i64 %i.df
  %bound0212 = icmp ult ptr %i.cz, %i.dg
  %bound1213 = icmp ult ptr %i.dd, %i.da
  %found.conflict214 = and i1 %bound0212, %bound1213
  br i1 %found.conflict214, label %.lr.ph118.preheader227, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck211
  %n.vec216 = and i64 %i.v, -8                    ; 3 uses
  %i.dh = add i64 %indvars.iv, %n.vec216
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.di = add nuw i64 %indvars.iv, %index218      ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep157, i64 %i.di ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32     ; 2 uses
  %wide.load219 = load <4 x double>, ptr %i.dj, align 8, !tbaa !47, !alias.scope !203, !noalias !204
  %wide.load220 = load <4 x double>, ptr %i.dk, align 8, !tbaa !47, !alias.scope !203, !noalias !204
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %i.di ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %wide.load221 = load <4 x double>, ptr %i.dl, align 8, !tbaa !47, !alias.scope !204
  %wide.load222 = load <4 x double>, ptr %i.dm, align 8, !tbaa !47, !alias.scope !204
  store <4 x double> %wide.load221, ptr %i.dj, align 8, !tbaa !47, !alias.scope !203, !noalias !204
  store <4 x double> %wide.load222, ptr %i.dk, align 8, !tbaa !47, !alias.scope !203, !noalias !204
  store <4 x double> %wide.load219, ptr %i.dl, align 8, !tbaa !47, !alias.scope !204
  store <4 x double> %wide.load220, ptr %i.dm, align 8, !tbaa !47, !alias.scope !204
  %index.next223 = add nuw i64 %index218, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.dn, label %middle.block224, label %vector.body217, !llvm.loop !192

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.v, %n.vec216
  br i1 %cmp.n225, label %.preheader.preheader, label %.lr.ph118.preheader227

.lr.ph118.preheader227:                           ; preds = %vector.memcheck211, %.lr.ph118.preheader, %middle.block224
  %indvars.iv132.ph = phi i64 [ %indvars.iv, %vector.memcheck211 ], [ %indvars.iv, %.lr.ph118.preheader ], [ %i.dh, %middle.block224 ] ; 4 uses
  %i.do = sub i64 %i.e, %indvars.iv132.ph
  %xtraiter231 = and i64 %i.do, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol

.lr.ph118.prol:                                   ; preds = %.lr.ph118.preheader227, %.lr.ph118.prol
  %indvars.iv132.prol = phi i64 [ %indvars.iv.next133.prol, %.lr.ph118.prol ], [ %indvars.iv132.ph, %.lr.ph118.preheader227 ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %.lr.ph118.prol ], [ 0, %.lr.ph118.preheader227 ]
  %gep158.prol = getelementptr [8 x i8], ptr %invariant.gep157, i64 %indvars.iv132.prol ; 2 uses
  %i.dp = load double, ptr %gep158.prol, align 8, !tbaa !47
  %gep160.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv132.prol ; 2 uses
  %i.dq = load double, ptr %gep160.prol, align 8, !tbaa !47
  store double %i.dq, ptr %gep158.prol, align 8, !tbaa !47
  store double %i.dp, ptr %gep160.prol, align 8, !tbaa !47
  %indvars.iv.next133.prol = add nuw nsw i64 %indvars.iv132.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol, !llvm.loop !193

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader227
  %indvars.iv132.unr = phi i64 [ %indvars.iv132.ph, %.lr.ph118.preheader227 ], [ %indvars.iv.next133.prol, %.lr.ph118.prol ]
  %i.dr = sub i64 %indvars.iv132.ph, %i.e
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %.preheader.preheader, label %.lr.ph118

bb.d:                                             ; preds = %bb.d, %.lr.ph115.new
  %indvars.iv127 = phi i64 [ %indvars.iv127.unr, %.lr.ph115.new ], [ %indvars.iv.next128.3, %bb.d ] ; 5 uses
  %i.dt = mul nuw nsw i64 %indvars.iv127, %i.d
  %gep156 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155, i64 %i.dt ; 2 uses
  %i.du = load double, ptr %gep156, align 8, !tbaa !47
  %i.dv = fneg reassoc nsz arcp contract afn double %i.du
  %i.dw = fmul reassoc nsz arcp contract afn double %i.dv, %i.bc
  store double %i.dw, ptr %gep156, align 8, !tbaa !47
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %i.dx = mul nuw nsw i64 %indvars.iv.next128, %i.d
  %gep156.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155, i64 %i.dx ; 2 uses
  %i.dy = load double, ptr %gep156.1, align 8, !tbaa !47
  %i.dz = fneg reassoc nsz arcp contract afn double %i.dy
  %i.ea = fmul reassoc nsz arcp contract afn double %i.dz, %i.bd
  store double %i.ea, ptr %gep156.1, align 8, !tbaa !47
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2
  %i.eb = mul nuw nsw i64 %indvars.iv.next128.1, %i.d
  %gep156.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155, i64 %i.eb ; 2 uses
  %i.ec = load double, ptr %gep156.2, align 8, !tbaa !47
  %i.ed = fneg reassoc nsz arcp contract afn double %i.ec
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, %i.be
  store double %i.ee, ptr %gep156.2, align 8, !tbaa !47
  %indvars.iv.next128.2 = add nuw nsw i64 %indvars.iv127, 3
  %i.ef = mul nuw nsw i64 %indvars.iv.next128.2, %i.d
  %gep156.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155, i64 %i.ef ; 2 uses
  %i.eg = load double, ptr %gep156.3, align 8, !tbaa !47
  %i.eh = fneg reassoc nsz arcp contract afn double %i.eg
  %i.ei = fmul reassoc nsz arcp contract afn double %i.eh, %i.bf
  store double %i.ei, ptr %gep156.3, align 8, !tbaa !47
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %exitcond131.not.3 = icmp eq i64 %indvars.iv.next128.3, %i.d
  br i1 %exitcond131.not.3, label %._crit_edge116, label %bb.d

.lr.ph118:                                        ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.3, %.lr.ph118 ], [ %indvars.iv132.unr, %.lr.ph118.prol.loopexit ] ; 6 uses
  %gep158 = getelementptr [8 x i8], ptr %invariant.gep157, i64 %indvars.iv132 ; 2 uses
  %i.ej = load double, ptr %gep158, align 8, !tbaa !47
  %gep160 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv132 ; 2 uses
  %i.ek = load double, ptr %gep160, align 8, !tbaa !47
  store double %i.ek, ptr %gep158, align 8, !tbaa !47
  store double %i.ej, ptr %gep160, align 8, !tbaa !47
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %gep158.1 = getelementptr [8 x i8], ptr %invariant.gep157, i64 %indvars.iv.next133 ; 2 uses
  %i.el = load double, ptr %gep158.1, align 8, !tbaa !47
  %gep160.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv.next133 ; 2 uses
  %i.em = load double, ptr %gep160.1, align 8, !tbaa !47
  store double %i.em, ptr %gep158.1, align 8, !tbaa !47
  store double %i.el, ptr %gep160.1, align 8, !tbaa !47
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %gep158.2 = getelementptr [8 x i8], ptr %invariant.gep157, i64 %indvars.iv.next133.1 ; 2 uses
  %i.en = load double, ptr %gep158.2, align 8, !tbaa !47
  %gep160.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv.next133.1 ; 2 uses
  %i.eo = load double, ptr %gep160.2, align 8, !tbaa !47
  store double %i.eo, ptr %gep158.2, align 8, !tbaa !47
  store double %i.en, ptr %gep160.2, align 8, !tbaa !47
  %indvars.iv.next133.2 = add nuw nsw i64 %indvars.iv132, 3 ; 2 uses
  %gep158.3 = getelementptr [8 x i8], ptr %invariant.gep157, i64 %indvars.iv.next133.2 ; 2 uses
  %i.ep = load double, ptr %gep158.3, align 8, !tbaa !47
  %gep160.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv.next133.2 ; 2 uses
  %i.eq = load double, ptr %gep160.3, align 8, !tbaa !47
  store double %i.eq, ptr %gep158.3, align 8, !tbaa !47
  store double %i.ep, ptr %gep160.3, align 8, !tbaa !47
  %indvars.iv.next133.3 = add nuw nsw i64 %indvars.iv132, 4 ; 2 uses
  %exitcond136.not.3 = icmp eq i64 %indvars.iv.next133.3, %i.d
  br i1 %exitcond136.not.3, label %.preheader.preheader, label %.lr.ph118, !llvm.loop !194

.preheader.preheader:                             ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118, %middle.block224, %._crit_edge116
  %invariant.gep165 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147
  %invariant.gep161 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %bound0 = icmp ult ptr %scevgep179, %scevgep176
  %bound1 = icmp ult ptr %scevgep177, %scevgep178
  %found.conflict = and i1 %bound0, %bound1
  %bound0180 = icmp ult ptr %scevgep179, %scevgep
  %bound1181 = icmp ult ptr %scevgep175, %scevgep178
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx = or i1 %found.conflict, %found.conflict182
  %min.iters.check183 = icmp ult i64 %i.v, 16
  %i.er = and i64 %i.v, 12
  %n.vec = and i64 %i.v, -16                      ; 4 uses
  %i.es = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %i.v, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  %n.vec191 = and i64 %i.v, -4                    ; 3 uses
  %i.et = add i64 %indvars.iv, %n.vec191
  %cmp.n198 = icmp eq i64 %i.v, %n.vec191
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge121
  %indvars.iv142 = phi i64 [ %indvars.iv, %.preheader.preheader ], [ %indvars.iv.next143, %._crit_edge121 ] ; 2 uses
  %i.eu = mul nuw nsw i64 %indvars.iv142, %i.d    ; 2 uses
  %gep166 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %i.eu ; 7 uses
  %invariant.gep163 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check183, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %10 = load double, ptr %gep166, align 8, !tbaa !47, !alias.scope !205
  %broadcast.splatinsert = insertelement <4 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.ev ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %wide.load = load <4 x double>, ptr %i.ew, align 8, !tbaa !47, !alias.scope !206
  %wide.load184 = load <4 x double>, ptr %i.ex, align 8, !tbaa !47, !alias.scope !206
  %wide.load185 = load <4 x double>, ptr %i.ey, align 8, !tbaa !47, !alias.scope !206
  %wide.load186.a = load <4 x double>, ptr %i.ez, align 8, !tbaa !47, !alias.scope !206
  %i.fa = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.fb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load184, %broadcast.splat
  %i.fc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load185, %broadcast.splat
  %i.fd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load186.a, %broadcast.splat
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %i.ev ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 96 ; 2 uses
  %wide.load187 = load <4 x double>, ptr %i.fe, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %wide.load188 = load <4 x double>, ptr %i.ff, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %wide.load189 = load <4 x double>, ptr %i.fg, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %wide.load190 = load <4 x double>, ptr %i.fh, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %i.fi = fadd reassoc nsz arcp contract afn <4 x double> %wide.load187, %i.fa
  %i.fj = fadd reassoc nsz arcp contract afn <4 x double> %wide.load188, %i.fb
  %i.fk = fadd reassoc nsz arcp contract afn <4 x double> %wide.load189, %i.fc
  %i.fl = fadd reassoc nsz arcp contract afn <4 x double> %wide.load190, %i.fd
  store <4 x double> %i.fi, ptr %i.fe, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  store <4 x double> %i.fj, ptr %i.ff, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  store <4 x double> %i.fk, ptr %i.fg, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  store <4 x double> %i.fl, ptr %i.fh, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %11 = load double, ptr %gep166, align 8, !tbaa !47, !alias.scope !205
  %broadcast.splatinsert194 = insertelement <4 x double> poison, double %11, i64 0
  %broadcast.splat195 = shufflevector <4 x double> %broadcast.splatinsert194, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index192 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next197, %vec.epilog.vector.body ] ; 2 uses
  %i.fn = add nuw i64 %indvars.iv, %index192      ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.fn
  %wide.load193 = load <4 x double>, ptr %i.fo, align 8, !tbaa !47, !alias.scope !206
  %i.fp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load193, %broadcast.splat195
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %i.fn ; 2 uses
  %wide.load196 = load <4 x double>, ptr %i.fq, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %i.fr = fadd reassoc nsz arcp contract afn <4 x double> %wide.load196, %i.fp
  store <4 x double> %i.fr, ptr %i.fq, align 8, !tbaa !47, !alias.scope !207, !noalias !208
  %index.next197 = add nuw i64 %index192, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n198, label %._crit_edge121, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv137.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.et, %vec.epilog.middle.block ], [ %i.es, %vec.epilog.iter.check ] ; 4 uses
  %i.ft = sub i64 %i.e, %indvars.iv137.ph
  %xtraiter234 = and i64 %i.ft, 3                 ; 2 uses
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv137.prol = phi i64 [ %indvars.iv.next138.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv137.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter236 = phi i64 [ %prol.iter236.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fu = load double, ptr %gep166, align 8, !tbaa !47
  %gep162.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %indvars.iv137.prol
  %i.fv = load double, ptr %gep162.prol, align 8, !tbaa !47
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fv, %i.fu
  %gep164.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %indvars.iv137.prol ; 2 uses
  %i.fx = load double, ptr %gep164.prol, align 8, !tbaa !47
  %i.fy = fadd reassoc nsz arcp contract afn double %i.fx, %i.fw
  store double %i.fy, ptr %gep164.prol, align 8, !tbaa !47
  %indvars.iv.next138.prol = add nuw nsw i64 %indvars.iv137.prol, 1 ; 2 uses
  %prol.iter236.next = add i64 %prol.iter236, 1   ; 2 uses
  %prol.iter236.cmp.not = icmp eq i64 %prol.iter236.next, %xtraiter234
  br i1 %prol.iter236.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !201

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next138.prol, %vec.epilog.scalar.ph.prol ]
  %i.fz = sub i64 %indvars.iv137.ph, %i.e
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %._crit_edge121, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %i.d
  br i1 %exitcond146.not, label %.loopexit, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.3, %vec.epilog.scalar.ph ], [ %indvars.iv137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gb = load double, ptr %gep166, align 8, !tbaa !47
  %gep162 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %indvars.iv137
  %i.gc = load double, ptr %gep162, align 8, !tbaa !47
  %i.gd = fmul reassoc nsz arcp contract afn double %i.gc, %i.gb
  %gep164 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %indvars.iv137 ; 2 uses
  %i.ge = load double, ptr %gep164, align 8, !tbaa !47
  %i.gf = fadd reassoc nsz arcp contract afn double %i.ge, %i.gd
  store double %i.gf, ptr %gep164, align 8, !tbaa !47
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.gg = load double, ptr %gep166, align 8, !tbaa !47
  %gep162.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %indvars.iv.next138
  %i.gh = load double, ptr %gep162.1, align 8, !tbaa !47
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gh, %i.gg
  %gep164.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %indvars.iv.next138 ; 2 uses
  %i.gj = load double, ptr %gep164.1, align 8, !tbaa !47
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gj, %i.gi
  store double %i.gk, ptr %gep164.1, align 8, !tbaa !47
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %i.gl = load double, ptr %gep166, align 8, !tbaa !47
  %gep162.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %indvars.iv.next138.1
  %i.gm = load double, ptr %gep162.2, align 8, !tbaa !47
  %i.gn = fmul reassoc nsz arcp contract afn double %i.gm, %i.gl
  %gep164.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %indvars.iv.next138.1 ; 2 uses
  %i.go = load double, ptr %gep164.2, align 8, !tbaa !47
  %i.gp = fadd reassoc nsz arcp contract afn double %i.go, %i.gn
  store double %i.gp, ptr %gep164.2, align 8, !tbaa !47
  %indvars.iv.next138.2 = add nuw nsw i64 %indvars.iv137, 3 ; 2 uses
  %i.gq = load double, ptr %gep166, align 8, !tbaa !47
  %gep162.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %indvars.iv.next138.2
  %i.gr = load double, ptr %gep162.3, align 8, !tbaa !47
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, %i.gq
  %gep164.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163, i64 %indvars.iv.next138.2 ; 2 uses
  %i.gt = load double, ptr %gep164.3, align 8, !tbaa !47
  %i.gu = fadd reassoc nsz arcp contract afn double %i.gt, %i.gs
  store double %i.gu, ptr %gep164.3, align 8, !tbaa !47
  %indvars.iv.next138.3 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %exitcond141.not.3 = icmp eq i64 %indvars.iv.next138.3, %i.d
  br i1 %exitcond141.not.3, label %._crit_edge121, label %vec.epilog.scalar.ph, !llvm.loop !202

.critedge:                                        ; preds = %._crit_edge, %.loopexit
  %i.gv = phi i32 [ 1, %.loopexit ], [ 0, %._crit_edge ]
  ret i32 %i.gv
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1228) ptr @malloc(i64 noundef 1228) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !39
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 16, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #23
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_colorchecker_rebuild_patch_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !60  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1176 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %.not = icmp sge i32 %i.g, %i.i
  %i.j = icmp slt i32 %i.g, 0
  %or.cond = or i1 %i.j, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = tail call i32 @dt_bauhaus_combobox_length(ptr noundef %i.l) #23
  %i.n = load i32, ptr %i.h, align 4, !tbaa !17
  %.not19 = icmp eq i32 %i.m, %i.n
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !63
  tail call void @dt_bauhaus_combobox_clear(ptr noundef %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.p = load i32, ptr %i.h, align 4, !tbaa !17
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.lr.ph
  %i.r = icmp slt i32 %i.w, 25
  %spec.select = select i1 %i.r, double f0x3FE5555555555555, double 1.000000e+00
  br label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.s = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #23
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.s, i32 noundef %.020) #23 ; 0 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_add(ptr noundef %i.u, ptr noundef nonnull %i.a) #23
  %i.v = add nuw nsw i32 %.020, 1                 ; 2 uses
  %i.w = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.c
  %.sink24 = phi double [ %spec.select, %._crit_edge ], [ f0x3FE5555555555555, %bb.c ]
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !64
  call void @dtgtk_drawing_area_set_aspect_ratio(ptr noundef %i.y, double noundef %.sink24) #23
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.aa = call i32 @dt_bauhaus_combobox_get(ptr noundef %i.z) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge.thread, %bb.a
  ret void
}

declare i32 @dt_bauhaus_combobox_length(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_combobox_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare void @dt_bauhaus_combobox_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_drawing_area_set_aspect_ratio(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_colorchecker_update_sliders(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %.not = icmp sge i32 %i.f, %i.h
  %i.i = icmp slt i32 %i.f, 0
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66
  %.not59 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.o = zext nneg i32 %i.f to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.m, float noundef %i.q) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 784 ; 2 uses
  %i.u = load i32, ptr %i.e, align 8, !tbaa !62
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.s, float noundef %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 980 ; 2 uses
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !62
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.z, float noundef %i.ae) #23
  %i.af = load i32, ptr %i.e, align 8, !tbaa !62
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ag
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.al
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.aj
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.aq, float noundef %i.ao) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fsub reassoc nsz arcp contract afn float %i.q, %i.as
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.m, float noundef %i.at) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 784 ; 2 uses
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !62
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ay
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = fsub reassoc nsz arcp contract afn float %i.ba, %i.bd
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.av, float noundef %i.be) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 980 ; 2 uses
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !62
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bl, %i.bo
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bg, float noundef %i.bp) #23
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !62
  %i.br = sext i32 %i.bq to i64                   ; 4 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12 ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.br
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !12 ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bu
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.by)
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.br
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.br
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12 ; 2 uses
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.cc
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !70
  %i.ck = fsub reassoc nsz arcp contract afn float %i.ch, %i.bz
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cj, float noundef %i.ck) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60
  tail call void @_colorchecker_rebuild_patch_list(ptr noundef %0)
  tail call void @_colorchecker_update_sliders(ptr noundef %0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  tail call void @gtk_widget_queue_draw(ptr noundef %i.c) #23
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init(ptr nofree noundef writeonly captures(none) initializes((676, 700), (704, 712)) %0) local_unnamed_addr #17 {
vector.ph:
  %i.a = tail call noalias dereferenceable_or_null(1180) ptr @calloc(i64 noundef 1, i64 noundef 1180) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.a, ptr %i.b, align 8, !tbaa !59
  %i.c = tail call noalias dereferenceable_or_null(1180) ptr @calloc(i64 noundef 1, i64 noundef 1180) #28 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.c, ptr %i.d, align 16, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.e, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 1180, ptr %i.f, align 8, !tbaa !210
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr null, ptr %i.g, align 16, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  store i32 24, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 980
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 784
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 588
  store <8 x float> <float 3.799000e+01, float 6.571000e+01, float 4.993000e+01, float 4.314000e+01, float 5.511000e+01, float 7.072000e+01, float 6.266000e+01, float 4.002000e+01>, ptr %i.m, align 4, !tbaa !12
  store <8 x float> <float 3.799000e+01, float 6.571000e+01, float 4.993000e+01, float 4.314000e+01, float 5.511000e+01, float 7.072000e+01, float 6.266000e+01, float 4.002000e+01>, ptr %i.c, align 4, !tbaa !12
  store <8 x float> <float 1.356000e+01, float 1.813000e+01, float -4.880000e+00, float -1.310000e+01, float 8.840000e+00, float -3.340000e+01, float 3.607000e+01, float 1.041000e+01>, ptr %i.l, align 4, !tbaa !12
  store <8 x float> <float 1.356000e+01, float 1.813000e+01, float -4.880000e+00, float -1.310000e+01, float 8.840000e+00, float -3.340000e+01, float 3.607000e+01, float 1.041000e+01>, ptr %i.k, align 4, !tbaa !12
  store <8 x float> <float 1.406000e+01, float 1.781000e+01, float -2.193000e+01, float 2.191000e+01, float -2.540000e+01, float -2.000000e-01, float 5.710000e+01, float -4.596000e+01>, ptr %i.j, align 4, !tbaa !12
  store <8 x float> <float 1.406000e+01, float 1.781000e+01, float -2.193000e+01, float 2.191000e+01, float -2.540000e+01, float -2.000000e-01, float 5.710000e+01, float -4.596000e+01>, ptr %i.i, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  store <8 x float> <float 5.112000e+01, float 3.033000e+01, float f0x42910F5C, float 7.194000e+01, float 2.878000e+01, float 5.526000e+01, float 4.210000e+01, float 8.173000e+01>, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <8 x float> <float 5.112000e+01, float 3.033000e+01, float f0x42910F5C, float 7.194000e+01, float 2.878000e+01, float 5.526000e+01, float 4.210000e+01, float 8.173000e+01>, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  store <8 x float> <float 4.824000e+01, float 2.298000e+01, float -2.371000e+01, float 1.936000e+01, float 1.418000e+01, float -3.834000e+01, float 5.338000e+01, float 4.040000e+00>, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 228
  store <8 x float> <float 4.824000e+01, float 2.298000e+01, float -2.371000e+01, float 1.936000e+01, float 1.418000e+01, float -3.834000e+01, float 5.338000e+01, float 4.040000e+00>, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1012
  store <8 x float> <float 1.625000e+01, float -2.159000e+01, float 5.726000e+01, float 6.786000e+01, float -5.030000e+01, float 3.137000e+01, float 2.819000e+01, float 7.982000e+01>, ptr %i.r, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store <8 x float> <float 1.625000e+01, float -2.159000e+01, float 5.726000e+01, float 6.786000e+01, float -5.030000e+01, float 3.137000e+01, float 2.819000e+01, float 7.982000e+01>, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 652
  store <8 x float> <float 5.194000e+01, float 5.104000e+01, float 9.654000e+01, float 8.126000e+01, float 6.677000e+01, float 5.087000e+01, float 3.566000e+01, float 2.046000e+01>, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <8 x float> <float 5.194000e+01, float 5.104000e+01, float 9.654000e+01, float 8.126000e+01, float 6.677000e+01, float 5.087000e+01, float 3.566000e+01, float 2.046000e+01>, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 848
  store <8 x float> <float 4.999000e+01, float -2.863000e+01, float -4.300000e-01, float -6.400000e-01, float -7.300000e-01, float -1.500000e-01, float -4.200000e-01, float -8.000000e-02>, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  store <8 x float> <float 4.999000e+01, float -2.863000e+01, float -4.300000e-01, float -6.400000e-01, float -7.300000e-01, float -1.500000e-01, float -4.200000e-01, float -8.000000e-02>, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1044
  store <8 x float> <float -1.457000e+01, float -2.864000e+01, float 1.190000e+00, float -3.400000e-01, float -5.000000e-01, float -2.700000e-01, float -1.230000e+00, float -9.700000e-01>, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store <8 x float> <float -1.457000e+01, float -2.864000e+01, float 1.190000e+00, float -3.400000e-01, float -5.000000e-01, float -2.700000e-01, float -1.230000e+00, float -9.700000e-01>, ptr %i.y, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !72
  store i32 -999, ptr %i.a, align 4, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 3 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.i = load float, ptr %i.h, align 16, !tbaa !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.k = load float, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.m = load float, ptr %i.l, align 8, !tbaa !12 ; 2 uses
  %.not41 = icmp eq i32 %i.f, 1
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.q = load i32, ptr %i.p, align 4, !tbaa !73
  %i.r = icmp eq i32 %i.q, 1
  %wide.trip.count47 = zext nneg i32 %i.f to i64
  br i1 %i.r, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load float, ptr %i.b, align 4, !tbaa !12
  %.pre50 = load float, ptr %i.n, align 4, !tbaa !12
  %.pre51 = load float, ptr %i.o, align 4, !tbaa !12
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.s = phi float [ %.pre51, %.lr.ph.split.us.preheader ], [ %i.av, %.lr.ph.split.us ] ; 2 uses
  %i.t = phi float [ %.pre50, %.lr.ph.split.us.preheader ], [ %i.au, %.lr.ph.split.us ] ; 2 uses
  %i.u = phi float [ %.pre, %.lr.ph.split.us.preheader ], [ %i.at, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv44 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next45, %.lr.ph.split.us ] ; 5 uses
  %.03139.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %spec.select.us, %.lr.ph.split.us ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv44
  %i.w = load float, ptr %i.v, align 4, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv44
  %i.y = load float, ptr %i.x, align 4, !tbaa !12 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv44
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12 ; 2 uses
  %i.ab = fsub reassoc nsz arcp contract afn float %i.i, %i.w ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.ab
  %i.ad = fsub reassoc nsz arcp contract afn float %i.k, %i.y ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.ad
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.ac
  %i.ag = fsub reassoc nsz arcp contract afn float %i.m, %i.aa ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ag
  %i.ai = fadd reassoc nsz arcp contract afn float %i.af, %i.ah
  %i.aj = fsub reassoc nsz arcp contract afn float %i.i, %i.u ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.aj
  %i.al = fsub reassoc nsz arcp contract afn float %i.k, %i.t ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.al
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.ak
  %i.ao = fsub reassoc nsz arcp contract afn float %i.m, %i.s ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn float %i.an, %i.ap
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.ai, %i.aq ; 4 uses
  %i.as = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select.us = select i1 %i.ar, i32 %i.as, i32 %.03139.us ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  %i.at = select i1 %i.ar, float %i.w, float %i.u
  %i.au = select i1 %i.ar, float %i.y, float %i.t
  %i.av = select i1 %i.ar, float %i.aa, float %i.s
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph, %.preheader
  %.031.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph ], [ %spec.select.us, %.lr.ph.split.us ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !65
  %.not = icmp eq i32 %.031.lcssa, %i.ax
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i32 %.031.lcssa, ptr %i.aw, align 4, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.031.lcssa, ptr %i.ay, align 8, !tbaa !62
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = atomicrmw add ptr %i.ba, i32 1 seq_cst, align 4 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.be = load i32, ptr %i.aw, align 4, !tbaa !65
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bd, i32 noundef %i.be) #23
  tail call void @_colorchecker_update_sliders(ptr noundef nonnull %0)
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = atomicrmw add ptr %i.bg, i32 -1 seq_cst, align 4 ; 0 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !64
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bi) #23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [8 x ptr], align 8                ; 5 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 72) #23 ; 17 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.c, ptr %i.d, align 16, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !71
  %i.g = tail call ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef f0x3FE5555555555555) #23 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !64
  tail call void @gtk_widget_add_events(ptr noundef %i.g, i32 noundef 8964) #23
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.i = tail call i64 @g_signal_connect_data(ptr noundef %i.h, ptr noundef nonnull @.str.22, ptr noundef nonnull @checker_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.k = tail call i64 @g_signal_connect_data(ptr noundef %i.j, ptr noundef nonnull @.str.23, ptr noundef nonnull @checker_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %i.l, ptr noundef nonnull @.str.24, ptr noundef nonnull @checker_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 -1, ptr %i.o, align 4, !tbaa !65
  %i.p = tail call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !63
  %i.r = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.25) #23 ; 0 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.s, ptr noundef %i.t) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_iop_gui_alloc.exit
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.y = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.x) #23 ; 0 uses
  %i.z = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.000000e+02, float noundef 2.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !67
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.z, ptr noundef %i.ab) #23
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ad = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ac, ptr noundef null, ptr noundef nonnull @.str.28) #23 ; 0 uses
  %i.ae = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !68
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.ag) #23
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ai = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.30) #23 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !68
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aj, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e-01) #23
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !68
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ak, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !68
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.al, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e-01) #23
  %i.am = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !69
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.am, ptr noundef %i.ao) #23
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.aq = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ap, ptr noundef null, ptr noundef nonnull @.str.32) #23 ; 0 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !69
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !69
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.as, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !69
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.at, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #23
  %i.au = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.280000e+02, float noundef 1.280000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !70
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.aw) #23
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !70
  %i.ay = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ax, ptr noundef null, ptr noundef nonnull @.str.34) #23 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.az, align 8, !tbaa !66
  %i.ba = call ptr @dt_bauhaus_combobox_new(ptr noundef nonnull %0) #23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !213
  %i.bc = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ba, ptr noundef null, ptr noundef nonnull @.str.35) #23 ; 0 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.be = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.be) #23
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.bg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bf, ptr noundef %i.bg) #23
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bh, ptr noundef %i.bi) #23
  %i.bj = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  %i.bk = load <4 x ptr>, ptr %i.c, align 8, !tbaa !214
  store <4 x ptr> %i.bk, ptr %i.b, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = load <2 x ptr>, ptr %i.an, align 8, !tbaa !214
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !213
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bp, align 8, !tbaa !14
  %i.bq = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.39, i32 noundef 1616, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bj, ptr noundef nonnull %i.b) #23
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !215
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.bt = call i64 @g_signal_connect_data(ptr noundef %i.bs, ptr noundef nonnull @.str.40, ptr noundef nonnull @patch_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.bv = call i64 @g_signal_connect_data(ptr noundef %i.bu, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_L_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.bx = call i64 @g_signal_connect_data(ptr noundef %i.bw, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_a_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.bz = call i64 @g_signal_connect_data(ptr noundef %i.by, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_b_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !70
  %i.cb = call i64 @g_signal_connect_data(ptr noundef %i.ca, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_C_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.cd = call i64 @g_signal_connect_data(ptr noundef %i.cc, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph:                                           ; preds = %_iop_gui_alloc.exit, %.lr.ph
  %.071 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %_iop_gui_alloc.exit ] ; 2 uses
  %i.ce = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #23
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.ce, i32 noundef %.071) #23 ; 0 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_add(ptr noundef %i.cg, ptr noundef nonnull %i.a) #23
  %i.ch = add nuw nsw i32 %.071, 1                ; 2 uses
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !17
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge
}

declare ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef) local_unnamed_addr #3

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @checker_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !218  ; 4 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !224 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #23 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !224 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #23
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #23 ; 19 uses
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  call void @cairo_paint(ptr noundef %i.v) #23
  call void @cairo_set_antialias(ptr noundef %i.v, i32 noundef 1) #23
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = icmp sgt i32 %i.x, 24                    ; 2 uses
  %i.z = select i1 %i.y, i32 7, i32 6             ; 4 uses
  %i.aa = select i1 %i.y, i32 7, i32 4            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.ad = uitofp nneg i32 %i.z to float           ; 3 uses
  %i.ae = uitofp nneg i32 %i.aa to float          ; 3 uses
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %i.ad
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double ; 4 uses
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ae
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.ao = zext nneg i32 %i.z to i64               ; 2 uses
  %wide.trip.count128 = zext nneg i32 %i.aa to i64
  %i.ap = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ae
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv125 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next126, %bb.c ] ; 3 uses
  %i.ar = mul nuw nsw i64 %indvars.iv125, %i.ao
  %i.as = trunc i64 %indvars.iv125 to i32
  %i.at = mul i32 %i.h, %i.as
  %i.au = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.ap
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !65 ; 4 uses
  %.not = icmp eq i32 %i.ay, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.k
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %bb.b, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.az = add nuw nsw i64 %indvars.iv, %i.ar      ; 7 uses
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !17
  %i.bb = sext i32 %i.ba to i64
  %.not115 = icmp slt i64 %i.az, %i.bb
  br i1 %.not115, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.az ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.az ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bf, 2.000000e-03
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, 5.000000e-03
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bj, f0x3E0D3DCB ; 5 uses
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bi ; 4 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bl, %i.bk ; 3 uses
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bl, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bp, i64 3 ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, splat (float f0x3E53DCB1)
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bp, %i.bp
  %i.bw = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bo, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bm, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = insertelement <4 x float> %i.bs, float %i.bn, i64 2
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %i.bz, %i.ca
  %i.cc = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float f0x3E038026)
  %i.cd = fadd reassoc nsz arcp contract afn <4 x float> %i.cc, splat (float f0xBC911AA6)
  %i.ce = select <4 x i1> %i.bu, <4 x float> %i.cb, <4 x float> %i.cd ; 4 uses
  %i.cf = shufflevector <4 x float> <float f0x3FCEF57D, float f0x3F719831, float f0x3E6A7CB9, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.cg, %i.ck
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.co = fsub reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cn
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, %i.cj ; 3 uses
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, %i.cj
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cu = bitcast <4 x float> %i.ct to <4 x i32>  ; 2 uses
  %i.cv = and <4 x i32> %i.cu, splat (i32 8388607)
  %i.cw = or disjoint <4 x i32> %i.cv, splat (i32 1065353216)
  %i.cx = bitcast <4 x i32> %i.cw to <4 x float>  ; 5 uses
  %i.cy = lshr <4 x i32> %i.cu, splat (i32 23)
  %i.cz = and <4 x i32> %i.cy, splat (i32 255)
  %i.da = add nsw <4 x i32> %i.cz, splat (i32 -127)
  %i.db = sitofp <4 x i32> %i.da to <4 x float>
  %i.dc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cx, splat (float f0x3D74552F)
  %i.dd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.dc, splat (float f0xBEEE7397)
  %i.de = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.dd, %i.cx
  %i.df = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.de, splat (float f0x3FBD96DD)
  %i.dg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.df, %i.cx
  %i.dh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.dg, splat (float f0xC02153F6)
  %i.di = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.dh, %i.cx
  %i.dj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.di, splat (float f0x4038D96C)
  %i.dk = fadd fast <4 x float> %i.cx, splat (float -1.000000e+00)
  %i.dl = fmul reassoc nsz arcp contract afn <4 x float> %i.dj, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn <4 x float> %i.dl, %i.db
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dm, splat (float f0x3ED55555)
  %i.do = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dn, <4 x float> splat (float 1.290000e+02))
  %i.dp = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.do, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.dq = fadd reassoc nsz arcp contract afn <4 x float> %i.dp, splat (float -5.000000e-01)
  %i.dr = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.dq)
  %i.ds = sitofp reassoc nsz arcp contract afn <4 x i32> %i.dr to <4 x float> ; 3 uses
  %i.dt = extractelement <4 x float> %i.cr, i64 0 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn ugt float %i.dt, 3.130800e-03
  br i1 %i.du, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dv = fmul reassoc nnan nsz arcp contract afn float %i.dt, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.ds, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.dp, %i.ds
  %i.dw = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, f0x3C5DBE69
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, f0x3D5509F9
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.dw
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, f0x3E773CC5
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dw
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, f0x3F3168B3
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dw
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, f0x3F800016
  %i.ef = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.eg = shl i32 %i.ef, 23
  %i.eh = add i32 %i.eg, 1065353216
  %i.ei = bitcast i32 %i.eh to float
  %i.ej = fmul reassoc nnan nsz arcp contract afn float %i.ei, 1.055000e+00
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ee
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.f, %bb.g
  %i.em = phi reassoc nsz arcp contract afn float [ %i.dv, %bb.f ], [ %i.el, %bb.g ]
  %i.en = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eo = fptosi <2 x float> %i.en to <2 x i32>
  %i.ep = shl <2 x i32> %i.eo, splat (i32 23)
  %i.eq = add <2 x i32> %i.ep, splat (i32 1065353216)
  %i.er = bitcast <2 x i32> %i.eq to <2 x float>
  %i.es = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.et = fsub reassoc nsz arcp contract afn <2 x float> %i.es, %i.en ; 4 uses
  %i.eu = fmul reassoc nsz arcp contract afn <2 x float> %i.et, splat (float f0x3C5DBE69)
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.eu, splat (float f0x3D5509F9)
  %i.ew = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.et
  %i.ex = fadd reassoc nsz arcp contract afn <2 x float> %i.ew, splat (float f0x3E773CC5)
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.ex, %i.et
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float f0x3F3168B3)
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.et
  %i.fb = fadd reassoc nsz arcp contract afn <2 x float> %i.fa, splat (float f0x3F800016)
  %i.fc = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.fc, splat (float 1.292000e+01)
  %i.fe = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.fc, splat (float 3.130800e-03)
  %i.ff = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.er, splat (float 1.055000e+00)
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fb
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.fg, splat (float -5.500000e-02)
  %i.fi = select <2 x i1> %i.fe, <2 x float> %i.fh, <2 x float> %i.fd
  %i.fj = fpext reassoc nsz arcp contract afn float %i.em to double
  %i.fk = fpext reassoc nsz arcp contract afn <2 x float> %i.fi to <2 x double> ; 2 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 0
  %i.fm = extractelement <2 x double> %i.fk, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.fj, double noundef %i.fl, double noundef %i.fm) #23
  %i.fn = trunc i64 %indvars.iv to i32
  %i.fo = mul i32 %i.f, %i.fn
  %i.fp = sitofp reassoc nsz arcp contract afn i32 %i.fo to float
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.aq
  %i.fr = fpext reassoc nsz arcp contract afn float %i.fq to double ; 3 uses
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1432
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !225 ; 2 uses
  %i.fv = fsub reassoc nsz arcp contract afn double %i.ah, %i.fu
  %i.fw = fsub reassoc nsz arcp contract afn double %i.ak, %i.fu
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.fr, double noundef %i.aw, double noundef %i.fv, double noundef %i.fw) #23
  call void @cairo_fill(ptr noundef %i.v) #23
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !12
  %i.fz = load float, ptr %i.bc, align 4, !tbaa !12
  %i.ga = fsub reassoc nsz arcp contract afn float %i.fy, %i.fz
  %i.gb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ga)
  %i.gc = fcmp reassoc nsz arcp contract afn ogt float %i.gb, f0x3727C5AC
  br i1 %i.gc, label %bb.j, label %bb.h

bb.h:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.az
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = load float, ptr %i.be, align 4, !tbaa !12
  %i.gg = fsub reassoc nsz arcp contract afn float %i.ge, %i.gf
  %i.gh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gg)
  %i.gi = fcmp reassoc nsz arcp contract afn ogt float %i.gh, f0x3727C5AC
  br i1 %i.gi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !12
  %i.gl = load float, ptr %i.bg, align 4, !tbaa !12
  %i.gm = fsub reassoc nsz arcp contract afn float %i.gk, %i.gl
  %i.gn = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gm)
  %i.go = fcmp reassoc nsz arcp contract afn ogt float %i.gn, f0x3727C5AC
  br i1 %i.go, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %dt_XYZ_to_sRGB.exit
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1432
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !225
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.gs) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1432
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !225 ; 3 uses
  %i.gw = fadd reassoc nsz arcp contract afn double %i.gv, %i.fr
  %i.gx = fadd reassoc nsz arcp contract afn double %i.gv, %i.aw
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gv, 3.000000e+00 ; 2 uses
  %i.gz = fsub reassoc nsz arcp contract afn double %i.ah, %i.gy
  %i.ha = fsub reassoc nsz arcp contract afn double %i.ak, %i.gy
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.gw, double noundef %i.gx, double noundef %i.gz, double noundef %i.ha) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1432
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !225
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.hd) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1432
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !225 ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hg, 2.000000e+00 ; 2 uses
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hh, %i.fr
  %i.hj = fadd reassoc nsz arcp contract afn double %i.hh, %i.aw
  %i.hk = fmul reassoc nsz arcp contract afn double %i.hg, 5.000000e+00 ; 2 uses
  %i.hl = fsub reassoc nsz arcp contract afn double %i.ah, %i.hk
  %i.hm = fsub reassoc nsz arcp contract afn double %i.ak, %i.hk
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.hi, double noundef %i.hj, double noundef %i.hl, double noundef %i.hm) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.b
  %i.hn = srem i32 %i.ay, %i.z
  %i.ho = sdiv i32 %i.ay, %i.z
  %i.hp = sext i32 %i.ay to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !12
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hr, 8.000000e+01
  %spec.select = select i1 %i.hs, double 0.000000e+00, double 1.000000e+00 ; 3 uses
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1432
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !225
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.hw) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %spec.select, double noundef %spec.select, double noundef %spec.select) #23
  %i.hx = mul nsw i32 %i.hn, %i.f
  %i.hy = sitofp reassoc nsz arcp contract afn i32 %i.hx to float
  %i.hz = fdiv reassoc nsz arcp contract afn float %i.hy, %i.ad
  %i.ia = fpext reassoc nsz arcp contract afn float %i.hz to double
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1432
  %i.id = load double, ptr %i.ic, align 8, !tbaa !225 ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn double %i.id, 5.000000e+00 ; 2 uses
  %i.if = fadd reassoc nsz arcp contract afn double %i.ie, %i.ia
  %i.ig = mul nsw i32 %i.ho, %i.h
  %i.ih = sitofp reassoc nsz arcp contract afn i32 %i.ig to float
  %i.ii = fdiv reassoc nsz arcp contract afn float %i.ih, %i.ae
  %i.ij = fpext reassoc nsz arcp contract afn float %i.ii to double
  %i.ik = fadd reassoc nsz arcp contract afn double %i.ie, %i.ij
  %i.il = fmul reassoc nsz arcp contract afn double %i.id, 1.100000e+01 ; 2 uses
  %i.im = fsub reassoc nsz arcp contract afn double %i.ah, %i.il
  %i.in = fsub reassoc nsz arcp contract afn double %i.ak, %i.il
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.if, double noundef %i.ik, double noundef %i.im, double noundef %i.in) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @cairo_destroy(ptr noundef %i.v) #23
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %1) #23
  call void @cairo_surface_destroy(ptr noundef %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @checker_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x i32>, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !47 ; 3 uses
  %i.i = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x double> ; 2 uses
  %i.j = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.h, %i.i
  %i.k = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.h, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> zeroinitializer, <2 x double> %i.h
  %i.m = select <2 x i1> %i.j, <2 x double> %i.i, <2 x double> %i.l
  %i.n = fptrunc reassoc nsz arcp contract afn <2 x double> %i.m to <2 x float>
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 11 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17   ; 4 uses
  %i.q = icmp sgt i32 %i.p, 24                    ; 2 uses
  %spec.select167 = select i1 %i.q, i32 7, i32 6  ; 2 uses
  %spec.select168 = select i1 %i.q, float 7.000000e+00, float 4.000000e+00
  %i.r = uitofp nneg i32 %spec.select167 to float
  %i.s = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x float>
  %i.t = insertelement <2 x float> poison, float %i.r, i64 0
  %i.u = insertelement <2 x float> %i.t, float %spec.select168, i64 1
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.n
  %i.w = fdiv reassoc nsz arcp contract afn <2 x float> %i.v, %i.s ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fptosi float %i.x to i32
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fptosi float %i.z to i32
  %i.ab = mul nsw i32 %spec.select167, %i.aa
  %i.ac = add nsw i32 %i.ab, %i.y                 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !233
  switch i32 %i.ae, label %.thread173 [
    i32 1, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.af = load i32, ptr %1, align 8, !tbaa !234
  %i.ag = icmp eq i32 %i.af, 5
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp sgt i32 %i.ac, -1
  %.not165 = icmp slt i32 %i.ac, %i.p
  %or.cond = select i1 %i.ah, i1 %.not165, i1 false
  br i1 %or.cond, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.ai = zext nneg i32 %i.ac to i64              ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ai
  store float %i.ak, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ai
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ai
  store float %i.ap, ptr %i.ar, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ai
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ai
  store float %i.au, ptr %i.aw, align 4, !tbaa !12
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.ax, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = atomicrmw add ptr %i.az, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = atomicrmw add ptr %i.bc, i32 -1 seq_cst, align 4 ; 0 uses
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.be) #23
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.bf = icmp slt i32 %i.ac, %i.p
  br i1 %i.bf, label %bb.f, label %.thread173

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp sgt i32 %i.ac, -1
  br i1 %i.bg, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.bi = zext nneg i32 %i.ac to i64              ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = xor i32 %i.ac, -1                       ; 6 uses
  %i.bm = add i32 %i.p, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr nonnull align 4 %i.bk, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bi ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !17
  %i.bt = add i32 %i.bs, %i.bl
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr nonnull align 4 %i.br, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bi ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.o, align 4, !tbaa !17
  %i.ca = add i32 %i.bz, %i.bl
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull align 4 %i.by, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cg = add i32 %i.cf, %i.bl
  %i.ch = sext i32 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cd, ptr nonnull align 4 %i.ce, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.bi ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cn = add i32 %i.cm, %i.bl
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr nonnull align 4 %i.cl, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bi ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cu = add i32 %i.ct, %i.bl
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 4 %i.cs, i64 %i.cw, i1 false)
  %i.cx = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.o, align 4, !tbaa !17
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.cz, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = atomicrmw add ptr %i.db, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_rebuild_patch_list(ptr noundef nonnull %2)
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = atomicrmw add ptr %i.de, i32 -1 seq_cst, align 4 ; 0 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.dg) #23
  br label %bb.u

bb.h:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !235
  %i.dj = call i32 @gtk_accelerator_get_default_mod_mask() #23
  %i.dk = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !15
  %i.dl = or i32 %i.dk, %i.di
  %i.dm = and i32 %i.dl, %i.dj
  %.not = icmp eq i32 %i.dm, 1
  br i1 %.not, label %bb.i, label %.thread173

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.j, label %.thread173

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.dr = load float, ptr %i.dq, align 16, !tbaa !12 ; 6 uses
  %i.ds = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.ds, 1.000000e-03
  br i1 %i.dt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn ogt float %i.dw, 1.000000e-03
  br i1 %i.dx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !12
  %i.ea = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 1.000000e-03
  %i.ec = zext i1 %i.eb to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ed = phi i32 [ 0, %bb.k ], [ 0, %bb.j ], [ %i.ec, %bb.l ] ; 6 uses
  %i.ee = load i32, ptr %i.o, align 4, !tbaa !17  ; 8 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 516 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 520 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ee, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.ee, 32
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x ptr> poison, ptr %i.ei, i64 0
  %broadcast.splat = shufflevector <8 x ptr> %broadcast.splatinsert, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert182 = insertelement <8 x ptr> poison, ptr %i.ej, i64 0
  %broadcast.splat183 = shufflevector <8 x ptr> %broadcast.splatinsert182, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %i.dr, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi186 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi206, %vector.body ]
  %vec.phi187 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi207, %vector.body ]
  %vec.phi188 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi208, %vector.body ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %wide.load = load <8 x float>, ptr %i.el, align 4, !tbaa !12
  %wide.load189 = load <8 x float>, ptr %i.em, align 4, !tbaa !12
  %wide.load190 = load <8 x float>, ptr %i.en, align 4, !tbaa !12
  %wide.load191 = load <8 x float>, ptr %i.eo, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load192 = load <8 x float>, ptr %i.ep, align 4, !tbaa !12
  %wide.load193 = load <8 x float>, ptr %i.eq, align 4, !tbaa !12
  %wide.load194 = load <8 x float>, ptr %i.er, align 4, !tbaa !12
  %wide.load195 = load <8 x float>, ptr %i.es, align 4, !tbaa !12
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load
  %i.eu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load189
  %i.ev = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load190
  %i.ew = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load191
  %i.ex = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.et)
  %i.ey = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eu)
  %i.ez = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ev)
  %i.fa = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ew)
  %i.fb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ex, splat (float 1.000000e-03) ; 4 uses
  %i.fc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ey, splat (float 1.000000e-03) ; 4 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ez, splat (float 1.000000e-03) ; 4 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fa, splat (float 1.000000e-03) ; 4 uses
  %i.ff = getelementptr [4 x i8], ptr %i.eh, i64 %index ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 32
  %i.fh = getelementptr i8, ptr %i.ff, i64 64
  %i.fi = getelementptr i8, ptr %i.ff, i64 96
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ff, <8 x i1> %i.fb, <8 x float> poison), !tbaa !12
  %wide.masked.load196 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fg, <8 x i1> %i.fc, <8 x float> poison), !tbaa !12
  %wide.masked.load197 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fh, <8 x i1> %i.fd, <8 x float> poison), !tbaa !12
  %wide.masked.load198 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fi, <8 x i1> %i.fe, <8 x float> poison), !tbaa !12
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fb, <8 x float> poison), !tbaa !12
  %wide.masked.gather199 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fc, <8 x float> poison), !tbaa !12
  %wide.masked.gather200 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fd, <8 x float> poison), !tbaa !12
  %wide.masked.gather201 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fe, <8 x float> poison), !tbaa !12
  %i.fj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.load
  %i.fk = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather199, %wide.masked.load196
  %i.fl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather200, %wide.masked.load197
  %i.fm = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather201, %wide.masked.load198
  %i.fn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fj)
  %i.fo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fk)
  %i.fp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fl)
  %i.fq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fm)
  %i.fr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fn, splat (float 1.000000e-03) ; 2 uses
  %i.fs = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fo, splat (float 1.000000e-03) ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fp, splat (float 1.000000e-03) ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fq, splat (float 1.000000e-03) ; 2 uses
  %i.fv = select <8 x i1> %i.fb, <8 x i1> %i.fr, <8 x i1> zeroinitializer
  %i.fw = select <8 x i1> %i.fc, <8 x i1> %i.fs, <8 x i1> zeroinitializer
  %i.fx = select <8 x i1> %i.fd, <8 x i1> %i.ft, <8 x i1> zeroinitializer
  %i.fy = select <8 x i1> %i.fe, <8 x i1> %i.fu, <8 x i1> zeroinitializer
  %wide.masked.gather202 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fv, <8 x float> poison), !tbaa !12
  %wide.masked.gather203 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fw, <8 x float> poison), !tbaa !12
  %wide.masked.gather204 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fx, <8 x float> poison), !tbaa !12
  %wide.masked.gather205 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fy, <8 x float> poison), !tbaa !12
  %i.fz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather202, %wide.load192
  %i.ga = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather203, %wide.load193
  %i.gb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather204, %wide.load194
  %i.gc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather205, %wide.load195
  %i.gd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fz)
  %i.ge = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ga)
  %i.gf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gb)
  %i.gg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gc)
  %i.gh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gd, splat (float 1.000000e-03)
  %i.gi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ge, splat (float 1.000000e-03)
  %i.gj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gf, splat (float 1.000000e-03)
  %i.gk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gg, splat (float 1.000000e-03)
  %i.gl = select <8 x i1> %i.fb, <8 x i1> %i.fr, <8 x i1> zeroinitializer
  %i.gm = select <8 x i1> %i.fc, <8 x i1> %i.fs, <8 x i1> zeroinitializer
  %i.gn = select <8 x i1> %i.fd, <8 x i1> %i.ft, <8 x i1> zeroinitializer
  %i.go = select <8 x i1> %i.fe, <8 x i1> %i.fu, <8 x i1> zeroinitializer
  %i.gp = select <8 x i1> %i.gl, <8 x i1> %i.gh, <8 x i1> zeroinitializer
  %predphi = or <8 x i1> %vec.phi, %i.gp          ; 2 uses
  %i.gq = select <8 x i1> %i.gm, <8 x i1> %i.gi, <8 x i1> zeroinitializer
  %predphi206 = or <8 x i1> %vec.phi186, %i.gq    ; 2 uses
  %i.gr = select <8 x i1> %i.gn, <8 x i1> %i.gj, <8 x i1> zeroinitializer
  %predphi207 = or <8 x i1> %vec.phi187, %i.gr    ; 2 uses
  %i.gs = select <8 x i1> %i.go, <8 x i1> %i.gk, <8 x i1> zeroinitializer
  %predphi208 = or <8 x i1> %vec.phi188, %i.gs    ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %predphi206, %predphi
  %bin.rdx209 = or <8 x i1> %predphi207, %bin.rdx
  %bin.rdx210 = or <8 x i1> %predphi208, %bin.rdx209
  %bin.rdx210.fr = freeze <8 x i1> %bin.rdx210
  %i.gu = bitcast <8 x i1> %bin.rdx210.fr to i8
  %.not232 = icmp eq i8 %i.gu, 0
  %rdx.select = select i1 %.not232, i32 %i.ed, i32 0 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !236

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %rdx.select, %vec.epilog.iter.check ], [ %i.ed, %vector.main.loop.iter.check ]
  %n.vec211 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.gv = icmp ne i32 %bc.merge.rdx, %i.ed
  %broadcast.splatinsert212 = insertelement <8 x i1> poison, i1 %i.gv, i64 0
  %broadcast.splat213 = shufflevector <8 x i1> %broadcast.splatinsert212, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <8 x ptr> poison, ptr %i.ei, i64 0
  %broadcast.splat215 = shufflevector <8 x ptr> %broadcast.splatinsert214, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert216 = insertelement <8 x ptr> poison, ptr %i.ej, i64 0
  %broadcast.splat217 = shufflevector <8 x ptr> %broadcast.splatinsert216, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert218 = insertelement <8 x float> poison, float %i.dr, i64 0
  %broadcast.splat219 = shufflevector <8 x float> %broadcast.splatinsert218, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index220 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next228, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi221 = phi <8 x i1> [ %broadcast.splat213, %vec.epilog.ph ], [ %predphi227.fr, %vec.epilog.vector.body ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index220
  %wide.load222 = load <8 x float>, ptr %i.gw, align 4, !tbaa !12
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index220
  %wide.load223 = load <8 x float>, ptr %i.gx, align 4, !tbaa !12
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %wide.load222
  %i.gz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gy)
  %i.ha = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gz, splat (float 1.000000e-03) ; 4 uses
  %i.hb = getelementptr [4 x i8], ptr %i.eh, i64 %index220
  %wide.masked.load224 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.hb, <8 x i1> %i.ha, <8 x float> poison), !tbaa !12
  %wide.masked.gather225 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat215, <8 x i1> %i.ha, <8 x float> poison), !tbaa !12
  %i.hc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather225, %wide.masked.load224
  %i.hd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hc)
  %i.he = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hd, splat (float 1.000000e-03) ; 2 uses
  %i.hf = select <8 x i1> %i.ha, <8 x i1> %i.he, <8 x i1> zeroinitializer
  %wide.masked.gather226 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat217, <8 x i1> %i.hf, <8 x float> poison), !tbaa !12
  %i.hg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather226, %wide.load223
  %i.hh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hg)
  %i.hi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hh, splat (float 1.000000e-03)
  %i.hj = select <8 x i1> %i.ha, <8 x i1> %i.he, <8 x i1> zeroinitializer
  %i.hk = select <8 x i1> %i.hj, <8 x i1> %i.hi, <8 x i1> zeroinitializer
  %predphi227 = or <8 x i1> %vec.phi221, %i.hk
  %predphi227.fr = freeze <8 x i1> %predphi227    ; 2 uses
  %index.next228 = add nuw i64 %index220, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next228, %n.vec211
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hm = bitcast <8 x i1> %predphi227.fr to i8
  %.not233 = icmp eq i8 %i.hm, 0
  %rdx.select229 = select i1 %.not233, i32 %i.ed, i32 0 ; 2 uses
  %cmp.n230 = icmp eq i64 %n.vec211, %wide.trip.count
  br i1 %cmp.n230, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec211, %vec.epilog.middle.block ]
  %.0146174.ph = phi i32 [ %i.ed, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select229, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %bb.p, %middle.block, %vec.epilog.middle.block, %bb.m
  %.0146.lcssa = phi i32 [ %i.ed, %bb.m ], [ %rdx.select229, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.1, %bb.p ]
  %.not162 = icmp eq i32 %.0146.lcssa, 0
  br i1 %.not162, label %bb.u, label %bb.q

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.0146174 = phi i32 [ %.1, %bb.p ], [ %.0146174.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !12
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !12
  %i.hr = fsub reassoc nsz arcp contract afn float %i.dr, %i.ho
  %i.hs = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hr)
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hs, 1.000000e-03
  br i1 %i.ht, label %bb.n, label %bb.p

bb.n:                                             ; preds = %vec.epilog.scalar.ph
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12
  %i.hw = load float, ptr %i.ei, align 4, !tbaa !12
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hw, %i.hv
  %i.hy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hx)
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.hy, 1.000000e-03
  br i1 %i.hz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ia = load float, ptr %i.ej, align 8, !tbaa !12
  %i.ib = fsub reassoc nsz arcp contract afn float %i.ia, %i.hq
  %i.ic = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ib)
  %i.id = fcmp reassoc nsz arcp contract afn olt float %i.ic, 1.000000e-03
  %spec.select169 = select i1 %i.id, i32 0, i32 %.0146174
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %vec.epilog.scalar.ph
  %.1 = phi i32 [ %.0146174, %vec.epilog.scalar.ph ], [ %spec.select169, %bb.o ], [ %.0146174, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !228

bb.q:                                             ; preds = %._crit_edge
  %i.ie = icmp slt i32 %i.ee, 49
  br i1 %i.ie, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.if = icmp sgt i32 %i.ac, -1
  %.not163 = icmp slt i32 %i.ac, %i.ee
  %or.cond170 = and i1 %i.if, %.not163
  br i1 %or.cond170, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ig = add nsw i32 %i.ee, 1
  store i32 %i.ig, ptr %i.o, align 4, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0147 = phi i32 [ %i.ee, %bb.s ], [ %i.ac, %bb.r ], [ %i.ac, %bb.q ] ; 4 uses
  %i.ih = sext i32 %.0147 to i64                  ; 6 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ih
  store float %i.dr, ptr %i.ii, align 4, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ih
  store float %i.dr, ptr %i.ik, align 4, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.im = load float, ptr %i.il, align 4, !tbaa !12 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.io = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ih
  store float %i.im, ptr %i.io, align 4, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ih
  store float %i.im, ptr %i.iq, align 4, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.is = load float, ptr %i.ir, align 8, !tbaa !12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ih
  store float %i.is, ptr %i.iu, align 4, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.ih
  store float %i.is, ptr %i.iw, align 4, !tbaa !12
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.ix, ptr noundef %2, i32 noundef 1) #23
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 104
  %i.ja = atomicrmw add ptr %i.iz, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_rebuild_patch_list(ptr noundef %2)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_set(ptr noundef %i.jc, i32 noundef %.0147) #23
  call void @_colorchecker_update_sliders(ptr noundef %2)
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 104
  %i.jf = atomicrmw add ptr %i.je, i32 -1 seq_cst, align 4 ; 0 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %.0147, ptr %i.jg, align 4, !tbaa !65
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0147, ptr %i.jh, align 8, !tbaa !62
  %i.ji = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.ji) #23
  br label %bb.u

.thread173:                                       ; preds = %bb.a, %bb.e, %bb.i, %bb.h
  %i.jj = load i32, ptr %i.o, align 4, !tbaa !17
  %i.jk = add nsw i32 %i.jj, -1
  %spec.select172 = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.jk)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_set(ptr noundef %i.jm, i32 noundef %spec.select172) #23
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t, %bb.f, %bb.c, %.thread173, %bb.g, %bb.d
  %.0151 = phi i32 [ 0, %.thread173 ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ], [ 0, %bb.f ], [ 1, %._crit_edge ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.0151
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @checker_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load <2 x i32>, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !47 ; 3 uses
  %i.j = sitofp reassoc nsz arcp contract afn <2 x i32> %i.h to <2 x double> ; 2 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.i, %i.j
  %i.l = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.i, zeroinitializer
  %i.m = select <2 x i1> %i.l, <2 x double> zeroinitializer, <2 x double> %i.i
  %i.n = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> %i.m
  %i.o = fptrunc reassoc nsz arcp contract afn <2 x double> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 24                    ; 2 uses
  %spec.select41 = select i1 %i.r, i32 7, i32 6   ; 2 uses
  %spec.select42 = select i1 %i.r, float 7.000000e+00, float 4.000000e+00
  %i.s = uitofp nneg i32 %spec.select41 to float
  %i.t = sitofp reassoc nsz arcp contract afn <2 x i32> %i.h to <2 x float>
  %i.u = insertelement <2 x float> poison, float %i.s, i64 0
  %i.v = insertelement <2 x float> %i.u, float %spec.select42, i64 1
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.o
  %i.x = fdiv reassoc nsz arcp contract afn <2 x float> %i.w, %i.t ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %i.ac = mul nsw i32 %spec.select41, %i.ab
  %i.ad = add nsw i32 %i.ac, %i.z                 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  %.not = icmp slt i32 %i.ad, %i.q
  %or.cond = and i1 %i.ae, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #23
  %i.ag = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = fpext reassoc nsz arcp contract afn float %i.ai to double
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ag
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12
  %i.ar = fpext reassoc nsz arcp contract afn float %i.aq to double
  %i.as = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.af, double noundef %i.aj, double noundef %i.an, double noundef %i.ar) #23 ; 0 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !64
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.at, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.034 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.034
}

declare ptr @dt_bauhaus_combobox_new(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @patch_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 3 uses
  %i.c = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.c, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.c, ptr %i.e, align 4, !tbaa !65
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = atomicrmw add ptr %i.g, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @_colorchecker_update_sliders(ptr noundef %1)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = atomicrmw add ptr %i.j, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #23
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !64
  tail call void @gtk_widget_queue_draw(ptr noundef %i.l) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @target_L_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %.not = icmp sge i32 %i.f, %i.h
  %i.i = icmp slt i32 %i.f, 0
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %bb.f, label %bb.b
end_hunk_0
begin_hunk_1_@target_C_callback:bb.a
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 2 uses
  %i.k = zext nneg i32 %i.f to i64                ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !12 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.q
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.n
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.s) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 784 ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.k
  %i.w = load float, ptr %i.v, align 4, !tbaa !12 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 980 ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.k
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12 ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, %i.x
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ac) ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.ad, f0x38D1B717
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ae, float f0x38D1B717, float %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !66
  %.not117 = icmp eq i32 %i.ag, 0
  %i.ah = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #23 ; 2 uses
  br i1 %.not117, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.ah, 1.280000e+02
  br i1 %i.ai, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #23
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double
  %i.al = fcmp reassoc nsz arcp contract afn olt double %i.ak, 1.000000e-02
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.an = phi float [ 1.280000e+02, %bb.c ], [ %i.am, %bb.e ], [ f0x3C23D70A, %bb.d ] ; 2 uses
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !62
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ap ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.an
  %i.at = fdiv reassoc nsz arcp contract afn float %i.as, %spec.select ; 3 uses
  %i.au = fcmp reassoc nsz arcp contract afn ogt float %i.at, 1.280000e+02
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.at, -1.280000e+02
  %spec.select118 = select i1 %i.av, float -1.280000e+02, float %i.at
  %i.aw = select i1 %i.au, float 1.280000e+02, float %spec.select118
  store float %i.aw, ptr %i.aq, align 4, !tbaa !12
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ap ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.an
  %i.ba = fdiv reassoc nsz arcp contract afn float %i.az, %spec.select ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.ba, 1.280000e+02
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.ba, -1.280000e+02
  %spec.select119 = select i1 %i.bc, float -1.280000e+02, float %i.ba
  %i.bd = select i1 %i.bb, float 1.280000e+02, float %spec.select119
  store float %i.bd, ptr %i.ax, align 4, !tbaa !12
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = atomicrmw add ptr %i.bf, i32 1 seq_cst, align 4 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !68
  %i.bj = load i32, ptr %i.e, align 8, !tbaa !62
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bi, float noundef %i.bm) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.bp = load i32, ptr %i.e, align 8, !tbaa !62
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bo, float noundef %i.bs) #23
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.bt = fadd reassoc nsz arcp contract afn float %i.ah, %i.t
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 1.280000e+02
  br i1 %i.bu, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #23
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.t
  %i.bx = fpext reassoc nsz arcp contract afn float %i.bw to double
  %i.by = fcmp reassoc nsz arcp contract afn olt double %i.bx, 1.000000e-02
  br i1 %i.by, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #23
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.t
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.cb = phi float [ 1.280000e+02, %bb.g ], [ %i.ca, %bb.i ], [ f0x3C23D70A, %bb.h ] ; 2 uses
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !62
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cd ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.cb
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.cg, %spec.select ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 1.280000e+02
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, -1.280000e+02
  %spec.select120 = select i1 %i.cj, float -1.280000e+02, float %i.ch
  %i.ck = select i1 %i.ci, float 1.280000e+02, float %spec.select120
  store float %i.ck, ptr %i.ce, align 4, !tbaa !12
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.cd ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.cb
  %i.co = fdiv reassoc nsz arcp contract afn float %i.cn, %spec.select ; 3 uses
  %i.cp = fcmp reassoc nsz arcp contract afn ogt float %i.co, 1.280000e+02
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.co, -1.280000e+02
  %spec.select121 = select i1 %i.cq, float -1.280000e+02, float %i.co
  %i.cr = select i1 %i.cp, float 1.280000e+02, float %spec.select121
  store float %i.cr, ptr %i.cl, align 4, !tbaa !12
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.cu = atomicrmw add ptr %i.ct, i32 1 seq_cst, align 4 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !68
  %i.cx = load i32, ptr %i.e, align 8, !tbaa !62
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cy
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fsub reassoc nsz arcp contract afn float %i.da, %i.dc
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cw, float noundef %i.dd) #23
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !69
  %i.dg = load i32, ptr %i.e, align 8, !tbaa !62
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.dh
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dj, %i.dl
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.df, float noundef %i.dm) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  %i.dp = atomicrmw add ptr %i.do, i32 -1 seq_cst, align 4 ; 0 uses
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  tail call void @dt_dev_add_history_item(ptr noundef %i.dq, ptr noundef nonnull %1, i32 noundef 1) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @target_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 2 uses
  %i.c = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.c, ptr %i.d, align 8, !tbaa !66
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @_colorchecker_update_sliders(ptr noundef %1)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = atomicrmw add ptr %i.i, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #23
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !64
  tail call void @gtk_widget_queue_draw(ptr noundef %i.k) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !239
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !45
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1288), align 8, !tbaa !45
  store ptr @introspection_init.f13, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1216), align 16, !tbaa !45
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #21 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.41) #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.42) #29
  %.not28 = icmp eq i32 %i.b, 0
  br i1 %.not28, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.43) #29
  %.not29 = icmp eq i32 %i.c, 0
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 196
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.44) #29
  %.not30 = icmp eq i32 %i.e, 0
  br i1 %.not30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 196
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.45) #29
  %.not31 = icmp eq i32 %i.g, 0
  br i1 %.not31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.46) #29
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.47) #29
  %.not33 = icmp eq i32 %i.k, 0
  br i1 %.not33, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 588
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.48) #29
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 588
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.49) #29
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.50) #29
  %.not36 = icmp eq i32 %i.q, 0
  br i1 %.not36, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.51) #29
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 980
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.52) #29
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 980
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.53) #29
  %.not39 = icmp eq i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %spec.select = select i1 %.not39, ptr %i.x, ptr null
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b, %bb.a, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.0 = phi ptr [ %0, %bb.b ], [ %spec.select, %bb.w ], [ %i.v, %bb.v ], [ %i.t, %bb.t ], [ %i.r, %bb.r ], [ %i.p, %bb.p ], [ %i.n, %bb.n ], [ %i.l, %bb.l ], [ %i.j, %bb.j ], [ %i.h, %bb.h ], [ %i.f, %bb.f ], [ %i.d, %bb.d ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.41) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.42) #23
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.43) #23
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44) #23
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.45) #23
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.46) #23
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.47) #23
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.48) #23
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.49) #23
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.50) #23
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.51) #23
end_hunk_1
begin_hunk_2_@llvm.masked.gather.v8f32.v8p0
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"dt_iop_colorchecker_params_t", !7, i64 0, !7, i64 196, !7, i64 392, !7, i64 588, !7, i64 784, !7, i64 980, !8, i64 1176}
!17 = !{!16, !8, i64 1176}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!20 = !{!"dt_action_t", !8, i64 0, !18, i64 8, !18, i64 16, !13, i64 24, !19, i64 32, !19, i64 40}
!21 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!22 = !{!"dt_iop_module_so_t", !20, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !21, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!23 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!24 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!25 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!26 = !{!"dt_dev_histogram_collection_params_t", !25, i64 0, !8, i64 8}
!27 = !{!"p1 int", !13, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !28, i64 8, !8, i64 16, !8, i64 20}
!30 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!31 = !{!"short", !7, i64 0}
!32 = !{!"", !31, i64 0, !31, i64 2}
!33 = !{!"", !8, i64 0, !7, i64 16}
!34 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !32, i64 48, !33, i64 64, !7, i64 96, !8, i64 112}
!35 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!36 = !{!"p1 float", !13, i64 0}
!37 = !{!"dt_dev_distorted_mask_cache_t", !36, i64 0, !30, i64 8, !28, i64 32, !28, i64 40}
!38 = !{!"dt_dev_pixelpipe_iop_t", !23, i64 0, !24, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !26, i64 40, !27, i64 56, !29, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !28, i64 120, !8, i64 128, !8, i64 132, !30, i64 136, !30, i64 156, !30, i64 176, !30, i64 196, !8, i64 216, !8, i64 220, !34, i64 224, !34, i64 352, !7, i64 480, !8, i64 516, !35, i64 520, !37, i64 528, !37, i64 576}
!39 = !{!38, !13, i64 16}
!40 = !{!"dt_iop_colorchecker_data_t", !8, i64 0, !7, i64 4, !7, i64 592, !7, i64 804, !7, i64 1016}
!41 = !{!40, !8, i64 0}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!7, !7, i64 0}
!46 = !{!"double", !7, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"branch_weights", i32 4, i32 12}
!49 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!50 = !{!"dt_pthread_mutex_t", !7, i64 0}
!51 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!52 = !{!"", !35, i64 0, !35, i64 8}
!53 = !{!"", !23, i64 0, !8, i64 8}
!54 = !{!"", !52, i64 0, !53, i64 16}
!55 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!56 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!57 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!58 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !21, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !27, i64 608, !29, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !49, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !50, i64 712, !13, i64 752, !13, i64 760, !51, i64 768, !51, i64 776, !13, i64 784, !54, i64 792, !55, i64 824, !55, i64 832, !55, i64 840, !55, i64 848, !55, i64 856, !55, i64 864, !55, i64 872, !8, i64 880, !55, i64 888, !55, i64 896, !55, i64 904, !56, i64 912, !56, i64 920, !55, i64 928, !55, i64 936, !8, i64 944, !57, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !55, i64 1096, !13, i64 1104, !8, i64 1112}
!59 = !{!58, !13, i64 680}
!60 = !{!58, !13, i64 704}
!61 = !{!"dt_iop_colorchecker_gui_data_t", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !8, i64 56, !8, i64 60, !8, i64 64}
!62 = !{!61, !8, i64 56}
!63 = !{!61, !55, i64 8}
!64 = !{!61, !55, i64 0}
!65 = !{!61, !8, i64 60}
!66 = !{!61, !8, i64 64}
!67 = !{!61, !55, i64 16}
!68 = !{!61, !55, i64 24}
!69 = !{!61, !55, i64 32}
!70 = !{!61, !55, i64 40}
!71 = !{!58, !13, i64 688}
!72 = !{!22, !13, i64 520}
!73 = !{!58, !8, i64 492}
!74 = !{!"dt_codepath_t", !8, i64 0}
!75 = !{!"p1 _ZTS6_GList", !13, i64 0}
!76 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!77 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!78 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!79 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!80 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!81 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!82 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!83 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!84 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!85 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!86 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!87 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!88 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!89 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!90 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!91 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!92 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!93 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!94 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!95 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!96 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!97 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!98 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!99 = !{!"_Bool", !7, i64 0}
!100 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!101 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!102 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!103 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!104 = !{!"", !98, i64 0, !50, i64 8, !7, i64 48, !99, i64 96, !99, i64 97, !100, i64 104, !101, i64 112, !102, i64 120, !103, i64 128, !103, i64 136, !103, i64 144}
!105 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!106 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!107 = !{!"dt_sys_resources_t", !28, i64 0, !28, i64 8, !27, i64 16, !27, i64 24, !8, i64 32}
!108 = !{!"dt_backthumb_t", !46, i64 0, !46, i64 8, !8, i64 16, !8, i64 20}
!109 = !{!"dt_gimp_t", !8, i64 0, !18, i64 8, !18, i64 16, !8, i64 24, !8, i64 28}
!110 = !{!"dt_splash_t", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !8, i64 32}
!111 = !{!"darktable_t", !74, i64 0, !8, i64 4, !8, i64 8, !75, i64 16, !75, i64 24, !75, i64 32, !75, i64 40, !76, i64 48, !77, i64 56, !49, i64 64, !78, i64 72, !79, i64 80, !80, i64 88, !81, i64 96, !82, i64 104, !83, i64 112, !84, i64 120, !85, i64 128, !86, i64 136, !87, i64 144, !88, i64 152, !89, i64 160, !90, i64 168, !91, i64 176, !92, i64 184, !93, i64 192, !94, i64 200, !95, i64 208, !96, i64 216, !97, i64 224, !7, i64 232, !50, i64 2792, !50, i64 2832, !50, i64 2872, !50, i64 2912, !50, i64 2952, !50, i64 2992, !18, i64 3032, !18, i64 3040, !18, i64 3048, !18, i64 3056, !18, i64 3064, !18, i64 3072, !18, i64 3080, !18, i64 3088, !18, i64 3096, !18, i64 3104, !18, i64 3112, !18, i64 3120, !18, i64 3128, !104, i64 3136, !75, i64 3288, !46, i64 3296, !75, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !105, i64 3520, !106, i64 3528, !107, i64 3536, !108, i64 3576, !109, i64 3600, !110, i64 3632, !8, i64 3672}
!112 = !{!111, !82, i64 104}
!113 = !{!111, !49, i64 64}
!114 = !{!"dt_iop_colorchecker_params_v2_t", !7, i64 0, !7, i64 196, !7, i64 392, !7, i64 588, !7, i64 784, !7, i64 980, !8, i64 1176}
!115 = !{!114, !8, i64 1176}
!116 = !{!22, !13, i64 48}
!117 = distinct !{!117, i1 false, !"LVerDomain"}
!118 = distinct !{!118, !117}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !42, !43}
!121 = distinct !{!121, !44}
!122 = distinct !{!122, i1 false, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !42, !43}
!126 = distinct !{!126, !44}
!127 = distinct !{!127, !42}
!128 = distinct !{!128, !42}
!129 = distinct !{!129, i1 true, !"copy_pixel"}
!130 = distinct !{!130, !129, !"copy_pixel: argument 1"}
!131 = distinct !{!131, !129, !"copy_pixel: argument 0"}
!132 = distinct !{!132, i1 true, !"copy_pixel_nontemporal"}
!133 = distinct !{!133, !132, !"copy_pixel_nontemporal: argument 0"}
!134 = !{!38, !8, i64 132}
!135 = !{!30, !8, i64 12}
!136 = !{!30, !8, i64 8}
!137 = !{!118}
!138 = !{!119}
!139 = !{!123}
!140 = !{!124}
!141 = !{!131, !130}
!142 = !{!133}
!143 = !{i32 1}
!144 = distinct !{!144, i1 false, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !42}
!149 = distinct !{!149, !44}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !44}
!153 = distinct !{!153, !42, !43}
!154 = distinct !{!154, !43, !42}
!155 = distinct !{!155, !42, !43}
!156 = distinct !{!156, !42, !43}
!157 = distinct !{!157, !43, !42}
!158 = distinct !{!158, !42, !43}
!159 = distinct !{!159, !42, !43}
!160 = distinct !{!160, !43, !42}
!161 = distinct !{!161, !42, !43}
!162 = distinct !{!162, !42, !43}
!163 = distinct !{!163, !43, !42}
!164 = distinct !{!164, !43, !42}
!165 = distinct !{!165, !42, !43}
!166 = distinct !{!166, !42, !43}
!167 = distinct !{!167, !43, !42}
!168 = distinct !{!168, !42, !43}
!169 = distinct !{!169, !42, !43}
!170 = distinct !{!170, !43, !42}
!171 = distinct !{!171, !42, !43}
!172 = distinct !{!172, !42, !43}
!173 = distinct !{!173, !43, !42}
!174 = distinct !{!174, !43, !42}
!175 = distinct !{!175, !42, !43}
!176 = distinct !{!176, !42, !43}
!177 = distinct !{!177, !43, !42}
!178 = distinct !{!178, !42, !43}
!179 = distinct !{!179, !42, !43}
!180 = distinct !{!180, !43, !42}
!181 = distinct !{!181, !42, !43}
!182 = distinct !{!182, !43, !42}
!183 = !{!145}
!184 = !{!146}
!185 = distinct !{!185, !44}
!186 = distinct !{!186, !44}
!187 = distinct !{!187, !44}
!188 = distinct !{!188, !44}
!189 = distinct !{!189, i1 false, !"LVerDomain"}
!190 = distinct !{!190, !189}
!191 = distinct !{!191, !189}
!192 = distinct !{!192, !42, !43}
!193 = distinct !{!193, !44}
!194 = distinct !{!194, !42}
!195 = distinct !{!195, i1 false, !"LVerDomain"}
!196 = distinct !{!196, !195}
!197 = distinct !{!197, !195}
!198 = distinct !{!198, !195}
!199 = distinct !{!199, !42, !43}
!200 = distinct !{!200, !42, !43}
!201 = distinct !{!201, !44}
!202 = distinct !{!202, !42}
!203 = !{!190}
!204 = !{!191}
!205 = !{!196}
!206 = !{!197}
!207 = !{!198}
!208 = !{!196, !197}
!209 = !{!58, !8, i64 676}
!210 = !{!58, !8, i64 696}
!211 = !{!"dt_iop_colorchecker_global_data_t", !8, i64 0}
!212 = !{!211, !8, i64 0}
!213 = !{!61, !55, i64 48}
!214 = !{!55, !55, i64 0}
!215 = !{!58, !55, i64 824}
!216 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!217 = !{!216, !8, i64 8}
!218 = !{!216, !8, i64 12}
!219 = !{!"p1 _ZTS7dt_ui_t", !13, i64 0}
!220 = !{!"dt_gui_widgets_t", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!221 = !{!"dt_gui_scrollbars_t", !55, i64 0, !55, i64 8, !8, i64 16}
!222 = !{!"p1 _ZTS14_cairo_surface", !13, i64 0}
!223 = !{!"dt_gui_gtk_t", !219, i64 0, !220, i64 8, !221, i64 56, !222, i64 80, !8, i64 88, !18, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !46, i64 1384, !46, i64 1392, !46, i64 1400, !46, i64 1408, !55, i64 1416, !46, i64 1424, !46, i64 1432, !46, i64 1440, !46, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!224 = !{!223, !46, i64 1440}
!225 = !{!223, !46, i64 1432}
!226 = distinct !{!226, !42, !43}
!227 = distinct !{!227, !42, !43}
!228 = distinct !{!228, !43, !42}
!229 = !{!"p1 _ZTS10_GdkWindow", !13, i64 0}
!230 = !{!"p1 double", !13, i64 0}
!231 = !{!"p1 _ZTS10_GdkDevice", !13, i64 0}
!232 = !{!"_GdkEventButton", !8, i64 0, !229, i64 8, !7, i64 16, !8, i64 20, !46, i64 24, !46, i64 32, !230, i64 40, !8, i64 48, !8, i64 52, !231, i64 56, !46, i64 64, !46, i64 72}
!233 = !{!232, !8, i64 52}
!234 = !{!232, !8, i64 0}
!235 = !{!232, !8, i64 48}
!236 = !{!"branch_weights", i32 8, i32 24}
!237 = !{!"p1 _ZTS24dt_introspection_field_t", !13, i64 0}
!238 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !18, i64 8, !28, i64 16, !237, i64 24, !28, i64 32, !28, i64 40}
!239 = !{!238, !8, i64 0}
end_hunk_2
