inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_get_mask:bb.a
  %invariant.op = add <8 x i32> splat (i32 64), %broadcast.splat332
  %invariant.op395.a = add <8 x i32> splat (i32 128), %broadcast.splat332
  %invariant.op397.a = add <8 x i32> splat (i32 192), %broadcast.splat332
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec336 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert339 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat340 = shufflevector <4 x i32> %broadcast.splatinsert339, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n348 = icmp eq i64 %n.vec336, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader233.preheader, %._crit_edge
  %indvars.iv277 = phi i64 [ 0, %.preheader233.preheader ], [ %indvars.iv.next278, %._crit_edge ] ; 3 uses
  %i.ch = mul nsw i64 %indvars.iv277, %i.bw       ; 6 uses
  %indvars.iv277.tr = trunc i64 %indvars.iv277 to i32
  %i.ci = shl i32 %indvars.iv277.tr, 3
  %i.cj = add i32 %i.ci, %i.bn
  %i.ck = sitofp reassoc nsz arcp contract afn i32 %i.cj to float ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check330, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ck, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.cl = or disjoint i64 %index, 8
  %i.cm = or disjoint i64 %index, 16
  %i.cn = or disjoint i64 %index, 24
  %i.co = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add.2 = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add.3 = shl <8 x i32> %vec.ind, splat (i32 3)
  %i.cp = add <8 x i32> %i.co, %broadcast.splat332
  %.reass = add <8 x i32> %step.add, %invariant.op
  %.reass396.a = add <8 x i32> %step.add.2, %invariant.op395.a
  %.reass398.a = add <8 x i32> %step.add.3, %invariant.op397.a
  %i.cq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cp to <8 x float>
  %i.cr = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass to <8 x float>
  %i.cs = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass396.a to <8 x float>
  %i.ct = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass398.a to <8 x float>
  %i.cu = add nsw i64 %index, %i.ch
  %i.cv = add nsw i64 %i.cl, %i.ch
  %i.cw = add nsw i64 %i.cm, %i.ch
  %i.cx = add nsw i64 %i.cn, %i.ch
  %i.cy = shl nsw i64 %i.cu, 3
  %i.cz = shl nsw i64 %i.cv, 3
  %i.da = shl nsw i64 %i.cw, 3
  %i.db = shl nsw i64 %i.cx, 3
  %i.dc = getelementptr inbounds i8, ptr %i.ca, i64 %i.cy
  %i.dd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cz
  %i.de = getelementptr inbounds i8, ptr %i.ca, i64 %i.da
  %i.df = getelementptr inbounds i8, ptr %i.ca, i64 %i.db
  %interleaved.vec = shufflevector <8 x float> %i.cq, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.dc, align 8, !tbaa !29
  %interleaved.vec333 = shufflevector <8 x float> %i.cr, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec333, ptr %i.dd, align 8, !tbaa !29
  %interleaved.vec334 = shufflevector <8 x float> %i.cs, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec334, ptr %i.de, align 8, !tbaa !29
  %interleaved.vec335 = shufflevector <8 x float> %i.ct, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec335, ptr %i.df, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert337.a = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.dh = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert341 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat342 = shufflevector <4 x i32> %broadcast.splatinsert341, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat342, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index343 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next346, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind344 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next347, %vec.epilog.vector.body ] ; 2 uses
  %i.di = shl <4 x i32> %vec.ind344, splat (i32 3)
  %i.dj = add <4 x i32> %i.di, %broadcast.splat340
  %i.dk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.dj to <4 x float>
  %i.dl = add nsw i64 %index343, %i.ch
  %i.dm = shl nsw i64 %i.dl, 3
  %i.dn = getelementptr inbounds i8, ptr %i.ca, i64 %i.dm
  %interleaved.vec345 = shufflevector <4 x float> %i.dk, <4 x float> %broadcast.splatinsert337.a, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec345, ptr %i.dn, align 8, !tbaa !29
  %index.next346 = add nuw i64 %index343, 4       ; 2 uses
  %vec.ind.next347 = add <4 x i32> %vec.ind344, splat (i32 4)
  %i.do = icmp eq i64 %index.next346, %n.vec336
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n348, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec336, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge239.split:                             ; preds = %._crit_edge, %.preheader234
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.dq = and i32 %i.dp, 4112
  %or.cond210.not = icmp eq i32 %i.dq, 4112
  br i1 %or.cond210.not, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge239.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.dr = shl i32 %indvars.iv.tr, 3
  %i.ds = add i32 %i.dr, %i.bm
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.ds to float
  %i.du = add nsw i64 %indvars.iv, %i.ch
  %.idx326 = shl nsw i64 %i.du, 3
  %i.dv = getelementptr inbounds i8, ptr %i.ca, i64 %.idx326 ; 2 uses
  store float %i.dt, ptr %i.dv, align 8, !tbaa !29
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  store float %i.ck, ptr %i.dw, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !116

bb.f:                                             ; preds = %._crit_edge239.split
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.dy = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #12 ; 0 uses
  %i.dz = load i64, ptr %10, align 8, !tbaa !85
  %i.ea = add nsw i64 %i.dz, -1290608000
  %i.eb = sitofp reassoc nsz arcp contract afn i64 %i.ea to double
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !87
  %i.ee = sitofp reassoc nsz arcp contract afn i64 %i.ed to double
  %i.ef = fmul reassoc nnan nsz arcp contract afn double %i.ee, f0x3EB0C6F7A0B5ED8D
  %i.eg = fadd reassoc nsz arcp contract afn double %i.ef, %i.eb ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.eh = fsub reassoc nsz arcp contract afn double %i.eg, %.0
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.dx, double noundef %i.eh) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge239.split
  %.1 = phi nsz double [ %.0, %._crit_edge239.split ], [ %i.eg, %bb.f ] ; 2 uses
  %i.ei = load ptr, ptr %i.y, align 8, !tbaa !101
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.ek = load i32, ptr %i.aa, align 16, !tbaa !110
  %i.el = sitofp reassoc nsz arcp contract afn i32 %i.ek to double
  %i.em = mul nsw i64 %i.bx, %i.bw
  %i.en = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.ei, ptr noundef %i.ej, double noundef %i.el, i32 noundef 3, ptr noundef nonnull %i.ca, i64 noundef %i.em) #12
  %.not199 = icmp eq i32 %i.en, 0
  br i1 %.not199, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ca) #12
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.ep = and i32 %i.eo, 4112
  %or.cond211.not = icmp eq i32 %i.ep, 4112
  br i1 %or.cond211.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.er = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #12 ; 0 uses
  %i.es = load i64, ptr %9, align 8, !tbaa !85
  %i.et = add nsw i64 %i.es, -1290608000
  %i.eu = sitofp reassoc nsz arcp contract afn i64 %i.et to double
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !87
  %i.ex = sitofp reassoc nsz arcp contract afn i64 %i.ew to double
  %i.ey = fmul reassoc nnan nsz arcp contract afn double %i.ex, f0x3EB0C6F7A0B5ED8D
  %i.ez = fadd reassoc nsz arcp contract afn double %i.ey, %i.eu ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.fa = fsub reassoc nsz arcp contract afn double %i.ez, %.1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.eq, double noundef %i.fa) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi nsz double [ %.1, %bb.i ], [ %i.ez, %bb.j ]
  %i.fb = load ptr, ptr %i.m, align 8, !tbaa !88  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 144
  %i.fd = load i32, ptr %i.fc, align 16, !tbaa !117
  %i.fe = sitofp reassoc nsz arcp contract afn i32 %i.fd to float ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 148
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !130
  %i.fh = sitofp reassoc nsz arcp contract afn i32 %i.fg to float ; 2 uses
  %i.fi = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.fe, float noundef %i.fh) #14 ; 3 uses
  %i.fj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fi ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !31
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, f0xBC8EFA36
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.fm) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.fn = load float, ptr %i.bk, align 4, !tbaa !29
  %13 = fmul reassoc nsz arcp contract afn float %i.fn, %i.fe ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !29
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.fh ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !30
  %i.ft = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fs, float 1.000000e-03) ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !131
  %i.fy = fmul reassoc nnan nsz arcp contract afn float %i.ft, 4.000000e+00 ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, %i.fi
  %i.ga = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fz)
  %i.gb = fptosi float %i.ga to i32               ; 9 uses
  %i.gc = shl nsw i32 %i.gb, 1
  %i.gd = add nsw i32 %i.gc, 2                    ; 5 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 2
  %i.gg = call ptr @dt_alloc_aligned(i64 noundef %i.gf) #12 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gg, i64 64) ]
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.l, label %.preheader232

