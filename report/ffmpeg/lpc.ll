Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lpc?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_lpc_calc_coefs:bb.a
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count22.i
  br i1 %cmp.n, label %._crit_edge6.i, label %.lr.ph5.i.preheader

.lr.ph5.i.preheader:                              ; preds = %vector.memcheck, %.lr.ph5.preheader.i, %middle.block
  %indvars.iv17.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph5.preheader.i ], [ %n.vec, %middle.block ]
  %i.bl = insertelement <2 x double> poison, double %.168.i, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph5.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %.0671.i = phi double [ %i.al, %.lr.ph.i.preheader.new ], [ %i.cb, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.07111.i, i64 %indvars.iv.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = xor i64 %indvars.iv.i, -1
  %i.bq = getelementptr [8 x i8], ptr %i.aj, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !18
  %i.bs = fneg nsz double %i.bo
  %i.bt = call nsz double @llvm.fmuladd.f64(double %i.bs, double %i.br, double %.0671.i)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.07111.i, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !18
  %i.bx = xor i64 %indvars.iv.i, -2
  %i.by = getelementptr [8 x i8], ptr %i.aj, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = fneg nsz double %i.bw
  %i.cb = call nsz double @llvm.fmuladd.f64(double %i.ca, double %i.bz, double %i.bt) ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !41

.lr.ph5.i:                                        ; preds = %.lr.ph5.i.preheader, %.lr.ph5.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.lr.ph5.i ], [ %indvars.iv17.i.ph, %.lr.ph5.i.preheader ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.07111.i, i64 %indvars.iv17.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.ce = xor i64 %indvars.iv17.i, -1
  %i.cf = add nsw i64 %indvars.iv24.i, %i.ce      ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.07111.i, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !18 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0778.i, i64 %indvars.iv17.i
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.cd, i64 1
  %i.cl = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ch, i64 1
  %i.cn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.ck, <2 x double> %i.cm) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0
  store double %i.co, ptr %i.ci, align 8, !tbaa !18
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0778.i, i64 %i.cf
  %i.cq = extractelement <2 x double> %i.cn, i64 1
  store double %i.cq, ptr %i.cp, align 8, !tbaa !18
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %._crit_edge6.i, label %.lr.ph5.i, !llvm.loop !42

._crit_edge6.i:                                   ; preds = %.lr.ph5.i, %middle.block, %._crit_edge.i
  %i.cr = getelementptr i8, ptr %.0778.i, i64 256
  %indvars.iv.next21.i = add nuw i32 %indvars.iv20.i, 1
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %.lr.ph.preheader, label %.lr.ph13.i, !llvm.loop !43

.lr.ph.preheader:                                 ; preds = %._crit_edge6.i
  %wide.trip.count = zext nneg i32 %4 to i64
  %min.iters.check356 = icmp ult i32 %4, 4
  br i1 %min.iters.check356, label %.lr.ph.preheader481, label %vector.ph357

vector.ph357:                                     ; preds = %.lr.ph.preheader
  %n.vec358 = and i64 %wide.trip.count27.i, 2147483644 ; 3 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph357
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next361, %vector.body359 ] ; 7 uses
  %i.cs = or disjoint i64 %index360, 1            ; 2 uses
  %i.ct = or disjoint i64 %index360, 2            ; 2 uses
  %i.cu = or disjoint i64 %index360, 3            ; 2 uses
  %i.cv = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %index360
  %i.cw = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %i.cs
  %i.cx = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %i.ct
  %i.cy = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %i.cu
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index360
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cs
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ct
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cu
  %i.dd = load double, ptr %i.cz, align 16, !tbaa !18
  %i.de = load double, ptr %i.da, align 8, !tbaa !18
  %i.df = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.de, i64 1
  %i.dh = load double, ptr %i.db, align 16, !tbaa !18
  %i.di = load double, ptr %i.dc, align 8, !tbaa !18
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1
  %i.dl = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dg)
  %i.dm = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dk)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index360 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x double> %i.dl, ptr %i.dn, align 16, !tbaa !18
  store <2 x double> %i.dm, ptr %i.do, align 16, !tbaa !18
  %index.next361 = add nuw i64 %index360, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next361, %n.vec358
  br i1 %i.dp, label %middle.block362, label %vector.body359, !llvm.loop !44

