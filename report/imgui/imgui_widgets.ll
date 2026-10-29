Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bh
  %.01248.shrunk = phi i1 [ %i.lk, %bb.bh ], [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  store i32 %i.s, ptr %i.kk, align 4, !tbaa !392
  %i.ls = getelementptr inbounds nuw i8, ptr %i.i, i64 9440 ; 2 uses
  store i32 %i.kp, ptr %i.ls, align 8, !tbaa !377
  %i.lt = getelementptr inbounds nuw i8, ptr %i.i, i64 9531
  store i8 0, ptr %i.lt, align 1, !tbaa !393
  br i1 %i.dl, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lu = getelementptr inbounds nuw i8, ptr %i.i, i64 9456 ; 2 uses
  %i.lv = add nsw i32 %3, 1                       ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.i, i64 9460 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !382 ; 4 uses
  %.not1632 = icmp slt i32 %3, %i.lx
  br i1 %.not1632, label %._ZN8ImVectorIcE6resizeEi.exit1415_crit_edge, label %bb.bo

._ZN8ImVectorIcE6resizeEi.exit1415_crit_edge:     ; preds = %bb.bn
  %.phi.trans.insert1680 = getelementptr inbounds nuw i8, ptr %i.i, i64 9464
  %.pre1681 = load ptr, ptr %.phi.trans.insert1680, align 8, !tbaa !376
  br label %_ZN8ImVectorIcE6resizeEi.exit1415

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i1412 = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i1412, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1413, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ly = sdiv i32 %i.lx, 2
  %i.lz = add nsw i32 %i.ly, %i.lx
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1413

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1413:    ; preds = %bb.bp, %bb.bo
  %i.ma = phi i32 [ %i.lz, %bb.bp ], [ 8, %bb.bo ]
  %i.mb = call noundef i32 @llvm.smax.i32(i32 %i.ma, i32 %i.lv) ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.mc) ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.i, i64 9464 ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !383 ; 2 uses
  %.not6.i.i1414 = icmp eq ptr %i.mf, null
  br i1 %.not6.i.i1414, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1413
  %i.mg = load i32, ptr %i.lu, align 8, !tbaa !384
  %i.mh = sext i32 %i.mg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.md, ptr nonnull align 1 %i.mf, i64 %i.mh, i1 false)
  %i.mi = load ptr, ptr %i.me, align 8, !tbaa !383
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.mi)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1413
  store ptr %i.md, ptr %i.me, align 8, !tbaa !383
  store i32 %i.mb, ptr %i.lw, align 4, !tbaa !382
  %.pre1682 = load i32, ptr %i.ls, align 8, !tbaa !377
  br label %_ZN8ImVectorIcE6resizeEi.exit1415

_ZN8ImVectorIcE6resizeEi.exit1415:                ; preds = %._ZN8ImVectorIcE6resizeEi.exit1415_crit_edge, %bb.br
  %i.mj = phi i32 [ %i.kp, %._ZN8ImVectorIcE6resizeEi.exit1415_crit_edge ], [ %.pre1682, %bb.br ]
  %i.mk = phi ptr [ %.pre1681, %._ZN8ImVectorIcE6resizeEi.exit1415_crit_edge ], [ %i.md, %bb.br ]
  store i32 %i.lv, ptr %i.lu, align 8, !tbaa !384
  %i.ml = add nsw i32 %i.mj, 1
  %i.mm = sext i32 %i.ml to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mk, ptr nonnull align 1 %2, i64 %i.mm, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1415, %bb.bm
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 9508 ; 3 uses
  store i32 0, ptr %i.mn, align 4, !tbaa !190
  %.sroa_idx1492 = getelementptr inbounds nuw i8, ptr %i.i, i64 9512
  store i32 0, ptr %.sroa_idx1492, align 8, !tbaa !190
  %i.mo = and i32 %5, 131072
  %.not1298 = icmp eq i32 %i.mo, 0
  br i1 %.not1298, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mp = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %2, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %foldExtExtBinop = fsub <2 x float> %i.mp, %i.ae
  %i.mq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.mr = load float, ptr %i.aa, align 4, !tbaa !206
  %i.ms = call float @llvm.fmuladd.f32(float %i.mr, float 2.000000e+00, float %i.mq) ; 2 uses
  %i.mt = fcmp ole float %i.ms, 0.000000e+00
  %i.mu = select i1 %i.mt, float 0.000000e+00, float %i.ms
  %i.mv = load float, ptr %i.mn, align 4, !tbaa !701
  %i.mw = fadd float %i.mv, %i.mu
  store float %i.mw, ptr %i.mn, align 4, !tbaa !701
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %.01248.shrunk, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 9424
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !378 ; 14 uses
  %i.mz = xor i1 %i.r, true
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 2616
  store i16 0, ptr %i.na, align 4, !tbaa !702
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 2620
  store i32 0, ptr %i.nb, align 4, !tbaa !703
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 2618
  store i16 99, ptr %i.nc, align 2, !tbaa !704
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 2624
  store i32 999, ptr %i.nd, align 4, !tbaa !705
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  store i32 0, ptr %i.ne, align 4, !tbaa !394
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i32 0, ptr %i.nf, align 4, !tbaa !395
  store i32 0, ptr %i.my, align 4, !tbaa !388
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 22
  store i8 0, ptr %i.ng, align 2, !tbaa !396
  %i.nh = getelementptr inbounds nuw i8, ptr %i.my, i64 28
  store float 0.000000e+00, ptr %i.nh, align 4, !tbaa !397
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 20
  store i8 0, ptr %i.ni, align 4, !tbaa !706
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 21
  store i8 1, ptr %i.nj, align 1, !tbaa !707
  %i.nk = zext i1 %i.mz to i8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.my, i64 23
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !390
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  store i8 0, ptr %i.nm, align 4, !tbaa !398
  %i.nn = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store i32 0, ptr %i.nn, align 4, !tbaa !399
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %i.r, label %bb.cd, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.no = and i32 %5, 4096
  %.not1299 = icmp ne i32 %i.no, 0                ; 2 uses
  br i1 %i.en, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  br i1 %.01248.shrunk, label %bb.bz, label %bb.ca

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
  %.312541548.a = phi i1 [ false, %.thread1534 ], [ %.21253, %bb.ce ], [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21253, %.split ] ; 3 uses
  %.012601538.a = phi ptr [ %i.dg, %.thread1534 ], [ %i.ki, %bb.ce ], [ %i.dg, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ki, %.split ] ; 3 uses
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
  %.312541547 = phi i1 [ %.312541548.a, %bb.cg ], [ %.312541548.a, %bb.ch ], [ %.312541548.a, %bb.cf ], [ %.21253, %bb.ce ], [ false, %.thread1549 ], [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21253, %.split ] ; 2 uses
  %.012601537 = phi ptr [ %.012601538.a, %bb.cg ], [ %.012601538.a, %bb.ch ], [ %.012601538.a, %bb.cf ], [ %i.ki, %bb.ce ], [ %i.dg, %.thread1549 ], [ %i.dg, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ki, %.split ] ; 126 uses
  %.not1637 = phi i1 [ false, %bb.cg ], [ false, %bb.ch ], [ false, %bb.cf ], [ true, %bb.ce ], [ true, %.thread1549 ], [ true, %_ZN8ImVectorIcE6resizeEi.exit ], [ true, %.split ]
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
  br i1 %i.dl, label %.thread1556.a, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ph = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !376
  br label %.thread1556.a

