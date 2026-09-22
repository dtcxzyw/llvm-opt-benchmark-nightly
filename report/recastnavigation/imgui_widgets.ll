Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %i.j, i64 8108
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !231
  %i.md = and i32 %i.mc, 4
  %.not1136 = icmp eq i32 %i.md, 0
  br i1 %.not1136, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bn
  %.11090 = phi i1 [ %.not1135, %bb.bp ], [ true, %bb.bq ], [ %.not1135, %bb.bn ] ; 2 uses
  br i1 %i.du, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.me = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.mf = load i8, ptr %i.me, align 4, !tbaa !679, !range !187, !noundef !188
  %i.mg = trunc nuw i8 %i.mf to i1
  %spec.select1181 = or i1 %.11090, %i.mg
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bm
  %.21091 = phi i1 [ false, %bb.bm ], [ %.11090, %bb.br ], [ %spec.select1181, %bb.bs ] ; 2 uses
  %i.mh = and i32 %5, 2048
  %.not1137 = icmp eq i32 %i.mh, 0
  br i1 %.not1137, label %.thread1423, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  store i8 1, ptr %i.mi, align 4, !tbaa !371
  br label %.thread1423

.thread1423.thread:                               ; preds = %bb.ar, %.thread1419
  %i.mj = getelementptr inbounds nuw i8, ptr %i.j, i64 89
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !680, !range !187, !noundef !188 ; 2 uses
  %i.ml = trunc nuw i8 %i.mk to i1
  br label %.sink.split

.thread1423:                                      ; preds = %bb.bt, %bb.bu, %bb.aq, %_ZN8ImVectorIcE6resizeEi.exit
  %i.mm = phi i1 [ %i.ey, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.it, %bb.bt ], [ true, %bb.aq ], [ %i.it, %bb.bu ] ; 2 uses
  %i.mn = phi i1 [ %i.ex, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.is, %bb.bt ], [ %i.io, %bb.aq ], [ %i.is, %bb.bu ]
  %.01097 = phi ptr [ %i.cu, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.iu, %bb.bt ], [ %i.cu, %bb.aq ], [ %i.iu, %bb.bu ] ; 2 uses
  %.31092 = phi i1 [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21091, %bb.bt ], [ false, %bb.aq ], [ %.21091, %bb.bu ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.j, i64 89
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !680, !range !187, !noundef !188 ; 3 uses
  %i.mq = trunc nuw i8 %i.mp to i1                ; 2 uses
  %i.mr = load i32, ptr %i.df, align 4, !tbaa !220 ; 2 uses
  %i.ms = icmp ne i32 %i.mr, %i.t
  %or.cond10 = select i1 %i.ms, i1 %i.mn, i1 false
  br i1 %or.cond10, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.thread1423
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.t, ptr noundef nonnull %i.l) #36
  call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %i.t, ptr noundef nonnull %i.l) #36
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.l, i32 noundef 0) #36
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bv, %.thread1423.thread
  %.ph1726 = phi i1 [ %i.ml, %.thread1423.thread ], [ %i.mq, %bb.bv ]
  %.ph1727 = phi i8 [ %i.mk, %.thread1423.thread ], [ %i.mp, %bb.bv ]
  %.310921620.ph = phi i1 [ false, %.thread1423.thread ], [ %.31092, %bb.bv ]
  %.010971610.ph = phi ptr [ %i.cu, %.thread1423.thread ], [ %.01097, %bb.bv ]
  %.ph1728 = phi i1 [ false, %.thread1423.thread ], [ %i.mm, %bb.bv ]
  %i.mt = load i32, ptr %i.df, align 4, !tbaa !220
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %.thread1423
  %i.mu = phi i1 [ %i.mq, %.thread1423 ], [ %.ph1726, %.sink.split ] ; 5 uses
  %i.mv = phi i8 [ %i.mp, %.thread1423 ], [ %.ph1727, %.sink.split ]
  %.310921620 = phi i1 [ %.31092, %.thread1423 ], [ %.310921620.ph, %.sink.split ] ; 2 uses
  %.010971610 = phi ptr [ %.01097, %.thread1423 ], [ %.010971610.ph, %.sink.split ] ; 7 uses
  %i.mw = phi i1 [ %i.mm, %.thread1423 ], [ %.ph1728, %.sink.split ]
  %i.mx = phi i32 [ %i.mr, %.thread1423 ], [ %i.mt, %.sink.split ]
  %i.my = icmp eq i32 %i.mx, %i.t
  br i1 %i.my, label %.preheader1491.preheader, label %bb.cf

.preheader1491.preheader:                         ; preds = %bb.bw
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 513, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 514, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 525, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 627, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 522, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 523, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 519, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 520, i32 noundef %i.t, i32 noundef 0) #36
  br i1 %i.du, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.preheader1491.preheader
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 656, i32 noundef %i.t, i32 noundef 0) #36
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.preheader1491.preheader
  %i.mz = getelementptr inbounds nuw i8, ptr %i.j, i64 7624 ; 3 uses
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !341 ; 2 uses
  %i.nb = or i32 %i.na, 3
  store i32 %i.nb, ptr %i.mz, align 8, !tbaa !341
  %i.nc = and i32 %5, 67633152
  %or.cond1183.not.not = icmp eq i32 %i.nc, 0
  br i1 %or.cond1183.not.not, label %.thread1424, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nd = or i32 %i.na, 15
  store i32 %i.nd, ptr %i.mz, align 8, !tbaa !341
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 515, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 516, i32 noundef %i.t, i32 noundef 0) #36
  br i1 %i.s, label %bb.ca, label %.thread1424

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 517, i32 noundef %i.t, i32 noundef 0) #36
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 518, i32 noundef %i.t, i32 noundef 0) #36
  br label %.thread1424

.thread1424:                                      ; preds = %bb.by, %bb.ca, %bb.bz
  br i1 %i.mu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.thread1424
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 16384, i32 noundef %i.t, i32 noundef 0) #36
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread1424
  %i.ne = icmp ne ptr %.010971610, null           ; 2 uses
  %or.cond13 = and i1 %i.s, %i.ne
  br i1 %or.cond13, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.nf = getelementptr inbounds nuw i8, ptr %.21101, i64 156
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !670
  %i.nh = getelementptr inbounds nuw i8, ptr %.010971610, i64 96
  store float %i.ng, ptr %i.nh, align 4, !tbaa !681
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %or.cond16 = and i1 %i.cz, %i.ne
  br i1 %or.cond16, label %.thread1426, label %bb.cf

.thread1426:                                      ; preds = %bb.ce
  %i.ni = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #35
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = getelementptr inbounds nuw i8, ptr %.010971610, i64 24
  store i32 %i.nj, ptr %i.nk, align 8, !tbaa !355
  br label %.thread1427

bb.cf:                                            ; preds = %bb.ce, %bb.bw
  %.not1478 = icmp eq ptr %.010971610, null
  br i1 %.not1478, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.cz, label %.thread1427, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nl = getelementptr inbounds nuw i8, ptr %.010971610, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !354
  br label %.thread1427

.thread1427:                                      ; preds = %bb.ch, %bb.cg, %.thread1426
  %i.nn = phi ptr [ %i.nm, %bb.ch ], [ %2, %bb.cg ], [ %2, %.thread1426 ]
  %i.no = getelementptr inbounds nuw i8, ptr %.010971610, i64 32
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !373
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cf
  %i.np = load i32, ptr %i.df, align 4, !tbaa !220
  %i.nq = icmp eq i32 %i.np, %i.t
  br i1 %i.nq, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %bb.ck

bb.ck:                                            ; preds = %.thread1427, %bb.cj, %bb.ci
  %.010971611 = phi ptr [ %.010971610, %.thread1427 ], [ null, %bb.cj ], [ null, %bb.ci ] ; 97 uses
  %i.nr = phi i1 [ true, %.thread1427 ], [ false, %bb.cj ], [ false, %bb.ci ] ; 4 uses
  %i.ns = load i32, ptr %i.df, align 4, !tbaa !220 ; 2 uses
  %i.nt = icmp eq i32 %i.ns, %i.t                 ; 2 uses
  br i1 %i.nt, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 2832
  %i.nv = load i8, ptr %i.nu, align 8, !tbaa !233, !range !187, !noundef !188
  %i.nw = trunc nuw i8 %i.nv to i1
  %.not1479 = xor i1 %i.mw, true
  %not.or.cond25 = select i1 %i.nw, i1 %.not1479, i1 false
  %spec.select1184 = zext i1 %not.or.cond25 to i8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.01093 = phi i8 [ %spec.select1184, %bb.cl ], [ 0, %bb.ck ] ; 27 uses
  %i.nx = select i1 %i.nr, i1 %i.ei, i1 false
  %i.ny = select i1 %i.nt, i1 true, i1 %i.nx      ; 31 uses
  br i1 %i.nr, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.nz = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !350 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !365
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !366
  %i.of = icmp ne i32 %i.oc, %i.oe
  %or.cond28 = or i1 %.310921620, %i.of
  %spec.select1185.a = select i1 %or.cond28, i1 %i.ny, i1 false
  %spec.select1185 = zext i1 %spec.select1185.a to i8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %26 = phi i8 [ %spec.select1185, %bb.cn ], [ 0, %bb.cm ] ; 29 uses
  %not.1480 = xor i1 %i.cz, true                  ; 3 uses
  %spec.select1462 = and i1 %i.nr, %not.1480
  %i.og = select i1 %i.ny, i1 %spec.select1462, i1 false ; 2 uses
  %.not1141 = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not1141, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.og, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.oh = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !354
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.oj = phi ptr [ %i.oi, %bb.cq ], [ %2, %bb.cp ]
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !330
  %i.ol = icmp eq i8 %i.ok, 0
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %i.om = phi i1 [ false, %bb.co ], [ %i.ol, %bb.cr ] ; 4 uses
  %or.cond38 = select i1 %i.db, i1 true, i1 %i.om ; 2 uses
  br i1 %or.cond38, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.on = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 9360 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 4392 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !295
  %i.or = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.oq, i16 noundef zeroext 42) #36 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 4384
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !374
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !378 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 9464
  store i32 %i.ov, ptr %i.ow, align 8, !tbaa !379
  %i.ox = load ptr, ptr %i.op, align 8, !tbaa !295 ; 8 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 64 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !380
  %i.pa = getelementptr inbounds nuw i8, ptr %i.on, i64 9424
  store i32 %i.oz, ptr %i.pa, align 8, !tbaa !380
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 8, !tbaa !381
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 9376
  store float %i.pc, ptr %i.pd, align 8, !tbaa !381
  %i.pe = getelementptr inbounds nuw i8, ptr %i.on, i64 9392 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 32 ; 2 uses
  %i.pg = load <2 x i32>, ptr %i.pf, align 8, !tbaa !211
  %i.ph = load <2 x i32>, ptr %i.pe, align 8, !tbaa !211
  store <2 x i32> %i.ph, ptr %i.pf, align 8, !tbaa !211
  store <2 x i32> %i.pg, ptr %i.pe, align 8, !tbaa !211
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ox, i64 40 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !382
  %i.pk = getelementptr inbounds nuw i8, ptr %i.on, i64 9400 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !382
  store ptr %i.pl, ptr %i.pi, align 8, !tbaa !382
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !382
  %i.pm = load <2 x i32>, ptr %i.ox, align 8, !tbaa !211
  %i.pn = load <2 x i32>, ptr %i.oo, align 8, !tbaa !211
  store <2 x i32> %i.pn, ptr %i.ox, align 8, !tbaa !211
  store <2 x i32> %i.pm, ptr %i.oo, align 8, !tbaa !211
  %i.po = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !383
  %i.pq = getelementptr inbounds nuw i8, ptr %i.on, i64 9368 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !383
  store ptr %i.pr, ptr %i.po, align 8, !tbaa !383
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !383
  %i.ps = or i32 %i.ov, 4
  store i32 %i.ps, ptr %i.ou, align 8, !tbaa !378
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ox, i64 56
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !384
  %i.pv = ptrtoint ptr %i.or to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = sdiv exact i64 %i.px, 44
  %i.pz = trunc i64 %i.py to i32
  store i32 %i.pz, ptr %i.oy, align 8, !tbaa !380
  %i.qa = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !386
  store float %i.qb, ptr %i.pb, align 8, !tbaa !381
  %.pre1525 = load i32, ptr %i.df, align 4, !tbaa !220
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.qc = phi i32 [ %.pre1525, %bb.ct ], [ %i.ns, %bb.cs ]
  %i.qd = icmp eq i32 %i.qc, %i.t
  br i1 %i.qd, label %bb.cv, label %bb.eu

bb.cv:                                            ; preds = %bb.cu
  %i.qe = getelementptr inbounds nuw i8, ptr %.010971611, i64 106
  store i8 0, ptr %i.qe, align 2, !tbaa !387
  %i.qf = getelementptr inbounds nuw i8, ptr %.010971611, i64 88
  store i32 %3, ptr %i.qf, align 8, !tbaa !388
  %i.qg = getelementptr inbounds nuw i8, ptr %.010971611, i64 16
  store i32 %spec.select1180, ptr %i.qg, align 8, !tbaa !389
  %i.qh = getelementptr inbounds nuw i8, ptr %i.j, i64 232 ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 8, !tbaa !233, !range !187, !noundef !188 ; 2 uses
  %i.qj = xor i8 %i.qi, 1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.j, i64 5313
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !390
  %i.ql = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.qm = load float, ptr %i.ql, align 8, !tbaa !682
  %i.qn = load float, ptr %11, align 8, !tbaa !239
  %i.qo = fsub float %i.qm, %i.qn
  %i.qp = load float, ptr %i.aa, align 4, !tbaa !209
  %i.qq = fsub float %i.qo, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.010971611, i64 92
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !672
  %i.qt = fadd float %i.qq, %i.qs                 ; 4 uses
  br i1 %i.s, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qu = getelementptr inbounds nuw i8, ptr %i.j, i64 228
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !391
  %i.qw = getelementptr inbounds nuw i8, ptr %.21101, i64 284
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !190
  %i.qy = fsub float %i.qv, %i.qx
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.qz = getelementptr inbounds nuw i8, ptr %i.j, i64 4400
  %i.ra = load float, ptr %i.qz, align 8, !tbaa !208
  %i.rb = fmul float %i.ra, 5.000000e-01
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.rc = phi float [ %i.qy, %bb.cw ], [ %i.rb, %bb.cx ] ; 4 uses
  br i1 %.310921620, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.rd = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !350 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store i32 0, ptr %i.rf, align 4, !tbaa !365
  %i.rg = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !355 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i32 %i.rh, ptr %i.ri, align 4, !tbaa !366
  store i32 %i.rh, ptr %i.re, align 4, !tbaa !364
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 22
  store i8 0, ptr %i.rj, align 2, !tbaa !369
  %i.rk = getelementptr inbounds nuw i8, ptr %.010971611, i64 105
  store i8 1, ptr %i.rk, align 1, !tbaa !683
  br label %bb.dz

bb.da:                                            ; preds = %bb.cy
  br i1 %.01098.shrunk, label %bb.db, label %bb.dn

bb.db:                                            ; preds = %bb.da
  %i.rl = getelementptr inbounds nuw i8, ptr %i.j, i64 2842 ; 2 uses
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !221
  %i.rn = icmp ugt i16 %i.rm, 1
  br i1 %i.rn, label %bb.dc, label %bb.dn

bb.dc:                                            ; preds = %bb.db
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 253
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !684, !range !187, !noundef !188
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.dn, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rr = getelementptr inbounds nuw i8, ptr %.010971611, i64 8 ; 5 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !350
  call fastcc void @_ZN5ImStbL18stb_textedit_clickEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.010971611, ptr noundef %i.rs, float noundef %i.qt, float noundef %i.rc)
  %i.rt = load i16, ptr %i.rl, align 2, !tbaa !221
  %i.ru = and i16 %i.rt, 1
  %i.rv = icmp eq i16 %i.ru, 0
  %i.rw = load ptr, ptr %i.rr, align 8, !tbaa !350 ; 4 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !364 ; 4 uses
  br i1 %i.rv, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %bb.dd
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rz = getelementptr i8, ptr %.010971611, i64 32
  %.01097.val1232 = load ptr, ptr %i.rz, align 8, !tbaa !373
  %i.sa = sext i32 %i.rx to i64
  %i.sb = getelementptr i8, ptr %.01097.val1232, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 -1
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !330
  %i.se = icmp eq i8 %i.sd, 10
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.sf = phi i1 [ true, %bb.de ], [ %i.se, %bb.df ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !365
  %i.si = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !366
  %i.sk = icmp eq i32 %i.sh, %i.sj
  %or.cond41 = and i1 %i.sf, %i.sk
  br i1 %or.cond41, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef 2097164)
  %.pre1526 = load ptr, ptr %i.rr, align 8, !tbaa !350 ; 4 uses
  %.phi.trans.insert1527 = getelementptr inbounds nuw i8, ptr %.pre1526, i64 4
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.aae = select i1 %i.xa, i32 2097159, i32 2097155
  %i.aaf = or disjoint i32 %i.aae, %i.wo
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.aaf)
  br label %bb.io

bb.gk:                                            ; preds = %bb.gg
  %i.aag = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 517, i1 noundef zeroext true) #36
  %or.cond82 = and i1 %i.s, %i.aag
  br i1 %or.cond82, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aah = or disjoint i32 %i.wo, 2097166
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.aah)
  %i.aai = uitofp nneg i32 %i.wh to float
  %i.aaj = load float, ptr %i.wd, align 8, !tbaa !208
  %i.aak = fneg float %i.aai
  %i.aal = call float @llvm.fmuladd.f32(float %i.aak, float %i.aaj, float %i.ek)
  br label %bb.io

bb.gm:                                            ; preds = %bb.gk
  %i.aam = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 518, i1 noundef zeroext true) #36
  %or.cond85 = and i1 %i.s, %i.aam
  br i1 %or.cond85, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.aan = or disjoint i32 %i.wo, 2097167
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.aan)
  %i.aao = uitofp nneg i32 %i.wh to float
  %i.aap = load float, ptr %i.wd, align 8, !tbaa !208
  %i.aaq = call float @llvm.fmuladd.f32(float %i.aao, float %i.aap, float %i.ek)
  br label %bb.io