middle.block362:                                  ; preds = %vector.body359
  %cmp.n363 = icmp eq i64 %n.vec358, %wide.trip.count27.i
  br i1 %cmp.n363, label %._crit_edge, label %.lr.ph.preheader481

.lr.ph.preheader481:                              ; preds = %.lr.ph.preheader, %middle.block362
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec358, %middle.block362 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader481, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader481 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !18
  %i.dt = call nsz double @llvm.fabs.f64(double %i.ds)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.dt, ptr %i.du, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %middle.block362, %bb.h
  br i1 %i.e, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.g, %._crit_edge
  %.0150215 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.g ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.d, i8 0, i64 288, i1 false)
  %i.dw = icmp sgt i32 %4, 0                      ; 2 uses
  %or.cond254 = and i1 %i.p, %i.dw
  br i1 %or.cond254, label %.lr.ph226, label %.loopexit220

.lr.ph226:                                        ; preds = %.thread
  %i.dx = add nsw i32 %4, -1
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 10416
  %i.eb = getelementptr inbounds nuw [256 x i8], ptr %i.ea, i64 %i.dy ; 2 uses
  %wide.trip.count266 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check366 = icmp ult i32 %4, 4
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.ph367

vector.ph367:                                     ; preds = %.lr.ph226
  %n.vec368 = and i64 %wide.trip.count266, 2147483644 ; 3 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next373, %vector.body369 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index370 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load371 = load <2 x double>, ptr %i.ec, align 16, !tbaa !18
  %wide.load372 = load <2 x double>, ptr %i.ed, align 16, !tbaa !18
  %i.ee = fneg nsz <2 x double> %wide.load371
  %i.ef = fneg nsz <2 x double> %wide.load372
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index370 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x double> %i.ee, ptr %i.eg, align 8, !tbaa !18
  store <2 x double> %i.ef, ptr %i.eh, align 8, !tbaa !18
  %index.next373 = add nuw i64 %index370, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next373, %n.vec368
  br i1 %i.ei, label %middle.block374, label %vector.body369, !llvm.loop !46

middle.block374:                                  ; preds = %vector.body369
  %cmp.n375 = icmp eq i64 %n.vec368, %wide.trip.count266
  br i1 %cmp.n375, label %.loopexit220, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %.lr.ph226, %middle.block374
  %indvars.iv263.ph = phi i64 [ 0, %.lr.ph226 ], [ %n.vec368, %middle.block374 ]
  br label %scalar.ph365

