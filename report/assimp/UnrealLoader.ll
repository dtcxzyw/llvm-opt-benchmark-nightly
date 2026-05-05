inline.NumInlined: 880
inline.NumDeleted: 400
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.eq

bb.eq:                                            ; preds = %bb.es, %bb.ep
  %.0.i.i = phi ptr [ %i.rn, %bb.ep ], [ %i.rr, %bb.es ] ; 5 uses
  %i.rq = load i8, ptr %.0.i.i, align 1
  switch i8 %i.rq, label %._crit_edge1302 [
    i8 32, label %bb.er
end_hunk_0
begin_hunk_1_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.eq, !llvm.loop !33

split.a:                                          ; preds = %bb.er
  %.0.lcssa.i.i.ph = phi ptr [ %scevgep.i.i, %bb.er ]
  br label %bb.et

._crit_edge1302:                                  ; preds = %bb.eq
  %.0.i.i.lcssa = phi ptr [ %.0.i.i, %bb.eq ]
  %.0.i.i.lcssa.a = phi ptr [ %.0.i.i, %bb.eq ]   ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %split.a, %._crit_edge1302
  %.0.lcssa.i.i = phi ptr [ %.0.i.i.lcssa, %._crit_edge1302 ], [ %.0.lcssa.i.i.ph, %split.a ] ; 8 uses
  %i.rs = call i32 @strncasecmp(ptr noundef nonnull @.str.21, ptr noundef %.0.lcssa.i.i, i64 noundef 7) #29
  %.not.i454 = icmp eq i32 %i.rs, 0
  br i1 %.not.i454, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i456, label %bb.gm
end_hunk_1
begin_hunk_2_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ex, %bb.eu
  %.0.i.i459 = phi ptr [ %i.rv, %bb.eu ], [ %i.rz, %bb.ex ] ; 5 uses
  %i.ry = load i8, ptr %.0.i.i459, align 1
  switch i8 %i.ry, label %._crit_edge1304 [
    i8 32, label %bb.ew
end_hunk_2
begin_hunk_3_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ev, !llvm.loop !33

split1305:                                        ; preds = %bb.ew
  %.0.lcssa.i.i461.ph = phi ptr [ %scevgep.i.i458, %bb.ew ]
  br label %bb.ey

._crit_edge1304:                                  ; preds = %bb.ev
  %.0.i.i459.lcssa = phi ptr [ %.0.i.i459, %bb.ev ]
  %.0.i.i459.lcssa.a = phi ptr [ %.0.i.i459, %bb.ev ] ; 0 uses
  br label %bb.ey

bb.ey:                                            ; preds = %split1305, %._crit_edge1304
  %.0.lcssa.i.i461 = phi ptr [ %.0.i.i459.lcssa, %._crit_edge1304 ], [ %.0.lcssa.i.i461.ph, %split1305 ] ; 5 uses
  %i.sa = call i32 @strncasecmp(ptr noundef nonnull @.str.22, ptr noundef %.0.lcssa.i.i461, i64 noundef 6) #29
  %.not.i463 = icmp eq i32 %i.sa, 0
  br i1 %.not.i463, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i465, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE8pop_backEv.exit
end_hunk_3
begin_hunk_4_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.go

bb.go:                                            ; preds = %bb.gq, %bb.gn
  %.0.i.i513 = phi ptr [ %i.wq, %bb.gn ], [ %i.wu, %bb.gq ] ; 5 uses
  %i.wt = load i8, ptr %.0.i.i513, align 1
  switch i8 %i.wt, label %._crit_edge1307 [
    i8 32, label %bb.gp
end_hunk_4
begin_hunk_5_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.go, !llvm.loop !33

split1308:                                        ; preds = %bb.gp
  %.0.lcssa.i.i515.ph = phi ptr [ %scevgep.i.i512, %bb.gp ]
  br label %bb.gr

._crit_edge1307:                                  ; preds = %bb.go
  %.0.i.i513.lcssa = phi ptr [ %.0.i.i513, %bb.go ]
  %.0.i.i513.lcssa.a = phi ptr [ %.0.i.i513, %bb.go ] ; 0 uses
  br label %bb.gr

bb.gr:                                            ; preds = %split1308, %._crit_edge1307
  %.0.lcssa.i.i515 = phi ptr [ %.0.i.i513.lcssa, %._crit_edge1307 ], [ %.0.lcssa.i.i515.ph, %split1308 ] ; 8 uses
  %i.wv = call i32 @strncasecmp(ptr noundef nonnull @.str.26, ptr noundef %.0.lcssa.i.i515, i64 noundef 10) #29
  %.not.i517 = icmp eq i32 %i.wv, 0
  br i1 %.not.i517, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i519, label %bb.ho
end_hunk_5
begin_hunk_6_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.hv

bb.hl:                                            ; preds = %.lr.ph875, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread780
  %.sroa.0683.0874 = phi ptr [ %i.zg, %.lr.ph875 ], [ %i.zt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread780 ] ; 6 uses
  %i.zl = getelementptr i8, ptr %.sroa.0683.0874, i64 8
  %i.zm = load i64, ptr %i.zl, align 8
  %i.zn = icmp eq i64 %i.zm, %i.zi
end_hunk_6
begin_hunk_7_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge: ; preds = %bb.hm
  %.sroa.0683.0874.lcssa1314 = phi ptr [ %.sroa.0683.0874, %bb.hm ]
  %.sroa.0683.0874.lcssa1310 = phi ptr [ %.sroa.0683.0874, %bb.hm ] ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.threadsplit, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge
  %.sroa.0683.0874.lcssa = phi ptr [ %.sroa.0683.0874.lcssa1314, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge ], [ %.sroa.0683.0874.lcssa1311, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.threadsplit ]
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.0683.0874.lcssa, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.xi, ptr noundef nonnull align 8 dereferenceable(32) %i.zr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.hn
end_hunk_7
begin_hunk_8_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %lsr.iv192.lcssa = phi ptr [ %lsr.iv192, %bb.j ]
  %.lcssa185 = phi i64 [ %i.ac, %bb.j ]           ; 2 uses
  %.lcssa182 = phi ptr [ %lsr.iv, %bb.j ]         ; 3 uses
  store ptr %.lcssa182, ptr %i.a, align 8
end_hunk_8
begin_hunk_9_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.lr.ph71
  %lsr.iv194 = phi ptr [ %lsr.iv192.lcssa, %.lr.ph71.preheader ], [ %scevgep195, %.lr.ph71 ] ; 3 uses
  store ptr %lsr.iv194, ptr %i.a, align 8
  %i.ag = load i8, ptr %lsr.iv194, align 1
  %i.ah = add i8 %i.ag, -48
end_hunk_9