bb.go:                                            ; preds = %bb.gm
  %i.aar = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 519, i1 noundef zeroext true) #36
  br i1 %i.aar, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.aas = load i8, ptr %i.wq, align 4, !tbaa !679, !range !187, !noundef !188
  %i.aat = trunc nuw i8 %i.aas to i1
  %.v1153 = select i1 %i.aat, i32 2097158, i32 2097156
  %i.aau = or disjoint i32 %.v1153, %i.wo
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.aau)
  br label %bb.io

bb.gq:                                            ; preds = %bb.go
  %i.aav = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 520, i1 noundef zeroext true) #36
  br i1 %i.aav, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.aaw = load i8, ptr %i.wq, align 4, !tbaa !679, !range !187, !noundef !188
  %i.aax = trunc nuw i8 %i.aaw to i1
  %.v = select i1 %i.aax, i32 2097159, i32 2097157
  %i.aay = or disjoint i32 %.v, %i.wo
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.aay)
  br label %bb.io

bb.gs:                                            ; preds = %bb.gq
  %i.aaz = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 522, i1 noundef zeroext true) #36
  %.not86 = xor i1 %i.aaz, true
  %or.cond89 = or i1 %i.cz, %.not86
  %or.cond92 = or i1 %i.xl, %or.cond89
  br i1 %or.cond92, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aba = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !365
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !366
  %.not1481 = icmp eq i32 %i.abc, %i.abe
  %or.cond157 = and i1 %.not1481, %i.wr
  br i1 %or.cond157, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef 6291469)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.abf = or disjoint i32 %i.wo, 2097160
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.abf)
  br label %bb.io

bb.gw:                                            ; preds = %bb.gs
  %i.abg = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 523, i1 noundef zeroext true) #36
  %.not93 = xor i1 %i.abg, true
  %or.cond96 = or i1 %i.cz, %.not93
  br i1 %or.cond96, label %bb.he, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.abh = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 4
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !365
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !366
  %.not1482 = icmp eq i32 %i.abj, %i.abl
  br i1 %.not1482, label %bb.gy, label %bb.hd

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.wr, label %.sink.split1733, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  br i1 %i.vv, label %bb.ha, label %bb.hd

bb.ha:                                            ; preds = %bb.gz
  %i.abm = load i8, ptr %i.wq, align 4, !tbaa !679, !range !187, !noundef !188
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  %i.abo = load i8, ptr %i.wp, align 2, !tbaa !687, !range !187, !noundef !188
  %i.abp = trunc nuw i8 %i.abo to i1
  br i1 %i.abp, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.abq = getelementptr inbounds nuw i8, ptr %i.j, i64 255
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !689, !range !187, !noundef !188
  %i.abs = trunc nuw i8 %i.abr to i1
  br i1 %i.abs, label %bb.hd, label %.sink.split1733

.sink.split1733:                                  ; preds = %bb.hc, %bb.gy
  %.sink1734 = phi i32 [ 6291468, %bb.gy ], [ 6291460, %bb.hc ]
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %.sink1734)
  br label %bb.hd

bb.hd:                                            ; preds = %.sink.split1733, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gx
  %i.abt = or disjoint i32 %i.wo, 2097161
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.abt)
  br label %bb.io

bb.he:                                            ; preds = %bb.gw
  %or.cond99 = or i1 %i.ym, %i.yz
  br i1 %or.cond99, label %bb.hf, label %bb.ho

bb.hf:                                            ; preds = %bb.he
  %.not100 = xor i1 %i.s, true
  %or.cond103 = or i1 %i.yz, %.not100
  br i1 %or.cond103, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.abu = and i32 %5, 256
  %.not1152 = icmp eq i32 %i.abu, 0
  %i.abv = load i8, ptr %i.wq, align 4, !tbaa !679, !range !187, !noundef !188
  %i.abw = trunc nuw i8 %i.abv to i1              ; 2 uses
  br i1 %.not1152, label %.critedge1209, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  br i1 %i.abw, label %bb.hk, label %bb.io

.critedge1209:                                    ; preds = %bb.hg
  br i1 %i.abw, label %bb.io, label %bb.hk

bb.hi:                                            ; preds = %bb.hf
  %i.abx = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.aby = load i8, ptr %i.abx, align 4, !tbaa !692, !range !187, !noundef !188
  %i.abz = trunc nuw i8 %i.aby to i1
  %.not104 = xor i1 %i.abz, true
  %or.cond107 = or i1 %i.s, %.not104
  br i1 %or.cond107, label %bb.io, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aca = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 4
  store i32 0, ptr %i.acb, align 4, !tbaa !365
  %i.acc = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !355 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !366
  store i32 %i.acd, ptr %i.aca, align 4, !tbaa !364
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 22
  store i8 0, ptr %i.acf, align 2, !tbaa !369
  br label %bb.io

bb.hk:                                            ; preds = %bb.hh, %.critedge1209
  br i1 %i.cz, label %bb.io, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i32 10, ptr %i.f, align 4, !tbaa !211
  %i.acg = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextPjiPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.j, ptr noundef %i.f, i32 noundef %spec.select1180, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.acg, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.ach = load i32, ptr %i.f, align 4, !tbaa !211
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.ach)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.io

bb.ho:                                            ; preds = %bb.he
  br i1 %i.za, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.aci = and i32 %5, 128
  %.not1150 = icmp eq i32 %i.aci, 0
  br i1 %.not1150, label %bb.io, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.acj = load i8, ptr %2, align 1, !tbaa !330
  %.not1151 = icmp eq i8 %i.acj, 0                ; 4 uses
  %..01093 = select i1 %.not1151, i8 1, i8 %.01093
  %not..not1151 = xor i1 %.not1151, true
  %.1210 = select i1 %not..not1151, i1 %i.ny, i1 false
  %.1211 = select i1 %.not1151, i8 0, i8 %26
  %.1212 = select i1 %.not1151, i1 true, i1 %i.cz
  br label %bb.io

bb.hr:                                            ; preds = %bb.ho
  br i1 %or.cond110, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.ack = select i1 %i.ya, i32 2097162, i32 2097163
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.ack)
  %i.acl = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 3 uses
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !364 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  store i32 %i.acm, ptr %i.acn, align 4, !tbaa !366
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  store i32 %i.acm, ptr %i.aco, align 4, !tbaa !365
  br label %bb.io

bb.ht:                                            ; preds = %bb.hr
  br i1 %i.yd, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.acp = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store i32 0, ptr %i.acq, align 4, !tbaa !365
  %i.acr = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !355 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !366
  store i32 %i.acs, ptr %i.acp, align 4, !tbaa !364
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 22
  store i8 0, ptr %i.acu, align 2, !tbaa !369
  %i.acv = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.acv, align 8, !tbaa !392
  br label %bb.io

bb.hv:                                            ; preds = %bb.ht
  br i1 %or.cond113, label %bb.hw, label %bb.if

bb.hw:                                            ; preds = %bb.hv
  %i.acw = getelementptr inbounds nuw i8, ptr %i.j, i64 3048
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !693
  %.not1149 = icmp eq ptr %i.acx, null
  br i1 %.not1149, label %bb.ib, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.acy = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !365 ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !366 ; 3 uses
  %.not1483 = icmp eq i32 %i.ada, %i.adc
  br i1 %.not1483, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.add = call noundef i32 @llvm.smin.i32(i32 %i.ada, i32 %i.adc)
  %i.ade = call noundef i32 @llvm.smax.i32(i32 %i.ada, i32 %i.adc)
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.adf = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !355
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.adh = phi i32 [ %i.add, %bb.hy ], [ 0, %bb.hz ] ; 2 uses
  %i.adi = phi i32 [ %i.ade, %bb.hy ], [ %i.adg, %bb.hz ]
  %i.adj = getelementptr inbounds nuw i8, ptr %i.j, i64 10664
  %i.adk = sub nsw i32 %i.adi, %i.adh             ; 2 uses
  %i.adl = add nsw i32 %i.adk, 1
  call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.adj, i32 noundef %i.adl)
  %i.adm = getelementptr inbounds nuw i8, ptr %i.j, i64 10672 ; 3 uses
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !694
  %i.ado = getelementptr inbounds nuw i8, ptr %.010971611, i64 32
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !373
  %i.adq = sext i32 %i.adh to i64
  %i.adr = getelementptr inbounds i8, ptr %i.adp, i64 %i.adq
  %i.ads = sext i32 %i.adk to i64                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adn, ptr align 1 %i.adr, i64 %i.ads, i1 false)
  %i.adt = load ptr, ptr %i.adm, align 8, !tbaa !694
  %i.adu = getelementptr inbounds i8, ptr %i.adt, i64 %i.ads
  store i8 0, ptr %i.adu, align 1, !tbaa !330
  %i.adv = load ptr, ptr %i.adm, align 8, !tbaa !694
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef %i.adv) #36
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hw
  br i1 %i.xl, label %bb.ic, label %bb.io

bb.ic:                                            ; preds = %bb.ib
  %i.adw = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 6 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4 ; 2 uses
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !365
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 8 ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !366
  %.not1484 = icmp eq i32 %i.ady, %i.aea
  br i1 %.not1484, label %bb.id, label %.thread1626

.thread1626:                                      ; preds = %bb.ic
  %i.aeb = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.aeb, align 8, !tbaa !392
  br label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i32 0, ptr %i.adx, align 4, !tbaa !365
  %i.aec = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !355 ; 3 uses
  store i32 %i.aed, ptr %i.adz, align 4, !tbaa !366
  store i32 %i.aed, ptr %i.adw, align 4, !tbaa !364
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adw, i64 22
  store i8 0, ptr %i.aee, align 2, !tbaa !369
  %i.aef = icmp eq i32 %i.aed, 0
  %i.aeg = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.aeg, align 8, !tbaa !392
  br i1 %i.aef, label %bb.io, label %bb.ie

bb.ie:                                            ; preds = %.thread1626, %bb.id
  call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %.010971611, ptr noundef nonnull %i.adw)
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adw, i64 22
  store i8 0, ptr %i.aeh, align 2, !tbaa !369
  br label %bb.io

bb.if:                                            ; preds = %bb.hv
  br i1 %i.xy, label %bb.ig, label %bb.io

bb.ig:                                            ; preds = %bb.if
  %i.aei = call noundef ptr @_ZN5ImGui16GetClipboardTextEv() #36 ; 4 uses
  %.not1146 = icmp eq ptr %i.aei, null
  br i1 %.not1146, label %bb.io, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aej = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aei) #35
  %i.aek = trunc i64 %i.aej to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.ael = add nsw i32 %i.aek, 1
  call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.ael)
  %i.aem = load i8, ptr %i.aei, align 1, !tbaa !330
  %.not11471498 = icmp eq i8 %i.aem, 0
  br i1 %.not11471498, label %._crit_edge, label %.lr.ph1500

.lr.ph1500:                                       ; preds = %bb.ih
  %i.aen = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ii

._crit_edge:                                      ; preds = %bb.ik, %bb.ih
  %i.aeo = load i32, ptr %15, align 8, !tbaa !361
  %i.aep = icmp sgt i32 %i.aeo, 0
  br i1 %i.aep, label %bb.il, label %bb.im

bb.ii:                                            ; preds = %.lr.ph1500, %bb.ik
  %.010671499 = phi ptr [ %i.aei, %.lr.ph1500 ], [ %i.aes, %bb.ik ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.aeq = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.g, ptr noundef nonnull %.010671499, ptr noundef null) #36
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = getelementptr inbounds i8, ptr %.010671499, i64 %i.aer ; 2 uses
  %i.aet = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextPjiPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef %i.j, ptr noundef %i.g, i32 noundef %spec.select1180, ptr noundef %6, ptr noundef %7, i1 noundef zeroext true)
  br i1 %i.aet, label %bb.ij, label %bb.ik, !llvm.loop !662

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  %i.aeu = load i32, ptr %i.g, align 4, !tbaa !211
  %i.aev = call noundef ptr @_Z16ImTextCharToUtf8Pcj(ptr noundef nonnull %i.h, i32 noundef %i.aeu) #36 ; 0 uses
  %i.aew = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #35 ; 2 uses
  %i.aex = trunc i64 %i.aew to i32
  %i.aey = load i32, ptr %15, align 8, !tbaa !361
  %i.aez = add nsw i32 %i.aey, %i.aex
  call void @_ZN8ImVectorIcE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.aez)
  %i.afa = load ptr, ptr %i.aen, align 8, !tbaa !360
  %i.afb = load i32, ptr %15, align 8, !tbaa !361
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds i8, ptr %i.afa, i64 %i.afc
  %sext1148 = shl i64 %i.aew, 32
  %i.afe = ashr exact i64 %sext1148, 32           ; 2 uses
  %i.aff = sub nsw i64 0, %i.afe
  %i.afg = getelementptr inbounds i8, ptr %i.afd, i64 %i.aff
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afg, ptr nonnull align 1 %i.h, i64 %i.afe, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ii, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.afh = load i8, ptr %i.aes, align 1, !tbaa !330
  %.not1147 = icmp eq i8 %i.afh, 0
  br i1 %.not1147, label %._crit_edge, label %bb.ii

bb.il:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  store i8 0, ptr %i.i, align 1, !tbaa !330
  call void @_ZN8ImVectorIcE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  %i.afi = load ptr, ptr %i.wi, align 8, !tbaa !350
  %i.afj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !360
  %i.afl = load i32, ptr %15, align 8, !tbaa !361
  %i.afm = add nsw i32 %i.afl, -1
  call fastcc void @_ZN5ImStbL18stb_textedit_pasteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef %.010971611, ptr noundef %i.afi, ptr noundef %i.afk, i32 noundef %i.afm)
  %i.afn = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.afn, align 8, !tbaa !392
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %._crit_edge
  %i.afo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !360 ; 2 uses
  %.not.i1253 = icmp eq ptr %i.afp, null
  br i1 %.not.i1253, label %_ZN8ImVectorIcED2Ev.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.afp) #36
  br label %_ZN8ImVectorIcED2Ev.exit

_ZN8ImVectorIcED2Ev.exit:                         ; preds = %bb.im, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.io

bb.io:                                            ; preds = %bb.fz, %bb.gf, %bb.ge, %bb.gl, %bb.gp, %bb.gv, %bb.hs, %bb.ib, %bb.if, %bb.hu, %bb.hd, %bb.gr, %bb.gn, %bb.gi, %bb.gj, %bb.gb, %bb.hi, %bb.hk, %bb.hn, %bb.hj, %bb.hq, %bb.hp, %_ZN8ImVectorIcED2Ev.exit, %bb.ig, %bb.id, %bb.ie, %.critedge1209, %bb.hh
  %.21095 = phi i8 [ %.01093, %bb.fz ], [ %.01093, %bb.gb ], [ %.01093, %bb.ge ], [ %.01093, %bb.gf ], [ %.01093, %bb.gi ], [ %.01093, %bb.gj ], [ %.01093, %bb.gl ], [ %.01093, %bb.gn ], [ %.01093, %bb.gp ], [ %.01093, %bb.gr ], [ %.01093, %bb.gv ], [ %..01093, %bb.hq ], [ 1, %bb.hi ], [ %.01093, %bb.hk ], [ %.01093, %bb.hs ], [ %.01093, %bb.hu ], [ %.01093, %bb.ie ], [ %.01093, %bb.ib ], [ 1, %bb.hp ], [ %.01093, %bb.if ], [ %.01093, %bb.hd ], [ %.01093, %bb.hn ], [ %.01093, %bb.hj ], [ %.01093, %_ZN8ImVectorIcED2Ev.exit ], [ %.01093, %bb.ig ], [ %.01093, %bb.id ], [ 1, %.critedge1209 ], [ 1, %bb.hh ] ; 5 uses
  %.01086 = phi float [ %i.ek, %bb.fz ], [ %i.ek, %bb.gb ], [ %i.ek, %bb.ge ], [ %i.ek, %bb.gf ], [ %i.ek, %bb.gi ], [ %i.ek, %bb.gj ], [ %i.aal, %bb.gl ], [ %i.aaq, %bb.gn ], [ %i.ek, %bb.gp ], [ %i.ek, %bb.gr ], [ %i.ek, %bb.gv ], [ %i.ek, %bb.hq ], [ %i.ek, %bb.hi ], [ %i.ek, %bb.hk ], [ %i.ek, %bb.hs ], [ %i.ek, %bb.hu ], [ %i.ek, %bb.ie ], [ %i.ek, %bb.ib ], [ %i.ek, %bb.hp ], [ %i.ek, %bb.if ], [ %i.ek, %bb.hd ], [ %i.ek, %bb.hn ], [ %i.ek, %bb.hj ], [ %i.ek, %_ZN8ImVectorIcED2Ev.exit ], [ %i.ek, %bb.ig ], [ %i.ek, %bb.id ], [ %i.ek, %.critedge1209 ], [ %i.ek, %bb.hh ] ; 5 uses
  %.01082.shrunk = phi i1 [ %i.ny, %bb.fz ], [ %i.ny, %bb.gb ], [ %i.ny, %bb.ge ], [ %i.ny, %bb.gf ], [ %i.ny, %bb.gi ], [ %i.ny, %bb.gj ], [ %i.ny, %bb.gl ], [ %i.ny, %bb.gn ], [ %i.ny, %bb.gp ], [ %i.ny, %bb.gr ], [ %i.ny, %bb.gv ], [ %.1210, %bb.hq ], [ %i.ny, %bb.hi ], [ %i.ny, %bb.hk ], [ %i.ny, %bb.hs ], [ %i.ny, %bb.hu ], [ %i.ny, %bb.ie ], [ %i.ny, %bb.ib ], [ false, %bb.hp ], [ %i.ny, %bb.if ], [ %i.ny, %bb.hd ], [ %i.ny, %bb.hn ], [ %i.ny, %bb.hj ], [ %i.ny, %_ZN8ImVectorIcED2Ev.exit ], [ %i.ny, %bb.ig ], [ %i.ny, %bb.id ], [ %i.ny, %.critedge1209 ], [ %i.ny, %bb.hh ] ; 6 uses
  %.01080 = phi i8 [ %26, %bb.fz ], [ %26, %bb.gb ], [ %26, %bb.ge ], [ %26, %bb.gf ], [ %26, %bb.gi ], [ %26, %bb.gj ], [ %26, %bb.gl ], [ %26, %bb.gn ], [ %26, %bb.gp ], [ %26, %bb.gr ], [ %26, %bb.gv ], [ %.1211, %bb.hq ], [ %26, %bb.hi ], [ %26, %bb.hk ], [ %26, %bb.hs ], [ %26, %bb.hu ], [ %26, %bb.ie ], [ %26, %bb.ib ], [ 0, %bb.hp ], [ %26, %bb.if ], [ %26, %bb.hd ], [ %26, %bb.hn ], [ %26, %bb.hj ], [ %26, %_ZN8ImVectorIcED2Ev.exit ], [ %26, %bb.ig ], [ %26, %bb.id ], [ %26, %.critedge1209 ], [ %26, %bb.hh ]
  %.11073 = phi i1 [ false, %bb.fz ], [ false, %bb.gb ], [ false, %bb.ge ], [ false, %bb.gf ], [ false, %bb.gi ], [ false, %bb.gj ], [ false, %bb.gl ], [ false, %bb.gn ], [ false, %bb.gp ], [ false, %bb.gr ], [ false, %bb.gv ], [ false, %bb.hq ], [ true, %bb.hi ], [ false, %bb.hk ], [ false, %bb.hs ], [ false, %bb.hu ], [ false, %bb.ie ], [ false, %bb.ib ], [ false, %bb.hp ], [ false, %bb.if ], [ false, %bb.hd ], [ false, %bb.hn ], [ true, %bb.hj ], [ false, %_ZN8ImVectorIcED2Ev.exit ], [ false, %bb.ig ], [ false, %bb.id ], [ true, %.critedge1209 ], [ true, %bb.hh ] ; 5 uses
  %i.afq = phi i1 [ true, %bb.fz ], [ true, %bb.gb ], [ true, %bb.ge ], [ true, %bb.gf ], [ true, %bb.gi ], [ true, %bb.gj ], [ true, %bb.gl ], [ true, %bb.gn ], [ true, %bb.gp ], [ true, %bb.gr ], [ true, %bb.gv ], [ %.1212, %bb.hq ], [ true, %bb.hi ], [ true, %bb.hk ], [ true, %bb.hs ], [ true, %bb.hu ], [ true, %bb.ie ], [ true, %bb.ib ], [ %i.cz, %bb.hp ], [ true, %bb.if ], [ true, %bb.hd ], [ true, %bb.hn ], [ true, %bb.hj ], [ true, %_ZN8ImVectorIcED2Ev.exit ], [ true, %bb.ig ], [ true, %bb.id ], [ true, %.critedge1209 ], [ true, %bb.hh ]
  %i.afr = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !365
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !366
  %i.afw = icmp ne i32 %i.aft, %i.afv
  %narrow = select i1 %i.afw, i1 %.01082.shrunk, i1 false
  %27 = zext i1 %narrow to i8
  %28 = or i8 %.01080, %27
  %29 = icmp ne i8 %28, 0
  %30 = zext i1 %29 to i8                         ; 5 uses
  %.pre1532 = load i32, ptr %i.df, align 4, !tbaa !220
  %i.afx = icmp eq i32 %.pre1532, %i.t
  br i1 %i.afx, label %bb.ip, label %.thread1646

