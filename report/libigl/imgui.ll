inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy:_ZL7ImClampRK6ImVec2S1_S_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.da = load float, ptr %4, align 4, !tbaa !436
  %i.db = fsub float %i.da, %i.ck
  %i.dc = insertelement <2 x float> %i.l, float %i.db, i64 0
  br label %.thread217

bb.ad:                                            ; preds = %bb.ab
  br i1 %.lcssa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load float, ptr %i.ch, align 4, !tbaa !437
  %i.de = insertelement <2 x float> %i.l, float %i.dd, i64 0
  br label %.thread217

bb.af:                                            ; preds = %bb.ad
  br i1 %.lcssa275, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.df = load float, ptr %i.ci, align 4, !tbaa !215
  %i.dg = fsub float %i.df, %i.cl
  %i.dh = insertelement <2 x float> %i.l, float %i.dg, i64 1
  br label %.thread217

bb.ah:                                            ; preds = %bb.af
  br i1 %.lcssa276, label %bb.ai, label %.thread217

bb.ai:                                            ; preds = %bb.ah
  %i.di = load float, ptr %i.cj, align 4, !tbaa !216
  %i.dj = insertelement <2 x float> %i.l, float %i.di, i64 1
  br label %.thread217

.thread217:                                       ; preds = %bb.ae, %bb.ac, %bb.ah, %bb.ai, %bb.ag
  %i.dk = phi <2 x float> [ %i.dh, %bb.ag ], [ %i.dj, %bb.ai ], [ %i.l, %bb.ah ], [ %i.de, %bb.ae ], [ %i.dc, %bb.ac ] ; 2 uses
  %i.dl = fcmp oge <2 x float> %i.dk, %i.g
  %i.dm = select <2 x i1> %i.dl, <2 x float> %i.dk, <2 x float> %i.g
  store i32 %.lcssa277, ptr %2, align 4, !tbaa !34
  br label %bb.ar

.critedge122:                                     ; preds = %bb.z, %bb.aa
  %not..not111 = xor i1 %.not111, true            ; 2 uses
  %indvars.iv.next246 = zext i1 %not..not111 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.dir_prefered_order.86, i64 %indvars.iv.next246
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !34 ; 2 uses
  %i.dp = icmp eq i32 %i.do, %i.cg
  br i1 %i.dp, label %.critedge122.1, label %bb.aj

bb.aj:                                            ; preds = %.critedge122
  %.val266.1 = load float, ptr %i.a, align 4
  %.val267.1 = load float, ptr %i.ch, align 4
  %.val268.1 = load float, ptr %3, align 4
  %i.dq = select i1 %.not111, float %.val267.1, float %.val268.1
  %i.dr = fsub float %.val266.1, %i.dq
  %i.ds = fcmp olt float %i.dr, %i.ck
  %or.cond.1 = and i1 %i.ds, %.not111
  br i1 %or.cond.1, label %.critedge122.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val270.1 = load float, ptr %i.b, align 4
  %.val271.1 = load float, ptr %i.cj, align 4
  %.val272.1 = load float, ptr %i.d, align 4
  %i.dt = select i1 %.not111, float %.val272.1, float %.val271.1
  %i.du = fsub float %.val270.1, %i.dt
  %i.dv = fcmp uge float %i.du, %i.cl
  %or.cond120.1.not = or i1 %i.dv, %.not111
  br i1 %or.cond120.1.not, label %bb.ab, label %.critedge122.1

.critedge122.1:                                   ; preds = %.critedge122, %bb.aj, %bb.ak
  %indvars.iv.next246.1 = select i1 %.not111, i64 1, i64 2
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.dir_prefered_order.86, i64 %indvars.iv.next246.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !34 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, %i.cg
  br i1 %i.dy, label %.critedge122.2, label %bb.al

bb.al:                                            ; preds = %.critedge122.1
  %not..not111282 = xor i1 %.not111, true
  %.val269.2 = load float, ptr %i.ci, align 4
  %.val270.2 = load float, ptr %i.b, align 4
  %i.dz = select i1 %.not111, float %.val270.2, float %.val269.2
  %.val271.2 = load float, ptr %i.cj, align 4
  %.val272.2 = load float, ptr %i.d, align 4
  %i.ea = select i1 %.not111, float %.val271.2, float %.val272.2
  %i.eb = fsub float %i.dz, %i.ea
  %i.ec = fcmp olt float %i.eb, %i.cl
  br i1 %i.ec, label %.critedge122.2, label %bb.ab

