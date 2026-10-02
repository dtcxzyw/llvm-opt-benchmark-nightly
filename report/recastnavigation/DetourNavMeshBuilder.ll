Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshBuilder?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi:bb.a

.lr.ph578:                                        ; preds = %bb.aa, %bb.ab
  %indvars.iv667 = phi i64 [ %indvars.iv.next668, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv667
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !26
  %i.fv = icmp eq i16 %i.fu, -1
  br i1 %i.fv, label %._crit_edge579.loopexit.split.loop.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph578
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count672
  br i1 %exitcond673.not, label %._crit_edge579, label %.lr.ph578

._crit_edge579.loopexit.split.loop.exit:          ; preds = %.lr.ph578
  %indvars671.le = trunc i64 %indvars.iv667 to i32
  br label %._crit_edge579

._crit_edge579:                                   ; preds = %bb.ab, %._crit_edge579.loopexit.split.loop.exit, %bb.aa
  %.0451.lcssa = phi i32 [ 0, %bb.aa ], [ %indvars671.le, %._crit_edge579.loopexit.split.loop.exit ], [ %i.b, %bb.ab ]
  %i.fw = add i32 %i.fs, %.0455583
  %i.fx = sub i32 %i.fw, %.0451.lcssa             ; 2 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %.loopexit534, label %bb.aa

bb.ac:                                            ; preds = %.lr.ph598, %._crit_edge592
  %indvars.iv686 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next687, %._crit_edge592 ] ; 2 uses
  %.0453596 = phi i32 [ 0, %.lr.ph598 ], [ %i.gg, %._crit_edge592 ]
  %i.fy = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.fz = mul i32 %i.fd, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.ga
  br i1 %i.fe, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %indvars.iv679
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !26
  %i.ge = icmp eq i16 %i.gd, -1
  br i1 %i.ge, label %._crit_edge592.loopexit.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph591
  %indvars.iv.next680 = add nuw nsw i64 %indvars.iv679, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next680, %wide.trip.count684
  br i1 %exitcond685.not, label %._crit_edge592, label %.lr.ph591

._crit_edge592.loopexit.split.loop.exit:          ; preds = %.lr.ph591
  %indvars683.le = trunc i64 %indvars.iv679 to i32
  br label %._crit_edge592

._crit_edge592:                                   ; preds = %bb.ad, %._crit_edge592.loopexit.split.loop.exit, %bb.ac
  %.0448.lcssa = phi i32 [ 0, %bb.ac ], [ %indvars683.le, %._crit_edge592.loopexit.split.loop.exit ], [ %i.b, %bb.ad ]
  %i.gf = add i32 %.0453596, -2
  %i.gg = add i32 %i.gf, %.0448.lcssa             ; 2 uses
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next687, %wide.trip.count689
  br i1 %exitcond690.not, label %.loopexit534, label %bb.ac

.loopexit534:                                     ; preds = %._crit_edge579, %._crit_edge592, %._crit_edge571.thread, %.thread773
  %i.gh = phi ptr [ %i.ew, %._crit_edge571.thread ], [ %i.ew, %.thread773 ], [ %i.fb, %._crit_edge592 ], [ %i.fg, %._crit_edge579 ] ; 2 uses
  %i.gi = phi i32 [ %.3445, %._crit_edge571.thread ], [ %.3445, %.thread773 ], [ %i.fa, %._crit_edge592 ], [ %i.ff, %._crit_edge579 ] ; 2 uses
  %.1456 = phi i32 [ 0, %._crit_edge571.thread ], [ 0, %.thread773 ], [ 0, %._crit_edge592 ], [ %i.fx, %._crit_edge579 ] ; 2 uses
  %.1454 = phi i32 [ 0, %._crit_edge571.thread ], [ %i.ez, %.thread773 ], [ %i.gg, %._crit_edge592 ], [ %i.fi, %._crit_edge579 ] ; 2 uses
  %i.gj = mul i32 %i.dy, 12                       ; 2 uses
  %i.gk = shl i32 %i.dw, 5                        ; 2 uses
  %i.gl = mul i32 %i.gi, 12                       ; 2 uses
  %i.gm = mul i32 %i.dv, 12                       ; 2 uses
  %i.gn = mul i32 %.1456, 12                      ; 2 uses
  %i.go = shl i32 %.1454, 2                       ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !57, !range !58, !noundef !59
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = shl i32 %i.dv, 5
  %i.gt = select i1 %i.gr, i32 %i.gs, i32 0       ; 2 uses
  %i.gu = mul i32 %.2441, 36
  %i.gv = add i32 %i.gu, 100
  %i.gw = add i32 %i.gv, %i.gm
  %i.gx = add i32 %i.gw, %i.gk
  %i.gy = add i32 %i.gx, %i.gj
  %i.gz = add i32 %i.gy, %i.gl
  %i.ha = add i32 %i.gz, %i.gn
  %i.hb = add i32 %i.ha, %i.go
  %i.hc = add i32 %i.hb, %i.gt                    ; 2 uses
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.hd, i32 noundef 0) #11 ; 26 uses
  %.not491.not = icmp eq ptr %i.he, null
  br i1 %.not491.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit534
  tail call void @_Z6dtFreePv(ptr noundef %.0434) #11
  br label %bb.bb

