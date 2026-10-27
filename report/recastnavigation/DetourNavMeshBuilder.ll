Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshBuilder?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi:bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 6
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !26
  %i.hf = icmp eq i16 %i.he, -1
  br i1 %i.hf, label %._crit_edge579, label %bb.an

bb.an:                                            ; preds = %.lr.ph578.3
  br i1 %exitcond673.not.3, label %._crit_edge579.loopexit, label %.lr.ph578.4

.lr.ph578.4:                                      ; preds = %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !26
  %i.hi = icmp eq i16 %i.hh, -1
  br i1 %i.hi, label %._crit_edge579, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph578.4
  br i1 %exitcond673.not.4, label %._crit_edge579.loopexit, label %.lr.ph578.5

.lr.ph578.5:                                      ; preds = %bb.ao
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 10
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !26
  %i.hl = icmp eq i16 %i.hk, -1
  br i1 %i.hl, label %._crit_edge579, label %._crit_edge579.loopexit

._crit_edge579.loopexit:                          ; preds = %.lr.ph578.5, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  br label %._crit_edge579

._crit_edge579:                                   ; preds = %.lr.ph578, %.lr.ph578.1, %.lr.ph578.2, %.lr.ph578.3, %.lr.ph578.4, %.lr.ph578.5, %._crit_edge579.loopexit, %bb.aj
  %.0451.lcssa = phi i32 [ 0, %bb.aj ], [ %i.b, %._crit_edge579.loopexit ], [ 0, %.lr.ph578 ], [ 1, %.lr.ph578.1 ], [ 2, %.lr.ph578.2 ], [ 3, %.lr.ph578.3 ], [ 4, %.lr.ph578.4 ], [ 5, %.lr.ph578.5 ]
  %i.hm = add i32 %i.gu, %.0455583
  %i.hn = sub i32 %i.hm, %.0451.lcssa             ; 2 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %.loopexit534, label %bb.aj

bb.ap:                                            ; preds = %.lr.ph598, %._crit_edge592
  %indvars.iv686 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next687, %._crit_edge592 ] ; 2 uses
  %.0453596 = phi i32 [ 0, %.lr.ph598 ], [ %i.ik, %._crit_edge592 ]
  %i.ho = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.hp = mul i32 %i.gf, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.hq ; 6 uses
  br i1 %i.gg, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %bb.ap
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !26
  %i.ht = icmp eq i16 %i.hs, -1
  br i1 %i.ht, label %._crit_edge592, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph591
  br i1 %exitcond685.not, label %._crit_edge592.loopexit, label %.lr.ph591.1

.lr.ph591.1:                                      ; preds = %bb.aq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !26
  %i.hw = icmp eq i16 %i.hv, -1
  br i1 %i.hw, label %._crit_edge592, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph591.1
  br i1 %exitcond685.not.1, label %._crit_edge592.loopexit, label %.lr.ph591.2

.lr.ph591.2:                                      ; preds = %bb.ar
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !26
  %i.hz = icmp eq i16 %i.hy, -1
  br i1 %i.hz, label %._crit_edge592, label %bb.as

bb.as:                                            ; preds = %.lr.ph591.2
  br i1 %exitcond685.not.2, label %._crit_edge592.loopexit, label %.lr.ph591.3

.lr.ph591.3:                                      ; preds = %bb.as
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 6
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !26
  %i.ic = icmp eq i16 %i.ib, -1
  br i1 %i.ic, label %._crit_edge592, label %bb.at

bb.at:                                            ; preds = %.lr.ph591.3
  br i1 %exitcond685.not.3, label %._crit_edge592.loopexit, label %.lr.ph591.4

.lr.ph591.4:                                      ; preds = %bb.at
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !26
  %i.if = icmp eq i16 %i.ie, -1
  br i1 %i.if, label %._crit_edge592, label %bb.au

bb.au:                                            ; preds = %.lr.ph591.4
  br i1 %exitcond685.not.4, label %._crit_edge592.loopexit, label %.lr.ph591.5

