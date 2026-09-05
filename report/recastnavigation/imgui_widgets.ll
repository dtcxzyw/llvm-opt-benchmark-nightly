Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
begin_hunk_0_@_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar:.preheader
  %i.ae = getelementptr inbounds [44 x i8], ptr %i.n, i64 %.pre470
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.ae, ptr noundef nonnull align 4 dereferenceable(41) %i.o, i64 41, i1 false), !tbaa.struct !582
  %.pre453 = load ptr, ptr %i.g, align 8, !tbaa !577
  br label %._crit_edge469

._crit_edge469:                                   ; preds = %bb.h, %bb.i
  %i.af = phi ptr [ %.pre453, %bb.i ], [ %i.m, %bb.h ] ; 4 uses
  %i.ag = getelementptr inbounds [44 x i8], ptr %i.af, i64 %.pre470 ; 2 uses
  %i.ah = trunc i32 %.0395 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 38
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !583
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  %.val336 = load i32, ptr %i.aj, align 4, !tbaa !584 ; 3 uses
  %i.ak = and i32 %.val336, 64
  %.not.i = icmp ne i32 %i.ak, 0                  ; 2 uses
  %i.al = and i32 %.val336, 128
  %.not2.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not2.i, i64 1, i64 2
  %i.an = select i1 %.not.i, i64 0, i64 %i.am
  %i.ao = icmp sgt i32 %.0395, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge469
  %i.ap = getelementptr [44 x i8], ptr %i.af, i64 %i.ad
  %i.aq = getelementptr i8, ptr %i.ap, i64 -40
  %.val335 = load i32, ptr %i.aq, align 4, !tbaa !584 ; 2 uses
  %i.ar = and i32 %.val335, 64
  %.not.i339 = icmp eq i32 %i.ar, 0
  %or.cond = and i1 %.not.i, %.not.i339
  %i.as = and i32 %.val335, 192
  %i.at = icmp eq i32 %i.as, 128
  %i.au = and i32 %.val336, 192
  %i.av = icmp ne i32 %i.au, 128
  %or.cond3 = and i1 %i.av, %i.at
  %i.aw = select i1 %or.cond3, i1 true, i1 %or.cond
  %.2287 = select i1 %i.aw, i1 true, i1 %.0285394
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge469
  %.3 = phi i1 [ %.2287, %bb.j ], [ %.0285394, %._crit_edge469 ]
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %i.an ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !847
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !847
  %i.ba = add nsw i32 %.0395, 1
  %.pre454 = load i32, ptr %i.d, align 8, !tbaa !566
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.k
  %i.bb = phi i32 [ %.pre454, %bb.k ], [ %i.l, %bb.g ], [ %i.l, %bb.f ] ; 3 uses
  %i.bc = phi ptr [ %i.af, %bb.k ], [ %i.m, %bb.g ], [ %i.m, %bb.f ]
  %i.bd = phi ptr [ %i.af, %bb.k ], [ %i.n, %bb.g ], [ %i.n, %bb.f ]
  %.4 = phi i1 [ %.3, %bb.k ], [ %.0285394, %bb.g ], [ %.0285394, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.ba, %bb.k ], [ %.0395, %bb.g ], [ %.0395, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = sext i32 %i.bb to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.a, label %._crit_edge, !llvm.loop !840

bb.m:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !585 ; 4 uses
  %i.bi = icmp sgt i32 %.0.lcssa, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = sdiv i32 %i.bh, 2
  %i.bk = add nsw i32 %i.bj, %i.bh
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.o, %bb.n
  %i.bl = phi i32 [ %i.bk, %bb.o ], [ 8, %bb.n ]
  %i.bm = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 %.0.lcssa) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bn, 44
  %i.bp = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bo) #36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !577 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.br, null
  br i1 %.not6.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.bs = load i32, ptr %i.d, align 8, !tbaa !586
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bt, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bp, ptr nonnull align 4 %i.br, i64 %i.bu, i1 false)
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !577
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bv) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !577
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !585
  br label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit:       ; preds = %bb.m, %bb.q
  store i32 %.0.lcssa, ptr %i.d, align 8, !tbaa !586
  br label %bb.r

bb.r:                                             ; preds = %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit, %._crit_edge
  %i.bw = icmp ugt i32 %.0.lcssa, 1
  %or.cond526 = and i1 %.0285.lcssa, %i.bw
  br i1 %or.cond526, label %bb.s, label %_ZL7ImQsortPvmmPFiPKvS1_E.exit

bb.s:                                             ; preds = %bb.r
  %i.bx = sext i32 %.0.lcssa to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !567
  tail call void @qsort(ptr noundef %i.bz, i64 noundef range(i64 -2147483648, 2147483648) %i.bx, i64 noundef 44, ptr noundef nonnull @_ZL24TabItemComparerBySectionPKvS0_) #36
  br label %_ZL7ImQsortPvmmPFiPKvS1_E.exit

_ZL7ImQsortPvmmPFiPKvS1_E.exit:                   ; preds = %bb.s, %bb.r
  %i.ca = load i32, ptr %7, align 16, !tbaa !847  ; 10 uses
  %i.cb = icmp sgt i32 %i.ca, 0                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !847 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cf = load i32, ptr %i.ce, align 8            ; 8 uses
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = icmp sgt i32 %i.cg, 0
  %or.cond528 = select i1 %i.cb, i1 %i.ch, i1 false
  br i1 %or.cond528, label %bb.t, label %_ZL7ImQsortPvmmPFiPKvS1_E.exit._crit_edge

bb.t:                                             ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 3236
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !342
  br label %_ZL7ImQsortPvmmPFiPKvS1_E.exit._crit_edge

