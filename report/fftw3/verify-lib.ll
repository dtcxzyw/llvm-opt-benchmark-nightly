Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-lib?download=true
inline.NumInlined: 53
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ovtpvt_err
declare void @ovtpvt_err(ptr noundef, ...) local_unnamed_addr #10

declare void @bench_exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local double @impulse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph102, label %._crit_edge103.thread141

._crit_edge103.thread141:                         ; preds = %bb.a
  %i.b = tail call fastcc double @impulse0(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11)
  br label %._crit_edge108

.lr.ph102:                                        ; preds = %bb.a
  %i.c = sitofp i32 %1 to double
  %i.d = tail call double @sqrt(double noundef %i.c) #13 ; 6 uses
  %i.e = add nuw nsw i32 %2, 1
  %i.f = uitofp nneg i32 %i.e to double           ; 6 uses
  %i.g = icmp sgt i32 %1, 0
  %wide.trip.count122 = zext nneg i32 %2 to i64   ; 5 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph102.split.preheader

.lr.ph102.split.preheader:                        ; preds = %.lr.ph102
  %i.h = sext i32 %1 to i64                       ; 5 uses
  %xtraiter = and i64 %wide.trip.count122, 3      ; 3 uses
  %i.i = icmp ult i32 %2, 4
  br i1 %i.i, label %.lr.ph102.split.epil.preheader, label %.lr.ph102.split.preheader.new

.lr.ph102.split.preheader.new:                    ; preds = %.lr.ph102.split.preheader
  %unroll_iter = and i64 %wide.trip.count122, 2147483644
  br label %.lr.ph102.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph102
  %i.j = zext nneg i32 %1 to i64                  ; 3 uses
  %xtraiter168 = and i64 %i.j, 3                  ; 3 uses
  %i.k = icmp ult i32 %1, 4
  %unroll_iter172 = and i64 %i.j, 2147483644
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next120, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next120 to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fmul double %i.d, %i.m
  %i.o = fdiv double %i.n, %i.f                   ; 6 uses
  %i.p = mul nuw nsw i64 %indvars.iv119, %i.j     ; 6 uses
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 5 uses
  %niter173 = phi i64 [ %niter173.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.q = add nuw nsw i64 %indvars.iv114, %i.p     ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.q
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.q ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store double %i.o, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !18
  %indvars.iv.next115 = or disjoint i64 %indvars.iv114, 1
  %i.u = add nuw nsw i64 %indvars.iv.next115, %i.p ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.u
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store double %i.o, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !18
  %indvars.iv.next115.1 = or disjoint i64 %indvars.iv114, 2
  %i.y = add nuw nsw i64 %indvars.iv.next115.1, %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.y ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store double %i.o, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !18
  %indvars.iv.next115.2 = or disjoint i64 %indvars.iv114, 3
  %i.ac = add nuw nsw i64 %indvars.iv.next115.2, %i.p ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ac ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store double %i.o, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !18
  %indvars.iv.next115.3 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !103

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod170.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv114.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next115.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv114.epil = phi i64 [ %indvars.iv114.epil.init, %.epil.preheader ], [ %indvars.iv.next115.epil, %bb.b ] ; 2 uses
  %epil.iter169 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter169.next, %bb.b ]
  %i.ag = add nuw nsw i64 %indvars.iv114.epil, %i.p ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ag ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store double %i.o, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !18
  %indvars.iv.next115.epil = add nuw nsw i64 %indvars.iv114.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !104

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.p ; 2 uses
  store double %i.o, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !18
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph107, label %.lr.ph.us, !llvm.loop !105