bb.af:                                            ; preds = %.loopexit534
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.he, i8 0, i64 %i.hd, i1 false)
  %i.hf = getelementptr i8, ptr %i.he, i64 100    ; 5 uses
  %i.hg = sext i32 %i.gj to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg ; 5 uses
  %i.hi = sext i32 %i.gk to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  %i.hk = sext i32 %i.gl to i64
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.hk ; 3 uses
  %i.hm = sext i32 %i.gm to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm ; 2 uses
  %i.ho = sext i32 %i.gn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 5 uses
  %i.hq = sext i32 %i.go to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hq ; 2 uses
  %i.hs = sext i32 %i.gt to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs
  store i32 1145979222, ptr %i.he, align 4, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 7, ptr %i.hu, align 4, !tbaa !32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.hx = load <4 x i32>, ptr %i.hw, align 4, !tbaa !29
  %i.hy = shufflevector <4 x i32> %i.hx, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %i.hy, ptr %i.hv, align 4, !tbaa !29
  %i.hz = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i32 %i.dw, ptr %i.hz, align 4, !tbaa !33
  %i.ia = getelementptr inbounds nuw i8, ptr %i.he, i64 28
  store i32 %i.dy, ptr %i.ia, align 4, !tbaa !34
  %i.ib = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i32 %i.gi, ptr %i.ib, align 4, !tbaa !35
  %i.ic = getelementptr inbounds nuw i8, ptr %i.he, i64 72
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !24
  store float %i.ie, ptr %i.ic, align 4, !tbaa !24
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ig = load float, ptr %i.if, align 8, !tbaa !24
  %i.ih = getelementptr inbounds nuw i8, ptr %i.he, i64 76
  store float %i.ig, ptr %i.ih, align 4, !tbaa !24
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  store float %i.ij, ptr %i.ik, align 4, !tbaa !24
  %i.il = getelementptr inbounds nuw i8, ptr %i.he, i64 84
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.in = load float, ptr %i.im, align 8, !tbaa !24
  store float %i.in, ptr %i.il, align 4, !tbaa !24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ip = load float, ptr %i.io, align 4, !tbaa !24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.he, i64 88
  store float %i.ip, ptr %i.iq, align 4, !tbaa !24
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.is = load float, ptr %i.ir, align 8, !tbaa !24
  %i.it = getelementptr inbounds nuw i8, ptr %i.he, i64 92
  store float %i.is, ptr %i.it, align 4, !tbaa !24
  %i.iu = load i32, ptr %i.h, align 8, !tbaa !21  ; 9 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !36
  %i.iw = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  store i32 %.1456, ptr %i.iw, align 4, !tbaa !37
  %i.ix = getelementptr inbounds nuw i8, ptr %i.he, i64 44
  store i32 %.1454, ptr %i.ix, align 4, !tbaa !38
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !39
  %i.ja = fdiv float 1.000000e+00, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  store float %i.ja, ptr %i.jb, align 4, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  store i32 %i.iu, ptr %i.jc, align 4, !tbaa !61
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.je = getelementptr inbounds nuw i8, ptr %i.he, i64 60
  %i.jf = load <2 x float>, ptr %i.jd, align 4, !tbaa !24
  store <2 x float> %i.jf, ptr %i.je, align 4, !tbaa !24
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !54
  %i.ji = getelementptr inbounds nuw i8, ptr %i.he, i64 68
  store float %i.jh, ptr %i.ji, align 4, !tbaa !62
  %i.jj = getelementptr inbounds nuw i8, ptr %i.he, i64 52
  store i32 %.2441, ptr %i.jj, align 4, !tbaa !40
  %i.jk = load i8, ptr %i.gp, align 8, !tbaa !57, !range !58, !noundef !59
  %i.jl = trunc nuw i8 %i.jk to i1
  %i.jm = shl nsw i32 %i.iu, 1
  %spec.select527 = select i1 %i.jl, i32 %i.jm, i32 0
  %i.jn = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  store i32 %spec.select527, ptr %i.jn, align 4, !tbaa !41
  %i.jo = load i32, ptr %i.d, align 8, !tbaa !50  ; 5 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph602, label %.preheader532