bb.ip:                                            ; preds = %bb.io
  br i1 %i.afq, label %.thread1653, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.afy = and i32 %5, 128
  %.not1154 = icmp eq i32 %i.afy, 0
  br i1 %.not1154, label %bb.iu, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.afz = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !350 ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.010971611, i64 24 ; 4 uses
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !355 ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 32
  %i.age = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.agd, i32 noundef 0, i32 noundef %i.agc, i32 noundef range(i32 -2147483648, 2147483647) 0) ; 6 uses
  %.not.i.i1254 = icmp ne ptr %i.age, null
  %i.agf = icmp sgt i32 %i.agc, 0
  %or.cond.i.i = and i1 %i.agf, %.not.i.i1254
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit

.lr.ph.i.i:                                       ; preds = %bb.ir
  %i.agg = getelementptr i8, ptr %.010971611, i64 32 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.agc to i64 ; 2 uses
  %xtraiter1771 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.agh = icmp ult i32 %i.agc, 4
  br i1 %i.agh, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.is

bb.is:                                            ; preds = %bb.is, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.is ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.is ]
  %.val.i.i = load ptr, ptr %i.agg, align 8, !tbaa !373
  %i.agi = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !330
  %i.agk = getelementptr inbounds nuw i8, ptr %i.age, i64 %indvars.iv.i.i
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !330
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.agg, align 8, !tbaa !373
  %i.agl = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !330
  %i.agn = getelementptr inbounds nuw i8, ptr %i.age, i64 %indvars.iv.next.i.i
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !330
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.agg, align 8, !tbaa !373
  %i.ago = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !330
  %i.agq = getelementptr inbounds nuw i8, ptr %i.age, i64 %indvars.iv.next.i.i.1
  store i8 %i.agp, ptr %i.agq, align 1, !tbaa !330
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.agg, align 8, !tbaa !373
  %i.agr = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !330
  %i.agt = getelementptr inbounds nuw i8, ptr %i.age, i64 %indvars.iv.next.i.i.2
  store i8 %i.ags, ptr %i.agt, align 1, !tbaa !330
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, label %bb.is, !llvm.loop !11

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa: ; preds = %bb.is
  %lcmp.mod1772.not = icmp eq i64 %xtraiter1771, 0
  br i1 %lcmp.mod1772.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa ]
  %lcmp.mod1773 = icmp ne i64 %xtraiter1771, 0
  call void @llvm.assume(i1 %lcmp.mod1773)
  br label %bb.it

bb.it:                                            ; preds = %bb.it, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.it ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.it ]
  %.val.i.i.epil = load ptr, ptr %i.agg, align 8, !tbaa !373
  %i.agu = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !330
  %i.agw = getelementptr inbounds nuw i8, ptr %i.age, i64 %indvars.iv.i.i.epil
  store i8 %i.agv, ptr %i.agw, align 1, !tbaa !330
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1771
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %bb.it, !llvm.loop !663

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit: ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %bb.it, %bb.ir
  %i.agx = load i32, ptr %i.agb, align 8, !tbaa !355 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !354 ; 2 uses
  %i.aha = sext i32 %i.agx to i64
  %i.ahb = getelementptr inbounds i8, ptr %i.agz, i64 %i.aha
  %i.ahc = load i8, ptr %i.ahb, align 1
  store i8 %i.ahc, ptr %i.agz, align 1
  %i.ahd = getelementptr inbounds nuw i8, ptr %.010971611, i64 106
  store i8 1, ptr %i.ahd, align 2, !tbaa !387
  %i.ahe = load i32, ptr %i.agb, align 8, !tbaa !355
  %i.ahf = sub nsw i32 %i.ahe, %i.agx
  store i32 %i.ahf, ptr %i.agb, align 8, !tbaa !355
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  store i32 0, ptr %i.ahg, align 4, !tbaa !366
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.aga, i64 4
  store i32 0, ptr %i.ahh, align 4, !tbaa !365
  store i32 0, ptr %i.aga, align 4, !tbaa !364
  br label %.thread1653

bb.iu:                                            ; preds = %bb.iq
  %i.ahi = getelementptr inbounds nuw i8, ptr %.010971611, i64 64
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !671 ; 3 uses
  %i.ahk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ahj) #35
  %.not1155 = icmp eq i32 %i.ahk, 0
  br i1 %.not1155, label %.thread1653, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ahl = getelementptr inbounds nuw i8, ptr %.010971611, i64 56
  %i.ahm = load i32, ptr %i.ahl, align 8, !tbaa !695
  %i.ahn = add nsw i32 %i.ahm, -1                 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !350
  call fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.010971611, ptr noundef %i.ahp, ptr noundef nonnull %i.ahj, i32 noundef %i.ahn)
  br label %.thread1653

.thread1653:                                      ; preds = %bb.ev, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, %bb.iv, %bb.iu, %bb.ip
  %.3109616361664 = phi i8 [ %.21095, %bb.ip ], [ %.21095, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.21095, %bb.iv ], [ %.21095, %bb.iu ], [ %.01093, %bb.ev ] ; 3 uses
  %.1108716381663 = phi float [ %.01086, %bb.ip ], [ %.01086, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01086, %bb.iv ], [ %.01086, %bb.iu ], [ %i.ek, %bb.ev ] ; 3 uses
  %.1108316401662 = phi i1 [ %.01082.shrunk, %bb.ip ], [ %.01082.shrunk, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01082.shrunk, %bb.iv ], [ %.01082.shrunk, %bb.iu ], [ %i.ny, %bb.ev ] ; 3 uses
  %.1108116421661 = phi i8 [ %30, %bb.ip ], [ %30, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %30, %bb.iv ], [ %30, %bb.iu ], [ %26, %bb.ev ] ; 3 uses
  %.2107416441660 = phi i1 [ %.11073, %bb.ip ], [ %.11073, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11073, %bb.iv ], [ %.11073, %bb.iu ], [ false, %bb.ev ] ; 3 uses
  %.01075 = phi i1 [ false, %bb.ip ], [ true, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ true, %bb.iv ], [ false, %bb.iu ], [ false, %bb.ev ] ; 2 uses
  %.01062 = phi ptr [ null, %bb.ip ], [ @.str, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.ahj, %bb.iv ], [ null, %bb.iu ], [ null, %bb.ev ] ; 2 uses
  %.01057 = phi i32 [ 0, %bb.ip ], [ 0, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.ahn, %bb.iv ], [ 0, %bb.iu ], [ 0, %bb.ev ] ; 2 uses
  %i.ahq = and i32 %5, 10223616
  %.not1156 = icmp eq i32 %i.ahq, 0
  br i1 %.not1156, label %bb.jt, label %bb.iw

bb.iw:                                            ; preds = %.thread1653
  %i.ahr = and i32 %5, 262144
  %.not1157 = icmp eq i32 %i.ahr, 0
  br i1 %.not1157, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ahs = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 0, i32 noundef %i.t) #36
  br i1 %i.ahs, label %.thread1438, label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.aht = and i32 %5, 524288
  %.not1158 = icmp eq i32 %i.aht, 0
  br i1 %.not1158, label %.critedge1214, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ahu = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 515, i1 noundef zeroext true) #36
  br i1 %i.ahu, label %.thread1438, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ahv = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 516, i1 noundef zeroext true) #36
  br i1 %i.ahv, label %.thread1438, label %.critedge1214

.critedge1214:                                    ; preds = %bb.iy, %bb.ja
  %i.ahw = and i32 %5, 8388608
  %.not1159 = icmp eq i32 %i.ahw, 0
  br i1 %.not1159, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %.critedge1214
  %i.ahx = getelementptr inbounds nuw i8, ptr %.010971611, i64 106
  %i.ahy = load i8, ptr %i.ahx, align 2, !tbaa !387, !range !187, !noundef !188
  %i.ahz = trunc nuw i8 %i.ahy to i1
  br i1 %i.ahz, label %.thread1438, label %bb.jc

bb.jc:                                            ; preds = %.critedge1214, %bb.jb
  %i.aia = and i32 %5, 1048576
  %.not1160 = icmp eq i32 %i.aia, 0
  br i1 %.not1160, label %bb.jt, label %.thread1438

.thread1438:                                      ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.ix, %bb.jc
  %.010551443 = phi i32 [ 0, %bb.jc ], [ 0, %bb.jb ], [ 516, %bb.ja ], [ 515, %bb.iz ], [ 512, %bb.ix ]
  %.010561442 = phi i32 [ 1048576, %bb.jc ], [ 8388608, %bb.jb ], [ 524288, %bb.ja ], [ 524288, %bb.iz ], [ 262144, %bb.ix ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.aib = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aib, i8 0, i64 40, i1 false)
  store ptr %i.j, ptr %16, align 8, !tbaa !396
  %i.aic = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.010561442, ptr %i.aic, align 8, !tbaa !397
  %i.aid = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %spec.select1180, ptr %i.aid, align 4, !tbaa !398
  %i.aie = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %7, ptr %i.aie, align 8, !tbaa !399
  br i1 %i.cz, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %.thread1438
  %i.aif = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !354
  br label %bb.je

bb.je:                                            ; preds = %.thread1438, %bb.jd
  %i.aih = phi ptr [ %i.aig, %bb.jd ], [ %2, %.thread1438 ] ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.010971611, i64 72 ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.010971611, i64 24 ; 4 uses
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !355 ; 2 uses
  %i.ail = add nsw i32 %i.aik, 1                  ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.010971611, i64 76 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !359 ; 4 uses
  %.not1486 = icmp slt i32 %i.aik, %i.ain
  br i1 %.not1486, label %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge, label %bb.jf

._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge:     ; preds = %bb.je
  %.phi.trans.insert1533 = getelementptr inbounds nuw i8, ptr %.010971611, i64 80
  %.pre1534 = load ptr, ptr %.phi.trans.insert1533, align 8, !tbaa !696
  br label %_ZN8ImVectorIcE6resizeEi.exit1258

bb.jf:                                            ; preds = %bb.je
  %.not.i.i1255 = icmp eq i32 %i.ain, 0
  br i1 %.not.i.i1255, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aio = sdiv i32 %i.ain, 2
  %i.aip = add nsw i32 %i.aio, %i.ain
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256:    ; preds = %bb.jg, %bb.jf
  %i.aiq = phi i32 [ %i.aip, %bb.jg ], [ 8, %bb.jf ]
  %i.air = call noundef i32 @llvm.smax.i32(i32 %i.aiq, i32 %i.ail) ; 2 uses
  %i.ais = sext i32 %i.air to i64
  %i.ait = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ais) #36 ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.010971611, i64 80 ; 3 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !360 ; 2 uses
  %.not6.i.i1257 = icmp eq ptr %i.aiv, null
  br i1 %.not6.i.i1257, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256
  %i.aiw = load i32, ptr %i.aii, align 8, !tbaa !361
  %i.aix = sext i32 %i.aiw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ait, ptr nonnull align 1 %i.aiv, i64 %i.aix, i1 false)
  %i.aiy = load ptr, ptr %i.aiu, align 8, !tbaa !360
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aiy) #36
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256
  store ptr %i.ait, ptr %i.aiu, align 8, !tbaa !360
  store i32 %i.air, ptr %i.aim, align 4, !tbaa !359
  %.pre1535 = load i32, ptr %i.aij, align 8, !tbaa !355
  %.pre1553 = add nsw i32 %.pre1535, 1
  br label %_ZN8ImVectorIcE6resizeEi.exit1258

_ZN8ImVectorIcE6resizeEi.exit1258:                ; preds = %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge, %bb.ji
  %.pre-phi1554 = phi i32 [ %i.ail, %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge ], [ %.pre1553, %bb.ji ]
  %i.aiz = phi ptr [ %.pre1534, %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge ], [ %i.ait, %bb.ji ]
  store i32 %i.ail, ptr %i.aii, align 8, !tbaa !361
  %i.aja = getelementptr inbounds nuw i8, ptr %.010971611, i64 80
  %i.ajb = sext i32 %.pre-phi1554 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aiz, ptr align 1 %i.aih, i64 %i.ajb, i1 false)
  %i.ajc = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %.010551443, ptr %i.ajc, align 4, !tbaa !697
  %i.ajd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store ptr %i.aih, ptr %i.ajd, align 8, !tbaa !400
  %i.aje = load i32, ptr %i.aij, align 8, !tbaa !355
  %i.ajf = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store i32 %i.aje, ptr %i.ajf, align 8, !tbaa !401
  %i.ajg = getelementptr inbounds nuw i8, ptr %.010971611, i64 88
  %i.ajh = load i32, ptr %i.ajg, align 8, !tbaa !388
  %i.aji = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !402
  %i.ajj = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store i8 0, ptr %i.ajj, align 8, !tbaa !403
  %i.ajk = getelementptr inbounds nuw i8, ptr %.010971611, i64 8 ; 4 uses
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !350 ; 3 uses
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !364 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 2 uses
  store i32 %i.ajm, ptr %i.ajn, align 4, !tbaa !404
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !365 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store i32 %i.ajp, ptr %i.ajq, align 8, !tbaa !405
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !366 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %16, i64 60 ; 2 uses
  store i32 %i.ajs, ptr %i.ajt, align 4, !tbaa !406
  %i.aju = call noundef i32 %6(ptr noundef nonnull %16) #36 ; 0 uses
  %i.ajv = load i8, ptr %i.ajj, align 8, !tbaa !403, !range !187, !noundef !188
  %i.ajw = trunc nuw i8 %i.ajv to i1              ; 4 uses
  %i.ajx = load i32, ptr %i.ajn, align 4, !tbaa !404 ; 3 uses
  %i.ajy = icmp ne i32 %i.ajx, %i.ajm
  %or.cond120 = or i1 %i.ajy, %i.ajw
  br i1 %or.cond120, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1258
  %i.ajz = load ptr, ptr %i.ajk, align 8, !tbaa !350
  store i32 %i.ajx, ptr %i.ajz, align 4, !tbaa !364
  %i.aka = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.aka, align 8, !tbaa !392
  br label %bb.jk

bb.jk:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1258, %bb.jj
  %i.akb = load i32, ptr %i.ajq, align 8, !tbaa !405 ; 4 uses
  %i.akc = icmp ne i32 %i.akb, %i.ajp
  %or.cond123 = or i1 %i.akc, %i.ajw
  br i1 %or.cond123, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %bb.jk
  %i.akd = icmp eq i32 %i.akb, %i.ajx
  %.pre1536 = load ptr, ptr %i.ajk, align 8, !tbaa !350 ; 2 uses
  br i1 %i.akd, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.ake = load i32, ptr %.pre1536, align 4, !tbaa !364
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jl, %bb.jm
  %i.akf = phi i32 [ %i.ake, %bb.jm ], [ %i.akb, %bb.jl ]
  %i.akg = getelementptr inbounds nuw i8, ptr %.pre1536, i64 4
  store i32 %i.akf, ptr %i.akg, align 4, !tbaa !365
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jk, %bb.jn
  %i.akh = load i32, ptr %i.ajt, align 4, !tbaa !406 ; 3 uses
  %i.aki = icmp ne i32 %i.akh, %i.ajs
  %or.cond126 = or i1 %i.aki, %i.ajw
  br i1 %or.cond126, label %bb.jp, label %.thread1444

