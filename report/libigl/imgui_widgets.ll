inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar:.preheader
  %i.xt = and i32 %i.xs, 1048576
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !296
  %i.xy = icmp slt i32 %i.xx, 0
  br i1 %i.xy, label %bb.dd, label %_ZN8ImVectorIcE6resizeEi.exit

bb.dd:                                            ; preds = %bb.dc
  %i.xz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !298 ; 2 uses
  %.not6.i.i342 = icmp eq ptr %i.yb, null
  br i1 %.not6.i.i342, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yc = load i32, ptr %i.xv, align 8, !tbaa !299
  %i.yd = sext i32 %i.yc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xz, ptr nonnull align 1 %i.yb, i64 %i.yd, i1 false)
  %i.ye = load ptr, ptr %i.ya, align 8, !tbaa !298
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ye)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  store ptr %i.xz, ptr %i.ya, align 8, !tbaa !298
  store i32 0, ptr %i.xw, align 4, !tbaa !296
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %bb.dc, %bb.df
  store i32 0, ptr %i.xv, align 8, !tbaa !299
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit, %bb.db
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 7184
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !12 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 216
  %i.yi = load i64, ptr %i.hv, align 4
  store i64 %i.yi, ptr %i.yh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.yj = load float, ptr %i.ow, align 4, !tbaa !593
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !137
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yn = load float, ptr %i.ym, align 8, !tbaa !136
  %i.yo = fsub float %i.yl, %i.yn
  store float %i.yj, ptr %8, align 4, !tbaa !135
  %i.yp = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.yo, ptr %i.yp, align 4, !tbaa !140
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !600
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.yr)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yg, i64 248 ; 2 uses
  %i.yt = load float, ptr %i.ys, align 8, !tbaa !601 ; 2 uses
  %i.yu = load float, ptr %i.hv, align 4, !tbaa !539
  %i.yv = load float, ptr %i.hm, align 8, !tbaa !582
  %i.yw = fadd float %i.yu, %i.yv                 ; 2 uses
  %i.yx = fcmp oge float %i.yt, %i.yw
  %i.yy = select i1 %i.yx, float %i.yt, float %i.yw
  store float %i.yy, ptr %i.ys, align 8, !tbaa !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !545    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !572

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !559
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui15TabBarRemoveTabEP11ImGuiTabBarj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !545    ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !572

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !559
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = zext nneg i32 %i.a to i64
  %i.j = xor i64 %indvars.iv.i, -1
  %i.k = add nsw i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.e, ptr nonnull align 4 %i.h, i64 %i.l, i1 false)
  %i.m = load i32, ptr %0, align 8, !tbaa !569
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %0, align 8, !tbaa !569
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !554
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread
  store i32 0, ptr %i.o, align 8, !tbaa !554
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !560
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !560
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !561
  %i.w = icmp eq i32 %i.v, %1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.u, align 4, !tbaa !561
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !564
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.d, align 4, !tbaa !602
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !554
  %i.g = load i32, ptr %1, align 4, !tbaa !559
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 -1, ptr %i.i, align 4, !tbaa !558
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !561
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %2, align 8, !tbaa !560
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !554
  %i.m = load i32, ptr %1, align 4, !tbaa !559    ; 2 uses
  %.not11 = icmp eq i32 %i.l, %i.m
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.m, ptr %i.n, align 4, !tbaa !561
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5ImGui18TabBarQueueReorderEP11ImGuiTabBarPK12ImGuiTabItemi(ptr nofree noundef writeonly captures(none) initializes((100, 106)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !559
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.a, ptr %i.b, align 4, !tbaa !571
  %i.c = trunc i32 %2 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 %i.c, ptr %i.d, align 8, !tbaa !573
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarPK12ImGuiTabItem6ImVec2(ptr nofree noundef captures(none) %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !543
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !564  ; 2 uses
  %i.h = and i32 %i.g, 192
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load float, ptr %i.j, align 4, !tbaa !539
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load float, ptr %i.l, align 8, !tbaa !595
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi float [ %i.m, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.o = fsub float %i.k, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !591
  %i.r = fadd float %i.o, %i.q
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 3 uses
  %i.s = fcmp ule float %i.r, %.sroa.0.0.vec.extract ; 2 uses
  %i.t = select i1 %i.s, i32 1, i32 -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !557  ; 2 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 40
  %i.aa = trunc i64 %i.z to i32                   ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.ac = load i32, ptr %0, align 8, !tbaa !545   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 5556
  %i.ae = icmp sgt i32 %i.ac, %i.aa
  br i1 %i.ae, label %.lr.ph72, label %.critedge

bb.e:                                             ; preds = %bb.g
  %i.af = icmp slt i32 %i.ay, %i.ac
  br i1 %i.af, label %.lr.ph72, label %.critedge, !llvm.loop !603

.lr.ph72:                                         ; preds = %.lr.ph, %bb.e
  %.0455571 = phi i32 [ %i.ay, %bb.e ], [ %i.aa, %.lr.ph ] ; 5 uses
  %.0435670 = phi i32 [ %.0455571, %bb.e ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.ag = zext nneg i32 %.0455571 to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !564 ; 2 uses
  %i.ak = and i32 %i.aj, 32
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph72
  %i.al = xor i32 %i.aj, %i.g
  %i.am = and i32 %i.al, 192
  %.not47 = icmp eq i32 %i.am, 0
  br i1 %.not47, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load float, ptr %i.an, align 4, !tbaa !591
  %i.ap = fadd float %i.o, %i.ao                  ; 2 uses
  %i.aq = load float, ptr %i.ad, align 4, !tbaa !279 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !585
  %i.at = fadd float %i.ap, %i.as
  %i.au = fadd float %i.aq, %i.at
  %i.av = fsub float %i.ap, %i.aq
  %i.aw = fcmp ule float %.sroa.0.0.vec.extract, %i.av
  %i.ax = fcmp uge float %.sroa.0.0.vec.extract, %i.au
  %or.cond52 = select i1 %i.s, i1 %i.ax, i1 %i.aw
  %i.ay = add nsw i32 %.0455571, %i.t             ; 3 uses
  %i.az = icmp sgt i32 %i.ay, -1
  %or.cond = select i1 %or.cond52, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.e, label %..critedge_crit_edge, !llvm.loop !603

..critedge_crit_edge:                             ; preds = %bb.g
  br label %.critedge, !llvm.loop !603

.critedge:                                        ; preds = %.lr.ph72, %bb.f, %bb.e, %..critedge_crit_edge, %.lr.ph
  %.2 = phi i32 [ %.0455571, %..critedge_crit_edge ], [ %i.aa, %.lr.ph ], [ %.0435670, %.lr.ph72 ], [ %.0455571, %bb.e ], [ %.0435670, %bb.f ] ; 2 uses
  %.not48 = icmp eq i32 %.2, %i.aa
  br i1 %.not48, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ba = sub nsw i32 %.2, %i.aa
  %i.bb = load i32, ptr %1, align 4, !tbaa !559
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !571
  %i.bd = trunc i32 %i.ba to i16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 %i.bd, ptr %i.be, align 8, !tbaa !573
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImGuiTabItem, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !571  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !545    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !557  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !572

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv.i ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !559
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !564  ; 2 uses
  %i.l = and i32 %i.k, 32
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.m = trunc i64 %indvars.iv.i to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i16, ptr %i.n, align 8, !tbaa !573  ; 2 uses
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = add nsw i32 %i.m, %i.p                   ; 2 uses
  %or.cond = icmp ult i32 %i.q, %i.c
  br i1 %or.cond, label %bb.e, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !564  ; 2 uses
  %i.v = and i32 %i.u, 32
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.f, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = xor i32 %i.u, %i.k
  %i.x = and i32 %i.w, 192
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.g, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(40) %i.g, i64 40, i1 false), !tbaa.struct !562
  %i.y = icmp sgt i16 %i.o, 0                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ac = select i1 %i.y, ptr %i.g, ptr %i.ab
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.p, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull align 4 %i.aa, i64 %i.af, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbi:bb.a
  %i.bd = sdiv i32 %.pr.pre, 2
  %i.be = add nsw i32 %i.bd, %.pr.pre
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.n, %bb.m
  %i.bf = phi i32 [ %i.be, %bb.n ], [ 8, %bb.m ]
  %i.bg = tail call noundef i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bc) ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, 40
  %i.bj = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bi) ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !557 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bl, null
  br i1 %.not6.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.bm = load i32, ptr %0, align 8, !tbaa !569
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bn, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bj, ptr nonnull align 4 %i.bl, i64 %i.bo, i1 false)
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !557
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bp)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !557
  store i32 %i.bg, ptr %i.az, align 4, !tbaa !568
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !569
  br label %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit

