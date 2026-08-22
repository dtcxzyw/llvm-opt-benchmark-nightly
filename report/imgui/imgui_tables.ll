Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f:bb.a
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 64
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !290 ; 2 uses
  %.not360426 = icmp eq ptr %i.sh, %i.sj
  br i1 %.not360426, label %.thread492, label %.lr.ph

.thread492:                                       ; preds = %.lr.ph, %bb.cq
  store ptr null, ptr %i.sb, align 8, !tbaa !293
  br label %bb.cs

.lr.ph:                                           ; preds = %bb.cq, %.lr.ph
  %.0331427 = phi ptr [ %i.sn, %.lr.ph ], [ %i.sh, %bb.cq ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0331427, i64 113 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = or i8 %i.sl, 8
  store i8 %i.sm, ptr %i.sk, align 1
  %i.sn = getelementptr inbounds nuw i8, ptr %.0331427, i64 120 ; 2 uses
  %.not360 = icmp eq ptr %i.sn, %i.sj
  br i1 %.not360, label %.thread492, label %.lr.ph

bb.cr:                                            ; preds = %bb.cn
  %.phi.trans.insert442 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre443 = load ptr, ptr %.phi.trans.insert442, align 8, !tbaa !293
  %i.so = icmp eq ptr %.pre443, null
  br i1 %i.so, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.thread492, %bb.cr
  %i.sp = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.sq = add nsw i32 %2, 31
  %i.sr = mul i32 %2, 120
  %i.ss = shl i32 %2, 1
  %i.st = mul i32 %2, 122
  %i.su = shl i32 %2, 3                           ; 2 uses
  %i.sv = add nsw i32 %i.st, 2                    ; 2 uses
  %i.sw = and i32 %i.sv, -4
  %i.sx = add nsw i32 %i.sv, %i.su                ; 2 uses
  %i.sy = ashr i32 %i.sq, 3
  %i.sz = and i32 %i.sy, -4                       ; 3 uses
  %i.ta = and i32 %i.sx, -4
  %i.tb = add nsw i32 %i.sx, %i.sz                ; 2 uses
  %i.tc = and i32 %i.tb, -4
  %i.td = add nsw i32 %i.tb, %i.sz
  %i.te = and i32 %i.td, -4                       ; 2 uses
  %i.tf = add nsw i32 %i.te, %i.sz
  %i.tg = sext i32 %i.tf to i64                   ; 2 uses
  %i.th = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.tg) ; 2 uses
  store ptr %i.th, ptr %i.sp, align 8, !tbaa !293
  call void @llvm.memset.p0.i64(ptr align 1 %i.th, i8 0, i64 %i.tg, i1 false)
  %i.ti = load ptr, ptr %i.sp, align 8, !tbaa !293 ; 6 uses
  %i.tj = sext i32 %i.sr to i64
  %i.tk = getelementptr inbounds i8, ptr %i.ti, i64 %i.tj ; 3 uses
  store ptr %i.ti, ptr %i.ro, align 8, !tbaa !291
  store ptr %i.tk, ptr %i.rp, align 8, !tbaa !290
  %i.tl = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.tm = sext i32 %i.ss to i64
  %i.tn = getelementptr inbounds i8, ptr %i.tk, i64 %i.tm
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !297
  %i.to = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %i.tn, ptr %i.to, align 8, !tbaa !298
  %i.tp = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.tq = sext i32 %i.sw to i64
  %i.tr = getelementptr inbounds i8, ptr %i.ti, i64 %i.tq ; 2 uses
  %i.ts = sext i32 %i.su to i64
  %i.tt = getelementptr inbounds i8, ptr %i.tr, i64 %i.ts
  store ptr %i.tr, ptr %i.tp, align 8, !tbaa !299
  %i.tu = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %i.tt, ptr %i.tu, align 8, !tbaa !300
  %i.tv = sext i32 %i.ta to i64
  %i.tw = getelementptr inbounds i8, ptr %i.ti, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !301
  %i.ty = sext i32 %i.tc to i64
  %i.tz = getelementptr inbounds i8, ptr %i.ti, i64 %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr %i.tz, ptr %i.ua, align 8, !tbaa !302
  %i.ub = sext i32 %i.te to i64
  %i.uc = getelementptr inbounds i8, ptr %i.ti, i64 %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !303
  %i.ue = getelementptr inbounds nuw i8, ptr %i.am, i64 571
  store i8 1, ptr %i.ue, align 1, !tbaa !304
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.uf = getelementptr inbounds nuw i8, ptr %i.am, i64 581 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !305, !range !166, !noundef !167
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %.thread493, label %bb.cu