.thread1556.a:                                    ; preds = %bb.cu, %bb.ct
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

.thread1555.thread:                               ; preds = %bb.cs, %.thread1556.a, %bb.cv, %.thread1555
  %i.pm = phi i1 [ true, %.thread1556.a ], [ false, %bb.cv ], [ false, %.thread1555 ], [ false, %bb.cs ] ; 8 uses
  %i.pn = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.po = icmp eq i32 %i.pn, %i.s                 ; 2 uses
  br i1 %i.po, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.thread1555.thread
  %i.pp = getelementptr inbounds nuw i8, ptr %i.i, i64 2880
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !231, !range !184, !noundef !185
  %23 = trunc nuw i8 %i.pq to i1
  %or.cond34.not = and i1 %.not1637, %23          ; 2 uses
  %spec.select1357 = zext i1 %or.cond34.not to i8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread1555.thread
  %24 = phi i1 [ %or.cond34.not, %bb.cw ], [ false, %.thread1555.thread ]
  %.01255 = phi i8 [ %spec.select1357, %bb.cw ], [ 0, %.thread1555.thread ] ; 25 uses
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
  %spec.select1357.a = zext i1 %narrow to i8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.qa = phi i8 [ %spec.select1357.a, %bb.cy ], [ 0, %bb.cx ] ; 24 uses
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
  br i1 %.01261.shrunk, label %bb.eg, label %bb.ep

bb.eg:                                            ; preds = %bb.ef
  %i.vo = getelementptr inbounds nuw i8, ptr %i.i, i64 301
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !713, !range !184, !noundef !185
  %i.vq = trunc nuw i8 %i.vp to i1
  %i.vr = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !378 ; 2 uses
  br i1 %i.vq, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call fastcc void @_ZN5ImStbL17stb_textedit_dragEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.012601537, ptr noundef %i.vs, float noundef %i.sw, float noundef %i.tf)
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  call fastcc void @_ZN5ImStbL18stb_textedit_clickEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.012601537, ptr noundef %i.vs, float noundef %i.sw, float noundef %i.tf)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.vt = getelementptr inbounds nuw i8, ptr %.012601537, i64 108
  store float -3.000000e-01, ptr %i.vt, align 4, !tbaa !391
  br label %bb.ep

bb.ek:                                            ; preds = %bb.ee, %bb.ed
  %i.vu = trunc nuw i8 %i.sl to i1
  br i1 %i.vu, label %bb.el, label %bb.ep

bb.el:                                            ; preds = %bb.ek
  %i.vv = getelementptr inbounds nuw i8, ptr %.012601537, i64 114
  %i.vw = load i8, ptr %i.vv, align 2, !tbaa !712, !range !184, !noundef !185
  %i.vx = trunc nuw i8 %i.vw to i1
  br i1 %i.vx, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.vy = getelementptr inbounds nuw i8, ptr %i.i, i64 252
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !714
  %i.wa = fcmp une float %i.vz, 0.000000e+00
  br i1 %i.wa, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wb = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.wc = load float, ptr %i.wb, align 8, !tbaa !715
  %i.wd = fcmp une float %i.wc, 0.000000e+00
  br i1 %i.wd, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.we = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !378
  call fastcc void @_ZN5ImStbL17stb_textedit_dragEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.012601537, ptr noundef %i.wf, float noundef %i.sw, float noundef %i.tf)
  %i.wg = getelementptr inbounds nuw i8, ptr %.012601537, i64 108
  store float -3.000000e-01, ptr %i.wg, align 4, !tbaa !391
  %i.wh = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.wh, align 8, !tbaa !419
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ec, %bb.ek, %bb.el, %bb.en, %bb.eo, %bb.ef, %bb.ej, %bb.dp
  %i.wi = getelementptr inbounds nuw i8, ptr %.012601537, i64 114 ; 2 uses
  %i.wj = load i8, ptr %i.wi, align 2, !tbaa !712, !range !184, !noundef !185
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.wl = load i8, ptr %i.sk, align 8, !tbaa !231, !range !184, !noundef !185
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store i8 0, ptr %i.wi, align 2, !tbaa !712
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  %i.wn = and i32 %spec.select1349, 544
  %or.cond57.not = icmp eq i32 %i.wn, 32
  br i1 %or.cond57.not, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.wo = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.wo, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i32 9, ptr %i.a, align 4, !tbaa !208
  %i.wp = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.i, ptr noundef nonnull %.012601537, ptr noundef %i.a, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.wp, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.wq = load i32, ptr %i.a, align 4, !tbaa !208
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.wq)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ex

bb.ex:                                            ; preds = %bb.et, %bb.ew, %bb.es
  %i.wr = getelementptr inbounds nuw i8, ptr %i.i, i64 300
  %i.ws = load i8, ptr %i.wr, align 4, !tbaa !708, !range !184, !noundef !185
  %i.wt = trunc nuw i8 %i.ws to i1                ; 2 uses
  br i1 %i.wt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.wu = getelementptr inbounds nuw i8, ptr %i.i, i64 302
  %i.wv = load i8, ptr %i.wu, align 2, !tbaa !716, !range !184, !noundef !185
  %i.ww = trunc nuw i8 %i.wv to i1                ; 2 uses
  %.not1358 = xor i1 %i.ww, true
  %i.wx = select i1 %i.ww, i1 %i.oh, i1 false
  %.mux = select i1 %.not1358, i1 true, i1 %i.dl
  br i1 %i.wx, label %bb.fa, label %bb.fb

bb.ez:                                            ; preds = %bb.ex
  br i1 %i.oh, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %i.wy = or i1 %i.dl, %i.wt
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.wz = phi i1 [ %i.oh, %bb.ey ], [ false, %bb.ez ], [ %i.oh, %bb.fa ] ; 2 uses
  %or.cond60 = phi i1 [ %.mux, %bb.ey ], [ %i.dl, %bb.ez ], [ %i.wy, %bb.fa ]
  %i.xa = getelementptr inbounds nuw i8, ptr %i.i, i64 3040 ; 4 uses
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !717
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %bb.fc, label %bb.fk

