Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle?download=true
inline.NumInlined: 349
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z12insertvertexP4meshP8behaviorPdP4otriP4osubii:bb.a
  store ptr %i.vl, ptr %i.vm, align 8, !tbaa !83
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.vj
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 48
  store ptr %i.qn, ptr %i.vo, align 8, !tbaa !83
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.vp = getelementptr i8, ptr %i.qh, i64 48     ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !83
  %i.vr = ptrtoint ptr %i.vq to i64               ; 3 uses
  %i.vs = and i64 %i.vr, -4
  %i.vt = inttoptr i64 %i.vs to ptr               ; 2 uses
  %.not535 = icmp eq ptr %i.vi, %i.vt
  br i1 %.not535, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.vu = and i64 %i.vr, 1
  store ptr %i.vi, ptr %i.vp, align 8, !tbaa !83
  %i.vv = and i64 %i.vr, -3
  %i.vw = inttoptr i64 %i.vv to ptr
  %i.vx = getelementptr i8, ptr %i.rq, i64 48
  store ptr %i.vw, ptr %i.vx, align 8, !tbaa !83
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 48
  store ptr %i.rq, ptr %i.vz, align 8, !tbaa !83
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bd
  store ptr %i.qb, ptr %i.qn, align 8, !tbaa !83
  %i.wa = ptrtoint ptr %i.qn to i64               ; 2 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qd
  store ptr %i.qn, ptr %i.wb, align 8, !tbaa !83
  store ptr %i.qi, ptr %i.rq, align 8, !tbaa !83
  %i.wc = ptrtoint ptr %i.rq to i64               ; 2 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qk
  store ptr %i.rq, ptr %i.wd, align 8, !tbaa !83
  %i.we = or i64 %i.ti, %i.wc
  %i.wf = inttoptr i64 %i.we to ptr
  store ptr %i.wf, ptr %i.tf, align 8, !tbaa !83
  %i.wg = or i64 %i.te, %i.wa
  %i.wh = inttoptr i64 %i.wg to ptr
  store ptr %i.wh, ptr %i.tn, align 8, !tbaa !83
  %i.wi = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.te
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !34 ; 2 uses
  store i32 %i.wj, ptr %i.rp, align 8, !tbaa !82
  %i.wk = sext i32 %i.wj to i64                   ; 2 uses
  %i.wl = or i64 %i.wk, %i.wa
  %i.wm = inttoptr i64 %i.wl to ptr
  store ptr %i.wm, ptr %i.qa, align 8, !tbaa !83
  %i.wn = ptrtoint ptr %i.pp to i64               ; 3 uses
  %i.wo = or i64 %i.pz, %i.wn
  %i.wp = inttoptr i64 %i.wo to ptr
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.wk
  store ptr %i.wp, ptr %i.wq, align 8, !tbaa !83
  %i.wr = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.ti
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !34 ; 2 uses
  store i32 %i.ws, ptr %i.sp, align 8, !tbaa !82
  %i.wt = sext i32 %i.ws to i64                   ; 2 uses
  %i.wu = or i64 %i.wt, %i.wc
  %i.wv = inttoptr i64 %i.wu to ptr
  store ptr %i.wv, ptr %i.qh, align 8, !tbaa !83
  %i.ww = or i64 %i.qg, %i.wn
  %i.wx = inttoptr i64 %i.ww to ptr
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.wt
  store ptr %i.wx, ptr %i.wy, align 8, !tbaa !83
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 82764
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !152
  %.not536 = icmp eq i32 %i.xa, 0
  br i1 %.not536, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false)
  %i.xd = load ptr, ptr %i.xb, align 8, !tbaa !97 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.xd, ptr %i.xe, align 8, !tbaa !98
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xg = ptrtoint ptr %i.xf to i64               ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !99
  %i.xj = sext i32 %i.xi to i64                   ; 2 uses
  %i.xk = add i64 %i.xj, %i.xg
  %i.xl = urem i64 %i.xg, %i.xj
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = inttoptr i64 %i.xm to ptr
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.xn, ptr %i.xo, align 8, !tbaa !100
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !101
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 %i.xq, ptr %i.xr, align 8, !tbaa !102
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr null, ptr %i.xs, align 8, !tbaa !103
  %i.xt = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %i.xb) ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 82632
  store ptr %i.xt, ptr %i.xu, align 8, !tbaa !198
  %i.xv = or i64 %i.pt, %i.wn
  %i.xw = inttoptr i64 %i.xv to ptr
  store ptr %i.xw, ptr %i.xt, align 8, !tbaa !199
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store ptr null, ptr %i.xx, align 8, !tbaa !201
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.xy = load i32, ptr %i.a, align 4, !tbaa !70
  %i.xz = icmp sgt i32 %i.xy, 2
  br i1 %i.xz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ya = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7)
  %i.yb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %i.yc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %12)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.au
  %.pre-phi = phi i64 [ %i.pt, %bb.bk ], [ %i.pt, %bb.bl ], [ %.pre664, %bb.au ] ; 2 uses
  %.promoted630 = phi i32 [ %i.ps, %bb.bk ], [ %i.ps, %bb.bl ], [ %i.po, %bb.au ]
  %.promoted = phi ptr [ %i.pp, %bb.bk ], [ %i.pp, %bb.bl ], [ %i.bw, %bb.au ] ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %.pre-phi
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !34
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr [8 x i8], ptr %.promoted, i64 %i.yg
  %i.yi = getelementptr i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !83 ; 2 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %.pre-phi
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !34
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr [8 x i8], ptr %.promoted, i64 %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 82856 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 82760 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 82872 ; 2 uses
  %.not548 = icmp eq i32 %5, 0
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 82832
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 82840
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 82848
  %i.yv = getelementptr i8, ptr %1, i64 84        ; 3 uses
  %i.yw = getelementptr i8, ptr %2, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 82792 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 82720
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 82764
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 82632 ; 2 uses
  %.not555 = icmp eq i32 %6, 0
  br label %.outer

