Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ellipse?download=true
inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_get_mask:bb.a
  %i.fp = shl i64 %i.fm, 3
  %i.fq = getelementptr i8, ptr %i.ah, i64 %i.fp
  %bound0 = icmp ult ptr %i.dl, %i.fq
  %bound1 = icmp ult ptr %i.ah, %i.fo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck
  %n.vec176 = and i64 %i.cv, -8                   ; 3 uses
  %broadcast.splat178 = shufflevector <2 x float> %i.fl, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat180 = shufflevector <2 x float> %i.fl, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat182 = shufflevector <2 x float> %i.ds, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat184 = shufflevector <2 x float> %i.ds, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %cos.i, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %sin.i, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat190 = shufflevector <2 x float> %i.fg, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat192 = shufflevector <2 x float> %i.fj, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat194 = shufflevector <2 x float> %i.fg, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat196 = shufflevector <2 x float> %i.fj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph175
  %index198 = phi i64 [ 0, %vector.ph175 ], [ %index.next200, %vector.body197 ] ; 3 uses
  %i.fr = shl i64 %index198, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fr
  %wide.vec = load <16 x float>, ptr %i.fs, align 64, !tbaa !26, !alias.scope !192 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec199 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ft = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat182 ; 3 uses
  %i.fu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec199, %broadcast.splat184 ; 3 uses
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %i.ft
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fu
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fv ; 3 uses
  %i.fy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.fx) ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn une <8 x float> %i.fx, zeroinitializer ; 2 uses
  %i.ga = fdiv reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fy
  %i.gb = select reassoc nsz arcp contract afn <8 x i1> %i.fz, <8 x float> %i.ga, <8 x float> zeroinitializer ; 2 uses
  %i.gc = fdiv reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fy
  %i.gd = select reassoc nsz arcp contract afn <8 x i1> %i.fz, <8 x float> %i.gc, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, %broadcast.splat186
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, %broadcast.splat188
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gf ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, %broadcast.splat186
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, %broadcast.splat188
  %i.gj = fsub reassoc nsz arcp contract afn <8 x float> %i.gh, %i.gi ; 2 uses
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, %i.gg ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gj ; 2 uses
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gl, %broadcast.splat190
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, %broadcast.splat192
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %i.gn
  %i.gp = fdiv reassoc nsz arcp contract afn <8 x float> %broadcast.splat178, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.gl, %broadcast.splat194
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, %broadcast.splat196
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gr
  %i.gt = fdiv reassoc nsz arcp contract afn <8 x float> %broadcast.splat180, %i.gs ; 2 uses
  %i.gu = fsub reassoc nsz arcp contract afn <8 x float> %i.gt, %i.fx
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gp
  %i.gw = fdiv reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gv ; 3 uses
  %i.gx = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.gw, zeroinitializer
  %i.gy = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.gw, splat (float 1.000000e+00)
  %i.gz = select reassoc nsz arcp contract afn <8 x i1> %i.gy, <8 x float> %i.gw, <8 x float> splat (float 1.000000e+00)
  %i.ha = select reassoc nsz arcp contract afn <8 x i1> %i.gx, <8 x float> %i.gz, <8 x float> zeroinitializer ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %i.ha, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index198
  store <8 x float> %i.hb, ptr %i.hc, align 32, !tbaa !26, !alias.scope !193, !noalias !192
  %index.next200 = add nuw i64 %index198, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next200, %n.vec176
  br i1 %i.hd, label %middle.block201, label %vector.body197, !llvm.loop !190