.lr.ph602:                                        ; preds = %bb.af
  %i.jq = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %wide.trip.count694 = zext nneg i32 %i.jo to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.jo, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph602
  %i.js = mul nuw nsw i64 %wide.trip.count694, 12
  %i.jt = getelementptr i8, ptr %i.he, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 100
  %i.jv = getelementptr i8, ptr %0, i64 200
  %bound0 = icmp ult ptr %i.hf, %i.jv
  %bound1 = icmp ult ptr %i.id, %i.ju
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count694, 2147483644 ; 3 uses
  %i.jw = load float, ptr %i.id, align 4, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert798 = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jx = load float, ptr %i.iy, align 8, !tbaa !39, !alias.scope !63
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.jy = load float, ptr %i.if, align 8, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert802 = insertelement <4 x float> poison, float %i.jy, i64 0
  %i.jz = load float, ptr %i.jr, align 4, !tbaa !53, !alias.scope !63
  %broadcast.splatinsert800 = insertelement <4 x float> poison, float %i.jz, i64 0
  %i.ka = load float, ptr %i.ii, align 4, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert806 = insertelement <4 x float> poison, float %i.ka, i64 0
  %broadcast.splat807 = shufflevector <4 x float> %broadcast.splatinsert806, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kb = load float, ptr %i.iy, align 8, !tbaa !39, !alias.scope !63
  %broadcast.splatinsert804 = insertelement <4 x float> poison, float %i.kb, i64 0
  %broadcast.splat805 = shufflevector <4 x float> %broadcast.splatinsert804, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kc = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert800, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.kd = shufflevector <4 x float> %broadcast.splatinsert798, <4 x float> %broadcast.splatinsert802, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ke = mul nuw nsw i64 %index, 3               ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ke ; 3 uses
  %.idx808 = mul nuw i64 %index, 6
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx808 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 6
  %.idx809 = mul nuw i64 %index, 6
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx809 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %.idx810 = mul nuw i64 %index, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx810 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 18
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ke
  %i.kn = load i16, ptr %i.kf, align 2, !tbaa !26
  %i.ko = load i16, ptr %i.kh, align 2, !tbaa !26
  %i.kp = load i16, ptr %i.kj, align 2, !tbaa !26
  %i.kq = load i16, ptr %i.kl, align 2, !tbaa !26
  %i.kr = insertelement <4 x i16> poison, i16 %i.kn, i64 0
  %i.ks = insertelement <4 x i16> %i.kr, i16 %i.ko, i64 1
  %i.kt = insertelement <4 x i16> %i.ks, i16 %i.kp, i64 2
  %i.ku = insertelement <4 x i16> %i.kt, i16 %i.kq, i64 3
  %i.kv = uitofp <4 x i16> %i.ku to <4 x float>
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ki, i64 14
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  %i.la = load i16, ptr %i.kw, align 2, !tbaa !26
  %i.lb = load i16, ptr %i.kx, align 2, !tbaa !26
  %i.lc = load i16, ptr %i.ky, align 2, !tbaa !26
  %i.ld = load i16, ptr %i.kz, align 2, !tbaa !26
  %i.le = insertelement <4 x i16> poison, i16 %i.la, i64 0
  %i.lf = insertelement <4 x i16> %i.le, i16 %i.lb, i64 1
  %i.lg = insertelement <4 x i16> %i.lf, i16 %i.lc, i64 2
  %i.lh = insertelement <4 x i16> %i.lg, i16 %i.ld, i64 3
  %i.li = uitofp <4 x i16> %i.lh to <4 x float>
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kg, i64 10
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kk, i64 22
  %i.ln = load i16, ptr %i.lj, align 2, !tbaa !26
  %i.lo = load i16, ptr %i.lk, align 2, !tbaa !26
  %i.lp = load i16, ptr %i.ll, align 2, !tbaa !26
  %i.lq = load i16, ptr %i.lm, align 2, !tbaa !26
  %i.lr = insertelement <4 x i16> poison, i16 %i.ln, i64 0
  %i.ls = insertelement <4 x i16> %i.lr, i16 %i.lo, i64 1
  %i.lt = insertelement <4 x i16> %i.ls, i16 %i.lp, i64 2
  %i.lu = insertelement <4 x i16> %i.lt, i16 %i.lq, i64 3
  %i.lv = uitofp <4 x i16> %i.lu to <4 x float>
  %i.lw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lv, <4 x float> %broadcast.splat805, <4 x float> %broadcast.splat807)
  %i.lx = shufflevector <4 x float> %i.kv, <4 x float> %i.li, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ly = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.lx, <8 x float> %i.kc, <8 x float> %i.kd)
  %i.lz = shufflevector <4 x float> %i.lw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.ly, <8 x float> %i.lz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.km, align 4, !tbaa !24, !alias.scope !64, !noalias !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ma = icmp eq i64 %index.next, %n.vec
  br i1 %i.ma, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count694
  br i1 %cmp.n, label %.preheader532, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph602, %middle.block
  %indvars.iv691.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph602 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader532:                                    ; preds = %scalar.ph, %middle.block, %bb.af
  %i.mb = load i32, ptr %i.l, align 8, !tbaa !51  ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 0                   ; 2 uses
  br i1 %i.mc, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %.preheader532
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.trip.count699 = zext nneg i32 %i.mb to i64
  br label %bb.ag

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv691 = phi i64 [ %indvars.iv.next692, %scalar.ph ], [ %indvars.iv691.ph, %scalar.ph.preheader ] ; 2 uses
  %i.me = mul nuw nsw i64 %indvars.iv691, 3       ; 2 uses
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.me ; 3 uses
  %i.mh = load float, ptr %i.id, align 4, !tbaa !24
  %i.mi = load i16, ptr %i.mf, align 2, !tbaa !26
  %i.mj = uitofp i16 %i.mi to float
  %i.mk = load float, ptr %i.iy, align 8, !tbaa !39
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mj, float %i.mk, float %i.mh)
  store float %i.ml, ptr %i.mg, align 4, !tbaa !24
  %i.mm = load float, ptr %i.if, align 8, !tbaa !24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.mo = load float, ptr %i.jr, align 4, !tbaa !53
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mq = load <2 x i16>, ptr %i.mn, align 2, !tbaa !26
  %i.mr = uitofp <2 x i16> %i.mq to <2 x float>   ; 2 uses
  %i.ms = extractelement <2 x float> %i.mr, i64 0
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.mo, float %i.mm)
  store float %i.mt, ptr %i.mp, align 4, !tbaa !24
  %i.mu = load float, ptr %i.ii, align 4, !tbaa !24
  %i.mv = load float, ptr %i.iy, align 8, !tbaa !39
  %i.mw = extractelement <2 x float> %i.mr, i64 1
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mw, float %i.mv, float %i.mu)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store float %i.mx, ptr %i.my, align 4, !tbaa !24
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %.preheader532, label %scalar.ph, !llvm.loop !48