.critedge122.2:                                   ; preds = %.critedge122.1, %bb.al
  %indvars.iv.next246.2 = select i1 %.not111, i64 2, i64 3
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.dir_prefered_order.86, i64 %indvars.iv.next246.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !34 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, %i.cg
  br i1 %i.ef, label %.critedge122.3, label %bb.am

bb.am:                                            ; preds = %.critedge122.2
  %.val265.3 = load float, ptr %4, align 4
  %.val266.3 = load float, ptr %i.a, align 4
  %i.eg = select i1 %.not111, float %.val266.3, float %.val265.3
  %.val268.3 = load float, ptr %3, align 4
  %i.eh = fsub float %i.eg, %.val268.3
  %i.ei = fcmp uge float %i.eh, %i.ck
  %or.cond.3.not = or i1 %i.ei, %.not111
  br i1 %or.cond.3.not, label %bb.an, label %.critedge122.3

bb.an:                                            ; preds = %bb.am
  %not..not111284 = xor i1 %.not111, true
  %.val269.3 = load float, ptr %i.ci, align 4
  %.val270.3 = load float, ptr %i.b, align 4
  %i.ej = select i1 %.not111, float %.val269.3, float %.val270.3
  %.val272.3 = load float, ptr %i.d, align 4
  %i.ek = fsub float %i.ej, %.val272.3
  %i.el = fcmp olt float %i.ek, %i.cl
  %or.cond120.3 = and i1 %i.el, %.not111
  br i1 %or.cond120.3, label %.critedge122.3, label %bb.ab

.critedge122.3:                                   ; preds = %bb.an, %bb.am, %.critedge122.2
  %.off = add i32 %i.cg, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.ao, label %.critedge124

bb.ao:                                            ; preds = %.critedge122.3
  %.val265.4 = load float, ptr %4, align 4
  %.val268.4 = load float, ptr %3, align 4
  %i.em = fsub float %.val265.4, %.val268.4
  %i.en = fcmp olt float %i.em, %i.ck
  br i1 %i.en, label %.critedge124, label %bb.ab

.critedge124:                                     ; preds = %.critedge122.3, %bb.ao, %.critedge119
  store i32 -1, ptr %2, align 4, !tbaa !34
  br i1 %i.cf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge124
  %i.eo = fadd <2 x float> %i.c, splat (float 2.000000e+00)
  br label %bb.ar

bb.aq:                                            ; preds = %.critedge124
  %i.ep = load <2 x float>, ptr %0, align 4
  %i.eq = fadd <2 x float> %i.f, %i.ep            ; 2 uses
  %i.er = fcmp olt <2 x float> %i.eq, %i.e
  %i.es = select <2 x i1> %i.er, <2 x float> %i.eq, <2 x float> %i.e
  %i.et = fsub <2 x float> %i.es, %i.f            ; 2 uses
  %i.eu = fcmp oge <2 x float> %i.et, %i.g
  %i.ev = select <2 x i1> %i.eu, <2 x float> %i.et, <2 x float> %i.g
  br label %bb.ar