middle.block201:                                  ; preds = %vector.body197
  %cmp.n202 = icmp eq i64 %i.cv, %n.vec176
  br i1 %cmp.n202, label %_fill_mask.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block201
  %.01.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec176, %middle.block201 ]
  %i.he = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = insertelement <2 x float> poison, float %sin.i, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01.i = phi i64 [ %i.ir, %scalar.ph ], [ %.01.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx.i = shl i64 %.01.i, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %i.hj = load <2 x float>, ptr %i.hi, align 8, !tbaa !26
  %i.hk = fsub reassoc nsz arcp contract afn <2 x float> %i.hj, %i.ds ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hk
  %foldExtExtBinop205 = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hk
  %shift = shufflevector <2 x float> %foldExtExtBinop205, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop207 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.hl = extractelement <2 x float> %foldExtExtBinop207, i64 0 ; 3 uses
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hl)
  %i.hn = fcmp reassoc nsz arcp contract afn une float %i.hl, 0.000000e+00
  %i.ho = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fdiv reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hp
  %i.hr = insertelement <2 x i1> poison, i1 %i.hn, i64 0
  %i.hs = shufflevector <2 x i1> %i.hr, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ht = select <2 x i1> %i.hs, <2 x float> %i.hq, <2 x float> <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.hu, %i.hf ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn <2 x float> %i.ht, %i.hh ; 2 uses
  %i.hx = fadd reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hw
  %i.hy = fsub reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hw
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> %i.hx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ia = fmul reassoc nsz arcp contract afn <2 x float> %i.hz, %i.hz ; 2 uses
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ic = fmul reassoc nsz arcp contract afn <2 x float> %i.ib, %i.fh
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.ia, %i.fk
  %i.ie = fadd reassoc nsz arcp contract afn <2 x float> %i.id, %i.ic
  %i.if = fdiv reassoc nsz arcp contract afn <2 x float> %i.fl, %i.ie ; 2 uses
  %i.ig = extractelement <2 x float> %i.if, i64 1 ; 2 uses
  %i.ih = fsub reassoc nsz arcp contract afn float %i.ig, %i.hl
  %i.ii = extractelement <2 x float> %i.if, i64 0
  %i.ij = fsub reassoc nsz arcp contract afn float %i.ig, %i.ii
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ih, %i.ij ; 3 uses
  %i.il = fcmp reassoc nsz arcp contract afn oge float %i.ik, 0.000000e+00
  %i.im = fcmp reassoc nsz arcp contract afn ole float %i.ik, 1.000000e+00
  %i.in = select reassoc nsz arcp contract afn i1 %i.im, float %i.ik, float 1.000000e+00
  %i.io = select reassoc nsz arcp contract afn i1 %i.il, float %i.in, float 0.000000e+00 ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.01.i
  store float %i.ip, ptr %i.iq, align 4, !tbaa !26
  %i.ir = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ir, %i.cv
  br i1 %exitcond.not.i, label %_fill_mask.exit, label %scalar.ph, !llvm.loop !191

_fill_mask.exit:                                  ; preds = %scalar.ph, %middle.block201, %bb.r
  tail call void @free(ptr noundef nonnull %i.ah) #12
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.it = and i32 %i.is, 4112
  %or.cond127.not = icmp eq i32 %i.it, 4112
  br i1 %or.cond127.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_fill_mask.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.iv = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.iw = load i64, ptr %8, align 8, !tbaa !129
  %i.ix = add nsw i64 %i.iw, -1290608000
  %i.iy = sitofp reassoc nsz arcp contract afn i64 %i.ix to double
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !130
  %i.jb = sitofp reassoc nsz arcp contract afn i64 %i.ja to double
  %i.jc = fmul reassoc nnan nsz arcp contract afn double %i.jb, f0x3EB0C6F7A0B5ED8D
  %i.jd = fadd reassoc nsz arcp contract afn double %i.jc, %i.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.je = fsub reassoc nsz arcp contract afn double %i.jd, %.2
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.iu, double noundef %i.je) #12
  br label %bb.t