.lr.ph591.5:                                      ; preds = %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 10
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !26
  %i.ii = icmp eq i16 %i.ih, -1
  br i1 %i.ii, label %._crit_edge592, label %._crit_edge592.loopexit

._crit_edge592.loopexit:                          ; preds = %.lr.ph591.5, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  br label %._crit_edge592

._crit_edge592:                                   ; preds = %.lr.ph591, %.lr.ph591.1, %.lr.ph591.2, %.lr.ph591.3, %.lr.ph591.4, %.lr.ph591.5, %._crit_edge592.loopexit, %bb.ap
  %.0448.lcssa = phi i32 [ 0, %bb.ap ], [ %i.b, %._crit_edge592.loopexit ], [ 0, %.lr.ph591 ], [ 1, %.lr.ph591.1 ], [ 2, %.lr.ph591.2 ], [ 3, %.lr.ph591.3 ], [ 4, %.lr.ph591.4 ], [ 5, %.lr.ph591.5 ]
  %i.ij = add i32 %.0453596, -2
  %i.ik = add i32 %i.ij, %.0448.lcssa             ; 2 uses
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next687, %wide.trip.count689
  br i1 %exitcond690.not, label %.loopexit534, label %bb.ap

.loopexit534:                                     ; preds = %._crit_edge579, %._crit_edge592, %._crit_edge571.thread, %.thread773
  %i.il = phi ptr [ %i.fy, %._crit_edge571.thread ], [ %i.fy, %.thread773 ], [ %i.gd, %._crit_edge592 ], [ %i.gi, %._crit_edge579 ] ; 2 uses
  %i.im = phi i32 [ %.3445, %._crit_edge571.thread ], [ %.3445, %.thread773 ], [ %i.gc, %._crit_edge592 ], [ %i.gh, %._crit_edge579 ] ; 2 uses
  %.1456 = phi i32 [ 0, %._crit_edge571.thread ], [ 0, %.thread773 ], [ 0, %._crit_edge592 ], [ %i.hn, %._crit_edge579 ] ; 2 uses
  %.1454 = phi i32 [ 0, %._crit_edge571.thread ], [ %i.gb, %.thread773 ], [ %i.ik, %._crit_edge592 ], [ %i.gk, %._crit_edge579 ] ; 2 uses
  %i.in = mul i32 %i.dy, 12                       ; 2 uses
  %i.io = shl i32 %i.dw, 5                        ; 2 uses
  %i.ip = mul i32 %i.im, 12                       ; 2 uses
  %i.iq = mul i32 %i.dv, 12                       ; 2 uses
  %i.ir = mul i32 %.1456, 12                      ; 2 uses
  %i.is = shl i32 %.1454, 2                       ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !57, !range !58, !noundef !59
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = shl i32 %i.dv, 5
  %i.ix = select i1 %i.iv, i32 %i.iw, i32 0       ; 2 uses
  %i.iy = mul i32 %.2441, 36
  %i.iz = add i32 %i.iy, 100
  %i.ja = add i32 %i.iz, %i.iq
  %i.jb = add i32 %i.ja, %i.io
  %i.jc = add i32 %i.jb, %i.in
  %i.jd = add i32 %i.jc, %i.ip
  %i.je = add i32 %i.jd, %i.ir
  %i.jf = add i32 %i.je, %i.is
  %i.jg = add i32 %i.jf, %i.ix                    ; 2 uses
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.jh, i32 noundef 0) #11 ; 26 uses
  %.not491.not = icmp eq ptr %i.ji, null
  br i1 %.not491.not, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit534
  tail call void @_Z6dtFreePv(ptr noundef %.0434) #11
  br label %bb.cl