.thread493:                                       ; preds = %bb.ct
  %i.ui = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.ui, align 2, !tbaa !306
  %i.uj = getelementptr inbounds nuw i8, ptr %i.am, i64 571
  store i8 1, ptr %i.uj, align 1, !tbaa !304
  store i8 0, ptr %i.uf, align 1, !tbaa !305
  %i.uk = getelementptr inbounds nuw i8, ptr %i.am, i64 577
  store i8 0, ptr %i.uk, align 1, !tbaa !307
  %i.ul = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store i32 0, ptr %i.ul, align 8, !tbaa !308
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %.phi.trans.insert445 = getelementptr inbounds nuw i8, ptr %i.am, i64 571
  %.pre446 = load i8, ptr %.phi.trans.insert445, align 1, !tbaa !304, !range !166
  %i.um = trunc nuw i8 %.pre446 to i1
  br i1 %i.um, label %bb.cv, label %.loopexit

bb.cv:                                            ; preds = %.thread493, %bb.cu
  br i1 %i.fc, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.un = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  store i32 -1, ptr %i.un, align 4, !tbaa !309
  %i.uo = getelementptr inbounds nuw i8, ptr %i.am, i64 577
  store i8 1, ptr %i.uo, align 1, !tbaa !307
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.up = getelementptr inbounds nuw i8, ptr %i.am, i64 573
  store i8 1, ptr %i.up, align 1, !tbaa !310
  %i.uq = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.uq, align 2, !tbaa !306
  %i.ur = getelementptr inbounds nuw i8, ptr %i.am, i64 572
  store i8 0, ptr %i.ur, align 4, !tbaa !311
  %i.us = getelementptr inbounds nuw i8, ptr %i.am, i64 122
  store i16 -1, ptr %i.us, align 2, !tbaa !312
  %i.ut = getelementptr inbounds nuw i8, ptr %i.am, i64 550
  store i16 -1, ptr %i.ut, align 2, !tbaa !313
  %i.uu = getelementptr inbounds nuw i8, ptr %i.am, i64 532
  store i16 -1, ptr %i.uu, align 4, !tbaa !314
  %i.uv = getelementptr inbounds nuw i8, ptr %i.am, i64 530
  store i16 -1, ptr %i.uv, align 2, !tbaa !315
  %i.uw = getelementptr inbounds nuw i8, ptr %i.am, i64 540
  store i16 -1, ptr %i.uw, align 4, !tbaa !316
  %i.ux = getelementptr inbounds nuw i8, ptr %i.am, i64 538
  store i16 -1, ptr %i.ux, align 2, !tbaa !317
  %i.uy = getelementptr inbounds nuw i8, ptr %i.am, i64 528
  store i16 -1, ptr %i.uy, align 8, !tbaa !318
  %i.uz = getelementptr inbounds nuw i8, ptr %i.am, i64 524
  store i16 -1, ptr %i.uz, align 4, !tbaa !319
  %i.va = getelementptr inbounds nuw i8, ptr %i.am, i64 522
  store i16 -1, ptr %i.va, align 2, !tbaa !320
  %i.vb = icmp sgt i32 %2, 0
  br i1 %i.vb, label %.lr.ph431, label %.loopexit