bb.t:                                             ; preds = %_fill_mask.exit, %bb.s, %bb.h, %bb.l, %bb.e, %dt_get_debug_wtime.exit
  %.1 = phi i32 [ 0, %dt_get_debug_wtime.exit ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.e ], [ 1, %bb.s ], [ 1, %_fill_mask.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_mask_roi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %14 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %14, ptr noundef null) #12 ; 0 uses
  %i.c = load i64, ptr %14, align 8, !tbaa !129
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !130
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load <2 x i32>, ptr %i.p, align 16, !tbaa !32 ; 3 uses
  %i.r = load <2 x float>, ptr %i.m, align 4, !tbaa !26
  %i.s = sitofp <2 x i32> %i.q to <2 x float>
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.s ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.w = extractelement <2 x i32> %i.q, i64 0
  %i.x = extractelement <2 x i32> %i.q, i64 1
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x)
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 4 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !26 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = and i32 %i.af, 1
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !30 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, 1.000000e+00 ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.v
  %i.al = fmul reassoc nsz arcp contract afn float %i.aj, %i.ac
  br label %bb.e

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.am = fadd reassoc nsz arcp contract afn float %i.ai, %i.v
  %i.an = fadd reassoc nsz arcp contract afn float %i.ai, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi float [ %i.ak, %bb.c ], [ %i.am, %bb.d ]
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.al, %bb.c ], [ %i.an, %bb.d ]
  %i.ap = fmul reassoc nsz arcp contract afn float %.pn, %i.z ; 5 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %i.z ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.at) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 4 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !201 ; 3 uses
  %i.ax = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aw ; 4 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aw, f0x40555556
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, f0x3F2AAAAB ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 4.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.az, 1.000000e+00
  %spec.select398 = select i1 %.inv, float 1.000000e+00, float %i.az
  %spec.select = fptosi float %spec.select398 to i32
  %i.bb = select i1 %i.ba, i32 4, i32 %spec.select ; 18 uses
  %i.bc = add i32 %i.bb, -1
  %i.bd = load <2 x i32>, ptr %i.au, align 4, !tbaa !32 ; 3 uses
  %i.be = load <2 x i32>, ptr %3, align 4, !tbaa !32 ; 5 uses
  %i.bf = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bh = add <2 x i32> %i.bg, %i.bd
  %i.bi = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bk = sdiv <2 x i32> %i.bh, %i.bj             ; 4 uses
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.bm = and i32 %i.bl, 4112
  %or.cond374.not = icmp eq i32 %i.bm, 4112
  br i1 %or.cond374.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.bo = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #12 ; 0 uses
  %i.bp = load i64, ptr %13, align 8, !tbaa !129
  %i.bq = add nsw i64 %i.bp, -1290608000
  %i.br = sitofp reassoc nsz arcp contract afn i64 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !130
  %i.bu = sitofp reassoc nsz arcp contract afn i64 %i.bt to double
  %i.bv = fmul reassoc nnan nsz arcp contract afn double %i.bu, f0x3EB0C6F7A0B5ED8D
  %i.bw = fadd reassoc nsz arcp contract afn double %i.bv, %i.br ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.bx = fsub reassoc nsz arcp contract afn double %i.bw, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.bn, double noundef %i.bx) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz double [ %i.k, %bb.e ], [ %i.bw, %bb.f ] ; 2 uses
  %i.by = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq
  %i.bz = fadd reassoc nsz arcp contract afn float %i.aq, %i.ap ; 2 uses
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.by, %i.bz ; 2 uses
  %i.cb = fpext reassoc nsz arcp contract afn float %i.bz to double
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, f0x400921FB54442D18
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, 3.000000e+00 ; 2 uses
  %i.cf = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.ce
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cf)
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, 1.000000e+01
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ce, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fmul reassoc nsz arcp contract afn double %i.cc, %i.ck
  %i.cm = fptosi double %i.cl to i32              ; 3 uses
  %i.cn = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 360) ; 5 uses
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = tail call ptr @dt_alloc_aligned(i64 noundef %i.cp) #12 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ai, label %.preheader406