bb.fc:                                            ; preds = %bb.fb
  %or.cond63 = select i1 %or.cond60, i1 true, i1 %i.en
  br i1 %or.cond63, label %.loopexit1649, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fc
  %i.xd = getelementptr inbounds nuw i8, ptr %i.i, i64 3048
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph, %bb.fg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !409
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xe, i64 %indvars.iv
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !219 ; 2 uses
  %i.xh = zext i16 %i.xg to i32
  store i32 %i.xh, ptr %i.b, align 4, !tbaa !208
  %i.xi = icmp eq i16 %i.xg, 9
  br i1 %i.xi, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.xj = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.i, ptr noundef %.012601537, ptr noundef %i.b, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.xj, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.xk = load i32, ptr %i.b, align 4, !tbaa !208
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.xk)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xl = load i32, ptr %i.xa, align 8, !tbaa !717
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next, %i.xm
  br i1 %i.xn, label %bb.fd, label %.loopexit1649, !llvm.loop !683

.loopexit1649:                                    ; preds = %bb.fg, %bb.fc
  %i.xo = getelementptr inbounds nuw i8, ptr %i.i, i64 3044 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !420
  %i.xq = icmp slt i32 %i.xp, 0
  br i1 %i.xq, label %bb.fh, label %_ZN8ImVectorItE6resizeEi.exit

bb.fh:                                            ; preds = %.loopexit1649
  %i.xr = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.i, i64 3048 ; 3 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !409 ; 2 uses
  %.not6.i.i1418 = icmp eq ptr %i.xt, null
  br i1 %.not6.i.i1418, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xu = load i32, ptr %i.xa, align 8, !tbaa !421
  %i.xv = sext i32 %i.xu to i64
  %i.xw = shl nsw i64 %i.xv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.xr, ptr nonnull align 2 %i.xt, i64 %i.xw, i1 false)
  %i.xx = load ptr, ptr %i.xs, align 8, !tbaa !409
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.xx)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  store ptr %i.xr, ptr %i.xs, align 8, !tbaa !409
  store i32 0, ptr %i.xo, align 4, !tbaa !420
  br label %_ZN8ImVectorItE6resizeEi.exit

_ZN8ImVectorItE6resizeEi.exit:                    ; preds = %.loopexit1649, %bb.fj
  store i32 0, ptr %i.xa, align 8, !tbaa !421
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fb, %_ZN8ImVectorItE6resizeEi.exit, %bb.dk
  %i.xy = phi i1 [ %i.wz, %bb.fb ], [ %i.wz, %_ZN8ImVectorItE6resizeEi.exit ], [ %i.oh, %bb.dk ] ; 3 uses
  %i.xz = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.ya = icmp eq i32 %i.xz, %i.s
  br i1 %i.ya, label %bb.fl, label %.thread1572

bb.fl:                                            ; preds = %bb.fk
  %i.yb = getelementptr inbounds nuw i8, ptr %i.i, i64 5440
  %i.yc = load i8, ptr %i.yb, align 8, !tbaa !230, !range !184, !noundef !185
  %25 = trunc nuw i8 %i.yc to i1
  %or.cond66 = or i1 %24, %25
  br i1 %or.cond66, label %.thread1808, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yd = load float, ptr %i.ab, align 8, !tbaa !203
  %i.ye = fsub float %.sroa.01509.4.vec.extract1517, %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.i, i64 4568 ; 5 uses
  %i.yg = load float, ptr %i.yf, align 8, !tbaa !205
  %i.yh = fdiv float %i.ye, %i.yg
  %i.yi = fptosi float %i.yh to i32
  %i.yj = call noundef i32 @llvm.smax.i32(i32 %i.yi, i32 1) ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.012601537, i64 8 ; 12 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !378
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store i32 %i.yj, ptr %i.ym, align 4, !tbaa !399
  %i.yn = getelementptr inbounds nuw i8, ptr %i.i, i64 301
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !713, !range !184, !noundef !185
  %i.yp = zext nneg i8 %i.yo to i32
  %i.yq = shl nuw nsw i32 %i.yp, 22               ; 10 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.i, i64 302 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.i, i64 300 ; 7 uses
  %.in.in = select i1 %i.xy, ptr %i.yr, ptr %i.ys
  %.in = load i8, ptr %.in.in, align 2, !tbaa !231, !range !184, !noundef !185
  %i.yt = trunc nuw i8 %.in to i1                 ; 4 uses
  br i1 %i.xy, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %i.yu = load i8, ptr %i.ys, align 4, !tbaa !708, !range !184, !noundef !185
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.yw = getelementptr inbounds nuw i8, ptr %i.i, i64 303
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !718, !range !184, !noundef !185
  %i.yy = trunc nuw i8 %i.yx to i1
  br i1 %i.yy, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yz = load i8, ptr %i.yr, align 2, !tbaa !716, !range !184, !noundef !185
  %i.za = trunc nuw i8 %i.yz to i1
  %i.zb = xor i1 %i.za, true
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fm
  %i.zc = phi i1 [ false, %bb.fo ], [ false, %bb.fn ], [ false, %bb.fm ], [ %i.zb, %bb.fp ] ; 4 uses
  %i.zd = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4665, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.zd, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ze = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8714, i32 noundef 1, i32 noundef %i.s)
  %i.zf = and i1 %i.dn, %i.ze
  %i.zg = xor i1 %i.zf, true
  %brmerge1362 = or i1 %i.dl, %i.zg               ; 2 uses
  %.not1368 = xor i1 %i.r, true
  %brmerge1369 = or i1 %brmerge1362, %.not1368
  %not.brmerge1362 = xor i1 %brmerge1362, true
  br i1 %brmerge1369, label %bb.fu, label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  %.not1363 = xor i1 %i.dn, true
  %brmerge1364 = or i1 %i.dl, %.not1363           ; 2 uses
  %.not1365 = xor i1 %i.r, true
  %brmerge1366 = or i1 %brmerge1364, %.not1365
  %not.brmerge1364 = xor i1 %brmerge1364, true
  br i1 %brmerge1366, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.zh = load ptr, ptr %i.yk, align 8, !tbaa !378 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !394
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !395
  %i.zm = icmp ne i32 %i.zj, %i.zl
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fr, %bb.fs, %bb.ft
  %i.zn = phi i1 [ %i.zm, %bb.ft ], [ %not.brmerge1364, %bb.fs ], [ %not.brmerge1362, %bb.fr ] ; 5 uses
  %i.zo = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4644, i32 noundef 0, i32 noundef %i.s)
  br i1 %i.zo, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.zp = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4617, i32 noundef 0, i32 noundef %i.s)
  %or.cond74.not = and i1 %i.dn, %i.zp            ; 2 uses
  %brmerge1372.not = and i1 %i.r, %or.cond74.not
  %.mux1373 = select i1 %or.cond74.not, i1 true, i1 %i.zn
  br i1 %brmerge1372.not, label %bb.fx, label %bb.fy

