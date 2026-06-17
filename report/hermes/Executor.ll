inline.NumInlined: 1116
inline.NumDeleted: 393
begin_hunk_0_@_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE5matchEPNS0_5StateIS2_EEb:bb.a
  %i.afh = trunc i64 %i.afg to i32
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  store i32 %i.afh, ptr %i.afi, align 4, !tbaa !149
  %.sroa.0.0.copyload = load i64, ptr %i.aeo, align 4
  %i.afj = load i32, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.afk = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i570 = icmp ult i32 %i.afj, %i.afk
  br i1 %.not.i.i570, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572, label %bb.ga, !prof !86

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i571 = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572: ; preds = %bb.ga, %bb.fz
  %i.afl = phi i32 [ %.pre.i.i571, %bb.ga ], [ %i.afj, %bb.fz ]
  %i.afm = load ptr, ptr %3, align 8, !tbaa !53
  %i.afn = zext i32 %i.afl to i64
  %i.afo = getelementptr inbounds nuw [24 x i8], ptr %i.afm, i64 %i.afn ; 4 uses
  store i8 3, ptr %i.afo, align 1
  %.sroa.5735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  store i32 %i.aeq, ptr %.sroa.5735.0..sroa_idx, align 1
  %.sroa.6736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.6736.0..sroa_idx, align 1
  %.sroa.7737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  store ptr %.03511070, ptr %.sroa.7737.0..sroa_idx, align 1
  %i.afp = load i32, ptr %i.b, align 8, !tbaa !55
  %i.afq = add i32 %i.afp, 1                      ; 2 uses
  store i32 %i.afq, ptr %i.b, align 8, !tbaa !55
  %i.afr = icmp ugt i32 %i.afq, 16777216
  br i1 %i.afr, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.gb, !prof !115

bb.gb:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572
  %i.afs = load i32, ptr %i.z, align 8, !tbaa !35 ; 2 uses
  %i.aft = icmp eq i32 %i.afs, 0
  br i1 %i.aft, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.thread843, !prof !115

.thread843:                                       ; preds = %bb.gb
  %i.afu = add i32 %i.afs, -1
  store i32 %i.afu, ptr %i.z, align 8, !tbaa !35
  %i.afv = getelementptr inbounds nuw i8, ptr %.03511070, i64 19
  %i.afw = load i32, ptr %i.afv, align 1, !tbaa !146
  store i32 %i.afw, ptr %i.f, align 8, !tbaa !39
  br label %.backedge

bb.gc:                                            ; preds = %bb.fy
  %i.afx = getelementptr inbounds nuw i8, ptr %.03511070, i64 19
  %i.afy = load i32, ptr %i.afx, align 1, !tbaa !146
  %i.afz = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.aga = load i32, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.agb = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i575 = icmp ult i32 %i.aga, %i.agb
  br i1 %.not.i.i575, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577, label %bb.gd, !prof !86

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i576 = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577: ; preds = %bb.gd, %bb.gc
  %i.agc = phi i32 [ %.pre.i.i576, %bb.gd ], [ %i.aga, %bb.gc ]
  %i.agd = load ptr, ptr %3, align 8, !tbaa !53
  %i.age = zext i32 %i.agc to i64
  %i.agf = getelementptr inbounds nuw [24 x i8], ptr %i.agd, i64 %i.age ; 3 uses
  store i8 2, ptr %i.agf, align 1
  %.sroa.5740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  store i32 %i.afy, ptr %.sroa.5740.0..sroa_idx, align 1
  %.sroa.6741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  store ptr %i.afz, ptr %.sroa.6741.0..sroa_idx, align 1
  %i.agg = load i32, ptr %i.b, align 8, !tbaa !55
  %i.agh = add i32 %i.agg, 1                      ; 2 uses
  store i32 %i.agh, ptr %i.b, align 8, !tbaa !55
  %i.agi = icmp ugt i32 %i.agh, 16777216
  br i1 %i.agi, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.ge, !prof !115

bb.ge:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577
  %i.agj = load i32, ptr %i.z, align 8, !tbaa !35 ; 2 uses
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.gf, !prof !115

bb.gf:                                            ; preds = %bb.ge
  %i.agl = add i32 %i.agj, -1
  store i32 %i.agl, ptr %i.z, align 8, !tbaa !35
  %i.agm = call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1, ptr noundef nonnull %.03511070, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.not380 = icmp eq i8 %i.agm, 0
  br i1 %.not380, label %.thread849, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

.thread849:                                       ; preds = %bb.gf
  store i32 %i.aeq, ptr %i.f, align 8, !tbaa !39
  br label %.backedge

bb.gg:                                            ; preds = %bb.gq
  %i.agn = load i32, ptr %i.y, align 8, !tbaa !18
  %i.ago = getelementptr inbounds nuw i8, ptr %i.aib, i64 1
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !152
  %i.agq = zext i8 %i.agp to i32                  ; 2 uses
  %i.agr = and i32 %i.agq, 1
  %.not.i580 = icmp eq i32 %i.agr, 0
  %i.ags = and i32 %i.agn, 4
  %.not4.i581 = icmp eq i32 %i.ags, 0
  %or.cond.i582 = or i1 %.not4.i581, %.not.i580
  br i1 %or.cond.i582, label %bb.gh, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586

bb.gh:                                            ; preds = %bb.gg
  %i.agt = and i32 %i.agq, 2
  %.not5.i584 = icmp eq i32 %i.agt, 0
  %.pre995 = load ptr, ptr %i.h, align 8, !tbaa !56 ; 3 uses
  br i1 %.not5.i584, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.agu = load ptr, ptr %1, align 8, !tbaa !83
  %.not6.i585 = icmp eq ptr %.pre995, %i.agu
  br i1 %.not6.i585, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586

_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586: ; preds = %bb.gi, %bb.gg
  %i.agv = getelementptr inbounds nuw i8, ptr %i.aib, i64 2
  %i.agw = load i32, ptr %i.agv, align 1, !tbaa !154
  store i32 %i.agw, ptr %i.f, align 8, !tbaa !39
  br label %.backedge