.preheader232:                                    ; preds = %bb.k
  %i.gi = icmp sgt i32 %i.gb, -1
  br i1 %i.gi, label %.lr.ph, label %.preheader232.._crit_edge241_crit_edge

.preheader232.._crit_edge241_crit_edge:           ; preds = %.preheader232
  %.pre317 = sext i32 %i.gb to i64
  br label %._crit_edge241

.lr.ph:                                           ; preds = %.preheader232
  %i.gj = icmp eq i32 %i.fx, 1
  br i1 %i.gj, label %iter.check371, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.gk = zext nneg i32 %i.gb to i64
  %wide.trip.count287 = zext nneg i32 %i.gd to i64
  %i.gl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ft
  br label %.lr.ph.split

iter.check371:                                    ; preds = %.lr.ph
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fj, 5.000000e-01 ; 3 uses
  %i.gn = zext nneg i32 %i.gb to i64              ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.gd to i64 ; 6 uses
  %min.iters.check349 = icmp ult i32 %i.gd, 4
  br i1 %min.iters.check349, label %vec.epilog.scalar.ph372.preheader, label %vector.main.loop.iter.check350

vector.main.loop.iter.check350:                   ; preds = %iter.check371
  %min.iters.check351 = icmp ult i32 %i.gd, 32
  br i1 %min.iters.check351, label %vec.epilog.ph375, label %vector.ph352

vector.ph352:                                     ; preds = %vector.main.loop.iter.check350
  %i.go = and i64 %wide.trip.count293, 28
  %n.vec353 = and i64 %wide.trip.count293, 2147483616 ; 4 uses
  %broadcast.splatinsert354.a = insertelement <8 x float> poison, float %i.gm, i64 0
  %broadcast.splat355.a = shufflevector <8 x float> %broadcast.splatinsert354.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert356 = insertelement <8 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat357 = shufflevector <8 x i32> %broadcast.splatinsert356, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert358 = insertelement <8 x float> poison, float %i.ft, i64 0
  %broadcast.splat359 = shufflevector <8 x float> %broadcast.splatinsert358, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op399.a = sub <8 x i32> splat (i32 8), %broadcast.splat357
  %invariant.op401 = sub <8 x i32> splat (i32 16), %broadcast.splat357
  %invariant.op403 = sub <8 x i32> splat (i32 24), %broadcast.splat357
  %i.gp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat359
  %i.gq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat359
  %i.gr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat359
  %i.gs = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat359
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph352
  %index361 = phi i64 [ 0, %vector.ph352 ], [ %index.next366, %vector.body360 ] ; 2 uses
  %vec.ind362 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph352 ], [ %vec.ind.next367, %vector.body360 ] ; 5 uses
  %i.gt = sub <8 x i32> %vec.ind362, %broadcast.splat357
  %.reass400.a = add <8 x i32> %vec.ind362, %invariant.op399.a
  %.reass402 = add <8 x i32> %vec.ind362, %invariant.op401
  %.reass404 = add <8 x i32> %vec.ind362, %invariant.op403
  %i.gu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.gt to <8 x float>
  %i.gv = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass400.a to <8 x float>
  %i.gw = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass402 to <8 x float>
  %i.gx = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass404 to <8 x float>
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat355.a, %i.gu
  %i.gz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat355.a, %i.gv
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat355.a, %i.gw
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat355.a, %i.gx
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %i.gy, %i.gp
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %i.gz, %i.gq
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %i.ha, %i.gr
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %i.hb, %i.gs
  %i.hg = fadd reassoc nsz arcp contract afn <8 x float> %i.hc, splat (float 5.000000e-01) ; 3 uses
  %i.hh = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, splat (float 5.000000e-01) ; 3 uses
  %i.hi = fadd reassoc nsz arcp contract afn <8 x float> %i.he, splat (float 5.000000e-01) ; 3 uses
  %i.hj = fadd reassoc nsz arcp contract afn <8 x float> %i.hf, splat (float 5.000000e-01) ; 3 uses
  %i.hk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hg, zeroinitializer
  %i.hl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hh, zeroinitializer
  %i.hm = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hi, zeroinitializer
  %i.hn = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hj, zeroinitializer
  %i.ho = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hg, splat (float 1.000000e+00)
  %i.hp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hh, splat (float 1.000000e+00)
  %i.hq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hi, splat (float 1.000000e+00)
  %i.hr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hj, splat (float 1.000000e+00)
  %i.hs = select reassoc nsz arcp contract afn <8 x i1> %i.ho, <8 x float> splat (float 1.000000e+00), <8 x float> %i.hg
  %i.ht = select reassoc nsz arcp contract afn <8 x i1> %i.hp, <8 x float> splat (float 1.000000e+00), <8 x float> %i.hh
  %i.hu = select reassoc nsz arcp contract afn <8 x i1> %i.hq, <8 x float> splat (float 1.000000e+00), <8 x float> %i.hi
  %i.hv = select reassoc nsz arcp contract afn <8 x i1> %i.hr, <8 x float> splat (float 1.000000e+00), <8 x float> %i.hj
  %i.hw = select reassoc nsz arcp contract afn <8 x i1> %i.hk, <8 x float> zeroinitializer, <8 x float> %i.hs
  %i.hx = select reassoc nsz arcp contract afn <8 x i1> %i.hl, <8 x float> zeroinitializer, <8 x float> %i.ht
  %i.hy = select reassoc nsz arcp contract afn <8 x i1> %i.hm, <8 x float> zeroinitializer, <8 x float> %i.hu
  %i.hz = select reassoc nsz arcp contract afn <8 x i1> %i.hn, <8 x float> zeroinitializer, <8 x float> %i.hv
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index361 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  store <8 x float> %i.hw, ptr %i.ia, align 64, !tbaa !29
  store <8 x float> %i.hx, ptr %i.ib, align 32, !tbaa !29
  store <8 x float> %i.hy, ptr %i.ic, align 64, !tbaa !29
  store <8 x float> %i.hz, ptr %i.id, align 32, !tbaa !29
  %index.next366 = add nuw i64 %index361, 32      ; 2 uses
  %vec.ind.next367 = add <8 x i32> %vec.ind362, splat (i32 32)
  %i.ie = icmp eq i64 %index.next366, %n.vec353
  br i1 %i.ie, label %middle.block368, label %vector.body360, !llvm.loop !132

middle.block368:                                  ; preds = %vector.body360
  %cmp.n369 = icmp eq i64 %n.vec353, %wide.trip.count293
  br i1 %cmp.n369, label %._crit_edge241, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block368
  %min.epilog.iters.check374 = icmp eq i64 %i.go, 0
  br i1 %min.epilog.iters.check374, label %vec.epilog.scalar.ph372.preheader, label %vec.epilog.ph375, !prof !114

vec.epilog.ph375:                                 ; preds = %vector.main.loop.iter.check350, %vec.epilog.iter.check373
  %vec.epilog.resume.val370 = phi i64 [ %n.vec353, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check350 ] ; 2 uses
  %n.vec376 = and i64 %wide.trip.count293, 2147483644 ; 3 uses
  %broadcast.splatinsert377.a = insertelement <4 x float> poison, float %i.gm, i64 0
  %broadcast.splat378.a = shufflevector <4 x float> %broadcast.splatinsert377.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert379.a = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat380.a = shufflevector <4 x i32> %broadcast.splatinsert379.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert381 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat382 = shufflevector <4 x float> %broadcast.splatinsert381, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = trunc nuw nsw i64 %vec.epilog.resume.val370 to i32
  %broadcast.splatinsert383 = insertelement <4 x i32> poison, i32 %i.if, i64 0
  %broadcast.splat384 = shufflevector <4 x i32> %broadcast.splatinsert383, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction385 = or disjoint <4 x i32> %broadcast.splat384, <i32 0, i32 1, i32 2, i32 3>
  %i.ig = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat382
  br label %vec.epilog.vector.body386

vec.epilog.vector.body386:                        ; preds = %vec.epilog.vector.body386, %vec.epilog.ph375
  %index387 = phi i64 [ %vec.epilog.resume.val370, %vec.epilog.ph375 ], [ %index.next389, %vec.epilog.vector.body386 ] ; 2 uses
  %vec.ind388 = phi <4 x i32> [ %induction385, %vec.epilog.ph375 ], [ %vec.ind.next390, %vec.epilog.vector.body386 ] ; 2 uses
  %i.ih = sub <4 x i32> %vec.ind388, %broadcast.splat380.a
  %i.ii = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ih to <4 x float>
  %i.ij = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat378.a, %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn <4 x float> %i.ij, %i.ig
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ik, splat (float 5.000000e-01) ; 3 uses
  %i.im = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.il, zeroinitializer
  %i.in = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.il, splat (float 1.000000e+00)
  %i.io = select reassoc nsz arcp contract afn <4 x i1> %i.in, <4 x float> splat (float 1.000000e+00), <4 x float> %i.il
  %i.ip = select reassoc nsz arcp contract afn <4 x i1> %i.im, <4 x float> zeroinitializer, <4 x float> %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index387
  store <4 x float> %i.ip, ptr %i.iq, align 16, !tbaa !29
  %index.next389 = add nuw i64 %index387, 4       ; 2 uses
  %vec.ind.next390 = add <4 x i32> %vec.ind388, splat (i32 4)
  %i.ir = icmp eq i64 %index.next389, %n.vec376
  br i1 %i.ir, label %vec.epilog.middle.block391, label %vec.epilog.vector.body386, !llvm.loop !133