.preheader406:                                    ; preds = %bb.g
  %.not434 = icmp eq i32 %i.cm, 0                 ; 2 uses
  br i1 %.not434, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader406
  %i.cs = uitofp reassoc nsz arcp contract afn i64 %i.co to float ; 2 uses
  %15 = fmul reassoc nsz arcp contract afn float %cos, %i.ap ; 2 uses
  %16 = fneg reassoc nsz arcp contract afn float %i.aq
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %sin, %16 ; 2 uses
  %17 = fmul reassoc nsz arcp contract afn float %sin, %i.ap ; 2 uses
  %18 = fmul reassoc nsz arcp contract afn float %cos, %i.aq ; 2 uses
  %wide.trip.count = zext i32 %i.cn to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.cn, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cs, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert473 = insertelement <8 x float> poison, float %15, i64 0
  %broadcast.splat474.a = shufflevector <8 x float> %broadcast.splatinsert473, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert475 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat476.a = shufflevector <8 x float> %broadcast.splatinsert475, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert477 = insertelement <8 x float> poison, float %17, i64 0
  %broadcast.splat478 = shufflevector <8 x float> %broadcast.splatinsert477, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert479 = insertelement <8 x float> poison, float %18, i64 0
  %broadcast.splat480 = shufflevector <8 x float> %broadcast.splatinsert479, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat482 = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat484 = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ct = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cu = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.cv = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cu, splat (float f0x40C90FDB)
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %i.cv, %i.ct
  %i.cx = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.cw) ; 2 uses
  %i.cy = extractvalue { <8 x float>, <8 x float> } %i.cx, 0 ; 2 uses
  %i.cz = extractvalue { <8 x float>, <8 x float> } %i.cx, 1 ; 2 uses
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat474.a, %i.cz
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, %broadcast.splat482
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat476.a, %i.cy
  %i.dd = fadd reassoc nsz arcp contract afn <8 x float> %i.db, %i.dc
  %i.de = shl nuw nsw i64 %index, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.de
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat478, %i.cz
  %i.dh = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, %broadcast.splat484
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat480, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn <8 x float> %i.dh, %i.di
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> %i.dj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.df, align 64, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cs
  %19 = extractelement <2 x float> %i.t, i64 0
  %20 = extractelement <2 x float> %i.t, i64 1
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader406
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.dn = and i32 %i.dm, 4112
  %or.cond375.not = icmp eq i32 %i.dn, 4112
  br i1 %or.cond375.not, label %bb.h, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.do = trunc nuw nsw i64 %indvars.iv to i32
  %i.dp = uitofp nsz nneg i32 %i.do to float
  %i.dq = fmul reassoc nnan nsz arcp contract afn float %i.dp, f0x40C90FDB
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dl
  %sincos371 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dr) ; 2 uses
  %sin372 = extractvalue { float, float } %sincos371, 0 ; 2 uses
  %cos373 = extractvalue { float, float } %sincos371, 1 ; 2 uses
  %21 = fmul reassoc nsz arcp contract afn float %15, %cos373
  %22 = fadd reassoc nsz arcp contract afn float %21, %19
  %.reass = fmul reassoc nsz arcp contract afn float %factor.op.fmul, %sin372
  %23 = fadd reassoc nsz arcp contract afn float %22, %.reass
  %.idx471 = shl nuw nsw i64 %indvars.iv, 3
  %24 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx471 ; 2 uses
  store float %23, ptr %24, align 8, !tbaa !26
  %25 = fmul reassoc nsz arcp contract afn float %17, %cos373
  %26 = fadd reassoc nsz arcp contract afn float %25, %20
  %27 = fmul reassoc nsz arcp contract afn float %18, %sin372
  %28 = fadd reassoc nsz arcp contract afn float %26, %27
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 4
  store float %28, ptr %29, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !195

bb.h:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.dt = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #12 ; 0 uses
  %i.du = load i64, ptr %12, align 8, !tbaa !129
  %i.dv = add nsw i64 %i.du, -1290608000
  %i.dw = sitofp reassoc nsz arcp contract afn i64 %i.dv to double
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !130
  %i.dz = sitofp reassoc nsz arcp contract afn i64 %i.dy to double
  %i.ea = fmul reassoc nnan nsz arcp contract afn double %i.dz, f0x3EB0C6F7A0B5ED8D
  %i.eb = fadd reassoc nsz arcp contract afn double %i.ea, %i.dw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.ec = fsub reassoc nsz arcp contract afn double %i.eb, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.ds, double noundef %i.ec) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.1 = phi nsz double [ %.0, %._crit_edge ], [ %i.eb, %bb.h ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !132
  %i.ef = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 16, !tbaa !126
  %i.ei = sitofp reassoc nsz arcp contract afn i32 %i.eh to double
  %i.ej = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ee, ptr noundef %i.ef, double noundef %i.ei, i32 noundef 3, ptr noundef nonnull %i.cq, i64 noundef %i.co) #12
  %.not348 = icmp eq i32 %i.ej, 0
  br i1 %.not348, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.cq) #12
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  %i.ek = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.el = and i32 %i.ek, 4112
  %or.cond376.not = icmp eq i32 %i.el, 4112
  br i1 %or.cond376.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.en = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #12 ; 0 uses
  %i.eo = load i64, ptr %11, align 8, !tbaa !129
  %i.ep = add nsw i64 %i.eo, -1290608000
  %i.eq = sitofp reassoc nsz arcp contract afn i64 %i.ep to double
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !130
  %i.et = sitofp reassoc nsz arcp contract afn i64 %i.es to double
  %i.eu = fmul reassoc nnan nsz arcp contract afn double %i.et, f0x3EB0C6F7A0B5ED8D
  %i.ev = fadd reassoc nsz arcp contract afn double %i.eu, %i.eq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.ew = fsub reassoc nsz arcp contract afn double %i.ev, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.em, double noundef %i.ew) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2397 = phi nsz double [ %.1, %bb.k ], [ %i.ev, %bb.l ] ; 2 uses
  br i1 %.not434, label %._crit_edge415, label %.lr.ph414.preheader

