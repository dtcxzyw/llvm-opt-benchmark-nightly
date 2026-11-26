Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a

bb.bz:                                            ; preds = %bb.by
  %i.np = getelementptr inbounds nuw i8, ptr %i.i, i64 8256
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !229
  %i.nr = and i32 %i.nq, 4
  %.not1300 = icmp eq i32 %i.nr, 0
  br i1 %.not1300, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %.11252 = phi i1 [ %.not1299, %bb.bz ], [ true, %bb.ca ], [ %.not1299, %bb.bx ] ; 2 uses
  br i1 %i.eh, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ns = getelementptr inbounds nuw i8, ptr %i.i, i64 300
  %i.nt = load i8, ptr %i.ns, align 4, !tbaa !708, !range !184, !noundef !185
  %i.nu = trunc nuw i8 %i.nt to i1
  %spec.select1353 = or i1 %.11252, %i.nu
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.bw
  %.21253 = phi i1 [ false, %bb.bw ], [ %.11252, %bb.cb ], [ %spec.select1353, %bb.cc ] ; 4 uses
  %i.nv = and i32 %5, 2048
  %.not1301 = icmp eq i32 %i.nv, 0
  br i1 %.not1301, label %bb.ce, label %.split

.split:                                           ; preds = %bb.cd
  %i.nw = getelementptr inbounds nuw i8, ptr %i.i, i64 9424
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !378
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i8 1, ptr %i.ny, align 4, !tbaa !398
  %i.nz = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !699, !range !184, !noundef !185
  %i.ob = trunc nuw i8 %i.oa to i1                ; 2 uses
  br i1 %.not1629, label %bb.ci, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.oc = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !699, !range !184, !noundef !185
  %i.oe = trunc nuw i8 %i.od to i1                ; 2 uses
  br i1 %.not1629, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %.split, %_ZN8ImVectorIcE6resizeEi.exit, %.thread1534, %bb.ce
  %i.of = phi i1 [ %i.ka, %.thread1534 ], [ %i.oe, %bb.ce ], [ %i.ji, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ob, %.split ] ; 3 uses
  %.312541548 = phi i1 [ false, %.thread1534 ], [ %.21253, %bb.ce ], [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21253, %.split ] ; 3 uses
  %.012601538 = phi ptr [ %i.dg, %.thread1534 ], [ %i.ki, %bb.ce ], [ %i.dg, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ki, %.split ] ; 3 uses
  %i.og = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1303 = icmp eq i32 %i.og, %i.s
  br i1 %.not1303, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.s, ptr noundef nonnull %i.k)
  call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %i.s, ptr noundef nonnull %i.k)
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.k, i32 noundef 0)
  br i1 %i.en, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5ImGui28SetNavCursorVisibleAfterMoveEv()
  br label %bb.ci

bb.ci:                                            ; preds = %.split, %_ZN8ImVectorIcE6resizeEi.exit, %.thread1549, %bb.cg, %bb.ch, %bb.cf, %bb.ce
  %i.oh = phi i1 [ %i.of, %bb.cg ], [ %i.of, %bb.ch ], [ %i.of, %bb.cf ], [ %i.oe, %bb.ce ], [ %i.kf, %.thread1549 ], [ %i.ji, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ob, %.split ] ; 6 uses
  %.312541547 = phi i1 [ %.312541548, %bb.cg ], [ %.312541548, %bb.ch ], [ %.312541548, %bb.cf ], [ %.21253, %bb.ce ], [ false, %.thread1549 ], [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21253, %.split ] ; 2 uses
  %.012601537 = phi ptr [ %.012601538, %bb.cg ], [ %.012601538, %bb.ch ], [ %.012601538, %bb.cf ], [ %i.ki, %bb.ce ], [ %i.dg, %.thread1549 ], [ %i.dg, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ki, %.split ] ; 126 uses
  %.not1636 = phi i8 [ 0, %bb.cg ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ 1, %bb.ce ], [ 1, %.thread1549 ], [ 1, %_ZN8ImVectorIcE6resizeEi.exit ], [ 1, %.split ]
  %i.oi = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.oj = icmp eq i32 %i.oi, %i.s
  br i1 %i.oj, label %.preheader1650.preheader, label %bb.cs

.preheader1650.preheader:                         ; preds = %bb.ci
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 513, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 514, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 522, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 523, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 519, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 520, i32 noundef %i.s, i32 noundef 0)
  br i1 %i.eh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.preheader1650.preheader
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 656, i32 noundef %i.s, i32 noundef 0)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.preheader1650.preheader
  %i.ok = getelementptr inbounds nuw i8, ptr %i.i, i64 7768 ; 3 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !365 ; 2 uses
  %i.om = or i32 %i.ol, 3
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !365
  %i.on = and i32 %5, 67633152
  %or.cond1355.not.not = icmp eq i32 %i.on, 0
  br i1 %or.cond1355.not.not, label %.thread1552, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oo = or i32 %i.ol, 15
  store i32 %i.oo, ptr %i.ok, align 8, !tbaa !365
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 515, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 516, i32 noundef %i.s, i32 noundef 0)
  br i1 %i.r, label %bb.cm, label %.thread1552

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 517, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 518, i32 noundef %i.s, i32 noundef 0)
  br label %.thread1552

.thread1552:                                      ; preds = %bb.ck, %bb.cm, %bb.cl
  br i1 %i.oh, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.thread1552
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 16384, i32 noundef %i.s, i32 noundef 0)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread1552
  %i.op = icmp ne ptr %.012601537, null           ; 3 uses
  %or.cond24 = and i1 %i.r, %i.op
  br i1 %or.cond24, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.oq = getelementptr inbounds nuw i8, ptr %.21264, i64 156
  %i.or = load float, ptr %i.oq, align 4, !tbaa !698
  %i.os = getelementptr inbounds nuw i8, ptr %.012601537, i64 96
  store float %i.or, ptr %i.os, align 4, !tbaa !709
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %or.cond27 = and i1 %i.dl, %i.op
  br i1 %or.cond27, label %.thread1553, label %bb.cr