scalar.ph365:                                     ; preds = %scalar.ph365.preheader, %scalar.ph365
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %scalar.ph365 ], [ %indvars.iv263.ph, %scalar.ph365.preheader ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv263
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !18
  %i.el = fneg nsz double %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv263
  store double %i.el, ptr %i.em, align 8, !tbaa !18
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count266
  br i1 %exitcond267.not, label %.loopexit220, label %scalar.ph365, !llvm.loop !47

.loopexit220:                                     ; preds = %scalar.ph365, %middle.block374, %.thread
  %i.en = icmp samesign ult i32 %.0150215, %spec.store.select
  br i1 %i.en, label %.lr.ph241, label %.preheader217

.lr.ph241:                                        ; preds = %.loopexit220
  %i.eo = icmp slt i32 %4, %2
  %.not165227 = icmp slt i32 %4, 0                ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eq = add nsw i32 %4, -1
  %i.er = add i32 %4, 1                           ; 6 uses
  %i.es = sext i32 %4 to i64                      ; 2 uses
  %wide.trip.count271 = zext i32 %i.er to i64     ; 7 uses
  %wide.trip.count276 = zext i32 %i.er to i64
  %wide.trip.count285 = zext i32 %i.er to i64
  %min.iters.check406 = icmp ult i32 %i.er, 4
  %n.vec408 = and i64 %wide.trip.count271, 4294967292 ; 3 uses
  %cmp.n417 = icmp eq i64 %n.vec408, %wide.trip.count271
  %min.iters.check392 = icmp ult i32 %i.er, 4
  %n.vec394 = and i64 %wide.trip.count271, 4294967292 ; 3 uses
  %cmp.n403 = icmp eq i64 %n.vec394, %wide.trip.count271
  %min.iters.check378 = icmp ult i32 %i.er, 4
  %n.vec380 = and i64 %wide.trip.count271, 4294967292 ; 3 uses
  %cmp.n389 = icmp eq i64 %n.vec380, %wide.trip.count271
  br label %bb.i

.preheader217:                                    ; preds = %._crit_edge237, %.loopexit220
  %.1151.lcssa = phi i32 [ %.0150215, %.loopexit220 ], [ %spec.store.select, %._crit_edge237 ]
  %.0.lcssa = phi double [ undef, %.loopexit220 ], [ %.1.lcssa, %._crit_edge237 ]
  br i1 %i.dw, label %.preheader216.lr.ph, label %._crit_edge250

.preheader216.lr.ph:                              ; preds = %.preheader217
  %i.et = and i32 %.1151.lcssa, 1
  %i.eu = xor i32 %i.et, 1
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [18848 x i8], ptr %i.dv, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 10368
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 18560
  %i.ez = sub nsw i32 %2, %4
  %i.fa = sitofp nsz i32 %i.ez to double
  %wide.trip.count302 = zext nneg i32 %4 to i64   ; 5 uses
  %min.iters.check420 = icmp ult i32 %4, 4
  %n.vec422 = and i64 %wide.trip.count302, 2147483644 ; 3 uses
  %cmp.n429 = icmp eq i64 %n.vec422, %wide.trip.count302
  br label %.lr.ph245

bb.i:                                             ; preds = %.lr.ph241, %._crit_edge237
  %.1151239 = phi i32 [ %.0150215, %.lr.ph241 ], [ %i.hh, %._crit_edge237 ] ; 4 uses
  %i.fb = and i32 %.1151239, 1                    ; 2 uses
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [18848 x i8], ptr %i.dv, i64 %i.fc ; 7 uses
  call void @avpriv_init_lls(ptr noundef nonnull %i.fd, i32 noundef %4) #9
  br i1 %i.eo, label %.preheader218.lr.ph, label %._crit_edge237

.preheader218.lr.ph:                              ; preds = %bb.i
  %.not166 = icmp eq i32 %.1151239, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 18832
  %i.ff = xor i32 %i.fb, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [18848 x i8], ptr %i.dv, i64 %i.fg
  %i.fi = lshr i32 512, %.1151239
  %i.fj = uitofp nsz nneg i32 %i.fi to double
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 18824 ; 3 uses
  br i1 %.not166, label %.preheader218.lr.ph.split.us, label %.preheader218

.preheader218.lr.ph.split.us:                     ; preds = %.preheader218.lr.ph
  br i1 %.not165227, label %.preheader218.us.us, label %.preheader218.us

.preheader218.us.us:                              ; preds = %.preheader218.lr.ph.split.us, %.preheader218.us.us
  %.1236.us.us = phi double [ %.2.us.us, %.preheader218.us.us ], [ 0.000000e+00, %.preheader218.lr.ph.split.us ]
  %.1156235.us.us = phi i32 [ %i.fm, %.preheader218.us.us ], [ %4, %.preheader218.lr.ph.split.us ]
  %.2.us.us = fadd nsz double %.1236.us.us, 1.000000e+00 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77
  call void %i.fl(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.d) #9
  %i.fm = add i32 %.1156235.us.us, 1              ; 2 uses
  %exitcond292.not = icmp eq i32 %i.fm, %2
  br i1 %exitcond292.not, label %._crit_edge237, label %.preheader218.us.us, !llvm.loop !48

.preheader218.us:                                 ; preds = %.preheader218.lr.ph.split.us, %._crit_edge230.us
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %._crit_edge230.us ], [ %i.es, %.preheader218.lr.ph.split.us ] ; 3 uses
  %.1236.us = phi double [ %.2.us, %._crit_edge230.us ], [ 0.000000e+00, %.preheader218.lr.ph.split.us ]
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.body381

