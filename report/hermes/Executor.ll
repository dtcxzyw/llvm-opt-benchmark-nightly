inline.NumInlined: 1116
inline.NumDeleted: 393
begin_hunk_0_@_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE5matchEPNS0_5StateIS2_EEb:bb.a
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

.415.si.unfold.true.jt11:                         ; preds = %.critedge414
  %i.ahy = and i16 %i.zt, 256
  %.not940 = icmp eq i16 %i.ahy, 0
  br i1 %.not940, label %.critedge409.thread894, label %.backedge

.backedge:                                        ; preds = %bb.fx, %bb.df, %.thread849, %bb.gn, %bb.dn, %bb.gq, %bb.cs, %bb.f, %bb.j, %bb.m, %bb.cy, %bb.q, %bb.w, %bb.cx, %bb.cq, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit, %bb.ad, %bb.dg, %bb.cp, %bb.fq, %bb.ah, %bb.au, %bb.cf, %bb.bs, %bb.am, %bb.do, %.thread802, %bb.dy, %.split974.us, %bb.fk, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit569, %.thread806, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586, %.thread865, %.thread843, %bb.bc, %bb.bj, %.thread836, %bb.g, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751, %bb.n, %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit, %bb.x, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit, %bb.ai, %bb.an, %bb.av, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEDs.exit.thread, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEDs.exit.thread, %bb.bt, %.loopexit, %.loopexit960, %bb.by, %bb.ct, %bb.fj, %bb.ft, %bb.gp, %.415.si.unfold.true.jt11
  %.sroa.0718.49.jt0 = phi i8 [ %.sroa.0718.50, %bb.fx ], [ %.sroa.0718.50, %bb.df ], [ %.sroa.0718.50, %.thread849 ], [ %.sroa.0718.50, %bb.gn ], [ %.sroa.0718.50, %bb.dn ], [ %.sroa.0718.50, %bb.gq ], [ %.sroa.0718.50, %bb.cs ], [ %.sroa.0718.50, %bb.f ], [ %.sroa.0718.50, %bb.j ], [ %.sroa.0718.50, %bb.m ], [ %.sroa.0718.50, %bb.cy ], [ %.sroa.0718.50, %bb.q ], [ %.sroa.0718.50, %bb.w ], [ %.sroa.0718.50, %bb.cx ], [ %.sroa.0718.50, %bb.cq ], [ %.sroa.0718.50, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit ], [ %.sroa.0718.50, %bb.ad ], [ %.sroa.0718.50, %bb.dg ], [ %.sroa.0718.50, %bb.cp ], [ %.sroa.0718.50, %bb.fq ], [ %.sroa.0718.50, %bb.ah ], [ %.sroa.0718.50, %bb.gp ], [ %.sroa.0718.50, %bb.au ], [ %.sroa.0718.50, %bb.cf ], [ %.sroa.0718.50, %bb.bs ], [ %.sroa.0718.50, %bb.am ], [ %.sroa.0718.50, %bb.do ], [ %.sroa.0718.50, %.thread802 ], [ %.sroa.0718.50, %bb.dy ], [ %.sroa.0718.50, %.split974.us ], [ %.sroa.0718.33, %bb.fk ], [ %.sroa.0718.50, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit569 ], [ %.sroa.0718.50, %.thread806 ], [ %.sroa.0718.50, %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit586 ], [ %.sroa.0718.50, %.thread865 ], [ %.sroa.0718.50, %.thread843 ], [ %.sroa.0718.50, %bb.bc ], [ %.sroa.0718.50, %bb.bj ], [ %.sroa.0718.50, %.thread836 ], [ %.sroa.0718.50, %bb.g ], [ %.sroa.0718.50, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751 ], [ %.sroa.0718.50, %bb.n ], [ %.sroa.0718.50, %_ZN6hermes5regex6CursorINS0_16UTF16RegexTraitsEE12consumeUTF16Ev.exit ], [ %.sroa.0718.50, %bb.x ], [ %.sroa.0718.50, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit ], [ %.sroa.0718.50, %bb.ai ], [ %.sroa.0718.50, %bb.an ], [ %.sroa.0718.50, %bb.av ], [ %.sroa.0718.50, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEDs.exit.thread ], [ %.sroa.0718.50, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEDs.exit.thread ], [ %.sroa.0718.50, %bb.bt ], [ %.sroa.0718.50, %.loopexit ], [ %.sroa.0718.50, %.loopexit960 ], [ %.sroa.0718.50, %bb.by ], [ %.sroa.0718.50, %bb.ct ], [ %.sroa.0718.33, %bb.fj ], [ %.sroa.0718.50, %bb.ft ], [ %.sroa.0718.50, %.415.si.unfold.true.jt11 ]
  %.pre = load i32, ptr %i.f, align 8, !tbaa !39
  br label %bb.gq

