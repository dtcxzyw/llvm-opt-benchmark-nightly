Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gradient?download=true
inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_get_mask:bb.a
  %reass.mul226.reass = fmul reassoc nsz arcp contract afn float %reass.add225, %factor.op.fmul249
  %i.kn = fadd reassoc nsz arcp contract afn float %reass.mul226.reass, %reass.mul224.reass ; 2 uses
  %reass.add = fsub reassoc nsz arcp contract afn float %i.fq, %i.km
  %reass.mul.reass = fmul reassoc nsz arcp contract afn float %reass.add, %factor.op.fmul248
  %reass.mul228.reass = fmul reassoc nsz arcp contract afn float %reass.add223, %factor.op.fmul249
  %i.ko = fadd reassoc nsz arcp contract afn float %reass.mul228.reass, %reass.mul.reass
  %i.kp = fmul reassoc nsz arcp contract afn float %i.kn, %i.kn
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %i.fv
  %i.kr = fsub reassoc nsz arcp contract afn float %i.ko, %i.kq ; 3 uses
  %i.ks = fcmp reassoc nsz arcp contract afn ugt float %i.kr, %i.jf
  br i1 %i.ks, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.kt = fcmp reassoc nsz arcp contract afn ult float %i.kr, %i.fy
  br i1 %i.kt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kr, %i.fi ; 3 uses
  %i.kv = fptosi float %i.ku to i32               ; 2 uses
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ku, 1.000000e+00
  %i.kx = fptosi float %i.kw to i32
  %i.ky = sitofp reassoc nsz arcp contract afn i32 %i.kv to float
  %i.kz = fsub reassoc nsz arcp contract afn float %i.ku, %i.ky
  %i.la = sext i32 %i.kx to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !29
  %i.ld = sext i32 %i.kv to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !29 ; 2 uses
  %i.lg = fsub reassoc nsz arcp contract afn float %i.lc, %i.lf
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, %i.kz
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, %i.lf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.lj = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.m ], [ %i.li, %bb.o ], [ 1.000000e+00, %bb.n ]
  store float %i.lj, ptr %i.kj, align 8, !tbaa !29
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge257, label %bb.m

bb.q:                                             ; preds = %._crit_edge263.split
  call void @free(ptr noundef nonnull %i.ca) #12
  br label %bb.t

._crit_edge273.split:                             ; preds = %._crit_edge267, %.preheader
  call void @free(ptr noundef nonnull %i.ca) #12
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %i.ll = and i32 %i.lk, 4112
  %or.cond212.not = icmp eq i32 %i.ll, 4112
  br i1 %or.cond212.not, label %bb.s, label %bb.t

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %._crit_edge267
  %indvars.iv312 = phi i64 [ 0, %.lr.ph266.preheader ], [ %indvars.iv.next313, %._crit_edge267 ] ; 3 uses
  %i.lm = trunc nuw nsw i64 %indvars.iv312 to i32 ; 2 uses
  %i.ln = and i32 %i.lm, 7                        ; 2 uses
  %i.lo = lshr i32 %i.lm, 3
  %i.lp = sub nuw nsw i32 8, %i.ln
  %i.lq = mul nuw nsw i32 %i.lo, %i.bt
  %i.lr = uitofp nneg i32 %i.lp to float
  %i.ls = uitofp nsz nneg i32 %i.ln to float
  %factor.op.fmul268 = fmul reassoc nnan nsz arcp contract afn float %i.lr, 1.562500e-02
  %factor.op.fmul270 = fmul reassoc nnan nsz arcp contract afn float %i.ls, 1.562500e-02
  %i.lt = mul nuw nsw i64 %indvars.iv312, %i.kh
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.lt
  br label %bb.r

._crit_edge267:                                   ; preds = %bb.r
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %._crit_edge273.split, label %.lr.ph266