bb.aw:                                            ; preds = %.loopexit534
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ji, i8 0, i64 %i.jh, i1 false)
  %i.jj = getelementptr i8, ptr %i.ji, i64 100    ; 5 uses
  %i.jk = sext i32 %i.in to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk ; 5 uses
  %i.jm = sext i32 %i.io to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jm
  %i.jo = sext i32 %i.ip to i64
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 %i.jo ; 3 uses
  %i.jq = sext i32 %i.iq to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jq ; 2 uses
  %i.js = sext i32 %i.ir to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.js ; 5 uses
  %i.ju = sext i32 %i.is to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ju ; 2 uses
  %i.jw = sext i32 %i.ix to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jw
  store i32 1145979222, ptr %i.ji, align 4, !tbaa !31
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 7, ptr %i.jy, align 4, !tbaa !32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.kb = load <4 x i32>, ptr %i.ka, align 4, !tbaa !29
  %i.kc = shufflevector <4 x i32> %i.kb, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %i.kc, ptr %i.jz, align 4, !tbaa !29
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store i32 %i.dw, ptr %i.kd, align 4, !tbaa !33
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ji, i64 28
  store i32 %i.dy, ptr %i.ke, align 4, !tbaa !34
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  store i32 %i.im, ptr %i.kf, align 4, !tbaa !35
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !24
  store float %i.ki, ptr %i.kg, align 4, !tbaa !24
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.kk = load float, ptr %i.kj, align 8, !tbaa !24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ji, i64 76
  store float %i.kk, ptr %i.kl, align 4, !tbaa !24
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !24
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ji, i64 80
  store float %i.kn, ptr %i.ko, align 4, !tbaa !24
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ji, i64 84
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !24
  store float %i.kr, ptr %i.kp, align 4, !tbaa !24
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ji, i64 88
  store float %i.kt, ptr %i.ku, align 4, !tbaa !24
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.kw = load float, ptr %i.kv, align 8, !tbaa !24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ji, i64 92
  store float %i.kw, ptr %i.kx, align 4, !tbaa !24
  %i.ky = load i32, ptr %i.h, align 8, !tbaa !21  ; 9 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ji, i64 36
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !36
  %i.la = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  store i32 %.1456, ptr %i.la, align 4, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ji, i64 44
  store i32 %.1454, ptr %i.lb, align 4, !tbaa !38
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !39
  %i.le = fdiv float 1.000000e+00, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  store float %i.le, ptr %i.lf, align 4, !tbaa !60
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  store i32 %i.ky, ptr %i.lg, align 4, !tbaa !61
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.li = getelementptr inbounds nuw i8, ptr %i.ji, i64 60
  %i.lj = load <2 x float>, ptr %i.lh, align 4, !tbaa !24
  store <2 x float> %i.lj, ptr %i.li, align 4, !tbaa !24
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !54
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ji, i64 68
  store float %i.ll, ptr %i.lm, align 4, !tbaa !62
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ji, i64 52
  store i32 %.2441, ptr %i.ln, align 4, !tbaa !40
  %i.lo = load i8, ptr %i.it, align 8, !tbaa !57, !range !58, !noundef !59
  %i.lp = trunc nuw i8 %i.lo to i1
  %i.lq = shl nsw i32 %i.ky, 1
  %spec.select527 = select i1 %i.lp, i32 %i.lq, i32 0
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  store i32 %spec.select527, ptr %i.lr, align 4, !tbaa !41
  %i.ls = load i32, ptr %i.d, align 8, !tbaa !50  ; 5 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %.lr.ph602, label %.preheader532

