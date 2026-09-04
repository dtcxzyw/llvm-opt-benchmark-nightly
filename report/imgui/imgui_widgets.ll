Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar:.preheader
  br i1 %.not373, label %._crit_edge527, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds [44 x i8], ptr %i.w, i64 %.pre528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.an, ptr noundef nonnull align 4 dereferenceable(41) %i.x, i64 41, i1 false), !tbaa.struct !597
  %.pre505 = load ptr, ptr %i.p, align 8, !tbaa !569
  br label %._crit_edge527

._crit_edge527:                                   ; preds = %bb.h, %bb.i
  %i.ao = phi ptr [ %.pre505, %bb.i ], [ %i.v, %bb.h ] ; 4 uses
  %i.ap = getelementptr inbounds [44 x i8], ptr %i.ao, i64 %.pre528 ; 2 uses
  %i.aq = trunc i32 %.0326444 to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 38
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !598
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %.val385 = load i32, ptr %i.as, align 4, !tbaa !599 ; 3 uses
  %i.at = and i32 %.val385, 64
  %.not.i = icmp ne i32 %i.at, 0                  ; 2 uses
  %i.au = and i32 %.val385, 128
  %.not2.i = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not2.i, i64 1, i64 2
  %i.aw = select i1 %.not.i, i64 0, i64 %i.av
  %i.ax = icmp sgt i32 %.0326444, 0
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge527
  %i.ay = getelementptr [44 x i8], ptr %i.ao, i64 %i.am
  %i.az = getelementptr i8, ptr %i.ay, i64 -40
  %.val384 = load i32, ptr %i.az, align 4, !tbaa !599 ; 2 uses
  %i.ba = and i32 %.val384, 64
  %.not.i388 = icmp eq i32 %i.ba, 0
  %or.cond = and i1 %.not.i, %.not.i388
  %i.bb = and i32 %.val384, 192
  %i.bc = icmp eq i32 %i.bb, 128
  %i.bd = and i32 %.val385, 192
  %i.be = icmp ne i32 %i.bd, 128
  %or.cond3 = and i1 %i.be, %i.bc
  %i.bf = select i1 %or.cond3, i1 true, i1 %or.cond
  %.2334 = select i1 %i.bf, i1 true, i1 %.0332443
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge527
  %.3 = phi i1 [ %.2334, %bb.j ], [ %.0332443, %._crit_edge527 ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.aw ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 16, !tbaa !880
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 16, !tbaa !880
  %i.bj = add nsw i32 %.0326444, 1
  %.pre506 = load i32, ptr %i.m, align 8, !tbaa !582
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.k
  %i.bk = phi i32 [ %.pre506, %bb.k ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.bl = phi ptr [ %i.ao, %bb.k ], [ %i.v, %bb.g ], [ %i.v, %bb.f ]
  %i.bm = phi ptr [ %i.ao, %bb.k ], [ %i.w, %bb.g ], [ %i.w, %bb.f ]
  %.4 = phi i1 [ %.3, %bb.k ], [ %.0332443, %bb.g ], [ %.0332443, %bb.f ] ; 2 uses
  %.1327 = phi i32 [ %i.bj, %bb.k ], [ %.0326444, %bb.g ], [ %.0326444, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bk to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.a, label %._crit_edge, !llvm.loop !872

bb.m:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !600 ; 4 uses
  %i.br = icmp sgt i32 %.0326.lcssa, %i.bq
  br i1 %i.br, label %bb.n, label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = sdiv i32 %i.bq, 2
  %i.bt = add nsw i32 %i.bs, %i.bq
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.o, %bb.n
  %i.bu = phi i32 [ %i.bt, %bb.o ], [ 8, %bb.n ]
  %i.bv = tail call noundef i32 @llvm.smax.i32(i32 %i.bu, i32 %.0326.lcssa) ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, 44
  %i.by = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bx) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !569 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ca, null
  br i1 %.not6.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.cb = load i32, ptr %i.m, align 8, !tbaa !601
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr nonnull align 4 %i.ca, i64 %i.cd, i1 false)
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !569
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ce)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !569
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !600
  br label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit:       ; preds = %bb.m, %bb.q
  store i32 %.0326.lcssa, ptr %i.m, align 8, !tbaa !601
  br label %bb.r