bb.ar:                                            ; preds = %.thread217, %.critedge, %bb.aq, %bb.ap
  %.sroa.0165.5 = phi <2 x float> [ %i.eo, %bb.ap ], [ %i.ev, %bb.aq ], [ %i.dm, %.thread217 ], [ %.sroa.0165.1.lcssa, %.critedge ]
  ret <2 x float> %.sroa.0165.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #38 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !433  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5648
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !9 ; 3 uses
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !9
  %i.j = fadd <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = load <2 x float>, ptr %i.g, align 8, !tbaa !9 ; 2 uses
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  store i32 %0, ptr %i.b, align 8, !tbaa !319
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  store i32 %1, ptr %i.c, align 8, !tbaa !593
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7700
  store i32 %2, ptr %i.d, align 4, !tbaa !592
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !425  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 872
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 %0, ptr %i.i, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !280
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %0, ptr noundef %1) local_unnamed_addr #44 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.c = load i32, ptr %i.b, align 4, !tbaa !863  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7688 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7765
  store i8 0, ptr %i.f, align 1, !tbaa !589
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.d, align 8, !tbaa !425
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  store i32 %0, ptr %i.g, align 8, !tbaa !319
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  store i32 %i.c, ptr %i.h, align 8, !tbaa !593
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.j = load i32, ptr %i.i, align 4, !tbaa !922
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7700
  store i32 %i.j, ptr %i.k, align 4, !tbaa !592
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.m = zext i32 %i.c to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 %0, ptr %i.n, align 4, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 7368
  %i.p = load i32, ptr %i.o, align 8, !tbaa !423
  %i.q = icmp eq i32 %i.p, %0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7396
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7404
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !9 ; 2 uses
  %i.v = load <2 x float>, ptr %i.r, align 4, !tbaa !9
  %i.w = fsub <2 x float> %i.v, %i.u
  %i.x = load <2 x float>, ptr %i.t, align 4, !tbaa !9
  %i.y = fsub <2 x float> %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.m ; 2 uses
  store <2 x float> %i.w, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x float> %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 7312
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !414
  %i.ad = icmp eq i32 %i.ac, 4
  %. = select i1 %i.ad, i64 7763, i64 7762
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.
  store i8 1, ptr %2, align 1, !tbaa !213
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z25ImGetDirQuadrantFromDeltaff(float noundef %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0)
  %i.b = tail call float @llvm.fabs.f32(float %1)
  %i.c = fcmp ogt float %i.a, %i.b
  %i.d = fcmp ogt float %0, 0.000000e+00
  %i.e = zext i1 %i.d to i32
  %i.f = fcmp ogt float %1, 0.000000e+00
  %i.g = select i1 %i.f, i32 3, i32 2
  %.0 = select i1 %i.c, i32 %i.e, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  %i.c = load i8, ptr %i.b, align 1, !tbaa !214, !range !210, !noundef !211
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.f = load i32, ptr %i.e, align 8, !tbaa !971
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7944
  %i.i = load i32, ptr %i.h, align 8, !tbaa !972
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0) unnamed_addr #32 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1017
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7368
  %i.e = load i32, ptr %i.d, align 8, !tbaa !423
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !1018
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 300
  %i.h = load i32, ptr %i.g, align 4, !tbaa !922
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !1019
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7372
  %i.k = load i32, ptr %i.j, align 4, !tbaa !422
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.k, ptr %i.l, align 8, !tbaa !737
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7396
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 7404
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.q = load <2 x float>, ptr %i.m, align 4, !tbaa !9
  %i.r = fsub <2 x float> %i.q, %i.p
  %i.s = load <2 x float>, ptr %i.o, align 4, !tbaa !9
  %i.t = fsub <2 x float> %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.r, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui21NavMoveRequestForwardEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  store i8 0, ptr %i.b, align 1, !tbaa !214
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7788
  store i8 0, ptr %i.c, align 4, !tbaa !473
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7765
  %i.e = load i8, ptr %i.d, align 1, !tbaa !589, !range !210, !noundef !211
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7764
  store i8 %i.e, ptr %i.f, align 4, !tbaa !590
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7790
  store i8 1, ptr %i.g, align 2, !tbaa !474
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  store i32 %0, ptr %i.h, align 4, !tbaa !724
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7812
  store i32 %1, ptr %i.i, align 4, !tbaa !218
  %i.j = or i32 %2, 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7792
  store i32 %i.j, ptr %i.k, align 8, !tbaa !725
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 7796
  store i32 %3, ptr %i.l, align 4, !tbaa !726
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 12 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = sext i32 %0 to i64                       ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 836
  %i.e = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5284
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.c
  %i.i = load float, ptr %i.h, align 4, !tbaa !9  ; 20 uses
  %i.j = fcmp olt float %i.i, 0.000000e+00        ; 2 uses
  %i.k = icmp eq i32 %1, 2
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5364
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.c
  %i.n = load float, ptr %i.m, align 4, !tbaa !9
  %i.o = fcmp oge float %i.n, 0.000000e+00
  %i.p = select i1 %i.o, float 1.000000e+00, float 0.000000e+00
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %1, label %bb.w [
    i32 1, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.m
    i32 5, label %bb.r
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp oeq float %i.i, 0.000000e+00
  %i.r = select i1 %i.q, float 1.000000e+00, float 0.000000e+00
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !641
  %i.u = fsub float %i.i, %i.t                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.w = load float, ptr %i.v, align 4, !tbaa !702
  %i.x = fmul float %i.w, 7.200000e-01            ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.z = load float, ptr %i.y, align 8, !tbaa !703
  %i.aa = fmul float %i.z, 8.000000e-01           ; 2 uses
  %i.ab = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.ab, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = fcmp ult float %i.u, %i.i
  br i1 %i.ac, label %bb.j, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = fcmp ugt float %i.aa, 0.000000e+00
  %i.ae = fcmp olt float %i.u, %i.x               ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = fcmp oge float %i.i, %i.x
  %i.ag = and i1 %i.ae, %i.af
  %i.ah = zext i1 %i.ag to i32
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.u, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.x, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fsub <2 x float> %i.aj, %i.al
  %i.an = fcmp olt float %i.i, %i.x
  %i.ao = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.am, %i.ap
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>
  %i.as = insertelement <2 x i1> poison, i1 %i.an, i64 0
  %i.at = insertelement <2 x i1> %i.as, i1 %i.ae, i64 1
  %i.au = select <2 x i1> %i.at, <2 x i32> splat (i32 -1), <2 x i32> %i.ar ; 2 uses
  %shift = shufflevector <2 x i32> %i.au, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.au, %shift
  %i.av = extractelement <2 x i32> %foldExtExtBinop, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit:   ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.av, %bb.l ], [ 1, %bb.h ], [ %i.ah, %bb.k ], [ 0, %bb.i ]
  %i.aw = sitofp i32 %.0.i to float
