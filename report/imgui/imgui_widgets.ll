Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui13BeginTabBarExEP11ImGuiTabBarRK6ImRecti:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !573
  store float %i.dq, ptr %4, align 4, !tbaa !194
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.di, ptr %i.dr, align 4, !tbaa !197
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.dk, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.de, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.p

bb.p:                                             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit, %bb.o, %bb.a, %bb.j
  %.0 = xor i1 %i.f, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -65535, 65536) i32 @_ZL27TabItemComparerByBeginOrderPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i16, ptr %i.a, align 4, !tbaa !590
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i16, ptr %i.d, align 4, !tbaa !590
  %i.f = sext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9EndTabBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !183, !range !184, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !576  ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.132) ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 131
  %i.k = load i8, ptr %i.j, align 1, !tbaa !584, !range !184, !noundef !185
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  %i.n = load i8, ptr %i.m, align 4, !tbaa !591, !range !184, !noundef !185
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !563
  %i.r = add nsw i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !455
  %i.u = icmp slt i32 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !592
  %i.x = icmp eq i32 %i.w, 0
  %or.cond = select i1 %i.x, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !187
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !578 ; 2 uses
  %i.ac = fsub float %i.z, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 76 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !585 ; 2 uses
  %i.af = fcmp oge float %i.ac, %i.ae
  %i.ag = select i1 %i.af, float %i.ac, float %i.ae ; 2 uses
  store float %i.ag, ptr %i.ad, align 4, !tbaa !585
  %i.ah = fadd float %i.ab, %i.ag
  store float %i.ah, ptr %i.y, align 4, !tbaa !187
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !578
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.al = load float, ptr %i.ak, align 8, !tbaa !586
  %i.am = fadd float %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.am, ptr %i.an, align 4, !tbaa !187
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 130
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !579
  %i.aq = icmp sgt i8 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !190
  store i64 %i.at, ptr %i.as, align 8, !tbaa !190
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  store i16 -1, ptr %i.au, align 2, !tbaa !565
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !580
  %i.ax = and i32 %i.aw, 1048576
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5ImGui5PopIDEv()
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 9136 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !574
  %i.bb = add nsw i32 %i.ba, -1                   ; 3 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !574
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZL22GetTabBarFromTabBarRefRK15ImGuiPtrOrIndex.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 9144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !575
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %.val = load ptr, ptr %i.bh, align 8, !tbaa !871 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.p, label %_ZL22GetTabBarFromTabBarRefRK15ImGuiPtrOrIndex.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %i.bg, i64 -8
  %.val30 = load i32, ptr %i.bi, align 8
  %i.bj = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !566
  %i.bm = sext i32 %.val30 to i64
  %i.bn = getelementptr inbounds [176 x i8], ptr %i.bl, i64 %i.bm
  br label %_ZL22GetTabBarFromTabBarRefRK15ImGuiPtrOrIndex.exit

_ZL22GetTabBarFromTabBarRefRK15ImGuiPtrOrIndex.exit: ; preds = %bb.p, %bb.o, %bb.n
  %i.bo = phi ptr [ null, %bb.n ], [ %i.bn, %bb.p ], [ %.val, %bb.o ]
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !576
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %_ZL22GetTabBarFromTabBarRefRK15ImGuiPtrOrIndex.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef initializes((131, 132)) %0) unnamed_addr #0 {
.preheader:
  %1 = alloca %struct.ImVec4, align 4             ; 6 uses
  %2 = alloca %struct.ImVec4, align 4             ; 4 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.ImVec4, align 4             ; 6 uses
  %4 = alloca %struct.ImVec4, align 4             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImGuiTabItem, align 4       ; 4 uses
  %7 = alloca [3 x %struct.ImGuiTabBarSection], align 16 ; 17 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 0, ptr %i.d, align 1, !tbaa !584
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !878
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.h = getelementptr i8, ptr %0, i64 64         ; 12 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !238
  %i.j = load float, ptr %i.g, align 8, !tbaa !237
  %i.k = fsub float %i.i, %i.j                    ; 2 uses
  store float %i.k, ptr %i.e, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.l = fcmp ogt float %i.f, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !582  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !569 ; 2 uses
  %.pre506 = load i32, ptr %i.q, align 4, !tbaa !563
  br label %bb.a

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %.0332.lcssa = phi i1 [ false, %.preheader ], [ %.4, %bb.l ]
  %.0326.lcssa = phi i32 [ 0, %.preheader ], [ %.1327, %bb.l ] ; 6 uses
  %.lcssa440 = phi i32 [ %i.n, %.preheader ], [ %i.bj, %bb.l ]
  %.not359 = icmp eq i32 %.lcssa440, %.0326.lcssa
  br i1 %.not359, label %bb.r, label %bb.m

