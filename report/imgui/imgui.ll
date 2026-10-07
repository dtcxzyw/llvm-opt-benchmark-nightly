Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  store float %i.sz, ptr %i.sx, align 8, !tbaa !760
  %i.ta = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !652 ; 2 uses
  %.not279 = icmp eq i32 %i.tb, %i.sv
  br i1 %.not279, label %.thread451.thread, label %bb.bw

.thread451.thread:                                ; preds = %bb.bv
  store i32 %i.sv, ptr %i.sg, align 8, !tbaa !669
  %i.tc = getelementptr inbounds nuw i8, ptr %i.c, i64 5412
  store i32 0, ptr %i.tc, align 4, !tbaa !684
  store i32 0, ptr %i.su, align 4, !tbaa !667
  %i.td = getelementptr inbounds nuw i8, ptr %i.c, i64 5424
  store i8 0, ptr %i.td, align 8, !tbaa !668
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 5425
  store i8 0, ptr %i.te, align 1, !tbaa !686
  %i.tf = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.tg = getelementptr inbounds nuw i8, ptr %i.c, i64 5420 ; 2 uses
  %i.th = load float, ptr %i.tg, align 4, !tbaa !1377
  %i.ti = fadd float %i.sw, %i.th
  store float %i.ti, ptr %i.tg, align 4, !tbaa !1377
  br label %.thread451

.thread451:                                       ; preds = %..thread451_crit_edge, %bb.bw
  %i.tj = phi ptr [ %i.st, %..thread451_crit_edge ], [ %i.su, %bb.bw ]
  %i.tk = phi i32 [ 0, %..thread451_crit_edge ], [ %i.sv, %bb.bw ]
  %i.tl = phi i32 [ %.pre529, %..thread451_crit_edge ], [ %i.tb, %bb.bw ] ; 2 uses
  store i32 %i.tk, ptr %i.sg, align 8, !tbaa !669
  %i.tm = getelementptr inbounds nuw i8, ptr %i.c, i64 5412
  store i32 0, ptr %i.tm, align 4, !tbaa !684
  store i32 0, ptr %i.tj, align 4, !tbaa !667
  %i.tn = getelementptr inbounds nuw i8, ptr %i.c, i64 5424
  store i8 0, ptr %i.tn, align 8, !tbaa !668
  %i.to = getelementptr inbounds nuw i8, ptr %i.c, i64 5425
  store i8 0, ptr %i.to, align 1, !tbaa !686
  %i.tp = getelementptr inbounds nuw i8, ptr %i.c, i64 5428 ; 2 uses
  %.not280 = icmp eq i32 %i.tl, 0
  br i1 %.not280, label %.thread451..thread455_crit_edge, label %bb.bx

.thread451..thread455_crit_edge:                  ; preds = %.thread451
  %.pre531 = load float, ptr %i.ch, align 8, !tbaa !727
  br label %.thread455

bb.bx:                                            ; preds = %.thread451.thread, %.thread451
  %i.tq = phi ptr [ %i.tf, %.thread451.thread ], [ %i.tp, %.thread451 ] ; 4 uses
  %i.tr = phi i32 [ %i.sv, %.thread451.thread ], [ %i.tl, %.thread451 ] ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.c, i64 5432
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !654
  %.not281 = icmp eq i32 %i.tt, %i.tr
  br i1 %.not281, label %.thread746, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tu = getelementptr inbounds nuw i8, ptr %i.c, i64 5480
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !690
  %i.tw = icmp eq i32 %i.tv, %i.tr
  br i1 %i.tw, label %bb.bz, label %.thread746

bb.bz:                                            ; preds = %bb.by
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 10404
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !247
  %i.tz = and i32 %i.ty, 2
  %.not282 = icmp eq i32 %i.tz, 0
  br i1 %.not282, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.87, i32 noundef %i.tr)
  br label %bb.cb

.thread746:                                       ; preds = %bb.by, %bb.bx
  %.pre532749 = load float, ptr %i.ch, align 8, !tbaa !727
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %.pr.pre = load i32, ptr %i.tq, align 4, !tbaa !652 ; 2 uses
  %.not283 = icmp eq i32 %.pr.pre, 0
  %.pre532 = load float, ptr %i.ch, align 8, !tbaa !727 ; 2 uses
  br i1 %.not283, label %.thread455, label %bb.cc

bb.cc:                                            ; preds = %.thread746, %bb.cb
  %.pre532751 = phi float [ %.pre532749, %.thread746 ], [ %.pre532, %bb.cb ] ; 3 uses
  %.pr750 = phi i32 [ %i.tr, %.thread746 ], [ %.pr.pre, %bb.cb ] ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.c, i64 5436 ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !656
  %i.uc = fadd float %.pre532751, %i.ub
  store float %i.uc, ptr %i.ua, align 4, !tbaa !656
  %i.ud = getelementptr inbounds nuw i8, ptr %i.c, i64 5504
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !657
  %i.uf = icmp eq i32 %.pr750, %i.ue
  br i1 %i.uf, label %bb.cd, label %.thread455

bb.cd:                                            ; preds = %bb.cc
  %i.ug = getelementptr inbounds nuw i8, ptr %i.c, i64 5441
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !1378, !range !100, !noundef !236
  %i.ui = getelementptr inbounds nuw i8, ptr %i.c, i64 5512
  store i8 %i.uh, ptr %i.ui, align 8, !tbaa !1379
  %i.uj = getelementptr inbounds nuw i8, ptr %i.c, i64 5442
  %i.uk = load i8, ptr %i.uj, align 2, !tbaa !1380, !range !100, !noundef !236
  %i.ul = getelementptr inbounds nuw i8, ptr %i.c, i64 5513
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !1381
  br label %.thread455