.lr.ph602:                                        ; preds = %bb.aw
  %i.lu = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %wide.trip.count694 = zext nneg i32 %i.ls to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.ls, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph602
  %i.lw = mul nuw nsw i64 %wide.trip.count694, 12
  %i.lx = getelementptr i8, ptr %i.ji, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 100
  %i.lz = getelementptr i8, ptr %0, i64 200
  %bound0 = icmp ult ptr %i.jj, %i.lz
  %bound1 = icmp ult ptr %i.kh, %i.ly
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count694, 2147483644 ; 3 uses
  %i.ma = load float, ptr %i.kh, align 4, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert798 = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mb = load float, ptr %i.lc, align 8, !tbaa !39, !alias.scope !63
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mc = load float, ptr %i.kj, align 8, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert800.a = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.md = load float, ptr %i.lv, align 4, !tbaa !53, !alias.scope !63
  %broadcast.splatinsert806 = insertelement <4 x float> poison, float %i.md, i64 0
  %broadcast.splat807 = shufflevector <4 x float> %broadcast.splatinsert806, <4 x float> poison, <4 x i32> zeroinitializer
  %i.me = load float, ptr %i.km, align 4, !tbaa !24, !alias.scope !63
  %broadcast.splatinsert804 = insertelement <4 x float> poison, float %i.me, i64 0
  %broadcast.splat805 = shufflevector <4 x float> %broadcast.splatinsert804, <4 x float> poison, <4 x i32> zeroinitializer
  %3 = shufflevector <4 x float> %broadcast.splat, <4 x float> %broadcast.splat807, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mf = shufflevector <4 x float> %broadcast.splatinsert798, <4 x float> %broadcast.splatinsert800.a, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.mg = mul nuw nsw i64 %index, 3               ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.mg ; 3 uses
  %.idx808.a = mul nuw i64 %index, 6
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.idx808.a ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 6
  %.idx809 = mul nuw i64 %index, 6
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.idx809 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %.idx810 = mul nuw i64 %index, 6
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.idx810 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 18
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.mg
  %i.mp = load i16, ptr %i.mh, align 2, !tbaa !26
  %i.mq = load i16, ptr %i.mj, align 2, !tbaa !26
  %i.mr = load i16, ptr %i.ml, align 2, !tbaa !26
  %i.ms = load i16, ptr %i.mn, align 2, !tbaa !26
  %i.mt = insertelement <4 x i16> poison, i16 %i.mp, i64 0
  %i.mu = insertelement <4 x i16> %i.mt, i16 %i.mq, i64 1
  %i.mv = insertelement <4 x i16> %i.mu, i16 %i.mr, i64 2
  %i.mw = insertelement <4 x i16> %i.mv, i16 %i.ms, i64 3
  %i.mx = uitofp <4 x i16> %i.mw to <4 x float>
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mk, i64 14
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  %i.nc = load i16, ptr %i.my, align 2, !tbaa !26
  %i.nd = load i16, ptr %i.mz, align 2, !tbaa !26
  %i.ne = load i16, ptr %i.na, align 2, !tbaa !26
  %i.nf = load i16, ptr %i.nb, align 2, !tbaa !26
  %i.ng = insertelement <4 x i16> poison, i16 %i.nc, i64 0
  %i.nh = insertelement <4 x i16> %i.ng, i16 %i.nd, i64 1
  %i.ni = insertelement <4 x i16> %i.nh, i16 %i.ne, i64 2
  %i.nj = insertelement <4 x i16> %i.ni, i16 %i.nf, i64 3
  %i.nk = uitofp <4 x i16> %i.nj to <4 x float>
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mi, i64 10
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %i.mm, i64 22
  %i.np = load i16, ptr %i.nl, align 2, !tbaa !26
  %i.nq = load i16, ptr %i.nm, align 2, !tbaa !26
  %i.nr = load i16, ptr %i.nn, align 2, !tbaa !26
  %i.ns = load i16, ptr %i.no, align 2, !tbaa !26
  %i.nt = insertelement <4 x i16> poison, i16 %i.np, i64 0
  %i.nu = insertelement <4 x i16> %i.nt, i16 %i.nq, i64 1
  %i.nv = insertelement <4 x i16> %i.nu, i16 %i.nr, i64 2
  %i.nw = insertelement <4 x i16> %i.nv, i16 %i.ns, i64 3
  %i.nx = uitofp <4 x i16> %i.nw to <4 x float>
  %i.ny = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nx, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat805)
  %i.nz = shufflevector <4 x float> %i.mx, <4 x float> %i.nk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oa = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nz, <8 x float> %3, <8 x float> %i.mf)
  %i.ob = shufflevector <4 x float> %i.ny, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.oa, <8 x float> %i.ob, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.mo, align 4, !tbaa !24, !alias.scope !64, !noalias !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oc = icmp eq i64 %index.next, %n.vec
  br i1 %i.oc, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count694
  br i1 %cmp.n, label %.preheader532, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph602, %middle.block
  %indvars.iv691.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph602 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader532:                                    ; preds = %scalar.ph, %middle.block, %bb.aw
  %i.od = load i32, ptr %i.l, align 8, !tbaa !51  ; 3 uses
  %i.oe = icmp sgt i32 %i.od, 0                   ; 2 uses
  br i1 %i.oe, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %.preheader532
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.trip.count699 = zext nneg i32 %i.od to i64
  br label %bb.ax

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv691 = phi i64 [ %indvars.iv.next692, %scalar.ph ], [ %indvars.iv691.ph, %scalar.ph.preheader ] ; 2 uses
  %i.og = mul nuw nsw i64 %indvars.iv691, 3       ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.og ; 3 uses
  %i.oj = load float, ptr %i.kh, align 4, !tbaa !24
  %i.ok = load i16, ptr %i.oh, align 2, !tbaa !26
  %i.ol = uitofp i16 %i.ok to float
  %i.om = load float, ptr %i.lc, align 8, !tbaa !39
  %i.on = tail call float @llvm.fmuladd.f32(float %i.ol, float %i.om, float %i.oj)
  store float %i.on, ptr %i.oi, align 4, !tbaa !24
  %i.oo = load float, ptr %i.kj, align 8, !tbaa !24
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.oq = load float, ptr %i.lv, align 4, !tbaa !53
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.os = load <2 x i16>, ptr %i.op, align 2, !tbaa !26
  %i.ot = uitofp <2 x i16> %i.os to <2 x float>   ; 2 uses
  %i.ou = extractelement <2 x float> %i.ot, i64 0
  %i.ov = tail call float @llvm.fmuladd.f32(float %i.ou, float %i.oq, float %i.oo)
  store float %i.ov, ptr %i.or, align 4, !tbaa !24
  %i.ow = load float, ptr %i.km, align 4, !tbaa !24
  %i.ox = load float, ptr %i.lc, align 8, !tbaa !39
  %i.oy = extractelement <2 x float> %i.ot, i64 1
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.ox, float %i.ow)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store float %i.oz, ptr %i.pa, align 4, !tbaa !24
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %.preheader532, label %scalar.ph, !llvm.loop !48