.thread1553:                                      ; preds = %bb.cq
  %i.ot = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40
  %i.ou = trunc i64 %i.ot to i32                  ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  store i32 %i.ou, ptr %i.ov, align 8, !tbaa !377
  br label %.thread1554

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.op, label %..thread1554_crit_edge, label %.thread1555

..thread1554_crit_edge:                           ; preds = %bb.cr
  %.phi.trans.insert1685 = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %.pre1686 = load i32, ptr %.phi.trans.insert1685, align 8, !tbaa !377
  br label %.thread1554

.thread1554:                                      ; preds = %..thread1554_crit_edge, %.thread1553
  %i.ow = phi i32 [ %.pre1686, %..thread1554_crit_edge ], [ %i.ou, %.thread1553 ] ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !378 ; 4 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !388
  %i.pa = call noundef i32 @llvm.smin.i32(i32 %i.oz, i32 %i.ow)
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !388
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 4 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !394
  %i.pd = call noundef i32 @llvm.smin.i32(i32 %i.pc, i32 %i.ow)
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !394
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !395
  %i.pg = call noundef i32 @llvm.smin.i32(i32 %i.pf, i32 %i.ow)
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !395
  br label %bb.ct

bb.cs:                                            ; preds = %bb.ci
  %.not1635 = icmp eq ptr %.012601537, null
  br i1 %.not1635, label %.thread1555.thread, label %bb.ct

bb.ct:                                            ; preds = %.thread1554, %bb.cs
  br i1 %i.dl, label %.thread1556, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ph = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !376
  br label %.thread1556

.thread1556:                                      ; preds = %bb.cu, %bb.ct
  %i.pj = phi ptr [ %i.pi, %bb.cu ], [ %2, %bb.ct ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.012601537, i64 32
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !400
  br label %.thread1555.thread

.thread1555:                                      ; preds = %bb.cr
  %.pre1684 = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.pl = icmp eq i32 %.pre1684, %i.s
  br i1 %i.pl, label %bb.cv, label %.thread1555.thread

bb.cv:                                            ; preds = %.thread1555
  call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.thread1555.thread

.thread1555.thread:                               ; preds = %bb.cs, %.thread1556, %bb.cv, %.thread1555
  %i.pm = phi i1 [ true, %.thread1556 ], [ false, %bb.cv ], [ false, %.thread1555 ], [ false, %bb.cs ] ; 8 uses
  %i.pn = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.po = icmp eq i32 %i.pn, %i.s                 ; 2 uses
  br i1 %i.po, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.thread1555.thread
  %i.pp = getelementptr inbounds nuw i8, ptr %i.i, i64 2880
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !231, !range !184, !noundef !185
  %or.cond34.not = and i8 %i.pq, %.not1636
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread1555.thread
  %.01255 = phi i8 [ %or.cond34.not, %bb.cw ], [ 0, %.thread1555.thread ] ; 26 uses
  %i.pr = and i1 %i.pm, %i.fl
  %i.ps = or i1 %i.po, %i.pr                      ; 6 uses
  br i1 %i.pm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.pt = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !378 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !394
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.py = load i32, ptr %i.px, align 4, !tbaa !395
  %i.pz = icmp ne i32 %i.pw, %i.py
  %or.cond37 = or i1 %.312541547, %i.pz
  %narrow = and i1 %or.cond37, %i.ps
  %spec.select1357 = zext i1 %narrow to i8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.qa = phi i8 [ %spec.select1357, %bb.cy ], [ 0, %bb.cx ] ; 24 uses
  %not.1637 = xor i1 %i.dl, true                  ; 3 uses
  %spec.select1617 = and i1 %i.pm, %not.1637
  %i.qb = select i1 %i.ps, i1 %spec.select1617, i1 false ; 2 uses
  %.not1306 = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not1306, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %i.qb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qc = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !376
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.qe = phi ptr [ %i.qd, %bb.db ], [ %2, %bb.da ]
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !351
  %i.qg = icmp eq i8 %i.qf, 0
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %i.qh = phi i1 [ false, %bb.cz ], [ %i.qg, %bb.dc ] ; 4 uses
  %or.cond47 = select i1 %i.dn, i1 true, i1 %i.qh ; 2 uses
  br i1 %or.cond47, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qi = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 9592 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 4560 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !313
  %i.qm = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.ql, i16 noundef zeroext 42) ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 4552
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !401
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !405 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 9696
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !406
  %i.qs = load ptr, ptr %i.qk, align 8, !tbaa !313 ; 8 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 64 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !407
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qi, i64 9656
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !407
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 2 uses
  %i.qx = load float, ptr %i.qw, align 8, !tbaa !408
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qi, i64 9608
  store float %i.qx, ptr %i.qy, align 8, !tbaa !408
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qi, i64 9624 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 32 ; 2 uses
  %i.rb = load <2 x i32>, ptr %i.ra, align 8, !tbaa !208
  %i.rc = load <2 x i32>, ptr %i.qz, align 8, !tbaa !208
  store <2 x i32> %i.rc, ptr %i.ra, align 8, !tbaa !208
  store <2 x i32> %i.rb, ptr %i.qz, align 8, !tbaa !208
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qs, i64 40 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !409
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qi, i64 9632 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !409
  store ptr %i.rg, ptr %i.rd, align 8, !tbaa !409
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !409
  %i.rh = load <2 x i32>, ptr %i.qs, align 8, !tbaa !208
  %i.ri = load <2 x i32>, ptr %i.qj, align 8, !tbaa !208
  store <2 x i32> %i.ri, ptr %i.qs, align 8, !tbaa !208
  store <2 x i32> %i.rh, ptr %i.qj, align 8, !tbaa !208
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !410
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qi, i64 9600 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !410
  store ptr %i.rm, ptr %i.rj, align 8, !tbaa !410
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !410
  %i.rn = or i32 %i.qq, 4
  store i32 %i.rn, ptr %i.qp, align 8, !tbaa !405
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !411
  %i.rq = ptrtoint ptr %i.qm to i64
  %i.rr = ptrtoint ptr %i.rp to i64
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = sdiv exact i64 %i.rs, 44
  %i.ru = trunc i64 %i.rt to i32
  store i32 %i.ru, ptr %i.qt, align 8, !tbaa !407
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !413
  store float %i.rw, ptr %i.qw, align 8, !tbaa !408
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  br i1 %i.pm, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %i.rx = getelementptr inbounds nuw i8, ptr %.012601537, i64 20
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !392
  %i.rz = icmp eq i32 %i.ry, %i.s
  br i1 %i.rz, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.sa = getelementptr inbounds nuw i8, ptr %.012601537, i64 16
  store i32 %spec.select1349, ptr %i.sa, align 8, !tbaa !389
  br i1 %i.ds, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sb = getelementptr inbounds nuw i8, ptr %.012601537, i64 104 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 8, !tbaa !414
  %i.sd = fcmp une float %i.sc, %.01259
  br i1 %i.sd, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.se = getelementptr inbounds nuw i8, ptr %.012601537, i64 113
  store i8 1, ptr %i.se, align 1, !tbaa !710
  store float %.01259, ptr %i.sb, align 8, !tbaa !414
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dg, %bb.df
  %.01242.shrunk = phi i1 [ true, %bb.dj ], [ %i.ps, %bb.di ], [ %i.ps, %bb.dh ], [ %i.ps, %bb.dg ], [ %i.ps, %bb.df ]
  %.01242 = zext i1 %.01242.shrunk to i8          ; 24 uses
  %i.sf = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.sg = icmp eq i32 %i.sf, %i.s
  br i1 %i.sg, label %bb.dl, label %bb.fk

