inline.NumInlined: 1874
inline.NumDeleted: 793
begin_hunk_0_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  %i.ai = phi ptr [ %i.p, %.lr.ph192 ], [ %i.jx, %bb.bz ] ; 4 uses
  %i.aj = phi ptr [ %i.m, %.lr.ph192 ], [ %i.jw, %bb.bz ] ; 3 uses
  %.0190 = phi i16 [ %i.l, %.lr.ph192 ], [ %.5, %bb.bz ] ; 2 uses
  %.sroa.0.0189 = phi i32 [ undef, %.lr.ph192 ], [ %.sroa.0.3, %bb.bz ] ; 4 uses
  %i.ak = add i16 %.0190, 12015
  %i.al = icmp ult i16 %i.ak, 2
  br i1 %i.al, label %bb.d, label %.critedge
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  %i.fr = phi ptr [ %.pre255.a, %bb.bl ], [ %i.fk, %.preheader ] ; 2 uses
  %i.fs = phi ptr [ %i.hs, %bb.bl ], [ %i.fj, %.preheader ]
  %i.ft = phi ptr [ %.pre, %bb.bl ], [ %i.fg, %.preheader ]
  %.sroa.0.1183 = phi i32 [ %.sroa.0.0.insert.insert, %bb.bl ], [ %.sroa.0.0189, %.preheader ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
bb.ba:                                            ; preds = %.lr.ph
  %i.gb = load i16, ptr %i.fr, align 1
  store ptr %i.fu, ptr %i.fs, align 8
  %.sroa.0.0.insert.ext = zext i16 %i.gb to i32
  %.sroa.0.0.insert.mask = and i32 %.sroa.0.1183, -65536
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.0.insert.mask, %.sroa.0.0.insert.ext ; 5 uses
  %i.gc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  br i1 %.not.i61, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %.sroa.0.0.insert.insert, ptr %i.gm, align 4
  %.sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store float %i.gl, ptr %.sroa_idx77, align 4
  %i.go = load ptr, ptr %i.x, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a

.noexc64:                                         ; preds = %_ZNKSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %i.gt ; 3 uses
  store i32 %.sroa.0.0.insert.insert, ptr %i.hc, align 4
  %.sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %i.gl, ptr %.sroa_idx79, align 4
  %i.hd = icmp sgt i64 %i.gt, 0
end_hunk_4
begin_hunk_5_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.bl, %.preheader
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.0189, %.preheader ], [ %.sroa.0.0.insert.insert, %bb.bl ] ; 2 uses
  %.1.lcssa = phi i16 [ %i.ff, %.preheader ], [ %i.hq, %bb.bl ] ; 2 uses
  %.lcssa109 = phi ptr [ %i.fg, %.preheader ], [ %.pre, %bb.bl ]
  %.lcssa104 = phi ptr [ %i.fj, %.preheader ], [ %i.hs, %bb.bl ]
end_hunk_5
begin_hunk_6_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  br label %.body51

_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit: ; preds = %bb.bj, %bb.bm, %._crit_edge, %bb.aw
  %.sroa.0.2 = phi i32 [ %.sroa.0.0189, %bb.aw ], [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.1.lcssa, %bb.bm ], [ %.sroa.0.0.insert.insert, %bb.bj ]
  %.3 = phi i16 [ -12014, %bb.aw ], [ %.1.lcssa, %._crit_edge ], [ %.1.lcssa, %bb.bm ], [ -12013, %bb.bj ]
  %i.ia = load ptr, ptr %i.z, align 8             ; 6 uses
  %i.ib = load ptr, ptr %i.aa, align 8
end_hunk_6
begin_hunk_7_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  br label %common.resume

bb.bx:                                            ; preds = %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit, %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit ], [ %.sroa.0.0189, %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit ]
  %.4 = phi i16 [ %.3, %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit ], [ -12015, %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit ]
  %i.jk = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
end_hunk_7
begin_hunk_8_@_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.06.i.i = phi ptr [ %i.bp, %bb.p ], [ %i.bu, %bb.q ] ; 2 uses
  %.0.i.i = phi ptr [ %.pre, %bb.p ], [ %i.bq, %bb.q ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.br = load i8, ptr %.0.i.i, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = call i32 @tolower(i32 noundef %i.bs) #27 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.bv = load i8, ptr %.06.i.i, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = call i32 @tolower(i32 noundef %i.bw) #27
  %i.by = and i32 %i.bt, 255
end_hunk_8
begin_hunk_9_@_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.k = load i8, ptr %.0.i, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @tolower(i32 noundef %i.l) #27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.o = load i8, ptr %.06.i, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @tolower(i32 noundef %i.p) #27
  %i.r = and i32 %i.m, 255
end_hunk_9