.lr.ph102.split:                                  ; preds = %.lr.ph102.split, %.lr.ph102.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph102.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph102.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph102.split.preheader.new ], [ %niter.next.3, %.lr.ph102.split ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fmul double %i.d, %i.an
  %i.ap = fdiv double %i.ao, %i.f
  %i.aq = mul nsw i64 %indvars.iv, %i.h
  %i.ar = getelementptr inbounds [16 x i8], ptr %3, i64 %i.aq ; 2 uses
  store double %i.ap, ptr %i.ar, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !18
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = fmul double %i.d, %i.au
  %i.aw = fdiv double %i.av, %i.f
  %i.ax = mul nsw i64 %indvars.iv.next, %i.h
  %i.ay = getelementptr inbounds [16 x i8], ptr %3, i64 %i.ax ; 2 uses
  store double %i.aw, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !18
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = fmul double %i.d, %i.bb
  %i.bd = fdiv double %i.bc, %i.f
  %i.be = mul nsw i64 %indvars.iv.next.1, %i.h
  %i.bf = getelementptr inbounds [16 x i8], ptr %3, i64 %i.be ; 2 uses
  store double %i.bd, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store double 0.000000e+00, ptr %i.bg, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul double %i.d, %i.bi
  %i.bk = fdiv double %i.bj, %i.f
  %i.bl = mul nsw i64 %indvars.iv.next.2, %i.h
  %i.bm = getelementptr inbounds [16 x i8], ptr %3, i64 %i.bl ; 2 uses
  store double %i.bk, ptr %i.bm, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !18
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph107.loopexit166.unr-lcssa, label %.lr.ph102.split, !llvm.loop !106

.lr.ph107.loopexit166.unr-lcssa:                  ; preds = %.lr.ph102.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107, label %.lr.ph102.split.epil.preheader

.lr.ph102.split.epil.preheader:                   ; preds = %.lr.ph107.loopexit166.unr-lcssa, %.lr.ph102.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph102.split.preheader ], [ %indvars.iv.next.3, %.lr.ph107.loopexit166.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph102.split.epil

.lr.ph102.split.epil:                             ; preds = %.lr.ph102.split.epil, %.lr.ph102.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph102.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph102.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph102.split.epil.preheader ], [ %epil.iter.next, %.lr.ph102.split.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv.next.epil to i32
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = fmul double %i.d, %i.bp
  %i.br = fdiv double %i.bq, %i.f
  %i.bs = mul nsw i64 %indvars.iv.epil, %i.h
  %i.bt = getelementptr inbounds [16 x i8], ptr %3, i64 %i.bs ; 2 uses
  store double %i.br, ptr %i.bt, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store double 0.000000e+00, ptr %i.bu, align 8, !tbaa !18
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph107, label %.lr.ph102.split.epil, !llvm.loop !107

.lr.ph107:                                        ; preds = %.lr.ph107.loopexit166.unr-lcssa, %.lr.ph102.split.epil, %._crit_edge.us
  %i.bv = tail call fastcc double @impulse0(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11) ; 3 uses
  %i.bw = add nuw nsw i32 %2, 1
  %i.bx = uitofp nneg i32 %i.bw to double
  %12 = uitofp nneg i32 %1 to double              ; 7 uses
  %i.by = tail call double @sqrt(double noundef %12) #13
  %i.bz = fmul double %i.by, %i.bx                ; 6 uses
  %i.ca = icmp sgt i32 %1, 0
  %wide.trip.count137 = zext nneg i32 %2 to i64
  br i1 %i.ca, label %.lr.ph.us109.preheader, label %.lr.ph107.split.preheader

.lr.ph107.split.preheader:                        ; preds = %.lr.ph107
  %i.cb = sext i32 %1 to i64                      ; 5 uses
  %xtraiter174 = and i64 %wide.trip.count122, 3   ; 3 uses
  %i.cc = icmp ult i32 %2, 4
  br i1 %i.cc, label %.lr.ph107.split.epil.preheader, label %.lr.ph107.split.preheader.new

.lr.ph107.split.preheader.new:                    ; preds = %.lr.ph107.split.preheader
  %unroll_iter178 = and i64 %wide.trip.count122, 2147483644
  br label %.lr.ph107.split

.lr.ph.us109.preheader:                           ; preds = %.lr.ph107
  %i.cd = zext nneg i32 %1 to i64                 ; 3 uses
  %xtraiter181 = and i64 %i.cd, 3                 ; 3 uses
  %i.ce = icmp ult i32 %1, 4
  %unroll_iter185 = and i64 %i.cd, 2147483644
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod184 = icmp ne i64 %xtraiter181, 0
  br label %.lr.ph.us109

.lr.ph.us109:                                     ; preds = %.lr.ph.us109.preheader, %._crit_edge.us110
  %indvars.iv134 = phi i64 [ 0, %.lr.ph.us109.preheader ], [ %indvars.iv.next135, %._crit_edge.us110 ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 3 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv.next135 to i32
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = fdiv double %i.cg, %i.bz                ; 6 uses
  %i.ci = mul nuw nsw i64 %indvars.iv134, %i.cd   ; 6 uses
  br i1 %i.ce, label %.epil.preheader180, label %.lr.ph.us109.new

.lr.ph.us109.new:                                 ; preds = %.lr.ph.us109, %.lr.ph.us109.new
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.3, %.lr.ph.us109.new ], [ 0, %.lr.ph.us109 ] ; 5 uses
  %niter186 = phi i64 [ %niter186.next.3, %.lr.ph.us109.new ], [ 0, %.lr.ph.us109 ]
  %i.cj = add nuw nsw i64 %indvars.iv129, %i.ci   ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cj ; 2 uses
  store double %i.ch, ptr %i.ck, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.cj
  %indvars.iv.next130 = or disjoint i64 %indvars.iv129, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = add nuw nsw i64 %indvars.iv.next130, %i.ci ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cn ; 2 uses
  store double %i.ch, ptr %i.co, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double 0.000000e+00, ptr %i.cp, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.cn
  %indvars.iv.next130.1 = or disjoint i64 %indvars.iv129, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  %i.cr = add nuw nsw i64 %indvars.iv.next130.1, %i.ci ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cr ; 2 uses
  store double %i.ch, ptr %i.cs, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double 0.000000e+00, ptr %i.ct, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.cr
  %indvars.iv.next130.2 = or disjoint i64 %indvars.iv129, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  %i.cv = add nuw nsw i64 %indvars.iv.next130.2, %i.ci ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cv ; 2 uses
  store double %i.ch, ptr %i.cw, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store double 0.000000e+00, ptr %i.cx, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.cv
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %niter186.next.3 = add i64 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %._crit_edge.us110.unr-lcssa, label %.lr.ph.us109.new, !llvm.loop !108

._crit_edge.us110.unr-lcssa:                      ; preds = %.lr.ph.us109.new
  br i1 %lcmp.mod183.not, label %._crit_edge.us110, label %.epil.preheader180

.epil.preheader180:                               ; preds = %._crit_edge.us110.unr-lcssa, %.lr.ph.us109
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph.us109 ], [ %indvars.iv.next130.3, %._crit_edge.us110.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader180
  %indvars.iv129.epil = phi i64 [ %indvars.iv129.epil.init, %.epil.preheader180 ], [ %indvars.iv.next130.epil, %bb.c ] ; 2 uses
  %epil.iter182 = phi i64 [ 0, %.epil.preheader180 ], [ %epil.iter182.next, %bb.c ]
  %i.cz = add nuw nsw i64 %indvars.iv129.epil, %i.ci ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cz ; 2 uses
  store double %i.ch, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store double 0.000000e+00, ptr %i.db, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.cz
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %epil.iter182.next = add i64 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i64 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %._crit_edge.us110, label %bb.c, !llvm.loop !109

._crit_edge.us110:                                ; preds = %bb.c, %._crit_edge.us110.unr-lcssa
  %i.dd = fmul double %i.ch, %12
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ci ; 2 uses
  store double %i.dd, ptr %i.de, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store double 0.000000e+00, ptr %i.df, align 8, !tbaa !18
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge108, label %.lr.ph.us109, !llvm.loop !110

.lr.ph107.split:                                  ; preds = %.lr.ph107.split, %.lr.ph107.split.preheader.new
  %indvars.iv124 = phi i64 [ 0, %.lr.ph107.split.preheader.new ], [ %indvars.iv.next125.3, %.lr.ph107.split ] ; 5 uses
  %niter179 = phi i64 [ 0, %.lr.ph107.split.preheader.new ], [ %niter179.next.3, %.lr.ph107.split ]
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1 ; 2 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv.next125 to i32
  %i.dh = uitofp nneg i32 %i.dg to double
  %i.di = fdiv double %i.dh, %i.bz
  %i.dj = fmul double %i.di, %12
  %i.dk = mul nsw i64 %indvars.iv124, %i.cb
  %i.dl = getelementptr inbounds [16 x i8], ptr %6, i64 %i.dk ; 2 uses
  store double %i.dj, ptr %i.dl, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !18
  %indvars.iv.next125.1 = or disjoint i64 %indvars.iv124, 2 ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv.next125.1 to i32
  %i.do = uitofp nneg i32 %i.dn to double
  %i.dp = fdiv double %i.do, %i.bz
  %i.dq = fmul double %i.dp, %12
  %i.dr = mul nsw i64 %indvars.iv.next125, %i.cb
  %i.ds = getelementptr inbounds [16 x i8], ptr %6, i64 %i.dr ; 2 uses
  store double %i.dq, ptr %i.ds, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !18
  %indvars.iv.next125.2 = or disjoint i64 %indvars.iv124, 3 ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.next125.2 to i32
  %i.dv = uitofp nneg i32 %i.du to double
  %i.dw = fdiv double %i.dv, %i.bz
  %i.dx = fmul double %i.dw, %12
  %i.dy = mul nsw i64 %indvars.iv.next125.1, %i.cb
  %i.dz = getelementptr inbounds [16 x i8], ptr %6, i64 %i.dy ; 2 uses
  store double %i.dx, ptr %i.dz, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store double 0.000000e+00, ptr %i.ea, align 8, !tbaa !18
  %indvars.iv.next125.3 = add nuw nsw i64 %indvars.iv124, 4 ; 3 uses
  %i.eb = trunc nuw nsw i64 %indvars.iv.next125.3 to i32
  %i.ec = uitofp nneg i32 %i.eb to double
  %i.ed = fdiv double %i.ec, %i.bz
  %i.ee = fmul double %i.ed, %12
  %i.ef = mul nsw i64 %indvars.iv.next125.2, %i.cb
  %i.eg = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ef ; 2 uses
  store double %i.ee, ptr %i.eg, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store double 0.000000e+00, ptr %i.eh, align 8, !tbaa !18
  %niter179.next.3 = add i64 %niter179, 4         ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %._crit_edge108.loopexit165.unr-lcssa, label %.lr.ph107.split, !llvm.loop !111

._crit_edge108.loopexit165.unr-lcssa:             ; preds = %.lr.ph107.split
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %._crit_edge108, label %.lr.ph107.split.epil.preheader

.lr.ph107.split.epil.preheader:                   ; preds = %._crit_edge108.loopexit165.unr-lcssa, %.lr.ph107.split.preheader
  %indvars.iv124.epil.init = phi i64 [ 0, %.lr.ph107.split.preheader ], [ %indvars.iv.next125.3, %._crit_edge108.loopexit165.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter174, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph107.split.epil

.lr.ph107.split.epil:                             ; preds = %.lr.ph107.split.epil, %.lr.ph107.split.epil.preheader
  %indvars.iv124.epil = phi i64 [ %indvars.iv124.epil.init, %.lr.ph107.split.epil.preheader ], [ %indvars.iv.next125.epil, %.lr.ph107.split.epil ] ; 2 uses
  %epil.iter175 = phi i64 [ 0, %.lr.ph107.split.epil.preheader ], [ %epil.iter175.next, %.lr.ph107.split.epil ]
  %indvars.iv.next125.epil = add nuw nsw i64 %indvars.iv124.epil, 1 ; 2 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv.next125.epil to i32
  %i.ej = uitofp nneg i32 %i.ei to double
  %i.ek = fdiv double %i.ej, %i.bz
  %i.el = fmul double %i.ek, %12
  %i.em = mul nsw i64 %indvars.iv124.epil, %i.cb
  %i.en = getelementptr inbounds [16 x i8], ptr %6, i64 %i.em ; 2 uses
  store double %i.el, ptr %i.en, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store double 0.000000e+00, ptr %i.eo, align 8, !tbaa !18
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %._crit_edge108, label %.lr.ph107.split.epil, !llvm.loop !112

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit165.unr-lcssa, %.lr.ph107.split.epil, %._crit_edge.us110, %._crit_edge103.thread141
  %i.ep = phi double [ %i.bv, %._crit_edge.us110 ], [ %i.b, %._crit_edge103.thread141 ], [ %i.bv, %.lr.ph107.split.epil ], [ %i.bv, %._crit_edge108.loopexit165.unr-lcssa ] ; 2 uses
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  %i.er = select i1 %i.eq, double 0.000000e+00, double %i.ep ; 2 uses
  %i.es = tail call fastcc double @impulse0(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11) ; 2 uses
  %i.et = fcmp ogt double %i.er, %i.es
  %i.eu = select i1 %i.et, double %i.er, double %i.es
  ret double %i.eu
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc double @impulse0(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11) unnamed_addr #1 {
bb.a:
  %i.a = mul i32 %2, %1                           ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %9) #13
  %i.c = tail call double @acmp(ptr noundef %9, ptr noundef %6, i32 noundef %i.a, ptr noundef nonnull @.str.8, double noundef %11) ; 2 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
end_hunk_0
begin_hunk_1_@linear:bb.a
  store <2 x double> %i.ej, ptr %i.ee, align 8, !tbaa !18
  %indvars.iv.next.i76.us = add nuw nsw i64 %indvars.iv.i75.us, 1 ; 2 uses
  %exitcond.not.i77.us = icmp eq i64 %indvars.iv.next.i76.us, %wide.trip.count.i
  br i1 %exitcond.not.i77.us, label %.lr.ph.i81.us.preheader, label %.lr.ph.i73.us, !llvm.loop !147

.lr.ph.i81.us.preheader:                          ; preds = %.lr.ph.i73.us, %middle.block141
  %brmerge241 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge241, label %.lr.ph.i81.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i81.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i81.us.preheader ] ; 5 uses
  %i.ek = or disjoint i64 %index, 1               ; 3 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %index
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ek
  %wide.load = load <2 x double>, ptr %i.el, align 8, !tbaa !18, !alias.scope !159
  %wide.load126 = load <2 x double>, ptr %i.em, align 8, !tbaa !18, !alias.scope !159
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %index
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ek
  %wide.load127 = load <2 x double>, ptr %i.en, align 8, !tbaa !18, !alias.scope !160
  %wide.load128 = load <2 x double>, ptr %i.eo, align 8, !tbaa !18, !alias.scope !160
  %i.ep = fadd <2 x double> %wide.load, %wide.load127
  %i.eq = fadd <2 x double> %wide.load126, %wide.load128
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %index
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ek
  store <2 x double> %i.ep, ptr %i.er, align 8, !tbaa !18, !alias.scope !161, !noalias !162
  store <2 x double> %i.eq, ptr %i.es, align 8, !tbaa !18, !alias.scope !161, !noalias !162
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us.preheader229

.lr.ph.i81.us.preheader229:                       ; preds = %.lr.ph.i81.us.preheader, %middle.block
  %indvars.iv.i82.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i81.us.preheader ] ; 6 uses
  br i1 %lcmp.mod238.not, label %.lr.ph.i81.us.prol.loopexit, label %.lr.ph.i81.us.prol

.lr.ph.i81.us.prol:                               ; preds = %.lr.ph.i81.us.preheader229
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i82.us.ph ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i82.us.ph ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !18
  %i.ey = fadd double %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i82.us.ph ; 2 uses
  store double %i.ey, ptr %i.ez, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !18
  %i.fe = fadd double %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store double %i.fe, ptr %i.ff, align 8, !tbaa !18
  %indvars.iv.next.i83.us.prol = or disjoint i64 %indvars.iv.i82.us.ph, 1
  br label %.lr.ph.i81.us.prol.loopexit

.lr.ph.i81.us.prol.loopexit:                      ; preds = %.lr.ph.i81.us.prol, %.lr.ph.i81.us.preheader229
  %indvars.iv.i82.us.unr = phi i64 [ %indvars.iv.i82.us.ph, %.lr.ph.i81.us.preheader229 ], [ %indvars.iv.next.i83.us.prol, %.lr.ph.i81.us.prol ]
  %i.fg = icmp eq i64 %indvars.iv.i82.us.ph, %i.e
  br i1 %i.fg, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us