bb.dl:                                            ; preds = %bb.dk
  %i.sh = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  store i8 0, ptr %i.sh, align 4, !tbaa !415
  %i.si = getelementptr inbounds nuw i8, ptr %.012601537, i64 88
  store i32 %3, ptr %i.si, align 8, !tbaa !416
  %i.sj = getelementptr inbounds nuw i8, ptr %.012601537, i64 104 ; 3 uses
  store float %.01259, ptr %i.sj, align 8, !tbaa !414
  %i.sk = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.sm = xor i8 %i.sl, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.i, i64 5443
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !417
  %i.so = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.sp = load float, ptr %i.so, align 8, !tbaa !711
  %i.sq = load float, ptr %11, align 8, !tbaa !237
  %i.sr = fsub float %i.sp, %i.sq
  %i.ss = load float, ptr %i.aa, align 4, !tbaa !206
  %i.st = fsub float %i.sr, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  %i.sv = load float, ptr %i.su, align 4, !tbaa !701
  %i.sw = fadd float %i.st, %i.sv                 ; 4 uses
  br i1 %i.r, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.sx = getelementptr inbounds nuw i8, ptr %i.i, i64 276
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !418
  %i.sz = getelementptr inbounds nuw i8, ptr %.21264, i64 284
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !187
  %i.tb = fsub float %i.sy, %i.ta
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.tc = getelementptr inbounds nuw i8, ptr %i.i, i64 4568
  %i.td = load float, ptr %i.tc, align 8, !tbaa !205
  %i.te = fmul float %i.td, 5.000000e-01
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.tf = phi float [ %i.tb, %bb.dm ], [ %i.te, %bb.dn ] ; 4 uses
  br i1 %.312541547, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.tg = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !378 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store i32 0, ptr %i.ti, align 4, !tbaa !394
  %i.tj = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !377 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !395
  store i32 %i.tk, ptr %i.th, align 4, !tbaa !388
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 22
  store i8 0, ptr %i.tm, align 2, !tbaa !396
  %i.tn = getelementptr inbounds nuw i8, ptr %.012601537, i64 114
  store i8 1, ptr %i.tn, align 2, !tbaa !712
  br label %bb.ep

bb.dq:                                            ; preds = %bb.do
  br i1 %.01261.shrunk, label %bb.dr, label %bb.ed

bb.dr:                                            ; preds = %bb.dq
  %i.to = getelementptr inbounds nuw i8, ptr %i.i, i64 2890 ; 2 uses
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !219
  %i.tq = icmp ugt i16 %i.tp, 1
  br i1 %i.tq, label %bb.ds, label %bb.ed
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.ace = getelementptr inbounds nuw i8, ptr %.21264, i64 156
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !698
  %i.acg = load float, ptr %i.yg, align 8, !tbaa !205
  %i.ach = fadd float %i.acf, %i.acg              ; 2 uses
  %i.aci = call noundef float @_ZN5ImGui13GetScrollMaxYEv() ; 2 uses
  %i.acj = fcmp olt float %i.ach, %i.aci
  %i.ack = select i1 %i.acj, float %i.ach, float %i.aci
  call void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef %.21264, float noundef %i.ack)
  br label %bb.jq

bb.hb:                                            ; preds = %bb.gz
  %i.acl = select i1 %i.zd, i32 2097159, i32 2097155
  %i.acm = or disjoint i32 %i.acl, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.acm)
  br label %bb.jq

bb.hc:                                            ; preds = %bb.gy
  %i.acn = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 517, i1 noundef zeroext true)
  %or.cond91 = and i1 %i.r, %i.acn
  br i1 %or.cond91, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aco = or disjoint i32 %i.yr, 2097166
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.aco)
  %i.acp = uitofp nneg i32 %i.yk to float
  %i.acq = load float, ptr %i.yg, align 8, !tbaa !205
  %i.acr = fneg float %i.acp
  %i.acs = call float @llvm.fmuladd.f32(float %i.acr, float %i.acq, float %i.fn)
  br label %bb.jq

bb.he:                                            ; preds = %bb.hc
  %i.act = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 518, i1 noundef zeroext true)
  %or.cond94 = and i1 %i.r, %i.act
  br i1 %or.cond94, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.acu = or disjoint i32 %i.yr, 2097167
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.acu)
  %i.acv = uitofp nneg i32 %i.yk to float
  %i.acw = load float, ptr %i.yg, align 8, !tbaa !205
  %i.acx = call float @llvm.fmuladd.f32(float %i.acv, float %i.acw, float %i.fn)
  br label %bb.jq