vector.body381:                                   ; preds = %.preheader218.us, %vector.body381
  %index382 = phi i64 [ %index.next387, %vector.body381 ], [ 0, %.preheader218.us ] ; 3 uses
  %i.fn = sub nsw i64 %indvars.iv287, %index382
  %i.fo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 -12
  %wide.load383 = load <2 x i32>, ptr %i.fp, align 4, !tbaa !25
  %wide.load384 = load <2 x i32>, ptr %i.fq, align 4, !tbaa !25
  %reverse385 = shufflevector <2 x i32> %wide.load383, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse386 = shufflevector <2 x i32> %wide.load384, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fr = sitofp nsz <2 x i32> %reverse385 to <2 x double>
  %i.fs = sitofp nsz <2 x i32> %reverse386 to <2 x double>
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index382 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x double> %i.fr, ptr %i.ft, align 16, !tbaa !18
  store <2 x double> %i.fs, ptr %i.fu, align 16, !tbaa !18
  %index.next387 = add nuw i64 %index382, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.fv, label %middle.block388, label %vector.body381, !llvm.loop !49

middle.block388:                                  ; preds = %vector.body381
  br i1 %cmp.n389, label %._crit_edge230.us, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %.preheader218.us, %middle.block388
  %indvars.iv282.ph = phi i64 [ 0, %.preheader218.us ], [ %n.vec380, %middle.block388 ]
  br label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.preheader, %scalar.ph377
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %scalar.ph377 ], [ %indvars.iv282.ph, %scalar.ph377.preheader ] ; 3 uses
  %i.fw = sub nsw i64 %indvars.iv287, %indvars.iv282
  %i.fx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !25
  %i.fz = sitofp nsz i32 %i.fy to double
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv282
  store double %i.fz, ptr %i.ga, align 8, !tbaa !18
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count285
  br i1 %exitcond286.not, label %._crit_edge230.us, label %scalar.ph377, !llvm.loop !50

._crit_edge230.us:                                ; preds = %scalar.ph377, %middle.block388
  %.2.us = fadd nsz double %.1236.us, 1.000000e+00 ; 2 uses
  %i.gb = load ptr, ptr %i.fk, align 8, !tbaa !77
  call void %i.gb(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.d) #9
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %lftr.wideiv290 = trunc i64 %indvars.iv.next288 to i32
  %exitcond291.not = icmp eq i32 %2, %lftr.wideiv290
  br i1 %exitcond291.not, label %._crit_edge237, label %.preheader218.us, !llvm.loop !48

.preheader218:                                    ; preds = %.preheader218.lr.ph, %.loopexit
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.loopexit ], [ %i.es, %.preheader218.lr.ph ] ; 3 uses
  %.1236 = phi double [ %.2, %.loopexit ], [ 0.000000e+00, %.preheader218.lr.ph ]
  br i1 %.not165227, label %._crit_edge230, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %.preheader218
  br i1 %min.iters.check406, label %.lr.ph229.preheader478, label %vector.body409