.outer:                                           ; preds = %bb.do, %bb.bm
  %.ph = phi i32 [ %i.aju, %bb.do ], [ %.promoted630, %bb.bm ]
  %.ph768 = phi ptr [ %i.ajn, %bb.do ], [ %.promoted, %bb.bm ] ; 16 uses
  %.pn = phi ptr [ %i.ajz, %bb.do ], [ %i.yn, %bb.bm ]
  %.0498.ph = phi ptr [ %.0500, %bb.do ], [ %i.yj, %bb.bm ] ; 8 uses
  %.0495.ph = phi i32 [ %.1496602613, %bb.do ], [ 0, %bb.bm ] ; 3 uses
  %.0500.ph.in = getelementptr i8, ptr %.pn, i64 24
  %.0500.ph = load ptr, ptr %.0500.ph.in, align 8, !tbaa !83
  %i.zg = getelementptr i8, ptr %.0498.ph, i64 8
  %i.zh = ptrtoint ptr %.ph768 to i64             ; 3 uses
  %.promoted800 = load i32, ptr %i.yq, align 1
  %.promoted803 = load ptr, ptr %14, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %.outer, %bb.dj
  %i.zi = phi ptr [ %i.zw, %bb.dj ], [ %.promoted803, %.outer ]
  %i.zj = phi i32 [ %i.zx, %bb.dj ], [ %.promoted800, %.outer ]
  %i.zk = phi i32 [ %i.ajd, %bb.dj ], [ %.ph, %.outer ] ; 2 uses
  %.0500 = phi ptr [ %i.aai, %bb.dj ], [ %.0500.ph, %.outer ] ; 10 uses
  %i.zl = load i32, ptr %i.yp, align 8, !tbaa !151 ; 3 uses
  %.not546 = icmp eq i32 %i.zl, 0
  %.pre667 = sext i32 %i.zk to i64                ; 5 uses
  br i1 %.not546, label %._crit_edge666, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.zm = getelementptr [8 x i8], ptr %.ph768, i64 %.pre667
  %i.zn = getelementptr i8, ptr %i.zm, i64 48
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !83
  %i.zp = ptrtoint ptr %i.zo to i64               ; 2 uses
  %i.zq = trunc i64 %i.zp to i32
  %i.zr = and i32 %i.zq, 1                        ; 2 uses
  %i.zs = and i64 %i.zp, -4
  %i.zt = inttoptr i64 %i.zs to ptr               ; 3 uses
  %i.zu = load ptr, ptr %i.yr, align 8, !tbaa !92
  %.not547 = icmp eq ptr %i.zu, %i.zt
  br i1 %.not547, label %._crit_edge666, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.zr, ptr %i.yq, align 1
  store ptr %i.zt, ptr %14, align 1
  br i1 %.not548, label %.thread608, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.zv = call noundef i32 @_Z17checkseg4encroachP4meshP8behaviorP4osub(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %14)
  %.not549 = icmp eq i32 %i.zv, 0
  br i1 %.not549, label %.thread608, label %15

15:                                               ; preds = %bb.bq
  br label %.thread608

._crit_edge666:                                   ; preds = %bb.bn, %bb.bo
  %i.zw = phi ptr [ %i.zi, %bb.bn ], [ %i.zt, %bb.bo ] ; 2 uses
  %i.zx = phi i32 [ %i.zj, %bb.bn ], [ %i.zr, %bb.bo ] ; 2 uses
  %i.zy = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %.pre667 ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !83
  %i.aaa = ptrtoint ptr %i.zz to i64              ; 2 uses
  %i.aab = and i64 %i.aaa, 3                      ; 3 uses
  %i.aac = and i64 %i.aaa, -4                     ; 3 uses
  %i.aad = inttoptr i64 %i.aac to ptr             ; 12 uses
  %i.aae = load ptr, ptr %i.yo, align 8, !tbaa !85
  %i.aaf = icmp eq ptr %i.aae, %i.aad
  br i1 %i.aaf, label %.thread608.loopexit, label %bb.br

