Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !353
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  store i8 0, ptr %i.ly, align 4, !tbaa !371
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i32 0, ptr %i.lz, align 4, !tbaa !372
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.s, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ma = and i32 %5, 4096
  %.not1135 = icmp ne i32 %i.ma, 0                ; 2 uses
  br i1 %i.dq, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  br i1 %.01085.shrunk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
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
  %spec.select1185 = select i1 %or.cond28, i1 %i.ny, i1 false
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.og = phi i1 [ %spec.select1185, %bb.cn ], [ false, %bb.cm ] ; 29 uses
  %not.1480 = xor i1 %i.cz, true                  ; 3 uses
  %spec.select1462 = and i1 %i.nr, %not.1480
  %i.oh = select i1 %i.ny, i1 %spec.select1462, i1 false ; 2 uses
  %.not1141 = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not1141, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.oh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.oi = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !354
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.ok = phi ptr [ %i.oj, %bb.cq ], [ %2, %bb.cp ]
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !330
  %i.om = icmp eq i8 %i.ol, 0
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %i.on = phi i1 [ false, %bb.co ], [ %i.om, %bb.cr ] ; 4 uses
  %or.cond38 = select i1 %i.db, i1 true, i1 %i.on ; 2 uses
  br i1 %or.cond38, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oo = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 9360 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 4392 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !295
  %i.os = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.or, i16 noundef zeroext 42) #36 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 4384
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !374
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !378 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oo, i64 9464
  store i32 %i.ow, ptr %i.ox, align 8, !tbaa !379
  %i.oy = load ptr, ptr %i.oq, align 8, !tbaa !295 ; 8 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 64 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !380
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oo, i64 9424
  store i32 %i.pa, ptr %i.pb, align 8, !tbaa !380
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 2 uses
  %i.pd = load float, ptr %i.pc, align 8, !tbaa !381
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oo, i64 9376
  store float %i.pd, ptr %i.pe, align 8, !tbaa !381
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oo, i64 9392 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 32 ; 2 uses
  %i.ph = load <2 x i32>, ptr %i.pg, align 8, !tbaa !211
  %i.pi = load <2 x i32>, ptr %i.pf, align 8, !tbaa !211
  store <2 x i32> %i.pi, ptr %i.pg, align 8, !tbaa !211
  store <2 x i32> %i.ph, ptr %i.pf, align 8, !tbaa !211
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oy, i64 40 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !382
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oo, i64 9400 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !382
  store ptr %i.pm, ptr %i.pj, align 8, !tbaa !382
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !382
  %i.pn = load <2 x i32>, ptr %i.oy, align 8, !tbaa !211
  %i.po = load <2 x i32>, ptr %i.op, align 8, !tbaa !211
  store <2 x i32> %i.po, ptr %i.oy, align 8, !tbaa !211
  store <2 x i32> %i.pn, ptr %i.op, align 8, !tbaa !211
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !383
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oo, i64 9368 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !383
  store ptr %i.ps, ptr %i.pp, align 8, !tbaa !383
  store ptr %i.pq, ptr %i.pr, align 8, !tbaa !383
  %i.pt = or i32 %i.ow, 4
  store i32 %i.pt, ptr %i.ov, align 8, !tbaa !378
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !384
  %i.pw = ptrtoint ptr %i.os to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = sdiv exact i64 %i.py, 44
  %i.qa = trunc i64 %i.pz to i32
  store i32 %i.qa, ptr %i.oz, align 8, !tbaa !380
  %i.qb = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !386
  store float %i.qc, ptr %i.pc, align 8, !tbaa !381
  %.pre1525 = load i32, ptr %i.df, align 4, !tbaa !220
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.qd = phi i32 [ %.pre1525, %bb.ct ], [ %i.ns, %bb.cs ]
  %i.qe = icmp eq i32 %i.qd, %i.t
  br i1 %i.qe, label %bb.cv, label %bb.eu

bb.cv:                                            ; preds = %bb.cu
  %i.qf = getelementptr inbounds nuw i8, ptr %.010971611, i64 106
  store i8 0, ptr %i.qf, align 2, !tbaa !387
  %i.qg = getelementptr inbounds nuw i8, ptr %.010971611, i64 88
  store i32 %3, ptr %i.qg, align 8, !tbaa !388
  %i.qh = getelementptr inbounds nuw i8, ptr %.010971611, i64 16
  store i32 %spec.select1180, ptr %i.qh, align 8, !tbaa !389
  %i.qi = getelementptr inbounds nuw i8, ptr %i.j, i64 232 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 8, !tbaa !233, !range !187, !noundef !188 ; 2 uses
  %i.qk = xor i8 %i.qj, 1
  %i.ql = getelementptr inbounds nuw i8, ptr %i.j, i64 5313
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !390
  %i.qm = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.qn = load float, ptr %i.qm, align 8, !tbaa !682
  %i.qo = load float, ptr %11, align 8, !tbaa !239
  %i.qp = fsub float %i.qn, %i.qo
  %i.qq = load float, ptr %i.aa, align 4, !tbaa !209
  %i.qr = fsub float %i.qp, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %.010971611, i64 92
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !672
  %i.qu = fadd float %i.qr, %i.qt                 ; 4 uses
  br i1 %i.s, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qv = getelementptr inbounds nuw i8, ptr %i.j, i64 228
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !391
  %i.qx = getelementptr inbounds nuw i8, ptr %.21101, i64 284
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !190
  %i.qz = fsub float %i.qw, %i.qy
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.ra = getelementptr inbounds nuw i8, ptr %i.j, i64 4400
  %i.rb = load float, ptr %i.ra, align 8, !tbaa !208
  %i.rc = fmul float %i.rb, 5.000000e-01
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.rd = phi float [ %i.qz, %bb.cw ], [ %i.rc, %bb.cx ] ; 4 uses
  br i1 %.310921620, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.re = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !350 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store i32 0, ptr %i.rg, align 4, !tbaa !365
  %i.rh = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !355 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !366
  store i32 %i.ri, ptr %i.rf, align 4, !tbaa !364
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 22
  store i8 0, ptr %i.rk, align 2, !tbaa !369
  %i.rl = getelementptr inbounds nuw i8, ptr %.010971611, i64 105
  store i8 1, ptr %i.rl, align 1, !tbaa !683
  br label %bb.dz

bb.da:                                            ; preds = %bb.cy
  br i1 %.01098.shrunk, label %bb.db, label %bb.dn

bb.db:                                            ; preds = %bb.da
  %i.rm = getelementptr inbounds nuw i8, ptr %i.j, i64 2842 ; 2 uses
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !221
  %i.ro = icmp ugt i16 %i.rn, 1
  br i1 %i.ro, label %bb.dc, label %bb.dn

bb.dc:                                            ; preds = %bb.db
  %i.rp = getelementptr inbounds nuw i8, ptr %i.j, i64 253
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !684, !range !187, !noundef !188
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.dn, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rs = getelementptr inbounds nuw i8, ptr %.010971611, i64 8 ; 5 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !350
  call fastcc void @_ZN5ImStbL18stb_textedit_clickEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.010971611, ptr noundef %i.rt, float noundef %i.qu, float noundef %i.rd)
  %i.ru = load i16, ptr %i.rm, align 2, !tbaa !221
  %i.rv = and i16 %i.ru, 1
  %i.rw = icmp eq i16 %i.rv, 0
  %i.rx = load ptr, ptr %i.rs, align 8, !tbaa !350 ; 4 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !364 ; 4 uses
  br i1 %i.rw, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %bb.dd
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.sa = getelementptr i8, ptr %.010971611, i64 32
  %.01097.val1232 = load ptr, ptr %i.sa, align 8, !tbaa !373
  %i.sb = sext i32 %i.ry to i64
  %i.sc = getelementptr i8, ptr %.01097.val1232, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -1
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a

bb.dq:                                            ; preds = %bb.dp
  %i.tm = getelementptr inbounds nuw i8, ptr %i.j, i64 253
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !684, !range !187, !noundef !188
  %i.to = trunc nuw i8 %i.tn to i1
  %i.tp = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !350 ; 2 uses
  br i1 %i.to, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call fastcc void @_ZN5ImStbL17stb_textedit_dragEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.010971611, ptr noundef %i.tq, float noundef %i.qu, float noundef %i.rd)
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  call fastcc void @_ZN5ImStbL18stb_textedit_clickEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.010971611, ptr noundef %i.tq, float noundef %i.qu, float noundef %i.rd)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.tr = getelementptr inbounds nuw i8, ptr %.010971611, i64 100
  store float -3.000000e-01, ptr %i.tr, align 4, !tbaa !367
  br label %bb.dz

bb.du:                                            ; preds = %bb.do, %bb.dn
  %i.ts = trunc nuw i8 %i.qj to i1
  br i1 %i.ts, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.tt = getelementptr inbounds nuw i8, ptr %.010971611, i64 105
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !683, !range !187, !noundef !188
  %i.tv = trunc nuw i8 %i.tu to i1
  br i1 %i.tv, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tw = getelementptr inbounds nuw i8, ptr %i.j, i64 204
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !685
  %i.ty = fcmp une float %i.tx, 0.000000e+00
  br i1 %i.ty, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tz = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.ua = load float, ptr %i.tz, align 8, !tbaa !686
  %i.ub = fcmp une float %i.ua, 0.000000e+00
  br i1 %i.ub, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.uc = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !350
  call fastcc void @_ZN5ImStbL17stb_textedit_dragEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.010971611, ptr noundef %i.ud, float noundef %i.qu, float noundef %i.rd)
  %i.ue = getelementptr inbounds nuw i8, ptr %.010971611, i64 100
  store float -3.000000e-01, ptr %i.ue, align 4, !tbaa !367
  %i.uf = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.uf, align 8, !tbaa !392
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dm, %bb.du, %bb.dv, %bb.dx, %bb.dy, %bb.dp, %bb.dt, %bb.cz
  %i.ug = getelementptr inbounds nuw i8, ptr %.010971611, i64 105 ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !683, !range !187, !noundef !188
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.uj = load i8, ptr %i.qi, align 8, !tbaa !233, !range !187, !noundef !188
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i8 0, ptr %i.ug, align 1, !tbaa !683
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.ul = and i32 %spec.select1180, 544
  %or.cond48.not = icmp eq i32 %i.ul, 32
  br i1 %or.cond48.not, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  %i.um = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 1, i32 noundef %i.t) #36
  br i1 %i.um, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i32 9, ptr %i.d, align 4, !tbaa !211
  %i.un = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextPjiPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.j, ptr noundef %i.d, i32 noundef %spec.select1180, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.un, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.uo = load i32, ptr %i.d, align 4, !tbaa !211
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.uo)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ed, %bb.eg, %bb.ec
  %i.up = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.uq = load i8, ptr %i.up, align 4, !tbaa !679, !range !187, !noundef !188
  %i.ur = trunc nuw i8 %i.uq to i1                ; 2 uses
  br i1 %i.ur, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.us = getelementptr inbounds nuw i8, ptr %i.j, i64 254
  %i.ut = load i8, ptr %i.us, align 2, !tbaa !687, !range !187, !noundef !188 ; 2 uses
  %i.uu = trunc nuw i8 %i.ut to i1
  %.not1186 = xor i1 %i.uu, true
  %i.uv = and i8 %i.ut, %i.mv
  %.not = icmp eq i8 %i.uv, 0
  %.mux = select i1 %.not1186, i1 true, i1 %i.cz
  br i1 %.not, label %bb.el, label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  br i1 %i.mu, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  %i.uw = or i1 %i.cz, %i.ur
  br label %bb.el