.lr.ph.i81.us:                                    ; preds = %.lr.ph.i81.us.prol.loopexit, %.lr.ph.i81.us
  %indvars.iv.i82.us = phi i64 [ %indvars.iv.next.i83.us.1, %.lr.ph.i81.us ], [ %indvars.iv.i82.us.unr, %.lr.ph.i81.us.prol.loopexit ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i82.us ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i82.us ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !18
  %i.fl = fadd double %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i82.us ; 2 uses
  store double %i.fl, ptr %i.fm, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !18
  %i.fr = fadd double %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store double %i.fr, ptr %i.fs, align 8, !tbaa !18
  %indvars.iv.next.i83.us = add nuw nsw i64 %indvars.iv.i82.us, 1 ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.i83.us ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next.i83.us ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !18
  %i.fx = fadd double %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next.i83.us ; 2 uses
  store double %i.fx, ptr %i.fy, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !18
  %i.gd = fadd double %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store double %i.gd, ptr %i.ge, align 8, !tbaa !18
  %indvars.iv.next.i83.us.1 = add nuw nsw i64 %indvars.iv.i82.us, 2 ; 2 uses
  %exitcond.not.i84.us.1 = icmp eq i64 %indvars.iv.next.i83.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i84.us.1, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us, !llvm.loop !153

aadd.exit85.loopexit.us:                          ; preds = %.lr.ph.i81.us.prol.loopexit, %.lr.ph.i81.us, %middle.block
  %i.gf = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gf(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %8) #13
  %i.gg = tail call double @acmp(ptr noundef %8, ptr noundef nonnull %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.gh = fcmp ogt double %.0100.us, %i.gg
  %i.gi = select i1 %i.gh, double %.0100.us, double %i.gg ; 2 uses
  %i.gj = add nuw nsw i32 %.04299.us, 1           ; 2 uses
  %exitcond110.not = icmp eq i32 %i.gj, %10
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !154

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %aadd.exit85.critedge.us, label %.critedge

aadd.exit85.critedge.us:                          ; preds = %.lr.ph.split, %aadd.exit85.critedge.us
  %.0100.us101 = phi double [ %i.gt, %aadd.exit85.critedge.us ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.04299.us102 = phi i32 [ %i.gu, %aadd.exit85.critedge.us ], [ 0, %.lr.ph.split ]
  %i.gk = tail call double @drand48() #13         ; 0 uses
  %i.gl = tail call double @drand48() #13         ; 0 uses
  %i.gm = tail call double @drand48() #13         ; 0 uses
  %i.gn = tail call double @drand48() #13         ; 0 uses
  %i.go = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.go(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %6) #13
  %i.gp = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gp(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %7) #13
  %i.gq = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gq(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %8) #13
  %i.gr = tail call double @acmp(ptr noundef %8, ptr noundef %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.gs = fcmp ogt double %.0100.us101, %i.gr
  %i.gt = select i1 %i.gs, double %.0100.us101, double %i.gr ; 2 uses
  %i.gu = add nuw nsw i32 %.04299.us102, 1        ; 2 uses
  %exitcond109.not = icmp eq i32 %i.gu, %10
  br i1 %exitcond109.not, label %._crit_edge, label %aadd.exit85.critedge.us, !llvm.loop !154

.critedge:                                        ; preds = %.lr.ph.split, %.critedge
  %.0100 = phi double [ %i.hc, %.critedge ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.04299 = phi i32 [ %i.hd, %.critedge ], [ 0, %.lr.ph.split ]
  %i.gv = tail call double @drand48() #13         ; 0 uses
  %i.gw = tail call double @drand48() #13         ; 0 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gx(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %6) #13
  %i.gy = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gy(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %7) #13
  %i.gz = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gz(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %8) #13
  %i.ha = tail call double @acmp(ptr noundef %8, ptr noundef %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.hb = fcmp ogt double %.0100, %i.ha
  %i.hc = select i1 %i.hb, double %.0100, double %i.ha ; 2 uses
  %i.hd = add nuw nsw i32 %.04299, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.hd, %10
  br i1 %exitcond.not, label %._crit_edge, label %.critedge, !llvm.loop !154

._crit_edge:                                      ; preds = %.critedge, %aadd.exit85.critedge.us, %aadd.exit85.loopexit.us, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.gi, %aadd.exit85.loopexit.us ], [ %i.gt, %aadd.exit85.critedge.us ], [ %i.hc, %.critedge ]
  ret double %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local double @tf_shift(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) %10, i32 noundef %11, double noundef %12, i32 noundef %13) local_unnamed_addr #1 {
bb.a:
  %i.a = mul nsw i32 %4, %3                       ; 5 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !31
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = icmp sgt i32 %11, 0
  %i.f = icmp sgt i32 %i.a, 0                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 3 uses
  %i.g = icmp eq i32 %13, 0
  %i.h = icmp sgt i32 %4, 0                       ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.i = fneg double %5
  %i.j = icmp slt i32 %4, 1                       ; 2 uses
  %i.k = icmp sgt i32 %i.a, 300                   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  %wide.trip.count.i116 = zext i32 %3 to i64      ; 2 uses
  br i1 %i.e, label %.lr.ph242.us.preheader, label %._crit_edge250

.lr.ph242.us.preheader:                           ; preds = %.lr.ph249
  %i.m = sext i32 %3 to i64                       ; 10 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %wide.trip.count271 = zext nneg i32 %4 to i64
  %wide.trip.count276 = zext nneg i32 %4 to i64
  %wide.trip.count281 = zext nneg i32 %4 to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = shl nsw i64 %i.m, 4
  %i.p = shl nsw i64 %i.m, 4
  %i.q = shl nsw i64 %i.m, 4
  %i.r = shl nsw i64 %i.m, 4
  %i.s = shl nsw i64 %i.m, 4
  %xtraiter504 = and i64 %wide.trip.count.i116, 7 ; 3 uses
  %i.t = icmp ult i32 %3, 8
  %unroll_iter508 = and i64 %wide.trip.count.i116, 2147483640
  %lcmp.mod506.not = icmp eq i64 %xtraiter504, 0
  %lcmp.mod507 = icmp ne i64 %xtraiter504, 0
  br label %.lr.ph242.us

.lr.ph242.us:                                     ; preds = %.lr.ph242.us.preheader, %._crit_edge243.us
  %indvars.iv284 = phi i64 [ 0, %.lr.ph242.us.preheader ], [ %indvars.iv.next285, %._crit_edge243.us ] ; 2 uses
  %.0247.us = phi double [ 0.000000e+00, %.lr.ph242.us.preheader ], [ %i.acg, %._crit_edge243.us ]
  %.0110245.us = phi i32 [ %3, %.lr.ph242.us.preheader ], [ %i.x, %._crit_edge243.us ]
  %.0111244.us = phi i32 [ 1, %.lr.ph242.us.preheader ], [ %i.aci, %._crit_edge243.us ] ; 6 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv284
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 22 uses
  %i.x = sdiv i32 %.0110245.us, %i.w              ; 23 uses
  %i.y = icmp sgt i32 %.0111244.us, 0             ; 2 uses
  %i.z = icmp sgt i32 %i.w, 0
  %or.cond.i135.us = and i1 %i.y, %i.z
  %i.aa = icmp sgt i32 %i.x, 0                    ; 6 uses
  %i.ab = zext i32 %i.x to i64                    ; 72 uses
  %i.ac = zext i32 %i.w to i64                    ; 12 uses
  %wide.trip.count58.i144.us = zext i32 %.0111244.us to i64 ; 10 uses
  %i.ad = icmp slt i32 %.0111244.us, 1            ; 2 uses
  %i.ae = icmp sgt i32 %i.w, 1                    ; 2 uses
  %i.af = add i32 %i.w, -1                        ; 9 uses
  %i.ag = sext i32 %i.w to i64                    ; 6 uses
  %wide.trip.count69.i175.us = zext i32 %i.af to i64 ; 4 uses
  %14 = sitofp i32 %i.w to double
  %15 = uitofp nneg i32 %i.w to double
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = insertelement <2 x double> %16, double %15, i64 1
  %18 = fdiv nnan <2 x double> splat (double f0x401921FB54442D18), %17 ; 4 uses
  %i.ah = icmp slt i32 %i.w, 1
  %or.cond.i.us.not258 = or i1 %i.ad, %i.ah
  %brmerge = select i1 %i.j, i1 true, i1 %i.ad
  %brmerge255 = select i1 %i.j, i1 true, i1 %or.cond.i.us.not258
  %i.ai = shl nuw nsw i64 %i.ac, 4
  %i.aj = mul i64 %i.ai, %i.ab                    ; 2 uses
  %i.ak = shl nuw nsw i64 %i.ab, 4
  %i.al = mul i32 %i.x, %i.af
  %i.am = mul i32 %i.w, %i.x
  %i.an = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.ao = add nsw i64 %i.an, -16
  %i.ap = mul i64 %i.ao, %i.ac
  %i.aq = add i64 %i.ap, 16
  %i.ar = mul i64 %i.aq, %i.ab
  %i.as = shl nuw nsw i64 %i.ac, 4
  %i.at = mul i64 %i.as, %i.ab
  %i.au = shl nuw nsw i64 %i.ab, 4
  %i.av = shl nuw nsw i64 %wide.trip.count69.i175.us, 4 ; 2 uses
  %i.aw = shl nuw nsw i64 %i.ab, 4
  %i.ax = add nuw nsw i64 %i.av, 16
  %i.ay = shl nuw nsw i64 %i.ab, 4
  %i.az = mul i32 %i.x, %i.af
  %i.ba = mul i32 %i.w, %i.x
  %i.bb = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.bc = add nsw i64 %i.bb, -16
  %i.bd = mul i64 %i.bc, %i.ag
  %i.be = add i64 %i.bd, 16
  %i.bf = mul i64 %i.be, %i.ab
  %i.bg = shl nsw i64 %i.ag, 4
  %i.bh = mul i64 %i.bg, %i.ab
  %i.bi = shl nuw nsw i64 %i.ab, 4
  %i.bj = mul i32 %i.x, %i.af
  %i.bk = mul i32 %i.w, %i.x
  %i.bl = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.bm = add nsw i64 %i.bl, -16
  %i.bn = mul i64 %i.bm, %i.ac
  %i.bo = add i64 %i.bn, 16
  %i.bp = mul i64 %i.bo, %i.ab
  %i.bq = shl nuw nsw i64 %i.ac, 4
  %i.br = mul i64 %i.bq, %i.ab
  %i.bs = shl nuw nsw i64 %i.ab, 4
  %i.bt = shl nuw nsw i64 %wide.trip.count69.i175.us, 4 ; 2 uses
  %i.bu = shl nuw nsw i64 %i.ab, 4
  %i.bv = add nuw nsw i64 %i.bt, 16
  %i.bw = shl nuw nsw i64 %i.ab, 4
  %i.bx = mul i32 %i.x, %i.af
  %i.by = mul i32 %i.w, %i.x
  %i.bz = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.ca = add nsw i64 %i.bz, -16
  %i.cb = mul i64 %i.ca, %i.ag
  %i.cc = add i64 %i.cb, 16
  %i.cd = mul i64 %i.cc, %i.ab
  %i.ce = shl nsw i64 %i.ag, 4
  %i.cf = mul i64 %i.ce, %i.ab
  %i.cg = shl nuw nsw i64 %i.ac, 4
  %i.ch = mul i64 %i.cg, %i.ab                    ; 2 uses
  %i.ci = add i32 %i.w, -1
  %19 = extractelement <2 x double> %18, i64 0    ; 5 uses
  %xtraiter = and i32 %i.w, 3                     ; 3 uses
  %i.cj = icmp ult i32 %i.w, 4
  %unroll_iter = and i32 %i.w, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod493 = icmp ne i32 %xtraiter, 0
  %20 = extractelement <2 x double> %18, i64 0
  %min.iters.check464 = icmp eq i32 %i.x, 1
  %n.vec466 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec466, %i.ab
  %xtraiter494 = and i64 %i.ab, 1
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  %i.ck = add nsw i64 %i.ab, -1
  %i.cl = getelementptr i8, ptr %10, i64 %i.bw
  %i.cm = getelementptr i8, ptr %9, i64 %i.cd
  %i.cn = getelementptr i8, ptr %10, i64 %i.bi
  %i.co = getelementptr i8, ptr %9, i64 %i.bp
  %min.iters.check444 = icmp ult i32 %i.x, 4
  %stride.check442 = icmp slt i64 %i.cf, 0
  %n.vec446 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n453 = icmp eq i64 %n.vec446, %i.ab
  %min.iters.check424 = icmp ult i32 %i.x, 4
  %n.vec426 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n433 = icmp eq i64 %n.vec426, %i.ab
  %min.iters.check404 = icmp ult i32 %i.x, 4
  %stride.check402 = icmp slt i64 %i.br, 0
  %n.vec406 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n413 = icmp eq i64 %n.vec406, %i.ab
  %i.cp = getelementptr i8, ptr %7, i64 %i.ay
  %i.cq = getelementptr i8, ptr %6, i64 %i.bf
  %i.cr = getelementptr i8, ptr %7, i64 %i.ak
  %i.cs = getelementptr i8, ptr %6, i64 %i.ar
  %min.iters.check384 = icmp ult i32 %i.x, 4
  %stride.check382 = icmp slt i64 %i.bh, 0
  %n.vec386 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec386, %i.ab
  %min.iters.check364 = icmp ult i32 %i.x, 4
  %n.vec366 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n373 = icmp eq i64 %n.vec366, %i.ab
  %min.iters.check345 = icmp ult i32 %i.x, 4
  %stride.check = icmp slt i64 %i.at, 0
  %n.vec347 = and i64 %i.ab, 2147483646           ; 3 uses
  %cmp.n353 = icmp eq i64 %n.vec347, %i.ab
  %21 = extractelement <2 x double> %18, i64 1    ; 5 uses
  %xtraiter520 = and i32 %i.w, 3                  ; 3 uses
  %i.ct = icmp ult i32 %i.ci, 3
  %unroll_iter524 = and i32 %i.w, 2147483644
  %lcmp.mod522.not = icmp eq i32 %xtraiter520, 0
  %lcmp.mod523 = icmp ne i32 %xtraiter520, 0
  %22 = extractelement <2 x double> %18, i64 1
  %min.iters.check = icmp eq i32 %i.x, 1
  %n.vec = and i64 %i.ab, 2147483646              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  %xtraiter526 = and i64 %i.ab, 1
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  %i.cu = add nsw i64 %i.ab, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph242.us, %acmp.exit212.us
  %.1240.us = phi double [ %.0247.us, %.lr.ph242.us ], [ %i.acg, %acmp.exit212.us ] ; 2 uses
  %.0105239.us = phi i32 [ 0, %.lr.ph242.us ], [ %i.ach, %acmp.exit212.us ]
  br i1 %i.f, label %.lr.ph.i.us, label %arand.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ 0, %bb.b ] ; 2 uses
  %i.cv = tail call double @drand48() #13
  %i.cw = fadd double %i.cv, -5.000000e-01
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i.us ; 2 uses
  store double %i.cw, ptr %i.cx, align 8, !tbaa !18
  %i.cy = tail call double @drand48() #13
  %i.cz = fadd double %i.cy, -5.000000e-01
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store double %i.cz, ptr %i.da, align 8, !tbaa !18
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %arand.exit.us, label %.lr.ph.i.us, !llvm.loop !0

arand.exit.us:                                    ; preds = %.lr.ph.i.us, %bb.b
  br i1 %i.g, label %.preheader.us, label %.preheader223.us

.lr.ph.us:                                        ; preds = %.preheader223.us, %aphase_shift.exit158.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %aphase_shift.exit158.us ], [ 0, %.preheader223.us ] ; 3 uses
  %i.db = mul i64 %i.s, %indvars.iv               ; 2 uses
  %i.dc = add i64 %i.ch, %i.db
  %.pre287 = mul nsw i64 %indvars.iv, %i.m        ; 3 uses
  br i1 %.not, label %.lr.ph.us._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us
  %i.dd = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre287
  %i.de = load i32, ptr %2, align 8, !tbaa !31
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !32
  tail call void @mkhermitian(ptr noundef %i.dd, i32 noundef %i.de, ptr noundef %i.df, i32 noundef 1)
  br label %.lr.ph.us._crit_edge

.lr.ph.us._crit_edge:                             ; preds = %.lr.ph.us, %bb.c
  %i.dg = getelementptr inbounds [16 x i8], ptr %7, i64 %.pre287 ; 4 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre287 ; 4 uses
  br i1 %or.cond.i135.us, label %.preheader.lr.ph.split.i136.us, label %aphase_shift.exit158.us

.preheader.lr.ph.split.i136.us:                   ; preds = %.lr.ph.us._crit_edge
  br i1 %i.aa, label %.preheader.us.i145.us, label %.preheader.i137.us

.preheader.i137.us:                               ; preds = %.preheader.lr.ph.split.i136.us, %._crit_edge42.split.i141.us
  %.03643.i138.us = phi i32 [ %i.em, %._crit_edge42.split.i141.us ], [ 0, %.preheader.lr.ph.split.i136.us ]
  br i1 %i.cj, label %.epil.preheader, label %.preheader.i137.us.new

.preheader.i137.us.new:                           ; preds = %.preheader.i137.us, %cdce.end218.us.3
  %.040.i139.us = phi i32 [ %i.ef, %cdce.end218.us.3 ], [ 0, %.preheader.i137.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %cdce.end218.us.3 ], [ 0, %.preheader.i137.us ]
  %i.di = uitofp nneg i32 %.040.i139.us to double
  %i.dj = fmul double %19, %i.di
  %i.dk = fcmp oeq double %i.dj, +inf
  br i1 %i.dk, label %cdce.call217.us, label %cdce.end218.us, !prof !218

cdce.call217.us:                                  ; preds = %.preheader.i137.us.new
  %i.dl = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dm = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us

cdce.end218.us:                                   ; preds = %.preheader.i137.us.new, %cdce.call217.us
  %i.dn = or disjoint i32 %.040.i139.us, 1
  %i.do = uitofp nneg i32 %i.dn to double
  %i.dp = fmul nnan double %19, %i.do
  %i.dq = fcmp oeq double %i.dp, +inf
  br i1 %i.dq, label %cdce.call217.us.1, label %cdce.end218.us.1, !prof !218

cdce.call217.us.1:                                ; preds = %cdce.end218.us
  %i.dr = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.ds = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.1

cdce.end218.us.1:                                 ; preds = %cdce.call217.us.1, %cdce.end218.us
  %i.dt = or disjoint i32 %.040.i139.us, 2
  %i.du = uitofp nneg i32 %i.dt to double
  %i.dv = fmul nnan double %19, %i.du
  %i.dw = fcmp oeq double %i.dv, +inf
  br i1 %i.dw, label %cdce.call217.us.2, label %cdce.end218.us.2, !prof !218

cdce.call217.us.2:                                ; preds = %cdce.end218.us.1
  %i.dx = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dy = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.2

cdce.end218.us.2:                                 ; preds = %cdce.call217.us.2, %cdce.end218.us.1
  %i.dz = or disjoint i32 %.040.i139.us, 3
  %i.ea = uitofp nneg i32 %i.dz to double
  %i.eb = fmul nnan double %19, %i.ea
  %i.ec = fcmp oeq double %i.eb, +inf
  br i1 %i.ec, label %cdce.call217.us.3, label %cdce.end218.us.3, !prof !218

cdce.call217.us.3:                                ; preds = %cdce.end218.us.2
  %i.ed = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.ee = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.3

cdce.end218.us.3:                                 ; preds = %cdce.call217.us.3, %cdce.end218.us.2
  %i.ef = add nuw nsw i32 %.040.i139.us, 4        ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge42.split.i141.us.unr-lcssa, label %.preheader.i137.us.new, !llvm.loop !4

._crit_edge42.split.i141.us.unr-lcssa:            ; preds = %cdce.end218.us.3
  br i1 %lcmp.mod.not, label %._crit_edge42.split.i141.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge42.split.i141.us.unr-lcssa, %.preheader.i137.us
  %.040.i139.us.epil.init = phi i32 [ 0, %.preheader.i137.us ], [ %i.ef, %._crit_edge42.split.i141.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod493)
  br label %bb.d

bb.d:                                             ; preds = %cdce.end218.us.epil, %.epil.preheader
  %.040.i139.us.epil = phi i32 [ %.040.i139.us.epil.init, %.epil.preheader ], [ %i.el, %cdce.end218.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %cdce.end218.us.epil ]
  %i.eg = uitofp nneg i32 %.040.i139.us.epil to double
  %i.eh = fmul double %19, %i.eg
  %i.ei = fcmp oeq double %i.eh, +inf
  br i1 %i.ei, label %cdce.call217.us.epil, label %cdce.end218.us.epil, !prof !218

cdce.call217.us.epil:                             ; preds = %bb.d
  %i.ej = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.ek = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.epil

cdce.end218.us.epil:                              ; preds = %cdce.call217.us.epil, %bb.d
  %i.el = add nuw nsw i32 %.040.i139.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge42.split.i141.us, label %bb.d, !llvm.loop !163

._crit_edge42.split.i141.us:                      ; preds = %cdce.end218.us.epil, %._crit_edge42.split.i141.us.unr-lcssa
  %i.em = add nuw nsw i32 %.03643.i138.us, 1      ; 2 uses
  %exitcond47.not.i142.us = icmp eq i32 %i.em, %.0111244.us
  br i1 %exitcond47.not.i142.us, label %aphase_shift.exit158.us, label %.preheader.i137.us, !llvm.loop !5

.preheader.us.i145.us:                            ; preds = %.preheader.lr.ph.split.i136.us, %._crit_edge42.split.us.us.i155.us
  %indvars.iv55.i146.us = phi i64 [ %indvars.iv.next56.i156.us, %._crit_edge42.split.us.us.i155.us ], [ 0, %.preheader.lr.ph.split.i136.us ] ; 3 uses
  %i.en = mul i64 %i.ch, %indvars.iv55.i146.us    ; 2 uses
  %i.eo = add i64 %i.db, %i.en                    ; 2 uses
  %scevgep456 = getelementptr i8, ptr %7, i64 %i.eo
  %i.ep = add i64 %i.dc, %i.en                    ; 2 uses
  %scevgep457 = getelementptr i8, ptr %7, i64 %i.ep
  %scevgep458 = getelementptr i8, ptr %6, i64 %i.eo
  %scevgep459 = getelementptr i8, ptr %6, i64 %i.ep
  %i.eq = mul nuw nsw i64 %indvars.iv55.i146.us, %i.ac
  %bound0460 = icmp ult ptr %scevgep456, %scevgep459
  %bound1461 = icmp ult ptr %scevgep458, %scevgep457
  %found.conflict462 = and i1 %bound0460, %bound1461
  br label %.lr.ph.us.us.i147.us

.lr.ph.us.us.i147.us:                             ; preds = %._crit_edge.us.us.i152.us, %.preheader.us.i145.us
  %indvars.iv50.i148.us = phi i64 [ %indvars.iv.next51.i153.us, %._crit_edge.us.us.i152.us ], [ 0, %.preheader.us.i145.us ] ; 3 uses
  %i.er = trunc nuw nsw i64 %indvars.iv50.i148.us to i32
  %i.es = uitofp nneg i32 %i.er to double
  %i.et = fmul double %20, %i.es                  ; 2 uses
  %i.eu = tail call double @sin(double noundef %i.et) #13
  %i.ev = fmul double %i.eu, %i.i                 ; 5 uses
  %i.ew = tail call double @cos(double noundef %i.et) #13 ; 7 uses
  %i.ex = add nuw nsw i64 %indvars.iv50.i148.us, %i.eq
  %i.ey = mul nuw nsw i64 %i.ex, %i.ab            ; 4 uses
  %i.ez = fneg double %i.ev                       ; 4 uses
  %brmerge535 = select i1 %min.iters.check464, i1 true, i1 %found.conflict462
  br i1 %brmerge535, label %scalar.ph463.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %.lr.ph.us.us.i147.us
  %broadcast.splatinsert467 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat468 = shufflevector <2 x double> %broadcast.splatinsert467, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert469 = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat470 = shufflevector <2 x double> %broadcast.splatinsert469, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert471 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat472 = shufflevector <2 x double> %broadcast.splatinsert471, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph465
  %index474 = phi i64 [ 0, %vector.ph465 ], [ %index.next482, %vector.body473 ] ; 2 uses
  %i.fa = add nuw nsw i64 %index474, %i.ey        ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.fa
  %wide.vec475 = load <4 x double>, ptr %i.fb, align 8, !tbaa !18, !alias.scope !219 ; 4 uses
  %strided.vec476 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec477 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fc = fmul <2 x double> %strided.vec477, %broadcast.splat472
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec476, <2 x double> %broadcast.splat470, <2 x double> %i.fc)
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fa
  %strided.vec479 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec480 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ff = fmul <2 x double> %broadcast.splat470, %strided.vec480
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec479, <2 x double> %broadcast.splat468, <2 x double> %i.ff)
  %interleaved.vec481 = shufflevector <2 x double> %i.fd, <2 x double> %i.fg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec481, ptr %i.fe, align 8, !tbaa !18, !alias.scope !220, !noalias !219
  %index.next482 = add nuw i64 %index474, 2       ; 2 uses
  %i.fh = icmp eq i64 %index.next482, %n.vec466
  br i1 %i.fh, label %middle.block483, label %vector.body473, !llvm.loop !167