bb.br:                                            ; preds = %._crit_edge666
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.aab
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !83 ; 12 uses
  %i.aaj = load ptr, ptr %i.ys, align 8, !tbaa !156 ; 3 uses
  %i.aak = icmp eq ptr %.0500, %i.aaj
  br i1 %i.aak, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aal = load ptr, ptr %i.yt, align 8, !tbaa !157 ; 3 uses
  %i.aam = icmp eq ptr %.0500, %i.aal
  br i1 %i.aam, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aan = load ptr, ptr %i.yu, align 8, !tbaa !158 ; 3 uses
  %i.aao = icmp eq ptr %.0500, %i.aan
  br i1 %i.aao, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.aap = load i64, ptr %i.yx, align 8, !tbaa !140
  %i.aaq = add nsw i64 %i.aap, 1
  store i64 %i.aaq, ptr %i.yx, align 8, !tbaa !140
  %i.aar = load <2 x double>, ptr %i.aai, align 8, !tbaa !8 ; 2 uses
  %i.aas = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.aat = fsub <2 x double> %i.aas, %i.aar
  %i.aau = load <2 x double>, ptr %.0498.ph, align 8, !tbaa !8
  %i.aav = fsub <2 x double> %i.aau, %i.aar
  %i.aaw = shufflevector <2 x double> %i.aav, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aax = fmul <2 x double> %i.aat, %i.aaw       ; 2 uses
  %i.aay = extractelement <2 x double> %i.aax, i64 0 ; 5 uses
  %i.aaz = extractelement <2 x double> %i.aax, i64 1 ; 5 uses
  %i.aba = fsub double %i.aay, %i.aaz             ; 6 uses
  %i.abb = load i32, ptr %i.yv, align 4, !tbaa !61
  %.not.i585 = icmp eq i32 %i.abb, 0
  br i1 %.not.i585, label %bb.bv, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.bv:                                            ; preds = %bb.bu
  %i.abc = fcmp ogt double %i.aay, 0.000000e+00
  br i1 %i.abc, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.abd = fcmp ugt double %i.aaz, 0.000000e+00
  br i1 %i.abd, label %bb.bx, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.abe = fadd double %i.aay, %i.aaz
  br label %bb.ca

bb.by:                                            ; preds = %bb.bv
  %i.abf = fcmp olt double %i.aay, 0.000000e+00
  %i.abg = fcmp ult double %i.aaz, 0.000000e+00
  %or.cond42.i = select i1 %i.abf, i1 %i.abg, i1 false
  br i1 %or.cond42.i, label %bb.bz, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.bz:                                            ; preds = %bb.by
  %i.abh = fneg double %i.aay
  %i.abi = fsub double %i.abh, %i.aaz
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %.0.i = phi double [ %i.abe, %bb.bx ], [ %i.abi, %bb.bz ] ; 2 uses
  %i.abj = load double, ptr @_ZL12ccwerrboundA, align 8, !tbaa !8
  %i.abk = fmul double %.0.i, %i.abj              ; 2 uses
  %i.abl = fcmp ult double %i.aba, %i.abk
  %i.abm = fneg double %i.aba
  %i.abn = fcmp ugt double %i.abk, %i.abm
  %or.cond.i = and i1 %i.abl, %i.abn
  br i1 %or.cond.i, label %bb.cb, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.cb:                                            ; preds = %bb.ca
  %i.abo = tail call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %.0498.ph, ptr noundef nonnull readonly %i.aai, double noundef %.0.i)
  br label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit: ; preds = %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cb
  %.035.i = phi double [ %i.aba, %bb.ca ], [ %i.aba, %bb.bu ], [ %i.aba, %bb.by ], [ %i.abo, %bb.cb ], [ %i.aba, %bb.bw ]
  %i.abp = fcmp ogt double %.035.i, 0.000000e+00
  br i1 %i.abp, label %bb.cn, label %.thread608.loopexit

bb.cc:                                            ; preds = %bb.bt
  %i.abq = icmp eq ptr %.0498.ph, %i.aaj
  %i.abr = icmp eq ptr %.0498.ph, %i.aal
  %or.cond557 = or i1 %i.abq, %i.abr
  %i.abs = icmp eq ptr %.0498.ph, %i.aan
  %or.cond558 = or i1 %or.cond557, %i.abs
  br i1 %or.cond558, label %bb.cd, label %bb.cl