bb.hg:                                            ; preds = %bb.he
  %i.acy = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 519, i1 noundef zeroext true)
  br i1 %i.acy, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.acz = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.ada = trunc nuw i8 %i.acz to i1
  %.v1321 = select i1 %i.ada, i32 2097158, i32 2097156
  %i.adb = or disjoint i32 %.v1321, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.adb)
  br label %bb.jq

bb.hi:                                            ; preds = %bb.hg
  %i.adc = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 520, i1 noundef zeroext true)
  br i1 %i.adc, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.add = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.ade = trunc nuw i8 %i.add to i1
  %.v = select i1 %i.ade, i32 2097159, i32 2097157
  %i.adf = or disjoint i32 %.v, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.adf)
  br label %bb.jq

bb.hk:                                            ; preds = %bb.hi
  %i.adg = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 522, i1 noundef zeroext true)
  %.not95 = xor i1 %i.adg, true
  %or.cond98 = or i1 %i.dl, %.not95
  %or.cond101 = or i1 %i.zo, %or.cond98
  br i1 %or.cond101, label %bb.ho, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.adh = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !394
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !395
  %.not1638 = icmp eq i32 %i.adj, %i.adl
  %or.cond199 = and i1 %.not1638, %i.yu
  br i1 %or.cond199, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef 6291469)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.adm = or disjoint i32 %i.yr, 2097160
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.adm)
  br label %bb.jq

bb.ho:                                            ; preds = %bb.hk
  %i.adn = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 523, i1 noundef zeroext true)
  %.not102 = xor i1 %i.adn, true
  %or.cond105 = or i1 %i.dl, %.not102
  br i1 %or.cond105, label %bb.hw, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ado = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !394
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !395
  %.not1639 = icmp eq i32 %i.adq, %i.ads
  br i1 %.not1639, label %bb.hq, label %bb.hv

bb.hq:                                            ; preds = %bb.hp
  br i1 %i.yu, label %.sink.split1848, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.xy, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.adt = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.adu = trunc nuw i8 %i.adt to i1
  br i1 %i.adu, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.adv = load i8, ptr %i.ys, align 2, !tbaa !716, !range !184, !noundef !185
  %i.adw = trunc nuw i8 %i.adv to i1
  br i1 %i.adw, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.adx = getelementptr inbounds nuw i8, ptr %i.i, i64 303
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !718, !range !184, !noundef !185
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %bb.hv, label %.sink.split1848

.sink.split1848:                                  ; preds = %bb.hu, %bb.hq
  %.sink1849 = phi i32 [ 6291468, %bb.hq ], [ 6291460, %bb.hu ]
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %.sink1849)
  br label %bb.hv

bb.hv:                                            ; preds = %.sink.split1848, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hp
  %i.aea = or disjoint i32 %i.yr, 2097161
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.aea)
  br label %bb.jq

bb.hw:                                            ; preds = %bb.ho
  %or.cond108 = or i1 %i.aap, %i.aas
  %or.cond111 = or i1 %or.cond108, %i.aav
  %or.cond114 = or i1 %or.cond111, %i.abg
  br i1 %or.cond114, label %bb.hx, label %bb.if

bb.hx:                                            ; preds = %bb.hw
  %i.aeb = and i32 %5, 256
  %.not1643 = icmp eq i32 %i.aeb, 0
  %.not115 = xor i1 %i.r, true
  %or.cond118 = or i1 %i.abg, %.not115            ; 2 uses
  %brmerge1381 = or i1 %i.aav, %or.cond118
  %not.or.cond118 = xor i1 %or.cond118, true
  %spec.select1383 = select i1 %.not1643, i1 %i.aap, i1 %i.aas
  %i.aec = select i1 %brmerge1381, i1 %not.or.cond118, i1 %spec.select1383 ; 2 uses
  br i1 %i.aec, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aed = getelementptr inbounds nuw i8, ptr %i.i, i64 123
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !721, !range !184, !noundef !185
  %i.aef = trunc nuw i8 %i.aee to i1
  %.not123 = xor i1 %i.aef, true
  %or.cond126 = or i1 %i.r, %.not123
  %or.cond129 = or i1 %i.aas, %or.cond126
  %or.cond132 = or i1 %i.aav, %or.cond129
  br i1 %or.cond132, label %bb.ie, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aeg = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 4 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  store i32 0, ptr %i.aeh, align 4, !tbaa !394
  %i.aei = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !377 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  store i32 %i.aej, ptr %i.aek, align 4, !tbaa !395
  store i32 %i.aej, ptr %i.aeg, align 4, !tbaa !388
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeg, i64 22
  store i8 0, ptr %i.ael, align 2, !tbaa !396
  store i32 %i.s, ptr %i.eo, align 4, !tbaa !696
  br label %bb.ie

bb.ia:                                            ; preds = %bb.hx
  br i1 %i.dl, label %bb.ie, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 10, ptr %i.c, align 4, !tbaa !208
  %i.aem = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.i, ptr noundef nonnull %.012601537, ptr noundef %i.c, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.aem, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.aen = load i32, ptr %i.c, align 4, !tbaa !208
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.aen)
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ia, %bb.id, %bb.hy, %bb.hz
  %.11256 = phi i8 [ %.01255, %bb.ia ], [ %.01255, %bb.id ], [ 1, %bb.hy ], [ 1, %bb.hz ]
  %.01233 = xor i1 %i.aec, true
  br label %bb.jq

bb.if:                                            ; preds = %bb.hw
  br i1 %i.abh, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.aeo = and i32 %5, 128
  %.not1319 = icmp eq i32 %i.aeo, 0
  br i1 %.not1319, label %bb.jq, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aep = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !376
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !351
  %.not1320 = icmp ne i8 %i.aer, 0                ; 4 uses
  %..01255 = select i1 %.not1320, i8 %.01255, i8 1
  %..01242 = select i1 %.not1320, i8 %.01242, i8 0
  %. = select i1 %.not1320, i8 %i.qa, i8 0
  br label %bb.jq