bb.el:                                            ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.ux = phi i1 [ %i.mu, %bb.ei ], [ false, %bb.ej ], [ %i.mu, %bb.ek ] ; 2 uses
  %or.cond51 = phi i1 [ %.mux, %bb.ei ], [ %i.cz, %bb.ej ], [ %i.uw, %bb.ek ]
  %i.uy = getelementptr inbounds nuw i8, ptr %i.j, i64 2992 ; 4 uses
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !688
  %i.va = icmp sgt i32 %i.uz, 0
  br i1 %i.va, label %bb.em, label %bb.eu

bb.em:                                            ; preds = %bb.el
  %or.cond54 = select i1 %or.cond51, i1 true, i1 %i.dq
  br i1 %or.cond54, label %.loopexit1490, label %.lr.ph

.lr.ph:                                           ; preds = %bb.em
  %i.vb = getelementptr inbounds nuw i8, ptr %i.j, i64 3000
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph, %bb.eq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.eq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !382
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !221 ; 2 uses
  %i.vf = zext i16 %i.ve to i32
  store i32 %i.vf, ptr %i.e, align 4, !tbaa !211
  %i.vg = icmp eq i16 %i.ve, 9
  br i1 %i.vg, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vh = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextPjiPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.j, ptr noundef %i.e, i32 noundef %spec.select1180, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.vh, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.vi = load i32, ptr %i.e, align 4, !tbaa !211
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.vi)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vj = load i32, ptr %i.uy, align 8, !tbaa !688
  %i.vk = sext i32 %i.vj to i64
  %i.vl = icmp slt i64 %indvars.iv.next, %i.vk
  br i1 %i.vl, label %bb.en, label %.loopexit1490, !llvm.loop !661

.loopexit1490:                                    ; preds = %bb.eq, %bb.em
  %i.vm = getelementptr inbounds nuw i8, ptr %i.j, i64 2996 ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !393
  %i.vo = icmp slt i32 %i.vn, 0
  br i1 %i.vo, label %bb.er, label %_ZN8ImVectorItE6resizeEi.exit

bb.er:                                            ; preds = %.loopexit1490
  %i.vp = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.j, i64 3000 ; 3 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !382 ; 2 uses
  %.not6.i.i1251 = icmp eq ptr %i.vr, null
  br i1 %.not6.i.i1251, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.vs = load i32, ptr %i.uy, align 8, !tbaa !394
  %i.vt = sext i32 %i.vs to i64
  %i.vu = shl nsw i64 %i.vt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.vp, ptr nonnull align 2 %i.vr, i64 %i.vu, i1 false)
  %i.vv = load ptr, ptr %i.vq, align 8, !tbaa !382
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.vv) #36
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  store ptr %i.vp, ptr %i.vq, align 8, !tbaa !382
  store i32 0, ptr %i.vm, align 4, !tbaa !393
  br label %_ZN8ImVectorItE6resizeEi.exit

_ZN8ImVectorItE6resizeEi.exit:                    ; preds = %.loopexit1490, %bb.et
  store i32 0, ptr %i.uy, align 8, !tbaa !394
  br label %bb.eu

bb.eu:                                            ; preds = %bb.el, %_ZN8ImVectorItE6resizeEi.exit, %bb.cu
  %i.vw = phi i1 [ %i.ux, %bb.el ], [ %i.ux, %_ZN8ImVectorItE6resizeEi.exit ], [ %i.mu, %bb.cu ] ; 3 uses
  %i.vx = load i32, ptr %i.df, align 4, !tbaa !220
  %i.vy = icmp eq i32 %i.vx, %i.t
  br i1 %i.vy, label %bb.ev, label %.thread1646

bb.ev:                                            ; preds = %bb.eu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.j, i64 5312
  %i.wa = load i8, ptr %i.vz, align 8, !tbaa !232, !range !187, !noundef !188
  %26 = or i8 %i.wa, %.01093
  %or.cond57.not = icmp eq i8 %26, 0
  br i1 %or.cond57.not, label %bb.ew, label %.thread1653

bb.ew:                                            ; preds = %bb.ev
  %i.wb = load float, ptr %i.ab, align 8, !tbaa !206
  %i.wc = fsub float %.sroa.01400.4.vec.extract1408, %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.j, i64 4400 ; 5 uses
  %i.we = load float, ptr %i.wd, align 8, !tbaa !208
  %i.wf = fdiv float %i.wc, %i.we
  %i.wg = fptosi float %i.wf to i32
  %i.wh = call noundef i32 @llvm.smax.i32(i32 %i.wg, i32 1) ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.010971611, i64 8 ; 12 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !350
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  store i32 %i.wh, ptr %i.wk, align 4, !tbaa !372
  %i.wl = getelementptr inbounds nuw i8, ptr %i.j, i64 253
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !684, !range !187, !noundef !188
  %i.wn = zext nneg i8 %i.wm to i32
  %i.wo = shl nuw nsw i32 %i.wn, 22               ; 10 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.j, i64 254 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.j, i64 252 ; 8 uses
  %.in.in = select i1 %i.vw, ptr %i.wp, ptr %i.wq
  %.in = load i8, ptr %.in.in, align 2, !tbaa !233, !range !187, !noundef !188
  %i.wr = trunc nuw i8 %.in to i1                 ; 4 uses
  br i1 %i.vw, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %bb.ew
  %i.ws = load i8, ptr %i.wq, align 4, !tbaa !679, !range !187, !noundef !188
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.wu = getelementptr inbounds nuw i8, ptr %i.j, i64 255
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !689, !range !187, !noundef !188
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wx = load i8, ptr %i.wp, align 2, !tbaa !687, !range !187, !noundef !188
  %i.wy = trunc nuw i8 %i.wx to i1
  %i.wz = xor i1 %i.wy, true
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ew
  %i.xa = phi i1 [ false, %bb.ey ], [ false, %bb.ex ], [ false, %bb.ew ], [ %i.wz, %bb.ez ] ; 4 uses
  %i.xb = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4665, i32 noundef 1, i32 noundef %i.t) #36
  br i1 %i.xb, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xc = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8714, i32 noundef 1, i32 noundef %i.t) #36
  %i.xd = and i1 %i.db, %i.xc
  %i.xe = xor i1 %i.xd, true
  %brmerge1189 = or i1 %i.cz, %i.xe               ; 2 uses
  %.not1195 = xor i1 %i.s, true
  %brmerge1196 = or i1 %brmerge1189, %.not1195
  %not.brmerge1189 = xor i1 %brmerge1189, true
  br i1 %brmerge1196, label %bb.fe, label %bb.fd

bb.fc:                                            ; preds = %bb.fa
  %.not1190 = xor i1 %i.db, true
  %brmerge1191 = or i1 %i.cz, %.not1190           ; 2 uses
  %.not1192 = xor i1 %i.s, true
  %brmerge1193 = or i1 %brmerge1191, %.not1192
  %not.brmerge1191 = xor i1 %brmerge1191, true
  br i1 %brmerge1193, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.xf = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !365
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !366
  %i.xk = icmp ne i32 %i.xh, %i.xj
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fb, %bb.fc, %bb.fd
  %i.xl = phi i1 [ %i.xk, %bb.fd ], [ %not.brmerge1191, %bb.fc ], [ %not.brmerge1189, %bb.fb ] ; 5 uses
  %i.xm = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4644, i32 noundef 0, i32 noundef %i.t) #36
  br i1 %i.xm, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.xn = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4617, i32 noundef 0, i32 noundef %i.t) #36
  %or.cond65.not = and i1 %i.db, %i.xn            ; 2 uses
  %brmerge1199.not = and i1 %i.s, %or.cond65.not
  %.mux1200 = select i1 %or.cond65.not, i1 true, i1 %i.xl
  br i1 %brmerge1199.not, label %bb.fh, label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %i.xo = and i32 %5, 67109888
  %brmerge1203.not = icmp eq i32 %i.xo, 67108864
  %.mux1204 = select i1 %i.db, i1 true, i1 %i.xl
  br i1 %brmerge1203.not, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.xp = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !365
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !366
  %i.xu = icmp ne i32 %i.xr, %i.xt
  %i.xv = or i1 %i.xl, %i.xu
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.ff, %bb.fh
  %or.cond113 = phi i1 [ %.mux1204, %bb.fg ], [ %.mux1200, %bb.ff ], [ %i.xv, %bb.fh ]
  %i.xw = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4663, i32 noundef 1, i32 noundef %i.t) #36
  br i1 %i.xw, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xx = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8713, i32 noundef 1, i32 noundef %i.t) #36
  br i1 %i.xx, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.xy = phi i1 [ false, %bb.fj ], [ %not.1480, %bb.fk ]
  %i.xz = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4667, i32 noundef 1, i32 noundef %i.t) #36
  %not.or.cond69 = and i1 %i.xz, %not.1480
  %i.ya = and i1 %i.dd, %not.or.cond69            ; 3 uses
  %i.yb = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4666, i32 noundef 1, i32 noundef %i.t) #36
  br i1 %i.yb, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yc = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 12859, i32 noundef 1, i32 noundef %i.t) #36
  %.not70 = xor i1 %i.yc, true
  %or.cond73 = or i1 %i.cz, %.not70
  br i1 %or.cond73, label %bb.fp, label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  br i1 %i.cz, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fn
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
  %or.cond110 = phi i1 [ %i.ya, %bb.fn ], [ %i.ya, %bb.fm ], [ %i.dd, %bb.fo ]
  %i.yd = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4642, i32 noundef 0, i32 noundef %i.t) #36
  %i.ye = load i32, ptr %i.q, align 8, !tbaa !690
  %i.yf = and i32 %i.ye, 2
  %.not1145 = icmp eq i32 %i.yf, 0
  br i1 %.not1145, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yg = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !691
  %i.yi = trunc i32 %i.yh to i1
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.yj = phi i1 [ false, %bb.fp ], [ %i.yi, %bb.fq ]
  %i.yk = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 525, i1 noundef zeroext true) #36
  br i1 %i.yk, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yl = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 627, i1 noundef zeroext true) #36
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.ym = phi i1 [ true, %bb.fr ], [ %i.yl, %bb.fs ]
  br i1 %i.yj, label %bb.fu, label %.sink.split1730