bb.r:                                             ; preds = %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit, %._crit_edge
  %i.cf = icmp ugt i32 %.0326.lcssa, 1
  %or.cond581 = and i1 %.0332.lcssa, %i.cf
  br i1 %or.cond581, label %bb.s, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = sext i32 %.0326.lcssa to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !583
  tail call void @qsort(ptr noundef %i.ci, i64 noundef %i.cg, i64 noundef 44, ptr noundef nonnull @_ZL24TabItemComparerBySectionPKvS0_)
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.s, %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 3308 ; 9 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !367 ; 3 uses
  %i.cl = load i32, ptr %7, align 16, !tbaa !880  ; 10 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !880 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cp = load i32, ptr %i.co, align 16           ; 8 uses
  %i.cq = add nsw i32 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cs = icmp sgt i32 %i.cn, 0                   ; 2 uses
  %i.ct = icmp sgt i32 %i.cl, 0                   ; 2 uses
  %i.cu = icmp sgt i32 %i.cp, 0                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cq, 0
  %or.cond7 = select i1 %i.cs, i1 %i.cu, i1 false
  %or.cond583 = select i1 %i.ct, i1 %i.cv, i1 false
  %i.cw = select i1 %or.cond7, float %i.ck, float 0.000000e+00 ; 7 uses
  %i.cx = select i1 %or.cond583, float %i.ck, float 0.000000e+00 ; 5 uses
  store float %i.cx, ptr %i.cr, align 4, !tbaa !881
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.cw, ptr %i.cy, align 4, !tbaa !881
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !882 ; 2 uses
  %.not360 = icmp eq i32 %i.da, 0
  br i1 %.not360, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  store i32 0, ptr %i.cz, align 8, !tbaa !882
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !596 ; 3 uses
  %.not361 = icmp eq i32 %i.dc, 0
  br i1 %.not361, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !595
  store i32 0, ptr %i.db, align 4, !tbaa !596
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1343 = phi i32 [ %i.dc, %bb.v ], [ %i.da, %bb.u ] ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !602 ; 2 uses
  %.not362 = icmp eq i32 %i.df, 0
  br i1 %.not362, label %bb.af, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.dg = load i32, ptr %i.m, align 8, !tbaa !582 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !569 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.dg to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, label %bb.y, !llvm.loop !17

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.x ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [44 x i8], ptr %i.dj, i64 %indvars.iv.i.i ; 5 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !594
  %i.dm = icmp eq i32 %i.dl, %i.df
  br i1 %i.dm, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, label %bb.x

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i: ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !599 ; 2 uses
  %i.dp = and i32 %i.do, 32
  %.not.i391 = icmp eq i32 %i.dp, 0
  br i1 %.not.i391, label %bb.z, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.z:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i
  %i.dq = trunc i64 %indvars.iv.i.i to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !603 ; 2 uses
  %i.dt = sext i16 %i.ds to i32                   ; 2 uses
  %i.du = add nsw i32 %i.dt, %i.dq                ; 2 uses
  %or.cond.i = icmp ult i32 %i.du, %i.dg
  br i1 %or.cond.i, label %bb.aa, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [44 x i8], ptr %i.dj, i64 %i.dv ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !599 ; 2 uses
  %i.dz = and i32 %i.dy, 32
  %.not35.i = icmp eq i32 %i.dz, 0
  br i1 %.not35.i, label %bb.ab, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ea = xor i32 %i.dy, %i.do
  %i.eb = and i32 %i.ea, 192
  %.not36.i = icmp eq i32 %i.eb, 0
  br i1 %.not36.i, label %bb.ac, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) %i.dk, i64 44, i1 false), !tbaa.struct !597
  %i.ec = icmp sgt i16 %i.ds, 0                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
  %i.ee = select i1 %i.ec, ptr %i.ed, ptr %i.dw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 44
  %i.eg = select i1 %i.ec, ptr %i.dk, ptr %i.ef
  %9 = tail call i32 @llvm.abs.i32(i32 %i.dt, i1 true)
  %i.eh = zext nneg i32 %9 to i64
  %i.ei = mul nuw nsw i64 %i.eh, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr nonnull align 4 %i.ee, i64 %i.ei, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.dw, ptr noundef nonnull align 4 dereferenceable(41) %6, i64 41, i1 false), !tbaa.struct !597
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !580
  %i.el = and i32 %i.ek, 4194304
  %.not37.i = icmp eq i32 %i.el, 0
  br i1 %.not37.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.em = load i32, ptr %i.de, align 4, !tbaa !602 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !595
  %i.ep = icmp eq i32 %i.em, %i.eo
  %spec.select377 = select i1 %i.ep, i32 %i.em, i32 %.1343
  br label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread: ; preds = %bb.x, %bb.aa, %.preheader.i.i, %bb.z, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, %bb.ab, %bb.ae
  %.2344 = phi i32 [ %spec.select377, %bb.ae ], [ %.1343, %bb.ab ], [ %.1343, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i ], [ %.1343, %bb.z ], [ %.1343, %.preheader.i.i ], [ %.1343, %bb.aa ], [ %.1343, %bb.x ]
  store i32 0, ptr %i.de, align 4, !tbaa !602
  br label %bb.af

bb.af:                                            ; preds = %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, %bb.w
  %.3345 = phi i32 [ %.2344, %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread ], [ %.1343, %bb.w ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !580
  %i.es = and i32 %i.er, 4
  %.not363 = icmp eq i32 %i.es, 0
  br i1 %.not363, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.et = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 5312
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !158 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4568
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !205
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 3288
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !234 ; 2 uses
  %i.fa = fadd float %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 280 ; 4 uses
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %i.fd = load float, ptr %i.g, align 8, !tbaa !577
  %i.fe = fsub float %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !883
  store float %i.fe, ptr %i.fb, align 8
  %.sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 284
  store i32 %i.fg, ptr %.sroa_idx26.i, align 4
  %i.fh = load float, ptr %i.g, align 8, !tbaa !577
  %i.fi = fadd float %i.fa, %i.fh
  store float %i.fi, ptr %i.g, align 8, !tbaa !577
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 3532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !236
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !254
  %i.fm = fmul float %i.fl, 5.000000e-01
  store float %i.fm, ptr %i.fk, align 4, !tbaa !254
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.fn = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.162, ptr noundef null, i32 noundef 80)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 2)
  br i1 %i.fn, label %.preheader.i, label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread

_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread: ; preds = %bb.ag
  store i64 %i.fc, ptr %i.fb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.ao

.preheader.i:                                     ; preds = %bb.ag
  %i.fo = load i32, ptr %i.m, align 8, !tbaa !582 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.aj

._crit_edge.i:                                    ; preds = %bb.am, %.preheader.i
  %.025.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.2.i394, %bb.am ] ; 2 uses
  %i.ft = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 9720 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !329
  %i.fw = add nsw i32 %i.fv, -1                   ; 2 uses
  store i32 %i.fw, ptr %i.fu, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.fx = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.fw) ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 5312
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !158
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !331
  %i.gc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gb, ptr noundef nonnull dereferenceable(1) %i.a) #40
  %.not.i.i392 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i392, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.gd = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.19) ; 0 uses
  br label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit

bb.ai:                                            ; preds = %._crit_edge.i
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit

bb.aj:                                            ; preds = %bb.am, %.lr.ph.i
  %i.ge = phi i32 [ %i.fo, %.lr.ph.i ], [ %i.gu, %bb.am ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.am ] ; 2 uses
  %.02528.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i394, %bb.am ] ; 2 uses
  %i.gf = load ptr, ptr %i.fq, align 8, !tbaa !569
  %i.gg = getelementptr inbounds nuw [44 x i8], ptr %i.gf, i64 %indvars.iv.i ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !599
  %i.gj = and i32 %i.gi, 2097152
  %.not.i393 = icmp eq i32 %i.gj, 0
  br i1 %.not.i393, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !604 ; 2 uses
  %i.gm = icmp eq i32 %i.gl, -1
  br i1 %i.gm, label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = load ptr, ptr %i.fr, align 8, !tbaa !605
  %i.go = sext i32 %i.gl to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 %i.go
  br label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i

_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i: ; preds = %bb.al, %bb.ak
  %.0.i.i = phi ptr [ %i.gp, %bb.al ], [ @.str.113, %bb.ak ]
  %i.gq = load i32, ptr %i.fs, align 8, !tbaa !595
  %i.gr = load i32, ptr %i.gg, align 4, !tbaa !594
  %i.gs = icmp eq i32 %i.gq, %i.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !190
  %i.gt = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %.0.i.i, i1 noundef zeroext %i.gs, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %spec.select.i = select i1 %i.gt, ptr %i.gg, ptr %.02528.i
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !582
  br label %bb.am