._crit_edge606:                                   ; preds = %bb.ai, %.preheader532
  %i.mz = icmp sgt i32 %i.iu, 0                   ; 3 uses
  br i1 %i.mz, label %.lr.ph616, label %.preheader531

.lr.ph616:                                        ; preds = %._crit_edge606
  %i.na = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !67
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !68
  %i.nf = icmp sgt i32 %i.b, 0
  %i.ng = shl nsw i32 %i.b, 1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = zext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count709 = zext nneg i32 %i.iu to i64
  br label %bb.aj

bb.ag:                                            ; preds = %.lr.ph605, %bb.ai
  %indvars.iv696 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next697, %bb.ai ] ; 3 uses
  %.0436603 = phi i32 [ 0, %.lr.ph605 ], [ %.1437, %bb.ai ] ; 3 uses
  %i.nj = shl nuw nsw i64 %indvars.iv696, 1
  %i.nk = getelementptr inbounds nuw i8, ptr %.0434, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !27
  %i.nm = icmp eq i8 %i.nl, -1
  br i1 %i.nm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.nn = load ptr, ptr %i.md, align 8, !tbaa !55
  %.idx762 = mul nuw nsw i64 %indvars.iv696, 24
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx762 ; 6 uses
  %i.np = shl nsw i32 %.0436603, 1
  %i.nq = add nsw i32 %i.np, %i.jo
  %i.nr = mul nsw i32 %i.nq, 3
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.ns ; 6 uses
  %i.nu = load float, ptr %i.no, align 4, !tbaa !24
  store float %i.nu, ptr %i.nt, align 4, !tbaa !24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !24
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store float %i.nw, ptr %i.nx, align 4, !tbaa !24
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !24
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store float %i.nz, ptr %i.oa, align 4, !tbaa !24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  %i.oc = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.od = load float, ptr %i.oc, align 4, !tbaa !24
  store float %i.od, ptr %i.ob, align 4, !tbaa !24
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.of = load float, ptr %i.oe, align 4, !tbaa !24
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store float %i.of, ptr %i.og, align 4, !tbaa !24
  %i.oh = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !24
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nt, i64 20
  store float %i.oi, ptr %i.oj, align 4, !tbaa !24
  %i.ok = add nsw i32 %.0436603, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.1437 = phi i32 [ %i.ok, %bb.ah ], [ %.0436603, %bb.ag ]
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge606, label %bb.ag