bb.jp:                                            ; preds = %bb.jo
  %i.akj = icmp eq i32 %i.akh, %i.akb
  %.pre1537 = load ptr, ptr %i.ajk, align 8, !tbaa !350 ; 2 uses
  br i1 %i.akj, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.akk = getelementptr inbounds nuw i8, ptr %.pre1537, i64 4
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !365
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.akm = phi i32 [ %i.akl, %bb.jq ], [ %i.akh, %bb.jp ]
  %i.akn = getelementptr inbounds nuw i8, ptr %.pre1537, i64 8
  store i32 %i.akm, ptr %i.akn, align 4, !tbaa !366
  br i1 %i.ajw, label %bb.js, label %.thread1444

bb.js:                                            ; preds = %bb.jr
  %i.ako = load ptr, ptr %i.aja, align 8, !tbaa !696
  %i.akp = load i32, ptr %i.aii, align 8, !tbaa !698
  %i.akq = add nsw i32 %i.akp, -1
  %i.akr = load ptr, ptr %i.ajd, align 8, !tbaa !400
  %i.aks = load i32, ptr %i.ajf, align 8, !tbaa !401
  call fastcc void @_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i(ptr noundef nonnull %.010971611, ptr noundef %i.ako, i32 noundef %i.akq, ptr noundef %i.akr, i32 noundef %i.aks)
  %i.akt = load i32, ptr %i.ajf, align 8, !tbaa !401
  store i32 %i.akt, ptr %i.aij, align 8, !tbaa !355
  %i.aku = getelementptr inbounds nuw i8, ptr %.010971611, i64 100
  store float -3.000000e-01, ptr %i.aku, align 4, !tbaa !367
  br label %.thread1444

.thread1444:                                      ; preds = %bb.jo, %bb.js, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jc, %.thread1444, %.thread1653
  br i1 %i.cz, label %.thread1646, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.akv = getelementptr inbounds nuw i8, ptr %.010971611, i64 32
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !373 ; 2 uses
  %i.akx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.akw, ptr noundef nonnull dereferenceable(1) %2) #35
  %.not1162 = icmp eq i32 %i.akx, 0
  br i1 %.not1162, label %.thread1646, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aky = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.akz = load i32, ptr %i.aky, align 8, !tbaa !355
  br label %.thread1646

.thread1646:                                      ; preds = %bb.eu, %bb.jt, %bb.ju, %bb.jv, %bb.io
  %.210741643 = phi i1 [ %.11073, %bb.io ], [ %.2107416441660, %bb.jt ], [ %.2107416441660, %bb.jv ], [ %.2107416441660, %bb.ju ], [ false, %bb.eu ]
  %.110811641 = phi i8 [ %30, %bb.io ], [ %.1108116421661, %bb.jt ], [ %.1108116421661, %bb.jv ], [ %.1108116421661, %bb.ju ], [ %26, %bb.eu ] ; 2 uses
  %.110831639 = phi i1 [ %.01082.shrunk, %bb.io ], [ %.1108316401662, %bb.jt ], [ %.1108316401662, %bb.jv ], [ %.1108316401662, %bb.ju ], [ %i.ny, %bb.eu ] ; 7 uses
  %.110871637 = phi float [ %.01086, %bb.io ], [ %.1108716381663, %bb.jt ], [ %.1108716381663, %bb.jv ], [ %.1108716381663, %bb.ju ], [ %i.ek, %bb.eu ] ; 3 uses
  %.310961635 = phi i8 [ %.21095, %bb.io ], [ %.3109616361664, %bb.jt ], [ %.3109616361664, %bb.jv ], [ %.3109616361664, %bb.ju ], [ %.01093, %bb.eu ]
  %.21077 = phi i1 [ false, %bb.io ], [ %.01075, %bb.jt ], [ true, %bb.jv ], [ %.01075, %bb.ju ], [ false, %bb.eu ] ; 4 uses
  %.21064 = phi ptr [ null, %bb.io ], [ %.01062, %bb.jt ], [ %i.akw, %bb.jv ], [ %.01062, %bb.ju ], [ null, %bb.eu ] ; 4 uses
  %.21059 = phi i32 [ 0, %bb.io ], [ %.01057, %bb.jt ], [ %i.akz, %bb.jv ], [ %.01057, %bb.ju ], [ 0, %bb.eu ] ; 4 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.j, i64 9336 ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !407
  %i.alc = icmp eq i32 %i.alb, %i.t
  br i1 %i.alc, label %bb.jw, label %bb.kb

bb.jw:                                            ; preds = %.thread1646
  %i.ald = load i32, ptr %i.df, align 4, !tbaa !220
  %.not1163 = icmp eq i32 %i.ald, %i.t
  br i1 %.not1163, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ale = call noundef zeroext i1 @_ZN5ImGui26IsItemDeactivatedAfterEditEv() #36
  %.not127 = xor i1 %i.ale, true
  %or.cond130 = or i1 %i.cz, %.not127
  br i1 %or.cond130, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.alf = getelementptr inbounds nuw i8, ptr %i.j, i64 9352
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !408 ; 2 uses
  %i.alh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.alg, ptr noundef nonnull dereferenceable(1) %2) #35
  %.not1164 = icmp eq i32 %i.alh, 0
  br i1 %.not1164, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ali = getelementptr inbounds nuw i8, ptr %i.j, i64 9344
  %i.alj = load i32, ptr %i.ali, align 8, !tbaa !699
  %i.alk = add nsw i32 %i.alj, -1
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jw
  %.31078 = phi i1 [ %.21077, %bb.jx ], [ true, %bb.jz ], [ %.21077, %bb.jy ], [ %.21077, %bb.jw ]
  %.31065 = phi ptr [ %.21064, %bb.jx ], [ %i.alg, %bb.jz ], [ %.21064, %bb.jy ], [ %.21064, %bb.jw ]
  %.31060 = phi i32 [ %.21059, %bb.jx ], [ %i.alk, %bb.jz ], [ %.21059, %bb.jy ], [ %.21059, %bb.jw ]
  store i32 0, ptr %i.ala, align 8, !tbaa !407
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %.thread1646
  %.41079 = phi i1 [ %.31078, %bb.ka ], [ %.21077, %.thread1646 ] ; 2 uses
  %.41066 = phi ptr [ %.31065, %bb.ka ], [ %.21064, %.thread1646 ] ; 2 uses
  %.41061 = phi i32 [ %.31060, %bb.ka ], [ %.21059, %.thread1646 ] ; 3 uses
  %.not1165 = icmp eq ptr %.41066, null
  br i1 %.not1165, label %bb.kf, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  br i1 %.not1129, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.all = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.all, i8 0, i64 40, i1 false)
  store ptr %i.j, ptr %17, align 8, !tbaa !396
  %i.alm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 4194304, ptr %i.alm, align 8, !tbaa !397
  %i.aln = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %spec.select1180, ptr %i.aln, align 4, !tbaa !398
  %i.alo = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %2, ptr %i.alo, align 8, !tbaa !400
  %i.alp = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store i32 %.41061, ptr %i.alp, align 8, !tbaa !401
  %i.alq = add nsw i32 %.41061, 1
  %i.alr = call noundef i32 @llvm.smax.i32(i32 %3, i32 %i.alq)
  %i.als = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 2 uses
  store i32 %i.alr, ptr %i.als, align 4, !tbaa !402
  %i.alt = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %7, ptr %i.alt, align 8, !tbaa !399
  %i.alu = call noundef i32 %6(ptr noundef nonnull %17) #36 ; 0 uses
  %i.alv = load ptr, ptr %i.alo, align 8, !tbaa !400
  %i.alw = load i32, ptr %i.als, align 4, !tbaa !402 ; 2 uses
  %i.alx = load i32, ptr %i.alp, align 8, !tbaa !401
  %i.aly = add nsw i32 %i.alw, -1
  %i.alz = call noundef i32 @llvm.smin.i32(i32 %i.alx, i32 %i.aly)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.5 = phi i32 [ %i.alz, %bb.kd ], [ %.41061, %bb.kc ]
  %.01039 = phi i32 [ %i.alw, %bb.kd ], [ %3, %bb.kc ]
  %.01037 = phi ptr [ %i.alv, %bb.kd ], [ %2, %bb.kc ] ; 2 uses
  %i.ama = add nsw i32 %.5, 1
  %i.amb = call noundef i32 @llvm.smin.i32(i32 %i.ama, i32 %.01039)
  %i.amc = sext i32 %i.amb to i64
  call void @_Z9ImStrncpyPcPKcm(ptr noundef %.01037, ptr noundef nonnull %.41066, i64 noundef %i.amc) #36
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kb
  %.11038 = phi ptr [ %.01037, %bb.ke ], [ %2, %bb.kb ] ; 2 uses
  %i.amd = load i32, ptr %i.df, align 4, !tbaa !220
  %i.ame = icmp eq i32 %i.amd, %i.t
  %i.amf = trunc nuw i8 %.310961635 to i1
  %or.cond133 = select i1 %i.ame, i1 %i.amf, i1 false
  br i1 %or.cond133, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  br i1 %i.s, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.t, i32 noundef 0) #36
  %.sroa.0240.0.copyload = load <2 x float>, ptr %11, align 8
  %.sroa.0239.0.copyload = load <2 x float>, ptr %i.ao, align 8
  %i.amg = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00) #36
  %i.amh = getelementptr inbounds nuw i8, ptr %i.j, i64 3220
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !235
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.0240.0.copyload, <2 x float> %.sroa.0239.0.copyload, i32 noundef %i.amg, i1 noundef zeroext true, float noundef %i.ami) #36
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.amj = load <2 x float>, ptr %11, align 8, !tbaa !193 ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  store <2 x float> %i.amj, ptr %18, align 16, !tbaa !193
  %i.aml = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.amn = insertelement <2 x float> %i.ae, float %.sroa.0660.2, i64 0
  %i.amo = fadd <2 x float> %i.amn, %i.amj
  store <2 x float> %i.amo, ptr %i.aml, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  br i1 %i.s, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.amp = getelementptr inbounds nuw i8, ptr %.21101, i64 280
  %i.amq = load i64, ptr %i.amp, align 8
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.amr = load <2 x float>, ptr %i.aa, align 4, !tbaa !193
  %i.ams = fadd <2 x float> %i.amj, %i.amr
  %i.amt = bitcast <2 x float> %i.ams to i64
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %storemerge = phi i64 [ %i.amq, %bb.kk ], [ %i.amt, %bb.kl ] ; 3 uses
  store i64 %storemerge, ptr %19, align 8
  %i.amu = trunc i64 %storemerge to i32
  %i.amv = bitcast i32 %i.amu to float            ; 3 uses
  %i.amw = lshr i64 %storemerge, 32
  %i.amx = trunc nuw i64 %i.amw to i32
  %i.amy = bitcast i32 %i.amx to float
  br i1 %i.og, label %bb.kn, label %.thread1445

bb.kn:                                            ; preds = %bb.km
  %i.amz = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !354 ; 2 uses
  br i1 %.not1141, label %.thr_comm1447, label %.thread1446

.thread1445:                                      ; preds = %bb.km
  br i1 %.not1141, label %.thr_comm1447, label %.thread1446

.thr_comm1447:                                    ; preds = %.thread1445, %bb.kn
  %.ph1448 = phi ptr [ %.11038, %.thread1445 ], [ %i.ana, %bb.kn ] ; 2 uses
  br i1 %i.om, label %bb.ko, label %.thread1665

.thread1446:                                      ; preds = %bb.kn, %.thread1445
  %i.anb = phi ptr [ %.11038, %.thread1445 ], [ %i.ana, %bb.kn ] ; 3 uses
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !330
  %i.and = icmp eq i8 %i.anc, 0                   ; 2 uses
  %i.ane = xor i1 %i.om, %i.and
  br i1 %i.ane, label %bb.ko, label %bb.kr

bb.ko:                                            ; preds = %.thr_comm1447, %.thread1446
  %i.anf = phi i1 [ false, %.thr_comm1447 ], [ %i.and, %.thread1446 ] ; 2 uses
  %i.ang = phi ptr [ %.ph1448, %.thr_comm1447 ], [ %i.anb, %.thread1446 ] ; 2 uses
  br i1 %or.cond38, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.anh = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 9360 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anh, i64 9464
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !379
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anh, i64 4384
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !374
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  store i32 %i.ank, ptr %i.ann, align 8, !tbaa !378
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anh, i64 9424
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !380
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anh, i64 4392
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !295 ; 7 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 64
  store i32 %i.anp, ptr %i.ans, align 8, !tbaa !380
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anh, i64 9376
  %i.anu = load float, ptr %i.ant, align 8, !tbaa !381
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 16
  store float %i.anu, ptr %i.anv, align 8, !tbaa !381
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anr, i64 32 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anh, i64 9392 ; 2 uses
  %i.any = load <2 x i32>, ptr %i.anx, align 8, !tbaa !211
  %i.anz = load <2 x i32>, ptr %i.anw, align 8, !tbaa !211
  store <2 x i32> %i.anz, ptr %i.anx, align 8, !tbaa !211
  store <2 x i32> %i.any, ptr %i.anw, align 8, !tbaa !211
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anh, i64 9400 ; 2 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !382
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anr, i64 40 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !382
  store ptr %i.aod, ptr %i.aoa, align 8, !tbaa !382
  store ptr %i.aob, ptr %i.aoc, align 8, !tbaa !382
  %i.aoe = load <2 x i32>, ptr %i.ani, align 8, !tbaa !211
  %i.aof = load <2 x i32>, ptr %i.anr, align 8, !tbaa !211
  store <2 x i32> %i.aof, ptr %i.ani, align 8, !tbaa !211
  store <2 x i32> %i.aoe, ptr %i.anr, align 8, !tbaa !211
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anh, i64 9368 ; 2 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !383
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anr, i64 8 ; 2 uses
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !383
  store ptr %i.aoj, ptr %i.aog, align 8, !tbaa !383
  store ptr %i.aoh, ptr %i.aoi, align 8, !tbaa !383
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %or.cond141 = or i1 %i.db, %i.anf
  br i1 %or.cond141, label %bb.kr, label %.split

.split:                                           ; preds = %bb.kq
  %i.aok = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 9360 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aok, i64 4392 ; 2 uses
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !295
  %i.aoo = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.aon, i16 noundef zeroext 42) #36 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aok, i64 4384
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !374
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16 ; 2 uses
  %i.aos = load i32, ptr %i.aor, align 8, !tbaa !378 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aok, i64 9464
  store i32 %i.aos, ptr %i.aot, align 8, !tbaa !379
  %i.aou = load ptr, ptr %i.aom, align 8, !tbaa !295 ; 8 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 64 ; 2 uses
  %i.aow = load i32, ptr %i.aov, align 8, !tbaa !380
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aok, i64 9424
  store i32 %i.aow, ptr %i.aox, align 8, !tbaa !380
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aou, i64 16 ; 2 uses
  %i.aoz = load float, ptr %i.aoy, align 8, !tbaa !381
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aok, i64 9376
  store float %i.aoz, ptr %i.apa, align 8, !tbaa !381
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aok, i64 9392 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aou, i64 32 ; 2 uses
  %i.apd = load <2 x i32>, ptr %i.apc, align 8, !tbaa !211
  %i.ape = load <2 x i32>, ptr %i.apb, align 8, !tbaa !211
  store <2 x i32> %i.ape, ptr %i.apc, align 8, !tbaa !211
  store <2 x i32> %i.apd, ptr %i.apb, align 8, !tbaa !211
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aou, i64 40 ; 2 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !382
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aok, i64 9400 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !382
  store ptr %i.api, ptr %i.apf, align 8, !tbaa !382
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !382
  %i.apj = load <2 x i32>, ptr %i.aou, align 8, !tbaa !211
  %i.apk = load <2 x i32>, ptr %i.aol, align 8, !tbaa !211
  store <2 x i32> %i.apk, ptr %i.aou, align 8, !tbaa !211
  store <2 x i32> %i.apj, ptr %i.aol, align 8, !tbaa !211
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aou, i64 8 ; 2 uses
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !383
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aok, i64 9368 ; 2 uses
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !383
  store ptr %i.apo, ptr %i.apl, align 8, !tbaa !383
  store ptr %i.apm, ptr %i.apn, align 8, !tbaa !383
  %i.app = or i32 %i.aos, 4
  store i32 %i.app, ptr %i.aor, align 8, !tbaa !378
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aou, i64 56
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !384
  %i.aps = ptrtoint ptr %i.aoo to i64
  %i.apt = ptrtoint ptr %i.apr to i64
  %i.apu = sub i64 %i.aps, %i.apt
  %i.apv = sdiv exact i64 %i.apu, 44
  %i.apw = trunc i64 %i.apv to i32
  store i32 %i.apw, ptr %i.aov, align 8, !tbaa !380
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aoo, i64 4
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !386
  store float %i.apy, ptr %i.aoy, align 8, !tbaa !381
  br label %.thread1665

bb.kr:                                            ; preds = %bb.kq, %.thread1446
  %i.apz = phi ptr [ %i.ang, %bb.kq ], [ %i.anb, %.thread1446 ]
  %.01071.in = phi i1 [ %i.anf, %bb.kq ], [ %i.om, %.thread1446 ]
  br i1 %.01071.in, label %.thread1668, label %.thread1665

.thread1665:                                      ; preds = %.thr_comm1447, %.split, %bb.kr
  %.01054 = phi ptr [ %i.ang, %.split ], [ %i.apz, %bb.kr ], [ %.ph1448, %.thr_comm1447 ] ; 8 uses
  %31 = trunc nuw i8 %.110811641 to i1            ; 2 uses
  %or.cond144 = select i1 %.110831639, i1 true, i1 %31
  br i1 %or.cond144, label %bb.ks, label %.thread1696