middle.block483:                                  ; preds = %vector.body473
  br i1 %cmp.n484, label %._crit_edge.us.us.i152.us, label %scalar.ph463.preheader

scalar.ph463.preheader:                           ; preds = %.lr.ph.us.us.i147.us, %middle.block483
  %indvars.iv.i149.us.ph = phi i64 [ %n.vec466, %middle.block483 ], [ 0, %.lr.ph.us.us.i147.us ] ; 4 uses
  br i1 %lcmp.mod495.not, label %scalar.ph463.prol.loopexit, label %scalar.ph463.prol

scalar.ph463.prol:                                ; preds = %scalar.ph463.preheader
  %i.fi = add nuw nsw i64 %indvars.iv.i149.us.ph, %i.ey ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.fi ; 3 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !18
  %i.fn = fmul double %i.fm, %i.ez
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.ew, double %i.fn)
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fi ; 2 uses
  store double %i.fo, ptr %i.fp, align 8, !tbaa !18
  %i.fq = load double, ptr %i.fj, align 8, !tbaa !18
  %i.fr = load double, ptr %i.fl, align 8, !tbaa !18
  %i.fs = fmul double %i.ew, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.ev, double %i.fs)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store double %i.ft, ptr %i.fu, align 8, !tbaa !18
  %indvars.iv.next.i150.us.prol = or disjoint i64 %indvars.iv.i149.us.ph, 1
  br label %scalar.ph463.prol.loopexit