bb.fu:                                            ; preds = %bb.ft
  %i.yn = getelementptr inbounds nuw i8, ptr %i.j, i64 81 ; 2 uses
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !228, !range !187, !noundef !188
  %i.yp = trunc nuw i8 %i.yo to i1
  %i.yq = select i1 %i.yp, i32 635, i32 637
  %i.yr = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef %i.yq, i1 noundef zeroext false) #36
  br i1 %i.yr, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ys = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 636, i1 noundef zeroext false) #36
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %i.yt = phi i1 [ %i.ys, %bb.fv ], [ true, %bb.fu ] ; 2 uses
  %i.yu = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 526, i32 noundef 1, i32 noundef %i.t) #36
  br i1 %i.yu, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yv = load i8, ptr %i.yn, align 1, !tbaa !228, !range !187, !noundef !188
  %i.yw = trunc nuw i8 %i.yv to i1
  %i.yx = select i1 %i.yw, i32 637, i32 635
  br label %.sink.split1730

.sink.split1730:                                  ; preds = %bb.ft, %bb.fx
  %.sink = phi i32 [ %i.yx, %bb.fx ], [ 526, %bb.ft ]
  %.ph1731 = phi i1 [ %i.yt, %bb.fx ], [ false, %bb.ft ]
  %i.yy = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef %.sink, i32 noundef 1, i32 noundef %i.t) #36
  br label %bb.fy

bb.fy:                                            ; preds = %.sink.split1730, %bb.fw
  %i.yz = phi i1 [ %i.yt, %bb.fw ], [ %.ph1731, %.sink.split1730 ] ; 2 uses
  %i.za = phi i1 [ true, %bb.fw ], [ %i.yy, %.sink.split1730 ]
  %i.zb = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 513, i1 noundef zeroext true) #36
  br i1 %i.zb, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.zc = select i1 %i.wr, i32 2097164, i32 2097152
  %i.zd = select i1 %i.xa, i32 2097156, i32 %i.zc
  %i.ze = or disjoint i32 %i.zd, %i.wo
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(116) %.010971611, i32 noundef %i.ze)
end_hunk_1
begin_hunk_2_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
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
  br i1 %i.vw, label %bb.ha, label %bb.hd

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
  %.not1151 = icmp eq i8 %i.acj, 0                ; 3 uses
  %..01093 = select i1 %.not1151, i8 1, i8 %.01093
  %not..not1151 = xor i1 %.not1151, true          ; 2 uses
  %.1210 = select i1 %not..not1151, i1 %i.ny, i1 false
  %.1211 = select i1 %not..not1151, i1 %i.og, i1 false
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
  %.01080 = phi i1 [ %i.og, %bb.fz ], [ %i.og, %bb.gb ], [ %i.og, %bb.ge ], [ %i.og, %bb.gf ], [ %i.og, %bb.gi ], [ %i.og, %bb.gj ], [ %i.og, %bb.gl ], [ %i.og, %bb.gn ], [ %i.og, %bb.gp ], [ %i.og, %bb.gr ], [ %i.og, %bb.gv ], [ %.1211, %bb.hq ], [ %i.og, %bb.hi ], [ %i.og, %bb.hk ], [ %i.og, %bb.hs ], [ %i.og, %bb.hu ], [ %i.og, %bb.ie ], [ %i.og, %bb.ib ], [ false, %bb.hp ], [ %i.og, %bb.if ], [ %i.og, %bb.hd ], [ %i.og, %bb.hn ], [ %i.og, %bb.hj ], [ %i.og, %_ZN8ImVectorIcED2Ev.exit ], [ %i.og, %bb.ig ], [ %i.og, %bb.id ], [ %i.og, %.critedge1209 ], [ %i.og, %bb.hh ]
  %.11073 = phi i1 [ false, %bb.fz ], [ false, %bb.gb ], [ false, %bb.ge ], [ false, %bb.gf ], [ false, %bb.gi ], [ false, %bb.gj ], [ false, %bb.gl ], [ false, %bb.gn ], [ false, %bb.gp ], [ false, %bb.gr ], [ false, %bb.gv ], [ false, %bb.hq ], [ true, %bb.hi ], [ false, %bb.hk ], [ false, %bb.hs ], [ false, %bb.hu ], [ false, %bb.ie ], [ false, %bb.ib ], [ false, %bb.hp ], [ false, %bb.if ], [ false, %bb.hd ], [ false, %bb.hn ], [ true, %bb.hj ], [ false, %_ZN8ImVectorIcED2Ev.exit ], [ false, %bb.ig ], [ false, %bb.id ], [ true, %.critedge1209 ], [ true, %bb.hh ] ; 5 uses
  %i.afq = phi i1 [ true, %bb.fz ], [ true, %bb.gb ], [ true, %bb.ge ], [ true, %bb.gf ], [ true, %bb.gi ], [ true, %bb.gj ], [ true, %bb.gl ], [ true, %bb.gn ], [ true, %bb.gp ], [ true, %bb.gr ], [ true, %bb.gv ], [ %.1212, %bb.hq ], [ true, %bb.hi ], [ true, %bb.hk ], [ true, %bb.hs ], [ true, %bb.hu ], [ true, %bb.ie ], [ true, %bb.ib ], [ %i.cz, %bb.hp ], [ true, %bb.if ], [ true, %bb.hd ], [ true, %bb.hn ], [ true, %bb.hj ], [ true, %_ZN8ImVectorIcED2Ev.exit ], [ true, %bb.ig ], [ true, %bb.id ], [ true, %.critedge1209 ], [ true, %bb.hh ]
  %i.afr = load ptr, ptr %i.wi, align 8, !tbaa !350 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !365
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !366
  %i.afw = icmp ne i32 %i.aft, %i.afv
  %narrow = select i1 %i.afw, i1 %.01082.shrunk, i1 false
  %i.afx = or i1 %.01080, %narrow                 ; 5 uses
  %.pre1532 = load i32, ptr %i.df, align 4, !tbaa !220
  %i.afy = icmp eq i32 %.pre1532, %i.t
  br i1 %i.afy, label %bb.ip, label %.thread1646

bb.ip:                                            ; preds = %bb.io
  br i1 %i.afq, label %.thread1653, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.afz = and i32 %5, 128
  %.not1154 = icmp eq i32 %i.afz, 0
  br i1 %.not1154, label %bb.iu, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aga = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !350 ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.010971611, i64 24 ; 4 uses
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !355 ; 4 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 32
  %i.agf = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.age, i32 noundef 0, i32 noundef %i.agd, i32 noundef range(i32 -2147483648, 2147483647) 0) ; 6 uses
  %.not.i.i1254 = icmp ne ptr %i.agf, null
  %i.agg = icmp sgt i32 %i.agd, 0
  %or.cond.i.i = and i1 %i.agg, %.not.i.i1254
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit

.lr.ph.i.i:                                       ; preds = %bb.ir
  %i.agh = getelementptr i8, ptr %.010971611, i64 32 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.agd to i64 ; 2 uses
  %xtraiter1770 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.agi = icmp ult i32 %i.agd, 4
  br i1 %i.agi, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.is

bb.is:                                            ; preds = %bb.is, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.is ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.is ]
  %.val.i.i = load ptr, ptr %i.agh, align 8, !tbaa !373
  %i.agj = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !330
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 %indvars.iv.i.i
  store i8 %i.agk, ptr %i.agl, align 1, !tbaa !330
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.agh, align 8, !tbaa !373
  %i.agm = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !330
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agf, i64 %indvars.iv.next.i.i
  store i8 %i.agn, ptr %i.ago, align 1, !tbaa !330
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.agh, align 8, !tbaa !373
  %i.agp = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !330
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agf, i64 %indvars.iv.next.i.i.1
  store i8 %i.agq, ptr %i.agr, align 1, !tbaa !330
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.agh, align 8, !tbaa !373
  %i.ags = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !330
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agf, i64 %indvars.iv.next.i.i.2
  store i8 %i.agt, ptr %i.agu, align 1, !tbaa !330
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, label %bb.is, !llvm.loop !11

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa: ; preds = %bb.is
  %lcmp.mod1771.not = icmp eq i64 %xtraiter1770, 0
  br i1 %lcmp.mod1771.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa ]
  %lcmp.mod1772 = icmp ne i64 %xtraiter1770, 0
  call void @llvm.assume(i1 %lcmp.mod1772)
  br label %bb.it

bb.it:                                            ; preds = %bb.it, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.it ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.it ]
  %.val.i.i.epil = load ptr, ptr %i.agh, align 8, !tbaa !373
  %i.agv = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !330
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agf, i64 %indvars.iv.i.i.epil
  store i8 %i.agw, ptr %i.agx, align 1, !tbaa !330
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1770
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %bb.it, !llvm.loop !663

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit: ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %bb.it, %bb.ir
  %i.agy = load i32, ptr %i.agc, align 8, !tbaa !355 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !354 ; 2 uses
  %i.ahb = sext i32 %i.agy to i64
  %i.ahc = getelementptr inbounds i8, ptr %i.aha, i64 %i.ahb
  %i.ahd = load i8, ptr %i.ahc, align 1
  store i8 %i.ahd, ptr %i.aha, align 1
  %i.ahe = getelementptr inbounds nuw i8, ptr %.010971611, i64 106
  store i8 1, ptr %i.ahe, align 2, !tbaa !387
  %i.ahf = load i32, ptr %i.agc, align 8, !tbaa !355
  %i.ahg = sub nsw i32 %i.ahf, %i.agy
  store i32 %i.ahg, ptr %i.agc, align 8, !tbaa !355
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  store i32 0, ptr %i.ahh, align 4, !tbaa !366
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agb, i64 4
  store i32 0, ptr %i.ahi, align 4, !tbaa !365
  store i32 0, ptr %i.agb, align 4, !tbaa !364
  br label %.thread1653

bb.iu:                                            ; preds = %bb.iq
  %i.ahj = getelementptr inbounds nuw i8, ptr %.010971611, i64 64
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !671 ; 3 uses
  %i.ahl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ahk) #35
  %.not1155 = icmp eq i32 %i.ahl, 0
  br i1 %.not1155, label %.thread1653, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ahm = getelementptr inbounds nuw i8, ptr %.010971611, i64 56
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !695
  %i.aho = add nsw i32 %i.ahn, -1                 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !350
  call fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.010971611, ptr noundef %i.ahq, ptr noundef nonnull %i.ahk, i32 noundef %i.aho)
  br label %.thread1653