bb.ii:                                            ; preds = %bb.if
  br i1 %or.cond135, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aes = select i1 %i.aad, i32 2097162, i32 2097163
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.aes)
  %i.aet = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 3 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !388 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  store i32 %i.aeu, ptr %i.aev, align 4, !tbaa !395
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 4
  store i32 %i.aeu, ptr %i.aew, align 4, !tbaa !394
  br label %bb.jq

bb.ik:                                            ; preds = %bb.ii
  br i1 %i.aag, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.aex = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 4
  store i32 0, ptr %i.aey, align 4, !tbaa !394
  %i.aez = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !377 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i32 %i.afa, ptr %i.afb, align 4, !tbaa !395
  store i32 %i.afa, ptr %i.aex, align 4, !tbaa !388
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aex, i64 22
  store i8 0, ptr %i.afc, align 2, !tbaa !396
  %i.afd = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.afd, align 8, !tbaa !419
  br label %bb.jq

bb.im:                                            ; preds = %bb.ik
  br i1 %or.cond138, label %bb.in, label %bb.iw

bb.in:                                            ; preds = %bb.im
  %i.afe = getelementptr inbounds nuw i8, ptr %i.i, i64 3096
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !722
  %.not1318 = icmp eq ptr %i.aff, null
  br i1 %.not1318, label %bb.is, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.afg = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !394 ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !395 ; 3 uses
  %.not1640 = icmp eq i32 %i.afi, %i.afk
  br i1 %.not1640, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.afl = call noundef i32 @llvm.smin.i32(i32 %i.afi, i32 %i.afk)
  %i.afm = call noundef i32 @llvm.smax.i32(i32 %i.afi, i32 %i.afk)
  br label %bb.ir

bb.iq:                                            ; preds = %bb.io
  %i.afn = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.afo = load i32, ptr %i.afn, align 8, !tbaa !377
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.afp = phi i32 [ %i.afl, %bb.ip ], [ 0, %bb.iq ] ; 2 uses
  %i.afq = phi i32 [ %i.afm, %bb.ip ], [ %i.afo, %bb.iq ]
  %i.afr = getelementptr inbounds nuw i8, ptr %i.i, i64 10920
  %i.afs = sub nsw i32 %i.afq, %i.afp             ; 2 uses
  %i.aft = add nsw i32 %i.afs, 1
  call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.afr, i32 noundef %i.aft)
  %i.afu = getelementptr inbounds nuw i8, ptr %i.i, i64 10928 ; 3 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !723
  %i.afw = getelementptr inbounds nuw i8, ptr %.012601537, i64 32
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !400
  %i.afy = sext i32 %i.afp to i64
  %i.afz = getelementptr inbounds i8, ptr %i.afx, i64 %i.afy
  %i.aga = sext i32 %i.afs to i64                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afv, ptr align 1 %i.afz, i64 %i.aga, i1 false)
  %i.agb = load ptr, ptr %i.afu, align 8, !tbaa !723
  %i.agc = getelementptr inbounds i8, ptr %i.agb, i64 %i.aga
  store i8 0, ptr %i.agc, align 1, !tbaa !351
  %i.agd = load ptr, ptr %i.afu, align 8, !tbaa !723
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef %i.agd)
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.in
  br i1 %i.zo, label %bb.it, label %bb.jq

bb.it:                                            ; preds = %bb.is
  %i.age = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 6 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 4 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !394
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 2 uses
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !395
  %.not1641 = icmp eq i32 %i.agg, %i.agi
  br i1 %.not1641, label %bb.iu, label %.thread1779

.thread1779:                                      ; preds = %bb.it
  %i.agj = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.agj, align 8, !tbaa !419
  br label %bb.iv

bb.iu:                                            ; preds = %bb.it
  store i32 0, ptr %i.agf, align 4, !tbaa !394
  %i.agk = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !377 ; 3 uses
  store i32 %i.agl, ptr %i.agh, align 4, !tbaa !395
  store i32 %i.agl, ptr %i.age, align 4, !tbaa !388
  %i.agm = getelementptr inbounds nuw i8, ptr %i.age, i64 22
  store i8 0, ptr %i.agm, align 2, !tbaa !396
  %i.agn = icmp eq i32 %i.agl, 0
  %i.ago = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.ago, align 8, !tbaa !419
  br i1 %i.agn, label %bb.jq, label %bb.iv

bb.iv:                                            ; preds = %.thread1779, %bb.iu
  call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %.012601537, ptr noundef nonnull %i.age)
  %i.agp = getelementptr inbounds nuw i8, ptr %i.age, i64 22
  store i8 0, ptr %i.agp, align 2, !tbaa !396
  br label %bb.jq

bb.iw:                                            ; preds = %bb.im
  br i1 %i.aab, label %bb.ix, label %bb.jq

bb.ix:                                            ; preds = %bb.iw
  %i.agq = call noundef ptr @_ZN5ImGui16GetClipboardTextEv() ; 5 uses
  %.not1311 = icmp eq ptr %i.agq, null
  br i1 %.not1311, label %bb.jq, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.agr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agq) #40 ; 2 uses
  %i.ags = trunc i64 %i.agr to i32
  %sext1312 = shl i64 %i.agr, 32
  %i.agt = ashr exact i64 %sext1312, 32
  %i.agu = getelementptr inbounds i8, ptr %i.agq, i64 %i.agt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.agv = add nsw i32 %i.ags, 1
  invoke void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.agv)
          to label %.preheader unwind label %bb.iz

.preheader:                                       ; preds = %bb.iy
  %i.agw = load i8, ptr %i.agq, align 1, !tbaa !351
  %.not13131658 = icmp eq i8 %i.agw, 0
  br i1 %.not13131658, label %._crit_edge, label %.lr.ph1660

.lr.ph1660:                                       ; preds = %.preheader
  %i.agx = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ja

._crit_edge:                                      ; preds = %bb.jh, %.preheader
  %i.agy = load i32, ptr %15, align 8, !tbaa !384
  %i.agz = icmp sgt i32 %i.agy, 0
  br i1 %i.agz, label %bb.jk, label %bb.jo