vec.epilog.middle.block391:                       ; preds = %vec.epilog.vector.body386
  %cmp.n392 = icmp eq i64 %n.vec376, %wide.trip.count293
  br i1 %cmp.n392, label %._crit_edge241, label %vec.epilog.scalar.ph372.preheader

vec.epilog.scalar.ph372.preheader:                ; preds = %iter.check371, %vec.epilog.iter.check373, %vec.epilog.middle.block391
  %indvars.iv289.ph = phi i64 [ 0, %iter.check371 ], [ %n.vec353, %vec.epilog.iter.check373 ], [ %n.vec376, %vec.epilog.middle.block391 ]
  %i.is = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ft
  br label %vec.epilog.scalar.ph372

vec.epilog.scalar.ph372:                          ; preds = %vec.epilog.scalar.ph372.preheader, %vec.epilog.scalar.ph372
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %vec.epilog.scalar.ph372 ], [ %indvars.iv289.ph, %vec.epilog.scalar.ph372.preheader ] ; 3 uses
  %i.it = trunc i64 %indvars.iv289 to i32
  %i.iu = sub i32 %i.it, %i.gb
  %i.iv = sitofp reassoc nsz arcp contract afn i32 %i.iu to float
  %i.iw = fmul reassoc nsz arcp contract afn float %i.gm, %i.iv
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.is
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, 5.000000e-01 ; 3 uses
  %i.iz = fcmp reassoc nsz arcp contract afn olt float %i.iy, 0.000000e+00
  %i.ja = fcmp reassoc nsz arcp contract afn ogt float %i.iy, 1.000000e+00
  %i.jb = select reassoc nsz arcp contract afn i1 %i.ja, float 1.000000e+00, float %i.iy
  %i.jc = select reassoc nsz arcp contract afn i1 %i.iz, float 0.000000e+00, float %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv289
  store float %i.jc, ptr %i.jd, align 4, !tbaa !29
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge241, label %vec.epilog.scalar.ph372, !llvm.loop !134

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.ca) #12
  br label %bb.t

._crit_edge241:                                   ; preds = %.lr.ph.split, %vec.epilog.scalar.ph372, %middle.block368, %vec.epilog.middle.block391, %.preheader232.._crit_edge241_crit_edge
  %.pre-phi = phi i64 [ %.pre317, %.preheader232.._crit_edge241_crit_edge ], [ %i.gn, %middle.block368 ], [ %i.gn, %vec.epilog.scalar.ph372 ], [ %i.gn, %vec.epilog.middle.block391 ], [ %i.gk, %.lr.ph.split ]
  %i.je = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %.pre-phi ; 2 uses
  br i1 %.not196237, label %._crit_edge263.split, label %.preheader231.lr.ph

.preheader231.lr.ph:                              ; preds = %._crit_edge241
  %14 = fneg reassoc nsz arcp contract afn float %sin
  %factor.op.fmul255 = fmul reassoc nsz arcp contract afn float %i.fq, %14
  %factor.op.fmul240 = fmul reassoc nsz arcp contract afn float %sin, %i.fj ; 2 uses
  %factor.op.fmul248 = fmul reassoc nsz arcp contract afn float %cos, %i.fj ; 2 uses
  %15 = fmul reassoc nsz arcp contract afn float %cos, %13
  %16 = fsub reassoc nsz arcp contract afn float %factor.op.fmul255, %15
  %factor.op.fmul249 = fmul reassoc nsz arcp contract afn float %16, %i.fj
  %i.jf = fmul reassoc nnan nsz arcp contract afn float %i.ft, -4.000000e+00
  br i1 %.not209235, label %._crit_edge263.split, label %.preheader231.preheader

.preheader231.preheader:                          ; preds = %.preheader231.lr.ph
  %i.jg = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.br, <2 x i32> zeroinitializer)
  %i.jh = add nuw nsw <2 x i32> %i.jg, splat (i32 1) ; 2 uses
  %i.ji = extractelement <2 x i32> %i.jh, i64 1
  %wide.trip.count305 = zext nneg i32 %i.ji to i64
  %i.jj = extractelement <2 x i32> %i.jh, i64 0
  %wide.trip.count299 = zext nneg i32 %i.jj to i64
  br label %.preheader231

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv283 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next284, %.lr.ph.split ] ; 3 uses
  %i.jk = trunc i64 %indvars.iv283 to i32
  %i.jl = sub i32 %i.jk, %i.gb
  %i.jm = sitofp reassoc nsz arcp contract afn i32 %i.jl to float
  %i.jn = fmul reassoc nsz arcp contract afn float %i.fj, %i.jm
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, %i.gl
  %i.jp = call reassoc nsz arcp contract afn float @erff(float noundef %i.jo) #14
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, 5.000000e-01
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, 5.000000e-01 ; 3 uses
  %i.js = fcmp reassoc nsz arcp contract afn olt float %i.jr, 0.000000e+00
  %i.jt = fcmp reassoc nsz arcp contract afn ogt float %i.jr, 1.000000e+00
  %i.ju = select reassoc nsz arcp contract afn i1 %i.jt, float 1.000000e+00, float %i.jr
  %i.jv = select reassoc nsz arcp contract afn i1 %i.js, float 0.000000e+00, float %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv283
  store float %i.jv, ptr %i.jw, align 4, !tbaa !29
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge241, label %.lr.ph.split

.preheader231:                                    ; preds = %.preheader231.preheader, %._crit_edge257
  %indvars.iv301 = phi i64 [ 0, %.preheader231.preheader ], [ %indvars.iv.next302, %._crit_edge257 ] ; 2 uses
  %i.jx = mul nsw i64 %indvars.iv301, %i.bw
  br label %bb.m

._crit_edge263.split:                             ; preds = %._crit_edge257, %.preheader231.lr.ph, %._crit_edge241
  call void @free(ptr noundef %i.gg) #12
  %i.jy = sext i32 %i.bl to i64
  %i.jz = sext i32 %i.bi to i64
  %i.ka = shl nsw i64 %i.jy, 2
  %i.kb = mul i64 %i.ka, %i.jz
  %i.kc = call ptr @dt_alloc_aligned(i64 noundef %i.kb) #12 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kc, i64 64) ]
  store ptr %i.kc, ptr %3, align 8, !tbaa !135
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.q, label %.preheader

.preheader:                                       ; preds = %._crit_edge263.split
  %i.ke = icmp sgt i32 %i.bi, 0
  %i.kf = icmp sgt i32 %i.bl, 0
  %or.cond274 = and i1 %i.ke, %i.kf
  br i1 %or.cond274, label %.lr.ph266.preheader, label %._crit_edge273.split

.lr.ph266.preheader:                              ; preds = %.preheader
  %i.kg = zext nneg i32 %i.bl to i64              ; 2 uses
  %wide.trip.count315 = zext nneg i32 %i.bi to i64
  br label %.lr.ph266

._crit_edge257:                                   ; preds = %bb.p
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge263.split, label %.preheader231