bb.fw:                                            ; preds = %bb.fu
  %i.zq = and i32 %5, 67109888
  %brmerge1376.not = icmp eq i32 %i.zq, 67108864
  %.mux1377 = select i1 %i.dn, i1 true, i1 %i.zn
  br i1 %brmerge1376.not, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.zr = load ptr, ptr %i.yk, align 8, !tbaa !378 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !394
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !395
  %i.zw = icmp ne i32 %i.zt, %i.zv
  %i.zx = or i1 %i.zn, %i.zw
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fv, %bb.fx
  %or.cond138 = phi i1 [ %.mux1377, %bb.fw ], [ %.mux1373, %bb.fv ], [ %i.zx, %bb.fx ]
  %i.zy = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4663, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.zy, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zz = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8713, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.zz, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aaa = phi i1 [ false, %bb.fz ], [ %not.1637, %bb.ga ]
  %i.aab = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4667, i32 noundef 1, i32 noundef %i.s)
  %not.or.cond78 = and i1 %i.aab, %not.1637
  %i.aac = and i1 %i.dp, %not.or.cond78           ; 3 uses
  %i.aad = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4666, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aad, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aae = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 12859, i32 noundef 1, i32 noundef %i.s)
  %.not79 = xor i1 %i.aae, true
  %or.cond82 = or i1 %i.dl, %.not79
  br i1 %or.cond82, label %bb.gf, label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  br i1 %i.dl, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %bb.gc
  %or.cond135 = phi i1 [ %i.aac, %bb.gd ], [ %i.aac, %bb.gc ], [ %i.dp, %bb.ge ]
  %i.aaf = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4642, i32 noundef 0, i32 noundef %i.s)
  %i.aag = load i32, ptr %i.p, align 8, !tbaa !719
  %i.aah = and i32 %i.aag, 2
  %.not1310 = icmp eq i32 %i.aah, 0
  br i1 %.not1310, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aai = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !720
  %i.aak = trunc i32 %i.aaj to i1
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aal = phi i1 [ false, %bb.gf ], [ %i.aak, %bb.gg ]
  %i.aam = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 525, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aam, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aan = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 627, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.aao = phi i1 [ true, %bb.gh ], [ %i.aan, %bb.gi ] ; 2 uses
  %i.aap = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4621, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aap, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aaq = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4723, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.aar = phi i1 [ true, %bb.gj ], [ %i.aaq, %bb.gk ] ; 3 uses
  %i.aas = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8717, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aas, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aat = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8819, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.aau = phi i1 [ true, %bb.gl ], [ %i.aat, %bb.gm ] ; 3 uses
  br i1 %i.aal, label %bb.go, label %.sink.split

bb.go:                                            ; preds = %bb.gn
  %i.aav = getelementptr inbounds nuw i8, ptr %i.i, i64 113 ; 2 uses
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !226, !range !184, !noundef !185
  %i.aax = trunc nuw i8 %i.aaw to i1
  %i.aay = select i1 %i.aax, i32 635, i32 637
  %i.aaz = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef %i.aay, i1 noundef zeroext false) ; 2 uses
  %i.aba = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 526, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aba, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.abb = load i8, ptr %i.aav, align 1, !tbaa !226, !range !184, !noundef !185
  %i.abc = trunc nuw i8 %i.abb to i1
  %i.abd = select i1 %i.abc, i32 637, i32 635
  br label %.sink.split

.sink.split:                                      ; preds = %bb.gn, %bb.gp
  %.sink = phi i32 [ %i.abd, %bb.gp ], [ 526, %bb.gn ]
  %.ph1846 = phi i1 [ %i.aaz, %bb.gp ], [ false, %bb.gn ]
  %i.abe = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef %.sink, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gq