bb.iz:                                            ; preds = %bb.jl, %bb.iy
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.ja:                                            ; preds = %.lr.ph1660, %bb.jh
  %.012221659 = phi ptr [ %i.agq, %.lr.ph1660 ], [ %i.ahd, %bb.jh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ahb = invoke noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %.012221659, ptr noundef nonnull %i.agu)
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds i8, ptr %.012221659, i64 %i.ahc ; 2 uses
  %i.ahe = invoke fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef %i.i, ptr noundef %.012601537, ptr noundef %i.d, ptr noundef %6, ptr noundef %7, i1 noundef zeroext true)
          to label %bb.jc unwind label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  br i1 %i.ahe, label %bb.je, label %bb.jh, !llvm.loop !684

bb.jd:                                            ; preds = %bb.jb, %bb.ja
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.je:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ahg = load i32, ptr %i.d, align 4, !tbaa !208
  %i.ahh = invoke noundef i32 @_Z16ImTextCharToUtf8Pcj(ptr noundef nonnull %i.e, i32 noundef %i.ahg)
          to label %bb.jf unwind label %bb.ji     ; 0 uses

bb.jf:                                            ; preds = %bb.je
  %i.ahi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #40 ; 2 uses
  %i.ahj = trunc i64 %i.ahi to i32
  %i.ahk = load i32, ptr %15, align 8, !tbaa !384
  %i.ahl = add nsw i32 %i.ahk, %i.ahj
  invoke void @_ZN8ImVectorIcE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.ahl)
          to label %bb.jg unwind label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  %i.ahm = load ptr, ptr %i.agx, align 8, !tbaa !383
  %i.ahn = load i32, ptr %15, align 8, !tbaa !384
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds i8, ptr %i.ahm, i64 %i.aho
  %sext1317 = shl i64 %i.ahi, 32
  %i.ahq = ashr exact i64 %sext1317, 32           ; 2 uses
  %i.ahr = sub nsw i64 0, %i.ahq
  %i.ahs = getelementptr inbounds i8, ptr %i.ahp, i64 %i.ahr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahs, ptr nonnull align 1 %i.e, i64 %i.ahq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jc, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.aht = load i8, ptr %i.ahd, align 1, !tbaa !351
  %.not1313 = icmp eq i8 %i.aht, 0
  br i1 %.not1313, label %._crit_edge, label %bb.ja

bb.ji:                                            ; preds = %bb.je, %bb.jf
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jd
  %.pn.pn = phi { ptr, i32 } [ %i.ahu, %bb.ji ], [ %i.ahf, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.jp

bb.jk:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  store i8 0, ptr %i.f, align 1, !tbaa !351
  invoke void @_ZN8ImVectorIcE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.jl unwind label %bb.jn

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  %i.ahv = load ptr, ptr %i.yl, align 8, !tbaa !378
  %i.ahw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !383
  %i.ahy = load i32, ptr %15, align 8, !tbaa !384
  %i.ahz = add nsw i32 %i.ahy, -1
  invoke fastcc void @_ZN5ImStbL18stb_textedit_pasteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.012601537, ptr noundef %i.ahv, ptr noundef %i.ahx, i32 noundef %i.ahz)
          to label %bb.jm unwind label %bb.iz

bb.jm:                                            ; preds = %bb.jl
  %i.aia = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.aia, align 8, !tbaa !419
  br label %bb.jo

bb.jn:                                            ; preds = %bb.jk
  %i.aib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm, %._crit_edge
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jn, %bb.jj, %bb.iz
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.jj ], [ %i.aha, %bb.iz ], [ %i.aib, %bb.jn ]
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  resume { ptr, i32 } %.pn.pn.pn