bb.m:                                             ; preds = %.preheader231, %bb.p
  %indvars.iv295 = phi i64 [ 0, %.preheader231 ], [ %indvars.iv.next296, %bb.p ] ; 2 uses
  %i.kh = add nsw i64 %indvars.iv295, %i.jx
  %.idx327 = shl nsw i64 %i.kh, 3
  %i.ki = getelementptr inbounds i8, ptr %i.ca, i64 %.idx327 ; 3 uses
  %i.kj = load float, ptr %i.ki, align 8, !tbaa !29 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.ki, i64 4
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !29 ; 2 uses
  %reass.mul224.reass.a = fmul reassoc nsz arcp contract afn float %i.kj, %factor.op.fmul248
  %.reass241 = fmul reassoc nsz arcp contract afn float %i.kl, %factor.op.fmul240
  %17 = fadd reassoc nsz arcp contract afn float %factor.op.fmul249, %reass.mul224.reass.a
  %i.km = fadd reassoc nsz arcp contract afn float %17, %.reass241 ; 2 uses
  %reass.add = fsub reassoc nsz arcp contract afn float %i.fq, %i.kl
  %reass.mul.reass = fmul reassoc nsz arcp contract afn float %reass.add, %factor.op.fmul248
  %reass.add223 = fsub reassoc nsz arcp contract afn float %i.kj, %13
  %reass.mul228.reass = fmul reassoc nsz arcp contract afn float %reass.add223, %factor.op.fmul240
  %i.kn = fadd reassoc nsz arcp contract afn float %reass.mul228.reass, %reass.mul.reass
  %i.ko = fmul reassoc nsz arcp contract afn float %i.km, %i.km
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.fv
  %i.kq = fsub reassoc nsz arcp contract afn float %i.kn, %i.kp ; 3 uses
  %i.kr = fcmp reassoc nsz arcp contract afn ugt float %i.kq, %i.jf
  br i1 %i.kr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ks = fcmp reassoc nsz arcp contract afn ult float %i.kq, %i.fy
  br i1 %i.ks, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.kt = fmul reassoc nsz arcp contract afn float %i.kq, %i.fi ; 3 uses
  %i.ku = fptosi float %i.kt to i32               ; 2 uses
  %i.kv = fadd reassoc nsz arcp contract afn float %i.kt, 1.000000e+00
  %i.kw = fptosi float %i.kv to i32
  %i.kx = sitofp reassoc nsz arcp contract afn i32 %i.ku to float
  %i.ky = fsub reassoc nsz arcp contract afn float %i.kt, %i.kx
  %i.kz = sext i32 %i.kw to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !29
  %i.lc = sext i32 %i.ku to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.lc
  %i.le = load float, ptr %i.ld, align 4, !tbaa !29 ; 2 uses
  %i.lf = fsub reassoc nsz arcp contract afn float %i.lb, %i.le
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.ky
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, %i.le
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.li = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.m ], [ %i.lh, %bb.o ], [ 1.000000e+00, %bb.n ]
  store float %i.li, ptr %i.ki, align 8, !tbaa !29
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge257, label %bb.m

bb.q:                                             ; preds = %._crit_edge263.split
  call void @free(ptr noundef nonnull %i.ca) #12
  br label %bb.t

._crit_edge273.split:                             ; preds = %._crit_edge267, %.preheader
  call void @free(ptr noundef nonnull %i.ca) #12
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.lk = and i32 %i.lj, 4112
  %or.cond212.not = icmp eq i32 %i.lk, 4112
  br i1 %or.cond212.not, label %bb.s, label %bb.t

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %._crit_edge267
  %indvars.iv312 = phi i64 [ 0, %.lr.ph266.preheader ], [ %indvars.iv.next313, %._crit_edge267 ] ; 3 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv312 to i32 ; 2 uses
  %i.lm = and i32 %i.ll, 7                        ; 2 uses
  %i.ln = lshr i32 %i.ll, 3
  %i.lo = sub nuw nsw i32 8, %i.lm
  %i.lp = mul nuw nsw i32 %i.ln, %i.bt
  %i.lq = uitofp nneg i32 %i.lo to float
  %i.lr = uitofp nneg i32 %i.lm to float
  %factor.op.fmul268 = fmul reassoc nnan nsz arcp contract afn float %i.lq, 1.562500e-02
  %factor.op.fmul270 = fmul reassoc nnan nsz arcp contract afn float %i.lr, 1.562500e-02
  %i.ls = mul nuw nsw i64 %indvars.iv312, %i.kg
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ls
  br label %bb.r

._crit_edge267:                                   ; preds = %bb.r
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %._crit_edge273.split, label %.lr.ph266

bb.r:                                             ; preds = %.lr.ph266, %bb.r
  %indvars.iv307 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next308, %bb.r ] ; 3 uses
  %i.lt = trunc nuw nsw i64 %indvars.iv307 to i32 ; 2 uses
  %i.lu = and i32 %i.lt, 7                        ; 2 uses
  %i.lv = lshr i32 %i.lt, 3
  %i.lw = sub nuw nsw i32 8, %i.lu
  %i.lx = add nuw nsw i32 %i.lv, %i.lp
  %i.ly = zext nneg i32 %i.lx to i64              ; 2 uses
  %.idx = shl nuw nsw i64 %i.ly, 3
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx ; 2 uses
  %i.ma = load float, ptr %i.lz, align 8, !tbaa !29
  %i.mb = uitofp nneg i32 %i.lw to float          ; 2 uses
  %i.mc = fmul reassoc nsz arcp contract afn float %i.ma, %i.mb
  %i.md = getelementptr i8, ptr %i.lz, i64 8
  %i.me = load float, ptr %i.md, align 8, !tbaa !29
  %i.mf = uitofp nneg i32 %i.lu to float          ; 2 uses
  %i.mg = fmul reassoc nsz arcp contract afn float %i.me, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, %i.mc
  %.reass269 = fmul reassoc nsz arcp contract afn float %i.mh, %factor.op.fmul268
  %i.mi = add nuw nsw i64 %i.ly, %i.bw
  %.idx206 = shl nuw nsw i64 %i.mi, 3
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx206 ; 2 uses
  %i.mk = load float, ptr %i.mj, align 8, !tbaa !29
  %i.ml = fmul reassoc nsz arcp contract afn float %i.mk, %i.mb
  %i.mm = getelementptr i8, ptr %i.mj, i64 8
  %i.mn = load float, ptr %i.mm, align 8, !tbaa !29
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, %i.mf
  %reass.add229 = fadd reassoc nsz arcp contract afn float %i.mo, %i.ml
  %reass.mul230.reass = fmul reassoc nsz arcp contract afn float %reass.add229, %factor.op.fmul270
  %i.mp = fadd reassoc nsz arcp contract afn float %reass.mul230.reass, %.reass269
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv307
  store float %i.mp, ptr %gep, align 4, !tbaa !29
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %i.kg
  br i1 %exitcond311.not, label %._crit_edge267, label %bb.r

bb.s:                                             ; preds = %._crit_edge273.split
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.mr = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.ms = load i64, ptr %8, align 8, !tbaa !85
  %i.mt = add nsw i64 %i.ms, -1290608000
  %i.mu = sitofp reassoc nsz arcp contract afn i64 %i.mt to double
  %i.mv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !87
  %i.mx = sitofp reassoc nsz arcp contract afn i64 %i.mw to double
  %i.my = fmul reassoc nnan nsz arcp contract afn double %i.mx, f0x3EB0C6F7A0B5ED8D
  %18 = fadd reassoc nsz arcp contract afn double %i.my, %i.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %19 = fsub reassoc nsz arcp contract afn double %18, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.mq, double noundef %19) #12
  br label %bb.t

