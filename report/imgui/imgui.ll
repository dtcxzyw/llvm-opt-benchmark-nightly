inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  %i.aes = call noundef i32 @llvm.smax.i32(i32 %i.aer, i32 %i.aeo) ; 2 uses
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = shl nsw i64 %i.aet, 4
  %i.aev = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.aew = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.aex = call noundef ptr %i.aev(i64 noundef %i.aeu, ptr noundef %i.aew), !inline_history !1020 ; 3 uses
  %i.aey = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNK8ImVectorI19ImGuiKeyRoutingDataE14_grow_capacityEi.exit.i.i.i
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 10596 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !194 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aey, i64 10608 ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aey, i64 10604 ; 2 uses
  %i.afe = load i16, ptr %i.afd, align 4, !tbaa !195 ; 2 uses
  %i.aff = sext i16 %i.afe to i64                 ; 2 uses
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.afc, i64 %i.aff ; 2 uses
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !196
  %.not.i.i.i.i.i.i = icmp eq i32 %i.afh, %i.afb
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.dz

._crit_edge.i.i.i.i:                              ; preds = %bb.dy
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %.pre.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !198
  %i.afi = add i16 %.pre.i.i.i.i, 1
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.afj = sext i16 %i.afe to i32
  %i.afk = add nsw i32 %i.afj, 1
  %i.afl = srem i32 %i.afk, 6                     ; 2 uses
  %i.afm = trunc nsw i32 %i.afl to i16
  store i16 %i.afm, ptr %i.afd, align 4, !tbaa !195
  %i.afn = sext i32 %i.afl to i64                 ; 2 uses
  %i.afo = getelementptr inbounds [8 x i8], ptr %i.afc, i64 %i.afn ; 3 uses
  store i32 %i.afb, ptr %i.afo, align 4, !tbaa !196
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 6
  store i16 0, ptr %i.afp, align 2, !tbaa !199
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  store i16 0, ptr %i.afq, align 4, !tbaa !198
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge.i.i.i.i
  %i.afr = phi i16 [ 1, %bb.dz ], [ %i.afi, %._crit_edge.i.i.i.i ]
  %i.afs = phi i64 [ %i.afn, %bb.dz ], [ %i.aff, %._crit_edge.i.i.i.i ]
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.afc, i64 %i.afs
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 4
  store i16 %i.afr, ptr %i.afu, align 4, !tbaa !198
  %i.afv = load i32, ptr %i.aez, align 4, !tbaa !200
  %i.afw = add nsw i32 %i.afv, 1
  store i32 %i.afw, ptr %i.aez, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i.i