bb.jq:                                            ; preds = %bb.gr, %bb.gx, %bb.gw, %bb.hd, %bb.hh, %bb.hn, %bb.ie, %bb.ij, %bb.is, %bb.iw, %bb.il, %bb.hv, %bb.hj, %bb.hf, %bb.ha, %bb.hb, %bb.gt, %bb.ih, %bb.ig, %bb.jo, %bb.ix, %bb.iu, %bb.iv
  %.21257 = phi i8 [ %.01255, %bb.gr ], [ %.01255, %bb.gt ], [ %.01255, %bb.gw ], [ %.01255, %bb.gx ], [ %.01255, %bb.ha ], [ %.01255, %bb.hb ], [ %.01255, %bb.hd ], [ %.01255, %bb.hf ], [ %.01255, %bb.hh ], [ %.01255, %bb.hj ], [ %.11256, %bb.ie ], [ %..01255, %bb.ih ], [ %.01255, %bb.hn ], [ %.01255, %bb.hv ], [ %.01255, %bb.ij ], [ %.01255, %bb.il ], [ %.01255, %bb.ix ], [ %.01255, %bb.is ], [ 1, %bb.ig ], [ %.01255, %bb.iw ], [ %.01255, %bb.jo ], [ %.01255, %bb.iu ], [ %.01255, %bb.iv ] ; 5 uses
  %.01249 = phi float [ %i.fn, %bb.gr ], [ %i.fn, %bb.gt ], [ %i.fn, %bb.gw ], [ %i.fn, %bb.gx ], [ %i.fn, %bb.ha ], [ %i.fn, %bb.hb ], [ %i.acs, %bb.hd ], [ %i.acx, %bb.hf ], [ %i.fn, %bb.hh ], [ %i.fn, %bb.hj ], [ %i.fn, %bb.ie ], [ %i.fn, %bb.ih ], [ %i.fn, %bb.hn ], [ %i.fn, %bb.hv ], [ %i.fn, %bb.ij ], [ %i.fn, %bb.il ], [ %i.fn, %bb.ix ], [ %i.fn, %bb.is ], [ %i.fn, %bb.ig ], [ %i.fn, %bb.iw ], [ %i.fn, %bb.jo ], [ %i.fn, %bb.iu ], [ %i.fn, %bb.iv ] ; 5 uses
  %.11243 = phi i8 [ %.01242, %bb.gr ], [ %.01242, %bb.gt ], [ %.01242, %bb.gw ], [ %.01242, %bb.gx ], [ %.01242, %bb.ha ], [ %.01242, %bb.hb ], [ %.01242, %bb.hd ], [ %.01242, %bb.hf ], [ %.01242, %bb.hh ], [ %.01242, %bb.hj ], [ %.01242, %bb.ie ], [ %..01242, %bb.ih ], [ %.01242, %bb.hn ], [ %.01242, %bb.hv ], [ %.01242, %bb.ij ], [ %.01242, %bb.il ], [ %.01242, %bb.ix ], [ %.01242, %bb.is ], [ 0, %bb.ig ], [ %.01242, %bb.iw ], [ %.01242, %bb.jo ], [ %.01242, %bb.iu ], [ %.01242, %bb.iv ] ; 6 uses
  %.01240 = phi i8 [ %i.qa, %bb.gr ], [ %i.qa, %bb.gt ], [ %i.qa, %bb.gw ], [ %i.qa, %bb.gx ], [ %i.qa, %bb.ha ], [ %i.qa, %bb.hb ], [ %i.qa, %bb.hd ], [ %i.qa, %bb.hf ], [ %i.qa, %bb.hh ], [ %i.qa, %bb.hj ], [ %i.qa, %bb.ie ], [ %., %bb.ih ], [ %i.qa, %bb.hn ], [ %i.qa, %bb.hv ], [ %i.qa, %bb.ij ], [ %i.qa, %bb.il ], [ %i.qa, %bb.ix ], [ %i.qa, %bb.is ], [ 0, %bb.ig ], [ %i.qa, %bb.iw ], [ %i.qa, %bb.jo ], [ %i.qa, %bb.iu ], [ %i.qa, %bb.iv ]
  %.11234 = phi i1 [ false, %bb.gr ], [ false, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gx ], [ false, %bb.ha ], [ false, %bb.hb ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hh ], [ false, %bb.hj ], [ %.01233, %bb.ie ], [ false, %bb.ih ], [ false, %bb.hn ], [ false, %bb.hv ], [ false, %bb.ij ], [ false, %bb.il ], [ false, %bb.ix ], [ false, %bb.is ], [ false, %bb.ig ], [ false, %bb.iw ], [ false, %bb.jo ], [ false, %bb.iu ], [ false, %bb.iv ] ; 5 uses
  %.01229 = phi i1 [ false, %bb.gr ], [ false, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gx ], [ false, %bb.ha ], [ false, %bb.hb ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hh ], [ false, %bb.hj ], [ false, %bb.ie ], [ %.not1320, %bb.ih ], [ false, %bb.hn ], [ false, %bb.hv ], [ false, %bb.ij ], [ false, %bb.il ], [ false, %bb.ix ], [ false, %bb.is ], [ true, %bb.ig ], [ false, %bb.iw ], [ false, %bb.jo ], [ false, %bb.iu ], [ false, %bb.iv ] ; 5 uses
  %i.aic = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 4
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !394
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !395
  %.not1644 = icmp eq i32 %i.aie, %i.aig
  %i.aih = select i1 %.not1644, i8 0, i8 %.11243
  %i.aii = or i8 %i.aih, %.01240                  ; 5 uses
  %.pre1693 = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.aij = icmp eq i32 %.pre1693, %i.s
  br i1 %i.aij, label %bb.jr, label %.thread1572

bb.jr:                                            ; preds = %bb.jq
  %.not139 = xor i1 %.01229, true
  %or.cond142 = or i1 %i.dl, %.not139
  br i1 %or.cond142, label %.thread1808, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aik = and i32 %5, 128
  %.not1322 = icmp eq i32 %i.aik, 0
  br i1 %.not1322, label %bb.jw, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.ail = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !378 ; 4 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.012601537, i64 24 ; 4 uses
  %i.aio = load i32, ptr %i.ain, align 8, !tbaa !377 ; 4 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aim, i64 32
  %i.aiq = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.aip, i32 noundef 0, i32 noundef %i.aio, i32 noundef range(i32 -2147483648, 2147483647) 0) ; 6 uses
  %.not.i.i1420 = icmp ne ptr %i.aiq, null
  %i.air = icmp sgt i32 %i.aio, 0
  %or.cond.i.i = and i1 %i.air, %.not.i.i1420
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit

.lr.ph.i.i:                                       ; preds = %bb.jt
  %i.ais = getelementptr i8, ptr %.012601537, i64 32 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.aio to i64 ; 2 uses
  %xtraiter1884 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.ait = icmp ult i32 %i.aio, 4
  br i1 %i.ait, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.ju

bb.ju:                                            ; preds = %bb.ju, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.ju ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.ju ]
  %.val.i.i = load ptr, ptr %i.ais, align 8, !tbaa !400
  %i.aiu = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !351
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %indvars.iv.i.i
  store i8 %i.aiv, ptr %i.aiw, align 1, !tbaa !351
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.ais, align 8, !tbaa !400
  %i.aix = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !351
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %indvars.iv.next.i.i
  store i8 %i.aiy, ptr %i.aiz, align 1, !tbaa !351
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.ais, align 8, !tbaa !400
  %i.aja = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !351
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %indvars.iv.next.i.i.1
  store i8 %i.ajb, ptr %i.ajc, align 1, !tbaa !351
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.ais, align 8, !tbaa !400
  %i.ajd = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !351
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %indvars.iv.next.i.i.2
  store i8 %i.aje, ptr %i.ajf, align 1, !tbaa !351
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, label %bb.ju, !llvm.loop !9

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa: ; preds = %bb.ju
  %lcmp.mod1885.not = icmp eq i64 %xtraiter1884, 0
  br i1 %lcmp.mod1885.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa ]
  %lcmp.mod1886 = icmp ne i64 %xtraiter1884, 0
  call void @llvm.assume(i1 %lcmp.mod1886)
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jv, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.jv ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.jv ]
  %.val.i.i.epil = load ptr, ptr %i.ais, align 8, !tbaa !400
  %i.ajg = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !351
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %indvars.iv.i.i.epil
  store i8 %i.ajh, ptr %i.aji, align 1, !tbaa !351
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1884
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %bb.jv, !llvm.loop !685

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit: ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %bb.jv, %bb.jt
  %i.ajj = load i32, ptr %i.ain, align 8, !tbaa !377 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !376 ; 2 uses
  %i.ajm = sext i32 %i.ajj to i64
  %i.ajn = getelementptr inbounds i8, ptr %i.ajl, i64 %i.ajm
  %i.ajo = load i8, ptr %i.ajn, align 1
  store i8 %i.ajo, ptr %i.ajl, align 1
  %i.ajp = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  store i8 1, ptr %i.ajp, align 4, !tbaa !415
  %i.ajq = getelementptr inbounds nuw i8, ptr %.012601537, i64 115
  store i8 1, ptr %i.ajq, align 1, !tbaa !393
  %i.ajr = load i32, ptr %i.ain, align 8, !tbaa !377
  %i.ajs = sub nsw i32 %i.ajr, %i.ajj
  store i32 %i.ajs, ptr %i.ain, align 8, !tbaa !377
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  store i32 0, ptr %i.ajt, align 4, !tbaa !395
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aim, i64 4
  store i32 0, ptr %i.aju, align 4, !tbaa !394
  store i32 0, ptr %i.aim, align 4, !tbaa !388
  br label %.thread1808