bb.gq:                                            ; preds = %.backedge, %bb.b
  %i.ahz = phi i32 [ %i.g, %bb.b ], [ %.pre, %.backedge ] ; 21 uses
  %.sroa.0718.50 = phi i8 [ %.sroa.0718.0982, %bb.b ], [ %.sroa.0718.49.jt0, %.backedge ] ; 83 uses
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

.critedge409.thread894:                           ; preds = %.415.si.unfold.true.jt11, %bb.ft, %bb.fj, %bb.gp, %bb.cf, %bb.fq, %bb.dn, %bb.df, %bb.by, %bb.bs, %bb.au, %bb.cx, %bb.bj, %bb.bc, %bb.am, %bb.ah, %bb.ad, %bb.w, %bb.q, %bb.m, %bb.j, %bb.f, %bb.cs
  %.sroa.0718.49891.ph = phi i8 [ %.sroa.0718.50, %bb.cx ], [ %.sroa.0718.50, %bb.cs ], [ %.sroa.0718.50, %bb.f ], [ %.sroa.0718.50, %bb.j ], [ %.sroa.0718.50, %bb.m ], [ %.sroa.0718.50, %bb.q ], [ %.sroa.0718.50, %bb.w ], [ %.sroa.0718.50, %bb.ad ], [ %.sroa.0718.50, %bb.ah ], [ %.sroa.0718.50, %bb.am ], [ %.sroa.0718.50, %bb.bc ], [ %.sroa.0718.50, %bb.bj ], [ %.sroa.0718.50, %.415.si.unfold.true.jt11 ], [ %.sroa.0718.50, %bb.ft ], [ %.sroa.0718.33, %bb.fj ], [ %.sroa.0718.50, %bb.gp ], [ %.sroa.0718.50, %bb.cf ], [ %.sroa.0718.50, %bb.fq ], [ %.sroa.0718.50, %bb.dn ], [ %.sroa.0718.50, %bb.df ], [ %.sroa.0718.50, %bb.by ], [ %.sroa.0718.50, %bb.bs ], [ %.sroa.0718.50, %bb.au ]
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

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit: ; preds = %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit, %bb.gl, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577, %bb.ge, %bb.gb, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572, %bb.dr, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i506, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.co, %bb.go, %bb.gf, %bb.fs, %bb.fv, %bb.fp, %bb.fi, %bb.dm, %bb.de, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit, %.critedge402, %bb.at, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit, %bb.gm, %bb.cr, %bb.bi, %bb.bb, %bb.al, %bb.ag, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit, %bb.p, %bb.l, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, %bb.gq, %bb.cw, %.critedge414, %bb.a
  %.sroa.0718.52 = phi i8 [ %.sroa.0629.0.extract.trunc, %.critedge414 ], [ 1, %bb.a ], [ 1, %bb.gl ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589 ], [ 1, %bb.ge ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572 ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i506 ], [ 1, %bb.co ], [ %.sroa.0596.0.extract.trunc, %bb.gm ], [ %.sroa.0718.32, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit ], [ %.sroa.0686.0.extract.trunc, %bb.at ], [ %.sroa.0677.0.extract.trunc, %.critedge402 ], [ %.sroa.0674.0.extract.trunc, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ %.sroa.0671.0.extract.trunc, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ %.sroa.0657.0.extract.trunc, %bb.de ], [ %.sroa.0654.0.extract.trunc, %bb.dm ], [ %.sroa.0617.0.extract.trunc, %bb.fi ], [ %.sroa.0614.0.extract.trunc, %bb.fp ], [ 1, %bb.gb ], [ %i.aes, %bb.fv ], [ %.sroa.0611.0.extract.trunc, %bb.fs ], [ %i.agm, %bb.gf ], [ %.sroa.0.0.extract.trunc, %bb.go ], [ %.sroa.0660.0.extract.trunc, %bb.cw ], [ %i.aic, %bb.gq ], [ %.sroa.0710.0.extract.trunc, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit ], [ %.sroa.0707.0.extract.trunc, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0704.0.extract.trunc, %bb.l ], [ %.sroa.0701.0.extract.trunc, %bb.p ], [ %.sroa.0698.0.extract.trunc, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit ], [ %.sroa.0695.0.extract.trunc, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread ], [ %.sroa.0692.0.extract.trunc, %bb.ag ], [ %.sroa.0689.0.extract.trunc, %bb.al ], [ %.sroa.0683.0.extract.trunc, %bb.bb ], [ %.sroa.0680.0.extract.trunc, %bb.bi ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577 ], [ %.sroa.0663.0.extract.trunc, %bb.cr ], [ 1, %bb.dr ], [ 0, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %.sroa.37.4 = phi ptr [ undef, %.critedge414 ], [ undef, %bb.a ], [ undef, %bb.gl ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i589 ], [ undef, %bb.ge ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i572 ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i506 ], [ undef, %bb.co ], [ undef, %bb.gm ], [ undef, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit ], [ undef, %bb.at ], [ undef, %.critedge402 ], [ undef, %_ZN6hermes5regex13matchesNChar8INS0_16UTF16RegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ undef, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ undef, %bb.de ], [ undef, %bb.dm ], [ undef, %bb.fi ], [ undef, %bb.fp ], [ undef, %bb.gb ], [ undef, %bb.fv ], [ undef, %bb.fs ], [ undef, %bb.gf ], [ undef, %bb.go ], [ undef, %bb.cw ], [ %i.at, %bb.gq ], [ undef, %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit ], [ undef, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ undef, %bb.l ], [ undef, %bb.p ], [ undef, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE5EEEbPKNS0_4InsnEDs.exit ], [ undef, %_ZN6hermes5regex16isLineTerminatorIjEEbT_.exit.thread ], [ undef, %bb.ag ], [ undef, %bb.al ], [ undef, %bb.bb ], [ undef, %bb.bi ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i577 ], [ undef, %bb.cr ], [ undef, %bb.dr ], [ null, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not.i73 = icmp eq i32 %i.b, 0
  br i1 %.not.i73, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.bn, %bb.l ] ; 5 uses
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
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29
  %i.v = zext i16 %i.u to i64
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.s, align 4
  store i64 %i.y, ptr %i.x, align 4
  br label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !56
  %i.ac = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !39
  %i.af = add i32 %i.f, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !55
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !159 ; 2 uses
  %i.ag = add i32 %i.f, -1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !55
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !140
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store i64 %.sroa.4.0.copyload, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.am, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.2.0.extract.shift.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !56
  %i.ar = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.as = zext i8 %i.ar to i16
  %i.at = or disjoint i16 %i.as, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.c, align 8, !tbaa !88, !range !89, !noundef !90
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = icmp eq i8 %i.k, 4
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bd = select i1 %i.ba, i64 -1, i64 1
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bg = select i1 %i.ba, i64 1, i64 -1
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.be, %bb.i ], [ %i.bh, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bi, align 8, !tbaa !56
  %i.bj = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !39
  br label %.thread48

.sink.split.sink.split:                           ; preds = %bb.c, %bb.d
  %3 = load i32, ptr %i.a, align 8, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g
  %.sink108 = phi i32 [ %i.f, %bb.g ], [ %3, %.sink.split.sink.split ]
  %i.bm = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bn = phi i32 [ %i.f, %bb.b ], [ %i.bm, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.at, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
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

bb.c:                                             ; preds = %bb.b
  %.not3659 = icmp ne i8 %i.l, 0
  %or.cond61.not = or i1 %.not3659, %or.cond5.i
  br i1 %or.cond61.not, label %.thread55, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46: ; preds = %bb.b
  %.not36 = icmp eq i8 %i.l, 0
  %brmerge = or i1 %.not36, %or.cond5.i
  br i1 %brmerge, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread, label %.thread55

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46, %bb.c
  %i.m = and i8 %i.b, 4
  %.not35.1 = icmp eq i8 %i.m, 0
  br i1 %.not35.1, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread
  switch i32 %3, label %bb.e [
    i32 65279, label %.thread55
    i32 5760, label %.thread55
    i32 160, label %.thread55
    i32 32, label %.thread55
    i32 12, label %.thread55
    i32 11, label %.thread55
    i32 9, label %.thread55
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %or.cond13.i.i, label %.thread55, label %switch.early.test.i.i.1

switch.early.test.i.i.1:                          ; preds = %bb.e
  switch i32 %3, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1 [
    i32 8287, label %.thread55
    i32 8239, label %.thread55
    i32 12288, label %.thread55
    i32 8232, label %.thread55
    i32 13, label %.thread55
    i32 10, label %.thread55
    i32 8233, label %.thread55
  ]

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1: ; preds = %switch.early.test.i.i.1, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread
  %i.n = and i8 %i.b, 32
  %.not36.1 = icmp eq i8 %i.n, 0
  br i1 %.not36.1, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1
  switch i32 %3, label %bb.g [
    i32 65279, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 5760, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 160, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 32, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 12, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 11, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 9, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %or.cond13.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1, label %switch.early.test.i.i42.1

switch.early.test.i.i42.1:                        ; preds = %bb.g
  switch i32 %3, label %.thread55 [
    i32 8287, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 8239, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 12288, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 8232, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 13, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 10, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 8233, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  ]

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1: ; preds = %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1
  %i.o = and i8 %i.b, 8
  %.not35.2 = icmp eq i8 %i.o, 0
  %i.p = and i8 %i.b, 64                          ; 2 uses
  br i1 %.not35.2, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  %.not36.260 = icmp ne i8 %i.p, 0
  %or.cond62.not = or i1 %.not36.260, %i.i
  br i1 %or.cond62.not, label %.thread55, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  %.not36.2 = icmp eq i8 %i.p, 0
  %brmerge63 = or i1 %.not36.2, %i.i
  br i1 %brmerge63, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, label %.thread55

.thread55:                                        ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2, %switch.early.test.i.i42.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c
  %.2.ph.in = and i8 %i.b, 1
  %.2.ph = icmp eq i8 %.2.ph.in, 0
  br label %bb.i

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i32, ptr %i.q, align 1, !tbaa !118  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx.i.i = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not20.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not20.not.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, %.critedge.i.i
  %.01421.i.i = phi ptr [ %i.x, %.critedge.i.i ], [ %2, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2 ] ; 3 uses
  %i.u = load i32, ptr %.01421.i.i, align 1, !tbaa !161
  %.not16.i.i = icmp ugt i32 %i.u, %3
  br i1 %.not16.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !163
  %.not17.i.i = icmp ugt i32 %3, %i.w
  br i1 %.not17.i.i, label %.critedge.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit

.critedge.i.i:                                    ; preds = %bb.h, %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not.not.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit, label %.lr.ph.i.i

_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit: ; preds = %bb.h, %.critedge.i.i, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2
  %.not.lcssa.i.i = phi i1 [ false, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2 ], [ false, %.critedge.i.i ], [ true, %bb.h ]
  %i.y = trunc i8 %i.b to i1
  %i.z = xor i1 %.not.lcssa.i.i, %i.y
  br label %bb.i

bb.i:                                             ; preds = %.thread55, %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit
  %.3 = phi i1 [ %i.z, %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit ], [ %.2.ph, %.thread55 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1552) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i32, ptr %i.a, align 1, !tbaa !140  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = zext i32 %i.b to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = trunc i32 %i.b to i16
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %.pre.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !53
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o ; 3 uses
  store i8 1, ptr %i.p, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
end_hunk_0
begin_hunk_1_@_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE5matchEPNS0_5StateIS2_EEb:bb.a
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.ev, !prof !115

bb.ev:                                            ; preds = %bb.eu
  %i.aak = add i32 %i.aai, -1
  store i32 %i.aak, ptr %i.w, align 4, !tbaa !74
  %i.aal = call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %.03511095, ptr noundef nonnull align 8 dereferenceable(1552) %3) ; 2 uses
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

.410.si.unfold.true.jt11:                         ; preds = %.critedge409
  %i.abx = and i16 %i.tv, 256
  %.not855 = icmp eq i16 %i.abx, 0
  br i1 %.not855, label %.critedge404.thread809, label %.backedge

.backedge:                                        ; preds = %bb.en, %bb.cj, %.thread764, %bb.fd, %bb.cr, %bb.fg, %bb.bz, %bb.e, %bb.h, %bb.l, %bb.cf, %bb.p, %bb.u, %bb.ce, %bb.bx, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit, %bb.z, %bb.ck, %bb.bw, %bb.eg, %bb.ae, %bb.ao, %bb.bm, %bb.bb, %bb.aj, %bb.cs, %.thread717, %bb.dc, %.split888.us, %bb.ea, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit489, %.thread721, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506, %.thread780, %.thread758, %bb.at, %bb.ax, %.thread751, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %bb.i, %bb.m, %bb.q, %bb.v, %bb.aa, %bb.af, %bb.ak, %bb.ap, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEc.exit.thread, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEc.exit.thread, %bb.bc, %.loopexit, %.loopexit874, %bb.bh, %bb.ca, %bb.dz, %bb.ej, %bb.ff, %.410.si.unfold.true.jt11
  %.sroa.0634.49.jt0 = phi i8 [ %.sroa.0634.50, %bb.en ], [ %.sroa.0634.50, %bb.cj ], [ %.sroa.0634.50, %.thread764 ], [ %.sroa.0634.50, %bb.fd ], [ %.sroa.0634.50, %bb.cr ], [ %.sroa.0634.50, %bb.fg ], [ %.sroa.0634.50, %bb.bz ], [ %.sroa.0634.50, %bb.e ], [ %.sroa.0634.50, %bb.h ], [ %.sroa.0634.50, %bb.l ], [ %.sroa.0634.50, %bb.cf ], [ %.sroa.0634.50, %bb.p ], [ %.sroa.0634.50, %bb.u ], [ %.sroa.0634.50, %bb.ce ], [ %.sroa.0634.50, %bb.bx ], [ %.sroa.0634.50, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit ], [ %.sroa.0634.50, %bb.z ], [ %.sroa.0634.50, %bb.ck ], [ %.sroa.0634.50, %bb.bw ], [ %.sroa.0634.50, %bb.eg ], [ %.sroa.0634.50, %bb.ae ], [ %.sroa.0634.50, %bb.ff ], [ %.sroa.0634.50, %bb.ao ], [ %.sroa.0634.50, %bb.bm ], [ %.sroa.0634.50, %bb.bb ], [ %.sroa.0634.50, %bb.aj ], [ %.sroa.0634.50, %bb.cs ], [ %.sroa.0634.50, %.thread717 ], [ %.sroa.0634.50, %bb.dc ], [ %.sroa.0634.50, %.split888.us ], [ %.sroa.0634.33, %bb.ea ], [ %.sroa.0634.50, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit489 ], [ %.sroa.0634.50, %.thread721 ], [ %.sroa.0634.50, %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit506 ], [ %.sroa.0634.50, %.thread780 ], [ %.sroa.0634.50, %.thread758 ], [ %.sroa.0634.50, %bb.at ], [ %.sroa.0634.50, %bb.ax ], [ %.sroa.0634.50, %.thread751 ], [ %.sroa.0634.50, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0634.50, %bb.i ], [ %.sroa.0634.50, %bb.m ], [ %.sroa.0634.50, %bb.q ], [ %.sroa.0634.50, %bb.v ], [ %.sroa.0634.50, %bb.aa ], [ %.sroa.0634.50, %bb.af ], [ %.sroa.0634.50, %bb.ak ], [ %.sroa.0634.50, %bb.ap ], [ %.sroa.0634.50, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE12EEEbPKNS0_4InsnEc.exit.thread ], [ %.sroa.0634.50, %_ZNK6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE11matchWidth1ILNS0_12Width1OpcodeE13EEEbPKNS0_4InsnEc.exit.thread ], [ %.sroa.0634.50, %bb.bc ], [ %.sroa.0634.50, %.loopexit ], [ %.sroa.0634.50, %.loopexit874 ], [ %.sroa.0634.50, %bb.bh ], [ %.sroa.0634.50, %bb.ca ], [ %.sroa.0634.33, %bb.dz ], [ %.sroa.0634.50, %bb.ej ], [ %.sroa.0634.50, %.410.si.unfold.true.jt11 ]
  %.pre = load i32, ptr %i.f, align 8, !tbaa !75
  br label %bb.fg

bb.fg:                                            ; preds = %.backedge, %bb.b
  %i.aby = phi i32 [ %i.g, %bb.b ], [ %.pre, %.backedge ] ; 22 uses
  %.sroa.0634.50 = phi i8 [ %.sroa.0634.01007, %bb.b ], [ %.sroa.0634.49.jt0, %.backedge ] ; 83 uses
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

.critedge404.thread809:                           ; preds = %.410.si.unfold.true.jt11, %bb.ej, %bb.dz, %bb.ff, %bb.bm, %bb.eg, %bb.cr, %bb.cj, %bb.bh, %bb.bb, %bb.ao, %bb.ce, %bb.ax, %bb.at, %bb.aj, %bb.ae, %bb.z, %bb.u, %bb.p, %bb.l, %bb.h, %bb.e, %bb.bz
  %.sroa.0634.49806.ph = phi i8 [ %.sroa.0634.50, %bb.ce ], [ %.sroa.0634.50, %bb.bz ], [ %.sroa.0634.50, %bb.e ], [ %.sroa.0634.50, %bb.h ], [ %.sroa.0634.50, %bb.l ], [ %.sroa.0634.50, %bb.p ], [ %.sroa.0634.50, %bb.u ], [ %.sroa.0634.50, %bb.z ], [ %.sroa.0634.50, %bb.ae ], [ %.sroa.0634.50, %bb.aj ], [ %.sroa.0634.50, %bb.at ], [ %.sroa.0634.50, %bb.ax ], [ %.sroa.0634.50, %.410.si.unfold.true.jt11 ], [ %.sroa.0634.50, %bb.ej ], [ %.sroa.0634.33, %bb.dz ], [ %.sroa.0634.50, %bb.ff ], [ %.sroa.0634.50, %bb.bm ], [ %.sroa.0634.50, %bb.eg ], [ %.sroa.0634.50, %bb.cr ], [ %.sroa.0634.50, %bb.cj ], [ %.sroa.0634.50, %bb.bh ], [ %.sroa.0634.50, %bb.bb ], [ %.sroa.0634.50, %bb.ao ]
  %i.acc = add nuw nsw i64 %.03501008, 1
  %exitcond1021.not = icmp eq i64 %.03501008, %i.aq
  br i1 %exitcond1021.not, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %bb.b, !llvm.loop !188

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit: ; preds = %bb.fg
  %i.acd = getelementptr inbounds nuw i8, ptr %i.i, i64 %.03501008
  br label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit

_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit: ; preds = %.critedge404.thread809, %.critedge409, %bb.fb, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497, %bb.eu, %bb.er, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492, %bb.cv, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i456, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.bv, %bb.fe, %bb.ev, %bb.ei, %bb.el, %bb.ef, %bb.dy, %bb.cq, %bb.ci, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit, %.critedge397, %bb.an, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit, %bb.fc, %bb.by, %bb.aw, %bb.as, %bb.ai, %bb.ad, %bb.y, %bb.t, %bb.o, %bb.k, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread665, %bb.cd, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit, %bb.a
  %.sroa.0634.52 = phi i8 [ %.sroa.0577.0.extract.trunc, %bb.cd ], [ 1, %bb.a ], [ 0, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit ], [ %.sroa.0627.0.extract.trunc, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread665 ], [ 1, %bb.fb ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509 ], [ 1, %bb.eu ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492 ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i456 ], [ 1, %bb.bv ], [ %.sroa.0513.0.extract.trunc, %bb.fc ], [ %.sroa.0634.32, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ %.sroa.0603.0.extract.trunc, %bb.an ], [ %.sroa.0594.0.extract.trunc, %.critedge397 ], [ %.sroa.0591.0.extract.trunc, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ %.sroa.0588.0.extract.trunc, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ %.sroa.0574.0.extract.trunc, %bb.ci ], [ %.sroa.0571.0.extract.trunc, %bb.cq ], [ %.sroa.0534.0.extract.trunc, %bb.dy ], [ %.sroa.0531.0.extract.trunc, %bb.ef ], [ 1, %bb.er ], [ %i.ys, %bb.el ], [ %.sroa.0528.0.extract.trunc, %bb.ei ], [ %i.aal, %bb.ev ], [ %.sroa.0.0.extract.trunc, %bb.fe ], [ %.sroa.0546.0.extract.trunc, %.critedge409 ], [ %.sroa.0624.0.extract.trunc, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ %.sroa.0621.0.extract.trunc, %bb.k ], [ %.sroa.0618.0.extract.trunc, %bb.o ], [ %.sroa.0615.0.extract.trunc, %bb.t ], [ %.sroa.0612.0.extract.trunc, %bb.y ], [ %.sroa.0609.0.extract.trunc, %bb.ad ], [ %.sroa.0606.0.extract.trunc, %bb.ai ], [ %.sroa.0600.0.extract.trunc, %bb.as ], [ %.sroa.0597.0.extract.trunc, %bb.aw ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497 ], [ %.sroa.0580.0.extract.trunc, %bb.by ], [ 1, %bb.cv ], [ 0, %.critedge404.thread809 ]
  %.sroa.37.4 = phi ptr [ undef, %.critedge409 ], [ undef, %bb.a ], [ %i.acd, %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16ASCIIRegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit.loopexit.split.loop.exit ], [ undef, %bb.cd ], [ undef, %_ZN6hermes5regex17matchesLeftAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread665 ], [ undef, %_ZN6hermes5regex18matchesRightAnchorINS0_16ASCIIRegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread ], [ undef, %bb.k ], [ undef, %bb.o ], [ undef, %bb.t ], [ undef, %bb.y ], [ undef, %bb.ad ], [ undef, %bb.ai ], [ undef, %bb.as ], [ undef, %bb.aw ], [ undef, %bb.by ], [ undef, %bb.fc ], [ undef, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ undef, %bb.an ], [ undef, %.critedge397 ], [ undef, %_ZN6hermes5regex13matchesNChar8INS0_16ASCIIRegexTraitsEEEbPKNS0_15MatchNChar8InsnERNS0_5StateIT_EE.exit ], [ undef, %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE18matchesNCharICase8EPKNS0_20MatchNCharICase8InsnERNS0_5StateIS2_EE.exit ], [ undef, %bb.ci ], [ undef, %bb.cq ], [ undef, %bb.dy ], [ undef, %bb.ef ], [ undef, %bb.el ], [ undef, %bb.ei ], [ undef, %bb.ev ], [ undef, %bb.fe ], [ undef, %bb.bv ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i456 ], [ undef, %bb.cv ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i492 ], [ undef, %bb.er ], [ undef, %bb.eu ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i497 ], [ undef, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i509 ], [ undef, %bb.fb ], [ null, %.critedge404.thread809 ]
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not.i73 = icmp eq i32 %i.b, 0
  br i1 %.not.i73, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.bn, %bb.l ] ; 5 uses
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
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29
  %i.v = zext i16 %i.u to i64
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.s, align 4
  store i64 %i.y, ptr %i.x, align 4
  br label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !75
  %i.af = add i32 %i.f, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !55
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !159 ; 2 uses
  %i.ag = add i32 %i.f, -1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !55
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !140
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store i64 %.sroa.4.0.copyload, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.am, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.2.0.extract.shift.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !78
  %i.ar = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.as = zext i8 %i.ar to i16
  %i.at = or disjoint i16 %i.as, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.c, align 8, !tbaa !183, !range !89, !noundef !90
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = icmp eq i8 %i.k, 4
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bd = select i1 %i.ba, i64 -1, i64 1
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bg = select i1 %i.ba, i64 1, i64 -1
  %i.bh = getelementptr inbounds i8, ptr %i.av, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.be, %bb.i ], [ %i.bh, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bi, align 8, !tbaa !78
  %i.bj = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !75
  br label %.thread48

.sink.split.sink.split:                           ; preds = %bb.c, %bb.d
  %3 = load i32, ptr %i.a, align 8, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g
  %.sink108 = phi i32 [ %i.f, %bb.g ], [ %3, %.sink.split.sink.split ]
  %i.bm = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bn = phi i32 [ %i.f, %bb.b ], [ %i.bm, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.at, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
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
  %brmerge = or i1 %.not36.us, %or.cond8.i
  br i1 %brmerge, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us, label %.thread53

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us: ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us, %bb.c
  %i.l = and i8 %i.b, 4
  %.not35.us.1 = icmp eq i8 %i.l, 0
  br i1 %.not35.us.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us
  switch i8 %3, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1 [
    i8 32, label %.thread53
    i8 9, label %.thread53
    i8 13, label %.thread53
    i8 10, label %.thread53
    i8 11, label %.thread53
    i8 12, label %.thread53
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1: ; preds = %bb.d, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us
  %i.m = and i8 %i.b, 32
  %.not36.us.1 = icmp eq i8 %i.m, 0
  br i1 %.not36.us.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1
  switch i8 %3, label %.thread53 [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1: ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1
  %i.n = and i8 %i.b, 8
  %.not35.us.2 = icmp eq i8 %i.n, 0
  br i1 %.not35.us.2, label %.split61.us, label %.thread53

.split:                                           ; preds = %bb.b
  switch i8 %3, label %.split.split.split.split.preheader [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67: ; preds = %.split, %.split, %.split, %.split, %.split, %.split
  %i.o = and i8 %i.b, 20
  %or.cond127 = icmp eq i8 %i.o, 0
  br i1 %or.cond127, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1, label %.thread53

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1: ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
  %i.p = and i8 %i.b, 32
  %.not36.us68.1 = icmp eq i8 %i.p, 0
  br i1 %.not36.us68.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1
  switch i8 %3, label %.thread53 [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2: ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = and i8 %i.b, 64
  %.not36.us68.2 = icmp eq i8 %i.q, 0
  br i1 %.not36.us68.2, label %.split61.us, label %.thread53

.split.split.split.split.preheader:               ; preds = %.split
  %i.r = and i8 %i.b, 16
  %.not36 = icmp eq i8 %i.r, 0
  br i1 %.not36, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread, label %.thread53

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread: ; preds = %.split.split.split.split.preheader
  %i.s = and i8 %i.b, 32
  %.not36.1 = icmp eq i8 %i.s, 0
  br i1 %.not36.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread
  switch i8 %3, label %.thread53 [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1: ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread
  %i.t = and i8 %i.b, 64
  %.not36.2 = icmp eq i8 %i.t, 0
  br i1 %.not36.2, label %.split61.us, label %.thread53

.thread53:                                        ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us, %bb.f, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2, %bb.g, %.split.split.split.split.preheader, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1, %bb.c, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.e, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
  %.2.ph.in = and i8 %i.b, 1
  %.2.ph = icmp eq i8 %.2.ph.in, 0
  br label %bb.i

.split61.us:                                      ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i32, ptr %i.u, align 1, !tbaa !118  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = zext i8 %3 to i32                        ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not20.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not20.not.i.i, label %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split61.us, %.critedge.i.i
  %.01421.i.i = phi ptr [ %i.ac, %.critedge.i.i ], [ %2, %.split61.us ] ; 3 uses
  %i.z = load i32, ptr %.01421.i.i, align 1, !tbaa !161
  %.not16.i.i = icmp ugt i32 %i.z, %i.x
  br i1 %.not16.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !163
  %.not17.i.i = icmp ult i32 %i.ab, %i.x
  br i1 %.not17.i.i, label %.critedge.i.i, label %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit

.critedge.i.i:                                    ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.not.i.i, label %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit, label %.lr.ph.i.i

_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit: ; preds = %bb.h, %.critedge.i.i, %.split61.us
  %.not.lcssa.i.i = phi i1 [ false, %.split61.us ], [ false, %.critedge.i.i ], [ true, %bb.h ]
  %i.ad = trunc i8 %i.b to i1
  %i.ae = xor i1 %.not.lcssa.i.i, %i.ad
  br label %bb.i

bb.i:                                             ; preds = %.thread53, %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit
  %.3 = phi i1 [ %i.ae, %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit ], [ %.2.ph, %.thread53 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1552) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i32, ptr %i.a, align 1, !tbaa !140  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = zext i32 %i.b to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = trunc i32 %i.b to i16
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
end_hunk_1