._crit_edge606:                                   ; preds = %bb.az, %.preheader532
  %i.pb = icmp sgt i32 %i.ky, 0                   ; 3 uses
  br i1 %i.pb, label %.lr.ph616, label %.preheader531

.lr.ph616:                                        ; preds = %._crit_edge606
  %i.pc = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !67
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !68
  %i.ph = icmp sgt i32 %i.b, 0
  %i.pi = shl nsw i32 %i.b, 1
  %i.pj = sext i32 %i.pi to i64
  %i.pk = zext i32 %i.b to i64
  %wide.trip.count709 = zext nneg i32 %i.ky to i64
  %exitcond705.not = icmp eq i32 %i.b, 1
  %exitcond705.not.1 = icmp eq i32 %i.b, 2
  %exitcond705.not.2 = icmp eq i32 %i.b, 3
  %exitcond705.not.3 = icmp eq i32 %i.b, 4
  %exitcond705.not.4 = icmp eq i32 %i.b, 5
  br label %bb.ba

bb.ax:                                            ; preds = %.lr.ph605, %bb.az
  %indvars.iv696 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next697, %bb.az ] ; 3 uses
  %.0436603 = phi i32 [ 0, %.lr.ph605 ], [ %.1437, %bb.az ] ; 3 uses
  %i.pl = shl nuw nsw i64 %indvars.iv696, 1
  %i.pm = getelementptr inbounds nuw i8, ptr %.0434, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !27
  %i.po = icmp eq i8 %i.pn, -1
  br i1 %i.po, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.pp = load ptr, ptr %i.of, align 8, !tbaa !55
  %.idx762 = mul nuw nsw i64 %indvars.iv696, 24
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.idx762 ; 6 uses
  %i.pr = shl nsw i32 %.0436603, 1
  %i.ps = add nsw i32 %i.pr, %i.ls
  %i.pt = mul nsw i32 %i.ps, 3
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.pu ; 6 uses
  %i.pw = load float, ptr %i.pq, align 4, !tbaa !24
  store float %i.pw, ptr %i.pv, align 4, !tbaa !24
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.py = load float, ptr %i.px, align 4, !tbaa !24
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  store float %i.py, ptr %i.pz, align 4, !tbaa !24
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store float %i.qb, ptr %i.qc, align 4, !tbaa !24
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !24
  store float %i.qf, ptr %i.qd, align 4, !tbaa !24
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !24
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store float %i.qh, ptr %i.qi, align 4, !tbaa !24
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pq, i64 20
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !24
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pv, i64 20
  store float %i.qk, ptr %i.ql, align 4, !tbaa !24
  %i.qm = add nsw i32 %.0436603, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.1437 = phi i32 [ %i.qm, %bb.ay ], [ %.0436603, %bb.ax ]
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge606, label %bb.ax