_ZL7ImQsortPvmmPFiPKvS1_E.exit._crit_edge:        ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit, %bb.t
  %i.ck = phi float [ %i.cj, %bb.t ], [ 0.000000e+00, %_ZL7ImQsortPvmmPFiPKvS1_E.exit ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.ck, ptr %i.cl, align 8, !tbaa !848
  %i.cm = icmp sgt i32 %i.cd, 0                   ; 2 uses
  %i.cn = icmp sgt i32 %i.cf, 0                   ; 2 uses
  %or.cond7 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 3236
  %i.cp = load float, ptr %i.co, align 4, !tbaa !342
  br label %bb.v

bb.v:                                             ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit._crit_edge, %bb.u
  %i.cq = phi float [ %i.cp, %bb.u ], [ 0.000000e+00, %_ZL7ImQsortPvmmPFiPKvS1_E.exit._crit_edge ] ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float %i.cq, ptr %i.cr, align 4, !tbaa !848
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !581 ; 10 uses
  %.not314 = icmp eq i32 %i.ct, 0
  br i1 %.not314, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !580
  store i32 0, ptr %i.cs, align 4, !tbaa !581
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !587 ; 2 uses
  %.not315 = icmp eq i32 %i.cw, 0
  br i1 %.not315, label %bb.ag, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x
  %i.cx = load i32, ptr %i.d, align 8, !tbaa !566 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !577 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.cx to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, label %bb.z, !llvm.loop !18

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.y ] ; 3 uses
  %i.db = getelementptr inbounds nuw [44 x i8], ptr %i.da, i64 %indvars.iv.i.i ; 5 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !579
  %i.dd = icmp eq i32 %i.dc, %i.cw
  br i1 %i.dd, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, label %bb.y

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i: ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !584 ; 2 uses
  %i.dg = and i32 %i.df, 32
  %.not.i342 = icmp eq i32 %i.dg, 0
  br i1 %.not.i342, label %bb.aa, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.aa:                                            ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i
  %i.dh = trunc i64 %indvars.iv.i.i to i32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dj = load i16, ptr %i.di, align 8, !tbaa !588 ; 2 uses
  %i.dk = sext i16 %i.dj to i32                   ; 2 uses
  %i.dl = add nsw i32 %i.dk, %i.dh                ; 2 uses
  %or.cond.i = icmp ult i32 %i.dl, %i.cx
  br i1 %or.cond.i, label %bb.ab, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [44 x i8], ptr %i.da, i64 %i.dm ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !584 ; 2 uses
  %i.dq = and i32 %i.dp, 32
  %.not35.i = icmp eq i32 %i.dq, 0
  br i1 %.not35.i, label %bb.ac, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dr = xor i32 %i.dp, %i.df
  %i.ds = and i32 %i.dr, 192
  %.not36.i = icmp eq i32 %i.ds, 0
  br i1 %.not36.i, label %bb.ad, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) %i.db, i64 44, i1 false), !tbaa.struct !582
  %i.dt = icmp sgt i16 %i.dj, 0                   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.dv = select i1 %i.dt, ptr %i.du, ptr %i.dn
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  %i.dx = select i1 %i.dt, ptr %i.db, ptr %i.dw
  %9 = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dy = zext nneg i32 %9 to i64
  %i.dz = mul nuw nsw i64 %i.dy, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %i.dv, i64 %i.dz, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.dn, ptr noundef nonnull align 4 dereferenceable(41) %6, i64 41, i1 false), !tbaa.struct !582
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !564
  %i.ec = and i32 %i.eb, 4194304
  %.not37.i = icmp eq i32 %i.ec, 0
  br i1 %.not37.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv() #36
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ed = load i32, ptr %i.cv, align 4, !tbaa !587 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !580
  %i.eg = icmp eq i32 %i.ed, %i.ef
  %spec.select328 = select i1 %i.eg, i32 %i.ed, i32 %i.ct
  br label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread: ; preds = %bb.y, %bb.ab, %.preheader.i.i, %bb.aa, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, %bb.ac, %bb.af
  %.1299 = phi i32 [ %spec.select328, %bb.af ], [ %i.ct, %bb.ac ], [ %i.ct, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i ], [ %i.ct, %bb.aa ], [ %i.ct, %.preheader.i.i ], [ %i.ct, %bb.ab ], [ %i.ct, %bb.y ]
  store i32 0, ptr %i.cv, align 4, !tbaa !587
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, %bb.x
  %.2300 = phi i32 [ %.1299, %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread ], [ %i.ct, %bb.x ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !564
  %i.ej = and i32 %i.ei, 4
  %.not316 = icmp eq i32 %i.ej, 0
  br i1 %.not316, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 5184
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !161 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 4400
  %i.eo = load float, ptr %i.en, align 8, !tbaa !208
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 3216
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !236 ; 2 uses
  %i.er = fadd float %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 280 ; 4 uses
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !554
  %i.ew = fsub float %i.ev, %i.eq
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !849
  store float %i.ew, ptr %i.es, align 8
  %.sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.em, i64 284
  store i32 %i.ey, ptr %.sroa_idx26.i, align 4
  %i.ez = load float, ptr %i.eu, align 4, !tbaa !554
  %i.fa = fadd float %i.er, %i.ez
  store float %i.fa, ptr %i.eu, align 4, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 3412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !238
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !252
  %i.fe = fmul float %i.fd, 5.000000e-01
  store float %i.fe, ptr %i.fc, align 4, !tbaa !252
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.ff = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.158, ptr noundef null, i32 noundef 80)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 2) #36
  br i1 %i.ff, label %.preheader.i, label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread

_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread: ; preds = %bb.ah
  store i64 %i.et, ptr %i.es, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.an