bb.r:                                             ; preds = %.lr.ph266, %bb.r
  %indvars.iv307 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next308, %bb.r ] ; 3 uses
  %i.lu = trunc nuw nsw i64 %indvars.iv307 to i32 ; 2 uses
  %i.lv = and i32 %i.lu, 7                        ; 2 uses
  %i.lw = lshr i32 %i.lu, 3
  %i.lx = sub nuw nsw i32 8, %i.lv
  %i.ly = add nuw nsw i32 %i.lw, %i.lq
  %i.lz = zext nneg i32 %i.ly to i64              ; 2 uses
  %.idx = shl nuw nsw i64 %i.lz, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx ; 2 uses
  %i.mb = load float, ptr %i.ma, align 8, !tbaa !29
  %i.mc = uitofp nneg i32 %i.lx to float          ; 2 uses
  %i.md = fmul reassoc nsz arcp contract afn float %i.mb, %i.mc
  %i.me = getelementptr i8, ptr %i.ma, i64 8
  %i.mf = load float, ptr %i.me, align 8, !tbaa !29
  %i.mg = uitofp nsz nneg i32 %i.lv to float      ; 2 uses
  %i.mh = fmul reassoc nsz arcp contract afn float %i.mf, %i.mg
  %i.mi = fadd reassoc nsz arcp contract afn float %i.mh, %i.md
  %.reass269 = fmul reassoc nsz arcp contract afn float %i.mi, %factor.op.fmul268
  %i.mj = add nuw nsw i64 %i.lz, %i.bw
  %.idx206 = shl nuw nsw i64 %i.mj, 3
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx206 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 8, !tbaa !29
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.mc
  %i.mn = getelementptr i8, ptr %i.mk, i64 8
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !29
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.mg
  %reass.add229 = fadd reassoc nsz arcp contract afn float %i.mp, %i.mm
  %reass.mul230.reass = fmul reassoc nsz arcp contract afn float %reass.add229, %factor.op.fmul270
  %i.mq = fadd reassoc nsz arcp contract afn float %reass.mul230.reass, %.reass269
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv307
  store float %i.mq, ptr %gep, align 4, !tbaa !29
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %i.kh
  br i1 %exitcond311.not, label %._crit_edge267, label %bb.r

bb.s:                                             ; preds = %._crit_edge273.split
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ms = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.mt = load i64, ptr %8, align 8, !tbaa !86
  %i.mu = add nsw i64 %i.mt, -1290608000
  %i.mv = sitofp reassoc nsz arcp contract afn i64 %i.mu to double
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !87
  %i.my = sitofp reassoc nsz arcp contract afn i64 %i.mx to double
  %i.mz = fmul reassoc nnan nsz arcp contract afn double %i.my, f0x3EB0C6F7A0B5ED8D
  %i.na = fadd reassoc nsz arcp contract afn double %i.mz, %i.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.nb = fsub reassoc nsz arcp contract afn double %i.na, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.mr, double noundef %i.nb) #12
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
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.c = load i64, ptr %8, align 8, !tbaa !86
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %3, align 4, !tbaa !177    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !178
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !179 ; 2 uses
  %i.t = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.s ; 4 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, f0x40555556
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0x3F2AAAAB ; 3 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, 4.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.v, 1.000000e+00
  %spec.select213 = select i1 %.inv, float 1.000000e+00, float %i.v
  %spec.select = fptosi float %spec.select213 to i32
  %i.x = select i1 %i.w, i32 4, i32 %spec.select  ; 14 uses
  %i.y = add i32 %i.x, -1
  %i.z = load <2 x i32>, ptr %i.n, align 4, !tbaa !32 ; 3 uses
  %i.aa = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ac = add <2 x i32> %i.ab, %i.z
  %i.ad = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.af = sdiv <2 x i32> %i.ac, %i.ae             ; 3 uses
  %i.ag = extractelement <2 x i32> %i.af, i64 0   ; 5 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 2 uses
  %i.ai = extractelement <2 x i32> %i.af, i64 1   ; 3 uses
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  %i.ak = sext i32 %i.ah to i64                   ; 6 uses
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %i.am = shl nsw i64 %i.ak, 3
  %i.an = mul i64 %i.am, %i.al
  %i.ao = tail call ptr @dt_alloc_aligned(i64 noundef %i.an) #12 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.p, label %.preheader230

.preheader230:                                    ; preds = %dt_get_debug_wtime.exit
  %i.aq = or i32 %i.ai, %i.ag
  %or.cond.not268 = icmp sgt i32 %i.aq, -1
  br i1 %or.cond.not268, label %.preheader229.preheader, label %._crit_edge235.split