_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i, %bb.p
  %i.bq = phi i32 [ %.pr.pre, %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.p ]
  %i.br = phi ptr [ %.pre.i, %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i ], [ %i.bj, %bb.p ]
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [40 x i8], ptr %i.br, i64 %i.bs ; 6 uses
  store i64 0, ptr %i.bt, align 4
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 -1, ptr %.sroa.4260.0..sroa_idx, align 4
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 -1, ptr %.sroa.5261.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  store i64 -1, ptr %.sroa.6262.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %i.bu = load i32, ptr %0, align 8, !tbaa !569
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %0, align 8, !tbaa !569
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !557 ; 2 uses
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr [40 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -40    ; 2 uses
  store i32 %.0.i, ptr %i.ca, align 4, !tbaa !559
  %i.cb = getelementptr i8, ptr %i.bz, i64 -20
  store float %i.as, ptr %i.cb, align 4, !tbaa !585
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 1, ptr %i.cc, align 1, !tbaa !544
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.l, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit
  %i.cd = phi ptr [ %i.bx, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.av, %bb.l ]
  %i.ce = phi i1 [ false, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ true, %bb.l ]
  %.0202 = phi ptr [ %i.ca, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.aw, %bb.l ] ; 13 uses
  %i.cf = ptrtoint ptr %.0202 to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 40
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 %i.cj, ptr %i.ck, align 8, !tbaa !525
  %i.cl = getelementptr inbounds nuw i8, ptr %.0202, i64 24
  store float %i.as, ptr %i.cl, align 4, !tbaa !584
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 110 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !550 ; 2 uses
  %i.co = add i16 %i.cn, 1
  store i16 %i.co, ptr %i.cm, align 2, !tbaa !550
  %i.cp = getelementptr inbounds nuw i8, ptr %.0202, i64 32
  store i16 %i.cn, ptr %i.cp, align 4, !tbaa !551
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !520
  %i.cs = add nsw i32 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 7056 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !538 ; 3 uses
  %i.cv = icmp slt i32 %i.cs, %i.cu               ; 3 uses
  %i.cw = load i32, ptr %i.n, align 8, !tbaa !543
  %i.cx = and i32 %i.cw, 2097152
  %.not213 = icmp eq i32 %i.cx, 0                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0202, i64 8 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !558
  %i.da = add nsw i32 %i.cz, 1
  %i.db = icmp sge i32 %i.da, %i.cu               ; 3 uses
  %i.dc = and i32 %.0200, 2097152
  %i.dd = icmp ne i32 %i.dc, 0                    ; 9 uses
  store i32 %i.cu, ptr %i.cy, align 4, !tbaa !558
  %i.de = getelementptr inbounds nuw i8, ptr %.0202, i64 4 ; 4 uses
  store i32 %.0200, ptr %i.de, align 4, !tbaa !564
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !604
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.dg, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0202, i64 28
  store i32 %spec.select.i, ptr %i.dh, align 4, !tbaa !576
  %i.di = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull %1, ptr noundef nonnull %i.dk)
  br i1 %i.db, label %bb.w, label %bb.q