bb.cd:                                            ; preds = %bb.cc
  %i.abt = load i64, ptr %i.yx, align 8, !tbaa !140
  %i.abu = add nsw i64 %i.abt, 1
  store i64 %i.abu, ptr %i.yx, align 8, !tbaa !140
  %i.abv = load <2 x double>, ptr %2, align 8, !tbaa !8 ; 2 uses
  %i.abw = load <2 x double>, ptr %i.aai, align 8, !tbaa !8
  %i.abx = fsub <2 x double> %i.abw, %i.abv
  %i.aby = load <2 x double>, ptr %.0500, align 8, !tbaa !8
  %i.abz = fsub <2 x double> %i.aby, %i.abv
  %i.aca = shufflevector <2 x double> %i.abz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.acb = fmul <2 x double> %i.abx, %i.aca       ; 2 uses
  %i.acc = extractelement <2 x double> %i.acb, i64 0 ; 5 uses
  %i.acd = extractelement <2 x double> %i.acb, i64 1 ; 5 uses
  %i.ace = fsub double %i.acc, %i.acd             ; 6 uses
  %i.acf = load i32, ptr %i.yv, align 4, !tbaa !61
  %.not.i586 = icmp eq i32 %i.acf, 0
  br i1 %.not.i586, label %bb.ce, label %bb.cm

bb.ce:                                            ; preds = %bb.cd
  %i.acg = fcmp ogt double %i.acc, 0.000000e+00
  br i1 %i.acg, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ach = fcmp ugt double %i.acd, 0.000000e+00
  br i1 %i.ach, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.aci = fadd double %i.acc, %i.acd
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ce
  %i.acj = fcmp olt double %i.acc, 0.000000e+00
  %i.ack = fcmp ult double %i.acd, 0.000000e+00
  %or.cond42.i588 = select i1 %i.acj, i1 %i.ack, i1 false
  br i1 %or.cond42.i588, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.acl = fneg double %i.acc
  %i.acm = fsub double %i.acl, %i.acd
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.0.i589 = phi double [ %i.aci, %bb.cg ], [ %i.acm, %bb.ci ] ; 2 uses
  %i.acn = load double, ptr @_ZL12ccwerrboundA, align 8, !tbaa !8
  %i.aco = fmul double %.0.i589, %i.acn           ; 2 uses
  %i.acp = fcmp ult double %i.ace, %i.aco
  %i.acq = fneg double %i.ace
  %i.acr = fcmp ugt double %i.aco, %i.acq
  %or.cond.i590 = and i1 %i.acp, %i.acr
  br i1 %or.cond.i590, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.acs = tail call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %i.aai, ptr noundef nonnull readonly %.0500, ptr noundef nonnull readonly %2, double noundef %.0.i589)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cc
  %i.act = icmp eq ptr %i.aai, %i.aaj
  %i.acu = icmp eq ptr %i.aai, %i.aal
  %or.cond559 = or i1 %i.act, %i.acu
  %i.acv = icmp eq ptr %i.aai, %i.aan
  %or.cond560 = or i1 %or.cond559, %i.acv
  br i1 %or.cond560, label %.thread608.loopexit, label %.split606

.split606:                                        ; preds = %bb.cl
  %.val = load i32, ptr %i.yv, align 4, !tbaa !61
  %.0500.val = load double, ptr %.0500, align 8, !tbaa !8
  %i.acw = getelementptr i8, ptr %.0500, i64 8
  %.0500.val561 = load double, ptr %i.acw, align 8, !tbaa !8
  %.val562 = load double, ptr %2, align 8, !tbaa !8
  %.val563 = load double, ptr %i.yw, align 8, !tbaa !8
  %.0498.val = load double, ptr %.0498.ph, align 8, !tbaa !8
  %.0498.val564 = load double, ptr %i.zg, align 8, !tbaa !8
  %.val565 = load double, ptr %i.aai, align 8, !tbaa !8
  %i.acx = getelementptr i8, ptr %i.aai, i64 8
  %.val566 = load double, ptr %i.acx, align 8, !tbaa !8
  %i.acy = tail call fastcc noundef double @_ZL8incircleP4meshP8behaviorPdS3_S3_S3_(ptr noundef nonnull %0, i32 %.val, double %.0500.val, double %.0500.val561, double %.val562, double %.val563, double %.0498.val, double %.0498.val564, double %.val565, double %.val566)
  %i.acz = fcmp ogt double %i.acy, 0.000000e+00
  br i1 %i.acz, label %.split606._crit_edge, label %.thread608.loopexit

.split606._crit_edge:                             ; preds = %.split606
  %.pre665 = load i32, ptr %i.yp, align 8, !tbaa !151
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cf, %bb.cd
  %.035.i587 = phi double [ %i.ace, %bb.cj ], [ %i.ace, %bb.cd ], [ %i.ace, %bb.ch ], [ %i.acs, %bb.ck ], [ %i.ace, %bb.cf ]
  %i.ada = fcmp ogt double %.035.i587, 0.000000e+00
  br i1 %i.ada, label %bb.cn, label %.thread608.loopexit