bb.t:                                             ; preds = %_gradient_get_area.exit.thread, %bb.h, %bb.e, %bb.q, %bb.s, %._crit_edge273.split, %bb.l
  %.3 = phi i32 [ 0, %_gradient_get_area.exit.thread ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.q ], [ 1, %bb.s ], [ 1, %._crit_edge273.split ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_get_mask_roi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.c = load i64, ptr %8, align 8, !tbaa !85
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !21
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !136  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !137  ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !138    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !140 ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v ; 4 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, f0x40555556
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0x3F2AAAAB ; 3 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 4.000000e+00
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.y, 1.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = fptosi float %i.y to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %dt_get_debug_wtime.exit
  %i.ac = phi i32 [ 4, %dt_get_debug_wtime.exit ], [ %i.ab, %bb.d ], [ 1, %bb.c ] ; 16 uses
  %i.ad = add i32 %i.o, -1
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = sdiv i32 %i.ae, %i.ac                   ; 6 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ah = add i32 %i.q, -1
  %i.ai = add i32 %i.ah, %i.ac
  %i.aj = sdiv i32 %i.ai, %i.ac                   ; 4 uses
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  %i.al = sext i32 %i.ag to i64                   ; 6 uses
  %i.am = sext i32 %i.ak to i64                   ; 2 uses
  %i.an = shl nsw i64 %i.al, 3
  %i.ao = mul i64 %i.an, %i.am
  %i.ap = tail call ptr @dt_alloc_aligned(i64 noundef %i.ao) #12 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.s, label %.preheader229

.preheader229:                                    ; preds = %bb.e
  %i.ar = or i32 %i.aj, %i.af
  %or.cond.not267 = icmp sgt i32 %i.ar, -1
  br i1 %or.cond.not267, label %.preheader228.preheader, label %._crit_edge234.split

.preheader228.preheader:                          ; preds = %.preheader229
  %smax = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.as = add nuw i32 %smax, 1
  %smax273 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.at = add nuw i32 %smax273, 1
  %wide.trip.count274 = zext i32 %i.at to i64
  %wide.trip.count = zext i32 %i.as to i64        ; 6 uses
  %min.iters.check = icmp slt i32 %i.af, 3
  %min.iters.check318 = icmp slt i32 %i.af, 31
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %broadcast.splatinsert319.a = insertelement <8 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat320.a = shufflevector <8 x i32> %broadcast.splatinsert319.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert321 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat322 = shufflevector <8 x i32> %broadcast.splatinsert321, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert323 = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat324 = shufflevector <8 x float> %broadcast.splatinsert323, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec328 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert331.a = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat332.a = shufflevector <4 x i32> %broadcast.splatinsert331.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert333.a = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat334.a = shufflevector <4 x i32> %broadcast.splatinsert333.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n344 = icmp eq i64 %n.vec328, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader228.preheader, %._crit_edge
  %indvars.iv270 = phi i64 [ 0, %.preheader228.preheader ], [ %indvars.iv.next271, %._crit_edge ] ; 3 uses
  %i.av = mul nsw i64 %indvars.iv270, %i.al       ; 6 uses
  %i.aw = trunc i64 %indvars.iv270 to i32
  %i.ax = mul i32 %i.ac, %i.aw
  %i.ay = add i32 %i.ax, %i.t
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to float
  %i.ba = fmul reassoc nsz arcp contract afn float %i.w, %i.az ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check318, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ba, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.bb = or disjoint i64 %index, 8
  %i.bc = or disjoint i64 %index, 16
  %i.bd = or disjoint i64 %index, 24
  %i.be = add nsw i64 %i.av, %index
  %i.bf = add nsw i64 %i.av, %i.bb
  %i.bg = add nsw i64 %i.av, %i.bc
  %i.bh = add nsw i64 %i.av, %i.bd
  %i.bi = mul <8 x i32> %broadcast.splat320.a, %vec.ind
  %i.bj = mul <8 x i32> %broadcast.splat320.a, %step.add
  %i.bk = mul <8 x i32> %broadcast.splat320.a, %step.add.2
  %i.bl = mul <8 x i32> %broadcast.splat320.a, %step.add.3
  %i.bm = add <8 x i32> %i.bi, %broadcast.splat322
  %i.bn = add <8 x i32> %i.bj, %broadcast.splat322
  %i.bo = add <8 x i32> %i.bk, %broadcast.splat322
  %i.bp = add <8 x i32> %i.bl, %broadcast.splat322
  %i.bq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bm to <8 x float>
  %i.br = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bn to <8 x float>
  %i.bs = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bo to <8 x float>
  %i.bt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat324, %i.bq
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat324, %i.br
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat324, %i.bs
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat324, %i.bt
  %i.by = shl nsw i64 %i.be, 3
  %i.bz = shl nsw i64 %i.bf, 3
  %i.ca = shl nsw i64 %i.bg, 3
  %i.cb = shl nsw i64 %i.bh, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cb
  %interleaved.vec = shufflevector <8 x float> %i.bu, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.cc, align 8, !tbaa !29
  %interleaved.vec325 = shufflevector <8 x float> %i.bv, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec325, ptr %i.cd, align 8, !tbaa !29
  %interleaved.vec326 = shufflevector <8 x float> %i.bw, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec326, ptr %i.ce, align 8, !tbaa !29
  %interleaved.vec327 = shufflevector <8 x float> %i.bx, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec327, ptr %i.cf, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert329 = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.ch = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert337 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat338 = shufflevector <4 x i32> %broadcast.splatinsert337, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat338, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index339 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next342, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind340 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next343, %vec.epilog.vector.body ] ; 2 uses
  %i.ci = add nsw i64 %i.av, %index339
  %i.cj = mul <4 x i32> %broadcast.splat332.a, %vec.ind340
  %i.ck = add <4 x i32> %i.cj, %broadcast.splat334.a
  %i.cl = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ck to <4 x float>
  %i.cm = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat336, %i.cl
  %i.cn = shl nsw i64 %i.ci, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cn
  %interleaved.vec341 = shufflevector <4 x float> %i.cm, <4 x float> %broadcast.splatinsert329, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec341, ptr %i.co, align 8, !tbaa !29
  %index.next342 = add nuw i64 %index339, 4       ; 2 uses
  %vec.ind.next343 = add <4 x i32> %vec.ind340, splat (i32 4)
  %i.cp = icmp eq i64 %index.next342, %n.vec328
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n344, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec328, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge234.split:                             ; preds = %._crit_edge, %.preheader229
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.cr = and i32 %i.cq, 4112
  %or.cond.not = icmp eq i32 %i.cr, 4112
  br i1 %or.cond.not, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count274
  br i1 %exitcond275.not, label %._crit_edge234.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cs = add nsw i64 %i.av, %indvars.iv
  %i.ct = trunc i64 %indvars.iv to i32
  %i.cu = mul i32 %i.ac, %i.ct
  %i.cv = add i32 %i.cu, %i.r
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.cv to float
  %i.cx = fmul reassoc nsz arcp contract afn float %i.w, %i.cw
  %.idx213 = shl nsw i64 %i.cs, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx213 ; 2 uses
  store float %i.cx, ptr %i.cy, align 8, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.ba, ptr %i.cz, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !143

bb.f:                                             ; preds = %._crit_edge234.split
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.db = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #12 ; 0 uses
  %i.dc = load i64, ptr %7, align 8, !tbaa !85
  %i.dd = add nsw i64 %i.dc, -1290608000
  %i.de = sitofp reassoc nsz arcp contract afn i64 %i.dd to double
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !87
  %i.dh = sitofp reassoc nsz arcp contract afn i64 %i.dg to double
  %i.di = fmul reassoc nnan nsz arcp contract afn double %i.dh, f0x3EB0C6F7A0B5ED8D
  %i.dj = fadd reassoc nsz arcp contract afn double %i.di, %i.de ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.dk = fsub reassoc nsz arcp contract afn double %i.dj, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.da, double noundef %i.dk) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge234.split
  %.0 = phi nsz double [ %i.k, %._crit_edge234.split ], [ %i.dj, %bb.f ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !101
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dq = load i32, ptr %i.dp, align 16, !tbaa !110
  %i.dr = sitofp reassoc nsz arcp contract afn i32 %i.dq to double
  %i.ds = mul nsw i64 %i.am, %i.al
  %i.dt = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dm, ptr noundef %i.do, double noundef %i.dr, i32 noundef 3, ptr noundef nonnull %i.ap, i64 noundef %i.ds) #12
  %.not197 = icmp eq i32 %i.dt, 0
  br i1 %.not197, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ap) #12
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.dv = and i32 %i.du, 4112
  %or.cond208.not = icmp eq i32 %i.dv, 4112
  br i1 %or.cond208.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.dx = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #12 ; 0 uses
  %i.dy = load i64, ptr %6, align 8, !tbaa !85
  %i.dz = add nsw i64 %i.dy, -1290608000
  %i.ea = sitofp reassoc nsz arcp contract afn i64 %i.dz to double
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !87
  %i.ed = sitofp reassoc nsz arcp contract afn i64 %i.ec to double
  %i.ee = fmul reassoc nnan nsz arcp contract afn double %i.ed, f0x3EB0C6F7A0B5ED8D
  %i.ef = fadd reassoc nsz arcp contract afn double %i.ee, %i.ea ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.eg = fsub reassoc nsz arcp contract afn double %i.ef, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.dw, double noundef %i.eg) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1212 = phi nsz double [ %.0, %bb.i ], [ %i.ef, %bb.j ]
  %i.eh = load ptr, ptr %i.dn, align 8, !tbaa !88 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 144
  %i.ej = load i32, ptr %i.ei, align 16, !tbaa !117
  %i.ek = sitofp reassoc nsz arcp contract afn i32 %i.ej to float ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 148
  %i.em = load i32, ptr %i.el, align 4, !tbaa !130
  %i.en = sitofp reassoc nsz arcp contract afn i32 %i.em to float ; 2 uses
  %i.eo = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ek, float noundef %i.en) #14 ; 3 uses
  %i.ep = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eo ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.er = load float, ptr %i.eq, align 4, !tbaa !31
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.es) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.et = load float, ptr %i.m, align 4, !tbaa !29
  %9 = fmul reassoc nsz arcp contract afn float %i.et, %i.ek ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !29
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.en ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !30
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ey, float 1.000000e-03) ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !131
  %i.fe = fmul reassoc nnan nsz arcp contract afn float %i.ez, 4.000000e+00 ; 2 uses
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, %i.eo
  %i.fg = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ff)
  %i.fh = fptosi float %i.fg to i32               ; 9 uses
  %i.fi = shl nsw i32 %i.fh, 1
  %i.fj = add nsw i32 %i.fi, 2                    ; 5 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 2
  %i.fm = tail call ptr @dt_alloc_aligned(i64 noundef %i.fl) #12 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.l, label %.preheader227