.lr.ph414.preheader:                              ; preds = %bb.m
  %wide.trip.count441 = zext i32 %i.cn to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count441, 1
  %i.ex = icmp eq i32 %i.cm, 1
  br i1 %i.ex, label %.lr.ph414.epil.preheader, label %.lr.ph414.preheader.new

.lr.ph414.preheader.new:                          ; preds = %.lr.ph414.preheader
  %unroll_iter = and i64 %wide.trip.count441, 4294967294
  br label %.lr.ph414

._crit_edge415.loopexit.unr-lcssa:                ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge415, label %.lr.ph414.epil.preheader

.lr.ph414.epil.preheader:                         ; preds = %._crit_edge415.loopexit.unr-lcssa, %.lr.ph414.preheader
  %indvars.iv437.epil.init = phi i64 [ 0, %.lr.ph414.preheader ], [ %indvars.iv.next438.1, %._crit_edge415.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph414.preheader ], [ %i.hq, %._crit_edge415.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init571 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph414.preheader ], [ %i.hr, %._crit_edge415.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod574 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod574)
  %.idx472.epil = shl nuw nsw i64 %indvars.iv437.epil.init, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx472.epil ; 2 uses
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !26 ; 2 uses
  %i.fa = tail call i1 @llvm.is.fpclass.f32(float %i.ez, /* (nan inf zero sub) */ i32 759)
  br i1 %i.fa, label %._crit_edge415, label %bb.n

bb.n:                                             ; preds = %.lr.ph414.epil.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !26 ; 2 uses
  %i.fd = tail call i1 @llvm.is.fpclass.f32(float %i.fc, /* (nan inf zero sub) */ i32 759)
  br i1 %i.fd, label %._crit_edge415, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fe = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fc, i64 1 ; 4 uses
  %i.fg = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init571, %i.ff
  %i.fh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.ff
  %i.fi = select <2 x i1> %i.fg, <2 x float> %.epil.init571, <2 x float> %i.ff
  %i.fj = select <2 x i1> %i.fh, <2 x float> %.epil.init, <2 x float> %i.ff
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit.unr-lcssa, %bb.o, %bb.n, %.lr.ph414.epil.preheader, %bb.m
  %i.fk = phi <2 x float> [ splat (float f0x00800000), %bb.m ], [ %i.hq, %._crit_edge415.loopexit.unr-lcssa ], [ %i.fj, %bb.o ], [ %.epil.init, %bb.n ], [ %.epil.init, %.lr.ph414.epil.preheader ]
  %i.fl = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.m ], [ %i.hr, %._crit_edge415.loopexit.unr-lcssa ], [ %i.fi, %bb.o ], [ %.epil.init571, %bb.n ], [ %.epil.init571, %.lr.ph414.epil.preheader ]
  %i.fm = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fn
  %i.fp = sitofp <2 x i32> %i.be to <2 x float>   ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fn
  %i.fr = fsub reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fp
  %i.fs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fr)
  %i.ft = fptosi <2 x float> %i.fs to <2 x i32>
  %i.fu = sdiv <2 x i32> %i.ft, %i.bj             ; 2 uses
  %i.fv = add nsw <2 x i32> %i.fu, splat (i32 -1) ; 2 uses
  %i.fw = icmp sgt <2 x i32> %i.fv, %i.bk
  %i.fx = icmp sgt <2 x i32> %i.fu, zeroinitializer
  %i.fy = select <2 x i1> %i.fx, <2 x i32> %i.fv, <2 x i32> zeroinitializer
  %i.fz = select <2 x i1> %i.fw, <2 x i32> %i.bk, <2 x i32> %i.fy ; 6 uses
  %i.ga = fsub reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fp
  %i.gb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ga)
  %i.gc = fptosi <2 x float> %i.gb to <2 x i32>
  %i.gd = sdiv <2 x i32> %i.gc, %i.bj             ; 2 uses
  %i.ge = add nsw <2 x i32> %i.gd, splat (i32 2)  ; 2 uses
  %i.gf = icmp sgt <2 x i32> %i.ge, %i.bk
  %i.gg = icmp slt <2 x i32> %i.gd, splat (i32 -2)
  %i.gh = select <2 x i1> %i.gg, <2 x i32> zeroinitializer, <2 x i32> %i.ge
  %i.gi = select <2 x i1> %i.gf, <2 x i32> %i.bk, <2 x i32> %i.gh ; 5 uses
  %i.gj = sub nsw <2 x i32> %i.gi, %i.fz          ; 3 uses
  %i.gk = add nuw nsw <2 x i32> %i.gj, splat (i32 1) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.cq) #12
  %i.gl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.gm = and i32 %i.gl, 4112
  %or.cond381.not = icmp eq i32 %i.gm, 4112
  br i1 %or.cond381.not, label %bb.u, label %bb.v