.thread455:                                       ; preds = %.thread451..thread455_crit_edge, %bb.cb, %bb.cd, %bb.cc
  %i.um = phi ptr [ %i.tq, %bb.cc ], [ %i.tq, %bb.cd ], [ %i.tq, %bb.cb ], [ %i.tp, %.thread451..thread455_crit_edge ]
  %i.un = phi float [ %.pre532751, %bb.cc ], [ %.pre532751, %bb.cd ], [ %.pre532, %bb.cb ], [ %.pre531, %.thread451..thread455_crit_edge ] ; 4 uses
  %i.uo = phi i32 [ %.pr750, %bb.cc ], [ %.pr750, %bb.cd ], [ 0, %bb.cb ], [ 0, %.thread451..thread455_crit_edge ] ; 2 uses
  %.not283454457 = phi i1 [ false, %bb.cc ], [ false, %bb.cd ], [ true, %bb.cb ], [ true, %.thread451..thread455_crit_edge ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.c, i64 5508 ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !658
  %i.ur = fadd float %i.un, %i.uq
  store float %i.ur, ptr %i.up, align 4, !tbaa !658
  %i.us = getelementptr inbounds nuw i8, ptr %i.c, i64 5480
  store i32 %i.uo, ptr %i.us, align 8, !tbaa !690
  %i.ut = getelementptr inbounds nuw i8, ptr %i.c, i64 5432
  store i32 0, ptr %i.ut, align 8, !tbaa !654
  %i.uu = getelementptr inbounds nuw i8, ptr %i.c, i64 5427
  store i8 0, ptr %i.uu, align 1, !tbaa !671
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 5447
  store i8 0, ptr %i.uv, align 1, !tbaa !661
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 5440
  store i8 0, ptr %i.uw, align 8, !tbaa !655
  %i.ux = getelementptr inbounds nuw i8, ptr %i.c, i64 9704 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !1382 ; 2 uses
  %.not285 = icmp eq i32 %i.uy, 0
  %.not286 = icmp eq i32 %i.uo, %i.uy
  %or.cond475 = or i1 %.not285, %.not286
  br i1 %or.cond475, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.thread455
  store i32 0, ptr %i.ux, align 8, !tbaa !1382
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread455
  %i.uz = getelementptr inbounds nuw i8, ptr %i.c, i64 9700 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !1383 ; 2 uses
  %.not287 = icmp eq i32 %i.va, 0
  br i1 %.not287, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 5484
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !672
  %.not288 = icmp eq i32 %i.va, %i.vc
  br i1 %.not288, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.uz, align 4, !tbaa !1383
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  br i1 %.not283454457, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.vd = getelementptr inbounds nuw i8, ptr %i.c, i64 7768
  store i32 0, ptr %i.vd, align 8, !tbaa !547
  %i.ve = getelementptr inbounds nuw i8, ptr %i.c, i64 7772
  store i8 0, ptr %i.ve, align 4, !tbaa !548
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.vf = getelementptr inbounds nuw i8, ptr %i.c, i64 5488
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !761
  %i.vh = load i32, ptr %i.cn, align 4, !tbaa !228 ; 2 uses
  %i.vi = icmp slt i32 %i.vg, %i.vh
  br i1 %i.vi, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.vj = getelementptr inbounds nuw i8, ptr %i.c, i64 5484
  store i32 0, ptr %i.vj, align 4, !tbaa !672
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.vk = getelementptr inbounds nuw i8, ptr %i.c, i64 5493
  store i8 0, ptr %i.vk, align 1, !tbaa !719
  %i.vl = getelementptr inbounds nuw i8, ptr %i.c, i64 9572
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !1384
  %i.vn = icmp slt i32 %i.vm, %i.vh
  br i1 %i.vn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.c, i64 9568
  store i32 0, ptr %i.vo, align 8, !tbaa !1385
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.vp = getelementptr inbounds nuw i8, ptr %i.c, i64 9376 ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !682 ; 3 uses
  %.not289 = icmp eq i32 %i.vq, 0                 ; 2 uses
  br i1 %.not289, label %.sink.split767, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vr = getelementptr inbounds nuw i8, ptr %i.c, i64 9404
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !762
  %i.vt = getelementptr inbounds nuw i8, ptr %i.c, i64 4508
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !1386
  %i.vv = fcmp ult float %i.vs, %i.vu
  br i1 %i.vv, label %bb.cq, label %.sink.split767

.sink.split767:                                   ; preds = %bb.co, %bb.cp
  %.sink768 = phi i32 [ %i.vq, %bb.cp ], [ 0, %bb.co ]
  %i.vw = getelementptr inbounds nuw i8, ptr %i.c, i64 9392
  store i32 %.sink768, ptr %i.vw, align 8, !tbaa !683
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split767, %bb.cp
  %i.vx = getelementptr inbounds nuw i8, ptr %i.c, i64 5320
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !678 ; 2 uses
  %.not290 = icmp eq ptr %i.vy, null
  br i1 %.not290, label %.sink.split770, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 9404
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !762
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 4508
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !1386
  %i.wd = fcmp ult float %i.wa, %i.wc
  br i1 %i.wd, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !618
  br label %.sink.split770

.sink.split770:                                   ; preds = %bb.cq, %bb.cs
  %.sink771 = phi i32 [ %i.wf, %bb.cs ], [ 0, %bb.cq ]
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 9396
  store i32 %.sink771, ptr %i.wg, align 4, !tbaa !763
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split770, %bb.cr
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 9380
  store i32 %i.vq, ptr %i.wh, align 4, !tbaa !680
  %i.wi = getelementptr inbounds nuw i8, ptr %i.c, i64 9384 ; 3 uses
  %i.wj = load float, ptr %i.wi, align 8, !tbaa !681 ; 2 uses
  br i1 %.not289, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.wk = fadd float %i.un, %i.wj
  store float %i.wk, ptr %i.wi, align 8, !tbaa !681
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 9388
  store float 0.000000e+00, ptr %i.wl, align 4, !tbaa !1387
  store i32 0, ptr %i.vp, align 8, !tbaa !682
  br label %bb.cy

bb.cv:                                            ; preds = %bb.ct
  %i.wm = fcmp ogt float %i.wj, 0.000000e+00
  br i1 %i.wm, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 9388 ; 2 uses
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !1387
  %i.wp = fadd float %i.un, %i.wo                 ; 2 uses
  store float %i.wp, ptr %i.wn, align 4, !tbaa !1387
  %i.wq = fmul float %i.un, 2.000000e+00          ; 2 uses
  %i.wr = fcmp ole float %i.wq, 2.500000e-01
  %i.ws = select i1 %i.wr, float 2.500000e-01, float %i.wq
  %i.wt = fcmp ult float %i.wp, %i.ws
  br i1 %i.wt, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store <2 x float> zeroinitializer, ptr %i.wi, align 8, !tbaa !75
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cv, %bb.cx, %bb.cw, %bb.cu
  %i.wu = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 83 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 40
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !731
  %i.wx = and i32 %i.ww, 64
  %.not.i323 = icmp eq i32 %i.wx, 0
  br i1 %.not.i323, label %_ZL14UpdateAliasKey8ImGuiKeybf.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 264
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !101 ; 2 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.df, %bb.cz
  %indvars.iv.i.i = phi i64 [ 512, %bb.cz ], [ %indvars.iv.next.i.i.1, %bb.df ] ; 5 uses
  %i.xa = trunc i64 %indvars.iv.i.i to i32
  %i.xb = add nsw i32 %i.xa, -656
  %i.xc = icmp ult i32 %i.xb, 7
  br i1 %i.xc, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xd = getelementptr [16 x i8], ptr %i.wz, i64 %indvars.iv.i.i ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 -7884
  store i8 0, ptr %i.xe, align 4, !tbaa !239
  %i.xf = getelementptr i8, ptr %i.xd, i64 -7880
  store <2 x float> splat (float -1.000000e+00), ptr %i.xf, align 4, !tbaa !75
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 666
  br i1 %exitcond.not.i.i, label %_ZN7ImGuiIO14ClearInputKeysEv.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xg = trunc i64 %indvars.iv.next.i.i to i32
  %i.xh = add nsw i32 %i.xg, -656
  %i.xi = icmp ult i32 %i.xh, 7
  br i1 %i.xi, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.xj = getelementptr [16 x i8], ptr %i.wz, i64 %indvars.iv.next.i.i ; 2 uses
  %i.xk = getelementptr i8, ptr %i.xj, i64 -7884
  store i8 0, ptr %i.xk, align 4, !tbaa !239
  %i.xl = getelementptr i8, ptr %i.xj, i64 -7880
  store <2 x float> splat (float -1.000000e+00), ptr %i.xl, align 4, !tbaa !75
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.da

_ZN7ImGuiIO14ClearInputKeysEv.exit.i:             ; preds = %bb.dc
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wu, i64 300
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wu, i64 3040
  store i64 0, ptr %i.xm, align 4
  call void @_ZN8ImVectorItE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, i32 noundef 0)
  %.pre.i = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %_ZL14UpdateAliasKey8ImGuiKeybf.exit.i