.preheader229.preheader:                          ; preds = %.preheader230
  %i.ar = add nuw <2 x i32> %i.af, splat (i32 1)  ; 2 uses
  %i.as = extractelement <2 x i32> %i.ar, i64 1
  %wide.trip.count275 = zext i32 %i.as to i64
  %i.at = extractelement <2 x i32> %i.ar, i64 0
  %wide.trip.count = zext i32 %i.at to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.ag, 3
  %min.iters.check318 = icmp ult i32 %i.ag, 31
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %broadcast.splatinsert319 = insertelement <8 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat320 = shufflevector <8 x i32> %broadcast.splatinsert319, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert321 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat322 = shufflevector <8 x i32> %broadcast.splatinsert321, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert323 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat324 = shufflevector <8 x float> %broadcast.splatinsert323, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec328 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert331 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat332 = shufflevector <4 x i32> %broadcast.splatinsert331, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert333 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat334 = shufflevector <4 x i32> %broadcast.splatinsert333, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n344 = icmp eq i64 %n.vec328, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader229.preheader, %._crit_edge
  %indvars.iv271 = phi i64 [ 0, %.preheader229.preheader ], [ %indvars.iv.next272, %._crit_edge ] ; 3 uses
  %i.av = mul nuw nsw i64 %indvars.iv271, %i.ak   ; 6 uses
  %i.aw = trunc i64 %indvars.iv271 to i32
  %i.ax = mul i32 %i.x, %i.aw
  %i.ay = add nsw i32 %i.ax, %i.q
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to float
  %i.ba = fmul reassoc nsz arcp contract afn float %i.t, %i.az ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check318, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ba, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.bb = or disjoint i64 %index, 8
  %i.bc = or disjoint i64 %index, 16
  %i.bd = or disjoint i64 %index, 24
  %i.be = add nuw nsw i64 %i.av, %index
  %i.bf = add nuw nsw i64 %i.av, %i.bb
  %i.bg = add nuw nsw i64 %i.av, %i.bc
  %i.bh = add nuw nsw i64 %i.av, %i.bd
  %i.bi = mul <8 x i32> %broadcast.splat320, %vec.ind
  %i.bj = mul <8 x i32> %broadcast.splat320, %step.add
  %i.bk = mul <8 x i32> %broadcast.splat320, %step.add.2
  %i.bl = mul <8 x i32> %broadcast.splat320, %step.add.3
  %i.bm = add nsw <8 x i32> %i.bi, %broadcast.splat322
  %i.bn = add nsw <8 x i32> %i.bj, %broadcast.splat322
  %i.bo = add nsw <8 x i32> %i.bk, %broadcast.splat322
  %i.bp = add nsw <8 x i32> %i.bl, %broadcast.splat322
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
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cb
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
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !113

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
  %i.ci = add nuw nsw i64 %i.av, %index339
  %i.cj = mul <4 x i32> %broadcast.splat332, %vec.ind340
  %i.ck = add nsw <4 x i32> %i.cj, %broadcast.splat334
  %i.cl = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ck to <4 x float>
  %i.cm = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat336, %i.cl
  %i.cn = shl nsw i64 %i.ci, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cn
  %interleaved.vec341 = shufflevector <4 x float> %i.cm, <4 x float> %broadcast.splatinsert329, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec341, ptr %i.co, align 8, !tbaa !29
  %index.next342 = add nuw i64 %index339, 4       ; 2 uses
  %vec.ind.next343 = add <4 x i32> %vec.ind340, splat (i32 4)
  %i.cp = icmp eq i64 %index.next342, %n.vec328
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n344, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec328, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge235.split:                             ; preds = %._crit_edge, %.preheader230
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %i.cr = and i32 %i.cq, 4112
  %or.cond.not = icmp eq i32 %i.cr, 4112
  br i1 %or.cond.not, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge235.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cs = add nuw nsw i64 %i.av, %indvars.iv
  %i.ct = trunc i64 %indvars.iv to i32
  %i.cu = mul i32 %i.x, %i.ct
  %i.cv = add nsw i32 %i.cu, %i.o
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.cv to float
  %i.cx = fmul reassoc nsz arcp contract afn float %i.t, %i.cw
  %.idx214 = shl nsw i64 %i.cs, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx214 ; 2 uses
  store float %i.cx, ptr %i.cy, align 8, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.ba, ptr %i.cz, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !173