scalar.ph463.prol.loopexit:                       ; preds = %scalar.ph463.prol, %scalar.ph463.preheader
  %indvars.iv.i149.us.unr = phi i64 [ %indvars.iv.i149.us.ph, %scalar.ph463.preheader ], [ %indvars.iv.next.i150.us.prol, %scalar.ph463.prol ]
  %i.fv = icmp eq i64 %indvars.iv.i149.us.ph, %i.ck
  br i1 %i.fv, label %._crit_edge.us.us.i152.us, label %scalar.ph463.preheader.new

scalar.ph463.preheader.new:                       ; preds = %scalar.ph463.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ey
  br label %scalar.ph463

scalar.ph463:                                     ; preds = %scalar.ph463, %scalar.ph463.preheader.new
  %indvars.iv.i149.us = phi i64 [ %indvars.iv.i149.us.unr, %scalar.ph463.preheader.new ], [ %indvars.iv.next.i150.us.1, %scalar.ph463 ] ; 3 uses
  %i.fw = add nuw nsw i64 %indvars.iv.i149.us, %i.ey ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.fw ; 3 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = fmul double %i.ga, %i.ez
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.ew, double %i.gb)
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fw ; 2 uses
  store double %i.gc, ptr %i.gd, align 8, !tbaa !18
  %i.ge = load double, ptr %i.fx, align 8, !tbaa !18
  %i.gf = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gg = fmul double %i.ew, %i.gf
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.ev, double %i.gg)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store double %i.gh, ptr %i.gi, align 8, !tbaa !18
  %.reass = add nuw nsw i64 %indvars.iv.i149.us, %invariant.op ; 2 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %.reass ; 3 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !18
  %i.gn = fmul double %i.gm, %i.ez
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.ew, double %i.gn)
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %.reass ; 2 uses
  store double %i.go, ptr %i.gp, align 8, !tbaa !18
  %i.gq = load double, ptr %i.gj, align 8, !tbaa !18
  %i.gr = load double, ptr %i.gl, align 8, !tbaa !18
  %i.gs = fmul double %i.ew, %i.gr
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.ev, double %i.gs)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store double %i.gt, ptr %i.gu, align 8, !tbaa !18
  %indvars.iv.next.i150.us.1 = add nuw nsw i64 %indvars.iv.i149.us, 2 ; 2 uses
  %exitcond49.not.i151.us.1 = icmp eq i64 %indvars.iv.next.i150.us.1, %i.ab
  br i1 %exitcond49.not.i151.us.1, label %._crit_edge.us.us.i152.us, label %scalar.ph463, !llvm.loop !168

._crit_edge.us.us.i152.us:                        ; preds = %scalar.ph463.prol.loopexit, %scalar.ph463, %middle.block483
  %indvars.iv.next51.i153.us = add nuw nsw i64 %indvars.iv50.i148.us, 1 ; 2 uses
  %exitcond54.not.i154.us = icmp eq i64 %indvars.iv.next51.i153.us, %i.ac
  br i1 %exitcond54.not.i154.us, label %._crit_edge42.split.us.us.i155.us, label %.lr.ph.us.us.i147.us, !llvm.loop !4

._crit_edge42.split.us.us.i155.us:                ; preds = %._crit_edge.us.us.i152.us
  %indvars.iv.next56.i156.us = add nuw nsw i64 %indvars.iv55.i146.us, 1 ; 2 uses
  %exitcond59.not.i157.us = icmp eq i64 %indvars.iv.next56.i156.us, %wide.trip.count58.i144.us
  br i1 %exitcond59.not.i157.us, label %aphase_shift.exit158.us, label %.preheader.us.i145.us, !llvm.loop !5

aphase_shift.exit158.us:                          ; preds = %._crit_edge42.split.i141.us, %._crit_edge42.split.us.us.i155.us, %.lr.ph.us._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !169

._crit_edge.us:                                   ; preds = %aphase_shift.exit158.us, %.preheader223.us
  %i.gv = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gv(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %8) #13
  %i.gw = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gw(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %9) #13
  br i1 %brmerge, label %._crit_edge231.split.us, label %.preheader47.lr.ph.i159.us

.preheader47.lr.ph.i159.us:                       ; preds = %._crit_edge.us, %arol.exit193.us
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %arol.exit193.us ], [ 0, %._crit_edge.us ] ; 4 uses
  %i.gx = mul i64 %i.r, %indvars.iv268            ; 2 uses
  %scevgep436 = getelementptr i8, ptr %i.cl, i64 %i.gx
  %scevgep438 = getelementptr i8, ptr %i.cm, i64 %i.gx
  %i.gy = mul i64 %i.q, %indvars.iv268            ; 2 uses
  %scevgep396 = getelementptr i8, ptr %i.cn, i64 %i.gy
  %scevgep398 = getelementptr i8, ptr %i.co, i64 %i.gy
  %i.gz = mul nsw i64 %indvars.iv268, %i.m        ; 2 uses
  %i.ha = getelementptr [16 x i8], ptr %10, i64 %i.gz ; 5 uses
  %i.hb = getelementptr [16 x i8], ptr %9, i64 %i.gz ; 7 uses
  br i1 %i.ae, label %.preheader47.lr.ph.split.us.i172.us, label %.preheader47.lr.ph.split.i160.us

.preheader47.lr.ph.split.i160.us:                 ; preds = %.preheader47.lr.ph.i159.us
  br i1 %i.aa, label %.preheader47.i164.us, label %arol.exit193.us

.preheader47.i164.us:                             ; preds = %.preheader47.lr.ph.split.i160.us, %._crit_edge51.i169.us
  %indvars.iv56.i165.us = phi i64 [ %indvars.iv.next57.i170.us, %._crit_edge51.i169.us ], [ 0, %.preheader47.lr.ph.split.i160.us ] ; 3 uses
  %i.hc = mul nsw i64 %indvars.iv56.i165.us, %i.ag ; 2 uses
  %i.hd = trunc nsw i64 %i.hc to i32
  %i.he = add i32 %i.af, %i.hd
  %i.hf = mul nsw i32 %i.he, %i.x
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [16 x i8], ptr %i.ha, i64 %i.hg ; 8 uses
  %i.hi = mul nsw i64 %i.hc, %i.ab
  %i.hj = getelementptr inbounds [16 x i8], ptr %i.hb, i64 %i.hi ; 7 uses
  br i1 %min.iters.check444, label %scalar.ph443.preheader, label %vector.memcheck435

vector.memcheck435:                               ; preds = %.preheader47.i164.us
  %i.hk = trunc i64 %indvars.iv56.i165.us to i32
  %i.hl = mul i32 %i.by, %i.hk
  %i.hm = add i32 %i.hl, %i.bx
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 4
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.ho
  %bound0439 = icmp ult ptr %i.hh, %scevgep438
  %bound1440 = icmp ult ptr %i.hb, %scevgep437
  %found.conflict441 = and i1 %bound0439, %bound1440
  %i.hp = or i1 %found.conflict441, %stride.check442
  br i1 %i.hp, label %scalar.ph443.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck435, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck435 ] ; 4 uses
  %i.hq = or disjoint i64 %index448, 1            ; 2 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index448
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hq
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %index448
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.hq
  %wide.load449 = load <2 x double>, ptr %i.ht, align 8, !tbaa !18, !alias.scope !221
  %wide.load450 = load <2 x double>, ptr %i.hu, align 8, !tbaa !18, !alias.scope !221
  store <2 x double> %wide.load449, ptr %i.hr, align 8, !tbaa !18, !alias.scope !222, !noalias !221
  store <2 x double> %wide.load450, ptr %i.hs, align 8, !tbaa !18, !alias.scope !222, !noalias !221
  %index.next451 = add nuw i64 %index448, 2       ; 2 uses
  %i.hv = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.hv, label %middle.block452, label %vector.body447, !llvm.loop !173

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %._crit_edge51.i169.us, label %scalar.ph443.preheader