.lr.ph431:                                        ; preds = %bb.cx
  %i.vc = getelementptr i8, ptr %i.cw, i64 -120
  %i.vd = getelementptr i8, ptr %i.cw, i64 -112
  %i.ve = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.6.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 56
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph431, %bb.dc
  %indvars.iv = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next, %bb.dc ] ; 6 uses
  %i.vf = load ptr, ptr %i.ro, align 8, !tbaa !291
  %i.vg = getelementptr inbounds nuw [120 x i8], ptr %i.vf, i64 %indvars.iv ; 17 uses
  %i.vh = load ptr, ptr %i.vc, align 8, !tbaa !321 ; 3 uses
  %.not361 = icmp eq ptr %i.vh, null
  br i1 %.not361, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vi = load ptr, ptr %i.vd, align 8, !tbaa !290
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = ptrtoint ptr %i.vh to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = sdiv exact i64 %i.vl, 120
  %sext491 = shl i64 %i.vm, 32
  %i.vn = ashr exact i64 %sext491, 32
  %i.vo = icmp slt i64 %indvars.iv, %i.vn
  br i1 %i.vo, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vp = getelementptr inbounds nuw [120 x i8], ptr %i.vh, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(118) %i.vg, ptr noundef nonnull align 4 dereferenceable(118) %i.vp, i64 118, i1 false), !tbaa.struct !322
  %.phi.trans.insert447 = getelementptr inbounds nuw i8, ptr %i.vg, i64 90
  %.pre448 = load i16, ptr %.phi.trans.insert447, align 2, !tbaa !327
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vg, i64 20 ; 3 uses
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.6, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.56..sroa_idx, i8 -1, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vg, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  store float -1.000000e+00, ptr %.sroa.4.0..sroa_idx399, align 4, !tbaa !168
  store i64 0, ptr %i.vq, align 4
  %.sroa.5400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 28
  store float -1.000000e+00, ptr %.sroa.5400.0..sroa_idx, align 4, !tbaa !168
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6, i64 68, i1 false), !tbaa.struct !330
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 100
  store i16 255, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !324
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 102
  store i16 255, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !324
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 104
  store i16 255, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !324
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 106
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vg, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.vs, i8 0, i64 5, i1 false)
  %.sroa.10401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 113
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 114
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store float %i.vr, ptr %i.vq, align 4, !tbaa !329
  store i8 3, ptr %.sroa.10401.0..sroa_idx, align 1
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vg, i64 108
  store i8 1, ptr %i.vt, align 4, !tbaa !331
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vg, i64 107
  store i8 1, ptr %i.vu, align 1, !tbaa !332
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !333
  %i.vv = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vg, i64 90
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !327
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.vx = phi i16 [ %i.vv, %bb.db ], [ %.pre448, %bb.da ]
  %i.vy = load ptr, ptr %i.ve, align 8, !tbaa !297
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %indvars.iv
  store i16 %i.vx, ptr %i.vz, align 2, !tbaa !324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.cy, !llvm.loop !334

.loopexit:                                        ; preds = %bb.dc, %bb.cx, %bb.cu
  %i.wa = getelementptr inbounds nuw i8, ptr %i.am, i64 577 ; 2 uses
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !307, !range !166, !noundef !167
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %bb.dd, label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit

bb.dd:                                            ; preds = %.loopexit
  %i.wd = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.we = load i32, ptr %i.fa, align 4, !tbaa !218
  %i.wf = and i32 %i.we, 16
  %.not.i393 = icmp eq i32 %i.wf, 0
  br i1 %.not.i393, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i8 0, ptr %i.wa, align 1, !tbaa !307
  br label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit

bb.df:                                            ; preds = %bb.dd
  %i.wg = getelementptr inbounds nuw i8, ptr %i.am, i64 100 ; 2 uses
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !309 ; 2 uses
  %i.wi = icmp eq i32 %i.wh, -1
  br i1 %i.wi, label %bb.dg, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.wj = load i32, ptr %i.am, align 8, !tbaa !219
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wd, i64 10120
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wd, i64 10128
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !335 ; 4 uses
  %.not.i.i.i395 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i.i395, label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.dg
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.i.preheader.i
  %.0812.i.i = phi ptr [ %i.wt, %select.unfold.i.i ], [ %i.wn, %.lr.ph.i.preheader.i ] ; 6 uses
  %i.wo = load i32, ptr %.0812.i.i, align 4, !tbaa !336
  %i.wp = icmp eq i32 %i.wo, %i.wj
  br i1 %i.wp, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.wq = getelementptr inbounds i8, ptr %.0812.i.i, i64 -4
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !323
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds i8, ptr %.0812.i.i, i64 %i.ws ; 2 uses
  %i.wu = load i32, ptr %i.wk, align 8, !tbaa !338
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds i8, ptr %i.wm, i64 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wy = icmp eq ptr %i.wt, %i.wx
  br i1 %i.wy, label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit, label %.lr.ph.i.i

