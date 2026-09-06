Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshBuilder?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi:bb.a
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
  br label %bb.bc

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
  %scevgep = getelementptr i8, ptr %i.jt, i64 100
  %scevgep797 = getelementptr i8, ptr %0, i64 200
  %bound0 = icmp ult ptr %i.hf, %scevgep797
  %bound1 = icmp ult ptr %i.id, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count694, 2147483644 ; 3 uses
  %i.ju = load float, ptr %i.id, align 4, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert798 = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.jv = load float, ptr %i.iy, align 8, !tbaa !39, !alias.scope !63
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jw = load float, ptr %i.if, align 8, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert802 = insertelement <4 x float> poison, float %i.jw, i64 0
  %3 = shufflevector <4 x float> %broadcast.splatinsert798, <4 x float> %broadcast.splatinsert802, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.jx = load float, ptr %i.jr, align 4, !tbaa !53, !alias.scope !63
  %broadcast.splatinsert800 = insertelement <4 x float> poison, float %i.jx, i64 0
  %4 = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert800, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.jy = load float, ptr %i.ii, align 4, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert806 = insertelement <4 x float> poison, float %i.jy, i64 0
  %broadcast.splat807 = shufflevector <4 x float> %broadcast.splatinsert806, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = load float, ptr %i.iy, align 8, !tbaa !39, !alias.scope !63
  %broadcast.splatinsert804 = insertelement <4 x float> poison, float %i.jz, i64 0
  %broadcast.splat805 = shufflevector <4 x float> %broadcast.splatinsert804, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ka = mul nuw nsw i64 %index, 3               ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ka ; 3 uses
  %.idx808 = mul nuw i64 %index, 6
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx808 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 6
  %.idx809 = mul nuw i64 %index, 6
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx809 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %.idx810 = mul nuw i64 %index, 6
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx810 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 18
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ka
  %i.kj = load i16, ptr %i.kb, align 2, !tbaa !26
  %i.kk = load i16, ptr %i.kd, align 2, !tbaa !26
  %i.kl = load i16, ptr %i.kf, align 2, !tbaa !26
  %i.km = load i16, ptr %i.kh, align 2, !tbaa !26
  %i.kn = insertelement <4 x i16> poison, i16 %i.kj, i64 0
  %i.ko = insertelement <4 x i16> %i.kn, i16 %i.kk, i64 1
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kl, i64 2
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.km, i64 3
  %i.kr = uitofp <4 x i16> %i.kq to <4 x float>
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 14
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %i.kw = load i16, ptr %i.ks, align 2, !tbaa !26
  %i.kx = load i16, ptr %i.kt, align 2, !tbaa !26
  %i.ky = load i16, ptr %i.ku, align 2, !tbaa !26
  %i.kz = load i16, ptr %i.kv, align 2, !tbaa !26
  %i.la = insertelement <4 x i16> poison, i16 %i.kw, i64 0
  %i.lb = insertelement <4 x i16> %i.la, i16 %i.kx, i64 1
  %i.lc = insertelement <4 x i16> %i.lb, i16 %i.ky, i64 2
  %i.ld = insertelement <4 x i16> %i.lc, i16 %i.kz, i64 3
  %i.le = uitofp <4 x i16> %i.ld to <4 x float>
  %5 = shufflevector <4 x float> %i.kr, <4 x float> %i.le, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kc, i64 10
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.kg, i64 22
  %i.lj = load i16, ptr %i.lf, align 2, !tbaa !26
  %i.lk = load i16, ptr %i.lg, align 2, !tbaa !26
  %i.ll = load i16, ptr %i.lh, align 2, !tbaa !26
  %i.lm = load i16, ptr %i.li, align 2, !tbaa !26
  %i.ln = insertelement <4 x i16> poison, i16 %i.lj, i64 0
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.lk, i64 1
  %i.lp = insertelement <4 x i16> %i.lo, i16 %i.ll, i64 2
  %i.lq = insertelement <4 x i16> %i.lp, i16 %i.lm, i64 3
  %i.lr = uitofp <4 x i16> %i.lq to <4 x float>
  %i.ls = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lr, <4 x float> %broadcast.splat805, <4 x float> %broadcast.splat807)
  %i.lt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> %4, <8 x float> %3)
  %i.lu = shufflevector <4 x float> %i.ls, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.lt, <8 x float> %i.lu, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ki, align 4, !tbaa !24, !alias.scope !64, !noalias !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count694
  br i1 %cmp.n, label %.preheader532, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph602, %middle.block
  %indvars.iv691.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph602 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader532:                                    ; preds = %scalar.ph, %middle.block, %bb.af
  %i.lw = load i32, ptr %i.l, align 8, !tbaa !51  ; 3 uses
  %i.lx = icmp sgt i32 %i.lw, 0                   ; 2 uses
  br i1 %i.lx, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %.preheader532
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.trip.count699 = zext nneg i32 %i.lw to i64
  br label %bb.ag

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv691 = phi i64 [ %indvars.iv.next692, %scalar.ph ], [ %indvars.iv691.ph, %scalar.ph.preheader ] ; 2 uses
  %i.lz = mul nuw nsw i64 %indvars.iv691, 3       ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.lz ; 3 uses
  %i.mc = load float, ptr %i.id, align 4, !tbaa !24
  %i.md = load i16, ptr %i.ma, align 2, !tbaa !26
  %i.me = uitofp i16 %i.md to float
  %i.mf = load float, ptr %i.iy, align 8, !tbaa !39
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.me, float %i.mf, float %i.mc)
  store float %i.mg, ptr %i.mb, align 4, !tbaa !24
  %i.mh = load float, ptr %i.if, align 8, !tbaa !24
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  %i.mj = load float, ptr %i.jr, align 4, !tbaa !53
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.ml = load <2 x i16>, ptr %i.mi, align 2, !tbaa !26
  %i.mm = uitofp <2 x i16> %i.ml to <2 x float>   ; 2 uses
  %i.mn = extractelement <2 x float> %i.mm, i64 0
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.mn, float %i.mj, float %i.mh)
  store float %i.mo, ptr %i.mk, align 4, !tbaa !24
  %i.mp = load float, ptr %i.ii, align 4, !tbaa !24
  %i.mq = load float, ptr %i.iy, align 8, !tbaa !39
  %i.mr = extractelement <2 x float> %i.mm, i64 1
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.mr, float %i.mq, float %i.mp)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store float %i.ms, ptr %i.mt, align 4, !tbaa !24
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %.preheader532, label %scalar.ph, !llvm.loop !48