.preheader227:                                    ; preds = %bb.k
  %i.fo = icmp sgt i32 %i.fh, -1
  br i1 %i.fo, label %.lr.ph, label %.preheader227.._crit_edge236_crit_edge

.preheader227.._crit_edge236_crit_edge:           ; preds = %.preheader227
  %.pre = sext i32 %i.fh to i64
  br label %._crit_edge236

.lr.ph:                                           ; preds = %.preheader227
  %i.fp = icmp eq i32 %i.fd, 1
  br i1 %i.fp, label %iter.check367, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.fq = zext nneg i32 %i.fh to i64
  %wide.trip.count280 = zext nneg i32 %i.fj to i64
  %i.fr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ez
  br label %.lr.ph.split

iter.check367:                                    ; preds = %.lr.ph
  %i.fs = fmul reassoc nsz arcp contract afn float %i.ep, 5.000000e-01 ; 3 uses
  %i.ft = zext nneg i32 %i.fh to i64              ; 3 uses
  %wide.trip.count286 = zext nneg i32 %i.fj to i64 ; 6 uses
  %min.iters.check345 = icmp ult i32 %i.fj, 4
  br i1 %min.iters.check345, label %vec.epilog.scalar.ph368.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check367
  %min.iters.check347 = icmp ult i32 %i.fj, 32
  br i1 %min.iters.check347, label %vec.epilog.ph371, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.fu = and i64 %wide.trip.count286, 28
  %n.vec349 = and i64 %wide.trip.count286, 2147483616 ; 4 uses
  %broadcast.splatinsert350.a = insertelement <8 x float> poison, float %i.fs, i64 0
  %broadcast.splat351.a = shufflevector <8 x float> %broadcast.splatinsert350.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert352 = insertelement <8 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat353 = shufflevector <8 x i32> %broadcast.splatinsert352, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert354 = insertelement <8 x float> poison, float %i.ez, i64 0
  %broadcast.splat355 = shufflevector <8 x float> %broadcast.splatinsert354, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = sub <8 x i32> splat (i32 8), %broadcast.splat353
  %invariant.op391 = sub <8 x i32> splat (i32 16), %broadcast.splat353
  %invariant.op393 = sub <8 x i32> splat (i32 24), %broadcast.splat353
  %i.fv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  %i.fw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  %i.fx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  %i.fy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph348
  %index357 = phi i64 [ 0, %vector.ph348 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %vec.ind358 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph348 ], [ %vec.ind.next363, %vector.body356 ] ; 5 uses
  %i.fz = sub <8 x i32> %vec.ind358, %broadcast.splat353
  %.reass = add <8 x i32> %vec.ind358, %invariant.op
  %.reass392 = add <8 x i32> %vec.ind358, %invariant.op391
  %.reass394 = add <8 x i32> %vec.ind358, %invariant.op393
  %i.ga = sitofp reassoc nsz arcp contract afn <8 x i32> %i.fz to <8 x float>
  %i.gb = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass to <8 x float>
  %i.gc = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass392 to <8 x float>
  %i.gd = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass394 to <8 x float>
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.ga
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.gb
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.gc
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.gd
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, %i.fv
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gf, %i.fw
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, %i.fx
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, %i.fy
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float 5.000000e-01) ; 3 uses
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %i.gj, splat (float 5.000000e-01) ; 3 uses
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gk, splat (float 5.000000e-01) ; 3 uses
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, splat (float 5.000000e-01) ; 3 uses
  %i.gq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gm, zeroinitializer
  %i.gr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gn, zeroinitializer
  %i.gs = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.go, zeroinitializer
  %i.gt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gp, zeroinitializer
  %i.gu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gm, splat (float 1.000000e+00)
  %i.gv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gn, splat (float 1.000000e+00)
  %i.gw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.go, splat (float 1.000000e+00)
  %i.gx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gp, splat (float 1.000000e+00)
  %i.gy = select reassoc nsz arcp contract afn <8 x i1> %i.gu, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gm
  %i.gz = select reassoc nsz arcp contract afn <8 x i1> %i.gv, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gn
  %i.ha = select reassoc nsz arcp contract afn <8 x i1> %i.gw, <8 x float> splat (float 1.000000e+00), <8 x float> %i.go
  %i.hb = select reassoc nsz arcp contract afn <8 x i1> %i.gx, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gp
  %i.hc = select reassoc nsz arcp contract afn <8 x i1> %i.gq, <8 x float> zeroinitializer, <8 x float> %i.gy
  %i.hd = select reassoc nsz arcp contract afn <8 x i1> %i.gr, <8 x float> zeroinitializer, <8 x float> %i.gz
  %i.he = select reassoc nsz arcp contract afn <8 x i1> %i.gs, <8 x float> zeroinitializer, <8 x float> %i.ha
  %i.hf = select reassoc nsz arcp contract afn <8 x i1> %i.gt, <8 x float> zeroinitializer, <8 x float> %i.hb
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index357 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  store <8 x float> %i.hc, ptr %i.hg, align 64, !tbaa !29
  store <8 x float> %i.hd, ptr %i.hh, align 32, !tbaa !29
  store <8 x float> %i.he, ptr %i.hi, align 64, !tbaa !29
  store <8 x float> %i.hf, ptr %i.hj, align 32, !tbaa !29
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %vec.ind.next363 = add <8 x i32> %vec.ind358, splat (i32 32)
  %i.hk = icmp eq i64 %index.next362, %n.vec349
  br i1 %i.hk, label %middle.block364, label %vector.body356, !llvm.loop !144

middle.block364:                                  ; preds = %vector.body356
  %cmp.n365 = icmp eq i64 %n.vec349, %wide.trip.count286
  br i1 %cmp.n365, label %._crit_edge236, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block364
  %min.epilog.iters.check370 = icmp eq i64 %i.fu, 0
  br i1 %min.epilog.iters.check370, label %vec.epilog.scalar.ph368.preheader, label %vec.epilog.ph371, !prof !114

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check369
  %vec.epilog.resume.val366 = phi i64 [ %n.vec349, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check346 ] ; 2 uses
  %n.vec372 = and i64 %wide.trip.count286, 2147483644 ; 3 uses
  %broadcast.splatinsert373.a = insertelement <4 x float> poison, float %i.fs, i64 0
  %broadcast.splat374.a = shufflevector <4 x float> %broadcast.splatinsert373.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert375.a = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat376.a = shufflevector <4 x i32> %broadcast.splatinsert375.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert377 = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat378 = shufflevector <4 x float> %broadcast.splatinsert377, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = trunc nuw nsw i64 %vec.epilog.resume.val366 to i32
  %broadcast.splatinsert379 = insertelement <4 x i32> poison, i32 %i.hl, i64 0
  %broadcast.splat380 = shufflevector <4 x i32> %broadcast.splatinsert379, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction381 = or disjoint <4 x i32> %broadcast.splat380, <i32 0, i32 1, i32 2, i32 3>
  %i.hm = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat378
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph371
  %index383 = phi i64 [ %vec.epilog.resume.val366, %vec.epilog.ph371 ], [ %index.next385, %vec.epilog.vector.body382 ] ; 2 uses
  %vec.ind384 = phi <4 x i32> [ %induction381, %vec.epilog.ph371 ], [ %vec.ind.next386, %vec.epilog.vector.body382 ] ; 2 uses
  %i.hn = sub <4 x i32> %vec.ind384, %broadcast.splat376.a
  %i.ho = sitofp reassoc nsz arcp contract afn <4 x i32> %i.hn to <4 x float>
  %i.hp = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat374.a, %i.ho
  %i.hq = fmul reassoc nsz arcp contract afn <4 x float> %i.hp, %i.hm
  %i.hr = fadd reassoc nsz arcp contract afn <4 x float> %i.hq, splat (float 5.000000e-01) ; 3 uses
  %i.hs = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hr, zeroinitializer
  %i.ht = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hr, splat (float 1.000000e+00)
  %i.hu = select reassoc nsz arcp contract afn <4 x i1> %i.ht, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hr
  %i.hv = select reassoc nsz arcp contract afn <4 x i1> %i.hs, <4 x float> zeroinitializer, <4 x float> %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index383
  store <4 x float> %i.hv, ptr %i.hw, align 16, !tbaa !29
  %index.next385 = add nuw i64 %index383, 4       ; 2 uses
  %vec.ind.next386 = add <4 x i32> %vec.ind384, splat (i32 4)
  %i.hx = icmp eq i64 %index.next385, %n.vec372
  br i1 %i.hx, label %vec.epilog.middle.block387, label %vec.epilog.vector.body382, !llvm.loop !145