bb.gq:                                            ; preds = %.sink.split, %bb.go
end_hunk_1
begin_hunk_2_@_ZN5ImGui19SetColorEditOptionsEi
define void @_ZN5ImGui19SetColorEditOptionsEi(i32 noundef %0) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
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
  %i.k = and i32 %.2, 805306368
  %i.l = icmp eq i32 %i.k, 0
  %i.m = or disjoint i32 %.2, 268435456
  %.3 = select i1 %i.l, i32 %i.m, i32 %.2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 %.3, ptr %i.n, align 4, !tbaa !461
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10EndTooltipEv() local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null)
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef 0, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 17 uses
  %6 = alloca %struct.ImVec2, align 8             ; 7 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 4             ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 38 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 31 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 206
  store i8 1, ptr %i.i, align 2, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 209
  %i.k = load i8, ptr %i.j, align 1, !tbaa !183, !range !184, !noundef !185
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.dm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %1, 2
  %.not288 = icmp eq i32 %i.m, 0                  ; 4 uses
  %i.n = and i32 %1, 1026
  %.not287 = icmp eq i32 %i.n, 0                  ; 2 uses
  br i1 %.not287, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 3288
  %i.o = load float, ptr %.sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.q = load float, ptr %i.p, align 8, !tbaa !188 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3288
  %i.s = load float, ptr %i.r, align 8, !tbaa !203 ; 2 uses
  %i.t = fcmp olt float %i.q, %i.s
  %i.u = select i1 %i.t, float %i.q, float %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.12.0 = phi float [ %i.u, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %.sroa.0328.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 3284 ; 2 uses
  %.sroa.0328.0 = load float, ptr %.sroa.0328.0.in, align 4 ; 8 uses
  %.not289 = icmp eq ptr %3, null
  br i1 %.not289, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %2, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0275 = phi ptr [ %3, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.w = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %2, ptr noundef %.0275, i1 noundef zeroext false, float noundef -1.000000e+00) ; 3 uses
  store <2 x float> %i.w, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 4568 ; 7 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !205 ; 2 uses
  %.v = select i1 %.not288, float 2.000000e+00, float 3.000000e+00
  %i.z = fmul float %.v, %.sroa.0328.0
  %i.aa = fadd float %i.z, %i.y                   ; 8 uses
  %i.ab = extractelement <2 x float> %i.w, i64 0  ; 2 uses
  br i1 %.not287, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 3288
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !203 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.af = load float, ptr %i.ae, align 8, !tbaa !188 ; 2 uses
  %i.ag = fcmp oge float %i.ad, %i.af
  %i.ah = select i1 %i.ag, float %i.ad, float %i.af
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !188
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi float [ %i.ah, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.al = fadd float %i.y, %i.ab
  %i.am = insertelement <2 x float> poison, float %.sroa.0328.0, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.sroa.12.0, i64 1
  %i.ao = insertelement <2 x float> %i.w, float %i.al, i64 0
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ao) ; 4 uses
  %i.aq = and i32 %1, 16384
  %.not290 = icmp eq i32 %i.aq, 0
  br i1 %.not290, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8984
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !283
  %i.at = icmp ne ptr %i.as, null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = phi i1 [ false, %bb.j ], [ %i.at, %bb.k ] ; 4 uses
  %i.av = and i32 %1, 32768
  %.not291 = icmp eq i32 %i.av, 0
  br i1 %.not291, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8984
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !283
  %i.ay = icmp ne ptr %i.ax, null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = phi i1 [ false, %bb.l ], [ %i.ay, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store i64 0, ptr %5, align 8
  br i1 %i.au, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = and i32 %1, 4096
  %.not292 = icmp eq i32 %i.ba, 0
  %.in.ph.v = select i1 %.not292, i64 280, i64 584
  %.in.ph = getelementptr inbounds nuw i8, ptr %i.h, i64 %.in.ph.v
  %i.bb = load float, ptr %.in.ph, align 8, !tbaa !190 ; 3 uses
  store float %i.bb, ptr %5, align 8, !tbaa !237
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 284 ; 3 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !187 ; 3 uses
  %i.bf = fsub float %i.ak, %.sroa.12.0
  %i.bg = fadd float %i.bf, %i.be                 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store float %i.bg, ptr %i.bh, align 4, !tbaa !195
  %i.bi = and i32 %1, 8192
  %.not293 = icmp eq i32 %i.bi, 0
  br i1 %.not293, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !190 ; 2 uses
  store float %i.bk, ptr %5, align 8, !tbaa !237
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 284 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !187 ; 2 uses
  %i.bo = fsub float %i.ak, %.sroa.12.0
  %i.bp = fadd float %i.bo, %i.bn                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store float %i.bp, ptr %i.bq, align 4, !tbaa !195
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %i.bs = load float, ptr %i.br, align 8, !tbaa !341
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bt = load float, ptr %i.bc, align 8, !tbaa !186
  %i.bu = extractelement <2 x float> %i.ap, i64 0
  %i.bv = fadd float %i.bu, %i.bt
  %i.bw = fadd float %.sroa.0328.0, %i.bv
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.by = load float, ptr %i.bx, align 8, !tbaa !317
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.bz = phi ptr [ %i.bq, %bb.p ], [ %i.bh, %bb.q ], [ %i.bh, %bb.r ] ; 2 uses
  %i.ca = phi float [ %i.bp, %bb.p ], [ %i.bg, %bb.q ], [ %i.bg, %bb.r ]
  %i.cb = phi float [ %i.bn, %bb.p ], [ %i.be, %bb.q ], [ %i.be, %bb.r ]
  %i.cc = phi ptr [ %i.bm, %bb.p ], [ %i.bd, %bb.q ], [ %i.bd, %bb.r ]
  %i.cd = phi ptr [ %i.bl, %bb.p ], [ %i.bc, %bb.q ], [ %i.bc, %bb.r ]
  %i.ce = phi float [ %i.bk, %bb.p ], [ %i.bb, %bb.q ], [ %i.bb, %bb.r ]
  %i.cf = phi float [ %i.bs, %bb.p ], [ %i.bw, %bb.q ], [ %i.by, %bb.r ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store float %i.cf, ptr %i.cg, align 8, !tbaa !238
  %i.ch = extractelement <2 x float> %i.ap, i64 1
  %i.ci = fadd float %i.ch, %i.ca
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.ci, ptr %i.cj, align 4, !tbaa !196
  br i1 %.not288, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !469
  %i.cm = fmul float %i.cl, 5.000000e-01
  %i.cn = fptosi float %i.cm to i32
  %i.co = sitofp i32 %i.cn to float               ; 2 uses
  %i.cp = fsub float %i.ce, %i.co
  store float %i.cp, ptr %5, align 8, !tbaa !237
  %i.cq = fadd float %i.cf, %i.co
  store float %i.cq, ptr %i.cg, align 8, !tbaa !238
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.cr = load float, ptr %i.cd, align 8, !tbaa !186
  %i.cs = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.ak, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cb, i64 1
  %i.cw = fadd <2 x float> %i.ct, %i.cv           ; 7 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0 ; 7 uses
  store <2 x float> %i.cw, ptr %6, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> %i.ap, ptr %7, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %7, float noundef %.sroa.12.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !236
  %i.cy = and i32 %1, 30722
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.da = load float, ptr %5, align 8, !tbaa !237
  %i.db = extractelement <2 x float> %i.ap, i64 0
  %i.dc = fadd float %i.db, %i.da
  %i.dd = fcmp ogt float %i.ab, 0.000000e+00
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 3300
  %i.df = load float, ptr %i.de, align 4, !tbaa !308
  %i.dg = fmul float %i.df, 2.000000e+00
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dh = phi float [ %i.dg, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.di = fadd float %i.dc, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.di, ptr %i.dj, align 4, !tbaa !238
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 7792
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !360
  %i.dm = and i32 %i.dl, 16
  %.not294 = icmp eq i32 %i.dm, 0
  br i1 %.not294, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 7840
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !470
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dp = phi i32 [ %i.do, %bb.z ], [ %0, %bb.y ] ; 2 uses
  %i.dq = call noundef zeroext i1 @_ZN5ImGui22TreeNodeUpdateNextOpenEji(i32 noundef %i.dp, i32 noundef %1) ; 12 uses
  %or.cond = select i1 %i.au, i1 true, i1 %i.az   ; 2 uses
  br i1 %or.cond, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 616 ; 3 uses
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !338
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 624 ; 3 uses
  %i.du = load float, ptr %i.dt, align 8, !tbaa !339
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !340
  store float %i.dw, ptr %i.dr, align 8, !tbaa !338
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !341
  store float %i.dy, ptr %i.dt, align 8, !tbaa !339
  %i.dz = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef null, i32 noundef 0)
  store float %i.ds, ptr %i.dr, align 8, !tbaa !338
  store float %i.du, ptr %i.dt, align 8, !tbaa !339
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ea = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef null, i32 noundef 0)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0282.in = phi i1 [ %i.dz, %bb.ab ], [ %i.ea, %bb.ac ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 7856 ; 8 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.ed = or i32 %i.ec, 2
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !275
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 7892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !236
  %i.ef = and i32 %1, 1835008
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 3416
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !778
  %i.ej = or i32 %i.ei, %1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0273 = phi i32 [ %i.ej, %bb.ae ], [ %1, %bb.ad ] ; 17 uses
  %i.ek = and i32 %.0273, 1572864
  %.not295 = icmp eq i32 %i.ek, 0
  br i1 %.not295, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = load float, ptr %i.bz, align 4, !tbaa !195
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  %i.en = load float, ptr %i.em, align 4, !tbaa !199
  %i.eo = fcmp olt float %i.el, %i.en
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 3420
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !471
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.es = phi i1 [ false, %bb.ag ], [ false, %bb.af ], [ %i.er, %bb.ah ] ; 6 uses
  %i.et = and i32 %.0273, 8
  %.not296 = icmp eq i32 %i.et, 0                 ; 3 uses
  br i1 %.not296, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.eu = and i32 %.0273, 131072
  %.not297 = icmp eq i32 %i.eu, 0
  br i1 %.not297, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 8219
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !472, !range !184, !noundef !185
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !473
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 8224
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !346
  %i.fd = icmp eq ptr %i.fc, %i.h
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fe = call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv()
  %spec.select = select i1 %i.fe, i1 true, i1 %i.es
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj, %bb.ak, %bb.am, %bb.al, %bb.ai
  %.0281.shrunk = phi i1 [ false, %bb.ai ], [ %i.es, %bb.ak ], [ %i.es, %bb.aj ], [ %spec.select, %bb.an ], [ %i.es, %bb.am ], [ %i.es, %bb.al ] ; 2 uses
  %i.ff = and i32 %.0273, 256
  %.not298 = icmp eq i32 %i.ff, 0                 ; 4 uses
  br i1 %.0282.in, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = and i32 %.0273, 1048576
  %.not299 = icmp eq i32 %i.fg, 0
  br i1 %.not299, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 424 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !474 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !475
  %i.fl = add nsw i32 %i.fk, -1
  %i.fm = shl nuw i32 1, %i.fl                    ; 2 uses
  %i.fn = and i32 %i.fm, %i.fi
  %.not300 = icmp eq i32 %i.fn, 0
  br i1 %.not300, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 8184
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 8192
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !476
  %i.fr = load i32, ptr %i.fo, align 8, !tbaa !477
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [40 x i8], ptr %i.fq, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8     ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !479 ; 2 uses
  %i.fw = load float, ptr %i.cc, align 4, !tbaa !187 ; 2 uses
  %i.fx = fcmp oge float %i.fv, %i.fw
  %i.fy = select i1 %i.fx, float %i.fv, float %i.fw
  store float %i.fy, ptr %i.fu, align 4, !tbaa !479
  %i.fz = load float, ptr %i.bz, align 4, !tbaa !195
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !199
  %i.gc = fcmp ult float %i.fz, %i.gb
  br i1 %i.gc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gd = xor i32 %i.fm, -1
  %i.ge = and i32 %i.fi, %i.gd
  store i32 %i.ge, ptr %i.fh, align 8, !tbaa !474
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq, %bb.ap
  %or.cond3 = select i1 %i.dq, i1 %.0281.shrunk, i1 false
  br i1 %or.cond3, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gf = fsub float %i.cx, %i.aa
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.0273, float noundef %i.gf)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %brmerge.not = and i1 %i.dq, %.not296
  br i1 %brmerge.not, label %bb.aw, label %bb.dl

bb.aw:                                            ; preds = %bb.av
  %i.gg = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 5312
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !158
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 416 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !475
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !475
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  br label %bb.dl

bb.ax:                                            ; preds = %bb.ao
  br i1 %or.cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5ImGui26TablePushBackgroundChannelEv()
  %i.gm = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.gn = or i32 %i.gm, 512
  store i32 %i.gn, ptr %i.eb, align 8, !tbaa !275
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !236
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.gq = and i32 %.0273, 4
  %.not301 = icmp eq i32 %i.gq, 0
  br i1 %.not301, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 7852
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !255
  %i.gt = and i32 %i.gs, 16384
  %.not302 = icmp eq i32 %i.gt, 0
  br i1 %.not302, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gu = phi i32 [ 4096, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.gv = or disjoint i32 %i.gu, 512
  %spec.select360 = select i1 %.not298, i32 %i.gv, i32 %i.gu
  %i.gw = fsub float %i.cx, %i.aa                 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 3324
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !779 ; 2 uses
  %i.gz = fsub float %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !480 ; 2 uses
  %i.hc = fcmp ult float %i.hb, %i.gz
  br i1 %i.hc, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load float, ptr %i.x, align 8, !tbaa !205
  %i.he = call float @llvm.fmuladd.f32(float %.sroa.0328.0, float 2.000000e+00, float %i.hd)
  %i.hf = fadd float %i.gw, %i.he
  %i.hg = fadd float %i.gy, %i.hf
  %i.hh = fcmp olt float %i.hb, %i.hg
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hi = phi i1 [ false, %bb.bc ], [ %i.hh, %bb.bd ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 7852
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !255
  %i.hl = and i32 %i.hk, 4194304
  %i.hm = icmp ne i32 %i.hl, 0                    ; 6 uses
  %i.hn = and i32 %.0273, 192
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = select i1 %i.ho, i32 192, i32 128
  %i.hq = select i1 %i.hm, i32 %i.hp, i32 0
  %.1274 = or i32 %i.hq, %.0273                   ; 5 uses
  %i.hr = and i32 %.1274, 64
  %.not303 = icmp eq i32 %i.hr, 0
  %. = select i1 %.not303, i32 32, i32 288
  %.sink361 = select i1 %i.hi, i32 16, i32 %.
  %i.hs = or disjoint i32 %spec.select360, %.sink361
  %i.ht = lshr i32 %.0273, 9
  %i.hu = and i32 %i.ht, 262144
  %spec.select363 = or disjoint i32 %i.hs, %i.hu  ; 3 uses
  store i32 %spec.select363, ptr %i.a, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.hv = trunc i32 %.0273 to i8
  %i.hw = and i8 %i.hv, 1
  store i8 %i.hw, ptr %i.b, align 1, !tbaa !231
  br i1 %i.hm, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5ImGui21MultiSelectItemHeaderEjPbPi(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !208 ; 2 uses
  br i1 %i.hi, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hx = and i32 %.pre, -49
  %i.hy = or disjoint i32 %i.hx, 16
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 5320
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !209
  %i.ib = icmp eq ptr %i.h, %i.ia
  %or.cond7 = and i1 %i.hi, %i.ib
  %i.ic = or i32 %spec.select363, 65536
  %spec.select362 = select i1 %or.cond7, i32 %spec.select363, i32 %i.ic
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bg
  %i.id = phi i32 [ %i.hy, %bb.bg ], [ %spec.select362, %bb.bh ], [ %.pre, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ie = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.id) ; 2 uses
  br i1 %.not298, label %bb.bj, label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ie, label %bb.bk, label %.critedge.thread

bb.bk:                                            ; preds = %bb.bj
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 8920
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !214
  %.not305 = icmp eq i32 %i.ig, %0
  br i1 %.not305, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ih = and i32 %.1274, 192
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 8244
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !224
  %i.il = icmp ne i32 %i.ik, %0
  %or.cond9 = or i1 %i.hm, %i.il
  br i1 %or.cond9, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %11 = phi i32 [ 1, %bb.bn ], [ 0, %bb.bm ]      ; 2 uses
  %.0277 = phi i1 [ true, %bb.bn ], [ false, %bb.bm ]
  %i.im = and i32 %.1274, 128
  %.not306 = icmp eq i32 %i.im, 0
  br i1 %.not306, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.in = getelementptr inbounds nuw i8, ptr %i.f, i64 8217
  %i.io = load i8, ptr %i.in, align 1, !tbaa !223, !range !184, !noundef !185
  %i.ip = xor i8 %i.io, 1
  %i.iq = zext nneg i8 %i.ip to i32
  %12 = or i32 %11, %i.iq
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ir = phi i32 [ %11, %bb.bp ], [ %12, %bb.bq ]
  %i.is = icmp ne i32 %i.ir, 0
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.1278 = phi i1 [ %i.is, %bb.br ], [ %.0277, %bb.bo ] ; 2 uses
  %i.it = and i32 %.1274, 64
  %.not307 = icmp eq i32 %i.it, 0
  br i1 %.not307, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 2890
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !219
  %i.iw = icmp eq i16 %i.iv, 2
  %spec.select316 = select i1 %i.iw, i1 true, i1 %.1278
  br label %.critedge

bb.bu:                                            ; preds = %bb.bk
  %not. = xor i1 %i.dq, true                      ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.bt, %bb.bu, %bb.bs
  %.0279 = phi i1 [ %not., %bb.bu ], [ true, %bb.bt ], [ true, %bb.bs ] ; 3 uses
  %.2 = phi i1 [ %not., %bb.bu ], [ %spec.select316, %bb.bt ], [ %.1278, %bb.bs ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 8220 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !222
  %i.iz = icmp eq i32 %i.iy, %0
  br i1 %i.iz, label %bb.bv, label %.thread356

.critedge.thread:                                 ; preds = %bb.bj
  %13 = getelementptr inbounds nuw i8, ptr %i.f, i64 8220 ; 2 uses
  %14 = load i32, ptr %13, align 4, !tbaa !222
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %bb.bv, label %.thread369

.thread356:                                       ; preds = %.critedge
  br i1 %.2, label %.thread358, label %bb.bx

bb.bv:                                            ; preds = %.critedge.thread, %.critedge
  %16 = phi ptr [ %13, %.critedge.thread ], [ %i.ix, %.critedge ]
  %.2365 = phi i1 [ false, %.critedge.thread ], [ %.2, %.critedge ]
  %.0279364 = phi i1 [ false, %.critedge.thread ], [ %.0279, %.critedge ] ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !473
  %i.jc = icmp eq i32 %i.jb, 0
  %or.cond11 = and i1 %i.dq, %i.jc
  br i1 %or.cond11, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0)
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  %.pre344 = load i32, ptr %16, align 4, !tbaa !222
  %i.jd = icmp eq i32 %.pre344, %0
  br i1 %i.jd, label %.thread, label %.thread358

.thread:                                          ; preds = %bb.bv, %bb.bw
  %.3355 = phi i1 [ true, %bb.bw ], [ %.2365, %bb.bv ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !473
  %i.jg = icmp ne i32 %i.jf, 1
  %or.cond13 = or i1 %i.dq, %i.jg
  br i1 %or.cond13, label %.thread356.a, label %.thread340

.thread340:                                       ; preds = %.thread
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0)
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %.thread358

.thread356.a:                                     ; preds = %.thread
  br i1 %.3355, label %.thread358, label %bb.bx

.thread358:                                       ; preds = %bb.bw, %.thread356, %.thread340, %.thread356.a
  %.0279362 = phi i1 [ %.0279, %.thread356 ], [ %.0279364, %.thread356.a ], [ %.0279364, %.thread340 ], [ %.0279364, %bb.bw ]
  %i.jh = xor i1 %i.dq, true                      ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !481
  %i.jk = zext i1 %i.jh to i32
  call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i32 noundef %i.dp, i32 noundef %i.jk)
  %i.jl = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.jm = or i32 %i.jl, 16
  store i32 %i.jm, ptr %i.eb, align 8, !tbaa !275
  br label %bb.bx

bb.bx:                                            ; preds = %.thread356, %.thread356.a, %.thread358, %bb.bi
  %.0283.in = phi i1 [ %i.dq, %bb.bi ], [ %i.jh, %.thread358 ], [ %i.dq, %.thread356.a ], [ %i.dq, %.thread356 ] ; 3 uses
  %.1280 = phi i1 [ %i.ie, %bb.bi ], [ %.0279362, %.thread358 ], [ %.0279364, %.thread356.a ], [ %.0279, %.thread356 ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.bi ], [ 0, %.thread358 ], [ 1, %.thread356.a ], [ 1, %.thread356 ]
  br i1 %i.hm, label %bb.by, label %bb.cb

.thread369:                                       ; preds = %.critedge.thread
  br i1 %i.hm, label %.thread378, label %bb.cb

.thread378:                                       ; preds = %.thread369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i8 0, ptr %i.e, align 1, !tbaa !231
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_i(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef 0)
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.jn = select i1 %.1280, i8 %.5, i8 0
  store i8 %i.jn, ptr %i.e, align 1, !tbaa !231
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_i(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef 0)
  br i1 %.1280, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jo = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !348
  %i.jq = getelementptr inbounds nuw i8, ptr %i.f, i64 7780
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !344
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %0, i32 noundef %i.jp, i32 noundef %i.jr, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.ca

bb.ca:                                            ; preds = %.thread378, %bb.bz, %bb.by
  %.0283.in374382 = phi i1 [ %i.dq, %.thread378 ], [ %.0283.in, %bb.bz ], [ %.0283.in, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.cb

bb.cb:                                            ; preds = %.thread369, %bb.ca, %bb.bx
  %.0283.in373 = phi i1 [ %i.dq, %.thread369 ], [ %.0283.in374382, %bb.ca ], [ %.0283.in, %bb.bx ] ; 5 uses
  %i.js = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.jt = zext nneg i8 %i.js to i32
  %i.ju = and i32 %.0273, 1
  %.not308 = icmp eq i32 %i.ju, %i.jt
  br i1 %.not308, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jv = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.jw = or i32 %i.jv, 8
  store i32 %i.jw, ptr %i.eb, align 8, !tbaa !275
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.jx = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) ; 4 uses
  %spec.select318 = select i1 %i.hm, i32 6, i32 2 ; 2 uses
  br i1 %.not288, label %bb.cp, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jy = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = load i8, ptr %i.c, align 1, !range !184
  %i.kb = trunc nuw i8 %i.ka to i1
  %i.kc = select i1 %i.jz, i32 27, i32 26
  %i.kd = select i1 %i.kb, i32 %i.kc, i32 25
  %i.ke = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.kd, float noundef 1.000000e+00)
  %.sroa.030.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !190
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.cg, align 8, !tbaa !190
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 3292
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.030.0.copyload, <2 x float> %.sroa.029.0.copyload, i32 noundef %i.ke, i1 noundef zeroext true, float noundef %i.kg)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select318, float noundef -1.000000e+00)
  %.not = xor i1 %i.au, true
  %or.cond17 = select i1 %.not, i1 true, i1 %i.az
  br i1 %or.cond17, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.kh = and i32 %.0273, 512
  %.not311 = icmp eq i32 %i.kh, 0
  br i1 %.not311, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !202
  %i.kk = fneg float %i.aa
  %i.kl = load float, ptr %i.x, align 8, !tbaa !205
  %i.km = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kl, i64 1
  %i.ko = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> <float 6.000000e-01, float 5.000000e-01>, <2 x float> %i.cw)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.kj, <2 x float> %i.ko, i32 noundef %i.jx)
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  br i1 %.not298, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.kp = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !202
  %i.kr = fadd float %.sroa.0328.0, %i.gw
  %i.ks = insertelement <2 x float> %i.cw, float %i.kr, i64 0
  %i.kt = and i32 %.0273, 536870912
  %.not312 = icmp eq i32 %i.kt, 0
  %i.ku = select i1 %.not312, i32 3, i32 2
  %i.kv = select i1 %.0283.in373, i32 %i.ku, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.kq, <2 x float> %i.ks, i32 noundef %i.jx, i32 noundef %i.kv, float noundef 1.000000e+00)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.kw = fsub float %i.aa, %.sroa.0328.0
  %i.kx = fsub float %i.cx, %i.kw                 ; 2 uses
  store float %i.kx, ptr %6, align 8, !tbaa !194
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ch
  %i.ky = phi float [ %i.cx, %bb.cj ], [ %i.kx, %bb.ck ], [ %i.cx, %bb.ch ] ; 2 uses
  %i.kz = and i32 %.0273, 268435456
  %.not313 = icmp eq i32 %i.kz, 0
  br i1 %.not313, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.la = load float, ptr %i.x, align 8, !tbaa !205
  %i.lb = load float, ptr %.sroa.0328.0.in, align 4, !tbaa !206
  %i.lc = fadd float %i.la, %i.lb
  %i.ld = load float, ptr %i.cg, align 8, !tbaa !238
  %i.le = fsub float %i.ld, %i.lc
  store float %i.le, ptr %i.cg, align 8, !tbaa !238
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lf = getelementptr inbounds nuw i8, ptr %i.f, i64 10264
  %i.lg = load i8, ptr %i.lf, align 8, !tbaa !191, !range !184, !noundef !185
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.co, label %bb.cz