scalar.ph443.preheader:                           ; preds = %vector.memcheck435, %.preheader47.i164.us, %middle.block452
  %indvars.iv.i166.us.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.preheader47.i164.us ], [ %n.vec446, %middle.block452 ] ; 4 uses
  %i.hw = sub nsw i64 %i.ab, %indvars.iv.i166.us.ph
  %xtraiter496 = and i64 %i.hw, 3                 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %scalar.ph443.prol.loopexit, label %scalar.ph443.prol

scalar.ph443.prol:                                ; preds = %scalar.ph443.preheader, %scalar.ph443.prol
  %indvars.iv.i166.us.prol = phi i64 [ %indvars.iv.next.i167.us.prol, %scalar.ph443.prol ], [ %indvars.iv.i166.us.ph, %scalar.ph443.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph443.prol ], [ 0, %scalar.ph443.preheader ]
end_hunk_1
begin_hunk_2_@tf_shift:bb.a
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tp = load double, ptr %i.to, align 8, !tbaa !18
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store double %i.tp, ptr %i.tq, align 8, !tbaa !18
  %indvars.iv.next62.i.us.prol = add nuw nsw i64 %indvars.iv61.i.us.prol, 1 ; 2 uses
  %prol.iter515.next = add i64 %prol.iter515, 1   ; 2 uses
  %prol.iter515.cmp.not = icmp eq i64 %prol.iter515.next, %xtraiter513
  br i1 %prol.iter515.cmp.not, label %scalar.ph363.prol.loopexit, label %scalar.ph363.prol, !llvm.loop !200

scalar.ph363.prol.loopexit:                       ; preds = %scalar.ph363.prol, %scalar.ph363.preheader
  %indvars.iv61.i.us.unr = phi i64 [ %indvars.iv61.i.us.ph, %scalar.ph363.preheader ], [ %indvars.iv.next62.i.us.prol, %scalar.ph363.prol ]
  %i.tr = sub nsw i64 %indvars.iv61.i.us.ph, %i.ab
  %i.ts = icmp ugt i64 %i.tr, -4
  br i1 %i.ts, label %._crit_edge.us.us.us.i.us, label %scalar.ph363

scalar.ph363:                                     ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363
  %indvars.iv61.i.us = phi i64 [ %indvars.iv.next62.i.us.3, %scalar.ph363 ], [ %indvars.iv61.i.us.unr, %scalar.ph363.prol.loopexit ] ; 6 uses
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv61.i.us ; 2 uses
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %indvars.iv61.i.us ; 2 uses
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !18
  store double %i.tv, ptr %i.tt, align 8, !tbaa !18
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !18
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store double %i.tx, ptr %i.ty, align 8, !tbaa !18
  %indvars.iv.next62.i.us = add nuw nsw i64 %indvars.iv61.i.us, 1 ; 2 uses
  %i.tz = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv.next62.i.us ; 2 uses
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %indvars.iv.next62.i.us ; 2 uses
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !18
  store double %i.ub, ptr %i.tz, align 8, !tbaa !18
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !18
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store double %i.ud, ptr %i.ue, align 8, !tbaa !18
  %indvars.iv.next62.i.us.1 = add nuw nsw i64 %indvars.iv61.i.us, 2 ; 2 uses
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv.next62.i.us.1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %indvars.iv.next62.i.us.1 ; 2 uses
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !18
  store double %i.uh, ptr %i.uf, align 8, !tbaa !18
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !18
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store double %i.uj, ptr %i.uk, align 8, !tbaa !18
  %indvars.iv.next62.i.us.2 = add nuw nsw i64 %indvars.iv61.i.us, 3 ; 2 uses
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv.next62.i.us.2 ; 2 uses
  %i.um = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %indvars.iv.next62.i.us.2 ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !18
  store double %i.un, ptr %i.ul, align 8, !tbaa !18
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.up = load double, ptr %i.uo, align 8, !tbaa !18
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  store double %i.up, ptr %i.uq, align 8, !tbaa !18
  %indvars.iv.next62.i.us.3 = add nuw nsw i64 %indvars.iv61.i.us, 4 ; 2 uses
  %exitcond65.not.i.us.3 = icmp eq i64 %indvars.iv.next62.i.us.3, %i.ab
  br i1 %exitcond65.not.i.us.3, label %._crit_edge.us.us.us.i.us, label %scalar.ph363, !llvm.loop !201

._crit_edge.us.us.us.i.us:                        ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363, %middle.block372
  %indvars.iv.next67.i.us = add nuw nsw i64 %indvars.iv66.i.us, 1 ; 2 uses
  %exitcond70.not.i.us = icmp eq i64 %indvars.iv.next67.i.us, %wide.trip.count69.i175.us
  br i1 %exitcond70.not.i.us, label %..preheader46_crit_edge.us.us.us.i.us, label %.preheader.us.us.us.i.us, !llvm.loop !2

..preheader46_crit_edge.us.us.us.i.us:            ; preds = %._crit_edge.us.us.us.i.us
  %i.ur = trunc nuw nsw i64 %i.sw to i32
  %i.us = add i32 %i.af, %i.ur
  %i.ut = mul nsw i32 %i.us, %i.x
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [16 x i8], ptr %i.qd, i64 %i.uu ; 8 uses
  %i.uw = mul nuw nsw i64 %i.sw, %i.ab
  %i.ux = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.uw ; 7 uses
  br i1 %min.iters.check345, label %scalar.ph344.preheader, label %vector.memcheck337

vector.memcheck337:                               ; preds = %..preheader46_crit_edge.us.us.us.i.us
  %bound0341 = icmp ult ptr %i.uv, %scevgep340
  %bound1342 = icmp ult ptr %i.qe, %scevgep339
  %found.conflict343 = and i1 %bound0341, %bound1342
  %i.uy = or i1 %found.conflict343, %stride.check
  br i1 %i.uy, label %scalar.ph344.preheader, label %vector.body348

vector.body348:                                   ; preds = %vector.memcheck337, %vector.body348
  %index349 = phi i64 [ %index.next351, %vector.body348 ], [ 0, %vector.memcheck337 ] ; 4 uses
  %i.uz = or disjoint i64 %index349, 1            ; 2 uses
  %i.va = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %index349
  %i.vb = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %i.uz
  %i.vc = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %index349
  %i.vd = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %i.uz
  %wide.load = load <2 x double>, ptr %i.vc, align 8, !tbaa !18, !alias.scope !231
  %wide.load350 = load <2 x double>, ptr %i.vd, align 8, !tbaa !18, !alias.scope !231
  store <2 x double> %wide.load, ptr %i.va, align 8, !tbaa !18, !alias.scope !232, !noalias !231
  store <2 x double> %wide.load350, ptr %i.vb, align 8, !tbaa !18, !alias.scope !232, !noalias !231
  %index.next351 = add nuw i64 %index349, 2       ; 2 uses
  %i.ve = icmp eq i64 %index.next351, %n.vec347
  br i1 %i.ve, label %middle.block352, label %vector.body348, !llvm.loop !205

middle.block352:                                  ; preds = %vector.body348
  br i1 %cmp.n353, label %._crit_edge51.us.us.us.i.us, label %scalar.ph344.preheader

scalar.ph344.preheader:                           ; preds = %vector.memcheck337, %..preheader46_crit_edge.us.us.us.i.us, %middle.block352
  %indvars.iv71.i.us.ph = phi i64 [ 0, %vector.memcheck337 ], [ 0, %..preheader46_crit_edge.us.us.us.i.us ], [ %n.vec347, %middle.block352 ] ; 4 uses
  %i.vf = sub nsw i64 %i.ab, %indvars.iv71.i.us.ph
  %xtraiter516 = and i64 %i.vf, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %scalar.ph344.prol.loopexit, label %scalar.ph344.prol

scalar.ph344.prol:                                ; preds = %scalar.ph344.preheader, %scalar.ph344.prol
  %indvars.iv71.i.us.prol = phi i64 [ %indvars.iv.next72.i.us.prol, %scalar.ph344.prol ], [ %indvars.iv71.i.us.ph, %scalar.ph344.preheader ] ; 3 uses
  %prol.iter518 = phi i64 [ %prol.iter518.next, %scalar.ph344.prol ], [ 0, %scalar.ph344.preheader ]
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %indvars.iv71.i.us.prol ; 2 uses
  %i.vh = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %indvars.iv71.i.us.prol ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !18
  store double %i.vi, ptr %i.vg, align 8, !tbaa !18
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !18
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store double %i.vk, ptr %i.vl, align 8, !tbaa !18
  %indvars.iv.next72.i.us.prol = add nuw nsw i64 %indvars.iv71.i.us.prol, 1 ; 2 uses
  %prol.iter518.next = add i64 %prol.iter518, 1   ; 2 uses
  %prol.iter518.cmp.not = icmp eq i64 %prol.iter518.next, %xtraiter516
  br i1 %prol.iter518.cmp.not, label %scalar.ph344.prol.loopexit, label %scalar.ph344.prol, !llvm.loop !206

scalar.ph344.prol.loopexit:                       ; preds = %scalar.ph344.prol, %scalar.ph344.preheader
  %indvars.iv71.i.us.unr = phi i64 [ %indvars.iv71.i.us.ph, %scalar.ph344.preheader ], [ %indvars.iv.next72.i.us.prol, %scalar.ph344.prol ]
  %i.vm = sub nsw i64 %indvars.iv71.i.us.ph, %i.ab
  %i.vn = icmp ugt i64 %i.vm, -4
  br i1 %i.vn, label %._crit_edge51.us.us.us.i.us, label %scalar.ph344

scalar.ph344:                                     ; preds = %scalar.ph344.prol.loopexit, %scalar.ph344
  %indvars.iv71.i.us = phi i64 [ %indvars.iv.next72.i.us.3, %scalar.ph344 ], [ %indvars.iv71.i.us.unr, %scalar.ph344.prol.loopexit ] ; 6 uses
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %indvars.iv71.i.us ; 2 uses
  %i.vp = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %indvars.iv71.i.us ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !18
  store double %i.vq, ptr %i.vo, align 8, !tbaa !18
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !18
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store double %i.vs, ptr %i.vt, align 8, !tbaa !18
  %indvars.iv.next72.i.us = add nuw nsw i64 %indvars.iv71.i.us, 1 ; 2 uses
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %indvars.iv.next72.i.us ; 2 uses
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %indvars.iv.next72.i.us ; 2 uses
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !18
  store double %i.vw, ptr %i.vu, align 8, !tbaa !18
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !18
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  store double %i.vy, ptr %i.vz, align 8, !tbaa !18
  %indvars.iv.next72.i.us.1 = add nuw nsw i64 %indvars.iv71.i.us, 2 ; 2 uses
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %indvars.iv.next72.i.us.1 ; 2 uses
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %indvars.iv.next72.i.us.1 ; 2 uses
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !18
  store double %i.wc, ptr %i.wa, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.we = load double, ptr %i.wd, align 8, !tbaa !18
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store double %i.we, ptr %i.wf, align 8, !tbaa !18
  %indvars.iv.next72.i.us.2 = add nuw nsw i64 %indvars.iv71.i.us, 3 ; 2 uses
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %indvars.iv.next72.i.us.2 ; 2 uses
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %indvars.iv.next72.i.us.2 ; 2 uses
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !18
  store double %i.wi, ptr %i.wg, align 8, !tbaa !18
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store double %i.wk, ptr %i.wl, align 8, !tbaa !18
  %indvars.iv.next72.i.us.3 = add nuw nsw i64 %indvars.iv71.i.us, 4 ; 2 uses
  %exitcond75.not.i.us.3 = icmp eq i64 %indvars.iv.next72.i.us.3, %i.ab
  br i1 %exitcond75.not.i.us.3, label %._crit_edge51.us.us.us.i.us, label %scalar.ph344, !llvm.loop !207