vec.epilog.middle.block387:                       ; preds = %vec.epilog.vector.body382
  %cmp.n388 = icmp eq i64 %n.vec372, %wide.trip.count286
  br i1 %cmp.n388, label %._crit_edge236, label %vec.epilog.scalar.ph368.preheader

vec.epilog.scalar.ph368.preheader:                ; preds = %iter.check367, %vec.epilog.iter.check369, %vec.epilog.middle.block387
  %indvars.iv282.ph = phi i64 [ 0, %iter.check367 ], [ %n.vec349, %vec.epilog.iter.check369 ], [ %n.vec372, %vec.epilog.middle.block387 ]
  %i.hy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ez
  br label %vec.epilog.scalar.ph368

vec.epilog.scalar.ph368:                          ; preds = %vec.epilog.scalar.ph368.preheader, %vec.epilog.scalar.ph368
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %vec.epilog.scalar.ph368 ], [ %indvars.iv282.ph, %vec.epilog.scalar.ph368.preheader ] ; 3 uses
  %i.hz = trunc i64 %indvars.iv282 to i32
  %i.ia = sub i32 %i.hz, %i.fh
  %i.ib = sitofp reassoc nsz arcp contract afn i32 %i.ia to float
  %i.ic = fmul reassoc nsz arcp contract afn float %i.fs, %i.ib
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, %i.hy
  %i.ie = fadd reassoc nsz arcp contract afn float %i.id, 5.000000e-01 ; 3 uses
  %i.if = fcmp reassoc nsz arcp contract afn olt float %i.ie, 0.000000e+00
  %i.ig = fcmp reassoc nsz arcp contract afn ogt float %i.ie, 1.000000e+00
  %i.ih = select reassoc nsz arcp contract afn i1 %i.ig, float 1.000000e+00, float %i.ie
  %i.ii = select reassoc nsz arcp contract afn i1 %i.if, float 0.000000e+00, float %i.ih
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv282
  store float %i.ii, ptr %i.ij, align 4, !tbaa !29
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge236, label %vec.epilog.scalar.ph368, !llvm.loop !146

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ap) #12
  br label %bb.s

._crit_edge236:                                   ; preds = %.lr.ph.split, %vec.epilog.scalar.ph368, %middle.block364, %vec.epilog.middle.block387, %.preheader227.._crit_edge236_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader227.._crit_edge236_crit_edge ], [ %i.ft, %middle.block364 ], [ %i.ft, %vec.epilog.scalar.ph368 ], [ %i.ft, %vec.epilog.middle.block387 ], [ %i.fq, %.lr.ph.split ]
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %.pre-phi ; 2 uses
  %.not200256 = icmp slt i32 %i.aj, 0
  br i1 %.not200256, label %._crit_edge258.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge236
  %10 = fneg reassoc nsz arcp contract afn float %sin
  %factor.op.fmul243 = fmul reassoc nsz arcp contract afn float %i.ew, %10
  %factor.op.fmul244 = fmul reassoc nsz arcp contract afn float %sin, %i.ep ; 2 uses
  %factor.op.fmul237 = fmul reassoc nsz arcp contract afn float %cos, %i.ep ; 2 uses
  %.not206249 = icmp slt i32 %i.af, 0
  %11 = fmul reassoc nsz arcp contract afn float %cos, %9
  %12 = fsub reassoc nsz arcp contract afn float %factor.op.fmul243, %11
  %.neg216 = fmul reassoc nsz arcp contract afn float %12, %i.ep
  %i.il = fmul reassoc nnan nsz arcp contract afn float %i.ez, -4.000000e+00
  br i1 %.not206249, label %._crit_edge258.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count296 = zext i32 %i.ak to i64
  %wide.trip.count291 = zext nneg i32 %i.ag to i64
  br label %.preheader

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv276 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next277, %.lr.ph.split ] ; 3 uses
  %i.im = trunc i64 %indvars.iv276 to i32
  %i.in = sub i32 %i.im, %i.fh
  %i.io = sitofp reassoc nsz arcp contract afn i32 %i.in to float
  %i.ip = fmul reassoc nsz arcp contract afn float %i.ep, %i.io
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %i.fr
  %i.ir = tail call reassoc nsz arcp contract afn float @erff(float noundef %i.iq) #14
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, 5.000000e-01
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, 5.000000e-01 ; 3 uses
  %i.iu = fcmp reassoc nsz arcp contract afn olt float %i.it, 0.000000e+00
  %i.iv = fcmp reassoc nsz arcp contract afn ogt float %i.it, 1.000000e+00
  %i.iw = select reassoc nsz arcp contract afn i1 %i.iv, float 1.000000e+00, float %i.it
  %i.ix = select reassoc nsz arcp contract afn i1 %i.iu, float 0.000000e+00, float %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv276
  store float %i.ix, ptr %i.iy, align 4, !tbaa !29
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count280
  br i1 %exitcond281.not, label %._crit_edge236, label %.lr.ph.split

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge252
  %indvars.iv293 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next294, %._crit_edge252 ] ; 2 uses
  %i.iz = mul nuw nsw i64 %indvars.iv293, %i.al
  br label %bb.m

._crit_edge258.split:                             ; preds = %._crit_edge252, %.preheader.lr.ph, %._crit_edge236
  tail call void @free(ptr noundef %i.fm) #12
  %i.ja = icmp sgt i32 %i.q, 0
  br i1 %i.ja, label %.lr.ph265, label %._crit_edge266.split

.lr.ph265:                                        ; preds = %._crit_edge258.split
  %i.jb = icmp sgt i32 %i.o, 0
  %i.jc = sext i32 %i.o to i64
  br i1 %i.jb, label %.lr.ph261.preheader, label %._crit_edge266.split

.lr.ph261.preheader:                              ; preds = %.lr.ph265
  %i.jd = mul nsw i32 %i.ac, %i.ac
  %i.je = uitofp nneg i32 %i.jd to float
  %wide.trip.count306 = zext nneg i32 %i.q to i64
  %wide.trip.count301 = zext nneg i32 %i.o to i64
  %i.jf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.je
  br label %.lr.ph261

._crit_edge252:                                   ; preds = %bb.p
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %._crit_edge258.split, label %.preheader

bb.m:                                             ; preds = %.preheader, %bb.p
  %indvars.iv288 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next289, %bb.p ] ; 2 uses
  %i.jg = add nuw nsw i64 %i.iz, %indvars.iv288
  %.idx214 = shl nsw i64 %i.jg, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx214 ; 3 uses
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !29 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !29 ; 2 uses
  %reass.mul220.reass.a = fmul reassoc nsz arcp contract afn float %i.ji, %factor.op.fmul237
  %.reass236 = fmul reassoc nsz arcp contract afn float %i.jk, %factor.op.fmul244
  %13 = fadd reassoc nsz arcp contract afn float %.neg216, %reass.mul220.reass.a
  %i.jl = fadd reassoc nsz arcp contract afn float %13, %.reass236 ; 2 uses
  %reass.add = fsub reassoc nsz arcp contract afn float %i.ew, %i.jk
  %reass.mul.reass = fmul reassoc nsz arcp contract afn float %reass.add, %factor.op.fmul237
  %reass.add219 = fsub reassoc nsz arcp contract afn float %i.ji, %9
  %reass.mul224.reass = fmul reassoc nsz arcp contract afn float %reass.add219, %factor.op.fmul244
  %i.jm = fadd reassoc nsz arcp contract afn float %reass.mul224.reass, %reass.mul.reass
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jl, %i.jl
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, %i.fb
  %i.jp = fsub reassoc nsz arcp contract afn float %i.jm, %i.jo ; 3 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ugt float %i.jp, %i.il
  br i1 %i.jq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.jr = fcmp reassoc nsz arcp contract afn ult float %i.jp, %i.fe
  br i1 %i.jr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.js = fmul reassoc nsz arcp contract afn float %i.jp, %i.eo ; 3 uses
  %i.jt = fptosi float %i.js to i32               ; 2 uses
  %i.ju = fadd reassoc nsz arcp contract afn float %i.js, 1.000000e+00
  %i.jv = fptosi float %i.ju to i32
  %i.jw = sitofp reassoc nsz arcp contract afn i32 %i.jt to float
  %i.jx = fsub reassoc nsz arcp contract afn float %i.js, %i.jw
  %i.jy = sext i32 %i.jv to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !29
  %i.kb = sext i32 %i.jt to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !29 ; 2 uses
  %i.ke = fsub reassoc nsz arcp contract afn float %i.ka, %i.kd
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, %i.jx
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, %i.kd
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.kh = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.m ], [ %i.kg, %bb.o ], [ 1.000000e+00, %bb.n ]
  store float %i.kh, ptr %i.jh, align 8, !tbaa !29
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge252, label %bb.m