bb.q:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.dl = load i32, ptr %i.n, align 8, !tbaa !543
  %i.dm = and i32 %i.dl, 2
  %.not214 = icmp eq i32 %i.dm, 0
  br i1 %.not214, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !561
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !560
  %i.ds = icmp ne i32 %i.dr, 0
  %or.cond17 = select i1 %i.ds, i1 true, i1 %i.dd
  br i1 %or.cond17, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  br i1 %i.dd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  store i32 %.0.i, ptr %i.dn, align 4, !tbaa !561
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %bb.r, %bb.q, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.dt = and i32 %.0200, 2
  %.not215 = icmp eq i32 %i.dt, 0
  br i1 %.not215, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !560
  %i.dw = icmp eq i32 %i.dv, %.0.i
  %or.cond20 = select i1 %i.dw, i1 true, i1 %i.dd
  br i1 %or.cond20, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.i, ptr %i.dx, align 4, !tbaa !561
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !554
  %i.ea = icmp eq i32 %i.dz, %.0.i
  br i1 %i.ea, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 1, ptr %i.eb, align 4, !tbaa !553
  br label %bb.ad

.critedge:                                        ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !560
  %i.ee = icmp eq i32 %i.ed, 0
  %or.cond = select i1 %i.ee, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.critedge
  %i.ef = load i32, ptr %0, align 8, !tbaa !545
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = load i32, ptr %i.n, align 8, !tbaa !543
  %i.ei = and i32 %i.eh, 2
  %.not216 = icmp eq i32 %i.ei, 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.ab, %.critedge
  %.0204.shrunk = phi i1 [ true, %bb.aa ], [ %.not216, %bb.ac ], [ false, %.critedge ], [ false, %bb.ab ] ; 5 uses
  %or.cond3.not = and i1 %i.ce, %i.cv
  %or.cond225 = select i1 %i.db, i1 true, i1 %or.cond3.not
  br i1 %or.cond225, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ej = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.0.i, ptr noundef null, i32 noundef 24) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %not. = xor i1 %i.dd, true
  %..0204.shrunk = select i1 %not., i1 %.0204.shrunk, i1 false
  br label %bb.by