bb.am:                                            ; preds = %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i, %bb.aj
  %i.gu = phi i32 [ %.pre.i, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i ], [ %i.ge, %bb.aj ] ; 2 uses
  %.2.i394 = phi ptr [ %spec.select.i, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i ], [ %.02528.i, %bb.aj ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next.i, %i.gv
  br i1 %i.gw, label %bb.aj, label %._crit_edge.i, !llvm.loop !873

_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  store i64 %i.fc, ptr %i.fb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.not364 = icmp eq ptr %.025.lcssa.i, null
  br i1 %.not364, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit
  %i.gx = load i32, ptr %.025.lcssa.i, align 4, !tbaa !594 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !595
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit, %bb.an, %bb.af
  %.5 = phi i32 [ %.3345, %bb.af ], [ %i.gx, %bb.an ], [ %.3345, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit ], [ %.3345, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 0, ptr %i.b, align 4, !tbaa !208
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ha = add nsw i32 %i.cp, %i.cl                ; 3 uses
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !208
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.cl, ptr %i.hb, align 4, !tbaa !208
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 9152 ; 2 uses
  %i.hd = load i32, ptr %i.m, align 8, !tbaa !582 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 9156 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !884 ; 4 uses
  %i.hg = icmp sgt i32 %i.hd, %i.hf
  br i1 %i.hg, label %bb.ap, label %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i395 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i395, label %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = sdiv i32 %i.hf, 2
  %i.hi = add nsw i32 %i.hh, %i.hf
  br label %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i: ; preds = %bb.aq, %bb.ap
  %i.hj = phi i32 [ %i.hi, %bb.aq ], [ 8, %bb.ap ]
  %i.hk = call noundef i32 @llvm.smax.i32(i32 %i.hj, i32 %i.hd) ; 2 uses
  %i.hl = sext i32 %i.hk to i64
end_hunk_0
begin_hunk_1_@_ZN5ImGui16TabBarQueueFocusEP11ImGuiTabBarP12ImGuiTabItem:bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !594
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !596
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16TabBarQueueFocusEP11ImGuiTabBarPKc(ptr nofree noundef captures(none) initializes((36, 40)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !580
  %i.b = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.c)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.f, ptr noundef %1, ptr noundef null)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0.i, ptr %i.h, align 4, !tbaa !596
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui18TabBarQueueReorderEP11ImGuiTabBarP12ImGuiTabItemi(ptr nofree noundef writeonly captures(none) initializes((124, 130)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !594
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.a, ptr %i.b, align 4, !tbaa !602
  %i.c = trunc i32 %2 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 %i.c, ptr %i.d, align 8, !tbaa !603
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarP12ImGuiTabItem6ImVec2(ptr nofree noundef captures(none) %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !580
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3308
  %i.g = load float, ptr %i.f, align 4, !tbaa !367 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !599  ; 2 uses
  %i.j = and i32 %i.i, 192
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !577
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load float, ptr %i.n, align 8, !tbaa !611
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.q = fsub float %i.m, %i.p                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !610
  %i.t = fadd float %i.q, %i.s
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 3 uses
  %i.u = fcmp ule float %i.t, %.sroa.0.0.vec.extract ; 2 uses
  %i.v = select i1 %i.u, i32 1, i32 -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !569  ; 2 uses
  %i.y = ptrtoint ptr %1 to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 44
  %i.ac = trunc i64 %i.ab to i32                  ; 7 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !582 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %i.ac
  br i1 %i.ag, label %.lr.ph73, label %.critedge

bb.e:                                             ; preds = %bb.g
  %i.ah = icmp slt i32 %i.az, %i.af
  br i1 %i.ah, label %.lr.ph73, label %.critedge, !llvm.loop !899

.lr.ph73:                                         ; preds = %.lr.ph, %bb.e
  %.0445672 = phi i32 [ %.05771, %bb.e ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.05771 = phi i32 [ %i.az, %bb.e ], [ %i.ac, %.lr.ph ] ; 5 uses
  %i.ai = zext nneg i32 %.05771 to i64
  %i.aj = getelementptr inbounds nuw [44 x i8], ptr %i.x, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !599 ; 2 uses
  %i.am = and i32 %i.al, 32
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph73
  %i.an = xor i32 %i.al, %i.i
  %i.ao = and i32 %i.an, 192
  %.not48 = icmp eq i32 %i.ao, 0
  br i1 %.not48, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !610
  %i.ar = fadd float %i.q, %i.aq                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !609
  %i.au = fadd float %i.ar, %i.at
  %i.av = fadd float %i.g, %i.au
  %i.aw = fsub float %i.ar, %i.g
  %i.ax = fcmp ule float %.sroa.0.0.vec.extract, %i.aw
  %i.ay = fcmp uge float %.sroa.0.0.vec.extract, %i.av
  %or.cond53 = select i1 %i.u, i1 %i.ay, i1 %i.ax
  %i.az = add nsw i32 %.05771, %i.v               ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1
  %or.cond = select i1 %or.cond53, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.e, label %..critedge_crit_edge, !llvm.loop !899

..critedge_crit_edge:                             ; preds = %bb.g
  br label %.critedge, !llvm.loop !899

.critedge:                                        ; preds = %.lr.ph73, %bb.f, %bb.e, %..critedge_crit_edge, %.lr.ph
  %.2 = phi i32 [ %.05771, %..critedge_crit_edge ], [ %i.ac, %.lr.ph ], [ %.0445672, %.lr.ph73 ], [ %.05771, %bb.e ], [ %.0445672, %bb.f ] ; 2 uses
  %.not49 = icmp eq i32 %.2, %i.ac
  br i1 %.not49, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bb = sub nsw i32 %.2, %i.ac
  %i.bc = load i32, ptr %1, align 4, !tbaa !594
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !602
  %i.be = trunc i32 %i.bb to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 %i.be, ptr %i.bf, align 8, !tbaa !603
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImGuiTabItem, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !602  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !582  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !569  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !17

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %indvars.iv.i ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !594
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !599  ; 2 uses
  %i.m = and i32 %i.l, 32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.n = trunc i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i16, ptr %i.o, align 8, !tbaa !603  ; 2 uses
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = add nsw i32 %i.n, %i.q                   ; 2 uses
  %or.cond = icmp ult i32 %i.r, %i.d
  br i1 %or.cond, label %bb.e, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !599  ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %1, ptr noundef nonnull align 4 dereferenceable(44) %i.h, i64 44, i1 false), !tbaa.struct !597
  %i.z = icmp sgt i16 %i.p, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ad = select i1 %i.z, ptr %i.h, ptr %i.ac
  %2 = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.ae = zext nneg i32 %2 to i64
  %i.af = mul nuw nsw i64 %i.ae, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.ab, i64 %i.af, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.t, ptr noundef nonnull align 4 dereferenceable(41) %1, i64 41, i1 false), !tbaa.struct !597
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !580
  %i.ai = and i32 %i.ah, 4194304
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %bb.d, %bb.f, %bb.e, %bb.i, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %.2 = phi i1 [ false, %bb.f ], [ false, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ], [ false, %bb.d ], [ false, %.preheader.i ], [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.2
}

declare void @_ZN5ImGui20MarkIniSettingsDirtyEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !183, !range !184, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !576  ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.133) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) ; 2 uses
  %i.k = and i32 %2, 8
  %.not15 = icmp eq i32 %i.k, 0
  %or.cond = and i1 %.not15, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  %i.m = load i16, ptr %i.l, align 2, !tbaa !565
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !569
  %i.p = sext i16 %i.m to i64
  %i.q = getelementptr inbounds [44 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !594
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.e ], [ %i.j, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #0 {
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
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.g = load i8, ptr %i.f, align 1, !tbaa !584, !range !184, !noundef !185
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7792 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !tbaa.struct !900
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !900
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.m = load i8, ptr %i.l, align 1, !tbaa !183, !range !184, !noundef !185
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.cl, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %.val = load i32, ptr %i.o, align 8, !tbaa !580
  %i.p = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.q)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158
  %i.u = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.t, ptr noundef %1, ptr noundef null)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.u, %bb.f ] ; 14 uses
  %.not247 = icmp eq ptr %2, null                 ; 2 uses
  br i1 %.not247, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.v = load i8, ptr %2, align 1, !tbaa !231, !range !184, !noundef !185
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.x = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, ptr noundef null, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.cl