bb.jw:                                            ; preds = %bb.js
  %i.ajv = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !376
  %i.ajx = getelementptr inbounds nuw i8, ptr %.012601537, i64 64
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !700 ; 3 uses
  %i.ajz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajw, ptr noundef nonnull dereferenceable(1) %i.ajy) #40
  %.not1323 = icmp eq i32 %i.ajz, 0
  br i1 %.not1323, label %.thread1808, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.aka = getelementptr inbounds nuw i8, ptr %.012601537, i64 56
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !724
  %i.akc = add nsw i32 %i.akb, -1                 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !378
  call fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.012601537, ptr noundef %i.ake, ptr noundef nonnull %i.ajy, i32 noundef %i.akc)
  br label %.thread1808

.thread1808:                                      ; preds = %bb.fl, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, %bb.jx, %bb.jw, %bb.jr
  %.3125817891822 = phi i8 [ %.21257, %bb.jr ], [ %.21257, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.21257, %bb.jx ], [ %.21257, %bb.jw ], [ %.01255, %bb.fl ] ; 5 uses
  %.1125017911821 = phi float [ %.01249, %bb.jr ], [ %.01249, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01249, %bb.jx ], [ %.01249, %bb.jw ], [ %i.fn, %bb.fl ] ; 5 uses
  %.2124417941820 = phi i8 [ %.11243, %bb.jr ], [ %.11243, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11243, %bb.jx ], [ %.11243, %bb.jw ], [ %.01242, %bb.fl ] ; 5 uses
  %.1124117971819 = phi i8 [ %i.aii, %bb.jr ], [ %i.aii, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.aii, %bb.jx ], [ %i.aii, %bb.jw ], [ %i.qa, %bb.fl ] ; 5 uses
  %.2123517981818 = phi i1 [ %.11234, %bb.jr ], [ %.11234, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11234, %bb.jx ], [ %.11234, %bb.jw ], [ false, %bb.fl ] ; 6 uses
  %.1123018001817 = phi i1 [ %.01229, %bb.jr ], [ %.01229, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01229, %bb.jx ], [ %.01229, %bb.jw ], [ false, %bb.fl ]
  %.01236 = phi i1 [ false, %bb.jr ], [ true, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ true, %bb.jx ], [ false, %bb.jw ], [ false, %bb.fl ] ; 2 uses
  %.01218 = phi ptr [ null, %bb.jr ], [ @.str, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.ajy, %bb.jx ], [ null, %bb.jw ], [ null, %bb.fl ] ; 2 uses
  %.01213 = phi i32 [ 0, %bb.jr ], [ 0, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.akc, %bb.jx ], [ 0, %bb.jw ], [ 0, %bb.fl ] ; 2 uses
  %i.akf = and i32 %5, 10223616
  %.not1324 = icmp eq i32 %i.akf, 0
  br i1 %.not1324, label %bb.ks, label %bb.jy

bb.jy:                                            ; preds = %.thread1808
  %i.akg = and i32 %5, 262144
  %.not1325 = icmp eq i32 %i.akg, 0
  br i1 %.not1325, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.akh = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 0, i32 noundef %i.s)
  br i1 %i.akh, label %.thread1563, label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.aki = and i32 %5, 524288
  %.not1326 = icmp eq i32 %i.aki, 0
  br i1 %.not1326, label %.critedge1386, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.akj = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 515, i1 noundef zeroext true)
  br i1 %i.akj, label %.thread1563, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.akk = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 516, i1 noundef zeroext true)
  br i1 %i.akk, label %.thread1563, label %.critedge1386

.critedge1386:                                    ; preds = %bb.ka, %bb.kc
  %i.akl = and i32 %5, 8388608
  %.not1327 = icmp eq i32 %i.akl, 0
  br i1 %.not1327, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %.critedge1386
  %i.akm = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  %i.akn = load i8, ptr %i.akm, align 4, !tbaa !415, !range !184, !noundef !185
  %i.ako = trunc nuw i8 %i.akn to i1
  br i1 %i.ako, label %.thread1563, label %bb.ke

bb.ke:                                            ; preds = %.critedge1386, %bb.kd
  %i.akp = and i32 %5, 1048576
  %.not1328 = icmp eq i32 %i.akp, 0
  br i1 %.not1328, label %bb.ks, label %.thread1563

.thread1563:                                      ; preds = %bb.kd, %bb.kc, %bb.kb, %bb.jz, %bb.ke
  %.012111568 = phi i32 [ 0, %bb.ke ], [ 0, %bb.kd ], [ 516, %bb.kc ], [ 515, %bb.kb ], [ 512, %bb.jz ]
  %.012121567 = phi i32 [ 1048576, %bb.ke ], [ 8388608, %bb.kd ], [ 524288, %bb.kc ], [ 524288, %bb.kb ], [ 262144, %bb.jz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
end_hunk_1