.thread1653:                                      ; preds = %bb.ev, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, %bb.iv, %bb.iu, %bb.ip
  %.3109616361664 = phi i8 [ %.21095, %bb.ip ], [ %.21095, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.21095, %bb.iv ], [ %.21095, %bb.iu ], [ %.01093, %bb.ev ] ; 3 uses
  %.1108716381663 = phi float [ %.01086, %bb.ip ], [ %.01086, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01086, %bb.iv ], [ %.01086, %bb.iu ], [ %i.ek, %bb.ev ] ; 3 uses
  %.1108316401662 = phi i1 [ %.01082.shrunk, %bb.ip ], [ %.01082.shrunk, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01082.shrunk, %bb.iv ], [ %.01082.shrunk, %bb.iu ], [ %i.ny, %bb.ev ] ; 3 uses
  %.1108116421661 = phi i1 [ %i.afx, %bb.ip ], [ %i.afx, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.afx, %bb.iv ], [ %i.afx, %bb.iu ], [ %i.og, %bb.ev ] ; 3 uses
  %.2107416441660 = phi i1 [ %.11073, %bb.ip ], [ %.11073, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11073, %bb.iv ], [ %.11073, %bb.iu ], [ false, %bb.ev ] ; 3 uses
  %.01075 = phi i1 [ false, %bb.ip ], [ true, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ true, %bb.iv ], [ false, %bb.iu ], [ false, %bb.ev ] ; 2 uses
  %.01062 = phi ptr [ null, %bb.ip ], [ @.str, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.ahk, %bb.iv ], [ null, %bb.iu ], [ null, %bb.ev ] ; 2 uses
  %.01057 = phi i32 [ 0, %bb.ip ], [ 0, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.aho, %bb.iv ], [ 0, %bb.iu ], [ 0, %bb.ev ] ; 2 uses
  %i.ahr = and i32 %5, 10223616
  %.not1156 = icmp eq i32 %i.ahr, 0
  br i1 %.not1156, label %bb.jt, label %bb.iw

bb.iw:                                            ; preds = %.thread1653
  %i.ahs = and i32 %5, 262144
  %.not1157 = icmp eq i32 %i.ahs, 0
  br i1 %.not1157, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aht = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 0, i32 noundef %i.t) #36
  br i1 %i.aht, label %.thread1438, label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.ahu = and i32 %5, 524288
  %.not1158 = icmp eq i32 %i.ahu, 0
  br i1 %.not1158, label %.critedge1214, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ahv = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 515, i1 noundef zeroext true) #36
  br i1 %i.ahv, label %.thread1438, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ahw = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 516, i1 noundef zeroext true) #36
  br i1 %i.ahw, label %.thread1438, label %.critedge1214

.critedge1214:                                    ; preds = %bb.iy, %bb.ja
  %i.ahx = and i32 %5, 8388608
  %.not1159 = icmp eq i32 %i.ahx, 0
  br i1 %.not1159, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %.critedge1214
  %i.ahy = getelementptr inbounds nuw i8, ptr %.010971611, i64 106
  %i.ahz = load i8, ptr %i.ahy, align 2, !tbaa !387, !range !187, !noundef !188
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %.thread1438, label %bb.jc

bb.jc:                                            ; preds = %.critedge1214, %bb.jb
  %i.aib = and i32 %5, 1048576
  %.not1160 = icmp eq i32 %i.aib, 0
  br i1 %.not1160, label %bb.jt, label %.thread1438

.thread1438:                                      ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.ix, %bb.jc
  %.010551443 = phi i32 [ 0, %bb.jc ], [ 0, %bb.jb ], [ 516, %bb.ja ], [ 515, %bb.iz ], [ 512, %bb.ix ]
  %.010561442 = phi i32 [ 1048576, %bb.jc ], [ 8388608, %bb.jb ], [ 524288, %bb.ja ], [ 524288, %bb.iz ], [ 262144, %bb.ix ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.aic = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aic, i8 0, i64 40, i1 false)
  store ptr %i.j, ptr %16, align 8, !tbaa !396
  %i.aid = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.010561442, ptr %i.aid, align 8, !tbaa !397
  %i.aie = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %spec.select1180, ptr %i.aie, align 4, !tbaa !398
  %i.aif = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %7, ptr %i.aif, align 8, !tbaa !399
  br i1 %i.cz, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %.thread1438
  %i.aig = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !354
  br label %bb.je

bb.je:                                            ; preds = %.thread1438, %bb.jd
  %i.aii = phi ptr [ %i.aih, %bb.jd ], [ %2, %.thread1438 ] ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.010971611, i64 72 ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.010971611, i64 24 ; 4 uses
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !355 ; 2 uses
  %i.aim = add nsw i32 %i.ail, 1                  ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.010971611, i64 76 ; 2 uses
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !359 ; 4 uses
  %.not1486 = icmp slt i32 %i.ail, %i.aio
  br i1 %.not1486, label %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge, label %bb.jf

._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge:     ; preds = %bb.je
  %.phi.trans.insert1533 = getelementptr inbounds nuw i8, ptr %.010971611, i64 80
  %.pre1534 = load ptr, ptr %.phi.trans.insert1533, align 8, !tbaa !696
  br label %_ZN8ImVectorIcE6resizeEi.exit1258

bb.jf:                                            ; preds = %bb.je
  %.not.i.i1255 = icmp eq i32 %i.aio, 0
  br i1 %.not.i.i1255, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aip = sdiv i32 %i.aio, 2
  %i.aiq = add nsw i32 %i.aip, %i.aio
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256:    ; preds = %bb.jg, %bb.jf
  %i.air = phi i32 [ %i.aiq, %bb.jg ], [ 8, %bb.jf ]
  %i.ais = call noundef i32 @llvm.smax.i32(i32 %i.air, i32 %i.aim) ; 2 uses
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ait) #36 ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.010971611, i64 80 ; 3 uses
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !360 ; 2 uses
  %.not6.i.i1257 = icmp eq ptr %i.aiw, null
  br i1 %.not6.i.i1257, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256
  %i.aix = load i32, ptr %i.aij, align 8, !tbaa !361
  %i.aiy = sext i32 %i.aix to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aiu, ptr nonnull align 1 %i.aiw, i64 %i.aiy, i1 false)
  %i.aiz = load ptr, ptr %i.aiv, align 8, !tbaa !360
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aiz) #36
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1256
  store ptr %i.aiu, ptr %i.aiv, align 8, !tbaa !360
  store i32 %i.ais, ptr %i.ain, align 4, !tbaa !359
  %.pre1535 = load i32, ptr %i.aik, align 8, !tbaa !355
  %.pre1553 = add nsw i32 %.pre1535, 1
  br label %_ZN8ImVectorIcE6resizeEi.exit1258

_ZN8ImVectorIcE6resizeEi.exit1258:                ; preds = %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge, %bb.ji
  %.pre-phi1554 = phi i32 [ %i.aim, %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge ], [ %.pre1553, %bb.ji ]
  %i.aja = phi ptr [ %.pre1534, %._ZN8ImVectorIcE6resizeEi.exit1258_crit_edge ], [ %i.aiu, %bb.ji ]
  store i32 %i.aim, ptr %i.aij, align 8, !tbaa !361
  %i.ajb = getelementptr inbounds nuw i8, ptr %.010971611, i64 80
  %i.ajc = sext i32 %.pre-phi1554 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aja, ptr align 1 %i.aii, i64 %i.ajc, i1 false)
  %i.ajd = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %.010551443, ptr %i.ajd, align 4, !tbaa !697
  %i.aje = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store ptr %i.aii, ptr %i.aje, align 8, !tbaa !400
  %i.ajf = load i32, ptr %i.aik, align 8, !tbaa !355
  %i.ajg = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store i32 %i.ajf, ptr %i.ajg, align 8, !tbaa !401
  %i.ajh = getelementptr inbounds nuw i8, ptr %.010971611, i64 88
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !388
  %i.ajj = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !402
  %i.ajk = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store i8 0, ptr %i.ajk, align 8, !tbaa !403
  %i.ajl = getelementptr inbounds nuw i8, ptr %.010971611, i64 8 ; 4 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !350 ; 3 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !364 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 2 uses
  store i32 %i.ajn, ptr %i.ajo, align 4, !tbaa !404
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !365 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store i32 %i.ajq, ptr %i.ajr, align 8, !tbaa !405
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !366 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %16, i64 60 ; 2 uses
  store i32 %i.ajt, ptr %i.aju, align 4, !tbaa !406
  %i.ajv = call noundef i32 %6(ptr noundef nonnull %16) #36 ; 0 uses
  %i.ajw = load i8, ptr %i.ajk, align 8, !tbaa !403, !range !187, !noundef !188
  %i.ajx = trunc nuw i8 %i.ajw to i1              ; 4 uses
  %i.ajy = load i32, ptr %i.ajo, align 4, !tbaa !404 ; 3 uses
  %i.ajz = icmp ne i32 %i.ajy, %i.ajn
  %or.cond120 = or i1 %i.ajz, %i.ajx
  br i1 %or.cond120, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1258
  %i.aka = load ptr, ptr %i.ajl, align 8, !tbaa !350
  store i32 %i.ajy, ptr %i.aka, align 4, !tbaa !364
  %i.akb = getelementptr inbounds nuw i8, ptr %.010971611, i64 104
  store i8 1, ptr %i.akb, align 8, !tbaa !392
  br label %bb.jk

bb.jk:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1258, %bb.jj
  %i.akc = load i32, ptr %i.ajr, align 8, !tbaa !405 ; 4 uses
  %i.akd = icmp ne i32 %i.akc, %i.ajq
  %or.cond123 = or i1 %i.akd, %i.ajx
  br i1 %or.cond123, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %bb.jk
  %i.ake = icmp eq i32 %i.akc, %i.ajy
  %.pre1536 = load ptr, ptr %i.ajl, align 8, !tbaa !350 ; 2 uses
  br i1 %i.ake, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.akf = load i32, ptr %.pre1536, align 4, !tbaa !364
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jl, %bb.jm
  %i.akg = phi i32 [ %i.akf, %bb.jm ], [ %i.akc, %bb.jl ]
  %i.akh = getelementptr inbounds nuw i8, ptr %.pre1536, i64 4
  store i32 %i.akg, ptr %i.akh, align 4, !tbaa !365
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jk, %bb.jn
  %i.aki = load i32, ptr %i.aju, align 4, !tbaa !406 ; 3 uses
  %i.akj = icmp ne i32 %i.aki, %i.ajt
  %or.cond126 = or i1 %i.akj, %i.ajx
  br i1 %or.cond126, label %bb.jp, label %.thread1444