.preheader.i:                                     ; preds = %bb.ah
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !566 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i, label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.lr.ph.i
  %i.fl = phi i32 [ %i.fg, %.lr.ph.i ], [ %i.gb, %bb.al ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.al ] ; 2 uses
  %.02528.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i344, %bb.al ] ; 2 uses
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !577
  %i.fn = getelementptr inbounds nuw [44 x i8], ptr %i.fm, i64 %indvars.iv.i ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !584
  %i.fq = and i32 %i.fp, 2097152
  %.not.i343 = icmp eq i32 %i.fq, 0
  br i1 %.not.i343, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !589 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !590
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv
  br label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i

_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i = phi ptr [ %i.fw, %bb.ak ], [ @.str.110, %bb.aj ]
  %i.fx = load i32, ptr %i.fk, align 8, !tbaa !580
  %i.fy = load i32, ptr %i.fn, align 4, !tbaa !579
  %i.fz = icmp eq i32 %i.fx, %i.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !193
  %i.ga = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %.0.i.i, i1 noundef zeroext %i.fz, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %spec.select.i = select i1 %i.ga, ptr %i.fn, ptr %.02528.i
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !566
  br label %bb.al

bb.al:                                            ; preds = %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i, %bb.ai
  %i.gb = phi i32 [ %.pre.i, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i ], [ %i.fl, %bb.ai ] ; 2 uses
  %.2.i344 = phi ptr [ %spec.select.i, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i ], [ %.02528.i, %bb.ai ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next.i, %i.gc
  br i1 %i.gd, label %bb.ai, label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit, !llvm.loop !841

_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit: ; preds = %bb.al, %.preheader.i
  %.025.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.2.i344, %bb.al ] ; 2 uses
  %i.ge = load ptr, ptr @GImGui, align 8, !tbaa !34
  call void @_ZN5ImGui8EndPopupEv() #36
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 9484 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !311
  %i.gh = add nsw i32 %i.gg, -1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !311
  store i64 %i.et, ptr %i.es, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.not317 = icmp eq ptr %.025.lcssa.i, null
  br i1 %.not317, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit
  %i.gi = load i32, ptr %.025.lcssa.i, align 4, !tbaa !579 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !580
  br label %bb.an