.preheader531:                                    ; preds = %._crit_edge611, %._crit_edge606
  br i1 %i.mc, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader531
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.trip.count714 = zext nneg i32 %i.mb to i64
  br label %bb.ao

bb.aj:                                            ; preds = %.lr.ph616, %._crit_edge611
  %indvars.iv706 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next707, %._crit_edge611 ] ; 4 uses
  %.0433613 = phi ptr [ %i.na, %.lr.ph616 ], [ %i.pj, %._crit_edge611 ] ; 3 uses
  %i.on = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %indvars.iv706 ; 5 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 30 ; 2 uses
  store i8 0, ptr %i.oo, align 2, !tbaa !70
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %indvars.iv706
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !26
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 28
  store i16 %i.oq, ptr %i.or, align 4, !tbaa !71
  %i.os = getelementptr inbounds nuw i8, ptr %i.ne, i64 %indvars.iv706
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !27
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 31
  %i.ov = and i8 %i.ot, 63
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !72
  br i1 %i.nf, label %.lr.ph610, label %._crit_edge611

.lr.ph610:                                        ; preds = %bb.aj
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %invariant.gep785 = getelementptr inbounds nuw [2 x i8], ptr %.0433613, i64 %i.ni
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph610, %bb.an
  %i.oy = phi i8 [ 0, %.lr.ph610 ], [ %i.pi, %bb.an ]
  %indvars.iv701 = phi i64 [ 0, %.lr.ph610 ], [ %indvars.iv.next702, %bb.an ] ; 5 uses
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.0433613, i64 %indvars.iv701
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !26 ; 2 uses
  %i.pb = icmp eq i16 %i.pa, -1
  br i1 %i.pb, label %._crit_edge611, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %indvars.iv701
  store i16 %i.pa, ptr %i.pc, align 2, !tbaa !26
  %gep786 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep785, i64 %indvars.iv701
  %i.pd = load i16, ptr %gep786, align 2, !tbaa !26 ; 3 uses
  %.not496 = icmp sgt i16 %i.pd, -1
  br i1 %.not496, label %bb.am, label %switch.hole_check