bb.a:                                             ; preds = %.lr.ph, %bb.l
  %i.u = phi i32 [ %i.n, %.lr.ph ], [ %i.bj, %bb.l ] ; 2 uses
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.bk, %bb.l ] ; 3 uses
  %9 = phi i32 [ %.pre506, %.lr.ph ], [ %11, %bb.l ] ; 4 uses
  %i.w = phi ptr [ %.pre, %.lr.ph ], [ %i.bl, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0326444 = phi i32 [ 0, %.lr.ph ], [ %.1327, %bb.l ] ; 7 uses
  %.0332443 = phi i1 [ false, %.lr.ph ], [ %.4, %bb.l ] ; 4 uses
  %i.x = getelementptr inbounds nuw [44 x i8], ptr %i.w, i64 %indvars.iv ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !593
  %i.aa = icmp slt i32 %i.z, %9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load i8, ptr %i.ab, align 4, !range !184
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond376 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond376, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !592
  %i.af = load i32, ptr %i.x, align 4, !tbaa !594 ; 3 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.r, align 4, !tbaa !592
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !595
  %i.ai = icmp eq i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.s, align 8, !tbaa !595
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = load i32, ptr %i.t, align 4, !tbaa !596
  %i.ak = icmp eq i32 %i.aj, %i.af
  br i1 %i.ak, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 4, !tbaa !596
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.al = zext i32 %.0326444 to i64               ; 2 uses
  %.not373 = icmp eq i64 %indvars.iv, %i.al
  %.pre528.a = sext i32 %.0326444 to i64          ; 2 uses
  br i1 %.not373, label %._crit_edge527, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds [44 x i8], ptr %i.w, i64 %.pre528.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.am, ptr noundef nonnull align 4 dereferenceable(41) %i.x, i64 41, i1 false), !tbaa.struct !597
  %.pre505 = load i32, ptr %i.q, align 4, !tbaa !563
  %.pre505.a = load ptr, ptr %i.p, align 8, !tbaa !569
  br label %._crit_edge527

._crit_edge527:                                   ; preds = %bb.h, %bb.i
  %i.an = phi ptr [ %.pre505.a, %bb.i ], [ %i.v, %bb.h ] ; 4 uses
  %10 = phi i32 [ %.pre505, %bb.i ], [ %9, %bb.h ]
  %i.ao = getelementptr inbounds [44 x i8], ptr %i.an, i64 %.pre528.a ; 2 uses
  %i.ap = trunc i32 %.0326444 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 38
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !598
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %.val385 = load i32, ptr %i.ar, align 4, !tbaa !599 ; 3 uses
  %i.as = and i32 %.val385, 64
  %.not.i = icmp ne i32 %i.as, 0                  ; 2 uses
  %i.at = and i32 %.val385, 128
  %.not2.i = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not2.i, i64 1, i64 2
  %i.av = select i1 %.not.i, i64 0, i64 %i.au
  %i.aw = icmp sgt i32 %.0326444, 0
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge527
  %i.ax = getelementptr [44 x i8], ptr %i.an, i64 %i.al
  %i.ay = getelementptr i8, ptr %i.ax, i64 -40
  %.val384 = load i32, ptr %i.ay, align 4, !tbaa !599 ; 2 uses
  %i.az = and i32 %.val384, 64
  %.not.i388 = icmp eq i32 %i.az, 0
  %or.cond = and i1 %.not.i, %.not.i388
  %i.ba = and i32 %.val384, 192
  %i.bb = icmp eq i32 %i.ba, 128
  %i.bc = and i32 %.val385, 192
  %i.bd = icmp ne i32 %i.bc, 128
  %or.cond3 = and i1 %i.bd, %i.bb
  %i.be = select i1 %or.cond3, i1 true, i1 %or.cond
  %.2334 = select i1 %i.be, i1 true, i1 %.0332443
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge527
  %.3 = phi i1 [ %.2334, %bb.j ], [ %.0332443, %._crit_edge527 ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 16, !tbaa !880
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 16, !tbaa !880
  %i.bi = add nsw i32 %.0326444, 1
  %.pre506.a = load i32, ptr %i.m, align 8, !tbaa !582
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.k
  %i.bj = phi i32 [ %.pre506.a, %bb.k ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.bk = phi ptr [ %i.an, %bb.k ], [ %i.v, %bb.g ], [ %i.v, %bb.f ]
  %11 = phi i32 [ %10, %bb.k ], [ %9, %bb.g ], [ %9, %bb.f ]
  %i.bl = phi ptr [ %i.an, %bb.k ], [ %i.w, %bb.g ], [ %i.w, %bb.f ]
  %.4 = phi i1 [ %.3, %bb.k ], [ %.0332443, %bb.g ], [ %.0332443, %bb.f ] ; 2 uses
  %.1327 = phi i32 [ %i.bi, %bb.k ], [ %.0326444, %bb.g ], [ %.0326444, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = sext i32 %i.bj to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %bb.a, label %._crit_edge, !llvm.loop !872

bb.m:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !600 ; 4 uses
  %i.bq = icmp sgt i32 %.0326.lcssa, %i.bp
  br i1 %i.bq, label %bb.n, label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = sdiv i32 %i.bp, 2
  %i.bs = add nsw i32 %i.br, %i.bp
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.o, %bb.n
  %i.bt = phi i32 [ %i.bs, %bb.o ], [ 8, %bb.n ]
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 %.0326.lcssa) ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %i.bv, 44
  %i.bx = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bw) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !569 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bz, null
  br i1 %.not6.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !601
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bx, ptr nonnull align 4 %i.bz, i64 %i.cc, i1 false)
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !569
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cd)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !569
  store i32 %i.bu, ptr %i.bo, align 4, !tbaa !600
  br label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit:       ; preds = %bb.m, %bb.q
  store i32 %.0326.lcssa, ptr %i.m, align 8, !tbaa !601
  br label %bb.r