bb.gj:                                            ; preds = %bb.gq
  %i.agx = getelementptr inbounds nuw i8, ptr %i.aib, i64 1
  %i.agy = load i32, ptr %i.agx, align 1, !tbaa !155 ; 2 uses
  store i32 %i.agy, ptr %i.f, align 8, !tbaa !39
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.agz
  %.pre994 = load ptr, ptr %i.h, align 8, !tbaa !56
  br label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858

_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858: ; preds = %bb.gi, %bb.gh, %bb.gj
  %i.ahb = phi ptr [ %.pre994, %bb.gj ], [ %.pre995, %bb.gh ], [ %.pre995, %bb.gi ]
  %.1352 = phi ptr [ %i.aha, %bb.gj ], [ %i.aib, %bb.gh ], [ %i.aib, %bb.gi ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1352, i64 2
  %i.ahd = load i32, ptr %i.ahc, align 1, !tbaa !154
  %i.ahe = load i32, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.ahf = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i587 = icmp ult i32 %i.ahe, %i.ahf
  br i1 %.not.i.i587, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589, label %bb.gk, !prof !86

bb.gk:                                            ; preds = %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i588 = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589: ; preds = %bb.gk, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858
  %i.ahg = phi i32 [ %.pre.i.i588, %bb.gk ], [ %i.ahe, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586.thread858 ]
  %i.ahh = load ptr, ptr %3, align 8, !tbaa !53
  %i.ahi = zext i32 %i.ahg to i64
  %i.ahj = getelementptr inbounds nuw [24 x i8], ptr %i.ahh, i64 %i.ahi ; 3 uses
  store i8 2, ptr %i.ahj, align 1
  %.sroa.5745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  store i32 %i.ahd, ptr %.sroa.5745.0..sroa_idx, align 1
  %.sroa.6746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  store ptr %i.ahb, ptr %.sroa.6746.0..sroa_idx, align 1
  %i.ahk = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ahl = add i32 %i.ahk, 1                      ; 2 uses
  store i32 %i.ahl, ptr %i.b, align 8, !tbaa !55
  %i.ahm = icmp ugt i32 %i.ahl, 16777216
  br i1 %i.ahm, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.gl, !prof !115

bb.gl:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589
  %i.ahn = load i32, ptr %i.z, align 8, !tbaa !35 ; 2 uses
  %i.aho = icmp eq i32 %i.ahn, 0
  br i1 %i.aho, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.thread865, !prof !115

.thread865:                                       ; preds = %bb.gl
  %i.ahp = add i32 %i.ahn, -1
  store i32 %i.ahp, ptr %i.z, align 8, !tbaa !35
  %i.ahq = load i32, ptr %i.f, align 8, !tbaa !39
  %i.ahr = add i32 %i.ahq, 6
  store i32 %i.ahr, ptr %i.f, align 8, !tbaa !39
  br label %.backedge

bb.gm:                                            ; preds = %bb.gq
  %i.ahs = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE15matchWidth1LoopEPKNS0_14Width1LoopInsnEPNS0_5StateIS2_EERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.aib, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.sroa.0596.0.extract.trunc = trunc i16 %i.ahs to i8 ; 2 uses
  %i.aht = icmp eq i8 %.sroa.0596.0.extract.trunc, 0
  br i1 %i.aht, label %bb.gn, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !86

bb.gn:                                            ; preds = %bb.gm
  %i.ahu = and i16 %i.ahs, 256
  %.not = icmp eq i16 %i.ahu, 0
  br i1 %.not, label %bb.go, label %.backedge

bb.go:                                            ; preds = %bb.gn
  %i.ahv = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.ahv to i8 ; 2 uses
  %i.ahw = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  br i1 %i.ahw, label %bb.gp, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !86

bb.gp:                                            ; preds = %bb.go
  %i.ahx = and i16 %i.ahv, 256
  %.not936 = icmp eq i16 %i.ahx, 0
  br i1 %.not936, label %.critedge409.thread894, label %.backedge

.critedge409:                                     ; preds = %.critedge414
  %i.ahy = and i16 %i.zt, 256
  %.not940 = icmp eq i16 %i.ahy, 0
  br i1 %.not940, label %.critedge409.thread894, label %.backedge

.backedge:                                        ; preds = %.critedge409, %bb.gp, %bb.ft, %bb.fj, %bb.ct, %bb.by, %.loopexit960, %.loopexit, %bb.bt, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEDs.exit.thread, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEDs.exit.thread, %bb.av, %bb.an, %bb.ai, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit, %bb.x, %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit, %bb.n, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751, %bb.g, %.thread836, %bb.bj, %bb.bc, %.thread843, %.thread865, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586, %.thread806, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit569, %bb.fk, %.split974.us, %bb.dy, %.thread802, %bb.do, %bb.am, %bb.bs, %bb.cf, %bb.au, %bb.ah, %bb.fq, %bb.cp, %bb.dg, %bb.ad, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit, %bb.cq, %bb.cx, %bb.w, %bb.q, %bb.cy, %bb.m, %bb.j, %bb.f, %bb.cs, %bb.gq, %bb.dn, %bb.gn, %.thread849, %bb.df, %bb.fx
  %.sroa.0718.491073 = phi i8 [ %.sroa.0718.50, %bb.fx ], [ %.sroa.0718.50, %.critedge409 ], [ %.sroa.0718.50, %bb.gp ], [ %.sroa.0718.50, %bb.ft ], [ %.sroa.0718.33, %bb.fj ], [ %.sroa.0718.50, %bb.ct ], [ %.sroa.0718.50, %bb.by ], [ %.sroa.0718.50, %.loopexit960 ], [ %.sroa.0718.50, %.loopexit ], [ %.sroa.0718.50, %bb.bt ], [ %.sroa.0718.50, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEDs.exit.thread ], [ %.sroa.0718.50, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEDs.exit.thread ], [ %.sroa.0718.50, %bb.av ], [ %.sroa.0718.50, %bb.an ], [ %.sroa.0718.50, %bb.ai ], [ %.sroa.0718.50, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit ], [ %.sroa.0718.50, %bb.x ], [ %.sroa.0718.50, %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit ], [ %.sroa.0718.50, %bb.n ], [ %.sroa.0718.50, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751 ], [ %.sroa.0718.50, %bb.g ], [ %.sroa.0718.50, %.thread836 ], [ %.sroa.0718.50, %bb.bj ], [ %.sroa.0718.50, %bb.bc ], [ %.sroa.0718.50, %.thread843 ], [ %.sroa.0718.50, %.thread865 ], [ %.sroa.0718.50, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586 ], [ %.sroa.0718.50, %.thread806 ], [ %.sroa.0718.50, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit569 ], [ %.sroa.0718.33, %bb.fk ], [ %.sroa.0718.50, %.split974.us ], [ %.sroa.0718.50, %bb.dy ], [ %.sroa.0718.50, %.thread802 ], [ %.sroa.0718.50, %bb.do ], [ %.sroa.0718.50, %bb.am ], [ %.sroa.0718.50, %bb.bs ], [ %.sroa.0718.50, %bb.cf ], [ %.sroa.0718.50, %bb.au ], [ %.sroa.0718.50, %bb.ah ], [ %.sroa.0718.50, %bb.fq ], [ %.sroa.0718.50, %bb.cp ], [ %.sroa.0718.50, %bb.dg ], [ %.sroa.0718.50, %bb.ad ], [ %.sroa.0718.50, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit ], [ %.sroa.0718.50, %bb.cq ], [ %.sroa.0718.50, %bb.cx ], [ %.sroa.0718.50, %bb.w ], [ %.sroa.0718.50, %bb.q ], [ %.sroa.0718.50, %bb.cy ], [ %.sroa.0718.50, %bb.m ], [ %.sroa.0718.50, %bb.j ], [ %.sroa.0718.50, %bb.f ], [ %.sroa.0718.50, %bb.cs ], [ %.sroa.0718.50, %bb.gq ], [ %.sroa.0718.50, %bb.dn ], [ %.sroa.0718.50, %bb.gn ], [ %.sroa.0718.50, %.thread849 ], [ %.sroa.0718.50, %bb.df ]
  %.pre = load i32, ptr %i.f, align 8, !tbaa !39
  br label %bb.gq

bb.gq:                                            ; preds = %.backedge, %bb.b
  %i.ahz = phi i32 [ %i.g, %bb.b ], [ %.pre, %.backedge ] ; 21 uses
  %.sroa.0718.50 = phi i8 [ %.sroa.0718.0982, %bb.b ], [ %.sroa.0718.491073, %.backedge ] ; 83 uses
  %i.aia = zext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aia ; 46 uses
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !157 ; 2 uses
  switch i8 %i.aic, label %.backedge [
    i8 0, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit
    i8 1, label %bb.c
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.o
    i8 5, label %bb.u
    i8 6, label %bb.y
    i8 7, label %bb.ae
    i8 8, label %bb.aj
    i8 9, label %bb.ao
    i8 12, label %bb.aw
    i8 13, label %bb.bd
    i8 14, label %bb.bk
    i8 10, label %bb.bu
    i8 11, label %bb.bz
    i8 15, label %bb.cg
    i8 16, label %bb.ct
    i8 17, label %bb.cu
    i8 18, label %bb.cz
    i8 22, label %bb.dh
    i8 19, label %bb.dp
    i8 20, label %bb.dv
    i8 21, label %bb.dz
    i8 23, label %bb.ev
    i8 24, label %bb.fl
    i8 25, label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit569.thread833
    i8 26, label %bb.gg
    i8 27, label %bb.gj
    i8 28, label %bb.gm
  ]

.critedge409.thread894:                           ; preds = %.critedge409, %bb.ft, %bb.fj, %bb.gp, %bb.cf, %bb.fq, %bb.dn, %bb.df, %bb.by, %bb.bs, %bb.au, %bb.cx, %bb.bj, %bb.bc, %bb.am, %bb.ah, %bb.ad, %bb.w, %bb.q, %bb.m, %bb.j, %bb.f, %bb.cs
  %.sroa.0718.49891.ph = phi i8 [ %.sroa.0718.50, %bb.cx ], [ %.sroa.0718.50, %bb.cs ], [ %.sroa.0718.50, %bb.f ], [ %.sroa.0718.50, %bb.j ], [ %.sroa.0718.50, %bb.m ], [ %.sroa.0718.50, %bb.q ], [ %.sroa.0718.50, %bb.w ], [ %.sroa.0718.50, %bb.ad ], [ %.sroa.0718.50, %bb.ah ], [ %.sroa.0718.50, %bb.am ], [ %.sroa.0718.50, %bb.bc ], [ %.sroa.0718.50, %bb.bj ], [ %.sroa.0718.50, %.critedge409 ], [ %.sroa.0718.50, %bb.ft ], [ %.sroa.0718.33, %bb.fj ], [ %.sroa.0718.50, %bb.gp ], [ %.sroa.0718.50, %bb.cf ], [ %.sroa.0718.50, %bb.fq ], [ %.sroa.0718.50, %bb.dn ], [ %.sroa.0718.50, %bb.df ], [ %.sroa.0718.50, %bb.by ], [ %.sroa.0718.50, %bb.bs ], [ %.sroa.0718.50, %bb.au ]
  %i.aid = load i8, ptr %i.ar, align 4
  %i.aie = and i8 %i.aid, 8
  %.not.i592 = icmp eq i8 %i.aie, 0
  %.pre.i593 = add i64 %.0350983, 1               ; 6 uses
  br i1 %.not.i592, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, label %bb.gr, !prof !86

bb.gr:                                            ; preds = %.critedge409.thread894
  %.not13.i = icmp ult i64 %.pre.i593, %i.p
  br i1 %.not13.i, label %bb.gs, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit

bb.gs:                                            ; preds = %bb.gr
  %i.aif = load i16, ptr %i.at, align 2, !tbaa !84
  %i.aig = and i16 %i.aif, -1024
  %i.aih = icmp eq i16 %i.aig, -10240
  br i1 %i.aih, label %bb.gt, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, !prof !115

bb.gt:                                            ; preds = %bb.gs
  %i.aii = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.pre.i593
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !84
  %i.aik = and i16 %i.aij, -1024
  %i.ail = icmp eq i16 %i.aik, -9216
  br i1 %i.ail, label %bb.gu, label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, !prof !115

bb.gu:                                            ; preds = %bb.gt
  %i.aim = add i64 %.0350983, 2
  br label %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit

_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit: ; preds = %.critedge409.thread894, %bb.gr, %bb.gs, %bb.gt, %bb.gu
  %.1.i594 = phi i64 [ %.pre.i593, %bb.gs ], [ %i.aim, %bb.gu ], [ %.pre.i593, %bb.gt ], [ %.pre.i593, %bb.gr ], [ %.pre.i593, %.critedge409.thread894 ] ; 2 uses
  %i.ain = icmp ult i64 %.1.i594, %i.r
  br i1 %i.ain, label %bb.b, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !llvm.loop !158

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit: ; preds = %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, %.critedge414, %bb.gl, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577, %bb.ge, %bb.gb, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572, %bb.dr, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i506, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.co, %bb.go, %bb.gf, %bb.fs, %bb.fv, %bb.fp, %bb.fi, %bb.dm, %bb.de, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit, %.critedge402, %bb.at, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit, %bb.gm, %bb.cr, %bb.bi, %bb.bb, %bb.al, %bb.ag, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit, %bb.p, %bb.l, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, %bb.gq, %bb.cw, %bb.a
  %.sroa.0718.52 = phi i8 [ %.sroa.0663.0.extract.trunc, %bb.cr ], [ 1, %bb.a ], [ %.sroa.0629.0.extract.trunc, %.critedge414 ], [ 1, %bb.dr ], [ 1, %bb.gl ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589 ], [ 1, %bb.ge ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572 ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i506 ], [ 1, %bb.co ], [ %.sroa.0596.0.extract.trunc, %bb.gm ], [ %.sroa.0718.32, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit ], [ %.sroa.0686.0.extract.trunc, %bb.at ], [ %.sroa.0677.0.extract.trunc, %.critedge402 ], [ %.sroa.0674.0.extract.trunc, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ %.sroa.0671.0.extract.trunc, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ %.sroa.0657.0.extract.trunc, %bb.de ], [ %.sroa.0654.0.extract.trunc, %bb.dm ], [ %.sroa.0617.0.extract.trunc, %bb.fi ], [ %.sroa.0614.0.extract.trunc, %bb.fp ], [ 1, %bb.gb ], [ %i.aes, %bb.fv ], [ %.sroa.0611.0.extract.trunc, %bb.fs ], [ %i.agm, %bb.gf ], [ %.sroa.0.0.extract.trunc, %bb.go ], [ %.sroa.0660.0.extract.trunc, %bb.cw ], [ %i.aic, %bb.gq ], [ %.sroa.0710.0.extract.trunc, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit ], [ %.sroa.0707.0.extract.trunc, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0704.0.extract.trunc, %bb.l ], [ %.sroa.0701.0.extract.trunc, %bb.p ], [ %.sroa.0698.0.extract.trunc, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit ], [ %.sroa.0695.0.extract.trunc, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread ], [ %.sroa.0692.0.extract.trunc, %bb.ag ], [ %.sroa.0689.0.extract.trunc, %bb.al ], [ %.sroa.0683.0.extract.trunc, %bb.bb ], [ %.sroa.0680.0.extract.trunc, %bb.bi ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577 ], [ 0, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %.sroa.37.4 = phi ptr [ undef, %bb.cr ], [ undef, %bb.a ], [ undef, %.critedge414 ], [ undef, %bb.dr ], [ undef, %bb.gl ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589 ], [ undef, %bb.ge ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572 ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i506 ], [ undef, %bb.co ], [ undef, %bb.gm ], [ undef, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit ], [ undef, %bb.at ], [ undef, %.critedge402 ], [ undef, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ undef, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ undef, %bb.de ], [ undef, %bb.dm ], [ undef, %bb.fi ], [ undef, %bb.fp ], [ undef, %bb.gb ], [ undef, %bb.fv ], [ undef, %bb.fs ], [ undef, %bb.gf ], [ undef, %bb.go ], [ undef, %bb.cw ], [ %i.at, %bb.gq ], [ undef, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit ], [ undef, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ undef, %bb.l ], [ undef, %bb.p ], [ undef, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit ], [ undef, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread ], [ undef, %bb.ag ], [ undef, %bb.al ], [ undef, %bb.bb ], [ undef, %bb.bi ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577 ], [ null, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %i.aio = load i64, ptr %i.s, align 8, !tbaa !81
  %i.aip = add i64 %i.aio, -1
  store i64 %i.aip, ptr %i.s, align 8, !tbaa !81
  %i.aiq = load ptr, ptr %3, align 8, !tbaa !53   ; 2 uses
  %i.air = icmp eq ptr %i.aiq, %i.a
  br i1 %i.air, label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELj64EED2Ev.exit, label %bb.gv

bb.gv:                                            ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit
  call void @free(ptr noundef %i.aiq) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELj64EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELj64EED2Ev.exit: ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.0718.52, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.37.4, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not.i73 = icmp eq i32 %i.b, 0
  br i1 %.not.i73, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.bp, %bb.l ] ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !53
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 15 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !29    ; 2 uses
  switch i8 %i.k, label %bb.l [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !29
  %i.o = zext i16 %i.n to i64
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load i64, ptr %i.l, align 4
  store i64 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %i.a, align 8, !tbaa !55
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = zext i16 %i.v to i64
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load i64, ptr %i.t, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !55
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !56
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !39
  %i.ah = add i32 %i.f, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !55
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !159 ; 2 uses
  %i.ai = add i32 %i.f, -1
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !55
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !140
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store i64 %.sroa.4.0.copyload, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.ao, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %.sroa.2.0.extract.shift.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !56
  %i.at = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.au, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !88, !range !89, !noundef !90
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = icmp eq i8 %i.k, 4
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bf = select i1 %i.bc, i64 -1, i64 1
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bi = select i1 %i.bc, i64 1, i64 -1
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.bg, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bk, align 8, !tbaa !56
  %i.bl = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !39
  br label %.thread48

.sink.split:                                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink108 = phi i32 [ %i.s, %bb.c ], [ %i.aa, %bb.d ], [ %i.f, %bb.g ]
  %i.bo = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bp = phi i32 [ %i.f, %bb.b ], [ %i.bo, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.av, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
  ret i16 %.sroa.6.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex18bracketMatchesCharINS0_16UTF16RegexTraitsEEEbRKNS0_7ContextIT_EEPKNS0_11BracketInsnEPKNS0_14BracketRange32ENS4_9CodePointE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1               ; 9 uses
  %i.c = and i8 %i.b, 126
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, -33
  %i.e = add i32 %i.d, -65
  %or.cond17.i = icmp ult i32 %i.e, 26
  %i.f = add i32 %3, -48
  %or.cond5.i = icmp ult i32 %i.f, 10             ; 3 uses
  %i.g = icmp eq i32 %3, 95
  %i.h = or i1 %or.cond17.i, %i.g
  %i.i = or i1 %i.h, %or.cond5.i                  ; 2 uses
  %i.j = add i32 %3, -8192
  %or.cond13.i.i = icmp ult i32 %i.j, 11          ; 2 uses
  %i.k = and i8 %i.b, 2
  %.not35 = icmp eq i8 %i.k, 0
  %i.l = and i8 %i.b, 16                          ; 2 uses
  br i1 %.not35, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46, label %bb.c

end_hunk_0
begin_hunk_1_@_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE5matchEPNS0_5StateIS2_EEb:bb.a
  %i.zg = trunc i64 %i.zf to i32
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !149
  %.sroa.0.0.copyload = load i64, ptr %i.yo, align 4
  %i.zi = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.zj = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i490 = icmp ult i32 %i.zi, %i.zj
  br i1 %.not.i.i490, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492, label %bb.eq, !prof !86

bb.eq:                                            ; preds = %bb.ep
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i491 = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492: ; preds = %bb.eq, %bb.ep
  %i.zk = phi i32 [ %.pre.i.i491, %bb.eq ], [ %i.zi, %bb.ep ]
  %i.zl = load ptr, ptr %3, align 8, !tbaa !53
  %i.zm = zext i32 %i.zk to i64
  %i.zn = getelementptr inbounds nuw [24 x i8], ptr %i.zl, i64 %i.zm ; 4 uses
  store i8 3, ptr %i.zn, align 1
  %.sroa.5651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  store i32 %i.yq, ptr %.sroa.5651.0..sroa_idx, align 1
  %.sroa.6652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.6652.0..sroa_idx, align 1
  %.sroa.7653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  store ptr %.03511093, ptr %.sroa.7653.0..sroa_idx, align 1
  %i.zo = load i32, ptr %i.b, align 8, !tbaa !55
  %i.zp = add i32 %i.zo, 1                        ; 2 uses
  store i32 %i.zp, ptr %i.b, align 8, !tbaa !55
  %i.zq = icmp ugt i32 %i.zp, 16777216
  br i1 %i.zq, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.er, !prof !115

bb.er:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492
  %i.zr = load i32, ptr %i.w, align 4, !tbaa !74  ; 2 uses
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.thread758, !prof !115

.thread758:                                       ; preds = %bb.er
  %i.zt = add i32 %i.zr, -1
  store i32 %i.zt, ptr %i.w, align 4, !tbaa !74
  %i.zu = getelementptr inbounds nuw i8, ptr %.03511093, i64 19
  %i.zv = load i32, ptr %i.zu, align 1, !tbaa !146
  store i32 %i.zv, ptr %i.f, align 8, !tbaa !75
  br label %.backedge

bb.es:                                            ; preds = %bb.eo
  %i.zw = getelementptr inbounds nuw i8, ptr %.03511093, i64 19
  %i.zx = load i32, ptr %i.zw, align 1, !tbaa !146
  %i.zy = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.zz = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.aaa = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i495 = icmp ult i32 %i.zz, %i.aaa
  br i1 %.not.i.i495, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497, label %bb.et, !prof !86

bb.et:                                            ; preds = %bb.es
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i496 = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497: ; preds = %bb.et, %bb.es
  %i.aab = phi i32 [ %.pre.i.i496, %bb.et ], [ %i.zz, %bb.es ]
  %i.aac = load ptr, ptr %3, align 8, !tbaa !53
  %i.aad = zext i32 %i.aab to i64
  %i.aae = getelementptr inbounds nuw [24 x i8], ptr %i.aac, i64 %i.aad ; 3 uses
  store i8 2, ptr %i.aae, align 1
  %.sroa.5656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  store i32 %i.zx, ptr %.sroa.5656.0..sroa_idx, align 1
  %.sroa.6657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store ptr %i.zy, ptr %.sroa.6657.0..sroa_idx, align 1
  %i.aaf = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aag = add i32 %i.aaf, 1                      ; 2 uses
  store i32 %i.aag, ptr %i.b, align 8, !tbaa !55
  %i.aah = icmp ugt i32 %i.aag, 16777216
  br i1 %i.aah, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.eu, !prof !115

bb.eu:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497
  %i.aai = load i32, ptr %i.w, align 4, !tbaa !74 ; 2 uses
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.ev, !prof !115

bb.ev:                                            ; preds = %bb.eu
  %i.aak = add i32 %i.aai, -1
  store i32 %i.aak, ptr %i.w, align 4, !tbaa !74
  %i.aal = call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %.03511093, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.not375 = icmp eq i8 %i.aal, 0
  br i1 %.not375, label %.thread764, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

.thread764:                                       ; preds = %bb.ev
  store i32 %i.yq, ptr %i.f, align 8, !tbaa !75
  br label %.backedge

bb.ew:                                            ; preds = %bb.fg
  %i.aam = load i32, ptr %i.v, align 8, !tbaa !67
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aca, i64 1
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !152
  %i.aap = zext i8 %i.aao to i32                  ; 2 uses
  %i.aaq = and i32 %i.aap, 1
  %.not.i500 = icmp eq i32 %i.aaq, 0
  %i.aar = and i32 %i.aam, 4
  %.not4.i501 = icmp eq i32 %i.aar, 0
  %or.cond.i502 = or i1 %.not4.i501, %.not.i500
  br i1 %or.cond.i502, label %bb.ex, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506

bb.ex:                                            ; preds = %bb.ew
  %i.aas = and i32 %i.aap, 2
  %.not5.i504 = icmp eq i32 %i.aas, 0
  %.pre1023 = load ptr, ptr %i.h, align 8, !tbaa !78 ; 3 uses
  br i1 %.not5.i504, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aat = load ptr, ptr %1, align 8, !tbaa !181
  %.not6.i505 = icmp eq ptr %.pre1023, %i.aat
  br i1 %.not6.i505, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506: ; preds = %bb.ey, %bb.ew
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aca, i64 2
  %i.aav = load i32, ptr %i.aau, align 1, !tbaa !154
  store i32 %i.aav, ptr %i.f, align 8, !tbaa !75
  br label %.backedge

bb.ez:                                            ; preds = %bb.fg
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aca, i64 1
  %i.aax = load i32, ptr %i.aaw, align 1, !tbaa !155 ; 2 uses
  store i32 %i.aax, ptr %i.f, align 8, !tbaa !75
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aay
  %.pre1022 = load ptr, ptr %i.h, align 8, !tbaa !78
  br label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773: ; preds = %bb.ey, %bb.ex, %bb.ez
  %i.aba = phi ptr [ %.pre1022, %bb.ez ], [ %.pre1023, %bb.ex ], [ %.pre1023, %bb.ey ]
  %.1352 = phi ptr [ %i.aaz, %bb.ez ], [ %i.aca, %bb.ex ], [ %i.aca, %bb.ey ]
  %i.abb = getelementptr inbounds nuw i8, ptr %.1352, i64 2
  %i.abc = load i32, ptr %i.abb, align 1, !tbaa !154
  %i.abd = load i32, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.abe = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i507 = icmp ult i32 %i.abd, %i.abe
  br i1 %.not.i.i507, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509, label %bb.fa, !prof !86

bb.fa:                                            ; preds = %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i508 = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509: ; preds = %bb.fa, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773
  %i.abf = phi i32 [ %.pre.i.i508, %bb.fa ], [ %i.abd, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506.thread773 ]
  %i.abg = load ptr, ptr %3, align 8, !tbaa !53
  %i.abh = zext i32 %i.abf to i64
  %i.abi = getelementptr inbounds nuw [24 x i8], ptr %i.abg, i64 %i.abh ; 3 uses
  store i8 2, ptr %i.abi, align 1
  %.sroa.5661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  store i32 %i.abc, ptr %.sroa.5661.0..sroa_idx, align 1
  %.sroa.6662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store ptr %i.aba, ptr %.sroa.6662.0..sroa_idx, align 1
  %i.abj = load i32, ptr %i.b, align 8, !tbaa !55
  %i.abk = add i32 %i.abj, 1                      ; 2 uses
  store i32 %i.abk, ptr %i.b, align 8, !tbaa !55
  %i.abl = icmp ugt i32 %i.abk, 16777216
  br i1 %i.abl, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.fb, !prof !115

bb.fb:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509
  %i.abm = load i32, ptr %i.w, align 4, !tbaa !74 ; 2 uses
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.thread780, !prof !115

.thread780:                                       ; preds = %bb.fb
  %i.abo = add i32 %i.abm, -1
  store i32 %i.abo, ptr %i.w, align 4, !tbaa !74
  %i.abp = load i32, ptr %i.f, align 8, !tbaa !75
  %i.abq = add i32 %i.abp, 6
  store i32 %i.abq, ptr %i.f, align 8, !tbaa !75
  br label %.backedge

bb.fc:                                            ; preds = %bb.fg
  %i.abr = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE15matchWidth1LoopEPKNS0_14Width1LoopInsnEPNS0_5StateIS2_EERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %i.aca, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
  %.sroa.0513.0.extract.trunc = trunc i16 %i.abr to i8 ; 2 uses
  %i.abs = icmp eq i8 %.sroa.0513.0.extract.trunc, 0
  br i1 %i.abs, label %bb.fd, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !86

bb.fd:                                            ; preds = %bb.fc
  %i.abt = and i16 %i.abr, 256
  %.not = icmp eq i16 %i.abt, 0
  br i1 %.not, label %bb.fe, label %.backedge

bb.fe:                                            ; preds = %bb.fd
  %i.abu = call i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.abu to i8 ; 2 uses
  %i.abv = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  br i1 %i.abv, label %bb.ff, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !86

bb.ff:                                            ; preds = %bb.fe
  %i.abw = and i16 %i.abu, 256
  %.not851 = icmp eq i16 %i.abw, 0
  br i1 %.not851, label %.critedge404.thread809, label %.backedge

.critedge404:                                     ; preds = %.critedge409
  %i.abx = and i16 %i.tv, 256
  %.not855 = icmp eq i16 %i.abx, 0
  br i1 %.not855, label %.critedge404.thread809, label %.backedge

.backedge:                                        ; preds = %.critedge404, %bb.ff, %bb.ej, %bb.dz, %bb.ca, %bb.bh, %.loopexit874, %.loopexit, %bb.bc, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEc.exit.thread, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEc.exit.thread, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.v, %bb.q, %bb.m, %bb.i, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %.thread751, %bb.ax, %bb.at, %.thread758, %.thread780, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506, %.thread721, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit489, %bb.ea, %.split888.us, %bb.dc, %.thread717, %bb.cs, %bb.aj, %bb.bb, %bb.bm, %bb.ao, %bb.ae, %bb.eg, %bb.bw, %bb.ck, %bb.z, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit, %bb.bx, %bb.ce, %bb.u, %bb.p, %bb.cf, %bb.l, %bb.h, %bb.e, %bb.bz, %bb.fg, %bb.cr, %bb.fd, %.thread764, %bb.cj, %bb.en
  %.sroa.0634.491096 = phi i8 [ %.sroa.0634.50, %bb.en ], [ %.sroa.0634.50, %.critedge404 ], [ %.sroa.0634.50, %bb.ff ], [ %.sroa.0634.50, %bb.ej ], [ %.sroa.0634.33, %bb.dz ], [ %.sroa.0634.50, %bb.ca ], [ %.sroa.0634.50, %bb.bh ], [ %.sroa.0634.50, %.loopexit874 ], [ %.sroa.0634.50, %.loopexit ], [ %.sroa.0634.50, %bb.bc ], [ %.sroa.0634.50, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEc.exit.thread ], [ %.sroa.0634.50, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEc.exit.thread ], [ %.sroa.0634.50, %bb.ap ], [ %.sroa.0634.50, %bb.ak ], [ %.sroa.0634.50, %bb.af ], [ %.sroa.0634.50, %bb.aa ], [ %.sroa.0634.50, %bb.v ], [ %.sroa.0634.50, %bb.q ], [ %.sroa.0634.50, %bb.m ], [ %.sroa.0634.50, %bb.i ], [ %.sroa.0634.50, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0634.50, %.thread751 ], [ %.sroa.0634.50, %bb.ax ], [ %.sroa.0634.50, %bb.at ], [ %.sroa.0634.50, %.thread758 ], [ %.sroa.0634.50, %.thread780 ], [ %.sroa.0634.50, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506 ], [ %.sroa.0634.50, %.thread721 ], [ %.sroa.0634.50, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit489 ], [ %.sroa.0634.33, %bb.ea ], [ %.sroa.0634.50, %.split888.us ], [ %.sroa.0634.50, %bb.dc ], [ %.sroa.0634.50, %.thread717 ], [ %.sroa.0634.50, %bb.cs ], [ %.sroa.0634.50, %bb.aj ], [ %.sroa.0634.50, %bb.bb ], [ %.sroa.0634.50, %bb.bm ], [ %.sroa.0634.50, %bb.ao ], [ %.sroa.0634.50, %bb.ae ], [ %.sroa.0634.50, %bb.eg ], [ %.sroa.0634.50, %bb.bw ], [ %.sroa.0634.50, %bb.ck ], [ %.sroa.0634.50, %bb.z ], [ %.sroa.0634.50, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit ], [ %.sroa.0634.50, %bb.bx ], [ %.sroa.0634.50, %bb.ce ], [ %.sroa.0634.50, %bb.u ], [ %.sroa.0634.50, %bb.p ], [ %.sroa.0634.50, %bb.cf ], [ %.sroa.0634.50, %bb.l ], [ %.sroa.0634.50, %bb.h ], [ %.sroa.0634.50, %bb.e ], [ %.sroa.0634.50, %bb.bz ], [ %.sroa.0634.50, %bb.fg ], [ %.sroa.0634.50, %bb.cr ], [ %.sroa.0634.50, %bb.fd ], [ %.sroa.0634.50, %.thread764 ], [ %.sroa.0634.50, %bb.cj ]
  %.pre = load i32, ptr %i.f, align 8, !tbaa !75
  br label %bb.fg

bb.fg:                                            ; preds = %.backedge, %bb.b
  %i.aby = phi i32 [ %i.g, %bb.b ], [ %.pre, %.backedge ] ; 22 uses
  %.sroa.0634.50 = phi i8 [ %.sroa.0634.01007, %bb.b ], [ %.sroa.0634.491096, %.backedge ] ; 83 uses
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.abz ; 46 uses
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !157
  switch i8 %i.acb, label %.backedge [
    i8 0, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit
    i8 1, label %bb.c
    i8 2, label %bb.f
    i8 3, label %bb.j
    i8 4, label %bb.n
    i8 5, label %bb.r
    i8 6, label %bb.w
    i8 7, label %bb.ab
    i8 8, label %bb.ag
    i8 9, label %bb.al
    i8 12, label %bb.aq
    i8 13, label %bb.au
    i8 14, label %bb.ay
    i8 10, label %bb.bd
    i8 11, label %bb.bi
    i8 15, label %bb.bn
    i8 16, label %bb.ca
    i8 17, label %bb.cb
    i8 18, label %bb.cg
    i8 22, label %bb.cl
    i8 19, label %bb.ct
    i8 20, label %bb.cz
    i8 21, label %bb.dd
    i8 23, label %bb.dl
    i8 24, label %bb.eb
    i8 25, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit489.thread748
    i8 26, label %bb.ew
    i8 27, label %bb.ez
    i8 28, label %bb.fc
  ]

.critedge404.thread809:                           ; preds = %.critedge404, %bb.ej, %bb.dz, %bb.ff, %bb.bm, %bb.eg, %bb.cr, %bb.cj, %bb.bh, %bb.bb, %bb.ao, %bb.ce, %bb.ax, %bb.at, %bb.aj, %bb.ae, %bb.z, %bb.u, %bb.p, %bb.l, %bb.h, %bb.e, %bb.bz
  %.sroa.0634.49806.ph = phi i8 [ %.sroa.0634.50, %bb.ce ], [ %.sroa.0634.50, %bb.bz ], [ %.sroa.0634.50, %bb.e ], [ %.sroa.0634.50, %bb.h ], [ %.sroa.0634.50, %bb.l ], [ %.sroa.0634.50, %bb.p ], [ %.sroa.0634.50, %bb.u ], [ %.sroa.0634.50, %bb.z ], [ %.sroa.0634.50, %bb.ae ], [ %.sroa.0634.50, %bb.aj ], [ %.sroa.0634.50, %bb.at ], [ %.sroa.0634.50, %bb.ax ], [ %.sroa.0634.50, %.critedge404 ], [ %.sroa.0634.50, %bb.ej ], [ %.sroa.0634.33, %bb.dz ], [ %.sroa.0634.50, %bb.ff ], [ %.sroa.0634.50, %bb.bm ], [ %.sroa.0634.50, %bb.eg ], [ %.sroa.0634.50, %bb.cr ], [ %.sroa.0634.50, %bb.cj ], [ %.sroa.0634.50, %bb.bh ], [ %.sroa.0634.50, %bb.bb ], [ %.sroa.0634.50, %bb.ao ]
  %i.acc = add nuw nsw i64 %.03501008, 1
  %exitcond1021.not = icmp eq i64 %.03501008, %i.aq
  br i1 %exitcond1021.not, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.b, !llvm.loop !188

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit: ; preds = %bb.fg
  %i.acd = getelementptr inbounds nuw i8, ptr %i.i, i64 %.03501008
  br label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit: ; preds = %.critedge404.thread809, %bb.fb, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497, %bb.eu, %bb.er, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492, %bb.cv, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i456, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.bv, %bb.fe, %bb.ev, %bb.ei, %bb.el, %bb.ef, %bb.dy, %bb.cq, %bb.ci, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit, %.critedge397, %bb.an, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit, %bb.fc, %bb.by, %bb.aw, %bb.as, %bb.ai, %bb.ad, %bb.y, %bb.t, %bb.o, %bb.k, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread665, %bb.cd, %.critedge409, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit, %bb.a
  %.sroa.0634.52 = phi i8 [ 0, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit ], [ 1, %bb.a ], [ %.sroa.0546.0.extract.trunc, %.critedge409 ], [ %.sroa.0577.0.extract.trunc, %bb.cd ], [ 1, %bb.fb ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509 ], [ 1, %bb.eu ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492 ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i456 ], [ 1, %bb.bv ], [ %.sroa.0513.0.extract.trunc, %bb.fc ], [ %.sroa.0634.32, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ %.sroa.0603.0.extract.trunc, %bb.an ], [ %.sroa.0594.0.extract.trunc, %.critedge397 ], [ %.sroa.0591.0.extract.trunc, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ %.sroa.0588.0.extract.trunc, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ %.sroa.0574.0.extract.trunc, %bb.ci ], [ %.sroa.0571.0.extract.trunc, %bb.cq ], [ %.sroa.0534.0.extract.trunc, %bb.dy ], [ %.sroa.0531.0.extract.trunc, %bb.ef ], [ 1, %bb.er ], [ %i.ys, %bb.el ], [ %.sroa.0528.0.extract.trunc, %bb.ei ], [ %i.aal, %bb.ev ], [ %.sroa.0.0.extract.trunc, %bb.fe ], [ 1, %bb.cv ], [ %.sroa.0627.0.extract.trunc, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread665 ], [ %.sroa.0624.0.extract.trunc, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0621.0.extract.trunc, %bb.k ], [ %.sroa.0618.0.extract.trunc, %bb.o ], [ %.sroa.0615.0.extract.trunc, %bb.t ], [ %.sroa.0612.0.extract.trunc, %bb.y ], [ %.sroa.0609.0.extract.trunc, %bb.ad ], [ %.sroa.0606.0.extract.trunc, %bb.ai ], [ %.sroa.0600.0.extract.trunc, %bb.as ], [ %.sroa.0597.0.extract.trunc, %bb.aw ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497 ], [ %.sroa.0580.0.extract.trunc, %bb.by ], [ 0, %.critedge404.thread809 ]
  %.sroa.37.4 = phi ptr [ %i.acd, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit ], [ undef, %bb.a ], [ undef, %bb.fb ], [ undef, %.critedge409 ], [ undef, %bb.cd ], [ undef, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread665 ], [ undef, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ undef, %bb.k ], [ undef, %bb.o ], [ undef, %bb.t ], [ undef, %bb.y ], [ undef, %bb.ad ], [ undef, %bb.ai ], [ undef, %bb.as ], [ undef, %bb.aw ], [ undef, %bb.by ], [ undef, %bb.fc ], [ undef, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ undef, %bb.an ], [ undef, %.critedge397 ], [ undef, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ undef, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ undef, %bb.ci ], [ undef, %bb.cq ], [ undef, %bb.dy ], [ undef, %bb.ef ], [ undef, %bb.el ], [ undef, %bb.ei ], [ undef, %bb.ev ], [ undef, %bb.fe ], [ undef, %bb.bv ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i456 ], [ undef, %bb.cv ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492 ], [ undef, %bb.er ], [ undef, %bb.eu ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497 ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509 ], [ null, %.critedge404.thread809 ]
  %i.ace = load i64, ptr %i.l, align 8, !tbaa !180
  %i.acf = add i64 %i.ace, -1
  store i64 %i.acf, ptr %i.l, align 8, !tbaa !180
  %i.acg = load ptr, ptr %3, align 8, !tbaa !53   ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.a
  br i1 %i.ach, label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELj64EED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit
  call void @free(ptr noundef %i.acg) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELj64EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELj64EED2Ev.exit: ; preds = %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.0634.52, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.37.4, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1552) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not.i73 = icmp eq i32 %i.b, 0
  br i1 %.not.i73, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.bp, %bb.l ] ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !53
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 15 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !29    ; 2 uses
  switch i8 %i.k, label %bb.l [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !29
  %i.o = zext i16 %i.n to i64
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load i64, ptr %i.l, align 4
  store i64 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %i.a, align 8, !tbaa !55
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = zext i16 %i.v to i64
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load i64, ptr %i.t, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !55
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !78
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !75
  %i.ah = add i32 %i.f, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !55
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !159 ; 2 uses
  %i.ai = add i32 %i.f, -1
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !55
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !140
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store i64 %.sroa.4.0.copyload, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.2.0.extract.shift.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !78
  %i.at = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.au, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !183, !range !89, !noundef !90
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = icmp eq i8 %i.k, 4
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bf = select i1 %i.bc, i64 -1, i64 1
  %i.bg = getelementptr inbounds i8, ptr %i.az, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bi = select i1 %i.bc, i64 1, i64 -1
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 %i.bi ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.bg, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bk, align 8, !tbaa !78
  %i.bl = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !75
  br label %.thread48

.sink.split:                                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink108 = phi i32 [ %i.s, %bb.c ], [ %i.aa, %bb.d ], [ %i.f, %bb.g ]
  %i.bo = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bp = phi i32 [ %i.f, %bb.b ], [ %i.bo, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.av, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
  ret i16 %.sroa.6.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex18bracketMatchesCharINS0_16ASCIIRegexTraitsEEEbRKNS0_7ContextIT_EEPKNS0_11BracketInsnEPKNS0_14BracketRange32ENS4_9CodePointE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1               ; 14 uses
  %i.c = and i8 %i.b, 126
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %.split61.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %3, -33
  %i.e = add i8 %i.d, -65
  %or.cond19.i = icmp ult i8 %i.e, 26
  %i.f = add i8 %3, -48
  %or.cond8.i = icmp ult i8 %i.f, 10              ; 3 uses
  %i.g = icmp eq i8 %3, 95
  %i.h = or i1 %or.cond19.i, %i.g
  %i.i = or i1 %i.h, %or.cond8.i
  br i1 %i.i, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.j = and i8 %i.b, 2
  %.not35.us = icmp eq i8 %i.j, 0
  %i.k = and i8 %i.b, 16                          ; 2 uses
  br i1 %.not35.us, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us, label %bb.c

bb.c:                                             ; preds = %.split.us.preheader
  %.not36.us125 = icmp ne i8 %i.k, 0
  %or.cond126.not = or i1 %.not36.us125, %or.cond8.i
  br i1 %or.cond126.not, label %.thread53, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us: ; preds = %.split.us.preheader
  %.not36.us = icmp eq i8 %i.k, 0
end_hunk_1