_ZN5ImGui21TableSettingsFindByIDEj.exit.i:        ; preds = %.lr.ph.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 12
  %i.xa = load i16, ptr %i.wz, align 4, !tbaa !339
  %i.xb = sext i16 %i.xa to i32
  %i.xc = load i32, ptr %i.ff, align 4, !tbaa !222
  %.not19.i396 = icmp eq i32 %i.xc, %i.xb
  br i1 %.not19.i396, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.xd, align 2, !tbaa !306
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZN5ImGui21TableSettingsFindByIDEj.exit.i
  %i.xe = ptrtoint ptr %.0812.i.i to i64
  %i.xf = ptrtoint ptr %i.wm to i64
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = trunc i64 %i.xg to i32
  store i32 %i.xh, ptr %i.wg, align 4, !tbaa !309
  br label %bb.dj

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i: ; preds = %bb.df
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wd, i64 10128
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !335
  %i.xk = sext i32 %i.wh to i64
  %i.xl = getelementptr inbounds i8, ptr %i.xj, i64 %i.xk
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i, %bb.di
  %.0.i394 = phi ptr [ %.0812.i.i, %bb.di ], [ %i.xl, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i ] ; 3 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.0.i394, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !340
  %i.xo = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store i32 %i.xn, ptr %i.xo, align 8, !tbaa !308
  %i.xp = getelementptr inbounds nuw i8, ptr %.0.i394, i64 8
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !341
  %i.xr = getelementptr inbounds nuw i8, ptr %i.am, i64 228
  store float %i.xq, ptr %i.xr, align 4, !tbaa !342
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wd, i64 10064
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.i394, i64 16
  %i.xu = load i16, ptr %i.xs, align 8, !tbaa !326
  store i16 %i.xu, ptr %i.xt, align 4, !tbaa !326
  br label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit

_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit:  ; preds = %select.unfold.i.i, %bb.dj, %bb.dg, %bb.de, %.loopexit
  store i8 1, ptr %i.jq, align 1, !tbaa !165
  %i.xv = getelementptr inbounds nuw i8, ptr %i.am, i64 400 ; 3 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !343
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit
  %i.xy = getelementptr inbounds nuw i8, ptr %i.am, i64 404 ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !344
  %i.ya = icmp slt i32 %i.xz, 0
  br i1 %i.ya, label %bb.dl, label %_ZN8ImVectorIcE6resizeEi.exit

bb.dl:                                            ; preds = %bb.dk
  %i.yb = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.am, i64 408 ; 3 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !345 ; 2 uses
  %.not6.i.i398 = icmp eq ptr %i.yd, null
  br i1 %.not6.i.i398, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ye = load i32, ptr %i.xv, align 8, !tbaa !346
  %i.yf = sext i32 %i.ye to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yb, ptr nonnull align 1 %i.yd, i64 %i.yf, i1 false)
  %i.yg = load ptr, ptr %i.yc, align 8, !tbaa !345
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.yg)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  store ptr %i.yb, ptr %i.yc, align 8, !tbaa !345
  store i32 0, ptr %i.xy, align 4, !tbaa !344
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %bb.dk, %bb.dn
  store i32 0, ptr %i.xv, align 8, !tbaa !346
  br label %bb.do

bb.do:                                            ; preds = %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit, %_ZN8ImVectorIcE6resizeEi.exit, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %_ZN8ImVectorIcE6resizeEi.exit ], [ true, %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.a, %bb.do
  %.1 = phi i1 [ %.0, %bb.do ], [ false, %bb.a ]
  ret i1 %.1
}

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float>, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.debugtrap() #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !323  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [592 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN5ImGui33TableUpdateColumnsWeightFromWidthEP10ImGuiTable:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  br label %bb.b