bb.cn:                                            ; preds = %.split606._crit_edge, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit, %bb.cm
  %i.adb = phi i32 [ %.pre665, %.split606._crit_edge ], [ %i.zl, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit ], [ %i.zl, %bb.cm ]
  store ptr %i.aad, ptr %9, align 8, !tbaa !77
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.aab
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !34 ; 2 uses
  store i32 %i.add, ptr %i.yy, align 8, !tbaa !82
  %i.ade = sext i32 %i.add to i64                 ; 3 uses
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.ade ; 4 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !83 ; 2 uses
  %i.adh = ptrtoint ptr %i.adg to i64             ; 2 uses
  %i.adi = and i64 %i.adh, 3
end_hunk_0
begin_hunk_1_@_Z12insertvertexP4meshP8behaviorPdP4otriP4osubii:bb.a
  %i.agm = icmp eq ptr %i.afv, %i.afu
  br i1 %i.agm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.afv, ptr %i.afj, align 8, !tbaa !83
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.agn = and i64 %i.afr, -3
  %i.ago = inttoptr i64 %i.agn to ptr
  store ptr %i.ago, ptr %i.afj, align 8, !tbaa !83
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.afu, i64 %i.afs
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 48
  store ptr %i.aet, ptr %i.agq, align 8, !tbaa !83
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cn
  %i.agr = getelementptr i8, ptr %i.adx, i64 24
  store ptr %i.aai, ptr %i.agr, align 8, !tbaa !83
  %i.ags = getelementptr i8, ptr %i.aeg, i64 24
  store ptr %2, ptr %i.ags, align 8, !tbaa !83
  %i.agt = getelementptr i8, ptr %i.zy, i64 24
  store ptr %.0498.ph, ptr %i.agt, align 8, !tbaa !83
  %i.agu = getelementptr i8, ptr %i.ado, i64 24
  store ptr %2, ptr %i.agu, align 8, !tbaa !83
  %i.agv = getelementptr i8, ptr %i.adf, i64 24
  store ptr %i.aai, ptr %i.agv, align 8, !tbaa !83
  store ptr %.0500, ptr %i.aah, align 8, !tbaa !83
  %i.agw = load i32, ptr %i.yz, align 8, !tbaa !124 ; 3 uses
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %.lr.ph628, label %._crit_edge629

.lr.ph628:                                        ; preds = %bb.da
  %i.agy = load i32, ptr %i.za, align 8, !tbaa !123
  %i.agz = sext i32 %i.agy to i64                 ; 6 uses
  %wide.trip.count660 = zext nneg i32 %i.agw to i64 ; 6 uses
  %min.iters.check756 = icmp ult i32 %i.agw, 4
  br i1 %min.iters.check756, label %scalar.ph755.preheader, label %vector.memcheck751

vector.memcheck751:                               ; preds = %.lr.ph628
  %i.aha = shl nsw i64 %i.agz, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aad, i64 %i.aha
  %i.ahb = add nsw i64 %i.agz, %wide.trip.count660
  %i.ahc = shl nsw i64 %i.ahb, 3                  ; 2 uses
  %scevgep752 = getelementptr i8, ptr %i.aad, i64 %i.ahc
  %scevgep753 = getelementptr i8, ptr %.ph768, i64 %i.aha
  %scevgep754 = getelementptr i8, ptr %.ph768, i64 %i.ahc
  %bound0 = icmp ult ptr %scevgep, %scevgep754
  %bound1 = icmp ult ptr %scevgep753, %scevgep752
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph755.preheader, label %vector.ph757

vector.ph757:                                     ; preds = %vector.memcheck751
  %n.vec758 = and i64 %wide.trip.count660, 2147483646 ; 3 uses
  br label %vector.body759

vector.body759:                                   ; preds = %vector.body759, %vector.ph757
  %index760 = phi i64 [ 0, %vector.ph757 ], [ %index.next763, %vector.body759 ] ; 2 uses
  %i.ahd = add nsw i64 %index760, %i.agz          ; 2 uses
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.ahd ; 2 uses
  %wide.load761 = load <2 x double>, ptr %i.ahe, align 8, !tbaa !8, !alias.scope !204, !noalias !207
  %i.ahf = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %i.ahd ; 2 uses
  %wide.load762 = load <2 x double>, ptr %i.ahf, align 8, !tbaa !8, !alias.scope !207
  %i.ahg = fadd <2 x double> %wide.load761, %wide.load762
  %i.ahh = fmul <2 x double> %i.ahg, splat (double 5.000000e-01) ; 2 uses
  store <2 x double> %i.ahh, ptr %i.ahe, align 8, !tbaa !8, !alias.scope !204, !noalias !207
  store <2 x double> %i.ahh, ptr %i.ahf, align 8, !tbaa !8, !alias.scope !207
  %index.next763 = add nuw i64 %index760, 2       ; 2 uses
  %i.ahi = icmp eq i64 %index.next763, %n.vec758
  br i1 %i.ahi, label %middle.block764, label %vector.body759, !llvm.loop !209