vector.body409:                                   ; preds = %.lr.ph229.preheader, %vector.body409
  %index410 = phi i64 [ %index.next415, %vector.body409 ], [ 0, %.lr.ph229.preheader ] ; 3 uses
  %i.gc = sub nsw i64 %indvars.iv278, %index410
  %i.gd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -12
  %wide.load411 = load <2 x i32>, ptr %i.ge, align 4, !tbaa !25
  %wide.load412 = load <2 x i32>, ptr %i.gf, align 4, !tbaa !25
  %reverse413 = shufflevector <2 x i32> %wide.load411, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse414 = shufflevector <2 x i32> %wide.load412, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = sitofp nsz <2 x i32> %reverse413 to <2 x double>
  %i.gh = sitofp nsz <2 x i32> %reverse414 to <2 x double>
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index410 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <2 x double> %i.gg, ptr %i.gi, align 16, !tbaa !18
  store <2 x double> %i.gh, ptr %i.gj, align 16, !tbaa !18
  %index.next415 = add nuw i64 %index410, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next415, %n.vec408
  br i1 %i.gk, label %middle.block416, label %vector.body409, !llvm.loop !51

middle.block416:                                  ; preds = %vector.body409
  br i1 %cmp.n417, label %._crit_edge230, label %.lr.ph229.preheader478

.lr.ph229.preheader478:                           ; preds = %.lr.ph229.preheader, %middle.block416
  %indvars.iv268.ph = phi i64 [ 0, %.lr.ph229.preheader ], [ %n.vec408, %middle.block416 ]
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader478, %.lr.ph229
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph229 ], [ %indvars.iv268.ph, %.lr.ph229.preheader478 ] ; 3 uses
  %i.gl = sub nsw i64 %indvars.iv278, %indvars.iv268
  %i.gm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !25
  %i.go = sitofp nsz i32 %i.gn to double
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv268
  store double %i.go, ptr %i.gp, align 8, !tbaa !18
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %._crit_edge230, label %.lr.ph229, !llvm.loop !52

._crit_edge230:                                   ; preds = %.lr.ph229, %middle.block416, %.preheader218
  %i.gq = load ptr, ptr %i.fe, align 16, !tbaa !78
  %i.gr = call nsz double %i.gq(ptr noundef nonnull %i.fh, ptr noundef nonnull %i.ep, i32 noundef %i.eq) #9
  %i.gs = load double, ptr %i.d, align 16, !tbaa !18
  %i.gt = fsub nsz double %i.gr, %i.gs
  %i.gu = call nsz double @llvm.fabs.f64(double %i.gt)
  %i.gv = fadd nsz double %i.gu, %i.fj
  %i.gw = fdiv nsz double 1.000000e+00, %i.gv     ; 2 uses
  %i.gx = call nsz double @llvm.sqrt.f64(double %i.gw) ; 2 uses
  br i1 %.not165227, label %.loopexit, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %._crit_edge230
  br i1 %min.iters.check392, label %.lr.ph234.preheader477, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph234.preheader
  %broadcast.splatinsert395 = insertelement <2 x double> poison, double %i.gx, i64 0
  %broadcast.splat396 = shufflevector <2 x double> %broadcast.splatinsert395, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph393
  %index398 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body397 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index398 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %wide.load399 = load <2 x double>, ptr %i.gy, align 16, !tbaa !18
  %wide.load400 = load <2 x double>, ptr %i.gz, align 16, !tbaa !18
  %i.ha = fmul nsz <2 x double> %broadcast.splat396, %wide.load399
  %i.hb = fmul nsz <2 x double> %broadcast.splat396, %wide.load400
  store <2 x double> %i.ha, ptr %i.gy, align 16, !tbaa !18
  store <2 x double> %i.hb, ptr %i.gz, align 16, !tbaa !18
  %index.next401 = add nuw i64 %index398, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next401, %n.vec394
  br i1 %i.hc, label %middle.block402, label %vector.body397, !llvm.loop !53

middle.block402:                                  ; preds = %vector.body397
  br i1 %cmp.n403, label %.loopexit, label %.lr.ph234.preheader477