.thread1668:                                      ; preds = %bb.kr
  %i.aqa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.aqb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqa ; 2 uses
  %32 = trunc nuw i8 %.110811641 to i1            ; 2 uses
  %or.cond1441673 = select i1 %.110831639, i1 true, i1 %32
  br i1 %or.cond1441673, label %._crit_edge1540, label %bb.mz

._crit_edge1540:                                  ; preds = %.thread1668
  %.phi.trans.insert1541 = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %.pre1542 = load i32, ptr %.phi.trans.insert1541, align 8, !tbaa !355
  %.pre1550 = sext i32 %.pre1542 to i64
  br label %bb.kt

bb.ks:                                            ; preds = %.thread1665
  %i.aqc = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.aqd = load i32, ptr %i.aqc, align 8, !tbaa !355
  %i.aqe = sext i32 %i.aqd to i64                 ; 2 uses
  %i.aqf = getelementptr inbounds i8, ptr %.01054, i64 %i.aqe
  br label %bb.kt

bb.kt:                                            ; preds = %._crit_edge1540, %bb.ks
  %.01071.in145016771692 = phi i1 [ true, %._crit_edge1540 ], [ false, %bb.ks ] ; 3 uses
  %.0105416811689 = phi ptr [ %1, %._crit_edge1540 ], [ %.01054, %bb.ks ] ; 12 uses
  %33 = phi i1 [ %32, %._crit_edge1540 ], [ %31, %bb.ks ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre1550, %._crit_edge1540 ], [ %i.aqe, %bb.ks ] ; 2 uses
  %.1 = phi ptr [ %i.aqb, %._crit_edge1540 ], [ %i.aqf, %bb.ks ] ; 4 uses
  %i.aqg = getelementptr inbounds i8, ptr %.0105416811689, i64 %.pre-phi
  %i.aqh = select i1 %.110831639, i32 -1, i32 -1000 ; 3 uses
  %i.aqi = select i1 %33, i32 -1, i32 -1000       ; 3 uses
  br i1 %.110831639, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.aqj = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !350
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !364
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.aqm
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kt, %bb.ku
  %i.aqo = phi ptr [ %i.aqn, %bb.ku ], [ null, %bb.kt ] ; 5 uses
  br i1 %33, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.aqp = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !350 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 4
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !365
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !366
  %i.aqv = call noundef i32 @llvm.smin.i32(i32 %i.aqs, i32 %i.aqu)
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.aqw
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kv, %bb.kw
  %i.aqy = phi ptr [ %i.aqx, %bb.kw ], [ null, %bb.kv ] ; 5 uses
  br i1 %i.s, label %.preheader, label %.loopexit1487

.preheader:                                       ; preds = %bb.kx
  %i.aqz = ptrtoint ptr %i.aqg to i64
  %i.ara = call noundef ptr @memchr(ptr noundef %.0105416811689, i32 noundef 10, i64 noundef %.pre-phi) #35 ; 2 uses
  %.not11681501 = icmp eq ptr %i.ara, null
  br i1 %.not11681501, label %.loopexit1487, label %.lr.ph1505

.lr.ph1505:                                       ; preds = %.preheader, %.lr.ph1505
  %i.arb = phi ptr [ %i.ari, %.lr.ph1505 ], [ %i.ara, %.preheader ] ; 3 uses
  %.010441504 = phi i32 [ %i.are, %.lr.ph1505 ], [ 1, %.preheader ] ; 3 uses
  %.010461503 = phi i32 [ %.11047, %.lr.ph1505 ], [ %i.aqi, %.preheader ] ; 2 uses
  %.010501502 = phi i32 [ %.11051, %.lr.ph1505 ], [ %i.aqh, %.preheader ] ; 2 uses
  %i.arc = icmp eq i32 %.010501502, -1
  %.not1173 = icmp ult ptr %i.arb, %i.aqo
  %spec.select1217 = select i1 %.not1173, i32 -1, i32 %.010441504
  %.11051 = select i1 %i.arc, i32 %spec.select1217, i32 %.010501502 ; 2 uses
  %i.ard = icmp eq i32 %.010461503, -1
  %.not1174 = icmp ult ptr %i.arb, %i.aqy
  %spec.select1218 = select i1 %.not1174, i32 -1, i32 %.010441504
  %.11047 = select i1 %i.ard, i32 %spec.select1218, i32 %.010461503 ; 2 uses
  %i.are = add nuw nsw i32 %.010441504, 1         ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 1 ; 2 uses
  %i.arg = ptrtoint ptr %i.arf to i64
  %i.arh = sub i64 %i.aqz, %i.arg
  %i.ari = call noundef ptr @memchr(ptr noundef nonnull %i.arf, i32 noundef 10, i64 noundef %i.arh) #35 ; 2 uses
  %.not1168 = icmp eq ptr %i.ari, null
  br i1 %.not1168, label %.loopexit1487, label %.lr.ph1505, !llvm.loop !664

.loopexit1487:                                    ; preds = %.lr.ph1505, %.preheader, %bb.kx
  %.21052 = phi i32 [ %i.aqh, %bb.kx ], [ %i.aqh, %.preheader ], [ %.11051, %.lr.ph1505 ] ; 2 uses
  %.21048 = phi i32 [ %i.aqi, %bb.kx ], [ %i.aqi, %.preheader ], [ %.11047, %.lr.ph1505 ] ; 2 uses
  %.11045 = phi i32 [ 1, %bb.kx ], [ 1, %.preheader ], [ %i.are, %.lr.ph1505 ] ; 3 uses
  %i.arj = icmp eq i32 %.21052, -1
  %spec.select1219 = select i1 %i.arj, i32 %.11045, i32 %.21052
  %i.ark = icmp eq i32 %.21048, -1
  %.31049 = select i1 %i.ark, i32 %.11045, i32 %.21048 ; 2 uses
  %i.arl = call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.aqo, ptr noundef %.0105416811689) #36 ; 2 uses
  %i.arm = getelementptr i8, ptr %i.j, i64 4392   ; 4 uses
  %.val1230 = load ptr, ptr %i.arm, align 8, !tbaa !295 ; 2 uses
  %i.arn = getelementptr i8, ptr %i.j, i64 4400   ; 10 uses
  %.val1231 = load float, ptr %i.arn, align 8, !tbaa !208 ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.val1230, i64 20
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !409
  %i.arq = fdiv float %.val1231, %i.arp
  %i.arr = icmp ult ptr %i.arl, %i.aqo
  br i1 %i.arr, label %.lr.ph.split.i, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit

.lr.ph.split.i:                                   ; preds = %.loopexit1487, %bb.ld
  %.03224.i = phi ptr [ %.1.i, %bb.ld ], [ %i.arl, %.loopexit1487 ] ; 4 uses
  %.03323.i = phi float [ %.134.i, %bb.ld ], [ 0.000000e+00, %.loopexit1487 ] ; 4 uses
  %.sroa.0.022.i = phi <2 x float> [ %.sroa.0.1.i, %bb.ld ], [ zeroinitializer, %.loopexit1487 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ars = load i8, ptr %.03224.i, align 1, !tbaa !330 ; 2 uses
  %i.art = sext i8 %i.ars to i32                  ; 2 uses
  store i32 %i.art, ptr %i.c, align 4, !tbaa !211
  %i.aru = icmp sgt i8 %i.ars, -1
  br i1 %i.aru, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %.lr.ph.split.i
  %i.arv = getelementptr inbounds nuw i8, ptr %.03224.i, i64 1
  br label %bb.la

bb.kz:                                            ; preds = %.lr.ph.split.i
  %i.arw = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %.03224.i, ptr noundef nonnull %i.aqo) #36
  %i.arx = sext i32 %i.arw to i64
  %i.ary = getelementptr inbounds i8, ptr %.03224.i, i64 %i.arx
  %.pr.i = load i32, ptr %i.c, align 4, !tbaa !211
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %i.arz = phi i32 [ %.pr.i, %bb.kz ], [ %i.art, %bb.ky ] ; 2 uses
  %.1.i = phi ptr [ %i.ary, %bb.kz ], [ %i.arv, %bb.ky ] ; 2 uses
  switch i32 %i.arz, label %bb.lc [
    i32 10, label %bb.lb
    i32 13, label %bb.ld
  ], !llvm.loop !12

bb.lb:                                            ; preds = %bb.la
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.022.i, i64 0 ; 2 uses
  %i.asa = fcmp oge float %.sroa.0.0.vec.extract.i, %.03323.i
  %i.asb = select i1 %i.asa, float %.sroa.0.0.vec.extract.i, float %.03323.i
  %.sroa.0.0.vec.insert.i1263 = insertelement <2 x float> poison, float %i.asb, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.022.i, i64 1
  %i.asc = fadd float %.val1231, %.sroa.0.4.vec.extract.i
  %.sroa.0.4.vec.insert.i1264 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1263, float %i.asc, i64 1
  br label %bb.ld

bb.lc:                                            ; preds = %bb.la
  %i.asd = trunc i32 %i.arz to i16
  %i.ase = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %.val1230, i16 noundef zeroext %i.asd) #36
  %i.asf = call float @llvm.fmuladd.f32(float %i.ase, float %i.arq, float %.03323.i)
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb, %bb.la
  %.sroa.0.1.i = phi <2 x float> [ %.sroa.0.022.i, %bb.lc ], [ %.sroa.0.4.vec.insert.i1264, %bb.lb ], [ %.sroa.0.022.i, %bb.la ] ; 2 uses
  %.134.i = phi float [ %i.asf, %bb.lc ], [ 0.000000e+00, %bb.lb ], [ %.03323.i, %bb.la ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.asg = icmp ult ptr %.1.i, %i.aqo
  br i1 %i.asg, label %.lr.ph.split.i, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit.loopexit

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit.loopexit: ; preds = %bb.ld
  %.pre1543 = load float, ptr %i.arn, align 8, !tbaa !208
  br label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit: ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit.loopexit, %.loopexit1487
  %i.ash = phi float [ %.val1231, %.loopexit1487 ], [ %.pre1543, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit.loopexit ] ; 2 uses
  %.sroa.0.2.i = phi <2 x float> [ zeroinitializer, %.loopexit1487 ], [ %.sroa.0.1.i, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit.loopexit ]
  %.235.i = phi float [ 0.000000e+00, %.loopexit1487 ], [ %.134.i, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit.loopexit ] ; 2 uses
  %.sroa.0.0.vec.extract4.i = extractelement <2 x float> %.sroa.0.2.i, i64 0 ; 2 uses
  %i.asi = fcmp olt float %.sroa.0.0.vec.extract4.i, %.235.i
  %.sroa.0191.0.vec.extract = select i1 %i.asi, float %.235.i, float %.sroa.0.0.vec.extract4.i ; 4 uses
  %i.asj = sitofp i32 %spec.select1219 to float
  %i.ask = fmul float %i.ash, %i.asj              ; 4 uses
  %i.asl = icmp sgt i32 %.31049, -1
  br i1 %i.asl, label %bb.le, label %bb.ll

bb.le:                                            ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit
  %i.asm = call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.aqy, ptr noundef %.0105416811689) #36 ; 2 uses
  %.val1228 = load ptr, ptr %i.arm, align 8, !tbaa !295 ; 2 uses
  %.val1229 = load float, ptr %i.arn, align 8, !tbaa !208 ; 3 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.val1228, i64 20
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !409
  %i.asp = fdiv float %.val1229, %i.aso
  %i.asq = icmp ult ptr %i.asm, %i.aqy
  br i1 %i.asq, label %.lr.ph.split.i1276, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288

.lr.ph.split.i1276:                               ; preds = %bb.le, %bb.lk
  %.03224.i1277 = phi ptr [ %.1.i1281, %bb.lk ], [ %i.asm, %bb.le ] ; 4 uses
  %.03323.i1278 = phi float [ %.134.i1283, %bb.lk ], [ 0.000000e+00, %bb.le ] ; 4 uses
  %.sroa.0.022.i1279 = phi <2 x float> [ %.sroa.0.1.i1282, %bb.lk ], [ zeroinitializer, %bb.le ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.asr = load i8, ptr %.03224.i1277, align 1, !tbaa !330 ; 2 uses
  %i.ass = sext i8 %i.asr to i32                  ; 2 uses
  store i32 %i.ass, ptr %i.b, align 4, !tbaa !211
  %i.ast = icmp sgt i8 %i.asr, -1
  br i1 %i.ast, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %.lr.ph.split.i1276
  %i.asu = getelementptr inbounds nuw i8, ptr %.03224.i1277, i64 1
  br label %bb.lh

bb.lg:                                            ; preds = %.lr.ph.split.i1276
  %i.asv = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.b, ptr noundef nonnull %.03224.i1277, ptr noundef nonnull %i.aqy) #36
  %i.asw = sext i32 %i.asv to i64
  %i.asx = getelementptr inbounds i8, ptr %.03224.i1277, i64 %i.asw
  %.pr.i1280 = load i32, ptr %i.b, align 4, !tbaa !211
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.asy = phi i32 [ %.pr.i1280, %bb.lg ], [ %i.ass, %bb.lf ] ; 2 uses
  %.1.i1281 = phi ptr [ %i.asx, %bb.lg ], [ %i.asu, %bb.lf ] ; 2 uses
  switch i32 %i.asy, label %bb.lj [
    i32 10, label %bb.li
    i32 13, label %bb.lk
  ], !llvm.loop !12