bb.af:                                            ; preds = %bb.ad
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !560
  %i.em = icmp eq i32 %i.el, %.0.i
  br i1 %i.em, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.en = load i32, ptr %i.ct, align 8, !tbaa !538
  %i.eo = getelementptr inbounds nuw i8, ptr %.0202, i64 12
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !583
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 216 ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = load i32, ptr %i.de, align 4, !tbaa !564
  %i.es = and i32 %i.er, 192
  %i.et = icmp eq i32 %i.es, 0                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0202, i64 20
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !585
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0202, i64 16
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !591 ; 2 uses
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !596
  %i.fb = fsub float %i.ey, %i.fa
  %i.fc = fptosi float %i.fb to i32
  %i.fd = sitofp i32 %i.fc to float
  %.val236 = load float, ptr %i.ew, align 4, !tbaa !135
  %i.fe = fadd float %.val236, %i.fd
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.val232 = load float, ptr %i.ew, align 4, !tbaa !135
  %i.ff = fadd float %i.ey, %.val232
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink289 = phi float [ %i.ff, %bb.aj ], [ %i.fe, %bb.ai ] ; 8 uses
  %.val233.sink.in = getelementptr i8, ptr %0, i64 48
  %.val233.sink = load float, ptr %.val233.sink.in, align 8, !tbaa !140
  %i.fg = fadd float %.val233.sink, 0.000000e+00  ; 6 uses
  %.sroa.0.0.vec.insert.i242 = insertelement <2 x float> poison, float %.sink289, i64 0
  %.sroa.0.4.vec.insert.i243 = insertelement <2 x float> %.sroa.0.0.vec.insert.i242, float %i.fg, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i243, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.fh = fadd float %i.ev, %.sink289             ; 4 uses
  %i.fi = fadd float %i.am, %i.fg                 ; 4 uses
  %.sroa.0.0.vec.insert.i244 = insertelement <2 x float> poison, float %i.fh, i64 0
  %.sroa.0.4.vec.insert.i245 = insertelement <2 x float> %.sroa.0.0.vec.insert.i244, float %i.fi, i64 1
  store float %.sink289, ptr %6, align 4
  %.sroa_idx250 = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store float %i.fg, ptr %.sroa_idx250, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i245, ptr %i.fj, align 4
  br i1 %i.et, label %bb.al, label %.thread270

bb.al:                                            ; preds = %bb.ak
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !598 ; 3 uses
  %i.fm = fcmp ogt float %i.fl, %.sink289
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !599 ; 2 uses
  %i.fn = fcmp ogt float %i.fh, %.pre
  %or.cond290 = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond290, label %.thread, label %.thread270

.thread:                                          ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.fo = fcmp ole float %i.fl, %.sink289
  %i.fp = select i1 %i.fo, float %.sink289, float %i.fl
  %i.fq = fadd float %i.fg, -1.000000e+00
  store float %i.fp, ptr %7, align 4, !tbaa !135
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.fq, ptr %i.fr, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.pre, ptr %8, align 4, !tbaa !135
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.fi, ptr %i.ft, align 4, !tbaa !140
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %.pre273 = load float, ptr %i.fj, align 4, !tbaa !191
  %.pre274 = load float, ptr %6, align 4, !tbaa !190
  %.pre276 = load float, ptr %i.fs, align 4, !tbaa !137
  %.pre277 = load float, ptr %.sroa_idx250, align 4, !tbaa !136
  br label %.thread270