.lr.ph234.preheader477:                           ; preds = %.lr.ph234.preheader, %middle.block402
  %indvars.iv273.ph = phi i64 [ 0, %.lr.ph234.preheader ], [ %n.vec394, %middle.block402 ]
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader477, %.lr.ph234
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %.lr.ph234 ], [ %indvars.iv273.ph, %.lr.ph234.preheader477 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv273 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !18
  %i.hf = fmul nsz double %i.gx, %i.he
  store double %i.hf, ptr %i.hd, align 8, !tbaa !18
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.loopexit, label %.lr.ph234, !llvm.loop !54

.loopexit:                                        ; preds = %.lr.ph234, %middle.block402, %._crit_edge230
  %.2 = fadd nsz double %.1236, %i.gw             ; 2 uses
  %i.hg = load ptr, ptr %i.fk, align 8, !tbaa !77
  call void %i.hg(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.d) #9
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next279 to i32
  %exitcond281.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond281.not, label %._crit_edge237, label %.preheader218, !llvm.loop !48

._crit_edge237:                                   ; preds = %.loopexit, %._crit_edge230.us, %.preheader218.us.us, %bb.i
  %.1.lcssa = phi double [ 0.000000e+00, %bb.i ], [ %.2.us, %._crit_edge230.us ], [ %.2.us.us, %.preheader218.us.us ], [ %.2, %.loopexit ]
  call void @avpriv_solve_lls(ptr noundef nonnull %i.fd, double noundef 1.000000e-03, i16 noundef zeroext 0) #9
  %i.hh = add nuw i32 %.1151239, 1                ; 2 uses
  %exitcond293.not = icmp eq i32 %i.hh, %spec.store.select
  br i1 %exitcond293.not, label %.preheader217, label %bb.i, !llvm.loop !55

.lr.ph245:                                        ; preds = %._crit_edge246, %.preheader216.lr.ph
  %indvars.iv299 = phi i64 [ 0, %.preheader216.lr.ph ], [ %indvars.iv.next300, %._crit_edge246 ] ; 5 uses
  %i.hi = getelementptr inbounds nuw [256 x i8], ptr %i.ex, i64 %indvars.iv299 ; 2 uses
  %i.hj = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %indvars.iv299 ; 2 uses
  br i1 %min.iters.check420, label %scalar.ph419.preheader, label %vector.body423

vector.body423:                                   ; preds = %.lr.ph245, %vector.body423
  %index424 = phi i64 [ %index.next427, %vector.body423 ], [ 0, %.lr.ph245 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index424 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load425 = load <2 x double>, ptr %i.hk, align 8, !tbaa !18
  %wide.load426 = load <2 x double>, ptr %i.hl, align 8, !tbaa !18
  %i.hm = fneg nsz <2 x double> %wide.load425
  %i.hn = fneg nsz <2 x double> %wide.load426
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %index424 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <2 x double> %i.hm, ptr %i.ho, align 16, !tbaa !18
  store <2 x double> %i.hn, ptr %i.hp, align 16, !tbaa !18
  %index.next427 = add nuw i64 %index424, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.hq, label %middle.block428, label %vector.body423, !llvm.loop !56

middle.block428:                                  ; preds = %vector.body423
  br i1 %cmp.n429, label %._crit_edge246, label %scalar.ph419.preheader

scalar.ph419.preheader:                           ; preds = %.lr.ph245, %middle.block428
  %indvars.iv294.ph = phi i64 [ 0, %.lr.ph245 ], [ %n.vec422, %middle.block428 ]
  br label %scalar.ph419

.preheader:                                       ; preds = %._crit_edge246
  %.not323 = icmp eq i32 %4, 1
  br i1 %.not323, label %._crit_edge250, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader
  %i.hr = zext nneg i32 %4 to i64                 ; 3 uses
  %i.hs = call i64 @llvm.usub.sat.i64(i64 %wide.trip.count302, i64 2) ; 2 uses
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check432 = icmp samesign ult i64 %i.hs, 3
  br i1 %min.iters.check432, label %.lr.ph249.preheader476, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph249.preheader
  %n.vec434 = and i64 %i.ht, 4294967292           ; 3 uses
  %i.hu = sub nsw i64 %i.hr, %n.vec434
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next441, %vector.body435 ] ; 2 uses
  %i.hv = sub i64 %i.hr, %index436                ; 2 uses
  %i.hw = getelementptr [8 x i8], ptr %i.b, i64 %i.hv ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 -24
  %i.hy = getelementptr i8, ptr %i.hw, i64 -40
  %wide.load437 = load <2 x double>, ptr %i.hx, align 8, !tbaa !18
  %wide.load438 = load <2 x double>, ptr %i.hy, align 8, !tbaa !18
  %i.hz = getelementptr [8 x i8], ptr %i.b, i64 %i.hv ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -16    ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hz, i64 -32    ; 2 uses
  %wide.load439 = load <2 x double>, ptr %i.ia, align 8, !tbaa !18
  %wide.load440 = load <2 x double>, ptr %i.ib, align 8, !tbaa !18
  %i.ic = fsub nsz <2 x double> %wide.load437, %wide.load439
  %i.id = fsub nsz <2 x double> %wide.load438, %wide.load440
  store <2 x double> %i.ic, ptr %i.ia, align 8, !tbaa !18
  store <2 x double> %i.id, ptr %i.ib, align 8, !tbaa !18
  %index.next441 = add nuw i64 %index436, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next441, %n.vec434
  br i1 %i.ie, label %middle.block442, label %vector.body435, !llvm.loop !57

middle.block442:                                  ; preds = %vector.body435
  %cmp.n443 = icmp eq i64 %i.ht, %n.vec434
  br i1 %cmp.n443, label %._crit_edge250, label %.lr.ph249.preheader476

.lr.ph249.preheader476:                           ; preds = %.lr.ph249.preheader, %middle.block442
  %indvars.iv304.ph = phi i64 [ %i.hr, %.lr.ph249.preheader ], [ %i.hu, %middle.block442 ]
  br label %.lr.ph249

scalar.ph419:                                     ; preds = %scalar.ph419.preheader, %scalar.ph419
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %scalar.ph419 ], [ %indvars.iv294.ph, %scalar.ph419.preheader ] ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv294
  %i.ig = load double, ptr %i.if, align 8, !tbaa !18
  %i.ih = fneg nsz double %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv294
  store double %i.ih, ptr %i.ii, align 8, !tbaa !18
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count302
  br i1 %exitcond298.not, label %._crit_edge246, label %scalar.ph419, !llvm.loop !58