.lr.ph414:                                        ; preds = %bb.t, %.lr.ph414.preheader.new
  %indvars.iv437 = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %indvars.iv.next438.1, %bb.t ] ; 3 uses
  %i.gn = phi <2 x float> [ splat (float f0x00800000), %.lr.ph414.preheader.new ], [ %i.hq, %bb.t ] ; 4 uses
  %i.go = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph414.preheader.new ], [ %i.hr, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %niter.next.1, %bb.t ]
  %.idx472 = shl nuw nsw i64 %indvars.iv437, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx472 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 16, !tbaa !26 ; 2 uses
  %i.gr = tail call i1 @llvm.is.fpclass.f32(float %i.gq, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gr, label %.lr.ph414.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph414
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !26 ; 2 uses
  %i.gu = tail call i1 @llvm.is.fpclass.f32(float %i.gt, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gu, label %.lr.ph414.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gv = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gt, i64 1 ; 4 uses
  %i.gx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.go, %i.gw
  %i.gy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gn, %i.gw
  %i.gz = select <2 x i1> %i.gx, <2 x float> %i.go, <2 x float> %i.gw
  %i.ha = select <2 x i1> %i.gy, <2 x float> %i.gn, <2 x float> %i.gw
  br label %.lr.ph414.1

.lr.ph414.1:                                      ; preds = %.lr.ph414, %bb.p, %bb.q
  %i.hb = phi <2 x float> [ %i.ha, %bb.q ], [ %i.gn, %bb.p ], [ %i.gn, %.lr.ph414 ] ; 4 uses
  %i.hc = phi <2 x float> [ %i.gz, %bb.q ], [ %i.go, %bb.p ], [ %i.go, %.lr.ph414 ] ; 4 uses
  %indvars.iv.next438 = shl i64 %indvars.iv437, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next438 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load float, ptr %i.he, align 8, !tbaa !26 ; 2 uses
  %i.hg = tail call i1 @llvm.is.fpclass.f32(float %i.hf, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hg, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph414.1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !26 ; 2 uses
  %i.hj = tail call i1 @llvm.is.fpclass.f32(float %i.hi, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hk = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.hi, i64 1 ; 4 uses
  %i.hm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.hc, %i.hl
  %i.hn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hb, %i.hl
  %i.ho = select <2 x i1> %i.hm, <2 x float> %i.hc, <2 x float> %i.hl
  %i.hp = select <2 x i1> %i.hn, <2 x float> %i.hb, <2 x float> %i.hl
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph414.1
  %i.hq = phi <2 x float> [ %i.hp, %bb.s ], [ %i.hb, %bb.r ], [ %i.hb, %.lr.ph414.1 ] ; 3 uses
  %i.hr = phi <2 x float> [ %i.ho, %bb.s ], [ %i.hc, %bb.r ], [ %i.hc, %.lr.ph414.1 ] ; 3 uses
  %indvars.iv.next438.1 = add nuw nsw i64 %indvars.iv437, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge415.loopexit.unr-lcssa, label %.lr.ph414

bb.u:                                             ; preds = %._crit_edge415
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 32
end_hunk_0