._crit_edge606:                                   ; preds = %bb.ai, %.preheader532
  %i.mu = icmp sgt i32 %i.iu, 0                   ; 3 uses
  br i1 %i.mu, label %.lr.ph616, label %.preheader531

.lr.ph616:                                        ; preds = %._crit_edge606
  %i.mv = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !67
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !68
  %i.na = icmp sgt i32 %i.b, 0
  %i.nb = shl nsw i32 %i.b, 1
  %i.nc = sext i32 %i.nb to i64
  %i.nd = zext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count709 = zext nneg i32 %i.iu to i64
  br label %bb.aj

bb.ag:                                            ; preds = %.lr.ph605, %bb.ai
  %indvars.iv696 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next697, %bb.ai ] ; 3 uses
  %.0436603 = phi i32 [ 0, %.lr.ph605 ], [ %.1437, %bb.ai ] ; 3 uses
  %i.ne = shl nuw nsw i64 %indvars.iv696, 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.0434, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !27
  %i.nh = icmp eq i8 %i.ng, -1
  br i1 %i.nh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ni = load ptr, ptr %i.ly, align 8, !tbaa !55
  %.idx762 = mul nuw nsw i64 %indvars.iv696, 24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.idx762 ; 6 uses
  %i.nk = shl nsw i32 %.0436603, 1
  %i.nl = add nsw i32 %i.nk, %i.jo
  %i.nm = mul nsw i32 %i.nl, 3
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.nn ; 6 uses
  %i.np = load float, ptr %i.nj, align 4, !tbaa !24
  store float %i.np, ptr %i.no, align 4, !tbaa !24
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !24
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store float %i.nr, ptr %i.ns, align 4, !tbaa !24
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store float %i.nu, ptr %i.nv, align 4, !tbaa !24
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !24
  store float %i.ny, ptr %i.nw, align 4, !tbaa !24
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store float %i.oa, ptr %i.ob, align 4, !tbaa !24
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  %i.od = load float, ptr %i.oc, align 4, !tbaa !24
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  store float %i.od, ptr %i.oe, align 4, !tbaa !24
  %i.of = add nsw i32 %.0436603, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.1437 = phi i32 [ %i.of, %bb.ah ], [ %.0436603, %bb.ag ]
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge606, label %bb.ag