switch.hole_check:                                ; preds = %bb.al
  %i.pe = and i16 %i.pd, 15                       ; 2 uses
  %switch.shifted = lshr i16 -32753, %i.pe
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup814, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.pf = add nuw i16 %i.pd, 1
  br label %.sink.split

switch.lookup814:                                 ; preds = %switch.hole_check
  %i.pg = zext nneg i16 %i.pe to i64
  %switch.gep815 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi.3, i64 %i.pg
  %switch.load816 = load i16, ptr %switch.gep815, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup814, %bb.am
  %.sink = phi i16 [ %i.pf, %bb.am ], [ %switch.load816, %switch.lookup814 ]
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.ox, i64 %indvars.iv701
  store i16 %.sink, ptr %i.ph, align 2, !tbaa !26
  br label %bb.an

bb.an:                                            ; preds = %switch.hole_check, %.sink.split
  %i.pi = add i8 %i.oy, 1                         ; 2 uses
  store i8 %i.pi, ptr %i.oo, align 2, !tbaa !70
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond705.not = icmp eq i64 %indvars.iv.next702, %i.ni
  br i1 %exitcond705.not, label %._crit_edge611, label %bb.ak

._crit_edge611:                                   ; preds = %bb.an, %bb.ak, %bb.aj
  %i.pj = getelementptr inbounds [2 x i8], ptr %.0433613, i64 %i.nh
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %exitcond710.not = icmp eq i64 %indvars.iv.next707, %wide.trip.count709
  br i1 %exitcond710.not, label %.preheader531, label %bb.aj