_ZN5ImGui8MemAllocEm.exit.i.i.i.i:                ; preds = %bb.ea, %_ZNK8ImVectorI19ImGuiKeyRoutingDataE14_grow_capacityEi.exit.i.i.i
  %i.afx = load ptr, ptr %.phi.trans.insert.i.i.i326, align 8, !tbaa !704 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.afx, null
  br i1 %.not6.i.i.i.i, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i.i
  %i.afy = load i32, ptr %i.ade, align 8, !tbaa !748
  %i.afz = sext i32 %i.afy to i64
  %i.aga = shl nsw i64 %i.afz, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aex, ptr nonnull align 4 %i.afx, i64 %i.aga, i1 false)
  %i.agb = load ptr, ptr %.phi.trans.insert.i.i.i326, align 8, !tbaa !704 ; 2 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.agb, null
  br i1 %.not.i7.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.agc = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.agc, null
  br i1 %.not7.i.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !194 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 10608 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agc, i64 10604 ; 2 uses
  %i.agh = load i16, ptr %i.agg, align 4, !tbaa !195 ; 2 uses
  %i.agi = sext i16 %i.agh to i64                 ; 2 uses
  %i.agj = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.agi ; 2 uses
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !196
  %.not.i.i8.i.i.i.i = icmp eq i32 %i.agk, %i.age
  br i1 %.not.i.i8.i.i.i.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i.i, label %bb.ee

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i.i: ; preds = %bb.ed
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agj, i64 6
  %.pre.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i, align 2, !tbaa !199
  %i.agl = add i16 %.pre.i.i.i.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.agm = sext i16 %i.agh to i32
  %i.agn = add nsw i32 %i.agm, 1
  %i.ago = srem i32 %i.agn, 6                     ; 2 uses
  %i.agp = trunc nsw i32 %i.ago to i16
  store i16 %i.agp, ptr %i.agg, align 4, !tbaa !195
  %i.agq = sext i32 %i.ago to i64                 ; 2 uses
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.agq ; 3 uses
  store i32 %i.age, ptr %i.agr, align 4, !tbaa !196
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 6
  store i16 0, ptr %i.ags, align 2, !tbaa !199
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  store i16 0, ptr %i.agt, align 4, !tbaa !198
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i.i: ; preds = %bb.ee, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i.i
  %i.agu = phi i16 [ 1, %bb.ee ], [ %i.agl, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i.i ]
  %i.agv = phi i64 [ %i.agq, %bb.ee ], [ %i.agi, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i.i ]
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 6
  store i16 %i.agu, ptr %i.agx, align 2, !tbaa !199
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agc, i64 10600 ; 2 uses
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !201
  %i.aha = add nsw i32 %i.agz, 1
  store i32 %i.aha, ptr %i.agy, align 4, !tbaa !201
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i.i:                ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i.i, %bb.ec, %bb.eb
  %i.ahb = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  %i.ahc = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  call void %i.ahb(ptr noundef %i.agb, ptr noundef %i.ahc), !inline_history !1021
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i.i
  store ptr %i.aex, ptr %.phi.trans.insert.i.i.i326, align 8, !tbaa !704
  store i32 %i.aes, ptr %i.adg, align 4, !tbaa !747
  %.pre3.i.i.i = load i32, ptr %i.ade, align 8, !tbaa !748
  br label %_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_.exit.i.i

_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_.exit.i.i: ; preds = %bb.ef, %._ZN8ImVectorI19ImGuiKeyRoutingDataE7reserveEi.exit_crit_edge.i.i.i
  %i.ahd = phi i32 [ %i.aeb, %._ZN8ImVectorI19ImGuiKeyRoutingDataE7reserveEi.exit_crit_edge.i.i.i ], [ %.pre3.i.i.i, %bb.ef ]
  %i.ahe = phi ptr [ %.pre.i.i.i327, %._ZN8ImVectorI19ImGuiKeyRoutingDataE7reserveEi.exit_crit_edge.i.i.i ], [ %i.aex, %bb.ef ]
  %i.ahf = sext i32 %i.ahd to i64
  %i.ahg = getelementptr inbounds [16 x i8], ptr %i.ahe, i64 %i.ahf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ahg, ptr noundef nonnull align 4 dereferenceable(16) %i.aee, i64 16, i1 false)
  %i.ahh = load i32, ptr %i.ade, align 8, !tbaa !748
  %i.ahi = add nsw i32 %i.ahh, 1                  ; 4 uses
  store i32 %i.ahi, ptr %i.ade, align 8, !tbaa !748
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.aee, i64 2
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !1022
  %i.ahl = zext i16 %i.ahk to i32
  %i.ahm = load i32, ptr %i.adh, align 8, !tbaa !1023
  %i.ahn = icmp eq i32 %i.ahm, %i.ahl
  br i1 %i.ahn, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i, label %bb.eh

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i: ; preds = %_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_.exit.i.i
  %i.aho = load i32, ptr %i.adm, align 4, !tbaa !622
  %i.ahp = icmp eq i32 %i.aho, -1
  br i1 %i.ahp, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i
  %i.ahq = load i32, ptr %i.aek, align 4, !tbaa !1019
  store i32 %i.ahq, ptr %i.adm, align 4, !tbaa !622
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i, %_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_.exit.i.i, %bb.du
  %i.ahr = phi i32 [ %i.ahi, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i ], [ %i.ahi, %bb.eg ], [ %i.ahi, %_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_.exit.i.i ], [ %i.aeb, %bb.du ]
  %.042.in.i.i = load i16, ptr %i.aee, align 4, !tbaa !235 ; 2 uses
  %.not.i.i328 = icmp eq i16 %.042.in.i.i, -1
  br i1 %.not.i.i328, label %._crit_edge.i.i, label %bb.du, !llvm.loop !1024