end_hunk_0
begin_hunk_1_@_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode:bb.a
  %i.ch = fmul float %i.cg, 7.200000e-01          ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !703
  %i.ck = fmul float %i.cj, 3.000000e-01          ; 2 uses
  %i.cl = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.cl, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = fcmp ult float %i.ce, %i.i
  br i1 %i.cm, label %bb.t, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36

bb.t:                                             ; preds = %bb.s
  %i.cn = fcmp ugt float %i.ck, 0.000000e+00
  %i.co = fcmp olt float %i.ce, %i.ch             ; 2 uses
  br i1 %i.cn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = fcmp oge float %i.i, %i.ch
  %i.cq = and i1 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i32
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36

bb.v:                                             ; preds = %bb.t
  %i.cs = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.ce, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fsub <2 x float> %i.ct, %i.cv
  %i.cx = fcmp olt float %i.i, %i.ch
  %i.cy = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x float> %i.cw, %i.cz
  %i.db = fptosi <2 x float> %i.da to <2 x i32>
  %i.dc = insertelement <2 x i1> poison, i1 %i.cx, i64 0
  %i.dd = insertelement <2 x i1> %i.dc, i1 %i.co, i64 1
  %i.de = select <2 x i1> %i.dd, <2 x i32> splat (i32 -1), <2 x i32> %i.db ; 2 uses
  %shift48 = shufflevector <2 x i32> %i.de, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = sub nsw <2 x i32> %i.de, %shift48
  %i.df = extractelement <2 x i32> %foldExtExtBinop49, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36: ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %.0.i35 = phi i32 [ %i.df, %bb.v ], [ 1, %bb.r ], [ %i.cr, %bb.u ], [ 0, %bb.s ]
  %i.dg = sitofp i32 %.0.i35 to float
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.g, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36, %bb.e, %bb.f, %bb.b
  %.1 = phi float [ %i.f, %bb.b ], [ %i.p, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.r, %bb.g ], [ %i.aw, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit ], [ %i.cb, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34 ], [ %i.dg, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36 ], [ 0.000000e+00, %bb.f ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #38 {
bb.a:
  %i.a = and i32 %0, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 17, i32 noundef %1)
  %i.c = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 16, i32 noundef %1)
  %i.d = fsub float %i.b, %i.c
  %i.e = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 19, i32 noundef %1)
  %i.f = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 18, i32 noundef %1)
  %i.g = fsub float %i.e, %i.f
  %i.h = fadd float %i.d, 0.000000e+00
  %.sroa.030.0.vec.insert34 = insertelement <2 x float> poison, float %i.h, i64 0
  %i.i = fadd float %i.g, 0.000000e+00
  %.sroa.030.4.vec.insert53 = insertelement <2 x float> %.sroa.030.0.vec.insert34, float %i.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.030.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.030.4.vec.insert53, %bb.b ] ; 2 uses
  %i.j = and i32 %0, 2
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 5, i32 noundef %1)
  %i.l = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 4, i32 noundef %1)
  %i.m = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 7, i32 noundef %1)
  %i.n = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 6, i32 noundef %1)
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.m, i64 1
  %i.q = insertelement <2 x float> poison, float %i.l, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.n, i64 1
  %i.s = fsub <2 x float> %i.p, %i.r
  %i.t = fadd <2 x float> %.sroa.030.0, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.030.1 = phi <2 x float> [ %.sroa.030.0, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.u = and i32 %0, 4
  %.not20 = icmp eq i32 %i.u, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 9, i32 noundef %1)
  %i.w = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 8, i32 noundef %1)
  %i.x = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 11, i32 noundef %1)
  %i.y = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 10, i32 noundef %1)
  %i.z = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.x, i64 1
  %i.ab = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = fsub <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %.sroa.030.1, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.030.2 = phi <2 x float> [ %.sroa.030.1, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = fcmp une float %2, 0.000000e+00
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 892
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = insertelement <2 x float> poison, float %2, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.al, %.sroa.030.2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.030.3 = phi <2 x float> [ %i.am, %bb.i ], [ %.sroa.030.2, %bb.h ], [ %.sroa.030.2, %bb.g ] ; 3 uses
  %i.an = fcmp une float %3, 0.000000e+00
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 896
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = insertelement <2 x float> poison, float %3, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %.sroa.030.3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.030.4 = phi <2 x float> [ %i.au, %bb.l ], [ %.sroa.030.3, %bb.k ], [ %.sroa.030.3, %bb.j ]
  ret <2 x float> %.sroa.030.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui25NavInitRequestApplyResultEv() local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !425  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7768
  %i.e = load i32, ptr %i.d, align 8, !tbaa !472  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.g = load i32, ptr %i.f, align 8, !tbaa !593
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  store i32 %i.e, ptr %i.i, align 8, !tbaa !319
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7700
  store i32 0, ptr %i.j, align 4, !tbaa !592
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 872
  %i.l = zext i32 %i.g to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  store i32 %i.e, ptr %i.m, align 4, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !280
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7760
  store i8 1, ptr %i.p, align 8, !tbaa !470
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7766
  %i.r = load i8, ptr %i.q, align 2, !tbaa !695, !range !210, !noundef !211
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  store i8 0, ptr %i.t, align 2, !tbaa !320
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7761
  store i8 1, ptr %i.u, align 1, !tbaa !471
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 7763
  store i8 1, ptr %i.v, align 1, !tbaa !421
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #49 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.c = load i32, ptr %i.b, align 8, !tbaa !971
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7840
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7936
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7944
  %i.g = load i32, ptr %i.f, align 8, !tbaa !972
  %.not78 = icmp eq i32 %i.g, 0
  br i1 %.not78, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7792 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !725  ; 3 uses
  %i.j = and i32 %i.i, 512
  %.not89 = icmp eq i32 %i.j, 0
  br i1 %.not89, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = or i32 %i.i, 2048                        ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !725
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %i.k, %bb.e ], [ %i.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.n = load i32, ptr %i.m, align 8, !tbaa !319
  %.not90 = icmp ne i32 %i.n, 0
  %i.o = and i32 %i.l, 2048
  %i.p = icmp eq i32 %i.o, 0
  %or.cond = and i1 %.not90, %i.p
  br i1 %or.cond, label %.sink.split, label %bb.ah

bb.g:                                             ; preds = %bb.b, %bb.c
  %.ph = phi ptr [ %i.e, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7792 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !725  ; 2 uses
  %i.s = and i32 %i.r, 32
  %.not79 = icmp eq i32 %i.s, 0
  br i1 %.not79, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7896
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1090 ; 2 uses
  %.not80 = icmp eq i32 %i.u, 0
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 7888
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.x = load i32, ptr %i.w, align 8, !tbaa !319
  %.not81 = icmp eq i32 %i.u, %i.x
  %spec.select = select i1 %.not81, ptr %.ph, ptr %i.v
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi ptr [ %.ph, %bb.g ], [ %spec.select, %bb.i ], [ %.ph, %bb.h ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 7936 ; 4 uses
  %.not82 = icmp eq ptr %.0, %i.y
  br i1 %.not82, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7944
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !972
  %.not83 = icmp eq i32 %i.aa, 0
  br i1 %.not83, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !1091
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 824
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !425
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7972
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1092 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !1093 ; 2 uses
  %i.al = fcmp olt float %i.ai, %i.ak
  br i1 %i.al, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = fcmp oeq float %i.ai, %i.ak
  br i1 %i.am, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 7976
  %i.ao = load float, ptr %i.an, align 8, !tbaa !1094
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !1095
  %i.ar = fcmp olt float %i.ao, %i.aq
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.l, %bb.k, %bb.j
  %.1 = phi ptr [ %i.y, %bb.p ], [ %.0, %bb.o ], [ %.0, %bb.n ], [ %.0, %bb.l ], [ %.0, %bb.k ], [ %i.y, %bb.j ] ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 7752 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !593
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.av = and i32 %i.r, 64
  %.not84 = icmp eq i32 %i.av, 0
  br i1 %.not84, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !724
  %i.ay = icmp eq i32 %i.ax, 2
  %.pre = load ptr, ptr %.1, align 8, !tbaa !1017 ; 5 uses
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.ba = load float, ptr %i.az, align 4, !tbaa !734
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bb = phi float [ %i.ba, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !730
  %i.be = fsub float %i.bd, %i.bb
  %.sroa.0101.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.be, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  store float %i.bb, ptr %i.bf, align 4, !tbaa !731
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !732
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !733
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #39
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bj = load ptr, ptr %.1, align 8, !tbaa !1017
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.bm = load <2 x float>, ptr %i.bk, align 4, !tbaa !9 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.bo = fadd <2 x float> %i.bn, %i.bm
  %i.bp = load <2 x float>, ptr %i.bl, align 8, !tbaa !9
  %i.bq = fadd <2 x float> %i.bm, %i.bp
  store <2 x float> %i.bo, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bq, ptr %i.br, align 8
  %i.bs = load ptr, ptr %.1, align 8, !tbaa !1017
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 7796
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !726
  %i.bv = call <2 x float> @_ZN5ImGui14ScrollToRectExEP11ImGuiWindowRK6ImRecti(ptr noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #39
  %.pre106.pre = load ptr, ptr @GImGui, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre106 = phi ptr [ %.pre106.pre, %bb.v ], [ %i.a, %bb.u ]
  %.sroa.0101.0 = phi <2 x float> [ %i.bv, %bb.v ], [ %.sroa.0101.4.vec.insert, %bb.u ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.bx = shufflevector <2 x float> %.sroa.0101.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.by = load <4 x float>, ptr %i.bw, align 4, !tbaa !9
  %i.bz = fsub <4 x float> %i.by, %i.bx
  store <4 x float> %i.bz, ptr %i.bw, align 4, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %i.ca = phi ptr [ %.pre106, %bb.w ], [ %i.a, %bb.q ] ; 16 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 7260 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !331
  %i.cd = icmp ne i32 %i.cc, 0                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 7272
  %i.cf = zext i1 %i.cd to i8
  store i8 %i.cf, ptr %i.ce, align 8, !tbaa !400
  br i1 %i.cd, label %bb.y, label %_ZN5ImGui13ClearActiveIDEv.exit

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 7268
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !401
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 7275
  store i8 0, ptr %i.ch, align 1, !tbaa !402
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 7276
  store i8 0, ptr %i.ci, align 4, !tbaa !403
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 7316
  store i32 -1, ptr %i.cj, align 4, !tbaa !404
  store i32 0, ptr %i.cb, align 4, !tbaa !331
  br label %_ZN5ImGui13ClearActiveIDEv.exit

_ZN5ImGui13ClearActiveIDEv.exit:                  ; preds = %bb.x, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 7273
  store i8 0, ptr %i.ck, align 1, !tbaa !405
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 7274
  store i8 0, ptr %i.cl, align 2, !tbaa !406
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 7304
  store ptr null, ptr %i.cm, align 8, !tbaa !407
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 7277
  store i8 0, ptr %i.cn, align 1, !tbaa !408
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 7278
  store i8 0, ptr %i.co, align 2, !tbaa !415
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  %i.cq = load ptr, ptr %.1, align 8, !tbaa !1017
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !425
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !319
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1018 ; 4 uses
  %.not85 = icmp eq i32 %i.ct, %i.cv
  br i1 %.not85, label %_ZN5ImGui13ClearActiveIDEv.exit._crit_edge, label %bb.z

_ZN5ImGui13ClearActiveIDEv.exit._crit_edge:       ; preds = %_ZN5ImGui13ClearActiveIDEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %.pre107 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1019
  br label %bb.aa

bb.z:                                             ; preds = %_ZN5ImGui13ClearActiveIDEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 7728
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !217
  %i.cx = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !1019 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 7732
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !1096
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 7800
  %i.db = load i32, ptr %i.da, align 8, !tbaa !736
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 7736
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !1097
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5ImGui13ClearActiveIDEv.exit._crit_edge, %bb.z
  %i.dd = phi i32 [ %.pre107, %_ZN5ImGui13ClearActiveIDEv.exit._crit_edge ], [ %i.cy, %bb.z ]
  %i.de = load i32, ptr %i.as, align 8, !tbaa !593 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 7696
  store i32 %i.cv, ptr %i.dg, align 8, !tbaa !319
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 7752
  store i32 %i.de, ptr %i.dh, align 8, !tbaa !593
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 7700
  store i32 %i.dd, ptr %i.di, align 4, !tbaa !592
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 7688
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !425 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 872
  %i.dm = zext i32 %i.de to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  store i32 %i.cv, ptr %i.dn, align 4, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 880
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !280
  %i.dq = load i32, ptr %i.q, align 8, !tbaa !725 ; 4 uses
  %i.dr = and i32 %i.dq, 512
  %.not86 = icmp eq i32 %i.dr, 0
  br i1 %.not86, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !737
  %i.du = and i32 %i.dt, 256
  %.not87 = icmp eq i32 %i.du, 0
  br i1 %.not87, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load i32, ptr %i.cu, align 8, !tbaa !1018
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 7740
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !722
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 7744
  store i32 5, ptr %i.dx, align 8, !tbaa !723
  %i.dy = or i32 %i.dq, 2048                      ; 2 uses
  store i32 %i.dy, ptr %i.q, align 8, !tbaa !725
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dz = phi i32 [ %i.dy, %bb.ac ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.aa ] ; 2 uses
  %i.ea = and i32 %i.dz, 1024
  %.not88 = icmp eq i32 %i.ea, 0
  br i1 %.not88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i32, ptr %i.cu, align 8, !tbaa !1018
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 7740
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !722
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 7744
  store i32 0, ptr %i.ed, align 8, !tbaa !723
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ee = and i32 %i.dz, 2048
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  store i8 0, ptr %i.eg, align 2, !tbaa !320
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.ag
  %.sink117 = phi i64 [ 7761, %bb.ag ], [ 7762, %bb.f ]
  %.sink = phi i8 [ 1, %bb.ag ], [ 0, %bb.f ]
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink117
  store i8 %.sink, ptr %1, align 1, !tbaa !213
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 7763
  store i8 1, ptr %i.eh, align 1, !tbaa !421
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 8 uses
  %i.d = and i32 %0, 16
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7368 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !423  ; 3 uses
  %.not74 = icmp eq i32 %i.f, 0
  br i1 %.not74, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.h = load i32, ptr %i.g, align 4, !tbaa !331
  %.not77 = icmp eq i32 %i.h, %i.f
  br i1 %.not77, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  %i.j = load i32, ptr %i.i, align 4, !tbaa !404  ; 2 uses
  %.not78 = icmp eq i32 %i.j, -1
  %spec.select = select i1 %.not78, i32 0, i32 %i.j ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.l = sext i32 %spec.select to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !213, !range !210, !noundef !211
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.q = load i8, ptr %i.p, align 1, !tbaa !881, !range !210, !noundef !211
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.z, label %bb.p

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.t = load i8, ptr %i.s, align 8, !tbaa !213, !range !210, !noundef !211
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.w = load i8, ptr %i.v, align 1, !tbaa !881, !range !210, !noundef !211
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 7376
  %i.z = load i32, ptr %i.y, align 8, !tbaa !420
  %i.aa = and i32 %i.z, 1
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !331
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 7304
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !407
  %.not75 = icmp ne ptr %i.ag, %i.c
  %i.ah = and i32 %0, 8
  %.not76 = icmp eq i32 %i.ah, 0
  %or.cond = or i1 %.not76, %.not75
  br i1 %or.cond, label %bb.z, label %bb.l

bb.k:                                             ; preds = %bb.h
  %.old = and i32 %0, 8
  %.not76.old = icmp eq i32 %.old, 0
  br i1 %.not76.old, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 7380 ; 2 uses
  %i.aj = tail call noundef i32 @_ZN11ImGuiWindow18GetIDFromRectangleERK6ImRect(ptr noundef nonnull align 8 dereferenceable(921) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.ai) ; 5 uses
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !423
  %i.ak = tail call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.al = zext i1 %i.ak to i8
  br i1 %i.ak, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.an = load i8, ptr %i.am, align 8, !tbaa !213, !range !210, !noundef !211
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.aj, ptr noundef nonnull %i.c)
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !331
  %i.ar = icmp eq i32 %i.aq, %i.aj
  br i1 %i.ar, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ %i.al, %bb.o ]
  %.ph = phi i32 [ %i.f, %bb.e ], [ %i.aj, %bb.o ]
  %.1.ph = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.o ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 7273
  store i8 %.sink, ptr %i.as, align 1, !tbaa !405
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 14 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 304
  %i.av = sext i32 %.1.ph to i64                  ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !213, !range !210, !noundef !211
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.q, label %.thread91

.thread91:                                        ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 7280
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 7789
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.ba, align 1, !tbaa !214
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 7788
  store i8 0, ptr %i.bb, align 4, !tbaa !473
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 7765
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !589, !range !210, !noundef !211
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 7764
  store i8 %i.bd, ptr %i.be, align 4, !tbaa !590
  br label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !327
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !749 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 1168
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.av
  %i.br = load float, ptr %i.bq, align 4, !tbaa !9
  %i.bs = fmul float %i.bo, %i.bo
  %i.bt = fcmp ult float %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 7280
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 7789
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.bv, align 1, !tbaa !214
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 7788
  store i8 0, ptr %i.bw, align 4, !tbaa !473
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 7765
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !589, !range !210, !noundef !211
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 7764
  store i8 %i.by, ptr %i.bz, align 4, !tbaa !590
  br i1 %i.bt, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.a, %bb.q
  %i.ca = phi ptr [ %i.at, %bb.q ], [ %i.a, %bb.a ] ; 16 uses
  %.290 = phi i32 [ %.1.ph, %bb.q ], [ 0, %bb.a ]
  %.06889 = phi i32 [ %i.bm, %bb.q ], [ 0, %bb.a ]
  %.17088 = phi i32 [ %.ph, %bb.q ], [ 1269019604, %bb.a ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8060 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !630, !range !210, !noundef !211
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8060
  store i8 0, ptr %i.ce, align 4, !tbaa !630
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8080
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.cg, i8 0, i64 33, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(59) %i.cf, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.ch, align 4, !tbaa !453
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8138
  store i8 0, ptr %i.ci, align 2, !tbaa !454
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8137
  store i8 0, ptr %i.cj, align 1, !tbaa !455
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8164
  store i32 0, ptr %i.ck, align 4, !tbaa !975
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8176
  store i32 0, ptr %i.cl, align 8, !tbaa !682
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8172
  store i32 0, ptr %i.cm, align 4, !tbaa !681
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8168
  store float f0x7F7FFFFF, ptr %i.cn, align 8, !tbaa !683
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 8180
  store i32 -1, ptr %i.co, align 4, !tbaa !481
end_hunk_1