.thread270:                                       ; preds = %bb.al, %bb.ak, %.thread
  %i.fu = phi float [ %.pre277, %.thread ], [ %i.fg, %bb.al ], [ %i.fg, %bb.ak ]
  %i.fv = phi float [ %.pre276, %.thread ], [ %i.fi, %bb.al ], [ %i.fi, %bb.ak ]
  %i.fw = phi float [ %.pre274, %.thread ], [ %.sink289, %bb.al ], [ %.sink289, %bb.ak ]
  %i.fx = phi float [ %.pre273, %.thread ], [ %i.fh, %bb.al ], [ %i.fh, %bb.ak ]
  %i.fy = phi i1 [ true, %.thread ], [ false, %bb.al ], [ false, %bb.ak ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 240 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.gb = fsub float %i.fx, %i.fw
  %i.gc = fsub float %i.fv, %i.fu
  %.sroa.0.0.vec.insert.i246 = insertelement <2 x float> poison, float %i.gb, i64 0
  %.sroa.0.4.vec.insert.i247 = insertelement <2 x float> %.sroa.0.0.vec.insert.i246, float %i.gc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i247, ptr %9, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 5536
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !143
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  store i64 %i.ga, ptr %i.fz, align 8
  %i.gf = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, ptr noundef null, i32 noundef 0)
  br i1 %i.gf, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.thread270
  br i1 %i.fy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZN5ImGui11PopClipRectEv()
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i64 %i.eq, ptr %i.ep, align 8
  br label %bb.bx

bb.ap:                                            ; preds = %.thread270
  %i.gg = select i1 %i.dd, i32 4128, i32 4112
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 8060 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 4, !tbaa !150, !range !124, !noundef !125
  %i.gj = zext nneg i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 9
  %spec.select226 = or disjoint i32 %i.gk, %i.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.gl = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %spec.select226) ; 2 uses
  %.not4 = xor i1 %i.gl, true
  %or.cond6 = select i1 %.not4, i1 true, i1 %i.dd
  br i1 %or.cond6, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.i, ptr %i.gm, align 4, !tbaa !561
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 7260
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !161
  %.not = icmp eq i32 %i.go, %.0.i
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5ImGui19SetItemAllowOverlapEv()
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gp = load i8, ptr %i.b, align 1, !tbaa !160, !range !124, !noundef !125
  %i.gq = trunc nuw i8 %i.gp to i1                ; 3 uses
  %or.cond9.not = select i1 %i.gq, i1 %i.db, i1 false
  br i1 %or.cond9.not, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.gr = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.gr, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.gs = load i8, ptr %i.gh, align 4, !tbaa !150, !range !124, !noundef !125
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = load i32, ptr %i.n, align 8, !tbaa !543
  %i.gv = and i32 %i.gu, 1
  %.not219 = icmp eq i32 %i.gv, 0
  br i1 %.not219, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 948
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !605 ; 2 uses
  %i.gy = fcmp olt float %i.gx, 0.000000e+00
  br i1 %i.gy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 296 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !459
  %i.hb = load float, ptr %6, align 4, !tbaa !190
  %i.hc = fcmp olt float %i.ha, %i.hb
  br i1 %i.hc, label %.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hd = fcmp ogt float %i.gx, 0.000000e+00
  br i1 %i.hd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.he = getelementptr inbounds nuw i8, ptr %i.h, i64 296 ; 2 uses
  %i.hf = load float, ptr %i.he, align 8, !tbaa !459
  %i.hg = load float, ptr %i.fj, align 4, !tbaa !191
  %i.hh = fcmp ogt float %i.hf, %i.hg
  br i1 %i.hh, label %.sink.split, label %bb.bb