bb.an:                                            ; preds = %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit, %bb.am, %bb.ag
  %.4302 = phi i32 [ %.2300, %bb.ag ], [ %i.gi, %bb.am ], [ %.2300, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit ], [ %.2300, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 0, ptr %i.a, align 4, !tbaa !211
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gl = add nsw i32 %i.cf, %i.ca                ; 3 uses
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !211
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.ca, ptr %i.gm, align 4, !tbaa !211
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 8984 ; 2 uses
  %i.go = load i32, ptr %i.d, align 8, !tbaa !566 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 8988 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !850 ; 4 uses
  %i.gr = icmp sgt i32 %i.go, %i.gq
  br i1 %i.gr, label %bb.ao, label %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit

bb.ao:                                            ; preds = %bb.an
  %.not.i.i345 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i345, label %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = sdiv i32 %i.gq, 2
  %i.gt = add nsw i32 %i.gs, %i.gq
  br label %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i: ; preds = %bb.ap, %bb.ao
  %i.gu = phi i32 [ %i.gt, %bb.ap ], [ 8, %bb.ao ]
  %i.gv = call noundef i32 @llvm.smax.i32(i32 %i.gu, i32 %i.go) ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul nsw i64 %i.gw, 12
  %i.gy = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.gx) #36 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 8992 ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !851 ; 2 uses
  %.not6.i.i346 = icmp eq ptr %i.ha, null
  br i1 %.not6.i.i346, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i
  %i.hb = load i32, ptr %i.gn, align 8, !tbaa !852
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul nsw i64 %i.hc, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gy, ptr nonnull align 4 %i.ha, i64 %i.hd, i1 false)
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !851
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.he) #36
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !851
end_hunk_0
begin_hunk_1_@_ZN5ImGui16TabBarQueueFocusEP11ImGuiTabBarP12ImGuiTabItem:bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !579
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !581
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui16TabBarQueueFocusEP11ImGuiTabBarPKc(ptr nofree noundef captures(none) initializes((36, 40)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !564
  %i.b = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) #36 ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.c) #36
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.f, ptr noundef %1, ptr noundef null) #36
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0.i, ptr %i.h, align 4, !tbaa !581
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5ImGui18TabBarQueueReorderEP11ImGuiTabBarP12ImGuiTabItemi(ptr nofree noundef writeonly captures(none) initializes((116, 122)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !579
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.a, ptr %i.b, align 4, !tbaa !587
  %i.c = trunc i32 %2 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %i.c, ptr %i.d, align 8, !tbaa !588
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarP12ImGuiTabItem6ImVec2(ptr nofree noundef captures(none) %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !564
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !584  ; 2 uses
  %i.h = and i32 %i.g, 192
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load float, ptr %i.j, align 4, !tbaa !554
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load float, ptr %i.l, align 8, !tbaa !596
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi float [ %i.m, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.o = fsub float %i.k, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !595
  %i.r = fadd float %i.o, %i.q
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 3 uses
  %i.s = fcmp ule float %i.r, %.sroa.0.0.vec.extract ; 2 uses
  %i.t = select i1 %i.s, i32 1, i32 -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !577  ; 2 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 44
  %i.aa = trunc i64 %i.z to i32                   ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !566 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3236
  %i.af = icmp sgt i32 %i.ad, %i.aa
  br i1 %i.af, label %.lr.ph72, label %.critedge

bb.e:                                             ; preds = %bb.g
  %i.ag = icmp slt i32 %i.az, %i.ad
  br i1 %i.ag, label %.lr.ph72, label %.critedge, !llvm.loop !861

.lr.ph72:                                         ; preds = %.lr.ph, %bb.e
  %.0435571 = phi i32 [ %.05670, %bb.e ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.05670 = phi i32 [ %i.az, %bb.e ], [ %i.aa, %.lr.ph ] ; 5 uses
  %i.ah = zext nneg i32 %.05670 to i64
  %i.ai = getelementptr inbounds nuw [44 x i8], ptr %i.v, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !584 ; 2 uses
  %i.al = and i32 %i.ak, 32
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph72
  %i.am = xor i32 %i.ak, %i.g
  %i.an = and i32 %i.am, 192
  %.not47 = icmp eq i32 %i.an, 0
  br i1 %.not47, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !595
  %i.aq = fadd float %i.o, %i.ap                  ; 2 uses
  %i.ar = load float, ptr %i.ae, align 4, !tbaa !342 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !594
  %i.au = fadd float %i.aq, %i.at
  %i.av = fadd float %i.ar, %i.au
  %i.aw = fsub float %i.aq, %i.ar
  %i.ax = fcmp ule float %.sroa.0.0.vec.extract, %i.aw
  %i.ay = fcmp uge float %.sroa.0.0.vec.extract, %i.av
  %or.cond52 = select i1 %i.s, i1 %i.ay, i1 %i.ax
  %i.az = add nsw i32 %.05670, %i.t               ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1
  %or.cond = select i1 %or.cond52, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.e, label %..critedge_crit_edge, !llvm.loop !861

..critedge_crit_edge:                             ; preds = %bb.g
  br label %.critedge, !llvm.loop !861

.critedge:                                        ; preds = %.lr.ph72, %bb.f, %bb.e, %..critedge_crit_edge, %.lr.ph
  %.2 = phi i32 [ %.05670, %..critedge_crit_edge ], [ %i.aa, %.lr.ph ], [ %.0435571, %.lr.ph72 ], [ %.05670, %bb.e ], [ %.0435571, %bb.f ] ; 2 uses
  %.not48 = icmp eq i32 %.2, %i.aa
  br i1 %.not48, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bb = sub nsw i32 %.2, %i.aa
  %i.bc = load i32, ptr %1, align 4, !tbaa !579
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !587
  %i.be = trunc i32 %i.bb to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %i.be, ptr %i.bf, align 8, !tbaa !588
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImGuiTabItem, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !587  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !566  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !577  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !18

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %indvars.iv.i ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !579
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !584  ; 2 uses
  %i.m = and i32 %i.l, 32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.n = trunc i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load i16, ptr %i.o, align 8, !tbaa !588  ; 2 uses
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = add nsw i32 %i.n, %i.q                   ; 2 uses
  %or.cond = icmp ult i32 %i.r, %i.d
  br i1 %or.cond, label %bb.e, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !584  ; 2 uses
  %i.w = and i32 %i.v, 32
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %bb.f, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = xor i32 %i.v, %i.l
  %i.y = and i32 %i.x, 192
  %.not36 = icmp eq i32 %i.y, 0
  br i1 %.not36, label %bb.g, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %1, ptr noundef nonnull align 4 dereferenceable(44) %i.h, i64 44, i1 false), !tbaa.struct !582
  %i.z = icmp sgt i16 %i.p, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ad = select i1 %i.z, ptr %i.h, ptr %i.ac
  %2 = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.ae = zext nneg i32 %2 to i64
  %i.af = mul nuw nsw i64 %i.ae, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.ab, i64 %i.af, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.t, ptr noundef nonnull align 4 dereferenceable(41) %1, i64 41, i1 false), !tbaa.struct !582
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !564
  %i.ai = and i32 %i.ah, 4194304
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv() #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %bb.d, %bb.f, %bb.e, %bb.i, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %.2 = phi i1 [ false, %bb.f ], [ false, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ], [ false, %bb.d ], [ false, %.preheader.i ], [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.2
}

declare void @_ZN5ImGui20MarkIniSettingsDirtyEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !186, !range !187, !noundef !188
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !561  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.129) #36 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) ; 2 uses
  %i.l = and i32 %2, 8
  %.not = icmp eq i32 %i.l, 0
  %or.cond = and i1 %.not, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.n = load i16, ptr %i.m, align 8, !tbaa !552
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !577
  %i.q = sext i16 %i.n to i64
  %i.r = getelementptr inbounds [44 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !579
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %i.s) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.e ], [ %i.k, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ImGuiNextItemData, align 8  ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 4 uses
  %7 = alloca %struct.ImRect, align 4             ; 4 uses
  %8 = alloca %struct.ImRect, align 16            ; 15 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.g = load i8, ptr %i.f, align 1, !tbaa !568, !range !187, !noundef !188
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7648 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !tbaa.struct !862
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.i, ptr noundef nonnull align 8 dereferenceable(52) %5, i64 52, i1 false), !tbaa.struct !862
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.m = load i8, ptr %i.l, align 1, !tbaa !186, !range !187, !noundef !188
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.cl, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %.val = load i32, ptr %i.o, align 8, !tbaa !564
  %i.p = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) #36 ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.q) #36
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !161
  %i.u = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.t, ptr noundef %1, ptr noundef null) #36
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.u, %bb.f ] ; 14 uses
  %.not246 = icmp eq ptr %2, null                 ; 2 uses
  br i1 %.not246, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.v = load i8, ptr %2, align 1, !tbaa !233, !range !187, !noundef !188
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.x = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, ptr noundef null, i32 noundef 2) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.cl