middle.block764:                                  ; preds = %vector.body759
  %cmp.n765 = icmp eq i64 %n.vec758, %wide.trip.count660
  br i1 %cmp.n765, label %._crit_edge629, label %scalar.ph755.preheader

scalar.ph755.preheader:                           ; preds = %vector.memcheck751, %.lr.ph628, %middle.block764
  %indvars.iv657.ph = phi i64 [ 0, %vector.memcheck751 ], [ 0, %.lr.ph628 ], [ %n.vec758, %middle.block764 ] ; 4 uses
  %xtraiter779 = and i64 %wide.trip.count660, 1
  %lcmp.mod780.not = icmp eq i64 %xtraiter779, 0
  br i1 %lcmp.mod780.not, label %scalar.ph755.prol.loopexit, label %scalar.ph755.prol

scalar.ph755.prol:                                ; preds = %scalar.ph755.preheader
  %i.ahj = add nsw i64 %indvars.iv657.ph, %i.agz  ; 2 uses
  %i.ahk = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.ahj ; 2 uses
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !8
  %i.ahm = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %i.ahj ; 2 uses
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !8
  %i.aho = fadd double %i.ahl, %i.ahn
  %i.ahp = fmul double %i.aho, 5.000000e-01       ; 2 uses
  store double %i.ahp, ptr %i.ahk, align 8, !tbaa !8
  store double %i.ahp, ptr %i.ahm, align 8, !tbaa !8
  %indvars.iv.next658.prol = or disjoint i64 %indvars.iv657.ph, 1
  br label %scalar.ph755.prol.loopexit

scalar.ph755.prol.loopexit:                       ; preds = %scalar.ph755.prol, %scalar.ph755.preheader
  %indvars.iv657.unr = phi i64 [ %indvars.iv657.ph, %scalar.ph755.preheader ], [ %indvars.iv.next658.prol, %scalar.ph755.prol ]
  %i.ahq = add nsw i64 %wide.trip.count660, -1
  %i.ahr = icmp eq i64 %indvars.iv657.ph, %i.ahq
  br i1 %i.ahr, label %._crit_edge629, label %scalar.ph755.preheader.new

scalar.ph755.preheader.new:                       ; preds = %scalar.ph755.prol.loopexit
  %invariant.op798 = add i64 1, %i.agz
  br label %scalar.ph755

scalar.ph755:                                     ; preds = %scalar.ph755, %scalar.ph755.preheader.new
  %indvars.iv657 = phi i64 [ %indvars.iv657.unr, %scalar.ph755.preheader.new ], [ %indvars.iv.next658.1, %scalar.ph755 ] ; 3 uses
  %i.ahs = add nsw i64 %indvars.iv657, %i.agz     ; 2 uses
  %i.aht = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.ahs ; 2 uses
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !8
  %i.ahv = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %i.ahs ; 2 uses
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !8
  %i.ahx = fadd double %i.ahu, %i.ahw
  %i.ahy = fmul double %i.ahx, 5.000000e-01       ; 2 uses
  store double %i.ahy, ptr %i.aht, align 8, !tbaa !8
  store double %i.ahy, ptr %i.ahv, align 8, !tbaa !8
  %.reass799 = add i64 %indvars.iv657, %invariant.op798 ; 2 uses
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %.reass799 ; 2 uses
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !8
  %i.aib = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %.reass799 ; 2 uses
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !8
  %i.aid = fadd double %i.aia, %i.aic
  %i.aie = fmul double %i.aid, 5.000000e-01       ; 2 uses
  store double %i.aie, ptr %i.ahz, align 8, !tbaa !8
  store double %i.aie, ptr %i.aib, align 8, !tbaa !8
  %indvars.iv.next658.1 = add nuw nsw i64 %indvars.iv657, 2 ; 2 uses
  %exitcond661.not.1 = icmp eq i64 %indvars.iv.next658.1, %wide.trip.count660
  br i1 %exitcond661.not.1, label %._crit_edge629, label %scalar.ph755, !llvm.loop !210

._crit_edge629:                                   ; preds = %scalar.ph755.prol.loopexit, %scalar.ph755, %middle.block764, %bb.da
  %i.aif = load i32, ptr %i.zb, align 4, !tbaa !46
  %.not552 = icmp eq i32 %i.aif, 0
  br i1 %.not552, label %bb.df, label %bb.db