.sink.split:                                      ; preds = %bb.ba, %bb.ay
  %.sroa.028.0.copyload.sink.in = phi ptr [ %i.gz, %bb.ay ], [ %i.he, %bb.ba ]
  %.sroa.028.0.copyload.sink = load <2 x float>, ptr %.sroa.028.0.copyload.sink.in, align 8
  call void @_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarPK12ImGuiTabItem6ImVec2(ptr noundef nonnull %0, ptr noundef nonnull %.0202, <2 x float> %.sroa.028.0.copyload.sink)
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.av, %bb.aw, %bb.az, %bb.ba, %bb.au, %bb.at
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 616
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !147 ; 2 uses
  %i.hk = load i8, ptr %i.a, align 1, !range !124
  %i.hl = trunc nuw i8 %i.hk to i1
  %or.cond11 = select i1 %i.gq, i1 true, i1 %i.hl
  %i.hm = select i1 %.not213, i32 37, i32 35
  %i.hn = select i1 %.not213, i32 36, i32 33
  %i.ho = select i1 %.0204.shrunk, i32 %i.hm, i32 %i.hn
  %i.hp = select i1 %or.cond11, i32 34, i32 %i.ho
  %i.hq = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.hp, float noundef 1.000000e+00)
  call void @_ZN5ImGui17TabItemBackgroundEP10ImDrawListRK6ImRectij(ptr noundef %i.hj, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0200, i32 noundef %i.hq)
  call void @_ZN5ImGui18RenderNavHighlightERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, i32 noundef 1)
  %i.hr = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 32)
  br i1 %i.hr, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.hs = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.hs, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ht = call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef 1)
  %.not21 = xor i1 %i.ht, true
  %or.cond24 = select i1 %.not21, i1 true, i1 %i.dd
  br i1 %or.cond24, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  br i1 %i.dd, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.i, ptr %i.hu, align 4, !tbaa !561
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd, %bb.bb
  %i.hv = load i32, ptr %i.n, align 8, !tbaa !543
  %i.hw = lshr i32 %i.hv, 1
  %i.hx = and i32 %i.hw, 4
  %spec.select227 = or i32 %i.hx, %.0200
  br i1 %i.y, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hy = call noundef i32 @_ZN5ImGui13GetIDWithSeedEPKcS1_j(ptr noundef nonnull @.str.92, ptr noundef null, i32 noundef %.0.i)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.hz = phi i32 [ %i.hy, %bb.bh ], [ 0, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ia, align 8
  call void @_ZN5ImGui26TabItemLabelAndCloseButtonEP10ImDrawListRK6ImRecti6ImVec2PKcjjbPbS8_(ptr noundef %i.hj, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %spec.select227, <2 x float> %.sroa.0.0.copyload, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %i.hz, i1 noundef zeroext %.0204.shrunk, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ib = load i8, ptr %i.c, align 1, !tbaa !160, !range !124, !noundef !125
  %i.ic = trunc nuw i8 %i.ib to i1
  %or.cond13 = and i1 %i.y, %i.ic
  br i1 %or.cond13, label %bb.bj, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.bj:                                            ; preds = %bb.bi
  store i8 0, ptr %2, align 1, !tbaa !160
  %i.id = load i32, ptr %i.de, align 4, !tbaa !564
  %i.ie = and i32 %i.id, 1
  %.not.i248 = icmp eq i32 %i.ie, 0
  br i1 %.not.i248, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.if = getelementptr inbounds nuw i8, ptr %.0202, i64 36
  store i8 1, ptr %i.if, align 4, !tbaa !602
  %i.ig = load i32, ptr %i.dy, align 8, !tbaa !554
  %i.ih = load i32, ptr %.0202, align 4, !tbaa !559
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.bl, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.bl:                                            ; preds = %bb.bk
  store i32 -1, ptr %i.cy, align 4, !tbaa !558
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ij, align 4, !tbaa !561
  store i32 0, ptr %i.ek, align 8, !tbaa !560
  br label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.bm:                                            ; preds = %bb.bj
  %i.ik = load i32, ptr %i.dy, align 8, !tbaa !554
  %i.il = load i32, ptr %.0202, align 4, !tbaa !559 ; 2 uses
  %.not11.i = icmp eq i32 %i.ik, %i.il
  br i1 %.not11.i, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.il, ptr %i.im, align 4, !tbaa !561
  br label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bi
  br i1 %i.fy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit
  call void @_ZN5ImGui11PopClipRectEv()
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit
  store i64 %i.eq, ptr %i.ep, align 8
  %i.in = load i8, ptr %i.d, align 1, !tbaa !160, !range !124, !noundef !125
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.ip = getelementptr inbounds nuw i8, ptr %i.h, i64 7240
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !516
  %i.ir = icmp ne i32 %i.iq, %.0.i
  %or.cond15 = or i1 %i.ir, %i.gq
  br i1 %or.cond15, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.is = getelementptr inbounds nuw i8, ptr %i.h, i64 7256
  %i.it = load float, ptr %i.is, align 8, !tbaa !606
  %i.iu = getelementptr inbounds nuw i8, ptr %i.h, i64 12376
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !607
  %i.iw = fcmp ogt float %i.it, %i.iv
  br i1 %i.iw, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.ix = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.ix, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.iy = load i32, ptr %i.n, align 8, !tbaa !543
  %i.iz = and i32 %i.iy, 32
  %.not221 = icmp eq i32 %i.iz, 0
  br i1 %.not221, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ja = load i32, ptr %i.de, align 4, !tbaa !564
  %i.jb = and i32 %i.ja, 16
  %.not222 = icmp eq i32 %i.jb, 0
  br i1 %.not222, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jc = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef nonnull %1, ptr noundef null)
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %1 to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = trunc i64 %i.jf to i32
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.103, i32 noundef %i.jg, ptr noundef nonnull %1)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %..0204.shrunk228 = select i1 %i.dd, i1 %i.gl, i1 %.0204.shrunk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ao
  %.1 = phi i1 [ %..0204.shrunk228, %bb.bw ], [ %.0204.shrunk, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.ae, %bb.h, %bb.c
  %.4 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ %..0204.shrunk, %bb.ae ], [ %.1, %bb.bx ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui10EndTabItemEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !123, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !537  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.k = load i16, ptr %i.j, align 8, !tbaa !525
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !557
  %i.n = sext i16 %i.k to i64
  %i.o = getelementptr inbounds [40 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !564
  %i.r = and i32 %i.q, 8
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui5PopIDEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13TabItemButtonEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !123, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !537  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = or i32 %1, 2097184
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbi(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef null, i32 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_ZN5ImGui15TabItemCalcSizeEPKcb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 4 uses
  %i.b = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5532
  %i.d = load float, ptr %i.c, align 4, !tbaa !231 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5536
  %i.f = load float, ptr %i.e, align 4, !tbaa !175
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5556
  %i.h = load float, ptr %i.g, align 4, !tbaa !279
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.j = load float, ptr %i.i, align 8, !tbaa !145
  %i.k = fadd float %i.h, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %i.k, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.l = fadd float %i.d, %.sink
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.b, i64 0
  %i.m = fadd float %.sroa.0.0.vec.extract, %i.d
  %storemerge = fadd float %i.m, %i.l             ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.b, i64 1
  %i.n = tail call float @llvm.fmuladd.f32(float %i.f, float 2.000000e+00, float %.sroa.0.4.vec.extract)
  %i.o = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6528
  %i.q = load float, ptr %i.p, align 8, !tbaa !145
  %i.r = fmul float %i.q, 2.000000e+01            ; 2 uses
  %i.s = fcmp olt float %storemerge, %i.r
  %i.t = select i1 %i.s, float %storemerge, float %i.r
  %.sroa.08.0.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.08.4.vec.insert = insertelement <2 x float> %.sroa.08.0.vec.insert, float %i.n, i64 1
  ret <2 x float> %.sroa.08.4.vec.insert
}

declare void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17TabItemBackgroundEP10ImDrawListRK6ImRectij(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !191
  %i.d = load float, ptr %1, align 4, !tbaa !190  ; 2 uses
  %i.e = fsub float %i.c, %i.d
  %i.f = and i32 %2, 2097152
  %.not = icmp eq i32 %i.f, 0
  %.in.v = select i1 %.not, i64 5608, i64 5540
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.g = load float, ptr %.in, align 4, !tbaa !130 ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.e, float 5.000000e-01, float -1.000000e+00) ; 2 uses
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = select i1 %i.i, float %i.g, float %i.h   ; 2 uses
  %i.k = fcmp ole float %i.j, 0.000000e+00
  %i.l = select i1 %i.k, float 0.000000e+00, float %i.j ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !136
  %i.o = fadd float %i.n, 1.000000e+00
end_hunk_1