bb.c:                                             ; preds = %._crit_edge235.split
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.db = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #12 ; 0 uses
  %i.dc = load i64, ptr %7, align 8, !tbaa !86
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
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge235.split
  %.0 = phi nsz double [ %i.k, %._crit_edge235.split ], [ %i.dj, %bb.c ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !109
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dq = load i32, ptr %i.dp, align 16, !tbaa !110
  %i.dr = sitofp reassoc nsz arcp contract afn i32 %i.dq to double
  %i.ds = mul nsw i64 %i.al, %i.ak
  %i.dt = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dm, ptr noundef %i.do, double noundef %i.dr, i32 noundef 3, ptr noundef nonnull %i.ao, i64 noundef %i.ds) #12
  %.not197 = icmp eq i32 %i.dt, 0
  br i1 %.not197, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ao) #12
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %i.dv = and i32 %i.du, 4112
  %or.cond208.not = icmp eq i32 %i.dv, 4112
  br i1 %or.cond208.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.dx = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #12 ; 0 uses
  %i.dy = load i64, ptr %6, align 8, !tbaa !86
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
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1212 = phi nsz double [ %.0, %bb.f ], [ %i.ef, %bb.g ]
  %i.eh = load ptr, ptr %i.dn, align 8, !tbaa !100 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 144
  %i.ej = load i32, ptr %i.ei, align 16, !tbaa !126
  %i.ek = sitofp reassoc nsz arcp contract afn i32 %i.ej to float ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 148
  %i.em = load i32, ptr %i.el, align 4, !tbaa !127
  %i.en = sitofp reassoc nsz arcp contract afn i32 %i.em to float ; 2 uses
  %i.eo = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ek, float noundef %i.en) #14 ; 3 uses
  %i.ep = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.er = load float, ptr %i.eq, align 4, !tbaa !31
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.es) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.et = load float, ptr %i.m, align 4, !tbaa !29
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !29
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.en ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !30
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ey, float 1.000000e-03) ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !128
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
  br i1 %i.fn, label %bb.i, label %.preheader228

.preheader228:                                    ; preds = %bb.h
  %i.fo = icmp sgt i32 %i.fh, -1
  br i1 %i.fo, label %.lr.ph, label %.preheader228.._crit_edge237_crit_edge

.preheader228.._crit_edge237_crit_edge:           ; preds = %.preheader228
  %.pre = sext i32 %i.fh to i64
  br label %._crit_edge237

.lr.ph:                                           ; preds = %.preheader228
  %i.fp = icmp eq i32 %i.fd, 1
  br i1 %i.fp, label %iter.check367, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.fq = zext nneg i32 %i.fh to i64
  %wide.trip.count281 = zext nneg i32 %i.fj to i64
  %i.fr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ez
  br label %.lr.ph.split

iter.check367:                                    ; preds = %.lr.ph
  %i.fs = fmul reassoc nsz arcp contract afn float %i.ep, 5.000000e-01 ; 3 uses
  %i.ft = zext nneg i32 %i.fh to i64              ; 3 uses
  %wide.trip.count287 = zext nneg i32 %i.fj to i64 ; 6 uses
  %min.iters.check345 = icmp ult i32 %i.fj, 4
  br i1 %min.iters.check345, label %vec.epilog.scalar.ph368.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check367
  %min.iters.check347 = icmp ult i32 %i.fj, 32
  br i1 %min.iters.check347, label %vec.epilog.ph371, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.fu = and i64 %wide.trip.count287, 28
  %n.vec349 = and i64 %wide.trip.count287, 2147483616 ; 4 uses
  %broadcast.splatinsert350 = insertelement <8 x float> poison, float %i.fs, i64 0
  %broadcast.splat351 = shufflevector <8 x float> %broadcast.splatinsert350, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
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

vector.body356:                                   ; preds = %vector.ph348, %vector.body356
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
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351, %i.ga
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351, %i.gb
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351, %i.gc
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351, %i.gd
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
end_hunk_0