bb.jp:                                            ; preds = %bb.jo
  %i.akk = icmp eq i32 %i.aki, %i.akc
  %.pre1537 = load ptr, ptr %i.ajl, align 8, !tbaa !350 ; 2 uses
  br i1 %i.akk, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.akl = getelementptr inbounds nuw i8, ptr %.pre1537, i64 4
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !365
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.akn = phi i32 [ %i.akm, %bb.jq ], [ %i.aki, %bb.jp ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.pre1537, i64 8
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !366
  br i1 %i.ajx, label %bb.js, label %.thread1444

bb.js:                                            ; preds = %bb.jr
  %i.akp = load ptr, ptr %i.ajb, align 8, !tbaa !696
  %i.akq = load i32, ptr %i.aij, align 8, !tbaa !698
  %i.akr = add nsw i32 %i.akq, -1
  %i.aks = load ptr, ptr %i.aje, align 8, !tbaa !400
  %i.akt = load i32, ptr %i.ajg, align 8, !tbaa !401
  call fastcc void @_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i(ptr noundef nonnull %.010971611, ptr noundef %i.akp, i32 noundef %i.akr, ptr noundef %i.aks, i32 noundef %i.akt)
  %i.aku = load i32, ptr %i.ajg, align 8, !tbaa !401
  store i32 %i.aku, ptr %i.aik, align 8, !tbaa !355
  %i.akv = getelementptr inbounds nuw i8, ptr %.010971611, i64 100
  store float -3.000000e-01, ptr %i.akv, align 4, !tbaa !367
  br label %.thread1444

.thread1444:                                      ; preds = %bb.jo, %bb.js, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jc, %.thread1444, %.thread1653
  br i1 %i.cz, label %.thread1646, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.akw = getelementptr inbounds nuw i8, ptr %.010971611, i64 32
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !373 ; 2 uses
  %i.aky = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.akx, ptr noundef nonnull dereferenceable(1) %2) #35
  %.not1162 = icmp eq i32 %i.aky, 0
  br i1 %.not1162, label %.thread1646, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.akz = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !355
  br label %.thread1646

.thread1646:                                      ; preds = %bb.eu, %bb.jt, %bb.ju, %bb.jv, %bb.io
  %.210741643 = phi i1 [ %.11073, %bb.io ], [ %.2107416441660, %bb.jt ], [ %.2107416441660, %bb.jv ], [ %.2107416441660, %bb.ju ], [ false, %bb.eu ]
  %.110811641 = phi i1 [ %i.afx, %bb.io ], [ %.1108116421661, %bb.jt ], [ %.1108116421661, %bb.jv ], [ %.1108116421661, %bb.ju ], [ %i.og, %bb.eu ] ; 5 uses
  %.110831639 = phi i1 [ %.01082.shrunk, %bb.io ], [ %.1108316401662, %bb.jt ], [ %.1108316401662, %bb.jv ], [ %.1108316401662, %bb.ju ], [ %i.ny, %bb.eu ] ; 7 uses
  %.110871637 = phi float [ %.01086, %bb.io ], [ %.1108716381663, %bb.jt ], [ %.1108716381663, %bb.jv ], [ %.1108716381663, %bb.ju ], [ %i.ek, %bb.eu ] ; 3 uses
  %.310961635 = phi i8 [ %.21095, %bb.io ], [ %.3109616361664, %bb.jt ], [ %.3109616361664, %bb.jv ], [ %.3109616361664, %bb.ju ], [ %.01093, %bb.eu ]
  %.21077 = phi i1 [ false, %bb.io ], [ %.01075, %bb.jt ], [ true, %bb.jv ], [ %.01075, %bb.ju ], [ false, %bb.eu ] ; 4 uses
  %.21064 = phi ptr [ null, %bb.io ], [ %.01062, %bb.jt ], [ %i.akx, %bb.jv ], [ %.01062, %bb.ju ], [ null, %bb.eu ] ; 4 uses
  %.21059 = phi i32 [ 0, %bb.io ], [ %.01057, %bb.jt ], [ %i.ala, %bb.jv ], [ %.01057, %bb.ju ], [ 0, %bb.eu ] ; 4 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.j, i64 9336 ; 2 uses
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !407
  %i.ald = icmp eq i32 %i.alc, %i.t
  br i1 %i.ald, label %bb.jw, label %bb.kb

bb.jw:                                            ; preds = %.thread1646
  %i.ale = load i32, ptr %i.df, align 4, !tbaa !220
  %.not1163 = icmp eq i32 %i.ale, %i.t
  br i1 %.not1163, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.alf = call noundef zeroext i1 @_ZN5ImGui26IsItemDeactivatedAfterEditEv() #36
  %.not127 = xor i1 %i.alf, true
  %or.cond130 = or i1 %i.cz, %.not127
  br i1 %or.cond130, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.alg = getelementptr inbounds nuw i8, ptr %i.j, i64 9352
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !408 ; 2 uses
  %i.ali = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.alh, ptr noundef nonnull dereferenceable(1) %2) #35
  %.not1164 = icmp eq i32 %i.ali, 0
  br i1 %.not1164, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.alj = getelementptr inbounds nuw i8, ptr %i.j, i64 9344
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !699
  %i.all = add nsw i32 %i.alk, -1
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jw
  %.31078 = phi i1 [ %.21077, %bb.jx ], [ true, %bb.jz ], [ %.21077, %bb.jy ], [ %.21077, %bb.jw ]
  %.31065 = phi ptr [ %.21064, %bb.jx ], [ %i.alh, %bb.jz ], [ %.21064, %bb.jy ], [ %.21064, %bb.jw ]
  %.31060 = phi i32 [ %.21059, %bb.jx ], [ %i.all, %bb.jz ], [ %.21059, %bb.jy ], [ %.21059, %bb.jw ]
  store i32 0, ptr %i.alb, align 8, !tbaa !407
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
  %i.alm = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.alm, i8 0, i64 40, i1 false)
  store ptr %i.j, ptr %17, align 8, !tbaa !396
  %i.aln = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 4194304, ptr %i.aln, align 8, !tbaa !397
  %i.alo = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %spec.select1180, ptr %i.alo, align 4, !tbaa !398
  %i.alp = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %2, ptr %i.alp, align 8, !tbaa !400
  %i.alq = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store i32 %.41061, ptr %i.alq, align 8, !tbaa !401
  %i.alr = add nsw i32 %.41061, 1
  %i.als = call noundef i32 @llvm.smax.i32(i32 %3, i32 %i.alr)
  %i.alt = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 2 uses
  store i32 %i.als, ptr %i.alt, align 4, !tbaa !402
  %i.alu = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %7, ptr %i.alu, align 8, !tbaa !399
  %i.alv = call noundef i32 %6(ptr noundef nonnull %17) #36 ; 0 uses
  %i.alw = load ptr, ptr %i.alp, align 8, !tbaa !400
  %i.alx = load i32, ptr %i.alt, align 4, !tbaa !402 ; 2 uses
  %i.aly = load i32, ptr %i.alq, align 8, !tbaa !401
  %i.alz = add nsw i32 %i.alx, -1
  %i.ama = call noundef i32 @llvm.smin.i32(i32 %i.aly, i32 %i.alz)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.5 = phi i32 [ %i.ama, %bb.kd ], [ %.41061, %bb.kc ]
  %.01039 = phi i32 [ %i.alx, %bb.kd ], [ %3, %bb.kc ]
  %.01037 = phi ptr [ %i.alw, %bb.kd ], [ %2, %bb.kc ] ; 2 uses
  %i.amb = add nsw i32 %.5, 1
  %i.amc = call noundef i32 @llvm.smin.i32(i32 %i.amb, i32 %.01039)
  %i.amd = sext i32 %i.amc to i64
  call void @_Z9ImStrncpyPcPKcm(ptr noundef %.01037, ptr noundef nonnull %.41066, i64 noundef %i.amd) #36
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kb
  %.11038 = phi ptr [ %.01037, %bb.ke ], [ %2, %bb.kb ] ; 2 uses
  %i.ame = load i32, ptr %i.df, align 4, !tbaa !220
  %i.amf = icmp eq i32 %i.ame, %i.t
  %27 = trunc nuw i8 %.310961635 to i1
  %or.cond133 = select i1 %i.amf, i1 %27, i1 false
  br i1 %or.cond133, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  br i1 %i.s, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.t, i32 noundef 0) #36
  %.sroa.0240.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !193
  %.sroa.0239.0.copyload = load <2 x float>, ptr %i.ao, align 8, !tbaa !193
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
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !193
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
  br i1 %i.oh, label %bb.kn, label %.thread1445

bb.kn:                                            ; preds = %bb.km
  %i.amz = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !354 ; 2 uses
  br i1 %.not1141, label %.thr_comm1447, label %.thread1446

.thread1445:                                      ; preds = %bb.km
  br i1 %.not1141, label %.thr_comm1447, label %.thread1446

.thr_comm1447:                                    ; preds = %.thread1445, %bb.kn
  %.ph1448 = phi ptr [ %.11038, %.thread1445 ], [ %i.ana, %bb.kn ] ; 2 uses
  br i1 %i.on, label %bb.ko, label %.thread1665

.thread1446:                                      ; preds = %bb.kn, %.thread1445
  %i.anb = phi ptr [ %.11038, %.thread1445 ], [ %i.ana, %bb.kn ] ; 3 uses
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !330
  %i.and = icmp eq i8 %i.anc, 0                   ; 2 uses
  %i.ane = xor i1 %i.on, %i.and
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
  %.01071.in = phi i1 [ %i.anf, %bb.kq ], [ %i.on, %.thread1446 ]
  br i1 %.01071.in, label %.thread1668, label %.thread1665

.thread1665:                                      ; preds = %.thr_comm1447, %.split, %bb.kr
  %.01054 = phi ptr [ %i.ang, %.split ], [ %i.apz, %bb.kr ], [ %.ph1448, %.thr_comm1447 ] ; 8 uses
  %or.cond144 = select i1 %.110831639, i1 true, i1 %.110811641
  br i1 %or.cond144, label %bb.ks, label %.thread1696

.thread1668:                                      ; preds = %bb.kr
  %i.aqa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.aqb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqa ; 2 uses
  %or.cond1441673 = select i1 %.110831639, i1 true, i1 %.110811641
  br i1 %or.cond1441673, label %._crit_edge1540, label %bb.mz

._crit_edge1540:                                  ; preds = %.thread1668
  %.phi.trans.insert1541 = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