bb.r:                                             ; preds = %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit, %._crit_edge
  %i.ce = icmp ugt i32 %.0326.lcssa, 1
  %or.cond581 = and i1 %.0332.lcssa, %i.ce
  br i1 %or.cond581, label %bb.s, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = sext i32 %.0326.lcssa to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !583
  tail call void @qsort(ptr noundef %i.ch, i64 noundef %i.cf, i64 noundef 44, ptr noundef nonnull @_ZL24TabItemComparerBySectionPKvS0_)
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.s, %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 3308 ; 9 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !367 ; 3 uses
  %i.ck = load i32, ptr %7, align 16, !tbaa !880  ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !880 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.co = load i32, ptr %i.cn, align 16           ; 8 uses
  %i.cp = add nsw i32 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cr = icmp sgt i32 %i.ck, 0                   ; 2 uses
  %i.cs = icmp sgt i32 %i.cp, 0
  %or.cond583 = select i1 %i.cr, i1 %i.cs, i1 false
  %i.ct = select i1 %or.cond583, float %i.cj, float 0.000000e+00 ; 5 uses
  store float %i.ct, ptr %i.cq, align 4, !tbaa !881
  %i.cu = icmp sgt i32 %i.cm, 0                   ; 2 uses
  %i.cv = icmp sgt i32 %i.co, 0                   ; 2 uses
  %or.cond7 = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cw = select i1 %or.cond7, float %i.cj, float 0.000000e+00 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.cw, ptr %i.cx, align 4, !tbaa !881
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !882 ; 2 uses
  %.not360 = icmp eq i32 %i.cz, 0
  br i1 %.not360, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  store i32 0, ptr %i.cy, align 8, !tbaa !882
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !596 ; 3 uses
  %.not361 = icmp eq i32 %i.db, 0
  br i1 %.not361, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !595
  store i32 0, ptr %i.da, align 4, !tbaa !596
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1343 = phi i32 [ %i.db, %bb.v ], [ %i.cz, %bb.u ] ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !602 ; 2 uses
  %.not362 = icmp eq i32 %i.de, 0
  br i1 %.not362, label %bb.af, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.df = load i32, ptr %i.m, align 8, !tbaa !582 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !569 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.df to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, label %bb.y, !llvm.loop !17

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.x ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [44 x i8], ptr %i.di, i64 %indvars.iv.i.i ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !594
  %i.dl = icmp eq i32 %i.dk, %i.de
  br i1 %i.dl, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, label %bb.x

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i: ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !599 ; 2 uses
  %i.do = and i32 %i.dn, 32
  %.not.i391 = icmp eq i32 %i.do, 0
  br i1 %.not.i391, label %bb.z, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.z:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i
  %i.dp = trunc i64 %indvars.iv.i.i to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !603 ; 3 uses
  %i.ds = sext i16 %i.dr to i32
  %i.dt = add nsw i32 %i.ds, %i.dp                ; 2 uses
  %or.cond.i = icmp ult i32 %i.dt, %i.df
  br i1 %or.cond.i, label %bb.aa, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [44 x i8], ptr %i.di, i64 %i.du ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !599 ; 2 uses
  %i.dy = and i32 %i.dx, 32
  %.not35.i = icmp eq i32 %i.dy, 0
  br i1 %.not35.i, label %bb.ab, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dz = xor i32 %i.dx, %i.dn
  %i.ea = and i32 %i.dz, 192
  %.not36.i = icmp eq i32 %i.ea, 0
  br i1 %.not36.i, label %bb.ac, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) %i.dj, i64 44, i1 false), !tbaa.struct !597
  %i.eb = icmp sgt i16 %i.dr, 0                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 44
  %i.ed = select i1 %i.eb, ptr %i.ec, ptr %i.dv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  %i.ef = select i1 %i.eb, ptr %i.dj, ptr %i.ee
  %i.eg = tail call i16 @llvm.abs.i16(i16 %i.dr, i1 false)
  %i.eh = zext i16 %i.eg to i64
  %i.ei = mul nuw nsw i64 %i.eh, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull align 4 %i.ed, i64 %i.ei, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.dv, ptr noundef nonnull align 4 dereferenceable(41) %6, i64 41, i1 false), !tbaa.struct !597
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
  %i.em = load i32, ptr %i.dd, align 4, !tbaa !602 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !595
  %i.ep = icmp eq i32 %i.em, %i.eo
  %spec.select377 = select i1 %i.ep, i32 %i.em, i32 %.1343
  br label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread: ; preds = %bb.x, %bb.aa, %.preheader.i.i, %bb.z, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, %bb.ab, %bb.ae
end_hunk_0