bb.li:                                            ; preds = %bb.lh
  %.sroa.0.0.vec.extract.i1284 = extractelement <2 x float> %.sroa.0.022.i1279, i64 0 ; 2 uses
  %i.asz = fcmp oge float %.sroa.0.0.vec.extract.i1284, %.03323.i1278
  %i.ata = select i1 %i.asz, float %.sroa.0.0.vec.extract.i1284, float %.03323.i1278
  %.sroa.0.0.vec.insert.i1285 = insertelement <2 x float> poison, float %i.ata, i64 0
  %.sroa.0.4.vec.extract.i1286 = extractelement <2 x float> %.sroa.0.022.i1279, i64 1
  %i.atb = fadd float %.val1229, %.sroa.0.4.vec.extract.i1286
  %.sroa.0.4.vec.insert.i1287 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1285, float %i.atb, i64 1
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lh
  %i.atc = trunc i32 %i.asy to i16
  %i.atd = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %.val1228, i16 noundef zeroext %i.atc) #36
  %i.ate = call float @llvm.fmuladd.f32(float %i.atd, float %i.asp, float %.03323.i1278)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li, %bb.lh
  %.sroa.0.1.i1282 = phi <2 x float> [ %.sroa.0.022.i1279, %bb.lj ], [ %.sroa.0.4.vec.insert.i1287, %bb.li ], [ %.sroa.0.022.i1279, %bb.lh ] ; 2 uses
  %.134.i1283 = phi float [ %i.ate, %bb.lj ], [ 0.000000e+00, %bb.li ], [ %.03323.i1278, %bb.lh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.atf = icmp ult ptr %.1.i1281, %i.aqy
  br i1 %i.atf, label %.lr.ph.split.i1276, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit: ; preds = %bb.lk
  %.pre1544 = load float, ptr %i.arn, align 8, !tbaa !208
  br label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288: ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit, %bb.le
  %i.atg = phi float [ %.val1229, %bb.le ], [ %.pre1544, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit ] ; 2 uses
  %.sroa.0.2.i1265 = phi <2 x float> [ zeroinitializer, %bb.le ], [ %.sroa.0.1.i1282, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit ]
  %.235.i1266 = phi float [ 0.000000e+00, %bb.le ], [ %.134.i1283, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit ] ; 2 uses
  %.sroa.0.0.vec.extract4.i1268 = extractelement <2 x float> %.sroa.0.2.i1265, i64 0 ; 2 uses
  %i.ath = fcmp olt float %.sroa.0.0.vec.extract4.i1268, %.235.i1266
  %.sroa.0190.0.vec.extract = select i1 %i.ath, float %.235.i1266, float %.sroa.0.0.vec.extract4.i1268
  %i.ati = uitofp nneg i32 %.31049 to float
  %i.atj = fmul float %i.atg, %i.ati
  %i.atk = insertelement <2 x float> poison, float %.sroa.0190.0.vec.extract, i64 0
  %i.atl = insertelement <2 x float> %i.atk, float %i.atj, i64 1
  br label %bb.ll

bb.ll:                                            ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit
  %i.atm = phi float [ %i.atg, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288 ], [ %i.ash, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit ] ; 2 uses
  %i.atn = phi <2 x float> [ %i.atl, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288 ], [ zeroinitializer, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit ]
  %i.ato = uitofp nneg i32 %.11045 to float
  %i.atp = fmul float %i.atm, %i.ato
  %.sroa.61384.0 = select i1 %i.s, float %i.atp, float 0.000000e+00 ; 3 uses
  br i1 %.110831639, label %bb.lm, label %bb.ma

bb.lm:                                            ; preds = %bb.ll
  %i.atq = getelementptr inbounds nuw i8, ptr %.010971611, i64 104 ; 2 uses
  %i.atr = load i8, ptr %i.atq, align 8, !tbaa !392, !range !187, !noundef !188
  %i.ats = trunc nuw i8 %i.atr to i1
  br i1 %i.ats, label %bb.ln, label %bb.ma

bb.ln:                                            ; preds = %bb.lm
  %i.att = and i32 %5, 32768
  %.not1169 = icmp eq i32 %i.att, 0
  br i1 %.not1169, label %bb.lo, label %bb.ls

bb.lo:                                            ; preds = %bb.ln
  %i.atu = fmul float %.sroa.0660.2, 2.500000e-01 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %.010971611, i64 92 ; 3 uses
  %i.atw = load float, ptr %i.atv, align 4, !tbaa !672 ; 2 uses
  %i.atx = fcmp olt float %.sroa.0191.0.vec.extract, %i.atw
  br i1 %i.atx, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.aty = fsub float %.sroa.0191.0.vec.extract, %i.atu ; 2 uses
  %i.atz = fcmp ole float %i.aty, 0.000000e+00
  %i.aua = select i1 %i.atz, float 0.000000e+00, float %i.aty
  %i.aub = fptosi float %i.aua to i32
  %i.auc = sitofp i32 %i.aub to float
  store float %i.auc, ptr %i.atv, align 4, !tbaa !672
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lo
  %i.aud = load float, ptr %i.aa, align 4, !tbaa !209
  %i.aue = fsub float %.sroa.0660.2, %i.aud
  %i.auf = fsub float %.sroa.0191.0.vec.extract, %i.aue ; 2 uses
  %i.aug = fcmp ult float %i.auf, %i.atw
  br i1 %i.aug, label %bb.lt, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.auh = fadd float %i.atu, %i.auf
  %i.aui = fptosi float %i.auh to i32
  %i.auj = sitofp i32 %i.aui to float
  store float %i.auj, ptr %i.atv, align 4, !tbaa !672
  br label %bb.lt

bb.ls:                                            ; preds = %bb.ln
  %i.auk = getelementptr inbounds nuw i8, ptr %.010971611, i64 96
  store float 0.000000e+00, ptr %i.auk, align 8, !tbaa !681
  br label %bb.lt

bb.lt:                                            ; preds = %bb.lp, %bb.lr, %bb.lq, %bb.ls
  br i1 %i.s, label %bb.lu, label %bb.lz

bb.lu:                                            ; preds = %bb.lt
  %i.aul = fsub float %i.ask, %i.atm              ; 3 uses
  %i.aum = fcmp olt float %i.aul, %.110871637
  br i1 %i.aum, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.aun = fcmp ole float %i.aul, 0.000000e+00
  %i.auo = select i1 %i.aun, float 0.000000e+00, float %i.aul
  %.pre1545 = load float, ptr %i.ab, align 8, !tbaa !206
  br label %bb.ly

bb.lw:                                            ; preds = %bb.lu
  %i.aup = load float, ptr %i.ab, align 8, !tbaa !206 ; 4 uses
  %i.auq = fneg float %i.aup
  %i.aur = call float @llvm.fmuladd.f32(float %i.auq, float 2.000000e+00, float %.sroa.01400.4.vec.extract1408)
  %i.aus = fsub float %i.ask, %i.aur
  %i.aut = fcmp ult float %i.aus, %.110871637
  br i1 %i.aut, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.auu = fsub float %i.ask, %.sroa.01400.4.vec.extract1408
  %i.auv = call float @llvm.fmuladd.f32(float %i.aup, float 2.000000e+00, float %i.auu)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lw, %bb.lx, %bb.lv
  %i.auw = phi float [ %.pre1545, %bb.lv ], [ %i.aup, %bb.lx ], [ %i.aup, %bb.lw ]
  %.21088 = phi float [ %i.auo, %bb.lv ], [ %i.auv, %bb.lx ], [ %.110871637, %bb.lw ] ; 3 uses
  %i.aux = call float @llvm.fmuladd.f32(float %i.auw, float 2.000000e+00, float %.sroa.61384.0)
  %i.auy = fsub float %i.aux, %.sroa.01400.4.vec.extract1408 ; 2 uses
  %i.auz = fcmp oge float %i.auy, 0.000000e+00
  %i.ava = select i1 %i.auz, float %i.auy, float 0.000000e+00 ; 2 uses
  %i.avb = fcmp olt float %.21088, 0.000000e+00
  %i.avc = fcmp ogt float %.21088, %i.ava
  %i.avd = select i1 %i.avc, float %i.ava, float %.21088
  %i.ave = select i1 %i.avb, float 0.000000e+00, float %i.avd ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.21101, i64 156 ; 2 uses
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !670
  %i.avh = fsub float %i.avg, %i.ave
  %i.avi = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !200
  %i.avk = fadd float %i.avj, %i.avh
  store float %i.avk, ptr %i.avi, align 4, !tbaa !200
  store float %i.ave, ptr %i.avf, align 4, !tbaa !670
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lt
  store i8 0, ptr %i.atq, align 8, !tbaa !392
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.lm, %bb.ll
  %i.avl = getelementptr inbounds nuw i8, ptr %.010971611, i64 92
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !672 ; 4 uses
  br i1 %33, label %bb.mb, label %.loopexit

bb.mb:                                            ; preds = %bb.ma
  %i.avn = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !350 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 4
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !365 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !366 ; 2 uses
  %i.avt = call noundef i32 @llvm.smin.i32(i32 %i.avq, i32 %i.avs) ; 2 uses
  %i.avu = call noundef i32 @llvm.smax.i32(i32 %i.avq, i32 %i.avs) ; 2 uses
  %i.avv = sext i32 %i.avu to i64
  %i.avw = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.avv ; 5 uses
  %i.avx = select i1 %.110831639, float 1.000000e+00, float 6.000000e-01
  %i.avy = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 51, float noundef %i.avx) #36
  %i.avz = select i1 %i.s, float 0.000000e+00, float -1.000000e+00
  %i.awa = icmp slt i32 %i.avt, %i.avu
  br i1 %i.awa, label %.lr.ph1511, label %.loopexit

.lr.ph1511:                                       ; preds = %bb.mb
  %i.awb = select i1 %i.s, float 0.000000e+00, float 2.000000e+00
  %i.awc = sext i32 %i.avt to i64
  %i.awd = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.awc
  %i.awe = load <2 x float>, ptr %19, align 8, !tbaa !193
  %i.awf = fadd <2 x float> %i.atn, %i.awe        ; 2 uses
  %i.awg = extractelement <2 x float> %i.awf, i64 0
  %i.awh = fsub float %i.awg, %i.avm
  %i.awi = insertelement <2 x float> %i.awf, float %i.awh, i64 0
  %i.awj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.21101, i64 712
  %i.awl = ptrtoint ptr %i.avw to i64
  %.pre1546 = load float, ptr %i.arn, align 8, !tbaa !208
  %i.awm = insertelement <2 x float> poison, float %i.awb, i64 1
  br label %bb.mc

bb.mc:                                            ; preds = %.lr.ph1511, %bb.mn
  %i.awn = phi float [ %.pre1546, %.lr.ph1511 ], [ %i.ayv, %bb.mn ] ; 4 uses
  %.014121509 = phi ptr [ %i.awd, %.lr.ph1511 ], [ %.11413, %bb.mn ] ; 3 uses
  %.sroa.01351.01508 = phi <2 x float> [ %i.awi, %.lr.ph1511 ], [ %.sroa.01351.4.vec.insert, %bb.mn ] ; 6 uses
  %.sroa.01351.4.vec.extract1357 = extractelement <2 x float> %.sroa.01351.01508, i64 1 ; 4 uses
  %i.awo = load float, ptr %i.amm, align 4, !tbaa !252
  %i.awp = fadd float %i.awo, %i.awn
  %i.awq = fcmp ogt float %.sroa.01351.4.vec.extract1357, %i.awp
  br i1 %i.awq, label %.loopexit, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.awr = load float, ptr %i.amk, align 4, !tbaa !293
  %i.aws = fcmp olt float %.sroa.01351.4.vec.extract1357, %i.awr
  br i1 %i.aws, label %bb.me, label %.lr.ph.i1304

bb.me:                                            ; preds = %bb.md
  %i.awt = ptrtoint ptr %.014121509 to i64
  %i.awu = sub i64 %i.awl, %i.awt
  %i.awv = call noundef ptr @memchr(ptr noundef %.014121509, i32 noundef 10, i64 noundef %i.awu) #35 ; 2 uses
  %.not1170 = icmp eq ptr %i.awv, null
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 1
  %i.awx = select i1 %.not1170, ptr %i.avw, ptr %i.aww
  br label %bb.mn

.lr.ph.i1304:                                     ; preds = %bb.md
  %.val1226 = load ptr, ptr %i.arm, align 8, !tbaa !295 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %.val1226, i64 20
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !409
  %i.axa = fdiv float %i.awn, %i.awz
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.mj, %.lr.ph.i1304
  %.03224.us.i = phi ptr [ %.1.us.i, %bb.mj ], [ %.014121509, %.lr.ph.i1304 ] ; 4 uses
  %.03323.us.i = phi float [ %.134.us.i, %bb.mj ], [ 0.000000e+00, %.lr.ph.i1304 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.axb = load i8, ptr %.03224.us.i, align 1, !tbaa !330 ; 2 uses
  %i.axc = sext i8 %i.axb to i32                  ; 2 uses
  store i32 %i.axc, ptr %i.a, align 4, !tbaa !211
  %i.axd = icmp sgt i8 %i.axb, -1
  br i1 %i.axd, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %.lr.ph.split.us.i
  %i.axe = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.03224.us.i, ptr noundef nonnull %i.avw) #36
  %i.axf = sext i32 %i.axe to i64
  %i.axg = getelementptr inbounds i8, ptr %.03224.us.i, i64 %i.axf
  %.pr.us.i = load i32, ptr %i.a, align 4, !tbaa !211
  br label %bb.mh

bb.mg:                                            ; preds = %.lr.ph.split.us.i
  %i.axh = getelementptr inbounds nuw i8, ptr %.03224.us.i, i64 1
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.axi = phi i32 [ %.pr.us.i, %bb.mf ], [ %i.axc, %bb.mg ] ; 2 uses
  %.1.us.i = phi ptr [ %i.axg, %bb.mf ], [ %i.axh, %bb.mg ] ; 3 uses
  switch i32 %i.axi, label %bb.mi [
    i32 10, label %.thread.split.us.i
    i32 13, label %bb.mj
  ], !llvm.loop !12

.thread.split.us.i:                               ; preds = %bb.mh
  %i.axj = fcmp ole float %.03323.us.i, 0.000000e+00
  %i.axk = select i1 %i.axj, float 0.000000e+00, float %.03323.us.i
  %.sroa.0.0.vec.insert.us.i = insertelement <2 x float> poison, float %i.axk, i64 0
  %i.axl = fadd float %i.awn, 0.000000e+00
  %.sroa.0.4.vec.insert.us.i = insertelement <2 x float> %.sroa.0.0.vec.insert.us.i, float %i.axl, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305

bb.mi:                                            ; preds = %bb.mh
  %i.axm = trunc i32 %i.axi to i16
  %i.axn = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %.val1226, i16 noundef zeroext %i.axm) #36
  %i.axo = call float @llvm.fmuladd.f32(float %i.axn, float %i.axa, float %.03323.us.i)
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %.134.us.i = phi float [ %i.axo, %bb.mi ], [ %.03323.us.i, %bb.mh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.axp = icmp ult ptr %.1.us.i, %i.avw
  br i1 %i.axp, label %.lr.ph.split.us.i, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305: ; preds = %bb.mj, %.thread.split.us.i
  %.sroa.0.2.i1293 = phi <2 x float> [ %.sroa.0.4.vec.insert.us.i, %.thread.split.us.i ], [ zeroinitializer, %bb.mj ] ; 2 uses
  %.235.i1294 = phi float [ 0.000000e+00, %.thread.split.us.i ], [ %.134.us.i, %bb.mj ] ; 2 uses
  %.sroa.0.0.vec.extract4.i1297 = extractelement <2 x float> %.sroa.0.2.i1293, i64 0
  %i.axq = fcmp olt float %.sroa.0.0.vec.extract4.i1297, %.235.i1294
  %i.axr = extractelement <2 x float> %.sroa.0.2.i1293, i64 0
  %.sroa.0173.0.vec.extract = select i1 %i.axq, float %.235.i1294, float %i.axr ; 2 uses
  %i.axs = fcmp ugt float %.sroa.0173.0.vec.extract, 0.000000e+00
  br i1 %i.axs, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305
  %i.axt = load ptr, ptr %i.arm, align 8, !tbaa !295
  %i.axu = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.axt, i16 noundef zeroext 32) #36
  %i.axv = fmul float %i.axu, 5.000000e-01
  %i.axw = fptosi float %i.axv to i32
  %i.axx = sitofp i32 %i.axw to float
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305
  %.sroa.0173.0.vec.extract176.pre-phi = phi float [ %i.axx, %bb.mk ], [ %.sroa.0173.0.vec.extract, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.axy = load float, ptr %i.arn, align 8, !tbaa !208 ; 2 uses
  %i.axz = fsub float %i.avz, %i.axy
  %.sroa.01351.0.vec.extract = extractelement <2 x float> %.sroa.01351.01508, i64 0 ; 2 uses
  %i.aya = fadd float %.sroa.01351.0.vec.extract, 0.000000e+00
  %i.ayb = fadd float %.sroa.01351.4.vec.extract1357, %i.axz ; 2 uses
  %i.ayc = load float, ptr %18, align 16, !tbaa !292 ; 3 uses
  %i.ayd = load float, ptr %i.amk, align 4, !tbaa !293 ; 3 uses
  %.inv.i.i = fcmp oge float %.sroa.01351.0.vec.extract, %i.ayc
  %..i.i = select i1 %.inv.i.i, float %i.aya, float %i.ayc ; 2 uses
  %.inv6.i.i = fcmp oge float %i.ayb, %i.ayd
  %i.aye = select i1 %.inv6.i.i, float %i.ayb, float %i.ayd ; 2 uses
  %.sroa.0.0.vec.insert.i.i1310 = insertelement <2 x float> poison, float %..i.i, i64 0
  %.sroa.0.4.vec.insert.i.i1311 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i1310, float %i.aye, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i1311, ptr %20, align 8
  %i.ayf = insertelement <2 x float> %i.awm, float %.sroa.0173.0.vec.extract176.pre-phi, i64 0
  %i.ayg = fadd <2 x float> %.sroa.01351.01508, %i.ayf ; 2 uses
  %i.ayh = load <2 x float>, ptr %i.aml, align 8, !tbaa !193 ; 4 uses
  %i.ayi = fcmp olt <2 x float> %i.ayg, %i.ayh
  %i.ayj = select <2 x i1> %i.ayi, <2 x float> %i.ayg, <2 x float> %i.ayh ; 3 uses
  store <2 x float> %i.ayj, ptr %i.awj, align 8
  %i.ayk = extractelement <2 x float> %i.ayj, i64 1
  %i.ayl = fcmp olt float %i.ayd, %i.ayk
  %i.aym = extractelement <2 x float> %i.ayh, i64 1
  %i.ayn = fcmp ogt float %i.aym, %i.aye
  %or.cond1464 = select i1 %i.ayl, i1 %i.ayn, i1 false
  %i.ayo = extractelement <2 x float> %i.ayj, i64 0
  %i.ayp = fcmp olt float %i.ayc, %i.ayo
  %or.cond1466 = select i1 %or.cond1464, i1 %i.ayp, i1 false
  %i.ayq = extractelement <2 x float> %i.ayh, i64 0
  %i.ayr = fcmp ogt float %i.ayq, %..i.i
  %or.cond1468 = select i1 %or.cond1466, i1 %i.ayr, i1 false
  br i1 %or.cond1468, label %bb.mm, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.mm:                                            ; preds = %bb.ml
  %i.ays = load ptr, ptr %i.awk, align 8, !tbaa !205
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ays, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %i.awj, i32 noundef %i.avy, float noundef 0.000000e+00, i32 noundef 0) #36
  %.pre1547.pre = load float, ptr %i.arn, align 8, !tbaa !208
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.ml, %bb.mm
  %.pre1547 = phi float [ %i.axy, %bb.ml ], [ %.pre1547.pre, %bb.mm ]
  %i.ayt = load float, ptr %19, align 8, !tbaa !197
  %i.ayu = fsub float %i.ayt, %i.avm
  %.sroa.01351.0.vec.insert = insertelement <2 x float> %.sroa.01351.01508, float %i.ayu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %.pre1551 = extractelement <2 x float> %.sroa.01351.01508, i64 1
  br label %bb.mn

bb.mn:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread, %bb.me
  %.sroa.01351.4.vec.extract.pre-phi = phi float [ %.pre1551, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.sroa.01351.4.vec.extract1357, %bb.me ]
  %i.ayv = phi float [ %.pre1547, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %i.awn, %bb.me ] ; 2 uses
  %.sroa.01351.1 = phi <2 x float> [ %.sroa.01351.0.vec.insert, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.sroa.01351.01508, %bb.me ]
  %.11413 = phi ptr [ %.1.us.i, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %i.awx, %bb.me ] ; 2 uses
  %i.ayw = fadd float %.sroa.01351.4.vec.extract.pre-phi, %i.ayv
  %.sroa.01351.4.vec.insert = insertelement <2 x float> %.sroa.01351.1, float %i.ayw, i64 1
  %i.ayx = icmp ult ptr %.11413, %i.avw
  br i1 %i.ayx, label %bb.mc, label %.loopexit, !llvm.loop !665

.loopexit:                                        ; preds = %bb.mc, %bb.mn, %bb.mb, %bb.ma
  br i1 %i.s, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %.loopexit
  %i.ayy = ptrtoint ptr %.1 to i64
  %i.ayz = ptrtoint ptr %.0105416811689 to i64
end_hunk_1
begin_hunk_2_@_ZN5ImGui10ColorEdit4EPKcPfi:bb.a

bb.ai:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.gn = and i32 %.4.fr, 4194304
  %.not237 = icmp ne i32 %i.gn, 0
  %or.cond266 = and i1 %.not237, %i.dw
  br i1 %or.cond266, label %bb.aj, label %.split285.us

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.go = extractelement <4 x i32> %i.dn, i64 0
  %i.gp = call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gq = call i32 @llvm.umin.i32(i32 %i.gp, i32 255) ; 2 uses
  %i.gr = extractelement <4 x i32> %i.dn, i64 1
  %i.gs = call i32 @llvm.smax.i32(i32 %i.gr, i32 0)
  %i.gt = call i32 @llvm.umin.i32(i32 %i.gs, i32 255) ; 2 uses
  %i.gu = extractelement <4 x i32> %i.dn, i64 2
  %i.gv = call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %i.gw = call i32 @llvm.umin.i32(i32 %i.gv, i32 255) ; 2 uses
  br i1 %i.bf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gx = extractelement <4 x i32> %i.dn, i64 3
  %i.gy = call i32 @llvm.smax.i32(i32 %i.gx, i32 0)
  %i.gz = call i32 @llvm.umin.i32(i32 %i.gy, i32 255)
  %i.ha = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.g, i64 noundef 64, ptr noundef nonnull @.str.58, i32 noundef %i.gq, i32 noundef %i.gt, i32 noundef %i.gw, i32 noundef %i.gz) #36 ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.hb = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.g, i64 noundef 64, ptr noundef nonnull @.str.59, i32 noundef %i.gq, i32 noundef %i.gt, i32 noundef %i.gw) #36 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.bp) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !193
  %i.hc = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 8, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.hc, label %.preheader279, label %bb.aq