bb.db:                                            ; preds = %._crit_edge629
  %i.aig = load i32, ptr %i.zc, align 4, !tbaa !93
  %i.aih = sext i32 %i.aig to i64                 ; 3 uses
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.aih ; 2 uses
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !8 ; 2 uses
  %i.aik = fcmp ugt double %i.aij, 0.000000e+00
  br i1 %i.aik, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.ail = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %i.aih
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !8 ; 2 uses
  %i.ain = fcmp ugt double %i.aim, 0.000000e+00
  br i1 %i.ain, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aio = fadd double %i.aij, %i.aim
  %i.aip = fmul double %i.aio, 5.000000e-01
  br label %bb.de

bb.de:                                            ; preds = %bb.db, %bb.dc, %bb.dd
  %.0497 = phi double [ %i.aip, %bb.dd ], [ -1.000000e+00, %bb.dc ], [ -1.000000e+00, %bb.db ] ; 2 uses
  store double %.0497, ptr %i.aii, align 8, !tbaa !8
  %i.aiq = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %i.aih
  store double %.0497, ptr %i.aiq, align 8, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge629
  %i.air = load i32, ptr %i.zd, align 4, !tbaa !152
  %.not553 = icmp eq i32 %i.air, 0
  br i1 %.not553, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ais = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %i.ze) ; 3 uses
  %i.ait = or i64 %.pre667, %i.zh
  %i.aiu = inttoptr i64 %i.ait to ptr
  store ptr %i.aiu, ptr %i.ais, align 8, !tbaa !199
  %i.aiv = load ptr, ptr %i.zf, align 8, !tbaa !198
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store ptr %i.aiv, ptr %i.aiw, align 8, !tbaa !201
  store ptr %i.ais, ptr %i.zf, align 8, !tbaa !198
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.aix = load i32, ptr %i.a, align 4, !tbaa !70
  %i.aiy = icmp sgt i32 %i.aix, 2
  br i1 %i.aiy, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aiz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72) ; 0 uses
  %i.aja = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.ade
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !34
  store i32 %i.ajb, ptr %i.yy, align 8, !tbaa !82
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %9)
  %i.ajc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.ajd = load i32, ptr %i.aed, align 4, !tbaa !34 ; 2 uses
  store i32 %i.ajd, ptr %i.yd, align 8, !tbaa !82
  br label %bb.bn, !llvm.loop !211

.thread608.loopexit:                              ; preds = %bb.cm, %._crit_edge666, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit, %.split606, %bb.cl
  store i32 %i.zx, ptr %i.yq, align 1
  store ptr %i.zw, ptr %14, align 1
  br label %.thread608

.thread608:                                       ; preds = %.thread608.loopexit, %bb.bp, %bb.bq, %15
  %.1496602613 = phi i32 [ 1, %15 ], [ %.0495.ph, %bb.bp ], [ %.0495.ph, %bb.bq ], [ %.0495.ph, %.thread608.loopexit ] ; 2 uses
  br i1 %.not555, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.thread608
  call void @_Z12testtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.thread608
  %i.aje = sext i32 %i.zk to i64
  %i.ajf = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !34
  %i.ajh = sext i32 %i.ajg to i64                 ; 2 uses
  %i.aji = getelementptr inbounds [8 x i8], ptr %.ph768, i64 %i.ajh
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !83
  %i.ajk = ptrtoint ptr %i.ajj to i64             ; 2 uses
  %i.ajl = and i64 %i.ajk, 3
  %i.ajm = and i64 %i.ajk, -4
  %i.ajn = inttoptr i64 %i.ajm to ptr             ; 4 uses
  %i.ajo = icmp eq ptr %.0500, %i.yj
  br i1 %i.ajo, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ajp = load ptr, ptr %i.yo, align 8, !tbaa !85
  %i.ajq = icmp eq ptr %i.ajp, %i.ajn
  br i1 %i.ajq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  store ptr %.ph768, ptr %3, align 8, !tbaa !77
  %i.ajr = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.ajh
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !34
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  store ptr %i.ajn, ptr %7, align 8, !tbaa !77
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr @plus1mod3, i64 %i.ajl
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !34 ; 3 uses
  store i32 %i.aju, ptr %i.yd, align 8, !tbaa !82
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.ajv
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !34
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr [8 x i8], ptr %i.ajn, i64 %i.ajy
  br label %.outer, !llvm.loop !211

bb.dp:                                            ; preds = %bb.dn, %bb.p, %bb.h
  %.sink716 = phi i32 [ %i.ajs, %bb.dn ], [ %.pre663, %bb.p ], [ %i.af, %bb.h ] ; 2 uses
  %.lcssa.sink = phi ptr [ %.ph768, %bb.dn ], [ %.pre, %bb.p ], [ %i.ad, %bb.h ]
  %.0503 = phi i32 [ %.1496602613, %bb.dn ], [ 2, %bb.p ], [ 3, %bb.h ]
  %i.aka = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sink716, ptr %i.aka, align 8, !tbaa !82
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 82888
  store ptr %.lcssa.sink, ptr %i.akb, align 8, !tbaa !148
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 82896
  store i32 %.sink716, ptr %i.akc, align 8, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret i32 %.0503
}