._crit_edge266.split:                             ; preds = %._crit_edge262, %.lr.ph265, %._crit_edge258.split
  tail call void @free(ptr noundef nonnull %i.ap) #12
  %i.ki = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.kj = and i32 %i.ki, 4112
  %or.cond209.not = icmp eq i32 %i.kj, 4112
  br i1 %or.cond209.not, label %bb.r, label %bb.s

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %._crit_edge262
  %indvars.iv303 = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next304, %._crit_edge262 ] ; 3 uses
  %i.kk = trunc nuw nsw i64 %indvars.iv303 to i32 ; 2 uses
  %i.kl = srem i32 %i.kk, %i.ac                   ; 2 uses
  %i.km = sdiv i32 %i.kk, %i.ac
  %i.kn = sub nsw i32 %i.ac, %i.kl
  %i.ko = sext i32 %i.km to i64
  %i.kp = mul nsw i64 %i.ko, %i.al
  %i.kq = sitofp reassoc nsz arcp contract afn i32 %i.kn to float
  %i.kr = uitofp nneg i32 %i.kl to float
  %i.ks = mul nuw nsw i64 %indvars.iv303, %i.jc
  %i.kt = getelementptr [4 x i8], ptr %4, i64 %i.ks
  br label %bb.q

._crit_edge262:                                   ; preds = %bb.q
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge266.split, label %.lr.ph261

bb.q:                                             ; preds = %.lr.ph261, %bb.q
  %indvars.iv298 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next299, %bb.q ] ; 3 uses
  %i.ku = trunc nuw nsw i64 %indvars.iv298 to i32 ; 2 uses
  %i.kv = srem i32 %i.ku, %i.ac                   ; 2 uses
  %i.kw = sdiv i32 %i.ku, %i.ac
  %i.kx = sub nsw i32 %i.ac, %i.kv
  %i.ky = sext i32 %i.kw to i64
  %i.kz = add nsw i64 %i.kp, %i.ky                ; 2 uses
  %.idx = shl nsw i64 %i.kz, 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.lb = load float, ptr %i.la, align 8, !tbaa !29
  %i.lc = sitofp reassoc nsz arcp contract afn i32 %i.kx to float ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lb, %i.lc
  %i.le = getelementptr i8, ptr %i.la, i64 8
  %i.lf = load float, ptr %i.le, align 8, !tbaa !29
  %i.lg = uitofp nneg i32 %i.kv to float          ; 2 uses
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lf, %i.lg
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, %i.ld
  %i.lj = fmul reassoc nsz arcp contract afn float %i.li, %i.kq
  %i.lk = add nsw i64 %i.kz, %i.al
  %.idx204 = shl i64 %i.lk, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx204 ; 2 uses
  %i.lm = load float, ptr %i.ll, align 8, !tbaa !29
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.lc
  %i.lo = getelementptr i8, ptr %i.ll, i64 8
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !29
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, %i.lg
  %reass.add225 = fadd reassoc nsz arcp contract afn float %i.lq, %i.ln
  %reass.mul226 = fmul reassoc nsz arcp contract afn float %reass.add225, %i.kr
  %i.lr = fadd reassoc nsz arcp contract afn float %reass.mul226, %i.lj
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lr, %i.jf
  %i.lt = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv298
  store float %i.ls, ptr %i.lt, align 4, !tbaa !29
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge262, label %bb.q

bb.r:                                             ; preds = %._crit_edge266.split
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.lv = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #12 ; 0 uses
  %i.lw = load i64, ptr %5, align 8, !tbaa !85
  %i.lx = add nsw i64 %i.lw, -1290608000
  %i.ly = sitofp reassoc nsz arcp contract afn i64 %i.lx to double
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !87
  %i.mb = sitofp reassoc nsz arcp contract afn i64 %i.ma to double
  %i.mc = fmul reassoc nnan nsz arcp contract afn double %i.mb, f0x3EB0C6F7A0B5ED8D
  %14 = fadd reassoc nsz arcp contract afn double %i.mc, %i.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %15 = fsub reassoc nsz arcp contract afn double %14, %.1212
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.lu, double noundef %15) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %._crit_edge266.split, %bb.e, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.l ], [ 1, %bb.r ], [ 1, %._crit_edge266.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_get_area(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.d, align 16, !tbaa !32
  %i.i = sitofp <2 x i32> %i.h to <2 x float>     ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  store float %i.j, ptr %i.e, align 8, !tbaa !29
  store <2 x float> %i.i, ptr %i.g, align 16, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.m = extractelement <2 x float> %i.i, i64 1
  store float %i.m, ptr %i.l, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.q = load i32, ptr %i.p, align 16, !tbaa !110
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.q to double
  %i.s = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.o, ptr noundef %i.c, double noundef %i.r, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 4) #12
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.t = load <2 x float>, ptr %i.a, align 16, !tbaa !29 ; 2 uses
  %i.u = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.t, <2 x float> splat (float f0x7F7FFFFF))
  %i.v = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.t, <2 x float> splat (float f0x00800000))
  %i.w = load <2 x float>, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %i.x = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.w, <2 x float> %i.u)
  %i.y = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.w, <2 x float> %i.v)
  %i.z = load <2 x float>, ptr %i.g, align 16, !tbaa !29 ; 2 uses
  %i.aa = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.z, <2 x float> %i.x) ; 3 uses
  %i.ab = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.z, <2 x float> %i.y)
  %i.ac = extractelement <2 x float> %i.aa, i64 0
  %i.ad = fptosi float %i.ac to i32
  store i32 %i.ad, ptr %5, align 4, !tbaa !32
  %i.ae = extractelement <2 x float> %i.aa, i64 1
  %i.af = fptosi float %i.ae to i32
  store i32 %i.af, ptr %6, align 4, !tbaa !32
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.aa
  %i.ah = fptosi <2 x float> %i.ag to <2 x i32>   ; 2 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 0
  store i32 %i.ai, ptr %3, align 4, !tbaa !32
  %i.aj = extractelement <2 x i32> %i.ah, i64 1
  store i32 %i.aj, ptr %4, align 4, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.033 = phi i32 [ 1, %.preheader.preheader ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_events_mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 %4, float noundef %5, ptr noundef %6, i32 %7, ptr noundef %8, i32 noundef %9) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [8 x float], align 16             ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca float, align 4                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %.not = icmp eq i32 %i.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 112
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !147
  %i.j = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.thread139, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.ak

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %6, align 8, !tbaa !21
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !149 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load float, ptr %i.p, align 8, !tbaa !166 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 0.000000e+00
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float 1.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !167  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = uitofp nneg i32 %i.u to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.y = load i32, ptr %i.x, align 16, !tbaa !168
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  br label %dt_masks_get_image_size.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 2760
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 156
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !167 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ai = load i32, ptr %i.ah, align 16, !tbaa !168
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.ak = uitofp nneg i32 %i.af to float
  %i.al = insertelement <2 x float> poison, float %i.s, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.aj, i64 1
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x float> %i.ao, %i.am
  br label %dt_masks_get_image_size.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !32
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.f, %bb.i, %bb.j
  %i.at = phi <2 x float> [ %i.ab, %bb.f ], [ %i.as, %bb.j ], [ %i.ap, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.av = load <2 x i32>, ptr %i.au, align 16, !tbaa !32
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ax = insertelement <2 x float> poison, float %1, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %2, i64 1
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.at, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !29
  %i.bd = fadd reassoc nsz arcp contract afn <2 x float> %i.bc, %i.az
  store <2 x float> %i.bd, ptr %i.a, align 8, !tbaa !29
  %i.be = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef 1) #12 ; 0 uses
  %i.bf = load float, ptr %i.a, align 8, !tbaa !29
  %i.bg = extractelement <2 x float> %i.aw, i64 0
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bg
  store float %i.bh, ptr %i.l, align 4, !tbaa !29
  %i.bi = load float, ptr %i.bb, align 4, !tbaa !29
  %i.bj = extractelement <2 x float> %i.aw, i64 1
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %i.bk, ptr %i.bl, align 4, !tbaa !29
  call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #12
  call void @dt_control_queue_redraw_center() #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !170
  %.not102 = icmp eq i32 %i.bn, 0
  br i1 %.not102, label %bb.s, label %bb.l

.thread139:                                       ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !170
  %.not102140 = icmp eq i32 %i.bp, 0
  br i1 %.not102140, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %.thread139, %bb.k
  %i.bq = load ptr, ptr %6, align 8, !tbaa !21
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !149 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 152
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !166 ; 2 uses
end_hunk_0