.preheader279:                                    ; preds = %bb.am, %.critedge
  %.0206 = phi ptr [ %i.he, %.critedge ], [ %i.g, %bb.am ] ; 4 uses
  %i.hd = load i8, ptr %.0206, align 1, !tbaa !330
  switch i8 %i.hd, label %bb.an [
    i8 35, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader279, %.preheader279, %.preheader279
  %i.he = getelementptr inbounds nuw i8, ptr %.0206, i64 1
  br label %.preheader279, !llvm.loop !734

bb.an:                                            ; preds = %.preheader279
  store <4 x i32> <i32 0, i32 0, i32 0, i32 255>, ptr %i.f, align 16, !tbaa !211
  br i1 %i.bf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hf = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0206, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di) #36 ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hg = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0206, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh) #36 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.am
  %.2214 = phi i8 [ 0, %bb.am ], [ 1, %bb.ap ], [ 1, %bb.ao ]
  %i.hh = and i32 %i.bd, 8
  %.not238 = icmp eq i32 %i.hh, 0
  br i1 %.not238, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.57, i32 noundef 1) #36
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %.split285.us

.split285.us:                                     ; preds = %bb.af, %.split285.us.loopexit288, %bb.ai, %bb.as
  %.3215 = phi i8 [ 0, %bb.ai ], [ %.2214, %bb.as ], [ %i.gl, %.split285.us.loopexit288 ], [ %i.fs, %bb.af ] ; 4 uses
  %.2211 = phi i1 [ false, %bb.ai ], [ false, %bb.as ], [ %i.ft, %.split285.us.loopexit288 ], [ false, %bb.af ]
  br i1 %.not231, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %.split285.us
  br i1 %i.dw, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hi = load i32, ptr %i.dp, align 4, !tbaa !735
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 3236
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !207
  %i.hm = fadd float %i.bp, %i.hl
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  %i.hn = phi float [ %i.hm, %bb.av ], [ 0.000000e+00, %bb.au ], [ 0.000000e+00, %bb.at ]
  %i.ho = fadd float %.sroa.039.0.copyload, %i.hn
  store float %i.ho, ptr %i.do, align 8
  store i32 %.sroa.6.0.copyload278, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.hp = load <2 x float>, ptr %1, align 4, !tbaa !193
  %i.hq = load float, ptr %i.bv, align 4, !tbaa !193
  br i1 %i.bf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !193
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.ht = phi float [ %i.hs, %bb.ax ], [ 1.000000e+00, %bb.aw ]
  store <2 x float> %i.hp, ptr %6, align 8, !tbaa !193
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.hq, ptr %i.hu, align 8, !tbaa !294
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ht, ptr %i.hv, align 4, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !193
  %i.hw = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.63, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.hx = and i32 %i.bd, 4
  %.not242 = icmp eq i32 %i.hx, 0
  %or.cond267 = and i1 %.not242, %i.hw
  br i1 %or.cond267, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hy = getelementptr inbounds nuw i8, ptr %i.h, i64 9512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !238
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.64, i32 noundef 0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 7716
  %i.ia = load <4 x float>, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.h, i64 3232
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !301
  %i.id = shufflevector <4 x float> %i.ia, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ie = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ic, i64 1
  %i.if = fadd <2 x float> %i.id, %i.ie
  store <2 x float> %i.if, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !193
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ig = and i32 %i.bd, 8
  %.not243 = icmp eq i32 %i.ig, 0
  br i1 %.not243, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.57, i32 noundef 1) #36
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ih = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.64, i32 noundef 0) #36
  br i1 %i.ih, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.ii = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 218
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !436
  %i.il = icmp eq i16 %i.ik, 1
  br i1 %i.il, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %.not244 = icmp eq ptr %0, %i.p
  br i1 %.not244, label %_ZN5ImGui7SpacingEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.p, i32 noundef 0)
  %i.im = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 5184
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !161 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 206
  store i8 1, ptr %i.ip, align 2, !tbaa !185
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 209
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !186, !range !187, !noundef !188
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %_ZN5ImGui7SpacingEv.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !193
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN5ImGui7SpacingEv.exit

_ZN5ImGui7SpacingEv.exit:                         ; preds = %bb.bg, %bb.bf, %bb.be
  %i.it = and i32 %2, 529072130
  %i.iu = or disjoint i32 %i.it, 7348352
  %i.iv = fmul float %i.o, 1.200000e+01
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.iv) #36
  %i.iw = getelementptr inbounds nuw i8, ptr %i.h, i64 9512
  %i.ix = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.65, ptr noundef nonnull %1, i32 noundef %i.iu, ptr noundef nonnull %i.iw)
  %i.iy = zext i1 %i.ix to i8
  %i.iz = or i8 %.3215, %i.iy
  %11 = icmp ne i8 %i.iz, 0
  %12 = zext i1 %11 to i8
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN5ImGui7SpacingEv.exit, %bb.bd
  %.4216 = phi i8 [ %12, %_ZN5ImGui7SpacingEv.exit ], [ %.3215, %bb.bd ]
  %.0203 = phi ptr [ %i.ii, %_ZN5ImGui7SpacingEv.exit ], [ null, %bb.bd ]
  call void @_ZN5ImGui8EndPopupEv() #36
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bc
  %.5 = phi i8 [ %.4216, %bb.bh ], [ %.3215, %bb.bc ]
  %.1204 = phi ptr [ %.0203, %bb.bh ], [ null, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.split285.us
  %.6 = phi i8 [ %.3215, %.split285.us ], [ %.5, %bb.bi ] ; 5 uses
  %.2205 = phi ptr [ null, %.split285.us ], [ %.1204, %bb.bi ] ; 2 uses
  %.not245 = icmp ne ptr %0, %i.p
  %i.ja = and i32 %i.bd, 128
  %.not246 = icmp eq i32 %i.ja, 0
  %or.cond268 = and i1 %.not245, %.not246
  br i1 %or.cond268, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 3236 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !207
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.jc) #36
  br i1 %i.dw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !207
  %i.je = fadd float %i.bq, %i.jd
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.jf = phi float [ %i.je, %bb.bl ], [ %i.bm, %bb.bk ]
  %i.jg = fadd float %.sroa.039.0.copyload, %i.jf
  store float %i.jg, ptr %i.do, align 8, !tbaa !189
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.p, i32 noundef 0)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %i.jh = trunc nuw i8 %.6 to i1
  %i.ji = icmp eq ptr %.2205, null                ; 2 uses
  %or.cond = and i1 %i.ji, %i.jh
  br i1 %or.cond, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  br i1 %.2211, label %..loopexit_crit_edge, label %.preheader.preheader

..loopexit_crit_edge:                             ; preds = %bb.bo
  %i.jj = load <2 x float>, ptr %i.e, align 16, !tbaa !193
  %.pre306.pre311.pre = load float, ptr %i.bu, align 8, !tbaa !193
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.bo
  %i.jk = load <2 x i32>, ptr %i.f, align 16, !tbaa !211
  %i.jl = sitofp <2 x i32> %i.jk to <2 x float>
  %i.jm = fdiv <2 x float> %i.jl, splat (float 2.550000e+02) ; 2 uses
  store <2 x float> %i.jm, ptr %i.e, align 16, !tbaa !193
  %i.jn = load <2 x i32>, ptr %i.dh, align 8, !tbaa !211
  %i.jo = sitofp <2 x i32> %i.jn to <2 x float>
  %i.jp = fdiv <2 x float> %i.jo, splat (float 2.550000e+02) ; 2 uses
  store <2 x float> %i.jp, ptr %i.bu, align 8, !tbaa !193
  %i.jq = extractelement <2 x float> %i.jp, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader.preheader
  %.pre306.pre311 = phi float [ %.pre306.pre311.pre, %..loopexit_crit_edge ], [ %i.jq, %.preheader.preheader ] ; 2 uses
  %i.jr = phi <2 x float> [ %i.jj, %..loopexit_crit_edge ], [ %i.jm, %.preheader.preheader ] ; 4 uses
  %i.js = and i32 %.4.fr, 136314880
  %or.cond269.not = icmp eq i32 %i.js, 136314880
  br i1 %or.cond269.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit
  %i.jt = getelementptr inbounds nuw i8, ptr %i.h, i64 9500
  %i.ju = extractelement <2 x float> %i.jr, i64 0
  %i.jv = extractelement <2 x float> %i.jr, i64 1
  store <2 x float> %i.jr, ptr %i.jt, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ju, float noundef %i.jv, float noundef %.pre306.pre311, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.bu) #36
  %i.jw = load i32, ptr %i.t, align 4, !tbaa !428
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 9496
  store i32 %i.jw, ptr %i.jx, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.jy = load float, ptr %i.bu, align 8, !tbaa !193
  %i.jz = load <2 x float>, ptr %i.e, align 16, !tbaa !193
  store <2 x float> %i.jz, ptr %10, align 8, !tbaa !193
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.jy, ptr %i.ka, align 8, !tbaa !294
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 12
  store float 0.000000e+00, ptr %i.kb, align 4, !tbaa !252
  %i.kc = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %10) #36
  %i.kd = getelementptr inbounds nuw i8, ptr %i.h, i64 9508
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ke = load <2 x float>, ptr %i.e, align 16, !tbaa !193
  %.pre306.pre = load float, ptr %i.bu, align 8, !tbaa !193
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit
  %.pre306 = phi float [ %.pre306.pre, %bb.bp ], [ %.pre306.pre311, %.loopexit ] ; 2 uses
  %i.kf = phi <2 x float> [ %i.ke, %bb.bp ], [ %i.jr, %.loopexit ] ; 3 uses
  br i1 %or.cond261.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kg = extractelement <2 x float> %i.kf, i64 0
  %i.kh = extractelement <2 x float> %i.kf, i64 1
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.kg, float noundef %i.kh, float noundef %.pre306, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.bu) #36
  %i.ki = load <2 x float>, ptr %i.e, align 16, !tbaa !193
  %.pre305 = load float, ptr %i.bu, align 8, !tbaa !193
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.kj = phi float [ %.pre306, %bb.bq ], [ %.pre305, %bb.br ]
  %i.kk = phi <2 x float> [ %i.kf, %bb.bq ], [ %i.ki, %bb.br ]
  store <2 x float> %i.kk, ptr %1, align 4, !tbaa !193
  store float %i.kj, ptr %i.bv, align 4, !tbaa !193
  br i1 %i.bf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kl = load float, ptr %i.bx, align 4, !tbaa !193
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.kl, ptr %i.km, align 4, !tbaa !193
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bn
  br i1 %i.v, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.t, align 4, !tbaa !428
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @_ZN5ImGui5PopIDEv() #36
  call void @_ZN5ImGui8EndGroupEv() #36
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 7704 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.h, i64 7712
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !273
  %i.kq = and i32 %i.kp, 1
  %.not251 = icmp eq i32 %i.kq, 0
  br i1 %.not251, label %bb.cg, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kr = getelementptr inbounds nuw i8, ptr %i.h, i64 7708
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !253
  %i.kt = and i32 %i.ks, 2048
  %i.ku = and i32 %i.bd, 512
  %i.kv = or disjoint i32 %i.kt, %i.ku
  %or.cond270 = icmp eq i32 %i.kv, 0
  br i1 %or.cond270, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.kw = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv() #36
  br i1 %i.kw, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.kx = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.66, i32 noundef 0) #36 ; 2 uses
  %.not254 = icmp ne ptr %i.kx, null              ; 2 uses
  br i1 %.not254, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %i.ky, i64 12, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.7 = phi i8 [ 1, %bb.ca ], [ %.6, %bb.bz ]
  %i.kz = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.67, i32 noundef 0) #36 ; 2 uses
  %.not255 = icmp eq ptr %i.kz, null
  br i1 %.not255, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !736
  %i.lb = shl nuw nsw i32 %i.bh, 2
  %i.lc = zext nneg i32 %i.lb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.la, i64 %i.lc, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.8 = phi i8 [ 1, %bb.cc ], [ %.7, %bb.cb ]
  %.1 = phi i1 [ true, %bb.cc ], [ %.not254, %bb.cb ]
  %brmerge271.not = and i1 %.not232, %.1
  br i1 %brmerge271.not, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ld = load float, ptr %1, align 4, !tbaa !193
  %i.le = load float, ptr %i.bs, align 4, !tbaa !193
  %i.lf = load float, ptr %i.bv, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.ld, float noundef %i.le, float noundef %i.lf, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bv) #36
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  call void @_ZN5ImGui17EndDragDropTargetEv() #36
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.by, %bb.bx, %bb.bw
  %.9 = phi i8 [ %.6, %bb.bx ], [ %.6, %bb.bw ], [ %.8, %bb.cf ], [ %.6, %bb.by ]
  br i1 %i.ji, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lg = getelementptr inbounds nuw i8, ptr %i.h, i64 5300
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !220 ; 2 uses
  %.not257 = icmp eq i32 %i.lh, 0
  br i1 %.not257, label %bb.ck, label %bb.ci
end_hunk_2
begin_hunk_3_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  br i1 %.not443, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lq = load float, ptr %i.bx, align 4, !tbaa !207
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.lq) #36
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.lp, i32 noundef 0)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bg, %bb.bj, %bb.bf
  br i1 %.not443, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 4, i1 noundef zeroext true) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  %i.lr = load <2 x float>, ptr %1, align 4, !tbaa !193
  %i.ls = load float, ptr %i.dl, align 4, !tbaa !193
  br i1 %.not435, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !193
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.lv = phi float [ %i.lu, %bb.bm ], [ 1.000000e+00, %bb.bl ]
  store <2 x float> %i.lr, ptr %24, align 8, !tbaa !193
  %i.lw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %i.ls, ptr %i.lw, align 8, !tbaa !294
  %i.lx = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float %i.lv, ptr %i.lx, align 4, !tbaa !252
  br i1 %.not444, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.72)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ly = and i32 %.3, 403191874                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  %i.lz = fmul float %i.bw, 3.000000e+00          ; 2 uses
  %i.ma = fmul float %i.bw, 2.000000e+00          ; 2 uses
  store float %i.lz, ptr %25, align 4, !tbaa !197
  %i.mb = getelementptr inbounds nuw i8, ptr %25, i64 4
  store float %i.ma, ptr %i.mb, align 4, !tbaa !200
  %i.mc = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.73, ptr noundef nonnull align 4 dereferenceable(16) %24, i32 noundef %i.ly, ptr noundef nonnull align 4 dereferenceable(8) %25) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  %.not446 = icmp eq ptr %3, null
  br i1 %.not446, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.74)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36
  %i.md = load <2 x float>, ptr %3, align 4, !tbaa !193
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mf = load float, ptr %i.me, align 4, !tbaa !193
  br i1 %.not435, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !193
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.mi = phi float [ %i.mh, %bb.br ], [ 1.000000e+00, %bb.bq ]
  store <2 x float> %i.md, ptr %26, align 8, !tbaa !193
  %i.mj = getelementptr inbounds nuw i8, ptr %26, i64 8
  store float %i.mf, ptr %i.mj, align 8, !tbaa !294
  %i.mk = getelementptr inbounds nuw i8, ptr %26, i64 12
  store float %i.mi, ptr %i.mk, align 4, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  store float %i.lz, ptr %27, align 4, !tbaa !197
  %i.ml = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.ma, ptr %i.ml, align 4, !tbaa !200
  %i.mm = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.75, ptr noundef nonnull align 4 dereferenceable(16) %26, i32 noundef %i.ly, ptr noundef nonnull align 4 dereferenceable(8) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br i1 %i.mm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 %i.ch, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.6 = phi i8 [ 1, %bb.bt ], [ %.5, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bp
  %.7 = phi i8 [ %.6, %bb.bu ], [ %.5, %bb.bp ]
  call void @_ZN5ImGui11PopItemFlagEv() #36
  call void @_ZN5ImGui8EndGroupEv() #36
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bk
  %.8 = phi i8 [ %.5, %bb.bk ], [ %.7, %bb.bv ]   ; 3 uses
  %i.mn = trunc nuw i8 %.2414 to i1
  %i.mo = trunc nuw i8 %.3411 to i1
  %i.mp = or i8 %.3411, %.2414
  %or.cond9.not = icmp eq i8 %i.mp, 0
  br i1 %or.cond9.not, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %.not437, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mq = load float, ptr %i.j, align 4, !tbaa !193
  %i.mr = load float, ptr %i.k, align 4, !tbaa !193
  %i.ms = load float, ptr %i.l, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.mq, float noundef %i.mr, float noundef %i.ms, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.dl) #36
  %i.mt = load float, ptr %i.j, align 4, !tbaa !193
  %i.mu = getelementptr inbounds nuw i8, ptr %i.w, i64 9500
  store float %i.mt, ptr %i.mu, align 4, !tbaa !434
  %i.mv = load float, ptr %i.k, align 4, !tbaa !193
  %i.mw = getelementptr inbounds nuw i8, ptr %i.w, i64 9504
  store float %i.mv, ptr %i.mw, align 8, !tbaa !435
  %i.mx = load i32, ptr %i.ao, align 4, !tbaa !428
  %i.my = getelementptr inbounds nuw i8, ptr %i.w, i64 9496
  store i32 %i.mx, ptr %i.my, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  %i.mz = load float, ptr %i.dl, align 4, !tbaa !193
  %i.na = load <2 x float>, ptr %1, align 4, !tbaa !193
  store <2 x float> %i.na, ptr %28, align 8, !tbaa !193
  %i.nb = getelementptr inbounds nuw i8, ptr %28, i64 8
  store float %i.mz, ptr %i.nb, align 8, !tbaa !294
  %i.nc = getelementptr inbounds nuw i8, ptr %28, i64 12
  store float 0.000000e+00, ptr %i.nc, align 4, !tbaa !252
  %i.nd = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %28) #36
  %i.ne = getelementptr inbounds nuw i8, ptr %i.w, i64 9508
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bx
  %i.nf = and i32 %.3, 268435456
  %.not447 = icmp eq i32 %i.nf, 0
  br i1 %.not447, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ng = load float, ptr %i.j, align 4, !tbaa !193
  store float %i.ng, ptr %1, align 4, !tbaa !193
  %i.nh = load float, ptr %i.k, align 4, !tbaa !193
  store float %i.nh, ptr %i.dj, align 4, !tbaa !193
  %i.ni = load float, ptr %i.l, align 4, !tbaa !193
  store float %i.ni, ptr %i.dl, align 4, !tbaa !193
  br label %bb.cb