._crit_edge246:                                   ; preds = %scalar.ph419, %middle.block428
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv299
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !18
  %i.il = fdiv nsz double %i.ik, %.0.lcssa
  %i.im = call nsz double @llvm.sqrt.f64(double %i.il)
  %i.in = fmul nsz double %i.im, %i.fa
  %i.io = fdiv nsz double %i.in, 4.000000e+03
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv299
  store double %i.io, ptr %i.ip, align 8, !tbaa !18
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.preheader, label %.lr.ph245, !llvm.loop !59

.lr.ph249:                                        ; preds = %.lr.ph249.preheader476, %.lr.ph249
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph249 ], [ %indvars.iv304.ph, %.lr.ph249.preheader476 ] ; 3 uses
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, -1 ; 2 uses
  %i.iq = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv304
  %i.ir = getelementptr i8, ptr %i.iq, i64 -16
  %i.is = load double, ptr %i.ir, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next305 ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !18
  %i.iv = fsub nsz double %i.is, %i.iu
  store double %i.iv, ptr %i.it, align 8, !tbaa !18
  %i.iw = icmp samesign ugt i64 %indvars.iv304, 2
  br i1 %i.iw, label %.lr.ph249, label %._crit_edge250, !llvm.loop !60

._crit_edge250:                                   ; preds = %.lr.ph249, %middle.block442, %.preheader217, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge250, %._crit_edge
  %i.ix = icmp eq i32 %10, 0
  br i1 %i.ix, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.iy = sext i32 %3 to i64
  %.not.i170329 = icmp slt i32 %4, %3
  br i1 %.not.i170329, label %estimate_best_order.exit, label %.lr.ph332

.lr.ph332:                                        ; preds = %bb.k
end_hunk_0