end_hunk_2
begin_hunk_3_@_ZN5ImGui12ColorTooltipEPKcPKfi:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui19SetColorEditOptionsEi(i32 noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = and i32 %0, 7340032
  %i.c = icmp eq i32 %i.b, 0
  %i.d = or disjoint i32 %0, 1048576
  %spec.select = select i1 %i.c, i32 %i.d, i32 %0 ; 3 uses
  %i.e = and i32 %spec.select, 25165824
  %i.f = icmp eq i32 %i.e, 0
  %i.g = or disjoint i32 %spec.select, 8388608
  %.1 = select i1 %i.f, i32 %i.g, i32 %spec.select ; 3 uses
  %i.h = and i32 %.1, 100663296
  %i.i = icmp eq i32 %i.h, 0
  %i.j = or disjoint i32 %.1, 33554432
  %.2 = select i1 %i.i, i32 %i.j, i32 %.1         ; 3 uses
  %i.k = and i32 %.2, 402653184
  %i.l = icmp eq i32 %i.k, 0
  %i.m = or disjoint i32 %.2, 134217728
  %.3 = select i1 %i.l, i32 %i.m, i32 %.2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9488
  store i32 %.3, ptr %i.n, align 8, !tbaa !431
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10EndTooltipEv() local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.va_start.p0(ptr nonnull %2)
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
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
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
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.va_start.p0(ptr nonnull %2)
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
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
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
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef %0) local_unnamed_addr #5 {
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
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef 0, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 14 uses
  %6 = alloca %struct.ImVec2, align 8             ; 7 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImRect, align 4             ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 37 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161  ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 206
  store i8 1, ptr %i.h, align 2, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 209
  %i.j = load i8, ptr %i.i, align 1, !tbaa !186, !range !187, !noundef !188
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.dy, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %1, 2
  %.not284 = icmp eq i32 %i.l, 0                  ; 4 uses
  %i.m = and i32 %1, 1026
  %or.cond312 = icmp eq i32 %i.m, 0
  br i1 %or.cond312, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 3216
  %i.n = load float, ptr %.sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.p = load float, ptr %i.o, align 8, !tbaa !191 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 3216
  %i.r = load float, ptr %i.q, align 8, !tbaa !206 ; 2 uses
  %i.s = fcmp olt float %i.p, %i.r
  %i.t = select i1 %i.s, float %i.p, float %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.12.0 = phi float [ %i.t, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %.sroa.0336.0.in = getelementptr inbounds nuw i8, ptr %i.e, i64 3212 ; 2 uses
  %.sroa.0336.0 = load float, ptr %.sroa.0336.0.in, align 4 ; 8 uses
  %.not286 = icmp eq ptr %3, null
  br i1 %.not286, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %2, ptr noundef null) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0272 = phi ptr [ %3, %bb.e ], [ %i.u, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.v = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %2, ptr noundef %.0272, i1 noundef zeroext false, float noundef -1.000000e+00) #36 ; 3 uses
  store <2 x float> %i.v, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 4400 ; 7 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !208 ; 3 uses
  %.v = select i1 %.not284, float 2.000000e+00, float 3.000000e+00
  %i.y = fmul float %.v, %.sroa.0336.0
  %i.z = fadd float %i.y, %i.x                    ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 280 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !191 ; 2 uses
  %i.ad = fcmp oge float %.sroa.12.0, %i.ac
  %i.ae = select i1 %i.ad, float %.sroa.12.0, float %i.ac
  %i.af = extractelement <2 x float> %i.v, i64 0  ; 2 uses
  %i.ag = fadd float %i.x, %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %.sroa.0336.0, float 2.000000e+00, float %i.ag) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 324
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !291 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 3216
  %i.al = load float, ptr %i.ak, align 8, !tbaa !206
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.sroa.12.0, i64 1
  %i.ao = insertelement <2 x float> %i.v, float %i.x, i64 0
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ao) ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.ar = fcmp olt float %i.aj, %i.aq
  %i.as = select i1 %i.ar, float %i.aj, float %i.aq ; 2 uses
  %i.at = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.au = fcmp oge float %i.as, %i.at
  %i.av = select i1 %i.au, float %i.as, float %i.at ; 2 uses
  %i.aw = and i32 %1, 16384
  %.not287 = icmp eq i32 %i.aw, 0
  br i1 %.not287, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8816
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !324
  %i.az = icmp ne ptr %i.ay, null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = phi i1 [ false, %bb.g ], [ %i.az, %bb.h ] ; 5 uses
  %i.bb = and i32 %1, 32768
  %.not288 = icmp eq i32 %i.bb, 0
  br i1 %.not288, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8816
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !324
  %i.be = icmp ne ptr %i.bd, null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi i1 [ false, %bb.i ], [ %i.be, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 592 ; 2 uses
  %i.bh = and i32 %1, 4096
  %.not289 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %spec.select318 = select i1 %.not289, ptr %i.aa, ptr %i.bi
  %.in = select i1 %i.ba, ptr %i.bg, ptr %spec.select318
  %i.bj = load float, ptr %.in, align 8, !tbaa !193 ; 2 uses
  store float %i.bj, ptr %5, align 8, !tbaa !239
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 284 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !190 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store float %i.bl, ptr %i.bm, align 4, !tbaa !198
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !322
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bp = and i32 %1, 8192
  %.not290 = icmp eq i32 %i.bp, 0
  br i1 %.not290, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load float, ptr %i.aa, align 8, !tbaa !189
  %i.br = fadd float %i.ah, %i.bq
  %i.bs = fadd float %.sroa.0336.0, %i.br
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 584
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !299
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.bv = phi float [ %i.bo, %bb.l ], [ %i.bs, %bb.n ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store float %i.bv, ptr %i.bw, align 8, !tbaa !240
  %i.bx = fadd float %i.av, %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !199
  br i1 %.not284, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !439
  %i.cb = fmul float %i.ca, 5.000000e-01
  %i.cc = fptosi float %i.cb to i32
  %i.cd = sitofp i32 %i.cc to float               ; 2 uses
  %i.ce = fsub float %i.bj, %i.cd
  store float %i.ce, ptr %5, align 8, !tbaa !239
  %i.cf = fadd float %i.bv, %i.cd
  store float %i.cf, ptr %i.bw, align 8, !tbaa !240
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.cg = load float, ptr %i.aa, align 8, !tbaa !189
  %i.ch = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.ae, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.bl, i64 1
  %i.cl = fadd <2 x float> %i.ci, %i.ck           ; 7 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 7 uses
  store <2 x float> %i.cl, ptr %6, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store float %i.ah, ptr %7, align 4, !tbaa !197
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.av, ptr %i.cn, align 4, !tbaa !200
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %7, float noundef %.sroa.12.0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !238
  %i.co = and i32 %1, 30722
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cq = load float, ptr %5, align 8, !tbaa !239
  %i.cr = fadd float %i.ah, %i.cq
  %i.cs = fcmp ogt float %i.af, 0.000000e+00
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 3228
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !290
  %i.cv = fmul float %i.cu, 2.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cw = phi float [ %i.cv, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.cx = fadd float %i.cr, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.cx, ptr %i.cy, align 4, !tbaa !240
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 7648
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !410
  %i.db = and i32 %i.da, 16
  %.not291 = icmp eq i32 %i.db, 0
  br i1 %.not291, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 7696
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !440
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.de = phi i32 [ %i.dd, %bb.w ], [ %0, %bb.v ] ; 2 uses
  %i.df = call noundef zeroext i1 @_ZN5ImGui22TreeNodeUpdateNextOpenEji(i32 noundef %i.de, i32 noundef %1) ; 9 uses
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bf   ; 2 uses
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 608 ; 3 uses
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !319
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 616 ; 3 uses
  %i.dj = load float, ptr %i.di, align 8, !tbaa !320
  %i.dk = load float, ptr %i.bg, align 8, !tbaa !321
  store float %i.dk, ptr %i.dg, align 8, !tbaa !319
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !322
  store float %i.dm, ptr %i.di, align 8, !tbaa !320
  %i.dn = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef null, i32 noundef 0) #36
  store float %i.dh, ptr %i.dg, align 8, !tbaa !319
  store float %i.dj, ptr %i.di, align 8, !tbaa !320
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.do = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef null, i32 noundef 0) #36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0279.in = phi i1 [ %i.dn, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 7712 ; 8 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !273
  %i.dr = or i32 %i.dq, 2
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !273
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 7748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !238
  %i.dt = and i32 %1, 1835008
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 3328
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !746
  %i.dx = or i32 %i.dw, %1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0270 = phi i32 [ %i.dx, %bb.ab ], [ %1, %bb.aa ] ; 17 uses
  %i.dy = and i32 %.0270, 1572864
  %.not292 = icmp eq i32 %i.dy, 0
  br i1 %.not292, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load float, ptr %i.bm, align 4, !tbaa !198
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 620
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !202
  %i.ec = fcmp olt float %i.dz, %i.eb
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 3332
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !441
  %i.ef = fcmp ogt float %i.ee, 0.000000e+00
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.eg = phi i1 [ false, %bb.ad ], [ false, %bb.ac ], [ %i.ef, %bb.ae ] ; 6 uses
  %i.eh = and i32 %.0270, 8
  %.not293 = icmp eq i32 %i.eh, 0                 ; 3 uses
  br i1 %.not293, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ei = and i32 %.0270, 131072
  %.not294 = icmp eq i32 %i.ei, 0
  br i1 %.not294, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 8075
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !442, !range !187, !noundef !188
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  %i.en = load i32, ptr %i.em, align 8, !tbaa !443
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 8080
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !327
  %i.er = icmp eq ptr %i.eq, %i.g
  br i1 %i.er, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.es = call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() #36
  %spec.select = select i1 %i.es, i1 true, i1 %i.eg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag, %bb.ah, %bb.aj, %bb.ai, %bb.af
  %.0278.shrunk = phi i1 [ false, %bb.af ], [ %i.eg, %bb.ah ], [ %i.eg, %bb.ag ], [ %spec.select, %bb.ak ], [ %i.eg, %bb.aj ], [ %i.eg, %bb.ai ] ; 2 uses
  %i.et = and i32 %.0270, 256
  %.not295 = icmp eq i32 %i.et, 0                 ; 4 uses
  br i1 %.0279.in, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = and i32 %.0270, 1048576
  %.not296 = icmp eq i32 %i.eu, 0
  br i1 %.not296, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 424 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !444 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !445
  %i.ez = add nsw i32 %i.ey, -1
  %i.fa = shl nuw i32 1, %i.ez                    ; 2 uses
  %i.fb = and i32 %i.fa, %i.ew
  %.not297 = icmp eq i32 %i.fb, 0
  br i1 %.not297, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 8040
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 8048
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !446
  %i.ff = load i32, ptr %i.fc, align 8, !tbaa !447
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [40 x i8], ptr %i.fe, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8     ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !449 ; 2 uses
  %i.fk = load float, ptr %i.bk, align 4, !tbaa !190 ; 2 uses
  %i.fl = fcmp oge float %i.fj, %i.fk
  %i.fm = select i1 %i.fl, float %i.fj, float %i.fk
  store float %i.fm, ptr %i.fi, align 4, !tbaa !449
  %i.fn = load float, ptr %i.bm, align 4, !tbaa !198
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 620
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !202
  %i.fq = fcmp ult float %i.fn, %i.fp
  br i1 %i.fq, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = xor i32 %i.fa, -1
  %i.fs = and i32 %i.ew, %i.fr
  store i32 %i.fs, ptr %i.ev, align 8, !tbaa !444
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an, %bb.am
  %or.cond3 = select i1 %i.df, i1 %.0278.shrunk, i1 false
  br i1 %or.cond3, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ft = fsub float %i.cm, %i.z
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.0270, float noundef %i.ft)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %brmerge.not = and i1 %i.df, %.not293
  br i1 %brmerge.not, label %bb.at, label %bb.dx