_ZL14UpdateAliasKey8ImGuiKeybf.exit.i:            ; preds = %_ZN7ImGuiIO14ClearInputKeysEv.exit.i, %bb.cy
  %i.xo = phi ptr [ %.pre.i, %_ZN7ImGuiIO14ClearInputKeysEv.exit.i ], [ %i.wu, %bb.cy ] ; 20 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wu, i64 280
  %i.xq = load i8, ptr %i.xp, align 8, !tbaa !243, !range !100, !noundef !236 ; 2 uses
  %i.xr = trunc nuw i8 %i.xq to i1
  %i.xs = select i1 %i.xr, float 1.000000e+00, float 0.000000e+00
  %i.xt = getelementptr i8, ptr %i.xo, i64 2612
  store i8 %i.xq, ptr %i.xt, align 4, !tbaa !239
  %i.xu = getelementptr i8, ptr %i.xo, i64 2624
  store float %i.xs, ptr %i.xu, align 4, !tbaa !764
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wu, i64 281
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !243, !range !100, !noundef !236 ; 2 uses
  %i.xx = trunc nuw i8 %i.xw to i1
  %i.xy = select i1 %i.xx, float 1.000000e+00, float 0.000000e+00
  %i.xz = getelementptr i8, ptr %i.xo, i64 2628
  store i8 %i.xw, ptr %i.xz, align 4, !tbaa !239
  %i.ya = getelementptr i8, ptr %i.xo, i64 2640
  store float %i.xy, ptr %i.ya, align 4, !tbaa !764
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wu, i64 282
  %i.yc = load i8, ptr %i.yb, align 2, !tbaa !243, !range !100, !noundef !236 ; 2 uses
  %i.yd = trunc nuw i8 %i.yc to i1
  %i.ye = select i1 %i.yd, float 1.000000e+00, float 0.000000e+00
  %i.yf = getelementptr i8, ptr %i.xo, i64 2644
  store i8 %i.yc, ptr %i.yf, align 4, !tbaa !239
  %i.yg = getelementptr i8, ptr %i.xo, i64 2656
  store float %i.ye, ptr %i.yg, align 4, !tbaa !764
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wu, i64 283
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !243, !range !100, !noundef !236 ; 2 uses
  %i.yj = trunc nuw i8 %i.yi to i1
  %i.yk = select i1 %i.yj, float 1.000000e+00, float 0.000000e+00
  %i.yl = getelementptr i8, ptr %i.xo, i64 2660
  store i8 %i.yi, ptr %i.yl, align 4, !tbaa !239
  %i.ym = getelementptr i8, ptr %i.xo, i64 2672
  store float %i.yk, ptr %i.ym, align 4, !tbaa !764
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wu, i64 284
  %i.yo = load i8, ptr %i.yn, align 4, !tbaa !243, !range !100, !noundef !236 ; 2 uses
  %i.yp = trunc nuw i8 %i.yo to i1
  %i.yq = select i1 %i.yp, float 1.000000e+00, float 0.000000e+00
  %i.yr = getelementptr i8, ptr %i.xo, i64 2676
  store i8 %i.yo, ptr %i.yr, align 4, !tbaa !239
  %i.ys = getelementptr i8, ptr %i.xo, i64 2688
  store float %i.yq, ptr %i.ys, align 4, !tbaa !764
  %i.yt = getelementptr inbounds nuw i8, ptr %i.wu, i64 292
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !765 ; 2 uses
  %i.yv = fcmp une float %i.yu, 0.000000e+00
  %i.yw = zext i1 %i.yv to i8
  %i.yx = getelementptr i8, ptr %i.xo, i64 2692
  store i8 %i.yw, ptr %i.yx, align 4, !tbaa !239
  %i.yy = getelementptr i8, ptr %i.xo, i64 2704
  store float %i.yu, ptr %i.yy, align 4, !tbaa !764
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wu, i64 288
  %i.za = load float, ptr %i.yz, align 8, !tbaa !766 ; 2 uses
  %i.zb = fcmp une float %i.za, 0.000000e+00
  %i.zc = zext i1 %i.zb to i8
  %i.zd = getelementptr i8, ptr %i.xo, i64 2708
  store i8 %i.zc, ptr %i.zd, align 4, !tbaa !239
  %i.ze = getelementptr i8, ptr %i.xo, i64 2720
  store float %i.za, ptr %i.ze, align 4, !tbaa !764
  %i.zf = getelementptr inbounds nuw i8, ptr %i.wu, i64 304 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !1388 ; 2 uses
  %i.zh = getelementptr i8, ptr %i.xo, i64 2724
  %i.zi = load i8, ptr %i.zh, align 4, !tbaa !239, !range !100, !noundef !236 ; 2 uses
  %i.zj = zext nneg i8 %i.zi to i32
  %spec.select.i.i = shl nuw nsw i32 %i.zj, 12
  %i.zk = getelementptr i8, ptr %i.xo, i64 2740
  %i.zl = load i8, ptr %i.zk, align 4, !tbaa !239, !range !100, !noundef !236 ; 2 uses
  %i.zm = zext nneg i8 %i.zl to i32
  %i.zn = shl nuw nsw i32 %i.zm, 13
  %.1.i.i = or disjoint i32 %i.zn, %spec.select.i.i
  %i.zo = getelementptr i8, ptr %i.xo, i64 2756
  %i.zp = load i8, ptr %i.zo, align 4, !tbaa !239, !range !100, !noundef !236 ; 2 uses
  %i.zq = zext nneg i8 %i.zp to i32
  %i.zr = shl nuw nsw i32 %i.zq, 14
  %i.zs = getelementptr i8, ptr %i.xo, i64 2772
  %i.zt = load i8, ptr %i.zs, align 4, !tbaa !239, !range !100, !noundef !236 ; 2 uses
  %i.zu = zext nneg i8 %i.zt to i32
  %i.zv = shl nuw nsw i32 %i.zu, 15
  %i.zw = or disjoint i32 %.1.i.i, %i.zr
  %.3.i.i = or disjoint i32 %i.zw, %i.zv          ; 3 uses
  store i32 %.3.i.i, ptr %i.zf, align 8, !tbaa !1388