end_hunk_0
begin_hunk_1_@_Z23dtNavMeshDataSwapEndianPhi:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 28 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 29 ; 2 uses
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !27
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !27
  store i8 %i.cz, ptr %i.cw, align 1, !tbaa !27
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !27
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.da = load i32, ptr %i.y, align 4, !tbaa !40
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next136, %i.db
  br i1 %i.dc, label %.lr.ph107, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph107, %.preheader, %bb.b, %bb.a
  %.077 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.preheader ], [ true, %.lr.ph107 ]
  ret i1 %.077
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @_ZL9subdivideP6BVItemiiiRiP8dtBVNode(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !29     ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %3, align 4, !tbaa !29
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %4, i64 %i.d ; 13 uses
  %i.f = icmp eq i32 %i.a, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %0, i64 %i.h ; 7 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !26
  store i16 %i.j, ptr %i.e, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.l, ptr %i.m, align 2, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.o, ptr %i.p, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.r = load i16, ptr %i.q, align 2, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.r, ptr %i.s, align 2, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i16, ptr %i.t, align 4, !tbaa !26
  store i16 %i.u, ptr %i.g, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.w = load i16, ptr %i.v, align 2, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.w, ptr %i.x, align 2, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  %i.ab = sext i32 %1 to i64                      ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ab ; 7 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !26 ; 3 uses
  store i16 %i.ad, ptr %i.e, align 2, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !26 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !26 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !26 ; 3 uses
  store i16 %i.al, ptr %i.aa, align 2, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = load i16, ptr %i.am, align 4, !tbaa !26 ; 3 uses
  store i16 %i.an, ptr %i.g, align 2, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !26 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !26
  %.047.i = add nsw i32 %1, 1
  %i.ar = icmp slt i32 %.047.i, %2
  br i1 %i.ar, label %.lr.ph.preheader.i, label %_ZL11calcExtendsP6BVItemiiiPtS1_.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.as = add nsw i64 %i.ab, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %i.at = phi i16 [ %i.ap, %.lr.ph.preheader.i ], [ %i.bw, %bb.o ] ; 2 uses
  %i.au = phi i16 [ %i.an, %.lr.ph.preheader.i ], [ %i.bs, %bb.o ] ; 2 uses
  %i.av = phi i16 [ %i.al, %.lr.ph.preheader.i ], [ %i.bo, %bb.o ] ; 2 uses
  %i.aw = phi i16 [ %i.ai, %.lr.ph.preheader.i ], [ %i.bk, %bb.o ] ; 2 uses
  %i.ax = phi i16 [ %i.af, %.lr.ph.preheader.i ], [ %i.bg, %bb.o ] ; 2 uses
  %i.ay = phi i16 [ %i.ad, %.lr.ph.preheader.i ], [ %i.bc, %bb.o ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.as, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %indvars.iv.i ; 6 uses
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !26 ; 3 uses
  %i.bb = icmp ult i16 %i.ba, %i.ay
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i16 %i.ba, ptr %i.e, align 2, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.bc = phi i16 [ %i.ba, %bb.d ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !26 ; 3 uses
  %i.bf = icmp ult i16 %i.be, %i.ax
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 %i.be, ptr %i.ag, align 2, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = phi i16 [ %i.be, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !26 ; 3 uses
  %i.bj = icmp ult i16 %i.bi, %i.aw
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 %i.bi, ptr %i.aj, align 2, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi i16 [ %i.bi, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !26 ; 3 uses
  %i.bn = icmp ugt i16 %i.bm, %i.av
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.bm, ptr %i.aa, align 2, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = phi i16 [ %i.bm, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !26 ; 3 uses
  %i.br = icmp ugt i16 %i.bq, %i.au
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 %i.bq, ptr %i.g, align 2, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bs = phi i16 [ %i.bq, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !26 ; 3 uses
  %i.bv = icmp ugt i16 %i.bu, %i.at
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.bu, ptr %i.aq, align 2, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bw = phi i16 [ %i.bu, %bb.n ], [ %i.at, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %2, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZL11calcExtendsP6BVItemiiiPtS1_.exit, label %.lr.ph.i

_ZL11calcExtendsP6BVItemiiiPtS1_.exit:            ; preds = %bb.o, %bb.c
  %i.bx = phi i16 [ %i.ai, %bb.c ], [ %i.bk, %bb.o ]
  %i.by = phi i16 [ %i.ap, %bb.c ], [ %i.bw, %bb.o ]
  %i.bz = phi i16 [ %i.af, %bb.c ], [ %i.bg, %bb.o ]
  %i.ca = phi i16 [ %i.an, %bb.c ], [ %i.bs, %bb.o ]
  %i.cb = phi i16 [ %i.ad, %bb.c ], [ %i.bc, %bb.o ]
  %i.cc = phi i16 [ %i.al, %bb.c ], [ %i.bo, %bb.o ]
  %i.cd = sub i16 %i.cc, %i.cb                    ; 2 uses
  %i.ce = sub i16 %i.ca, %i.bz                    ; 2 uses
  %i.cf = sub i16 %i.by, %i.bx
  %i.cg = icmp ugt i16 %i.ce, %i.cd               ; 2 uses
  %spec.select8.i = tail call i16 @llvm.umax.i16(i16 %i.ce, i16 %i.cd)
  %i.ch = icmp ule i16 %i.cf, %spec.select8.i     ; 2 uses
  %i.ci = sext i32 %i.a to i64
  %switch.selectcmp = and i1 %i.ch, %i.cg
  %switch.select = select i1 %switch.selectcmp, ptr @_ZL12compareItemYPKvS0_, ptr @_ZL12compareItemZPKvS0_
  %switch.selectcmp9294 = xor i1 %i.cg, true
  %switch.selectcmp92 = and i1 %i.ch, %switch.selectcmp9294
  %switch.select93 = select i1 %switch.selectcmp92, ptr @_ZL12compareItemXPKvS0_, ptr %switch.select
  tail call void @qsort(ptr noundef nonnull %i.ac, i64 noundef %i.ci, i64 noundef 16, ptr noundef nonnull %switch.select93) #11
  %i.cj = sdiv i32 %i.a, 2
  %i.ck = add nsw i32 %i.cj, %1                   ; 2 uses
  tail call fastcc void @_ZL9subdivideP6BVItemiiiRiP8dtBVNode(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull %4)
  tail call fastcc void @_ZL9subdivideP6BVItemiiiRiP8dtBVNode(ptr noundef nonnull %0, i32 noundef %i.ck, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull %4)
  %i.cl = load i32, ptr %3, align 4, !tbaa !29
  %.neg = sub nsw i32 %i.b, %i.cl
  br label %common.ret

common.ret:                                       ; preds = %bb.b, %_ZL11calcExtendsP6BVItemiiiPtS1_.exit
  %.sink = phi i32 [ %i.z, %bb.b ], [ %.neg, %_ZL11calcExtendsP6BVItemiiiPtS1_.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sink, ptr %i.cm, align 4, !tbaa !93
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL12compareItemXPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !26
  %i.b = load i16, ptr %1, align 4, !tbaa !26
  %.0 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.a, i16 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL12compareItemYPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !26
  %.0 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.b, i16 %i.d)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL12compareItemZPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !26
  %.0 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.b, i16 %i.d)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"p1 float", !11, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"_ZTS21dtNavMeshCreateParams", !12, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !8, i64 40, !8, i64 44, !14, i64 48, !15, i64 56, !8, i64 64, !13, i64 72, !8, i64 80, !15, i64 88, !15, i64 96, !12, i64 104, !13, i64 112, !13, i64 120, !14, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !7, i64 156, !7, i64 168, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !17, i64 200}
!19 = !{!18, !8, i64 44}
!20 = !{!18, !12, i64 0}
!21 = !{!18, !8, i64 40}
!22 = !{!18, !12, i64 16}
!23 = !{!18, !15, i64 56}
!24 = !{!16, !16, i64 0}
!25 = !{!"short", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!18, !14, i64 48}
!29 = !{!8, !8, i64 0}
!30 = !{!"_ZTS12dtMeshHeader", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !7, i64 72, !7, i64 84, !16, i64 96}
!31 = !{!30, !8, i64 0}
!32 = !{!30, !8, i64 4}
!33 = !{!30, !8, i64 24}
!34 = !{!30, !8, i64 28}
!35 = !{!30, !8, i64 32}
!36 = !{!30, !8, i64 36}
!37 = !{!30, !8, i64 40}
!38 = !{!30, !8, i64 44}
!39 = !{!18, !16, i64 192}
!40 = !{!30, !8, i64 52}
!41 = !{!30, !8, i64 48}
!42 = !{!"_ZTS6BVItem", !7, i64 0, !7, i64 6, !8, i64 12}
!43 = !{!42, !8, i64 12}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !65, !66}
!48 = distinct !{!48, !65}
!49 = distinct !{!49, !81}
!50 = !{!18, !8, i64 8}
!51 = !{!18, !8, i64 136}
!52 = !{!18, !8, i64 64}
!53 = !{!18, !16, i64 196}
!54 = !{!18, !16, i64 188}
!55 = !{!18, !15, i64 88}
!56 = !{!18, !8, i64 80}
!57 = !{!18, !17, i64 200}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!30, !16, i64 96}
!61 = !{!30, !8, i64 56}
!62 = !{!30, !16, i64 68}
!63 = !{!45}
!64 = !{!46}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!18, !12, i64 24}
!68 = !{!18, !13, i64 32}
!69 = !{!"_ZTS6dtPoly", !8, i64 0, !7, i64 4, !7, i64 16, !25, i64 28, !7, i64 30, !7, i64 31}
!70 = !{!69, !7, i64 30}
!71 = !{!69, !25, i64 28}
!72 = !{!69, !7, i64 31}
!73 = !{!18, !12, i64 104}
!74 = !{!18, !13, i64 112}
!75 = !{!18, !13, i64 72}
!76 = !{!"_ZTS12dtPolyDetail", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 9}
!77 = !{!76, !8, i64 0}
!78 = !{!76, !7, i64 8}
!79 = !{!76, !8, i64 4}
!80 = !{!76, !7, i64 9}
!81 = !{!"llvm.loop.peeled.count", i32 2}
!82 = !{!13, !13, i64 0}
!83 = !{!"_ZTS19dtOffMeshConnection", !7, i64 0, !16, i64 24, !25, i64 28, !7, i64 30, !7, i64 31, !8, i64 32}
!84 = !{!83, !25, i64 28}
!85 = !{!18, !15, i64 96}
!86 = !{!83, !16, i64 24}
!87 = !{!18, !13, i64 120}
!88 = !{!83, !7, i64 30}
!89 = !{!83, !7, i64 31}
!90 = !{!18, !14, i64 128}
!91 = !{!83, !8, i64 32}
!92 = !{!"_ZTS8dtBVNode", !7, i64 0, !7, i64 6, !8, i64 12}
!93 = !{!92, !8, i64 12}
end_hunk_1