bb.at:                                            ; preds = %bb.as
  %i.fu = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 5184
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !161
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #36
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 416 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !445
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !445
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0) #36
  br label %bb.dx

bb.au:                                            ; preds = %bb.al
  br i1 %or.cond, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_ZN5ImGui26TablePushBackgroundChannelEv() #36
  %i.ga = load i32, ptr %i.dp, align 8, !tbaa !273
  %i.gb = or i32 %i.ga, 512
  store i32 %i.gb, ptr %i.dp, align 8, !tbaa !273
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 7764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i64 16, i1 false), !tbaa.struct !238
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.ge = and i32 %.0270, 4
  %.not298 = icmp eq i32 %i.ge, 0
  br i1 %.not298, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 7708
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !253
  %i.gh = and i32 %i.gg, 16384
  %.not299 = icmp eq i32 %i.gh, 0
  br i1 %.not299, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0346 = phi i32 [ 0, %bb.ax ], [ 4096, %bb.ay ] ; 2 uses
  %i.gi = or disjoint i32 %.0346, 512
  %spec.select353 = select i1 %.not295, i32 %i.gi, i32 %.0346
  %i.gj = fsub float %i.cm, %i.z                  ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 3252
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !747 ; 2 uses
  %i.gm = fsub float %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.go = load float, ptr %i.gn, align 8, !tbaa !450 ; 2 uses
  %i.gp = fcmp ult float %i.go, %i.gm
  br i1 %i.gp, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = load float, ptr %i.w, align 8, !tbaa !208
  %i.gr = call float @llvm.fmuladd.f32(float %.sroa.0336.0, float 2.000000e+00, float %i.gq)
  %i.gs = fadd float %i.gj, %i.gr
  %i.gt = fadd float %i.gl, %i.gs
  %i.gu = fcmp olt float %i.go, %i.gt
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gv = phi i1 [ false, %bb.az ], [ %i.gu, %bb.ba ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 7708
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !253
  %i.gy = and i32 %i.gx, 4194304
  %i.gz = icmp ne i32 %i.gy, 0                    ; 5 uses
  %i.ha = and i32 %.0270, 192
  %i.hb = icmp eq i32 %i.ha, 0
  %i.hc = select i1 %i.hb, i32 192, i32 128
  %i.hd = select i1 %i.gz, i32 %i.hc, i32 0
  %.1271 = or i32 %i.hd, %.0270                   ; 5 uses
  %i.he = and i32 %.1271, 64
  %.not300 = icmp eq i32 %i.he, 0
  %. = select i1 %.not300, i32 32, i32 288
  %.sink = select i1 %i.gv, i32 16, i32 %.
  %i.hf = or disjoint i32 %spec.select353, %.sink
  %i.hg = lshr i32 %.0270, 9
  %i.hh = and i32 %i.hg, 262144
  %spec.select354 = or disjoint i32 %i.hf, %i.hh  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.hi = trunc i32 %.0270 to i8
  %i.hj = and i8 %i.hi, 1                         ; 4 uses
  store i8 %i.hj, ptr %i.a, align 1, !tbaa !233
  br i1 %i.gz, label %bb.bc, label %bb.bt

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 9104
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !255 ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 90
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !260, !range !187, !noundef !188
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !261 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 7664
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !262 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !263 ; 2 uses
  %.not.i = icmp eq i8 %i.hv, -1
  %i.hw = icmp eq i8 %i.hv, 1
  %i.hx = zext i1 %i.hw to i8
  %.042.i = select i1 %.not.i, i8 %i.hj, i8 %i.hx ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 91
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !264, !range !187, !noundef !188
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 94 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !265, !range !187, !noundef !188 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.bf, label %.critedge.i

bb.bf:                                            ; preds = %bb.be
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 8524
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !266
  %i.ig = icmp eq i32 %i.if, %0
  br i1 %i.ig, label %bb.bg, label %.critedge.i

bb.bg:                                            ; preds = %bb.bf
  store i8 1, ptr %i.ib, align 2, !tbaa !265
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !268
  %i.ij = icmp eq i64 %i.ii, -1
  br i1 %i.ij, label %bb.bh, label %.critedge.thread.i

bb.bh:                                            ; preds = %bb.bg
  store i64 %i.ht, ptr %i.ih, align 8, !tbaa !268
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  store i8 %.042.i, ptr %i.ik, align 4, !tbaa !269
  br label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.bf, %bb.be
  %i.il = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !268
  %i.in = icmp eq i64 %i.im, %i.ht
  br i1 %i.in, label %.critedge.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 93
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !270, !range !187, !noundef !188
  %.not45.i = icmp eq i8 %i.ip, %i.ic
  br i1 %.not45.i, label %bb.bj, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.bi, %.critedge.i, %bb.bh, %bb.bg
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !269
  %i.is = icmp ne i8 %i.ir, 0
  %i.it = zext i1 %i.is to i8
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hm, i64 84
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !271
  %i.iw = and i32 %i.iv, 4096
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 52
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !272
  %i.ja = and i32 %i.iz, 16
  %i.jb = icmp eq i32 %i.ja, 0
  %spec.select.i = select i1 %i.jb, i8 0, i8 %.042.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.critedge.thread.i, %bb.bd
  %.2.i = phi i8 [ %.042.i, %bb.bd ], [ %i.it, %.critedge.thread.i ], [ %.042.i, %bb.bj ], [ %spec.select.i, %bb.bk ] ; 2 uses
  store i8 %.2.i, ptr %i.a, align 1, !tbaa !233
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bc
  %.3.i = phi i8 [ %.2.i, %bb.bl ], [ %i.hj, %bb.bc ] ; 3 uses
  %i.jc = trunc nuw i8 %.3.i to i1
  br i1 %i.jc, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hk, i64 5300
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !220
  %i.jf = icmp eq i32 %i.je, %0
  br i1 %i.jf, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hk, i64 5315
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !234, !range !187, !noundef !188
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hm, i64 52
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !272
  %i.jl = and i32 %i.jk, 16384
  %.not47.i = icmp eq i32 %i.jl, 0
  br i1 %.not47.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jm = and i32 %spec.select354, -524337
  %i.jn = or disjoint i32 %i.jm, 524304
  br label %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.jo = or i32 %spec.select354, 524320
  br label %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit

_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit:      ; preds = %bb.bq, %bb.br
  %.0.i = phi i32 [ %i.jo, %bb.br ], [ %i.jn, %bb.bq ] ; 2 uses
  br i1 %i.gv, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit
  %i.jp = and i32 %.0.i, -49
  %i.jq = or disjoint i32 %i.jp, 16
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bb
  %i.jr = getelementptr inbounds nuw i8, ptr %i.e, i64 5192
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !212
  %i.jt = icmp eq ptr %i.g, %i.js
  %or.cond7 = and i1 %i.gv, %i.jt
  %i.ju = or i32 %spec.select354, 65536
  %spec.select355 = select i1 %or.cond7, i32 %spec.select354, i32 %i.ju
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit, %bb.bs
  %i.jv = phi i8 [ %.3.i, %bb.bs ], [ %.3.i, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit ], [ %i.hj, %bb.bt ]
  %.4350 = phi i32 [ %i.jq, %bb.bs ], [ %.0.i, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit ], [ %spec.select355, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.jw = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %.4350) ; 2 uses
  br i1 %.not295, label %bb.bv, label %bb.cj

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.jw, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %bb.bv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 8752
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !216
  %.not302 = icmp eq i32 %i.jy, %0
  br i1 %.not302, label %bb.cg, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jz = and i32 %.1271, 192
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kb = getelementptr inbounds nuw i8, ptr %i.e, i64 8096
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !226
  %i.kd = icmp ne i32 %i.kc, %0
  %or.cond9 = or i1 %i.gz, %i.kd
  br i1 %or.cond9, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0274 = phi i8 [ 1, %bb.bz ], [ 0, %bb.by ]    ; 2 uses
  %i.ke = and i32 %.1271, 128
  %.not303 = icmp eq i32 %i.ke, 0
  br i1 %.not303, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.gv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kf = getelementptr inbounds nuw i8, ptr %i.e, i64 8073
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !225, !range !187, !noundef !188
  %i.kh = xor i8 %i.kg, 1
  %i.ki = zext nneg i8 %i.kh to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kj = phi i32 [ 0, %bb.cb ], [ %i.ki, %bb.cc ]
  %11 = zext nneg i8 %.0274 to i32
  %12 = or i32 %i.kj, %11
  %i.kk = icmp ne i32 %12, 0
  %13 = zext i1 %i.kk to i8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %.1275 = phi i8 [ %13, %bb.cd ], [ %.0274, %bb.ca ] ; 2 uses
  %i.kl = and i32 %.1271, 64
  %.not304 = icmp eq i32 %i.kl, 0
  br i1 %.not304, label %.critedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.km = getelementptr inbounds nuw i8, ptr %i.e, i64 2842
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !221
  %i.ko = icmp eq i16 %i.kn, 2
  %spec.select314 = select i1 %i.ko, i8 1, i8 %.1275
  br label %.critedge

bb.cg:                                            ; preds = %bb.bw
  %not. = xor i1 %i.df, true                      ; 2 uses
  %.315 = zext i1 %not. to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.cf, %bb.bv, %bb.cg, %bb.ce
  %.0276 = phi i1 [ %not., %bb.cg ], [ false, %bb.bv ], [ true, %bb.ce ], [ true, %bb.cf ] ; 2 uses
  %.2 = phi i8 [ %.315, %bb.cg ], [ 0, %bb.bv ], [ %.1275, %bb.ce ], [ %spec.select314, %bb.cf ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.e, i64 8076 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !224
  %i.kr = icmp eq i32 %i.kq, %0
  br i1 %i.kr, label %bb.ch, label %.thread370.a

bb.ch:                                            ; preds = %.critedge
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !443
  %i.ku = icmp eq i32 %i.kt, 0
  %or.cond11 = and i1 %i.df, %i.ku
  br i1 %or.cond11, label %bb.ci, label %.thread366

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0) #36
  call void @_ZN5ImGui20NavMoveRequestCancelEv() #36
  %.pre = load i32, ptr %i.kp, align 4, !tbaa !224
  %i.kv = icmp eq i32 %.pre, %0
  br i1 %i.kv, label %.thread366, label %.thread372

.thread366:                                       ; preds = %bb.ch, %bb.ci
  %.3369 = phi i8 [ 1, %bb.ci ], [ %.2, %bb.ch ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !443
  %i.ky = icmp ne i32 %i.kx, 1
  %or.cond13 = or i1 %i.df, %i.ky
  br i1 %or.cond13, label %.thread370.a, label %.thread

.thread:                                          ; preds = %.thread366
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0) #36
  call void @_ZN5ImGui20NavMoveRequestCancelEv() #36
  br label %.thread372

.thread370.a:                                     ; preds = %.critedge, %.thread366
  %.3368 = phi i8 [ %.3369, %.thread366 ], [ %.2, %.critedge ]
  %14 = trunc nuw i8 %.3368 to i1
  br i1 %14, label %.thread372, label %bb.cj

.thread372:                                       ; preds = %bb.ci, %.thread, %.thread370.a
  %i.kz = xor i1 %i.df, true                      ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !451
  %i.lc = zext i1 %i.kz to i32
  call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i32 noundef %i.de, i32 noundef %i.lc) #36
  %i.ld = load i32, ptr %i.dp, align 8, !tbaa !273
  %i.le = or i32 %i.ld, 16
  store i32 %i.le, ptr %i.dp, align 8, !tbaa !273
  br label %bb.cj