.preheader531:                                    ; preds = %._crit_edge611, %._crit_edge606
  br i1 %i.oe, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader531
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.trip.count714 = zext nneg i32 %i.od to i64
  br label %bb.by

bb.ba:                                            ; preds = %.lr.ph616, %._crit_edge611
  %indvars.iv706 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next707, %._crit_edge611 ] ; 4 uses
  %.0433613 = phi ptr [ %i.pc, %.lr.ph616 ], [ %i.sz, %._crit_edge611 ] ; 8 uses
  %i.qp = getelementptr inbounds nuw [32 x i8], ptr %i.jl, i64 %indvars.iv706 ; 15 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 30 ; 7 uses
  store i8 0, ptr %i.qq, align 2, !tbaa !70
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %indvars.iv706
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !26
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 28
  store i16 %i.qs, ptr %i.qt, align 4, !tbaa !71
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv706
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !27
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qp, i64 31
  %i.qx = and i8 %i.qv, 63
  store i8 %i.qx, ptr %i.qw, align 1, !tbaa !72
  br i1 %i.ph, label %.lr.ph610, label %._crit_edge611

.lr.ph610:                                        ; preds = %bb.ba
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %invariant.gep785 = getelementptr inbounds nuw [2 x i8], ptr %.0433613, i64 %i.pk ; 6 uses
  %i.ra = load i16, ptr %.0433613, align 2, !tbaa !26 ; 2 uses
  %i.rb = icmp eq i16 %i.ra, -1
  br i1 %i.rb, label %._crit_edge611, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph610
  store i16 %i.ra, ptr %i.qy, align 4, !tbaa !26
  %i.rc = load i16, ptr %invariant.gep785, align 2, !tbaa !26 ; 3 uses
  %.not496 = icmp sgt i16 %i.rc, -1
  br i1 %.not496, label %bb.bc, label %switch.hole_check

switch.hole_check:                                ; preds = %bb.bb
  %i.rd = and i16 %i.rc, 15                       ; 2 uses
  %switch.shifted = lshr i16 -32753, %i.rd
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup814, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.re = add nuw i16 %i.rc, 1
  br label %.sink.split

switch.lookup814:                                 ; preds = %switch.hole_check
  %i.rf = zext nneg i16 %i.rd to i64
  %switch.gep815 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi.3, i64 %i.rf
  %switch.load816 = load i16, ptr %switch.gep815, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup814, %bb.bc
  %.sink = phi i16 [ %i.re, %bb.bc ], [ %switch.load816, %switch.lookup814 ]
  store i16 %.sink, ptr %i.qz, align 4, !tbaa !26
  br label %bb.bd

bb.bd:                                            ; preds = %switch.hole_check, %.sink.split
  store i8 1, ptr %i.qq, align 2, !tbaa !70
  br i1 %exitcond705.not, label %._crit_edge611, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.rg = getelementptr inbounds nuw i8, ptr %.0433613, i64 2
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !26 ; 2 uses
  %i.ri = icmp eq i16 %i.rh, -1
  br i1 %i.ri, label %._crit_edge611, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qp, i64 6
  store i16 %i.rh, ptr %i.rj, align 2, !tbaa !26
end_hunk_0