.preheader531:                                    ; preds = %._crit_edge611, %._crit_edge606
  br i1 %i.lx, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader531
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.trip.count714 = zext nneg i32 %i.lw to i64
  br label %bb.ap

bb.aj:                                            ; preds = %.lr.ph616, %._crit_edge611
  %indvars.iv706 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next707, %._crit_edge611 ] ; 4 uses
  %.0433613 = phi ptr [ %i.mv, %.lr.ph616 ], [ %i.pe, %._crit_edge611 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %indvars.iv706 ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 30 ; 2 uses
  store i8 0, ptr %i.oj, align 2, !tbaa !70
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv706
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !26
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store i16 %i.ol, ptr %i.om, align 4, !tbaa !71
  %i.on = getelementptr inbounds nuw i8, ptr %i.mz, i64 %indvars.iv706
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !27
  %i.op = getelementptr inbounds nuw i8, ptr %i.oi, i64 31
  %i.oq = and i8 %i.oo, 63
  store i8 %i.oq, ptr %i.op, align 1, !tbaa !72
  br i1 %i.na, label %.lr.ph610, label %._crit_edge611

.lr.ph610:                                        ; preds = %bb.aj
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %invariant.gep785 = getelementptr inbounds nuw [2 x i8], ptr %.0433613, i64 %i.nd
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph610, %bb.ao
  %i.ot = phi i8 [ 0, %.lr.ph610 ], [ %i.pd, %bb.ao ]
  %indvars.iv701 = phi i64 [ 0, %.lr.ph610 ], [ %indvars.iv.next702, %bb.ao ] ; 5 uses
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %.0433613, i64 %indvars.iv701
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !26 ; 2 uses
  %i.ow = icmp eq i16 %i.ov, -1
  br i1 %i.ow, label %._crit_edge611, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.or, i64 %indvars.iv701
  store i16 %i.ov, ptr %i.ox, align 2, !tbaa !26
  %gep786 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep785, i64 %indvars.iv701
  %i.oy = load i16, ptr %gep786, align 2, !tbaa !26 ; 3 uses
  %.not496 = icmp sgt i16 %i.oy, -1
  br i1 %.not496, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.oz = and i16 %i.oy, 15                       ; 2 uses
  %switch.shifted = lshr i16 -32753, %i.oz
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup814, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.pa = add nuw i16 %i.oy, 1
  br label %.sink.split

switch.lookup814:                                 ; preds = %bb.am
  %i.pb = zext nneg i16 %i.oz to i64
  %switch.gep815 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi.3, i64 %i.pb
  %switch.load816 = load i16, ptr %switch.gep815, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup814, %bb.an
  %.sink = phi i16 [ %i.pa, %bb.an ], [ %switch.load816, %switch.lookup814 ]
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %indvars.iv701
  store i16 %.sink, ptr %i.pc, align 2, !tbaa !26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %.sink.split
  %i.pd = add i8 %i.ot, 1                         ; 2 uses
  store i8 %i.pd, ptr %i.oj, align 2, !tbaa !70
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond705.not = icmp eq i64 %indvars.iv.next702, %i.nd
  br i1 %exitcond705.not, label %._crit_edge611, label %bb.ak

._crit_edge611:                                   ; preds = %bb.ao, %bb.ak, %bb.aj
  %i.pe = getelementptr inbounds [2 x i8], ptr %.0433613, i64 %i.nc
end_hunk_0