bb.cj:                                            ; preds = %.thread370.a, %.thread372, %bb.bu
  %.0280.in = phi i1 [ %i.df, %bb.bu ], [ %i.kz, %.thread372 ], [ %i.df, %.thread370.a ] ; 5 uses
  %.1277 = phi i1 [ %i.jw, %bb.bu ], [ %.0276, %.thread372 ], [ %.0276, %.thread370.a ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.bu ], [ 0, %.thread372 ], [ 1, %.thread370.a ]
  br i1 %i.gz, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.lf = select i1 %.1277, i8 %.5, i8 0
  store i8 %i.lf, ptr %i.d, align 1, !tbaa !233
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  br i1 %.1277, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !329
  %i.li = getelementptr inbounds nuw i8, ptr %i.e, i64 7636
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !326
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %0, i32 noundef %i.lh, i32 noundef %i.lj, ptr noundef nonnull align 4 dereferenceable(16) %8) #36
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %.pre357 = load i8, ptr %i.a, align 1, !tbaa !233, !range !187
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %15 = phi i8 [ %.pre357, %bb.cm ], [ %i.jv, %bb.cj ] ; 2 uses
  %i.lk = zext nneg i8 %15 to i32
  %i.ll = and i32 %.0270, 1
  %.not305 = icmp eq i32 %i.ll, %i.lk
  br i1 %.not305, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lm = load i32, ptr %i.dp, align 8, !tbaa !273
  %i.ln = or i32 %i.lm, 8
  store i32 %i.ln, ptr %i.dp, align 8, !tbaa !273
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.lo = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #36 ; 4 uses
  %spec.select316 = select i1 %i.gz, i32 6, i32 2 ; 2 uses
  br i1 %.not284, label %bb.db, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lp = load i8, ptr %i.c, align 1, !tbaa !233, !range !187, !noundef !188
  %i.lq = trunc nuw i8 %i.lp to i1
  %i.lr = load i8, ptr %i.b, align 1, !range !187
  %i.ls = trunc nuw i8 %i.lr to i1
  %i.lt = select i1 %i.lq, i32 26, i32 25
  %i.lu = select i1 %i.ls, i32 %i.lt, i32 24
  %i.lv = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.lu, float noundef 1.000000e+00) #36
  %.sroa.030.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !193
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.bw, align 8, !tbaa !193
  %i.lw = getelementptr inbounds nuw i8, ptr %i.e, i64 3220
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !235
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.030.0.copyload, <2 x float> %.sroa.029.0.copyload, i32 noundef %i.lv, i1 noundef zeroext true, float noundef %i.lx) #36
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select316) #36
  %.not = xor i1 %i.ba, true
  %or.cond17 = select i1 %.not, i1 true, i1 %i.bf
  br i1 %or.cond17, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN5ImGui25TablePopBackgroundChannelEv() #36
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ly = and i32 %.0270, 512
  %.not308 = icmp eq i32 %i.ly, 0
  br i1 %.not308, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lz = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !205
  %i.mb = fneg float %i.z
  %i.mc = load float, ptr %i.w, align 8, !tbaa !208
  %i.md = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.me = insertelement <2 x float> %i.md, float %i.mc, i64 1
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> <float 6.000000e-01, float 5.000000e-01>, <2 x float> %i.cl)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.ma, <2 x float> %i.mf, i32 noundef %i.lo) #36
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cs
  br i1 %.not295, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !205
  %i.mi = fadd float %.sroa.0336.0, %i.gj
  %i.mj = insertelement <2 x float> %i.cl, float %i.mi, i64 0
  %i.mk = and i32 %.0270, 536870912
  %.not309 = icmp eq i32 %i.mk, 0
  %i.ml = select i1 %.not309, i32 3, i32 2
  %i.mm = select i1 %.0280.in, i32 %i.ml, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.mh, <2 x float> %i.mj, i32 noundef %i.lo, i32 noundef %i.mm, float noundef 1.000000e+00) #36
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.mn = fsub float %i.z, %.sroa.0336.0
  %i.mo = fsub float %i.cm, %i.mn                 ; 2 uses
  store float %i.mo, ptr %6, align 8, !tbaa !197
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.ct
  %i.mp = phi float [ %i.cm, %bb.cv ], [ %i.mo, %bb.cw ], [ %i.cm, %bb.ct ] ; 2 uses
  %i.mq = and i32 %.0270, 268435456
  %.not310 = icmp eq i32 %i.mq, 0
  br i1 %.not310, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mr = load float, ptr %i.w, align 8, !tbaa !208
  %i.ms = load float, ptr %.sroa.0336.0.in, align 4, !tbaa !209
  %i.mt = fadd float %i.mr, %i.ms
  %i.mu = load float, ptr %i.bw, align 8, !tbaa !240
  %i.mv = fsub float %i.mu, %i.mt
  store float %i.mv, ptr %i.bw, align 8, !tbaa !240
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.mw = getelementptr inbounds nuw i8, ptr %i.e, i64 10008
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !194, !range !187, !noundef !188
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.da, label %bb.dl

bb.da:                                            ; preds = %bb.cz
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.97) #36
  br label %bb.dl

bb.db:                                            ; preds = %bb.cp
  %i.mz = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188 ; 3 uses
  %i.na = or i8 %i.mz, %15
  %or.cond19.not = icmp eq i8 %i.na, 0
  br i1 %or.cond19.not, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nb = trunc nuw i8 %i.mz to i1
  %i.nc = load i8, ptr %i.c, align 1, !tbaa !233, !range !187, !noundef !188
  %i.nd = and i8 %i.nc, %i.mz
  %or.cond21.not = icmp eq i8 %i.nd, 0
  %i.ne = select i1 %i.nb, i32 25, i32 24
  %i.nf = select i1 %or.cond21.not, i32 %i.ne, i32 26
  %i.ng = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.nf, float noundef 1.000000e+00) #36
  %.sroa.028.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !193
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.bw, align 8, !tbaa !193
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload, <2 x float> %.sroa.027.0.copyload, i32 noundef %i.ng, i1 noundef zeroext false, float noundef 0.000000e+00) #36
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select316) #36
  %.not22 = xor i1 %i.ba, true
  %or.cond24 = select i1 %.not22, i1 true, i1 %i.bf
  br i1 %or.cond24, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN5ImGui25TablePopBackgroundChannelEv() #36
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.nh = and i32 %.0270, 512
  %.not306 = icmp eq i32 %i.nh, 0
  br i1 %.not306, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ni = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !205
  %i.nk = fneg float %i.z
  %i.nl = load float, ptr %i.w, align 8, !tbaa !208
  %i.nm = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.nn = insertelement <2 x float> %i.nm, float %i.nl, i64 1
  %i.no = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cl)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.nj, <2 x float> %i.no, i32 noundef %i.lo) #36
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  br i1 %.not295, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !205
  %i.nr = fadd float %.sroa.0336.0, %i.gj
  %i.ns = load float, ptr %i.w, align 8, !tbaa !208
  %i.nt = extractelement <2 x float> %i.cl, i64 1
  %i.nu = call float @llvm.fmuladd.f32(float %i.ns, float 1.500000e-01, float %i.nt)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.nr, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.nu, i64 1
  %i.nv = and i32 %.0270, 536870912
  %.not307 = icmp eq i32 %i.nv, 0
  %i.nw = select i1 %.not307, i32 3, i32 2
  %i.nx = select i1 %.0280.in, i32 %i.nw, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.nq, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.lo, i32 noundef %i.nx, float noundef f0x3F333333) #36
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di, %bb.dg
  %i.ny = getelementptr inbounds nuw i8, ptr %i.e, i64 10008
  %i.nz = load i8, ptr %i.ny, align 8, !tbaa !194, !range !187, !noundef !188
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.98, ptr noundef null) #36
  br label %bb.dl

bb.dl:                                            ; preds = %bb.cz, %bb.da, %bb.dj, %bb.dk
  %i.ob = phi float [ %i.mp, %bb.cz ], [ %i.mp, %bb.da ], [ %i.cm, %bb.dj ], [ %i.cm, %bb.dk ]
  br i1 %i.eg, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.oc = fsub float %i.ob, %i.z
  %i.od = fadd float %.sroa.0336.0, %i.oc
  %i.oe = load float, ptr %i.w, align 8, !tbaa !208
  %i.of = extractelement <2 x float> %i.cl, i64 1
  %i.og = call float @llvm.fmuladd.f32(float %i.oe, float 5.000000e-01, float %i.of)
  store float %i.od, ptr %9, align 4, !tbaa !197
  %i.oh = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.og, ptr %i.oh, align 4, !tbaa !200
  call void @_ZN5ImGui27TreeNodeDrawLineToChildNodeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  br i1 %.not284, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !193
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.bw, ptr noundef %2, ptr noundef %.0272, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %.sroa.0.0.copyload = load <2 x float>, ptr %6, align 8, !tbaa !193
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.0.copyload, ptr noundef %2, ptr noundef %.0272, i1 noundef zeroext false) #36
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  br i1 %i.bf, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN5ImGui25TablePopBackgroundChannelEv() #36
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %or.cond26 = select i1 %.0280.in, i1 %.0278.shrunk, i1 false
  br i1 %or.cond26, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.oi = load float, ptr %6, align 8, !tbaa !197
  %i.oj = fsub float %i.oi, %i.z
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.1271, float noundef %i.oj)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %or.cond317 = and i1 %.not293, %.0280.in
  br i1 %or.cond317, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.ok = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 5184
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !161
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #36
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 416 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !445
  %i.op = add nsw i32 %i.oo, 1
  store i32 %i.op, ptr %i.on, align 8, !tbaa !445
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0) #36
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.dx

bb.dx:                                            ; preds = %bb.at, %bb.as, %bb.dw
  %.0 = phi i1 [ %.0280.in, %bb.dw ], [ %i.df, %bb.as ], [ true, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.dy

bb.dy:                                            ; preds = %bb.a, %bb.dx
  %.1 = phi i1 [ %.0, %bb.dx ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui9TreeNodeVEPKcS1_P13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
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
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #36
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui9TreeNodeVEPKvPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
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
end_hunk_3