bb.co:                                            ; preds = %bb.cn
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.100)
  br label %bb.cz

bb.cp:                                            ; preds = %bb.cd
  %i.li = load i8, ptr %i.c, align 1, !tbaa !231, !range !184, !noundef !185 ; 3 uses
  %i.lj = or i8 %i.li, %i.js
  %or.cond19.not = icmp eq i8 %i.lj, 0
  br i1 %or.cond19.not, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lk = trunc nuw i8 %i.li to i1
  %i.ll = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.lm = and i8 %i.ll, %i.li
  %or.cond21.not = icmp eq i8 %i.lm, 0
  %i.ln = select i1 %i.lk, i32 26, i32 25
  %i.lo = select i1 %or.cond21.not, i32 %i.ln, i32 27
  %i.lp = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.lo, float noundef 1.000000e+00)
  %.sroa.028.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !190
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.cg, align 8, !tbaa !190
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload, <2 x float> %.sroa.027.0.copyload, i32 noundef %i.lp, i1 noundef zeroext false, float noundef 0.000000e+00)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select318, float noundef 0.000000e+00)
  %.not22 = xor i1 %i.au, true
  %or.cond24 = select i1 %.not22, i1 true, i1 %i.az
  br i1 %or.cond24, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lq = and i32 %.0273, 512
  %.not309 = icmp eq i32 %i.lq, 0
  br i1 %.not309, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lr = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !202
  %i.lt = fneg float %i.aa
  %i.lu = load float, ptr %i.x, align 8, !tbaa !205
  %i.lv = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %i.lu, i64 1
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cw)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.ls, <2 x float> %i.lx, i32 noundef %i.jx)
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  br i1 %.not298, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ly = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !202
  %i.ma = fadd float %.sroa.0328.0, %i.gw
  %i.mb = load float, ptr %i.x, align 8, !tbaa !205
  %i.mc = extractelement <2 x float> %i.cw, i64 1
  %i.md = call float @llvm.fmuladd.f32(float %i.mb, float 1.500000e-01, float %i.mc)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ma, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.md, i64 1
  %i.me = and i32 %.0273, 536870912
  %.not310 = icmp eq i32 %i.me, 0
  %i.mf = select i1 %.not310, i32 3, i32 2
  %i.mg = select i1 %.0283.in373, i32 %i.mf, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.lz, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.jx, i32 noundef %i.mg, float noundef f0x3F333333)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.cu
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 10264
  %i.mi = load i8, ptr %i.mh, align 8, !tbaa !191, !range !184, !noundef !185
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.101, ptr noundef null)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cn, %bb.co, %bb.cx, %bb.cy
  %i.mk = phi float [ %i.ky, %bb.cn ], [ %i.ky, %bb.co ], [ %i.cx, %bb.cx ], [ %i.cx, %bb.cy ]
  br i1 %i.es, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ml = fsub float %i.mk, %i.aa
  %i.mm = fadd float %.sroa.0328.0, %i.ml
  %i.mn = load float, ptr %i.x, align 8, !tbaa !205
  %i.mo = extractelement <2 x float> %i.cw, i64 1
  %i.mp = call float @llvm.fmuladd.f32(float %i.mn, float 5.000000e-01, float %i.mo)
  store float %i.mm, ptr %9, align 4, !tbaa !194
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.mp, ptr %i.mq, align 4, !tbaa !197
  call void @_ZN5ImGui27TreeNodeDrawLineToChildNodeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  br i1 %.not288, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.cg, ptr noundef %2, ptr noundef %.0275, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %.sroa.0.0.copyload = load <2 x float>, ptr %6, align 8, !tbaa !190
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.0.copyload, ptr noundef %2, ptr noundef %.0275, i1 noundef zeroext false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  br i1 %i.az, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %or.cond26 = select i1 %.0283.in373, i1 %.0281.shrunk, i1 false
  br i1 %or.cond26, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.mr = load float, ptr %6, align 8, !tbaa !194
  %i.ms = fsub float %i.mr, %i.aa
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.1274, float noundef %i.ms)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %or.cond319 = and i1 %.not296, %.0283.in373
  br i1 %or.cond319, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.mt = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 5312
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !158
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 416 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !475
  %i.my = add nsw i32 %i.mx, 1
  store i32 %i.my, ptr %i.mw, align 8, !tbaa !475
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.dl

bb.dl:                                            ; preds = %bb.aw, %bb.av, %bb.dk
  %.0 = phi i1 [ %.0283.in373, %bb.dk ], [ %i.dq, %bb.av ], [ true, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.dm

bb.dm:                                            ; preds = %bb.a, %bb.dl
  %.1 = phi i1 [ %.0, %bb.dl ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TreeNodeVEPKcS1_P13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TreeNodeVEPKvPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null)
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef %1, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKciS1_z(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret i1 %.0.i
}

declare noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481
  %i.f = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %0, i32 noundef 0)
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15TreeNodeSetOpenEjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481
  %i.f = zext i1 %1 to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %0, i32 noundef %i.f)
  ret void
end_hunk_2