end_hunk_0
begin_hunk_1_@_ZN8ImVectorIfE9push_backERKf:bb.a
  %i.az = sext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !231
  %.not.i.i8.i = icmp eq i32 %i.bb, %i.av
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !233
  %i.bc = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = sext i16 %i.ay to i32
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = srem i32 %i.be, 6                       ; 2 uses
  %i.bg = trunc nsw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.ax, align 4, !tbaa !229
  %i.bh = sext i32 %i.bf to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bh ; 3 uses
  store i32 %i.av, ptr %i.bi, align 4, !tbaa !231
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 0, ptr %i.bj, align 2, !tbaa !233
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 0, ptr %i.bk, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bl = phi i16 [ 1, %bb.j ], [ %i.bc, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bm = phi i64 [ %i.bh, %bb.j ], [ %i.az, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !233
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 10600 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !235
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bs = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.bt = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  tail call void %i.bs(ptr noundef %i.as, ptr noundef %i.bt), !inline_history !52
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.n, ptr %i.an, align 8, !tbaa !592
  store i32 %i.i, ptr %i.b, align 4, !tbaa !650
  %.pre3 = load i32, ptr %0, align 8, !tbaa !651
  br label %_ZN8ImVectorIfE7reserveEi.exit

_ZN8ImVectorIfE7reserveEi.exit:                   ; preds = %._ZN8ImVectorIfE7reserveEi.exit_crit_edge, %bb.k
  %i.bu = phi i32 [ %i.a, %._ZN8ImVectorIfE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.k ]
  %i.bv = phi ptr [ %.pre, %._ZN8ImVectorIfE7reserveEi.exit_crit_edge ], [ %i.n, %bb.k ]
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %1, align 4
  store i32 %i.by, ptr %i.bx, align 4
  %i.bz = load i32, ptr %0, align 8, !tbaa !651
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %0, align 8, !tbaa !651
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14PopTextWrapPosEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 520 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1020 ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.103) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load float, ptr %i.l, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store float %i.m, ptr %i.n, align 8, !tbaa !956
  %i.o = add nsw i32 %i.e, -1
  store i32 %i.o, ptr %i.d, align 8, !tbaa !651
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #24 {
bb.a:
  %.not7.i = icmp eq ptr %0, null
  br i1 %.not7.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  br i1 %2, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.068.us.i = phi ptr [ %i.d, %.lr.ph.split.us.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.068.us.i, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !674
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 968
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !899  ; 2 uses
  %.not.us.i = icmp eq ptr %.068.us.i, %i.d
  br i1 %.not.us.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, label %.lr.ph.split.us.i, !llvm.loop !44

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.068.i = phi ptr [ %i.f, %.lr.ph.split.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.068.i, i64 960
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !674  ; 2 uses
  %.not.i = icmp eq ptr %.068.i, %i.f
  br i1 %.not.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, label %.lr.ph.split.i, !llvm.loop !44

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit:   ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  %.06.lcssa.i = phi ptr [ %.068.us.i, %.lr.ph.split.us.i ], [ %.068.i, %.lr.ph.split.i ] ; 2 uses
  %i.g = icmp eq ptr %.06.lcssa.i, %1
  br i1 %i.g, label %.loopexit, label %.lr.ph

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread: ; preds = %bb.a
  %i.h = icmp eq ptr %1, null
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, %bb.b
  %.01014 = phi ptr [ %i.l, %bb.b ], [ %0, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit ] ; 3 uses
  %i.i = icmp eq ptr %.01014, %1                  ; 3 uses
  %i.j = icmp eq ptr %.01014, %.06.lcssa.i
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.01014, i64 944
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !797  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit
  %.0 = phi i1 [ true, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit ], [ %i.h, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread ], [ %i.i, %bb.b ], [ %i.i, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui20IsWindowInBeginStackEP11ImGuiWindow(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !868  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5272
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !497
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = trunc nuw i64 %i.j to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge, !llvm.loop !53

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv11 = phi i64 [ %i.f, %.lr.ph ], [ %i.j, %bb.b ]
  %i.j = add nsw i64 %indvars.iv11, -1            ; 3 uses
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !894
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %..critedge_crit_edge12, label %bb.b, !llvm.loop !53

..critedge_crit_edge12:                           ; preds = %bb.c
  br label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %bb.b, %..critedge_crit_edge12, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ true, %..critedge_crit_edge12 ], [ false, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15IsWindowHoveredEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %i.b = and i32 %0, -12464
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.104) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !678  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289  ; 4 uses
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %0, 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %0, 8
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  %i.n = and i32 %0, 2
  %.not.a = icmp eq i32 %i.n, 0
  br i1 %.not.a, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, label %1

1:                                                ; preds = %bb.e
  %.not7.i = icmp eq ptr %i.h, null
  br i1 %.not7.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %1
  br i1 %i.m, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.068.us.i = phi ptr [ %i.r, %.lr.ph.split.us.i ], [ %i.h, %.lr.ph.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.068.us.i, i64 960
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !674
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 968
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !899  ; 2 uses
  %.not.us.i = icmp eq ptr %.068.us.i, %i.r
  br i1 %.not.us.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread76, label %.lr.ph.split.us.i, !llvm.loop !44

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.068.i = phi ptr [ %i.t, %.lr.ph.split.i ], [ %i.h, %.lr.ph.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.068.i, i64 960
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !674  ; 2 uses
  %.not.i = icmp eq ptr %.068.i, %i.t
  br i1 %.not.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, label %.lr.ph.split.i, !llvm.loop !44

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit:   ; preds = %1, %bb.e
  %.031 = phi ptr [ %i.h, %bb.e ], [ null, %1 ]   ; 3 uses
  %i.u = and i32 %0, 1
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i.i

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread76: ; preds = %.lr.ph.split.us.i
  %i.v = and i32 %0, 1
  %.not3678 = icmp eq i32 %i.v, 0
  br i1 %.not3678, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.split.us.i.i.preheader

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread: ; preds = %.lr.ph.split.i
  %i.w = and i32 %0, 1
  %.not3670 = icmp eq i32 %i.w, 0
  br i1 %.not3670, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.split.i.i.preheader

.lr.ph.i.i:                                       ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit
  br i1 %i.m, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, %.lr.ph.i.i
  %.0317275 = phi ptr [ %.031, %.lr.ph.i.i ], [ %.068.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread76, %.lr.ph.i.i
  %.0317281 = phi ptr [ %.031, %.lr.ph.i.i ], [ %.068.us.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread76 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i
  %.068.us.i.i = phi ptr [ %i.aa, %.lr.ph.split.us.i.i ], [ %i.f, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.068.us.i.i, i64 960
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !674
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 968
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !899 ; 2 uses
  %.not.us.i.i = icmp eq ptr %.068.us.i.i, %i.aa
  br i1 %.not.us.i.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !44

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i
  %.068.i.i = phi ptr [ %i.ac, %.lr.ph.split.i.i ], [ %i.f, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 960
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !674 ; 2 uses
  %.not.i.i = icmp eq ptr %.068.i.i, %i.ac
  br i1 %.not.i.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, label %.lr.ph.split.i.i, !llvm.loop !44

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i: ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i
  %.0317274 = phi ptr [ %.0317281, %.lr.ph.split.us.i.i ], [ %.0317275, %.lr.ph.split.i.i ] ; 2 uses
  %.06.lcssa.i.i = phi ptr [ %.068.us.i.i, %.lr.ph.split.us.i.i ], [ %.068.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ad = icmp eq ptr %.06.lcssa.i.i, %.0317274
  br i1 %i.ad, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %bb.g
  %.01014.i = phi ptr [ %i.ah, %bb.g ], [ %i.f, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i ] ; 3 uses
  %i.ae = icmp eq ptr %.01014.i, %.0317274
  br i1 %i.ae, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i43
  %i.af = icmp eq ptr %.01014.i, %.06.lcssa.i.i
  br i1 %i.af, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.01014.i, i64 944
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !797 ; 2 uses
  %.not.i44 = icmp eq ptr %i.ah, null
  br i1 %.not.i44, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit, label %.lr.ph.i43, !llvm.loop !45

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit: ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread76, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit
  %.03171 = phi ptr [ %.068.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread ], [ %.031, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit ], [ %.068.us.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread76 ]
  %i.ai = icmp eq ptr %i.f, %.03171
  br i1 %i.ai, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread: ; preds = %.lr.ph.i43, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, %bb.d
  %i.aj = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !370 ; 2 uses
  %.not.i45 = icmp eq ptr %i.al, null
  br i1 %.not.i45, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 960
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !674 ; 6 uses
  %.not20.i = icmp eq ptr %i.an, null
  br i1 %.not20.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 205
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !398, !range !100, !noundef !236
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !674 ; 3 uses
  %.not21.i = icmp eq ptr %i.an, %i.as
  br i1 %.not21.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !614 ; 2 uses
  %i.av = and i32 %i.au, 134217728
  %.not22.i = icmp eq i32 %i.av, 0
  br i1 %.not22.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = and i32 %i.au, 67108864
  %.not23.i = icmp ne i32 %i.aw, 0
  %i.ax = and i32 %0, 32
  %.not24.i = icmp eq i32 %i.ax, 0
  %or.cond.i = and i1 %.not24.i, %.not23.i
  br i1 %or.cond.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 960
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !674
  %i.ba = icmp eq ptr %i.az, %i.an
  br i1 %i.ba, label %.loopexit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.m, %bb.n
  %.079.i.i = phi ptr [ %i.bd, %bb.n ], [ %i.as, %bb.m ] ; 2 uses
  %i.bb = icmp eq ptr %.079.i.i, %i.an
  br i1 %i.bb, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i46
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 952
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !675 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i47, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit, label %.lr.ph.i.i46, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph.i.i46, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, %bb.m, %bb.i, %bb.j, %bb.h, %bb.l
  %i.be = and i32 %0, 128
  %.not37 = icmp eq i32 %i.be, 0
  br i1 %.not37, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !652 ; 2 uses
  %.not38 = icmp eq i32 %i.bg, 0
  br i1 %.not38, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 5443
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !659, !range !100, !noundef !236
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !639
  %.not39 = icmp eq i32 %i.bg, %i.bl
  br i1 %.not39, label %bb.r, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %.loopexit
  %i.bm = and i32 %0, 4096
  %.not40 = icmp eq i32 %i.bm, 0
  br i1 %.not40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 4520
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !677
  %i.bp = or i32 %i.bo, %0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.032 = phi i32 [ %i.bp, %bb.s ], [ %0, %bb.r ]
  %i.bq = and i32 %.032, 8192
  %.not41 = icmp eq i32 %i.bq, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 9396
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !763
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !618
  %.not42 = icmp eq i32 %i.bs, %i.bu
  br i1 %.not42, label %bb.v, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit

_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit: ; preds = %bb.g, %bb.f, %bb.n, %bb.u, %bb.q, %bb.c, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, %bb.v
  %.1 = phi i1 [ false, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit ], [ false, %bb.q ], [ true, %bb.v ], [ false, %bb.n ], [ false, %bb.c ], [ false, %bb.u ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui14GetWindowWidthEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !615
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui15GetWindowHeightEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.e = load float, ptr %i.d, align 4, !tbaa !616
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui12GetWindowPosEv() local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.d, align 8, !tbaa !75
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui12SetWindowPosERK6ImVec2i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  tail call void @_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i(ptr noundef %i.c, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #23 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !82      ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.a, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.f
  %i.b = phi i8 [ %i.s, %bb.f ], [ %i.a, %bb.a ]  ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !82
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !6

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !237
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

end_hunk_1
begin_hunk_2_@_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy:_Z7ImClampRK6ImVec2S1_S1_.exit
  br i1 %or.cond119.3, label %.critedge121.3, label %bb.ab

.critedge121.3:                                   ; preds = %bb.an, %bb.am, %.critedge121.2
  %.off = add i32 %i.cg, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.ao, label %.critedge123

bb.ao:                                            ; preds = %.critedge121.3
  %.val.4 = load float, ptr %4, align 4
  %.val253.4 = load float, ptr %3, align 4
  %i.em = fsub float %.val.4, %.val253.4
  %i.en = fcmp olt float %i.em, %i.ck
  br i1 %i.en, label %.critedge123, label %bb.ab

.critedge123:                                     ; preds = %.critedge121.3, %bb.ao, %.critedge118
  store i32 -1, ptr %2, align 4, !tbaa !1563
  br i1 %i.cf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge123
  %i.eo = fadd <2 x float> %i.c, splat (float 2.000000e+00)
  br label %bb.ar

bb.aq:                                            ; preds = %.critedge123
  %i.ep = load <2 x float>, ptr %0, align 4, !tbaa !75
  %i.eq = fadd <2 x float> %i.f, %i.ep            ; 2 uses
  %i.er = fcmp olt <2 x float> %i.eq, %i.e
  %i.es = select <2 x i1> %i.er, <2 x float> %i.eq, <2 x float> %i.e
  %i.et = fsub <2 x float> %i.es, %i.f            ; 2 uses
  %i.eu = fcmp oge <2 x float> %i.et, %i.g
  %i.ev = select <2 x i1> %i.eu, <2 x float> %i.et, <2 x float> %i.g
  br label %bb.ar

bb.ar:                                            ; preds = %.thread203, %.critedge, %bb.aq, %bb.ap
  %.sroa.0151.5 = phi <2 x float> [ %i.eo, %bb.ap ], [ %i.ev, %bb.aq ], [ %i.dm, %.thread203 ], [ %.sroa.0151.1.lcssa, %.critedge ]
  ret <2 x float> %.sroa.0151.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !399
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3508
  %i.h = load <2 x float>, ptr %i.e, align 8, !tbaa !75 ; 3 uses
  %i.i = load <2 x float>, ptr %i.f, align 8, !tbaa !75
  %i.j = fadd <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !75 ; 2 uses
  %i.l = fsub <2 x float> %i.j, %i.h
  %i.m = fmul <2 x float> %i.k, splat (float 2.000000e+00)
  %i.n = fcmp ogt <2 x float> %i.l, %i.m
  %i.o = fneg <2 x float> %i.k
  %i.p = select <2 x i1> %i.n, <2 x float> %i.o, <2 x float> zeroinitializer ; 2 uses
  %i.q = fsub <2 x float> %i.h, %i.p
  %i.r = fadd <2 x float> %i.j, %i.p
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.r, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14SetWindowFocusEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.c, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14SetWindowFocusEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !82      ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.a, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.g
  %i.b = phi i8 [ %i.s, %bb.g ], [ %i.a, %bb.b ]  ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.g ], [ %0, %bb.b ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.g ], [ -1, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !82
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.g, !llvm.loop !6

bb.f:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !237
  %i.r = xor i32 %i.q, %i.l
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.334.i.i = phi i32 [ -1, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.e ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !82 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.g
  %i.t = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.b
  %.4.i.i = phi i32 [ 0, %bb.b ], [ %i.t, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5280
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262  ; 3 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !261  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !260
  %i.ae = icmp ult i32 %i.ad, %.4.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.neg.i.i.i.i = xor i64 %i.ab, -1
  %i.ag = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ab ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.x, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ah = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aa
  br i1 %i.ah, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ai = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !260
  %.not.i.i.i = icmp eq i32 %i.ai, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82 ; 2 uses
  %.not5 = icmp eq ptr %i.ak, null
  br i1 %.not5, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split

_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split: ; preds = %bb.a, %_ZN5ImGui16FindWindowByNameEPKc.exit
  %.sink = phi ptr [ %i.ak, %_ZN5ImGui16FindWindowByNameEPKc.exit ], [ null, %bb.a ]
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %.sink, i32 noundef 0)
  br label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit.thread:      ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, %bb.h, %_ZN5ImGui16FindWindowByNameEPKc.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui18SetNextWindowFocusEv() local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7928 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !852
  %i.d = or i32 %i.c, 32
  store i32 %i.d, ptr %i.b, align 8, !tbaa !852
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui15IsWindowFocusedEi(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !370  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !289  ; 4 uses
  %i.f = icmp eq ptr %i.c, null
  br i1 %i.f, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %0, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %0, 8
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.j = and i32 %0, 2
  %.not16.a = icmp eq i32 %i.j, 0
  br i1 %.not16.a, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, label %1

1:                                                ; preds = %bb.c
  %.not7.i = icmp eq ptr %i.e, null
  br i1 %.not7.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %1
  br i1 %i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.068.us.i = phi ptr [ %i.n, %.lr.ph.split.us.i ], [ %i.e, %.lr.ph.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.068.us.i, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !674
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 968
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !899  ; 2 uses
  %.not.us.i = icmp eq ptr %.068.us.i, %i.n
  br i1 %.not.us.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread36, label %.lr.ph.split.us.i, !llvm.loop !44

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.068.i = phi ptr [ %i.p, %.lr.ph.split.i ], [ %i.e, %.lr.ph.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.068.i, i64 960
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !674  ; 2 uses
  %.not.i = icmp eq ptr %.068.i, %i.p
  br i1 %.not.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, label %.lr.ph.split.i, !llvm.loop !44

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit:   ; preds = %1, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %1 ]     ; 3 uses
  %i.q = and i32 %0, 1
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.e, label %.lr.ph.i.i

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread36: ; preds = %.lr.ph.split.us.i
  %i.r = and i32 %0, 1
  %.not1738 = icmp eq i32 %i.r, 0
  br i1 %.not1738, label %bb.e, label %.lr.ph.split.us.i.i.preheader

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread: ; preds = %.lr.ph.split.i
  %i.s = and i32 %0, 1
  %.not1730 = icmp eq i32 %i.s, 0
  br i1 %.not1730, label %bb.e, label %.lr.ph.split.i.i.preheader

.lr.ph.i.i:                                       ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit
  br i1 %i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, %.lr.ph.i.i
  %.03235 = phi ptr [ %.0, %.lr.ph.i.i ], [ %.068.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread36, %.lr.ph.i.i
  %.03241 = phi ptr [ %.0, %.lr.ph.i.i ], [ %.068.us.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread36 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i
  %.068.us.i.i = phi ptr [ %i.w, %.lr.ph.split.us.i.i ], [ %i.c, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.068.us.i.i, i64 960
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !674
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 968
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !899  ; 2 uses
  %.not.us.i.i = icmp eq ptr %.068.us.i.i, %i.w
  br i1 %.not.us.i.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !44

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i
  %.068.i.i = phi ptr [ %i.y, %.lr.ph.split.i.i ], [ %i.c, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 960
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !674  ; 2 uses
  %.not.i.i = icmp eq ptr %.068.i.i, %i.y
  br i1 %.not.i.i, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, label %.lr.ph.split.i.i, !llvm.loop !44

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i: ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i
  %.03234 = phi ptr [ %.03241, %.lr.ph.split.us.i.i ], [ %.03235, %.lr.ph.split.i.i ] ; 2 uses
  %.06.lcssa.i.i = phi ptr [ %.068.us.i.i, %.lr.ph.split.us.i.i ], [ %.068.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.z = icmp eq ptr %.06.lcssa.i.i, %.03234
  br i1 %i.z, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %bb.d
  %.01014.i = phi ptr [ %i.ad, %bb.d ], [ %i.c, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i ] ; 3 uses
  %i.aa = icmp eq ptr %.01014.i, %.03234          ; 3 uses
  %i.ab = icmp eq ptr %.01014.i, %.06.lcssa.i.i
  %or.cond.a = or i1 %i.aa, %i.ab
  br i1 %or.cond.a, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i18
  %i.ac = getelementptr inbounds nuw i8, ptr %.01014.i, i64 944
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !797 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ad, null
  br i1 %.not.i19, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i18, !llvm.loop !45

bb.e:                                             ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread36, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit
  %.031 = phi ptr [ %.068.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread ], [ %.0, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit ], [ %.068.us.i, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.thread36 ]
  %i.ae = icmp eq ptr %i.c, %.031
  br label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit: ; preds = %bb.d, %.lr.ph.i18, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %bb.e, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ %i.ae, %bb.e ], [ true, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i ], [ %i.aa, %.lr.ph.i18 ], [ %i.aa, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui24BringWindowToDisplayBackEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5224 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !494  ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !601
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5216
  %i.g = load i32, ptr %i.f, align 8, !tbaa !718  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !601
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = shl nuw nsw i64 %indvars.iv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.c, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !494
  store ptr %0, ptr %i.n, align 8, !tbaa !601
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1564

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui26BringWindowToDisplayBehindEP11ImGuiWindowS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !674  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5216
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5224 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !494  ; 7 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !496  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx.i.i = shl nsw i64 %i.j, 3
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i ; 2 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.i.i, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit.thread

_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit.thread: ; preds = %bb.a
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  br label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.07.i.i = phi ptr [ %i.p, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %.07.i.i, align 8, !tbaa !601
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 3 uses
  %i.q = icmp ult ptr %i.p, %i.k
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit, !llvm.loop !32

_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.07.i.i, %.lr.ph.i.i ], [ %i.p, %bb.b ]
  %i.r = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.s = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit, %bb.c
  %.07.i.i30 = phi ptr [ %i.y, %bb.c ], [ %i.h, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit ] ; 3 uses
  %i.w = load ptr, ptr %.07.i.i30, align 8, !tbaa !601
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i29
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i30, i64 8 ; 3 uses
  %i.z = icmp ult ptr %i.y, %i.k
  br i1 %i.z, label %.lr.ph.i.i29, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit, !llvm.loop !32

_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit: ; preds = %bb.c, %.lr.ph.i.i29
  %.0.lcssa.i.i28.ph = phi ptr [ %.07.i.i30, %.lr.ph.i.i29 ], [ %i.y, %bb.c ]
  %.pre = ptrtoint ptr %.0.lcssa.i.i28.ph to i64
  br label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31

_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31: ; preds = %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit.thread
  %.pre-phi = phi i64 [ %.pre, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit ], [ %i.m, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit.thread ]
  %i.aa = phi i32 [ %i.v, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit ], [ 0, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit.thread ] ; 4 uses
  %i.ab = phi i64 [ %i.s, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31.loopexit ], [ %i.m, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit.thread ]
  %i.ac = sub i64 %.pre-phi, %i.ab                ; 3 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = icmp slt i32 %i.aa, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31
  %i.ag = xor i32 %i.aa, -1
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = sext i32 %i.aa to i64
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.am, i64 %i.aj, i1 false)
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !494
  %i.ao = shl i64 %i.ac, 29
  %sext33 = add i64 %i.ao, -4294967296
  %i.ap = ashr i64 %sext33, 32
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  store ptr %i.c, ptr %i.aq, align 8, !tbaa !601
  br label %bb.f

bb.e:                                             ; preds = %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit31
  %i.ar = sub nsw i32 %i.aa, %i.ae
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %sext = shl i64 %i.ac, 29
  %i.au = ashr i64 %sext, 32                      ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.h, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aw, ptr align 8 %i.av, i64 %i.at, i1 false)
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !494
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.au
  store ptr %i.c, ptr %i.ay, align 8, !tbaa !601
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19SetNavCursorVisibleEb(i1 noundef zeroext %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !370  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !614
  %i.f = and i32 %i.e, 65536
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 119
  %i.h = load i8, ptr %i.g, align 1, !tbaa !817, !range !100, !noundef !236
  %i.i = zext i1 %0 to i8
  %i.j = or i8 %i.h, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  store i8 %.0, ptr %i.k, align 8, !tbaa !424
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui28SetNavCursorVisibleAfterMoveEv() local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !370  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !614
  %i.f = and i32 %i.e, 65536
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.c, label %.sink.split
end_hunk_2
begin_hunk_3_@_ZN5ImGui23CreateNewWindowSettingsEPKc:bb.a
  ]

bb.b:                                             ; preds = %.preheader
  %i.g = load i8, ptr %i.e, align 1, !tbaa !82
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %bb.c, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !82
  %i.k = icmp eq i8 %i.j, 35
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %.08.i.ph
  br label %.preheader.outer

_Z30ImHashSkipUncontributingPrefixPKc.exit:       ; preds = %.preheader, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.08.i.ph, %.preheader ] ; 5 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #57 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10104 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !606  ; 2 uses
  %i.p = trunc i64 %i.m to i32
  %i.q = and i32 %i.p, -4
  %i.r = add i32 %i.q, 24                         ; 2 uses
  %i.s = add nsw i32 %i.r, %i.o                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 10108
  %i.u = load i32, ptr %i.t, align 4, !tbaa !279  ; 4 uses
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_Z30ImHashSkipUncontributingPrefixPKc.exit
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = sdiv i32 %i.u, 2
  %i.x = add nsw i32 %i.w, %i.u
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %i.x, %bb.e ], [ 8, %bb.d ]
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %i.y, i32 %i.s)
  tail call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, %_Z30ImHashSkipUncontributingPrefixPKc.exit
  store i32 %i.s, ptr %i.n, align 8, !tbaa !280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 10112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !603
  %i.ac = sext i32 %i.o to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 3 uses
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !237
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader45.i

.preheader.i:                                     ; preds = %bb.f
  %i.af = load i8, ptr %.0, align 1, !tbaa !82    ; 2 uses
  %.not4050.i = icmp eq i8 %i.af, 0
  br i1 %.not4050.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.preheader45.i:                                   ; preds = %bb.f, %bb.k
  %.03049.i = phi ptr [ %.1.i, %bb.k ], [ %.0, %bb.f ] ; 4 uses
  %.03148.i = phi i32 [ %.132.i, %bb.k ], [ -1, %bb.f ] ; 2 uses
  %.03547.i = phi i64 [ %.136.i, %bb.k ], [ %i.m, %bb.f ] ; 2 uses
  %i.ag = add i64 %.03547.i, -1                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03049.i, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.03049.i, align 1, !tbaa !82 ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = icmp eq i8 %i.ai, 35
  %i.al = icmp ugt i64 %i.ag, 1
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.preheader45.i
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !82
  %i.an = icmp eq i8 %i.am, 35
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03049.i, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !82
  %i.aq = icmp eq i8 %i.ap, 35
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.03049.i, i64 3
  %i.as = add i64 %.03547.i, -3
  br label %bb.k, !llvm.loop !5

bb.j:                                             ; preds = %bb.h, %bb.g, %.preheader45.i
  %i.at = lshr i32 %.03148.i, 8
  %i.au = and i32 %.03148.i, 255
  %i.av = xor i32 %i.au, %i.aj
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !237
  %i.az = xor i32 %i.ay, %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.136.i = phi i64 [ %i.as, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  %.132.i = phi i32 [ -1, %bb.i ], [ %i.az, %bb.j ] ; 2 uses
  %.1.i = phi ptr [ %i.ar, %bb.i ], [ %i.ah, %bb.j ]
  %.not41.i = icmp eq i64 %.136.i, 0
  br i1 %.not41.i, label %_Z9ImHashStrPKcmj.exit, label %.preheader45.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %i.ba = phi i8 [ %i.br, %bb.p ], [ %i.af, %.preheader.i ] ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.p ], [ %.0, %.preheader.i ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.p ], [ -1, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.bc = zext i8 %i.ba to i32
  %i.bd = icmp eq i8 %i.ba, 35
  br i1 %i.bd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !82
  %i.bf = icmp eq i8 %i.be, 35
  br i1 %i.bf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !82
  %i.bi = icmp eq i8 %i.bh, 35
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  br label %bb.p, !llvm.loop !6

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %i.bk = lshr i32 %.23351.i, 8
  %i.bl = and i32 %.23351.i, 255
  %i.bm = xor i32 %i.bl, %i.bc
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !237
  %i.bq = xor i32 %i.bp, %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.334.i = phi i32 [ -1, %bb.n ], [ %i.bq, %bb.o ] ; 2 uses
  %.3.i = phi ptr [ %i.bj, %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %i.br = load i8, ptr %.3.i, align 1, !tbaa !82  ; 2 uses
  %.not40.i = icmp eq i8 %i.br, 0
  br i1 %.not40.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.k, %bb.p, %.preheader.i
  %.4.i = phi i32 [ %.334.i, %bb.p ], [ -1, %.preheader.i ], [ %.132.i, %bb.k ]
  %i.bs = xor i32 %.4.i, -1
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !608
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bu = add i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr nonnull align 1 %.0, i64 %i.bu, i1 false)
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui22FindWindowSettingsByIDEj(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !603  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0914 = phi ptr [ %i.n, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 5 uses
  %i.f = load i32, ptr %.0914, align 4, !tbaa !608
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0914, i64 14
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 8
  %.not11 = icmp eq i8 %i.j, 0
  br i1 %.not11, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph, %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0914, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !237
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %.0914, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !606
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %bb.b, %bb.a
  %.09.lcssa = phi ptr [ null, %bb.a ], [ %.0914, %bb.b ], [ null, %select.unfold ]
  ret ptr %.09.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.b = load i32, ptr %i.a, align 4, !tbaa !602  ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !603
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  br label %_ZN5ImGui22FindWindowSettingsByIDEj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !618
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10104
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 10112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603  ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0914.i = phi ptr [ %i.w, %select.unfold.i ], [ %i.n, %.lr.ph.i.preheader ] ; 5 uses
  %i.o = load i32, ptr %.0914.i, align 4, !tbaa !608
  %i.p = icmp eq i32 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0914.i, i64 14
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 8
  %.not11.i = icmp eq i8 %i.s, 0
  br i1 %.not11.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %.lr.ph.i
  %i.t = getelementptr inbounds i8, ptr %.0914.i, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !237
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %.0914.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.k, align 8, !tbaa !606
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = icmp eq ptr %i.w, %i.aa
  br i1 %i.ab, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %.lr.ph.i

_ZN5ImGui22FindWindowSettingsByIDEj.exit:         ; preds = %select.unfold.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ], [ null, %select.unfold.i ], [ %.0914.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19ClearWindowSettingsEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #38 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !82      ; 3 uses
  %.not4050.i.i = icmp eq i8 %i.a, 0              ; 2 uses
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.f
  %i.b = phi i8 [ %i.s, %bb.f ], [ %i.a, %bb.a ]  ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !82
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !6

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !237
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !82 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.t = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.a
  %.4.i.i = phi i32 [ 0, %bb.a ], [ %i.t, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5280
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262  ; 3 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !261  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !260
  %i.ae = icmp ult i32 %i.ad, %.4.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.neg.i.i.i.i = xor i64 %i.ab, -1
  %i.ag = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ab ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.x, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ah = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aa
  br i1 %i.ah, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ai = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !260
  %.not.i.i.i = icmp eq i32 %i.ai, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %.critedge

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82 ; 13 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !614 ; 2 uses
  %i.an = or i32 %i.am, 256
  store i32 %i.an, ptr %i.al, align 4, !tbaa !614
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8208
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !399
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !400
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !75
  %i.at = fadd <2 x float> %i.as, splat (float 6.000000e+01) ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store <2 x float> %i.at, ptr %i.au, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 239 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = and i32 %i.ax, 255
  %i.az = or disjoint i32 %i.ay, 252645120
  store i32 %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  store <2 x float> %i.at, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  store <2 x float> %i.at, ptr %i.bb, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 296
  store <2 x float> %i.at, ptr %i.bc, align 8, !tbaa !75
  %i.bd = and i32 %i.am, 64
  %.not31.i.i.not = icmp eq i32 %i.bd, 0
  %.sink.i.i = zext i1 %.not31.i.i.not to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  store i8 2, ptr %i.be, align 8, !tbaa !612
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 233
  store i8 2, ptr %i.bf, align 1, !tbaa !611
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 234
  store i8 %.sink.i.i, ptr %i.bg, align 2, !tbaa !617
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 708
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !602 ; 2 uses
  %.not.i = icmp eq i32 %i.bi, -1
  br i1 %.not.i, label %bb.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !618
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 10104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 10112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !603 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i11, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %select.unfold.i.i, %.lr.ph.i.preheader.i
  %.0914.i.i = phi ptr [ %i.bx, %select.unfold.i.i ], [ %i.bo, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.bp = load i32, ptr %.0914.i.i, align 4, !tbaa !608
  %i.bq = icmp eq i32 %i.bp, %i.bk
  br i1 %i.bq, label %bb.j, label %select.unfold.i.i

bb.j:                                             ; preds = %.lr.ph.i.i12
  %i.br = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 14
  %i.bs = load i8, ptr %i.br, align 2             ; 2 uses
  %i.bt = and i8 %i.bs, 8
  %.not11.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not11.i.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.j, %.lr.ph.i.i12
  %i.bu = getelementptr inbounds i8, ptr %.0914.i.i, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !237
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.0914.i.i, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bl, align 8, !tbaa !606
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = icmp eq ptr %i.bx, %i.cb
  br i1 %i.cc, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i.i12

.critedge:                                        ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, %bb.g, %_ZN5ImGui16FindWindowByNameEPKc.exit
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.o
  %i.cd = phi i8 [ %i.cu, %bb.o ], [ %i.a, %.critedge ] ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.o ], [ %0, %.critedge ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.o ], [ -1, %.critedge ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.cf = zext i8 %i.cd to i32
  %i.cg = icmp eq i8 %i.cd, 35
  br i1 %i.cg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !82
  %i.ci = icmp eq i8 %i.ch, 35
  br i1 %i.ci, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !82
  %i.cl = icmp eq i8 %i.ck, 35
  br i1 %i.cl, label %bb.m, label %bb.n

end_hunk_3