bb.cb:                                            ; preds = %bb.by, %bb.ca, %bb.bz, %bb.bw
  %i.nj = and i32 %.3, 32
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %bb.cc, label %.thread

bb.cc:                                            ; preds = %bb.cb
  %i.nl = select i1 %spec.select458, float %i.cu, float %i.cs
  %i.nm = fadd float %i.bw, %i.nl
  %i.nn = fsub float %i.nm, %i.cq
  call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.nn) #36
  %i.no = and i32 %.3, 428357722                  ; 3 uses
  %i.np = and i32 %.3, 1048576
  %.not448 = icmp ne i32 %i.np, 0
  %i.nq = and i32 %.3, 6291456
  %i.nr = icmp eq i32 %i.nq, 0
  %or.cond460 = or i1 %.not448, %i.nr
  br i1 %or.cond460, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ns = or disjoint i32 %i.no, 1048580
  %i.nt = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.76, ptr noundef nonnull %1, i32 noundef %i.ns)
  br i1 %i.nt, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.nu = getelementptr inbounds nuw i8, ptr %i.w, i64 5300
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !220
  %.not449 = icmp eq i32 %i.nv, 0
  br i1 %.not449, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nw = getelementptr inbounds nuw i8, ptr %i.w, i64 5313
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !390, !range !187, !noundef !188
  %i.ny = trunc nuw i8 %i.nx to i1
  %i.nz = or i1 %.not437, %i.ny
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf, %bb.cc, %bb.cd
  %.9 = phi i8 [ %.8, %bb.cc ], [ %.8, %bb.cd ], [ 1, %bb.cf ], [ 1, %bb.ce ] ; 2 uses
  %.1407.not = phi i1 [ true, %bb.cc ], [ true, %bb.cd ], [ %i.nz, %bb.cf ], [ true, %bb.ce ]
  %i.oa = and i32 %.3, 2097152
  %.not450 = icmp ne i32 %i.oa, 0
  %i.ob = and i32 %.3, 5242880
  %i.oc = icmp eq i32 %i.ob, 0
  %or.cond462 = or i1 %.not450, %i.oc
  br i1 %or.cond462, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.od = or disjoint i32 %i.no, 2097156
  %i.oe = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.77, ptr noundef nonnull %1, i32 noundef %i.od)
  %i.of = zext i1 %i.oe to i8
  %i.og = or i8 %.9, %i.of
  %41 = icmp ne i8 %i.og, 0
  %42 = zext i1 %41 to i8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %.10 = phi i8 [ %42, %bb.ch ], [ %.9, %bb.cg ]  ; 2 uses
  %i.oh = and i32 %.3, 4194304
  %.not451 = icmp ne i32 %i.oh, 0
  %i.oi = and i32 %.3, 3145728
  %i.oj = icmp eq i32 %i.oi, 0
  %or.cond464 = or i1 %.not451, %i.oj
  br i1 %or.cond464, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ok = or disjoint i32 %i.no, 4194308
  %i.ol = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.78, ptr noundef nonnull %1, i32 noundef %i.ok)
  %i.om = zext i1 %i.ol to i8
  %i.on = or i8 %.10, %i.om
  %43 = icmp ne i8 %i.on, 0
  %44 = zext i1 %43 to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.11 = phi i8 [ %44, %bb.cj ], [ %.10, %bb.ci ] ; 2 uses
  call void @_ZN5ImGui12PopItemWidthEv() #36
  br i1 %.1407.not, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #36
  %i.oo = load float, ptr %1, align 4, !tbaa !193
  %i.op = load float, ptr %i.dj, align 4, !tbaa !193
  %i.oq = load float, ptr %i.dl, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.oo, float noundef %i.op, float noundef %i.oq, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.u) #36
  %i.or = load float, ptr %i.s, align 4, !tbaa !193
  %i.os = fcmp ole float %i.or, 0.000000e+00
  %i.ot = load float, ptr %i.j, align 4           ; 3 uses
  %i.ou = fcmp ogt float %i.ot, 0.000000e+00
  %or.cond11 = select i1 %i.os, i1 %i.ou, i1 false
  br i1 %or.cond11, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.ov = load float, ptr %i.u, align 4, !tbaa !193 ; 3 uses
  %i.ow = fcmp ugt float %i.ov, 0.000000e+00
  br i1 %i.ow, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ox = load float, ptr %i.l, align 4, !tbaa !193 ; 2 uses
  %i.oy = fcmp une float %i.ox, %i.ov
  br i1 %i.oy, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.oz = load float, ptr %i.k, align 4, !tbaa !193
  %i.pa = fmul float %i.ox, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ot, float noundef %i.oz, float noundef %i.pa, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.dl) #36
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.pb = load float, ptr %i.t, align 4, !tbaa !193
  %i.pc = fcmp ugt float %i.pb, 0.000000e+00
  br i1 %i.pc, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pd = load float, ptr %i.k, align 4
  %i.pe = fmul float %i.pd, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ot, float noundef %i.pe, float noundef %i.ov, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.dl) #36
  br label %bb.cr

bb.cr:                                            ; preds = %bb.co, %bb.cq, %bb.cp, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  br label %.thread

.thread:                                          ; preds = %bb.cb, %bb.ck, %bb.cr
  %.12601 = phi i8 [ %.11, %bb.cr ], [ %.11, %bb.ck ], [ %.8, %bb.cb ]
  %i.pf = trunc nuw i8 %.12601 to i1              ; 2 uses
  br i1 %i.pf, label %bb.cs, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.cs:                                            ; preds = %.thread
  br i1 %.not437, label %bb.db, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pg = load float, ptr %1, align 4, !tbaa !193 ; 2 uses
  store float %i.pg, ptr %i.m, align 4, !tbaa !193
  %i.ph = load float, ptr %i.dj, align 4, !tbaa !193 ; 2 uses
  store float %i.ph, ptr %i.n, align 4, !tbaa !193
  %i.pi = load float, ptr %i.dl, align 4, !tbaa !193 ; 2 uses
  store float %i.pi, ptr %i.o, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.pg, float noundef %i.ph, float noundef %i.pi, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #36
  %i.pj = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 9496
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !432
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 9492
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !428
  %.not.i511 = icmp eq i32 %i.pl, %i.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  br i1 %.not.i511, label %bb.cu, label %.critedge.i512

bb.cu:                                            ; preds = %bb.ct
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 9508
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !433
  %i.pq = load float, ptr %i.dl, align 4, !tbaa !193
  %i.pr = load <2 x float>, ptr %1, align 4, !tbaa !193
  store <2 x float> %i.pr, ptr %4, align 8, !tbaa !193
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.pq, ptr %i.ps, align 8, !tbaa !294
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.pt, align 4, !tbaa !252
  %i.pu = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4) #36
  %.not14.i513 = icmp eq i32 %i.pp, %i.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %.not14.i513, label %bb.cv, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

.critedge.i512:                                   ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.cv:                                            ; preds = %bb.cu
  %i.pv = load float, ptr %i.k, align 4, !tbaa !193
  %i.pw = fcmp oeq float %i.pv, 0.000000e+00
  br i1 %i.pw, label %._crit_edge.i514, label %bb.cw

._crit_edge.i514:                                 ; preds = %bb.cv
  %.phi.trans.insert.i515 = getelementptr inbounds nuw i8, ptr %i.pj, i64 9500
  %.pre.i516 = load float, ptr %.phi.trans.insert.i515, align 4, !tbaa !434
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.px = load float, ptr %i.j, align 4, !tbaa !193
  %i.py = fcmp oeq float %i.px, 0.000000e+00
  br i1 %i.py, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 9500
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !434
  %i.qb = fcmp oeq float %i.qa, 1.000000e+00
  br i1 %i.qb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %._crit_edge.i514
  %i.qc = phi float [ %.pre.i516, %._crit_edge.i514 ], [ 1.000000e+00, %bb.cx ]
  store float %i.qc, ptr %i.j, align 4, !tbaa !193
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.qd = load float, ptr %i.l, align 4, !tbaa !193
  %i.qe = fcmp oeq float %i.qd, 0.000000e+00
  br i1 %i.qe, label %bb.da, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.da:                                            ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pj, i64 9504
  %i.qg = load float, ptr %i.qf, align 8, !tbaa !435
  store float %i.qg, ptr %i.k, align 4, !tbaa !193
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.db:                                            ; preds = %bb.cs
  %i.qh = and i32 %.3, 268435456
  %.not452 = icmp eq i32 %i.qh, 0
  br i1 %.not452, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qi = load float, ptr %1, align 4, !tbaa !193 ; 2 uses
  store float %i.qi, ptr %i.j, align 4, !tbaa !193
  %i.qj = load float, ptr %i.dj, align 4, !tbaa !193 ; 2 uses
  store float %i.qj, ptr %i.k, align 4, !tbaa !193
  %i.qk = load float, ptr %i.dl, align 4, !tbaa !193 ; 2 uses
  store float %i.qk, ptr %i.l, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.qi, float noundef %i.qj, float noundef %i.qk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o) #36
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517:       ; preds = %bb.da, %bb.cz, %.critedge.i512, %bb.cu, %bb.dc, %bb.db, %.thread
  %i.ql = getelementptr inbounds nuw i8, ptr %i.w, i64 3148 ; 4 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !739 ; 4 uses
  %i.qn = fcmp olt float %i.qm, 0.000000e+00
  %i.qo = fcmp ogt float %i.qm, 1.000000e+00
  %i.qp = select i1 %i.qo, float 1.000000e+00, float %i.qm
  %i.qq = call float @llvm.fmuladd.f32(float %i.qp, float 2.550000e+02, float 5.000000e-01)
  %i.qr = select i1 %i.qn, float 5.000000e-01, float %i.qq
  %i.qs = fptosi float %i.qr to i32
  %i.qt = shl i32 %i.qs, 24                       ; 11 uses
  %i.qu = or disjoint i32 %i.qt, 16711680         ; 5 uses
  %i.qv = or disjoint i32 %i.qt, 16776960         ; 5 uses
  %i.qw = or disjoint i32 %i.qt, 16777215         ; 6 uses
  %i.qx = or disjoint i32 %i.qt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  %i.qy = or disjoint i32 %i.qt, 255              ; 7 uses
  store i32 %i.qy, ptr %i.v, align 16, !tbaa !211
  %i.qz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ra = or disjoint i32 %i.qt, 65280            ; 5 uses
  %i.rb = or disjoint i32 %i.qt, 65535            ; 5 uses
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !211
  %i.rc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.ra, ptr %i.rc, align 8, !tbaa !211
  %i.rd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.qv, ptr %i.rd, align 4, !tbaa !211
  %i.re = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.qu, ptr %i.re, align 16, !tbaa !211
  %i.rf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.rg = or disjoint i32 %i.qt, 16711935         ; 5 uses
  store i32 %i.rg, ptr %i.rf, align 4, !tbaa !211
  %i.rh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.qy, ptr %i.rh, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  %i.ri = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !193
  %i.rj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.rj, align 8, !tbaa !294
  %i.rk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.qm, ptr %i.rk, align 4, !tbaa !252
  %i.rl = load float, ptr %i.j, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.rl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.ri, ptr noundef nonnull align 4 dereferenceable(4) %i.rj) #36
  %i.rm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.rn = load float, ptr %i.m, align 4, !tbaa !193
  %i.ro = load float, ptr %i.n, align 4, !tbaa !193
  %i.rp = load float, ptr %i.o, align 4, !tbaa !193
  %i.rq = load float, ptr %i.ql, align 4, !tbaa !739
  store float %i.rn, ptr %30, align 4, !tbaa !292
  %i.rr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.ro, ptr %i.rr, align 4, !tbaa !293
  %i.rs = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.rp, ptr %i.rs, align 4, !tbaa !294
  %i.rt = getelementptr inbounds nuw i8, ptr %30, i64 12
end_hunk_3
begin_hunk_4_@_ZN5ImGui9TreeNodeVEPKvPKcP13__va_list_tag:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !186, !range !187, !noundef !188
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null) #36
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef %1, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKciS1_z(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !186, !range !187, !noundef !188
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !186, !range !187, !noundef !188
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i1 %.0.i
}

declare noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !451
  %i.f = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %0, i32 noundef 0) #36
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui15TreeNodeSetOpenEjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !451
  %i.f = zext i1 %1 to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %0, i32 noundef %i.f) #36
  ret void
}

declare void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui22TreeNodeUpdateNextOpenEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %1, 256
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !451  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 7648
  %i.h = load i32, ptr %i.g, align 8, !tbaa !410
  %i.i = and i32 %i.h, 2
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 7685
  %i.k = load i8, ptr %i.j, align 1, !tbaa !452
  %i.l = and i8 %i.k, 1
  %.not28 = icmp eq i8 %i.l, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 7684
  %i.n = load i8, ptr %i.m, align 4, !tbaa !453, !range !187, !noundef !188 ; 2 uses
  %i.o = zext nneg i8 %i.n to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %0, i32 noundef %i.o) #36
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %0, i32 noundef -1) #36 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 7684
  %i.s = load i8, ptr %i.r, align 4, !tbaa !453, !range !187, !noundef !188 ; 2 uses
  %i.t = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !451
  %2 = zext nneg i8 %i.s to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %0, i32 noundef %2) #36
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ne i32 %i.p, 0
  %i.z = zext i1 %i.y to i8
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.aa = lshr i32 %1, 5
  %.lobit = and i32 %i.aa, 1
  %i.ab = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %0, i32 noundef %.lobit) #36
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.h
  %.1 = phi i8 [ %i.n, %bb.d ], [ %i.ad, %bb.h ], [ %i.s, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 10008
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !194, !range !187, !noundef !188
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = and i32 %1, 16
  %.not29 = icmp eq i32 %i.ah, 0
  %or.cond = and i1 %.not29, %i.ag
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !445
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 10072
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !748
  %i.am = sub nsw i32 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 10076
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !749
  %i.ap = icmp slt i32 %i.am, %i.ao
  %spec.select = select i1 %i.ap, i8 1, i8 %.1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi i8 [ %.1, %bb.i ], [ %spec.select, %bb.j ]
  %i.aq = trunc nuw i8 %.2 to i1
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.024 = phi i1 [ %i.aq, %bb.k ], [ true, %bb.a ]
  ret i1 %.024
}

declare noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %0, float noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8040 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !447  ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8044 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !750  ; 4 uses
  %.not30 = icmp slt i32 %i.e, %i.h
  br i1 %.not30, label %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge, label %bb.b

._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8048
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !446
  br label %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i32 %i.h, 2
  %i.j = add nsw i32 %i.i, %i.h
  br label %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ 8, %bb.b ]
  %i.l = tail call noundef i32 @llvm.smax.i32(i32 %i.k, i32 %i.f) ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, 40
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.n) #36 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8048 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !751  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !454
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.o, ptr nonnull align 4 %i.q, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !751
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.u) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !751
  store i32 %i.l, ptr %i.g, align 4, !tbaa !750
  br label %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit

_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit: ; preds = %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge, %bb.e
  %i.v = phi ptr [ %.pre, %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge ], [ %i.o, %bb.e ]
  store i32 %i.f, ptr %i.d, align 8, !tbaa !454
  %i.w = sext i32 %i.f to i64
  %i.x = getelementptr [40 x i8], ptr %i.v, i64 %i.w ; 8 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -40
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7704
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !210
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !752
  %i.ab = getelementptr i8, ptr %i.x, i64 -36
  store i32 %0, ptr %i.ab, align 4, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7708
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !253
  %i.ae = getelementptr i8, ptr %i.x, i64 -32
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !753
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 7732
  %i.ag = getelementptr i8, ptr %i.x, i64 -28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !238
  %i.ah = and i32 %0, 1572864
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !208
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 5.000000e-01, float %1)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 3212
  %i.am = load float, ptr %i.al, align 4, !tbaa !312
  %i.an = fadd float %i.ak, %i.am
  %i.ao = getelementptr i8, ptr %i.x, i64 -12
  store float %i.an, ptr %i.ao, align 4, !tbaa !456
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 2 uses
  %.not28 = icmp eq ptr %i.aq, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !472
  %i.at = trunc i32 %i.as to i16
  br label %bb.h

.critedge:                                        ; preds = %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit
  %i.au = getelementptr i8, ptr %i.x, i64 -12
  store float f0x7F7FFFFF, ptr %i.au, align 4, !tbaa !456
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.f, %bb.g
  %i.av = phi i16 [ %i.at, %bb.g ], [ -1, %bb.f ], [ -1, %.critedge ]
  %i.aw = getelementptr i8, ptr %i.x, i64 -4
  store i16 %i.av, ptr %i.aw, align 4, !tbaa !473
  %i.ax = getelementptr i8, ptr %i.x, i64 -8
  store float f0xFF7FFFFF, ptr %i.ax, align 4, !tbaa !449
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !445
  %i.ba = shl nuw i32 1, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 420 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !474
  %i.bd = or i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !474
  %i.be = and i32 %0, 1048576
  %.not29 = icmp eq i32 %i.be, 0
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 424 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !444
  %i.bh = or i32 %i.bg, %i.ba
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !444
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui18TreePushOverrideIDEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 416 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !445
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !445
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0) #36
  ret void
}

declare void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3

declare void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui20NavMoveRequestCancelEv() local_unnamed_addr #3

declare void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3
end_hunk_4