bb.i:                                             ; preds = %bb.g, %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.y = and i32 %3, 1048576
  %.not247 = icmp eq i32 %i.y, 0                  ; 2 uses
  %i.z = or disjoint i32 %3, 1048576
  %i.aa = and i1 %.not246, %.not247
  %.0234 = select i1 %i.aa, i32 %i.z, i32 %3      ; 7 uses
  %.not.i270 = icmp ne i32 %.0.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !586 ; 8 uses
  %i.ab = icmp sgt i32 %.pre, 0
  %or.cond371 = select i1 %.not.i270, i1 %i.ab, i1 false
  br i1 %or.cond371, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !577 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.pre to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.k, !llvm.loop !18

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [44 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !579
  %i.ag = icmp eq i32 %i.af, %.0.i
  br i1 %i.ag, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !585
  %i.ak = icmp eq i32 %.pre, %i.aj
  br i1 %i.ak, label %bb.l, label %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i: ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !577
  br label %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit

bb.l:                                             ; preds = %.loopexit
  %i.al = add nsw i32 %.pre, 1
  %.not.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = sdiv i32 %.pre, 2
  %i.an = add nsw i32 %i.am, %.pre
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.m, %bb.l
  %i.ao = phi i32 [ %i.an, %bb.m ], [ 8, %bb.l ]
end_hunk_1
begin_hunk_2_@_ZN5ImGui22RoundScalarWithFormatTIdEET_PKciS1_:bb.a
bb.i:                                             ; preds = %.lr.ph.i13.prol
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.prol, i64 1
  store i8 %i.ac, ptr %.01417.i.prol, align 1, !tbaa !330
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i13.prol, %.lr.ph.i13.prol, %.lr.ph.i13.prol
  %.1.i.prol = phi ptr [ %i.ad, %bb.i ], [ %.01417.i.prol, %.lr.ph.i13.prol ], [ %.01417.i.prol, %.lr.ph.i13.prol ], [ %.01417.i.prol, %.lr.ph.i13.prol ] ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol, !llvm.loop !897

.lr.ph.i13.prol.loopexit:                         ; preds = %bb.j, %.lr.ph.i13.preheader
  %.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i13.preheader ], [ %.1.i.prol, %bb.j ]
  %.018.i.unr = phi ptr [ %.01025.i, %.lr.ph.i13.preheader ], [ %i.ab, %bb.j ]
  %.01417.i.unr = phi ptr [ %i.a, %.lr.ph.i13.preheader ], [ %.1.i.prol, %bb.j ]
  %i.ae = sub i64 %.01025.i.lcssa3537, %.2.i.i34
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.prol.loopexit, %bb.o
  %.018.i = phi ptr [ %i.ap, %bb.o ], [ %.018.i.unr, %.lr.ph.i13.prol.loopexit ] ; 5 uses
  %.01417.i = phi ptr [ %.1.i.3, %bb.o ], [ %.01417.i.unr, %.lr.ph.i13.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  %i.ah = load i8, ptr %.018.i, align 1, !tbaa !330 ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 95, label %.lr.ph.i13.1
    i8 39, label %.lr.ph.i13.1
    i8 36, label %.lr.ph.i13.1
  ]

bb.k:                                             ; preds = %.lr.ph.i13
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i, i64 1
  store i8 %i.ah, ptr %.01417.i, align 1, !tbaa !330
  br label %.lr.ph.i13.1

.lr.ph.i13.1:                                     ; preds = %bb.k, %.lr.ph.i13, %.lr.ph.i13, %.lr.ph.i13
  %.1.i = phi ptr [ %i.ai, %bb.k ], [ %.01417.i, %.lr.ph.i13 ], [ %.01417.i, %.lr.ph.i13 ], [ %.01417.i, %.lr.ph.i13 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !330 ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 95, label %.lr.ph.i13.2
    i8 39, label %.lr.ph.i13.2
    i8 36, label %.lr.ph.i13.2
  ]

bb.l:                                             ; preds = %.lr.ph.i13.1
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.ak, ptr %.1.i, align 1, !tbaa !330
  br label %.lr.ph.i13.2