._crit_edge50.i.i:                                ; preds = %.prol.loopexit, %.lr.ph49.i.i.new, %._crit_edge.i.i
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, 667
  br i1 %exitcond56.not.i.i, label %_ZN5ImGuiL20UpdateKeyboardInputsEv.exit, label %bb.dt, !llvm.loop !1025

.lr.ph49.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph49.i.i.new
  %indvars.iv.i87.i = phi i64 [ %indvars.iv.next.i88.i.3, %.lr.ph49.i.i.new ], [ %indvars.iv.i87.i.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i88.i = add nsw i64 %indvars.iv.i87.i, 1 ; 3 uses
  %i.ahs = icmp slt i64 %indvars.iv.next.i88.i, %i.adt
  %i.aht = trunc i64 %indvars.iv.next.i88.i to i16
  %i.ahu = select i1 %i.ahs, i16 %i.aht, i16 -1
  %i.ahv = getelementptr inbounds [16 x i8], ptr %i.adr, i64 %indvars.iv.i87.i
  store i16 %i.ahu, ptr %i.ahv, align 4, !tbaa !1013
  %indvars.iv.next.i88.i.1 = add nsw i64 %indvars.iv.i87.i, 2 ; 3 uses
  %i.ahw = icmp slt i64 %indvars.iv.next.i88.i.1, %i.adt
  %i.ahx = trunc i64 %indvars.iv.next.i88.i.1 to i16
  %i.ahy = select i1 %i.ahw, i16 %i.ahx, i16 -1
  %i.ahz = getelementptr inbounds [16 x i8], ptr %i.adr, i64 %indvars.iv.next.i88.i
  store i16 %i.ahy, ptr %i.ahz, align 4, !tbaa !1013
  %indvars.iv.next.i88.i.2 = add nsw i64 %indvars.iv.i87.i, 3 ; 3 uses
  %i.aia = icmp slt i64 %indvars.iv.next.i88.i.2, %i.adt
  %i.aib = trunc i64 %indvars.iv.next.i88.i.2 to i16
  %i.aic = select i1 %i.aia, i16 %i.aib, i16 -1
  %i.aid = getelementptr inbounds [16 x i8], ptr %i.adr, i64 %indvars.iv.next.i88.i.1
  store i16 %i.aic, ptr %i.aid, align 4, !tbaa !1013
  %indvars.iv.next.i88.i.3 = add nsw i64 %indvars.iv.i87.i, 4 ; 4 uses
  %i.aie = icmp slt i64 %indvars.iv.next.i88.i.3, %i.adt
  %i.aif = trunc i64 %indvars.iv.next.i88.i.3 to i16
  %i.aig = select i1 %i.aie, i16 %i.aif, i16 -1
  %i.aih = getelementptr inbounds [16 x i8], ptr %i.adr, i64 %indvars.iv.next.i88.i.2
  store i16 %i.aig, ptr %i.aih, align 4, !tbaa !1013
  %exitcond.not.i89.i.3 = icmp eq i64 %indvars.iv.next.i88.i.3, %i.adt
  br i1 %exitcond.not.i89.i.3, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new, !llvm.loop !1026

bb.ei:                                            ; preds = %bb.ek, %.preheader.i
  %indvars.iv100.i = phi i64 [ 512, %.preheader.i ], [ %indvars.iv.next101.i, %bb.ek ] ; 2 uses
  %i.aii = add nsw i64 %indvars.iv100.i, -512     ; 2 uses
  %i.aij = getelementptr inbounds [16 x i8], ptr %i.acm, i64 %i.aii
  %i.aik = getelementptr inbounds [12 x i8], ptr %i.acn, i64 %i.aii ; 4 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 4 ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !620
  store i32 %i.aim, ptr %i.aik, align 4, !tbaa !622
  %i.ain = load i8, ptr %i.aij, align 4, !tbaa !208, !range !64, !noundef !204 ; 2 uses
  %i.aio = trunc nuw i8 %i.ain to i1
  br i1 %i.aio, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store i32 -1, ptr %i.ail, align 4, !tbaa !620
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aik, i64 9 ; 2 uses
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !623, !range !64, !noundef !204
  %spec.select.i = and i8 %i.aiq, %i.ain          ; 2 uses
  store i8 %spec.select.i, ptr %i.aip, align 1, !tbaa !623
  %i.air = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  store i8 %spec.select.i, ptr %i.air, align 4, !tbaa !624
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next101.i, 667
  br i1 %exitcond103.not.i, label %bb.ds, label %bb.ei, !llvm.loop !1027

_ZN5ImGuiL20UpdateKeyboardInputsEv.exit:          ; preds = %._crit_edge50.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %i.wu, i64 7736 ; 2 uses
  %i.ait = load i32, ptr %i.adg, align 4, !tbaa !747
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.wu, i64 7740
  %i.aiv = load <2 x i32>, ptr %i.ais, align 8, !tbaa !205
  store i32 %i.adn, ptr %i.ais, align 8, !tbaa !748
  store <2 x i32> %i.aiv, ptr %i.ade, align 8, !tbaa !205
  store i32 %i.ait, ptr %i.aiu, align 4, !tbaa !747
  %i.aiw = load ptr, ptr %.phi.trans.insert.i.i.i326, align 8, !tbaa !704
  %i.aix = load ptr, ptr %i.adf, align 8, !tbaa !704
  store ptr %i.aix, ptr %.phi.trans.insert.i.i.i326, align 8, !tbaa !704
  store ptr %i.aiw, ptr %i.adf, align 8, !tbaa !704
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.c, i64 8908 ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !1028
  %i.aja = getelementptr inbounds nuw i8, ptr %i.c, i64 8912
  store i32 %i.aiz, ptr %i.aja, align 8, !tbaa !1029
  store i32 0, ptr %i.aiy, align 4, !tbaa !1028
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.c, i64 8896 ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !1030
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.c, i64 8900
  store i32 %i.ajc, ptr %i.ajd, align 4, !tbaa !1031
  store i32 0, ptr %i.ajb, align 8, !tbaa !1030
  %i.aje = getelementptr inbounds nuw i8, ptr %i.c, i64 8904
  store float f0x7F7FFFFF, ptr %i.aje, align 8, !tbaa !1032
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.c, i64 8777
  store i8 0, ptr %i.ajf, align 1, !tbaa !1033
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.c, i64 8778
  store i8 0, ptr %i.ajg, align 2, !tbaa !1034
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.c, i64 8920
  store i32 0, ptr %i.ajh, align 8, !tbaa !669
  %i.aji = load i8, ptr %i.qe, align 8, !tbaa !864, !range !64, !noundef !204
  %i.ajj = trunc nuw i8 %i.aji to i1
  br i1 %i.ajj, label %bb.el, label %_ZN5ImGui8ShortcutEiij.exit.thread

bb.el:                                            ; preds = %_ZN5ImGuiL20UpdateKeyboardInputsEv.exit
  %i.ajk = load i32, ptr %i.um, align 4, !tbaa !819 ; 2 uses
  %.not292 = icmp eq i32 %i.ajk, 0
  br i1 %.not292, label %.lr.ph.i330, label %bb.er

.lr.ph.i330:                                      ; preds = %bb.el, %bb.eq
  %i.ajl = phi i8 [ %i.akc, %bb.eq ], [ 35, %bb.el ] ; 2 uses
  %.252.i = phi i32 [ %.3.i, %bb.eq ], [ -1, %bb.el ] ; 2 uses
  %.23551.i = phi ptr [ %.336.i, %bb.eq ], [ @.str.88, %bb.el ] ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.23551.i, i64 1 ; 2 uses
  %i.ajn = zext i8 %i.ajl to i32
  %i.ajo = icmp eq i8 %i.ajl, 35
  br i1 %i.ajo, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %.lr.ph.i330
  %i.ajp = load i8, ptr %i.ajm, align 1, !tbaa !187
  %i.ajq = icmp eq i8 %i.ajp, 35
  br i1 %i.ajq, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.ajr = getelementptr inbounds nuw i8, ptr %.23551.i, i64 2
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !187
  %i.ajt = icmp eq i8 %i.ajs, 35
  br i1 %i.ajt, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aju = getelementptr inbounds nuw i8, ptr %.23551.i, i64 3
  br label %bb.eq, !llvm.loop !248

bb.ep:                                            ; preds = %bb.en, %bb.em, %.lr.ph.i330
  %i.ajv = lshr i32 %.252.i, 8
  %i.ajw = and i32 %.252.i, 255
  %i.ajx = xor i32 %i.ajw, %i.ajn
  %i.ajy = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ajy
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !205
  %i.akb = xor i32 %i.aka, %i.ajv
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.336.i = phi ptr [ %i.aju, %bb.eo ], [ %i.ajm, %bb.ep ] ; 2 uses
  %.3.i = phi i32 [ -1, %bb.eo ], [ %i.akb, %bb.ep ] ; 2 uses
  %i.akc = load i8, ptr %.336.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i = icmp eq i8 %i.akc, 0
  br i1 %.not40.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i330

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.eq
  %i.akd = xor i32 %.3.i, -1
  br label %bb.er

bb.er:                                            ; preds = %bb.el, %_Z9ImHashStrPKcmj.exit
  %i.ake = phi i32 [ %i.akd, %_Z9ImHashStrPKcmj.exit ], [ %i.ajk, %bb.el ] ; 2 uses
  %i.akf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.akg = add i32 %i.ake, 1
  %or.cond.i332 = icmp ult i32 %i.akg, 2
  br i1 %or.cond.i332, label %_ZL23GetRoutingIdFromOwnerIdj.exit.i, label %bb.es

_ZL23GetRoutingIdFromOwnerIdj.exit.i:             ; preds = %bb.er
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 7780
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !1035
  br label %bb.es

bb.es:                                            ; preds = %_ZL23GetRoutingIdFromOwnerIdj.exit.i, %bb.er
  %.018.i = phi i32 [ %i.aki, %_ZL23GetRoutingIdFromOwnerIdj.exit.i ], [ %i.ake, %bb.er ] ; 5 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akf, i64 7784
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !1036
  %i.akl = and i32 %i.akk, 64
  %.not.i333 = icmp eq i32 %i.akl, 0
  br i1 %.not.i333, label %bb.et, label %_ZN5ImGui8ShortcutEiij.exit.thread

bb.et:                                            ; preds = %bb.es
  %i.akm = call noundef zeroext i1 @_ZN5ImGui18SetShortcutRoutingEiij(i32 noundef 526, i32 noundef 4096, i32 noundef %.018.i)
  br i1 %i.akm, label %bb.eu, label %_ZN5ImGui8ShortcutEiij.exit.thread

bb.eu:                                            ; preds = %bb.et
  %i.akn = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 304
  %i.akp = load i32, ptr %i.ako, align 8, !tbaa !1023
  %.not.i.i334 = icmp eq i32 %i.akp, 0
  br i1 %.not.i.i334, label %bb.ev, label %_ZN5ImGui8ShortcutEiij.exit.thread

bb.ev:                                            ; preds = %bb.eu
  %i.akq = getelementptr i8, ptr %i.akn, i64 532
  %i.akr = load i8, ptr %i.akq, align 4, !tbaa !208, !range !64, !noundef !204
  %i.aks = trunc nuw i8 %i.akr to i1
  br i1 %i.aks, label %bb.ew, label %_ZN5ImGui8ShortcutEiij.exit.thread

bb.ew:                                            ; preds = %bb.ev
  %i.akt = getelementptr i8, ptr %i.akn, i64 536
  %i.aku = load float, ptr %i.akt, align 8, !tbaa !1008
  %i.akv = fcmp oeq float %i.aku, 0.000000e+00
  br i1 %i.akv, label %bb.ex, label %_ZN5ImGui8ShortcutEiij.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akn, i64 7772
  %i.akx = load i8, ptr %i.akw, align 4, !tbaa !650, !range !64, !noundef !204
  %i.aky = trunc nuw i8 %i.akx to i1
  br i1 %i.aky, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akn, i64 5428
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !819
  %i.alb = icmp ne i32 %.018.i, %i.ala
  %i.alc = icmp ne i32 %.018.i, 0
  %or.cond.i.i436 = and i1 %i.alc, %i.alb
  br i1 %or.cond.i.i436, label %_ZN5ImGui8ShortcutEiij.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.ald = icmp eq i32 %.018.i, 0
  br i1 %i.ald, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ale = getelementptr i8, ptr %i.akn, i64 5732
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !622 ; 2 uses
  %.not.i.i433 = icmp eq i32 %i.alf, %.018.i
  br i1 %.not.i.i433, label %_ZN5ImGui8ShortcutEiij.exit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.alg = getelementptr i8, ptr %i.akn, i64 5740
  %i.alh = load i8, ptr %i.alg, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ali = trunc nuw i8 %i.alh to i1
  %.not20.i.i434 = icmp ne i32 %i.alf, -1
  %or.cond23.not.i.i435 = or i1 %.not20.i.i434, %i.ali
  br i1 %or.cond23.not.i.i435, label %_ZN5ImGui8ShortcutEiij.exit.thread, label %_ZN5ImGui8ShortcutEiij.exit

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit:         ; preds = %bb.ez
  %i.alj = getelementptr i8, ptr %i.akn, i64 5740
  %i.alk = load i8, ptr %i.alj, align 4, !tbaa !624, !range !64, !noundef !204
  %i.all = icmp eq i8 %i.alk, 0
  br i1 %i.all, label %_ZN5ImGui8ShortcutEiij.exit, label %_ZN5ImGui8ShortcutEiij.exit.thread

_ZN5ImGui8ShortcutEiij.exit:                      ; preds = %bb.fb, %bb.fa, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  call void @_ZN5ImGui13ClearDragDropEv()
  br label %_ZN5ImGui8ShortcutEiij.exit.thread

_ZN5ImGui8ShortcutEiij.exit.thread:               ; preds = %bb.ey, %bb.fb, %bb.ew, %bb.ev, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit, %bb.et, %bb.eu, %bb.es, %_ZN5ImGui8ShortcutEiij.exit, %_ZN5ImGuiL20UpdateKeyboardInputsEv.exit
  %i.alm = getelementptr inbounds nuw i8, ptr %i.c, i64 9864
  store ptr null, ptr %i.alm, align 8, !tbaa !675
  %i.aln = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 89 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 40
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aln, i64 227
  store i8 0, ptr %i.alp, align 1, !tbaa !1037
  %i.alq = load i32, ptr %i.alo, align 8, !tbaa !920 ; 2 uses
end_hunk_0