; Function Attrs: mustprogress uwtable
define void @_Z18triangulatepolygonP4meshP8behaviorP4otriS4_iii(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.otri, align 8               ; 6 uses
  %8 = alloca %struct.otri, align 8               ; 7 uses
  %9 = alloca %struct.otri, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.a = load ptr, ptr %3, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [8 x i8], ptr %i.a, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !82
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %i.u = load double, ptr %i.g, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !8
  %i.x = load double, ptr %i.q, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !8
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, double noundef %i.u, double noundef %i.w, double noundef %i.x, double noundef %i.z) ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !77
  %.pre97 = load i32, ptr %i.i, align 8, !tbaa !82
  %.phi.trans.insert = sext i32 %.pre97 to i64
  %.phi.trans.insert98 = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %.phi.trans.insert
  %.pre99 = load i32, ptr %.phi.trans.insert98, align 4, !tbaa !34
  %.pre100 = sext i32 %.pre99 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %.pre100, %bb.b ], [ %i.n, %bb.a ]
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.h, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.pre-phi
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3                        ; 6 uses
  %i.ai = and i64 %i.af, -4
  %i.aj = inttoptr i64 %i.ai to ptr               ; 7 uses
  %i.ak = and i64 %i.af, 3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.aj, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.as = add nsw i32 %4, -2
  %.not80 = icmp slt i32 %4, 4
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.at = getelementptr i8, ptr %1, i64 84
  %i.au = getelementptr i8, ptr %i.g, i64 8
  %i.av = getelementptr i8, ptr %i.q, i64 8
  %i.aw = add nsw i32 %4, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.083 = phi i32 [ 2, %.lr.ph ], [ %i.cd, %bb.f ] ; 3 uses
  %.05882 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.f ]
  %.05981 = phi ptr [ %i.aq, %.lr.ph ], [ %.160, %bb.f ] ; 3 uses
  %i.ax = phi ptr [ %i.aj, %.lr.ph ], [ %i.cc, %bb.f ]
  %i.ay = phi i32 [ %i.ah, %.lr.ph ], [ %i.cb, %bb.f ]
  %i.az = phi ptr [ %i.aj, %.lr.ph ], [ %i.bn, %bb.f ]
  %i.ba = phi i32 [ %i.ah, %.lr.ph ], [ %i.bl, %bb.f ]
  %i.bb = phi ptr [ %i.aj, %.lr.ph ], [ %i.ca, %bb.f ]
  %i.bc = phi i32 [ %i.ah, %.lr.ph ], [ %i.bz, %bb.f ]
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 3                        ; 4 uses
  %i.bm = and i64 %i.bj, -4
  %i.bn = inttoptr i64 %i.bm to ptr               ; 5 uses
  %i.bo = and i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bn, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 3 uses
  %.val = load i32, ptr %i.at, align 4, !tbaa !61
  %.val64 = load double, ptr %i.g, align 8, !tbaa !8
  %.val65 = load double, ptr %i.au, align 8, !tbaa !8
  %.val66 = load double, ptr %i.q, align 8, !tbaa !8
  %.val67 = load double, ptr %i.av, align 8, !tbaa !8
  %.059.val = load double, ptr %.05981, align 8, !tbaa !8
  %i.bv = getelementptr i8, ptr %.05981, i64 8
  %.059.val68 = load double, ptr %i.bv, align 8, !tbaa !8
  %.val69 = load double, ptr %i.bu, align 8, !tbaa !8
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %.val70 = load double, ptr %i.bw, align 8, !tbaa !8
  %i.bx = tail call fastcc noundef double @_ZL8incircleP4meshP8behaviorPdS3_S3_S3_(ptr noundef %0, i32 %.val, double %.val64, double %.val65, double %.val66, double %.val67, double %.059.val, double %.059.val68, double %.val69, double %.val70)
  %i.by = fcmp ogt double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bz = phi i32 [ %i.bl, %bb.e ], [ %i.bc, %bb.d ] ; 2 uses
  %i.ca = phi ptr [ %i.bn, %bb.e ], [ %i.bb, %bb.d ] ; 2 uses
  %i.cb = phi i32 [ %i.bl, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %i.cc = phi ptr [ %i.bn, %bb.e ], [ %i.ax, %bb.d ] ; 2 uses
  %.160 = phi ptr [ %i.bu, %bb.e ], [ %.05981, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.083, %bb.e ], [ %.05882, %bb.d ] ; 2 uses
  %i.cd = add nuw i32 %.083, 1
  %exitcond.not = icmp eq i32 %.083, %i.aw
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !212

._crit_edge:                                      ; preds = %bb.f, %bb.c
end_hunk_1