._crit_edge51.us.us.us.i.us:                      ; preds = %scalar.ph344.prol.loopexit, %scalar.ph344, %middle.block352
  %indvars.iv.next77.i.us = add nuw nsw i64 %indvars.iv76.i.us, 1 ; 2 uses
  %exitcond80.not.i.us = icmp eq i64 %indvars.iv.next77.i.us, %wide.trip.count58.i144.us
  br i1 %exitcond80.not.i.us, label %arol.exit.us, label %.preheader47.us.us.us.i.us, !llvm.loop !3

arol.exit.us:                                     ; preds = %._crit_edge51.i.us, %._crit_edge51.us.us.us.i.us, %.preheader47.lr.ph.split.us.i.us, %.preheader47.lr.ph.split.i.us, %mkreal.exit.us
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge234.us, label %.lr.ph233.us, !llvm.loop !208

._crit_edge234.us:                                ; preds = %arol.exit.us, %.preheader.us
  %i.wm = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.wm(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %8) #13
  %i.wn = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.wn(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %9) #13
  br i1 %brmerge255, label %._crit_edge238.split.us, label %.preheader.lr.ph.split.i.us

.preheader.lr.ph.split.i.us:                      ; preds = %._crit_edge234.us, %aphase_shift.exit.us
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %aphase_shift.exit.us ], [ 0, %._crit_edge234.us ] ; 3 uses
  %i.wo = mul i64 %i.n, %indvars.iv278            ; 2 uses
  %i.wp = add i64 %i.aj, %i.wo
  %i.wq = mul nsw i64 %indvars.iv278, %i.m        ; 2 uses
  %i.wr = getelementptr inbounds [16 x i8], ptr %10, i64 %i.wq ; 4 uses
  %i.ws = getelementptr inbounds [16 x i8], ptr %9, i64 %i.wq ; 4 uses
  br i1 %i.aa, label %.preheader.us.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.split.i.us, %._crit_edge42.split.i.us
  %.03643.i.us = phi i32 [ %i.xx, %._crit_edge42.split.i.us ], [ 0, %.preheader.lr.ph.split.i.us ]
  br i1 %i.ct, label %.epil.preheader519, label %.preheader.i.us.new

.preheader.i.us.new:                              ; preds = %.preheader.i.us, %cdce.end214.us.3
  %.040.i.us = phi i32 [ %i.xq, %cdce.end214.us.3 ], [ 0, %.preheader.i.us ] ; 5 uses
  %niter525 = phi i32 [ %niter525.next.3, %cdce.end214.us.3 ], [ 0, %.preheader.i.us ]
  %i.wt = uitofp nneg i32 %.040.i.us to double
  %i.wu = fmul double %21, %i.wt
  %i.wv = fcmp oeq double %i.wu, +inf
  br i1 %i.wv, label %cdce.call213.us, label %cdce.end214.us, !prof !218

cdce.call213.us:                                  ; preds = %.preheader.i.us.new
  %i.ww = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.wx = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us

cdce.end214.us:                                   ; preds = %.preheader.i.us.new, %cdce.call213.us
  %i.wy = or disjoint i32 %.040.i.us, 1
  %i.wz = uitofp nneg i32 %i.wy to double
  %i.xa = fmul nnan double %21, %i.wz
  %i.xb = fcmp oeq double %i.xa, +inf
  br i1 %i.xb, label %cdce.call213.us.1, label %cdce.end214.us.1, !prof !218

cdce.call213.us.1:                                ; preds = %cdce.end214.us
  %i.xc = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.xd = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.1

cdce.end214.us.1:                                 ; preds = %cdce.call213.us.1, %cdce.end214.us
  %i.xe = or disjoint i32 %.040.i.us, 2
  %i.xf = uitofp nneg i32 %i.xe to double
  %i.xg = fmul nnan double %21, %i.xf
  %i.xh = fcmp oeq double %i.xg, +inf
  br i1 %i.xh, label %cdce.call213.us.2, label %cdce.end214.us.2, !prof !218

cdce.call213.us.2:                                ; preds = %cdce.end214.us.1
  %i.xi = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.xj = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.2

cdce.end214.us.2:                                 ; preds = %cdce.call213.us.2, %cdce.end214.us.1
  %i.xk = or disjoint i32 %.040.i.us, 3
  %i.xl = uitofp nneg i32 %i.xk to double
  %i.xm = fmul nnan double %21, %i.xl
  %i.xn = fcmp oeq double %i.xm, +inf
  br i1 %i.xn, label %cdce.call213.us.3, label %cdce.end214.us.3, !prof !218

cdce.call213.us.3:                                ; preds = %cdce.end214.us.2
  %i.xo = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.xp = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.3

cdce.end214.us.3:                                 ; preds = %cdce.call213.us.3, %cdce.end214.us.2
  %i.xq = add nuw nsw i32 %.040.i.us, 4           ; 2 uses
  %niter525.next.3 = add nuw nsw i32 %niter525, 4 ; 2 uses
  %niter525.ncmp.3 = icmp eq i32 %niter525.next.3, %unroll_iter524
  br i1 %niter525.ncmp.3, label %._crit_edge42.split.i.us.unr-lcssa, label %.preheader.i.us.new, !llvm.loop !4

._crit_edge42.split.i.us.unr-lcssa:               ; preds = %cdce.end214.us.3
  br i1 %lcmp.mod522.not, label %._crit_edge42.split.i.us, label %.epil.preheader519

.epil.preheader519:                               ; preds = %._crit_edge42.split.i.us.unr-lcssa, %.preheader.i.us
  %.040.i.us.epil.init = phi i32 [ 0, %.preheader.i.us ], [ %i.xq, %._crit_edge42.split.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod523)
  br label %bb.i

bb.i:                                             ; preds = %cdce.end214.us.epil, %.epil.preheader519
  %.040.i.us.epil = phi i32 [ %.040.i.us.epil.init, %.epil.preheader519 ], [ %i.xw, %cdce.end214.us.epil ] ; 2 uses
  %epil.iter521 = phi i32 [ 0, %.epil.preheader519 ], [ %epil.iter521.next, %cdce.end214.us.epil ]
  %i.xr = uitofp nneg i32 %.040.i.us.epil to double
  %i.xs = fmul double %21, %i.xr
  %i.xt = fcmp oeq double %i.xs, +inf
  br i1 %i.xt, label %cdce.call213.us.epil, label %cdce.end214.us.epil, !prof !218

cdce.call213.us.epil:                             ; preds = %bb.i
  %i.xu = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.xv = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.epil

cdce.end214.us.epil:                              ; preds = %cdce.call213.us.epil, %bb.i
  %i.xw = add nuw nsw i32 %.040.i.us.epil, 1
  %epil.iter521.next = add i32 %epil.iter521, 1   ; 2 uses
  %epil.iter521.cmp.not = icmp eq i32 %epil.iter521.next, %xtraiter520
  br i1 %epil.iter521.cmp.not, label %._crit_edge42.split.i.us, label %bb.i, !llvm.loop !209

._crit_edge42.split.i.us:                         ; preds = %cdce.end214.us.epil, %._crit_edge42.split.i.us.unr-lcssa
  %i.xx = add nuw nsw i32 %.03643.i.us, 1         ; 2 uses
  %exitcond47.not.i.us = icmp eq i32 %i.xx, %.0111244.us
  br i1 %exitcond47.not.i.us, label %aphase_shift.exit.us, label %.preheader.i.us, !llvm.loop !5

.preheader.us.i.us:                               ; preds = %.preheader.lr.ph.split.i.us, %._crit_edge42.split.us.us.i.us
  %indvars.iv55.i.us = phi i64 [ %indvars.iv.next56.i.us, %._crit_edge42.split.us.us.i.us ], [ 0, %.preheader.lr.ph.split.i.us ] ; 3 uses
  %i.xy = mul i64 %i.aj, %indvars.iv55.i.us       ; 2 uses
  %i.xz = add i64 %i.wo, %i.xy                    ; 2 uses
  %scevgep = getelementptr i8, ptr %10, i64 %i.xz
  %i.ya = add i64 %i.wp, %i.xy                    ; 2 uses
  %scevgep326 = getelementptr i8, ptr %10, i64 %i.ya
  %scevgep327 = getelementptr i8, ptr %9, i64 %i.xz
  %scevgep328 = getelementptr i8, ptr %9, i64 %i.ya
  %i.yb = mul nuw nsw i64 %indvars.iv55.i.us, %i.ac
  %bound0 = icmp ult ptr %scevgep, %scevgep328
  %bound1 = icmp ult ptr %scevgep327, %scevgep326
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph.us.us.i.us