bb.i:                                             ; preds = %bb.g, %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.y = and i32 %3, 1048576
  %.not248 = icmp eq i32 %i.y, 0                  ; 2 uses
  %i.z = or disjoint i32 %3, 1048576
  %i.aa = and i1 %.not247, %.not248
  %.0235 = select i1 %i.aa, i32 %i.z, i32 %3      ; 7 uses
  %.not.i271 = icmp ne i32 %.0.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !601 ; 8 uses
  %i.ab = icmp sgt i32 %.pre, 0
  %or.cond372 = select i1 %.not.i271, i1 %i.ab, i1 false
  br i1 %or.cond372, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !569 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.pre to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.k, !llvm.loop !17

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [44 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !594
  %i.ag = icmp eq i32 %i.af, %.0.i
  br i1 %i.ag, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !600
  %i.ak = icmp eq i32 %.pre, %i.aj
  br i1 %i.ak, label %bb.l, label %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i: ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !569
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
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol

.lr.ph.i13.prol:                                  ; preds = %.lr.ph.i13.preheader, %bb.j
  %.018.i.prol = phi ptr [ %i.ab, %bb.j ], [ %.01025.i, %.lr.ph.i13.preheader ] ; 2 uses
  %.01417.i.prol = phi ptr [ %.1.i.prol, %bb.j ], [ %i.a, %.lr.ph.i13.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.j ], [ 0, %.lr.ph.i13.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i.prol, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.018.i.prol, align 1, !tbaa !351 ; 2 uses
  switch i8 %i.ac, label %bb.i [
    i8 95, label %bb.j
    i8 39, label %bb.j
    i8 36, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i13.prol
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.prol, i64 1
  store i8 %i.ac, ptr %.01417.i.prol, align 1, !tbaa !351
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i13.prol, %.lr.ph.i13.prol, %.lr.ph.i13.prol
  %.1.i.prol = phi ptr [ %i.ad, %bb.i ], [ %.01417.i.prol, %.lr.ph.i13.prol ], [ %.01417.i.prol, %.lr.ph.i13.prol ], [ %.01417.i.prol, %.lr.ph.i13.prol ] ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol, !llvm.loop !937

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
  %i.ah = load i8, ptr %.018.i, align 1, !tbaa !351 ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 95, label %.lr.ph.i13.1
    i8 39, label %.lr.ph.i13.1
    i8 36, label %.lr.ph.i13.1
  ]

bb.k:                                             ; preds = %.lr.ph.i13
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i, i64 1
  store i8 %i.ah, ptr %.01417.i, align 1, !tbaa !351
  br label %.lr.ph.i13.1

.lr.ph.i13.1:                                     ; preds = %bb.k, %.lr.ph.i13, %.lr.ph.i13, %.lr.ph.i13
  %.1.i = phi ptr [ %i.ai, %bb.k ], [ %.01417.i, %.lr.ph.i13 ], [ %.01417.i, %.lr.ph.i13 ], [ %.01417.i, %.lr.ph.i13 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !351 ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 95, label %.lr.ph.i13.2
    i8 39, label %.lr.ph.i13.2
    i8 36, label %.lr.ph.i13.2
  ]

bb.l:                                             ; preds = %.lr.ph.i13.1
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.ak, ptr %.1.i, align 1, !tbaa !351
  br label %.lr.ph.i13.2

.lr.ph.i13.2:                                     ; preds = %bb.l, %.lr.ph.i13.1, %.lr.ph.i13.1, %.lr.ph.i13.1
  %.1.i.1 = phi ptr [ %i.al, %bb.l ], [ %.1.i, %.lr.ph.i13.1 ], [ %.1.i, %.lr.ph.i13.1 ], [ %.1.i, %.lr.ph.i13.1 ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 3
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !351 ; 2 uses
  switch i8 %i.an, label %bb.m [
    i8 95, label %.lr.ph.i13.3
    i8 39, label %.lr.ph.i13.3
    i8 36, label %.lr.ph.i13.3
  ]

bb.m:                                             ; preds = %.lr.ph.i13.2
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.1, i64 1
  store i8 %i.an, ptr %.1.i.1, align 1, !tbaa !351
  br label %.lr.ph.i13.3

.lr.ph.i13.3:                                     ; preds = %bb.m, %.lr.ph.i13.2, %.lr.ph.i13.2, %.lr.ph.i13.2
  %.1.i.2 = phi ptr [ %i.ao, %bb.m ], [ %.1.i.1, %.lr.ph.i13.2 ], [ %.1.i.1, %.lr.ph.i13.2 ], [ %.1.i.1, %.lr.ph.i13.2 ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !351 ; 2 uses
  switch i8 %i.aq, label %bb.n [
    i8 95, label %bb.o
    i8 39, label %bb.o
    i8 36, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph.i13.3
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.2, i64 1
  store i8 %i.aq, ptr %.1.i.2, align 1, !tbaa !351
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i13.3, %.lr.ph.i13.3, %.lr.ph.i13.3
  %.1.i.3 = phi ptr [ %i.ar, %bb.n ], [ %.1.i.2, %.lr.ph.i13.3 ], [ %.1.i.2, %.lr.ph.i13.3 ], [ %.1.i.2, %.lr.ph.i13.3 ] ; 2 uses
  %exitcond.not.i.3 = icmp eq ptr %i.ap, %.2.i.i
  br i1 %exitcond.not.i.3, label %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit, label %.lr.ph.i13, !llvm.loop !6

_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit:  ; preds = %.lr.ph.i13.prol.loopexit, %bb.o, %_Z20ImParseFormatFindEndPKc.exit.i
  %.014.lcssa.i = phi ptr [ %i.a, %_Z20ImParseFormatFindEndPKc.exit.i ], [ %.1.i.lcssa.unr, %.lr.ph.i13.prol.loopexit ], [ %.1.i.3, %bb.o ]
  store i8 0, ptr %.014.lcssa.i, align 1, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.as = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, double noundef %2) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit
  %.0 = phi ptr [ %i.b, %_Z32ImParseFormatSanitizeForPrintingPKcPcm.exit ], [ %i.av, %bb.p ] ; 3 uses
  %i.at = load i8, ptr %.0, align 1, !tbaa !351
  %i.au = icmp eq i8 %i.at, 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %i.au, label %bb.p, label %bb.q, !llvm.loop !938

bb.q:                                             ; preds = %bb.p
  %i.aw = call double @strtod(ptr noundef nonnull captures(none) %.0, ptr noundef null) #41, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

_Z22ImParseFormatFindStartPKc.exit.thread:        ; preds = %bb.c, %bb.a, %bb.q
  %.012 = phi double [ %i.aw, %bb.q ], [ %2, %bb.a ], [ %2, %bb.c ]
  ret double %.012
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #37

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
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

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
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #39

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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { nounwind }
attributes #42 = { noreturn nounwind }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !193}
!1 = distinct !{!1, !193}
!2 = distinct !{!2, !193}
!3 = distinct !{!3, !193}
!4 = distinct !{!4, !193}
!5 = distinct !{!5, !193}
!6 = distinct !{!6, !193}
!7 = distinct !{!7, !193}
!8 = distinct !{!8, !193}
!9 = distinct !{!9, !193}
!10 = distinct !{!10, !193}
!11 = distinct !{!11, !193}
!12 = distinct !{!12, !193}
!13 = distinct !{!13, !193}
!14 = distinct !{!14, !193}
!15 = distinct !{!15, !193}
!16 = distinct !{!16, !193}
!17 = distinct !{!17, !193}
!18 = distinct !{null}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"p1 _ZTS12ImGuiContext", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"bool", !23, i64 0}
!31 = !{!"double", !23, i64 0}
!32 = !{!"float", !23, i64 0}
!33 = !{!"_ZTS6ImVec2", !32, i64 0, !32, i64 4}
!34 = !{!"p1 omnipotent char", !27, i64 0}
!35 = !{!"p1 _ZTS11ImFontAtlas", !27, i64 0}
!36 = !{!"p1 _ZTS6ImFont", !27, i64 0}
!37 = !{!"_ZTS16ImGuiMouseSource", !23, i64 0}
!38 = !{!"short", !23, i64 0}
!39 = !{!"p1 short", !27, i64 0}
!40 = !{!"_ZTS8ImVectorItE", !24, i64 0, !24, i64 4, !39, i64 8}
!41 = !{!"_ZTS7ImGuiIO", !24, i64 0, !24, i64 4, !33, i64 8, !33, i64 16, !32, i64 24, !32, i64 28, !34, i64 32, !34, i64 40, !27, i64 48, !35, i64 56, !36, i64 64, !30, i64 72, !30, i64 73, !30, i64 74, !30, i64 75, !30, i64 76, !30, i64 77, !30, i64 78, !30, i64 79, !30, i64 80, !30, i64 81, !30, i64 82, !30, i64 83, !24, i64 84, !30, i64 88, !30, i64 89, !30, i64 90, !30, i64 91, !30, i64 92, !30, i64 93, !24, i64 96, !30, i64 100, !30, i64 101, !32, i64 104, !32, i64 108, !32, i64 112, !32, i64 116, !32, i64 120, !32, i64 124, !32, i64 128, !30, i64 132, !30, i64 133, !30, i64 134, !30, i64 135, !30, i64 136, !30, i64 137, !30, i64 138, !30, i64 139, !30, i64 140, !30, i64 141, !34, i64 144, !34, i64 152, !27, i64 160, !27, i64 168, !27, i64 176, !30, i64 184, !30, i64 185, !30, i64 186, !30, i64 187, !30, i64 188, !30, i64 189, !30, i64 190, !32, i64 192, !24, i64 196, !24, i64 200, !24, i64 204, !24, i64 208, !33, i64 212, !28, i64 224, !33, i64 232, !23, i64 240, !32, i64 248, !32, i64 252, !37, i64 256, !30, i64 260, !30, i64 261, !30, i64 262, !30, i64 263, !24, i64 264, !23, i64 268, !30, i64 2748, !33, i64 2752, !23, i64 2760, !23, i64 2800, !23, i64 2840, !23, i64 2845, !23, i64 2850, !23, i64 2860, !23, i64 2870, !23, i64 2880, !23, i64 2920, !23, i64 2925, !30, i64 2930, !30, i64 2931, !23, i64 2932, !23, i64 2952, !23, i64 2972, !32, i64 2992, !30, i64 2996, !30, i64 2997, !38, i64 2998, !40, i64 3000, !32, i64 3016, !27, i64 3024, !27, i64 3032, !27, i64 3040}
!42 = !{!"any p2 pointer", !27, i64 0}
!43 = !{!"p2 _ZTS13ImTextureData", !42, i64 0}
!44 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !24, i64 0, !24, i64 4, !43, i64 8}
!45 = !{!"_ZTS15ImGuiPlatformIO", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !38, i64 56, !24, i64 60, !24, i64 64, !24, i64 68, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !44, i64 104}
!46 = !{!"_ZTS8ImGuiDir", !23, i64 0}
!47 = !{!"_ZTS10ImGuiStyle", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !33, i64 20, !32, i64 28, !32, i64 32, !32, i64 36, !33, i64 40, !33, i64 48, !46, i64 56, !32, i64 60, !32, i64 64, !32, i64 68, !32, i64 72, !33, i64 76, !32, i64 84, !32, i64 88, !33, i64 92, !33, i64 100, !33, i64 108, !33, i64 116, !32, i64 124, !32, i64 128, !32, i64 132, !32, i64 136, !32, i64 140, !32, i64 144, !32, i64 148, !32, i64 152, !32, i64 156, !32, i64 160, !32, i64 164, !32, i64 168, !32, i64 172, !32, i64 176, !32, i64 180, !32, i64 184, !32, i64 188, !32, i64 192, !32, i64 196, !33, i64 200, !24, i64 208, !32, i64 212, !32, i64 216, !32, i64 220, !32, i64 224, !32, i64 228, !32, i64 232, !32, i64 236, !32, i64 240, !46, i64 244, !33, i64 248, !33, i64 256, !32, i64 264, !32, i64 268, !32, i64 272, !33, i64 276, !33, i64 284, !33, i64 292, !33, i64 300, !32, i64 308, !30, i64 312, !30, i64 313, !30, i64 314, !32, i64 316, !32, i64 320, !23, i64 324, !32, i64 1300, !32, i64 1304, !32, i64 1308, !24, i64 1312, !24, i64 1316, !32, i64 1320, !32, i64 1324}
!48 = !{!"p2 _ZTS11ImFontAtlas", !42, i64 0}
!49 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !24, i64 0, !24, i64 4, !48, i64 8}
!50 = !{!"p1 _ZTS11ImFontBaked", !27, i64 0}
!51 = !{!"p1 _ZTS6ImVec4", !27, i64 0}
!52 = !{!"_ZTS6ImVec4", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!53 = !{!"p1 _ZTS6ImVec2", !27, i64 0}
!54 = !{!"_ZTS8ImVectorI6ImVec2E", !24, i64 0, !24, i64 4, !53, i64 8}
!55 = !{!"p2 _ZTS10ImDrawList", !42, i64 0}
!56 = !{!"_ZTS8ImVectorIP10ImDrawListE", !24, i64 0, !24, i64 4, !55, i64 8}
!57 = !{!"_ZTS20ImDrawListSharedData", !33, i64 0, !51, i64 8, !35, i64 16, !36, i64 24, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !32, i64 48, !24, i64 52, !52, i64 56, !54, i64 72, !56, i64 88, !28, i64 104, !23, i64 112, !32, i64 496, !23, i64 500}
!58 = !{!"p1 _ZTS15ImGuiInputEvent", !27, i64 0}
!59 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !24, i64 0, !24, i64 4, !58, i64 8}
!60 = !{!"p2 _ZTS11ImGuiWindow", !42, i64 0}
!61 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !24, i64 0, !24, i64 4, !60, i64 8}
!62 = !{!"p1 _ZTS20ImGuiWindowStackData", !27, i64 0}
!63 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !24, i64 0, !24, i64 4, !62, i64 8}
!64 = !{!"p1 _ZTS16ImGuiStoragePair", !27, i64 0}
!65 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !24, i64 0, !24, i64 4, !64, i64 8}
!66 = !{!"_ZTS12ImGuiStorage", !65, i64 0}
!67 = !{!"p1 _ZTS11ImGuiWindow", !27, i64 0}
!68 = !{!"_ZTS16ImGuiInputSource", !23, i64 0}
!69 = !{!"_ZTS24ImGuiDeactivatedItemData", !24, i64 0, !24, i64 4, !30, i64 8, !30, i64 9}
!70 = !{!"_ZTS20ImGuiDataTypeStorage", !23, i64 0}
!71 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !23, i64 0}
!72 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !27, i64 0}
!73 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !24, i64 0, !24, i64 4, !72, i64 8}
!74 = !{!"_ZTS20ImGuiKeyRoutingTable", !23, i64 0, !73, i64 312, !73, i64 328}
!75 = !{!"long long", !23, i64 0}
!76 = !{!"_ZTS17ImGuiNextItemData", !24, i64 0, !24, i64 4, !24, i64 8, !75, i64 16, !32, i64 24, !24, i64 28, !24, i64 32, !30, i64 36, !23, i64 37, !70, i64 38, !24, i64 48, !24, i64 52}
!77 = !{!"_ZTS6ImRect", !33, i64 0, !33, i64 8}
!78 = !{!"_ZTS17ImGuiLastItemData", !24, i64 0, !24, i64 4, !24, i64 8, !77, i64 12, !77, i64 28, !77, i64 44, !77, i64 60, !24, i64 76}
!79 = !{!"_ZTS19ImGuiNextWindowData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !24, i64 56, !24, i64 60, !30, i64 64, !77, i64 68, !27, i64 88, !27, i64 96, !32, i64 104, !33, i64 108, !24, i64 116}
!80 = !{!"p1 _ZTS13ImGuiColorMod", !27, i64 0}
!81 = !{!"_ZTS8ImVectorI13ImGuiColorModE", !24, i64 0, !24, i64 4, !80, i64 8}
!82 = !{!"p1 _ZTS13ImGuiStyleMod", !27, i64 0}
!83 = !{!"_ZTS8ImVectorI13ImGuiStyleModE", !24, i64 0, !24, i64 4, !82, i64 8}
!84 = !{!"p1 _ZTS15ImFontStackData", !27, i64 0}
!85 = !{!"_ZTS8ImVectorI15ImFontStackDataE", !24, i64 0, !24, i64 4, !84, i64 8}
!86 = !{!"p1 _ZTS19ImGuiFocusScopeData", !27, i64 0}
!87 = !{!"_ZTS8ImVectorI19ImGuiFocusScopeDataE", !24, i64 0, !24, i64 4, !86, i64 8}
!88 = !{!"p1 int", !27, i64 0}
!89 = !{!"_ZTS8ImVectorIiE", !24, i64 0, !24, i64 4, !88, i64 8}
!90 = !{!"p1 _ZTS14ImGuiGroupData", !27, i64 0}
!91 = !{!"_ZTS8ImVectorI14ImGuiGroupDataE", !24, i64 0, !24, i64 4, !90, i64 8}
!92 = !{!"p1 _ZTS14ImGuiPopupData", !27, i64 0}
!93 = !{!"_ZTS8ImVectorI14ImGuiPopupDataE", !24, i64 0, !24, i64 4, !92, i64 8}
!94 = !{!"p1 _ZTS22ImGuiTreeNodeStackData", !27, i64 0}
!95 = !{!"_ZTS8ImVectorI22ImGuiTreeNodeStackDataE", !24, i64 0, !24, i64 4, !94, i64 8}
!96 = !{!"p2 _ZTS14ImGuiViewportP", !42, i64 0}
!97 = !{!"_ZTS8ImVectorIP14ImGuiViewportPE", !24, i64 0, !24, i64 4, !96, i64 8}
!98 = !{!"_ZTS13ImGuiNavLayer", !23, i64 0}
!99 = !{!"_ZTS16ImGuiNavItemData", !67, i64 0, !24, i64 8, !24, i64 12, !77, i64 16, !24, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !75, i64 48}
!100 = !{!"_ZTS8ImGuiKey", !23, i64 0}
!101 = !{!"_ZTS12ImGuiPayload", !27, i64 0, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !23, i64 24, !30, i64 57, !30, i64 58}
!102 = !{!"_ZTS8ImVectorIhE", !24, i64 0, !24, i64 4, !34, i64 8}
!103 = !{!"p1 _ZTS20ImGuiListClipperData", !27, i64 0}
!104 = !{!"_ZTS8ImVectorI20ImGuiListClipperDataE", !24, i64 0, !24, i64 4, !103, i64 8}
!105 = !{!"p1 _ZTS10ImGuiTable", !27, i64 0}
!106 = !{!"p1 _ZTS18ImGuiTableTempData", !27, i64 0}
!107 = !{!"_ZTS8ImVectorI18ImGuiTableTempDataE", !24, i64 0, !24, i64 4, !106, i64 8}
!108 = !{!"_ZTS8ImVectorI10ImGuiTableE", !24, i64 0, !24, i64 4, !105, i64 8}
!109 = !{!"_ZTS6ImPoolI10ImGuiTableE", !108, i64 0, !66, i64 16, !24, i64 32, !24, i64 36}
!110 = !{!"p1 float", !27, i64 0}
!111 = !{!"_ZTS8ImVectorIfE", !24, i64 0, !24, i64 4, !110, i64 8}
!112 = !{!"p1 _ZTS13ImDrawChannel", !27, i64 0}
!113 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !24, i64 0, !24, i64 4, !112, i64 8}
!114 = !{!"p1 _ZTS11ImGuiTabBar", !27, i64 0}
!115 = !{!"_ZTS8ImVectorI11ImGuiTabBarE", !24, i64 0, !24, i64 4, !114, i64 8}
!116 = !{!"_ZTS6ImPoolI11ImGuiTabBarE", !115, i64 0, !66, i64 16, !24, i64 32, !24, i64 36}
!117 = !{!"p1 _ZTS15ImGuiPtrOrIndex", !27, i64 0}
!118 = !{!"_ZTS8ImVectorI15ImGuiPtrOrIndexE", !24, i64 0, !24, i64 4, !117, i64 8}
!119 = !{!"p1 _ZTS20ImGuiShrinkWidthItem", !27, i64 0}
!120 = !{!"_ZTS8ImVectorI20ImGuiShrinkWidthItemE", !24, i64 0, !24, i64 4, !119, i64 8}
!121 = !{!"_ZTS19ImGuiBoxSelectState", !24, i64 0, !30, i64 4, !30, i64 5, !30, i64 6, !30, i64 7, !30, i64 8, !24, i64 9, !33, i64 12, !33, i64 20, !33, i64 28, !67, i64 40, !30, i64 48, !77, i64 52, !23, i64 68, !77, i64 100, !77, i64 116}
!122 = !{!"p1 _ZTS24ImGuiMultiSelectTempData", !27, i64 0}
!123 = !{!"_ZTS8ImVectorI24ImGuiMultiSelectTempDataE", !24, i64 0, !24, i64 4, !122, i64 8}
!124 = !{!"p1 _ZTS21ImGuiMultiSelectState", !27, i64 0}
!125 = !{!"_ZTS8ImVectorI21ImGuiMultiSelectStateE", !24, i64 0, !24, i64 4, !124, i64 8}
!126 = !{!"_ZTS6ImPoolI21ImGuiMultiSelectStateE", !125, i64 0, !66, i64 16, !24, i64 32, !24, i64 36}
!127 = !{!"p1 _ZTSN5ImStb17STB_TexteditStateE", !27, i64 0}
!128 = !{!"_ZTS8ImVectorIcE", !24, i64 0, !24, i64 4, !34, i64 8}
!129 = !{!"_ZTS19ImGuiInputTextState", !28, i64 0, !127, i64 8, !24, i64 16, !24, i64 20, !24, i64 24, !34, i64 32, !128, i64 40, !128, i64 56, !128, i64 72, !24, i64 88, !33, i64 92, !24, i64 100, !32, i64 104, !32, i64 108, !30, i64 112, !30, i64 113, !30, i64 114, !30, i64 115, !30, i64 116, !30, i64 117, !23, i64 118, !24, i64 120, !24, i64 124}
!130 = !{!"_ZTS14ImGuiTextIndex", !89, i64 0, !24, i64 16}
!131 = !{!"_ZTS30ImGuiInputTextDeactivatedState", !24, i64 0, !24, i64 4, !128, i64 8}
!132 = !{!"p1 _ZTS11ImFontGlyph", !27, i64 0}
!133 = !{!"_ZTS8ImVectorI11ImFontGlyphE", !24, i64 0, !24, i64 4, !132, i64 8}
!134 = !{!"_ZTS11ImFontBaked", !111, i64 0, !32, i64 16, !32, i64 20, !32, i64 24, !40, i64 32, !133, i64 48, !24, i64 64, !32, i64 68, !32, i64 72, !24, i64 76, !24, i64 79, !24, i64 79, !24, i64 79, !24, i64 80, !24, i64 84, !36, i64 88, !27, i64 96}
!135 = !{!"_ZTS21ImGuiComboPreviewData", !77, i64 0, !33, i64 16, !33, i64 24, !33, i64 32, !32, i64 40, !24, i64 44}
!136 = !{!"_ZTS8ImVectorIjE", !24, i64 0, !24, i64 4, !88, i64 8}
end_hunk_2