.lr.ph.i13.2:                                     ; preds = %bb.l, %.lr.ph.i13.1, %.lr.ph.i13.1, %.lr.ph.i13.1
  %.1.i.1 = phi ptr [ %i.al, %bb.l ], [ %.1.i, %.lr.ph.i13.1 ], [ %.1.i, %.lr.ph.i13.1 ], [ %.1.i, %.lr.ph.i13.1 ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 3
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !330 ; 2 uses
  switch i8 %i.an, label %bb.m [
    i8 95, label %.lr.ph.i13.3
    i8 39, label %.lr.ph.i13.3
    i8 36, label %.lr.ph.i13.3
  ]

bb.m:                                             ; preds = %.lr.ph.i13.2
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.1, i64 1
  store i8 %i.an, ptr %.1.i.1, align 1, !tbaa !330
  br label %.lr.ph.i13.3

.lr.ph.i13.3:                                     ; preds = %bb.m, %.lr.ph.i13.2, %.lr.ph.i13.2, %.lr.ph.i13.2
  %.1.i.2 = phi ptr [ %i.ao, %bb.m ], [ %.1.i.1, %.lr.ph.i13.2 ], [ %.1.i.1, %.lr.ph.i13.2 ], [ %.1.i.1, %.lr.ph.i13.2 ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !330 ; 2 uses
  switch i8 %i.aq, label %bb.n [
    i8 95, label %bb.o
    i8 39, label %bb.o
    i8 36, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph.i13.3
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.2, i64 1
  store i8 %i.aq, ptr %.1.i.2, align 1, !tbaa !330
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i13.3, %.lr.ph.i13.3, %.lr.ph.i13.3
  %.1.i.3 = phi ptr [ %i.ar, %bb.n ], [ %.1.i.2, %.lr.ph.i13.3 ], [ %.1.i.2, %.lr.ph.i13.3 ], [ %.1.i.2, %.lr.ph.i13.3 ] ; 2 uses
  %exitcond.not.i.3 = icmp eq ptr %i.ap, %.2.i.i
  br i1 %exitcond.not.i.3, label %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit, label %.lr.ph.i13, !llvm.loop !8

_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit:  ; preds = %.lr.ph.i13.prol.loopexit, %bb.o, %_Z20ImParseFormatFindEndPKc.exit.i
  %.014.lcssa.i = phi ptr [ %i.a, %_Z20ImParseFormatFindEndPKc.exit.i ], [ %.1.i.lcssa.unr, %.lr.ph.i13.prol.loopexit ], [ %.1.i.3, %bb.o ]
  store i8 0, ptr %.014.lcssa.i, align 1, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.as = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, double noundef %2) #36 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit
  %.0 = phi ptr [ %i.b, %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit ], [ %i.av, %bb.p ] ; 3 uses
  %i.at = load i8, ptr %.0, align 1, !tbaa !330
  %i.au = icmp eq i8 %i.at, 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %i.au, label %bb.p, label %bb.q, !llvm.loop !898

bb.q:                                             ; preds = %bb.p
  %i.aw = call double @strtod(ptr noundef nonnull captures(none) %.0, ptr noundef null) #36, !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

_Z22ImParseFormatFindStartPKc.exit.thread:        ; preds = %bb.c, %bb.a, %bb.q
  %.012 = phi double [ %i.aw, %bb.q ], [ %2, %bb.a ], [ %2, %bb.c ]
  ret double %.012
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind }

!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !196}
!1 = distinct !{!1, !196}
!2 = distinct !{!2, !196}
!3 = distinct !{!3, !196}
!4 = distinct !{!4, !196}
!5 = distinct !{!5, !196}
!6 = distinct !{!6, !196}
!7 = distinct !{!7, !196}
!8 = distinct !{!8, !196}
!9 = distinct !{!9, !196}
!10 = distinct !{!10, !196}
!11 = distinct !{!11, !196}
!12 = distinct !{!12, !196}
!13 = distinct !{!13, !196}
!14 = distinct !{!14, !196}
!15 = distinct !{!15, !196}
!16 = distinct !{!16, !196}
!17 = distinct !{!17, !196}
!18 = distinct !{!18, !196}
!19 = distinct !{null}
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !{!"p1 _ZTS12ImGuiContext", !32, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"bool", !28, i64 0}
!36 = !{!"float", !28, i64 0}
!37 = !{!"_ZTS6ImVec2", !36, i64 0, !36, i64 4}
!38 = !{!"p1 omnipotent char", !32, i64 0}
!39 = !{!"p1 _ZTS11ImFontAtlas", !32, i64 0}
!40 = !{!"p1 _ZTS6ImFont", !32, i64 0}
!41 = !{!"_ZTS16ImGuiMouseSource", !28, i64 0}
!42 = !{!"short", !28, i64 0}
!43 = !{!"p1 short", !32, i64 0}
!44 = !{!"_ZTS8ImVectorItE", !29, i64 0, !29, i64 4, !43, i64 8}
!45 = !{!"_ZTS7ImGuiIO", !29, i64 0, !29, i64 4, !37, i64 8, !37, i64 16, !36, i64 24, !36, i64 28, !38, i64 32, !38, i64 40, !32, i64 48, !39, i64 56, !40, i64 64, !35, i64 72, !35, i64 73, !35, i64 74, !35, i64 75, !35, i64 76, !35, i64 77, !35, i64 78, !35, i64 79, !35, i64 80, !35, i64 81, !35, i64 82, !35, i64 83, !35, i64 84, !35, i64 85, !35, i64 86, !35, i64 87, !35, i64 88, !35, i64 89, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !35, i64 116, !35, i64 117, !35, i64 118, !35, i64 119, !35, i64 120, !35, i64 121, !35, i64 122, !35, i64 123, !35, i64 124, !35, i64 125, !35, i64 126, !38, i64 128, !38, i64 136, !32, i64 144, !32, i64 152, !32, i64 160, !35, i64 168, !35, i64 169, !35, i64 170, !35, i64 171, !35, i64 172, !35, i64 173, !35, i64 174, !36, i64 176, !29, i64 180, !29, i64 184, !29, i64 188, !29, i64 192, !37, i64 196, !33, i64 208, !37, i64 216, !28, i64 224, !36, i64 232, !36, i64 236, !41, i64 240, !35, i64 244, !35, i64 245, !35, i64 246, !35, i64 247, !29, i64 248, !28, i64 252, !35, i64 2732, !37, i64 2736, !28, i64 2744, !28, i64 2784, !28, i64 2824, !28, i64 2829, !28, i64 2834, !28, i64 2844, !28, i64 2854, !28, i64 2864, !28, i64 2904, !28, i64 2909, !35, i64 2914, !35, i64 2915, !28, i64 2916, !28, i64 2936, !28, i64 2956, !36, i64 2976, !35, i64 2980, !35, i64 2981, !42, i64 2982, !44, i64 2984, !36, i64 3000, !32, i64 3008, !32, i64 3016, !32, i64 3024}
!46 = !{!"any p2 pointer", !32, i64 0}
!47 = !{!"p2 _ZTS13ImTextureData", !46, i64 0}
!48 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !29, i64 0, !29, i64 4, !47, i64 8}
!49 = !{!"_ZTS15ImGuiPlatformIO", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !42, i64 56, !29, i64 60, !29, i64 64, !32, i64 72, !48, i64 80}
!50 = !{!"_ZTS8ImGuiDir", !28, i64 0}
!51 = !{!"_ZTS10ImGuiStyle", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !36, i64 28, !36, i64 32, !36, i64 36, !37, i64 40, !37, i64 48, !50, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !37, i64 76, !36, i64 84, !36, i64 88, !37, i64 92, !37, i64 100, !37, i64 108, !37, i64 116, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !37, i64 184, !29, i64 192, !36, i64 196, !36, i64 200, !50, i64 204, !37, i64 208, !37, i64 216, !36, i64 224, !37, i64 228, !37, i64 236, !37, i64 244, !37, i64 252, !36, i64 260, !35, i64 264, !35, i64 265, !35, i64 266, !36, i64 268, !36, i64 272, !28, i64 276, !36, i64 1204, !36, i64 1208, !36, i64 1212, !29, i64 1216, !29, i64 1220, !36, i64 1224, !36, i64 1228}
!52 = !{!"p2 _ZTS11ImFontAtlas", !46, i64 0}
!53 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !29, i64 0, !29, i64 4, !52, i64 8}
!54 = !{!"p1 _ZTS11ImFontBaked", !32, i64 0}
!55 = !{!"p1 _ZTS6ImVec4", !32, i64 0}
!56 = !{!"_ZTS6ImVec4", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!57 = !{!"p1 _ZTS6ImVec2", !32, i64 0}
!58 = !{!"_ZTS8ImVectorI6ImVec2E", !29, i64 0, !29, i64 4, !57, i64 8}
!59 = !{!"p2 _ZTS10ImDrawList", !46, i64 0}
!60 = !{!"_ZTS8ImVectorIP10ImDrawListE", !29, i64 0, !29, i64 4, !59, i64 8}
!61 = !{!"_ZTS20ImDrawListSharedData", !37, i64 0, !55, i64 8, !39, i64 16, !40, i64 24, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !29, i64 52, !56, i64 56, !58, i64 72, !60, i64 88, !33, i64 104, !28, i64 112, !36, i64 496, !28, i64 500}
!62 = !{!"double", !28, i64 0}
!63 = !{!"p1 _ZTS15ImGuiInputEvent", !32, i64 0}
!64 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !29, i64 0, !29, i64 4, !63, i64 8}
!65 = !{!"p2 _ZTS11ImGuiWindow", !46, i64 0}
!66 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !29, i64 0, !29, i64 4, !65, i64 8}
!67 = !{!"p1 _ZTS20ImGuiWindowStackData", !32, i64 0}
!68 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !29, i64 0, !29, i64 4, !67, i64 8}
!69 = !{!"p1 _ZTS16ImGuiStoragePair", !32, i64 0}
!70 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !29, i64 0, !29, i64 4, !69, i64 8}
!71 = !{!"_ZTS12ImGuiStorage", !70, i64 0}
!72 = !{!"p1 _ZTS11ImGuiWindow", !32, i64 0}
!73 = !{!"_ZTS16ImGuiInputSource", !28, i64 0}
!74 = !{!"_ZTS24ImGuiDeactivatedItemData", !29, i64 0, !29, i64 4, !35, i64 8, !35, i64 9}
!75 = !{!"_ZTS20ImGuiDataTypeStorage", !28, i64 0}
!76 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !28, i64 0}
!77 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !32, i64 0}
!78 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !29, i64 0, !29, i64 4, !77, i64 8}
!79 = !{!"_ZTS20ImGuiKeyRoutingTable", !28, i64 0, !78, i64 312, !78, i64 328}
!80 = !{!"long long", !28, i64 0}
!81 = !{!"_ZTS17ImGuiNextItemData", !29, i64 0, !29, i64 4, !29, i64 8, !80, i64 16, !36, i64 24, !29, i64 28, !29, i64 32, !35, i64 36, !28, i64 37, !75, i64 38, !29, i64 48}
!82 = !{!"_ZTS6ImRect", !37, i64 0, !37, i64 8}
!83 = !{!"_ZTS17ImGuiLastItemData", !29, i64 0, !29, i64 4, !29, i64 8, !82, i64 12, !82, i64 28, !82, i64 44, !82, i64 60, !29, i64 76}
!84 = !{!"_ZTS19ImGuiNextWindowData", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !29, i64 56, !29, i64 60, !35, i64 64, !82, i64 68, !32, i64 88, !32, i64 96, !36, i64 104, !37, i64 108, !29, i64 116}
!85 = !{!"p1 _ZTS13ImGuiColorMod", !32, i64 0}
!86 = !{!"_ZTS8ImVectorI13ImGuiColorModE", !29, i64 0, !29, i64 4, !85, i64 8}
!87 = !{!"p1 _ZTS13ImGuiStyleMod", !32, i64 0}
!88 = !{!"_ZTS8ImVectorI13ImGuiStyleModE", !29, i64 0, !29, i64 4, !87, i64 8}
!89 = !{!"p1 _ZTS15ImFontStackData", !32, i64 0}
!90 = !{!"_ZTS8ImVectorI15ImFontStackDataE", !29, i64 0, !29, i64 4, !89, i64 8}
!91 = !{!"p1 _ZTS19ImGuiFocusScopeData", !32, i64 0}
!92 = !{!"_ZTS8ImVectorI19ImGuiFocusScopeDataE", !29, i64 0, !29, i64 4, !91, i64 8}
!93 = !{!"p1 int", !32, i64 0}
!94 = !{!"_ZTS8ImVectorIiE", !29, i64 0, !29, i64 4, !93, i64 8}
!95 = !{!"p1 _ZTS14ImGuiGroupData", !32, i64 0}
!96 = !{!"_ZTS8ImVectorI14ImGuiGroupDataE", !29, i64 0, !29, i64 4, !95, i64 8}
!97 = !{!"p1 _ZTS14ImGuiPopupData", !32, i64 0}
!98 = !{!"_ZTS8ImVectorI14ImGuiPopupDataE", !29, i64 0, !29, i64 4, !97, i64 8}
!99 = !{!"p1 _ZTS22ImGuiTreeNodeStackData", !32, i64 0}
!100 = !{!"_ZTS8ImVectorI22ImGuiTreeNodeStackDataE", !29, i64 0, !29, i64 4, !99, i64 8}
!101 = !{!"p2 _ZTS14ImGuiViewportP", !46, i64 0}
!102 = !{!"_ZTS8ImVectorIP14ImGuiViewportPE", !29, i64 0, !29, i64 4, !101, i64 8}
!103 = !{!"_ZTS13ImGuiNavLayer", !28, i64 0}
!104 = !{!"_ZTS16ImGuiNavItemData", !72, i64 0, !29, i64 8, !29, i64 12, !82, i64 16, !29, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !80, i64 48}
!105 = !{!"_ZTS8ImGuiKey", !28, i64 0}
!106 = !{!"_ZTS12ImGuiPayload", !32, i64 0, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !28, i64 24, !35, i64 57, !35, i64 58}
!107 = !{!"_ZTS8ImVectorIhE", !29, i64 0, !29, i64 4, !38, i64 8}
!108 = !{!"p1 _ZTS20ImGuiListClipperData", !32, i64 0}
!109 = !{!"_ZTS8ImVectorI20ImGuiListClipperDataE", !29, i64 0, !29, i64 4, !108, i64 8}
!110 = !{!"p1 _ZTS10ImGuiTable", !32, i64 0}
!111 = !{!"p1 _ZTS18ImGuiTableTempData", !32, i64 0}
!112 = !{!"_ZTS8ImVectorI18ImGuiTableTempDataE", !29, i64 0, !29, i64 4, !111, i64 8}
!113 = !{!"_ZTS8ImVectorI10ImGuiTableE", !29, i64 0, !29, i64 4, !110, i64 8}
!114 = !{!"_ZTS6ImPoolI10ImGuiTableE", !113, i64 0, !71, i64 16, !29, i64 32, !29, i64 36}
!115 = !{!"p1 float", !32, i64 0}
!116 = !{!"_ZTS8ImVectorIfE", !29, i64 0, !29, i64 4, !115, i64 8}
!117 = !{!"p1 _ZTS13ImDrawChannel", !32, i64 0}
!118 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !29, i64 0, !29, i64 4, !117, i64 8}
!119 = !{!"p1 _ZTS11ImGuiTabBar", !32, i64 0}
!120 = !{!"_ZTS8ImVectorI11ImGuiTabBarE", !29, i64 0, !29, i64 4, !119, i64 8}
!121 = !{!"_ZTS6ImPoolI11ImGuiTabBarE", !120, i64 0, !71, i64 16, !29, i64 32, !29, i64 36}
!122 = !{!"p1 _ZTS15ImGuiPtrOrIndex", !32, i64 0}
!123 = !{!"_ZTS8ImVectorI15ImGuiPtrOrIndexE", !29, i64 0, !29, i64 4, !122, i64 8}
!124 = !{!"p1 _ZTS20ImGuiShrinkWidthItem", !32, i64 0}
!125 = !{!"_ZTS8ImVectorI20ImGuiShrinkWidthItemE", !29, i64 0, !29, i64 4, !124, i64 8}
!126 = !{!"_ZTS19ImGuiBoxSelectState", !29, i64 0, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !35, i64 8, !29, i64 9, !37, i64 12, !37, i64 20, !37, i64 28, !72, i64 40, !35, i64 48, !82, i64 52, !82, i64 68, !82, i64 84}
!127 = !{!"p1 _ZTS24ImGuiMultiSelectTempData", !32, i64 0}
!128 = !{!"_ZTS8ImVectorI24ImGuiMultiSelectTempDataE", !29, i64 0, !29, i64 4, !127, i64 8}
!129 = !{!"p1 _ZTS21ImGuiMultiSelectState", !32, i64 0}
!130 = !{!"_ZTS8ImVectorI21ImGuiMultiSelectStateE", !29, i64 0, !29, i64 4, !129, i64 8}
!131 = !{!"_ZTS6ImPoolI21ImGuiMultiSelectStateE", !130, i64 0, !71, i64 16, !29, i64 32, !29, i64 36}
!132 = !{!"p1 _ZTSN5ImStb17STB_TexteditStateE", !32, i64 0}
!133 = !{!"_ZTS8ImVectorIcE", !29, i64 0, !29, i64 4, !38, i64 8}
!134 = !{!"_ZTS19ImGuiInputTextState", !33, i64 0, !132, i64 8, !29, i64 16, !29, i64 20, !29, i64 24, !38, i64 32, !133, i64 40, !133, i64 56, !133, i64 72, !29, i64 88, !37, i64 92, !36, i64 100, !35, i64 104, !35, i64 105, !35, i64 106, !35, i64 107, !29, i64 108, !29, i64 112}
!135 = !{!"_ZTS30ImGuiInputTextDeactivatedState", !29, i64 0, !133, i64 8}
!136 = !{!"p1 _ZTS11ImFontGlyph", !32, i64 0}
!137 = !{!"_ZTS8ImVectorI11ImFontGlyphE", !29, i64 0, !29, i64 4, !136, i64 8}
!138 = !{!"_ZTS11ImFontBaked", !116, i64 0, !36, i64 16, !36, i64 20, !36, i64 24, !44, i64 32, !137, i64 48, !29, i64 64, !36, i64 68, !36, i64 72, !29, i64 76, !29, i64 79, !29, i64 79, !29, i64 80, !29, i64 84, !40, i64 88, !32, i64 96}
!139 = !{!"_ZTS21ImGuiComboPreviewData", !82, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !36, i64 40, !29, i64 44}
!140 = !{!"_ZTS8ImVectorIjE", !29, i64 0, !29, i64 4, !93, i64 8}
!141 = !{!"_ZTS24ImGuiTypingSelectRequest", !29, i64 0, !29, i64 4, !38, i64 8, !35, i64 16, !35, i64 17, !28, i64 18}
!142 = !{!"_ZTS22ImGuiTypingSelectState", !141, i64 0, !28, i64 24, !29, i64 88, !29, i64 92, !36, i64 96, !35, i64 100}
end_hunk_2