.lr.ph.us.us.i.us:                                ; preds = %._crit_edge.us.us.i.us, %.preheader.us.i.us
  %indvars.iv50.i.us = phi i64 [ %indvars.iv.next51.i.us, %._crit_edge.us.us.i.us ], [ 0, %.preheader.us.i.us ] ; 3 uses
  %i.yc = trunc nuw nsw i64 %indvars.iv50.i.us to i32
  %i.yd = uitofp nneg i32 %i.yc to double
  %i.ye = fmul double %22, %i.yd                  ; 2 uses
  %i.yf = tail call double @sin(double noundef %i.ye) #13
  %i.yg = fmul double %5, %i.yf                   ; 5 uses
  %i.yh = tail call double @cos(double noundef %i.ye) #13 ; 7 uses
  %i.yi = add nuw nsw i64 %indvars.iv50.i.us, %i.yb
  %i.yj = mul nuw nsw i64 %i.yi, %i.ab            ; 4 uses
  %i.yk = fneg double %i.yg                       ; 4 uses
  %brmerge538 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge538, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.yg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <2 x double> poison, double %i.yh, i64 0
  %broadcast.splat330 = shufflevector <2 x double> %broadcast.splatinsert329, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert331 = insertelement <2 x double> poison, double %i.yk, i64 0
  %broadcast.splat332 = shufflevector <2 x double> %broadcast.splatinsert331, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yl = add nuw nsw i64 %index, %i.yj           ; 2 uses
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %i.yl
  %wide.vec = load <4 x double>, ptr %i.ym, align 8, !tbaa !18, !alias.scope !233 ; 4 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec333 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.yn = fmul <2 x double> %strided.vec333, %broadcast.splat332
  %i.yo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat330, <2 x double> %i.yn)
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.wr, i64 %i.yl
  %strided.vec335 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec336 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.yq = fmul <2 x double> %broadcast.splat330, %strided.vec336
  %i.yr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec335, <2 x double> %broadcast.splat, <2 x double> %i.yq)
  %interleaved.vec = shufflevector <2 x double> %i.yo, <2 x double> %i.yr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.yp, align 8, !tbaa !18, !alias.scope !234, !noalias !233
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ys = icmp eq i64 %index.next, %n.vec
  br i1 %i.ys, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i.us, %middle.block
  %indvars.iv.i126.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i.us ] ; 4 uses
  br i1 %lcmp.mod527.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.yt = add nuw nsw i64 %indvars.iv.i126.us.ph, %i.yj ; 2 uses
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %i.yt ; 3 uses
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !18
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 2 uses
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !18
  %i.yy = fmul double %i.yx, %i.yk
  %i.yz = tail call double @llvm.fmuladd.f64(double %i.yv, double %i.yh, double %i.yy)
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %i.wr, i64 %i.yt ; 2 uses
  store double %i.yz, ptr %i.za, align 8, !tbaa !18
  %i.zb = load double, ptr %i.yu, align 8, !tbaa !18
  %i.zc = load double, ptr %i.yw, align 8, !tbaa !18
  %i.zd = fmul double %i.yh, %i.zc
  %i.ze = tail call double @llvm.fmuladd.f64(double %i.zb, double %i.yg, double %i.zd)
  %i.zf = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  store double %i.ze, ptr %i.zf, align 8, !tbaa !18
  %indvars.iv.next.i127.us.prol = or disjoint i64 %indvars.iv.i126.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i126.us.unr = phi i64 [ %indvars.iv.i126.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i127.us.prol, %scalar.ph.prol ]
  %i.zg = icmp eq i64 %indvars.iv.i126.us.ph, %i.cu
  br i1 %i.zg, label %._crit_edge.us.us.i.us, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op533 = add nuw nsw i64 1, %i.yj
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i126.us = phi i64 [ %indvars.iv.i126.us.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i127.us.1, %scalar.ph ] ; 3 uses
  %i.zh = add nuw nsw i64 %indvars.iv.i126.us, %i.yj ; 2 uses
  %i.zi = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %i.zh ; 3 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !18
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 2 uses
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !18
  %i.zm = fmul double %i.zl, %i.yk
  %i.zn = tail call double @llvm.fmuladd.f64(double %i.zj, double %i.yh, double %i.zm)
  %i.zo = getelementptr inbounds nuw [16 x i8], ptr %i.wr, i64 %i.zh ; 2 uses
  store double %i.zn, ptr %i.zo, align 8, !tbaa !18
  %i.zp = load double, ptr %i.zi, align 8, !tbaa !18
  %i.zq = load double, ptr %i.zk, align 8, !tbaa !18
  %i.zr = fmul double %i.yh, %i.zq
  %i.zs = tail call double @llvm.fmuladd.f64(double %i.zp, double %i.yg, double %i.zr)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  store double %i.zs, ptr %i.zt, align 8, !tbaa !18
  %.reass534 = add nuw nsw i64 %indvars.iv.i126.us, %invariant.op533 ; 2 uses
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %.reass534 ; 3 uses
  %i.zv = load double, ptr %i.zu, align 8, !tbaa !18
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 8 ; 2 uses
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !18
  %i.zy = fmul double %i.zx, %i.yk
  %i.zz = tail call double @llvm.fmuladd.f64(double %i.zv, double %i.yh, double %i.zy)
  %i.aaa = getelementptr inbounds nuw [16 x i8], ptr %i.wr, i64 %.reass534 ; 2 uses
  store double %i.zz, ptr %i.aaa, align 8, !tbaa !18
  %i.aab = load double, ptr %i.zu, align 8, !tbaa !18
  %i.aac = load double, ptr %i.zw, align 8, !tbaa !18
  %i.aad = fmul double %i.yh, %i.aac
  %i.aae = tail call double @llvm.fmuladd.f64(double %i.aab, double %i.yg, double %i.aad)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store double %i.aae, ptr %i.aaf, align 8, !tbaa !18
  %indvars.iv.next.i127.us.1 = add nuw nsw i64 %indvars.iv.i126.us, 2 ; 2 uses
  %exitcond49.not.i.us.1 = icmp eq i64 %indvars.iv.next.i127.us.1, %i.ab
  br i1 %exitcond49.not.i.us.1, label %._crit_edge.us.us.i.us, label %scalar.ph, !llvm.loop !214

._crit_edge.us.us.i.us:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next51.i.us = add nuw nsw i64 %indvars.iv50.i.us, 1 ; 2 uses
  %exitcond54.not.i.us = icmp eq i64 %indvars.iv.next51.i.us, %i.ac
  br i1 %exitcond54.not.i.us, label %._crit_edge42.split.us.us.i.us, label %.lr.ph.us.us.i.us, !llvm.loop !4

._crit_edge42.split.us.us.i.us:                   ; preds = %._crit_edge.us.us.i.us
  %indvars.iv.next56.i.us = add nuw nsw i64 %indvars.iv55.i.us, 1 ; 2 uses
  %exitcond59.not.i.us = icmp eq i64 %indvars.iv.next56.i.us, %wide.trip.count58.i144.us
  br i1 %exitcond59.not.i.us, label %aphase_shift.exit.us, label %.preheader.us.i.us, !llvm.loop !5

aphase_shift.exit.us:                             ; preds = %._crit_edge42.split.i.us, %._crit_edge42.split.us.us.i.us
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge238.split.us, label %.preheader.lr.ph.split.i.us, !llvm.loop !215

._crit_edge238.split.us:                          ; preds = %aphase_shift.exit.us, %._crit_edge234.us
  br i1 %i.f, label %.preheader.i.i.us, label %aerror.exit.i.us

.preheader.i.i.us:                                ; preds = %._crit_edge238.split.us, %.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us, %.preheader.i.i.us ], [ 0, %._crit_edge238.split.us ] ; 3 uses
  %i.aag = phi <2 x double> [ %i.abm, %.preheader.i.i.us ], [ zeroinitializer, %._crit_edge238.split.us ] ; 2 uses
  %i.aah = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv.i.i.us
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv.i.i.us
  %i.aaj = load <2 x double>, ptr %i.aah, align 8, !tbaa !18 ; 4 uses
  %i.aak = fcmp olt <2 x double> %i.aaj, zeroinitializer
  %i.aal = fneg <2 x double> %i.aaj
  %i.aam = select <2 x i1> %i.aak, <2 x double> %i.aal, <2 x double> %i.aaj ; 2 uses
  %i.aan = extractelement <2 x double> %i.aam, i64 0 ; 2 uses
  %i.aao = extractelement <2 x double> %i.aam, i64 1 ; 2 uses
  %i.aap = fcmp ogt double %i.aan, %i.aao
  %i.aaq = select i1 %i.aap, double %i.aan, double %i.aao ; 2 uses
  %i.aar = load <2 x double>, ptr %i.aai, align 8, !tbaa !18 ; 4 uses
  %i.aas = fsub <2 x double> %i.aaj, %i.aar       ; 3 uses
  %i.aat = fcmp olt <2 x double> %i.aas, zeroinitializer
  %i.aau = fneg <2 x double> %i.aas
  %i.aav = select <2 x i1> %i.aat, <2 x double> %i.aau, <2 x double> %i.aas ; 2 uses
  %i.aaw = extractelement <2 x double> %i.aav, i64 0 ; 2 uses
  %i.aax = extractelement <2 x double> %i.aav, i64 1 ; 2 uses
  %i.aay = fcmp olt <2 x double> %i.aar, zeroinitializer
  %i.aaz = fneg <2 x double> %i.aar
  %i.aba = select <2 x i1> %i.aay, <2 x double> %i.aaz, <2 x double> %i.aar ; 2 uses
  %i.abb = extractelement <2 x double> %i.aba, i64 0 ; 2 uses
  %i.abc = extractelement <2 x double> %i.aba, i64 1 ; 2 uses
  %i.abd = fcmp ogt double %i.abb, %i.abc
  %i.abe = fcmp ogt double %i.aaw, %i.aax
  %i.abf = select i1 %i.abe, double %i.aaw, double %i.aax
  %i.abg = select i1 %i.abd, double %i.abb, double %i.abc ; 2 uses
  %i.abh = fcmp olt double %i.aaq, %i.abg
  %i.abi = select i1 %i.abh, double %i.aaq, double %i.abg
  %i.abj = insertelement <2 x double> poison, double %i.abi, i64 0
  %i.abk = insertelement <2 x double> %i.abj, double %i.abf, i64 1 ; 2 uses
  %i.abl = fcmp ogt <2 x double> %i.aag, %i.abk
  %i.abm = select <2 x i1> %i.abl, <2 x double> %i.aag, <2 x double> %i.abk ; 3 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.i.us, label %bb.j, label %.preheader.i.i.us, !llvm.loop !6

bb.j:                                             ; preds = %.preheader.i.i.us
  %i.abn = extractelement <2 x double> %i.abm, i64 0
  %i.abo = extractelement <2 x double> %i.abm, i64 1
  %i.abp = fdiv double %i.abo, %i.abn             ; 3 uses
  %i.abq = fcmp uno double %i.abp, 0.000000e+00
  br i1 %i.abq, label %bb.k, label %aerror.exit.i.us

bb.k:                                             ; preds = %bb.j
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.6, i32 noundef 53, ptr noundef nonnull @.str.7) #13
  br label %aerror.exit.i.us

aerror.exit.i.us:                                 ; preds = %bb.k, %bb.j, %._crit_edge238.split.us
  %.028.i.i.us = phi double [ %i.abp, %bb.j ], [ %i.abp, %bb.k ], [ 0.000000e+00, %._crit_edge238.split.us ] ; 5 uses
  %i.abr = fcmp ogt double %.028.i.i.us, %12
  br i1 %i.abr, label %bb.l, label %acmp.exit212.us

bb.l:                                             ; preds = %aerror.exit.i.us
  tail call void (ptr, ...) @ovtpvt_err(ptr noundef nonnull @.str, double noundef %.028.i.i.us, ptr noundef nonnull @.str.3) #13
  %i.abs = load i32, ptr @verbose, align 4
  %i.abt = icmp slt i32 %i.abs, 3
  %or.cond.i128.us = select i1 %i.k, i1 %i.abt, i1 false
  %i.abu = select i1 %or.cond.i128.us, i32 300, i32 %i.a ; 2 uses
  %i.abv = icmp sgt i32 %i.abu, 0
  br i1 %i.abv, label %.lr.ph.preheader.i129.us, label %acmp.exit212.us.sink.split

.lr.ph.preheader.i129.us:                         ; preds = %bb.l
  %wide.trip.count.i130.us = zext nneg i32 %i.abu to i64
  br label %.lr.ph.i131.us

.lr.ph.i131.us:                                   ; preds = %.lr.ph.i131.us, %.lr.ph.preheader.i129.us
  %indvars.iv.i132.us = phi i64 [ 0, %.lr.ph.preheader.i129.us ], [ %indvars.iv.next.i133.us, %.lr.ph.i131.us ] ; 4 uses
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv.i132.us ; 2 uses
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !18
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
end_hunk_2