.lr.ph32:                                         ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291  ; 3 uses
  %i.h = extractelement <2 x float> %i.y, i64 0   ; 3 uses
  %i.i = extractelement <2 x float> %i.y, i64 1   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph32.new

.lr.ph32.new:                                     ; preds = %.lr.ph32
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.y, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 106
  %i.n = load i8, ptr %i.m, align 2, !tbaa !333, !range !166, !noundef !167
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.l, align 4, !tbaa !362
  %i.q = and i32 %i.p, 8
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !370
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !366
  %i.v = insertelement <2 x float> poison, float %i.s, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = fadd <2 x float> %i.k, %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.y = phi <2 x float> [ %i.x, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph32, label %bb.b, !llvm.loop !371

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph32
  %indvars.iv34.epil.init = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next35.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34.epil.init ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !333, !range !166, !noundef !167
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !362
  %i.ae = and i32 %i.ad, 8
  %.not.epil = icmp eq i32 %i.ae, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !366
  %i.ah = fdiv float %i.ag, %i.i
  %i.ai = fmul float %i.h, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store float %i.ai, ptr %i.aj, align 4, !tbaa !370
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %bb.f, %.epil.preheader, %bb.a
  ret void

bb.h:                                             ; preds = %bb.n, %.lr.ph32.new
  %indvars.iv34 = phi i64 [ 0, %.lr.ph32.new ], [ %indvars.iv.next35.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph32.new ], [ %niter.next.1, %bb.n ]
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 106
  %i.am = load i8, ptr %i.al, align 2, !tbaa !333, !range !166, !noundef !167
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !362
  %i.ap = and i32 %i.ao, 8
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !366
  %i.as = fdiv float %i.ar, %i.i
  %i.at = fmul float %i.h, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float %i.at, ptr %i.au, align 4, !tbaa !370
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 226
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !333, !range !166, !noundef !167
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !362
  %i.bb = and i32 %i.ba, 8
  %.not.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !366
  %i.be = fdiv float %i.bd, %i.i
  %i.bf = fmul float %i.h, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 148
  store float %i.bf, ptr %i.bg, align 4, !tbaa !370
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.q, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 106
  %i.i = load i8, ptr %i.h, align 2, !tbaa !333, !range !166, !noundef !167
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 4, !tbaa !362
  %i.l = and i32 %i.k, 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 115 ; 2 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, -256
  %i.p = or disjoint i16 %i.o, 18
  store i16 %i.p, ptr %i.m, align 1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !222
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %i.e, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !499
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 616 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !237
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.i = load <4 x float>, ptr %i.h, align 8      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !237
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !456  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !456  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !567
  %i.q = load i32, ptr %i.n, align 8, !tbaa !568
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [16 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.t, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.s, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !456
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 564
  %i.y = load i16, ptr %i.x, align 4, !tbaa !488
  %i.z = zext i16 %i.y to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef %i.w, i32 noundef %i.z)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25TablePopBackgroundChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !237
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !456  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !567
  %i.p = load i32, ptr %i.m, align 8, !tbaa !568
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [16 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.s, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.r, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !456
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !262
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !291
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [120 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 100
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !492
  %i.ae = zext i16 %i.ad to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.v, i32 noundef %i.ae)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TablePushColumnChannelEi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !218
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !291
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [120 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !237
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 712 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !456  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !456  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !567
  %i.w = load i32, ptr %i.t, align 8, !tbaa !568
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [16 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.z, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.y, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !456
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !492
  %i.af = zext i16 %i.ae to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %i.ac, i32 noundef %i.af)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21TablePopColumnChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !218
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !262  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !291
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [120 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !237
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 712 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !456  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !456  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !567
  %i.z = load i32, ptr %i.w, align 8, !tbaa !568
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [16 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ac, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.ab, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !209
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !456
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !492
  %i.ai = zext i16 %i.ah to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.af, i32 noundef %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui17TableGetSortSpecsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
end_hunk_1
