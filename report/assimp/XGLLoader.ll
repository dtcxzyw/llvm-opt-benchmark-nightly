inline.NumInlined: 2834
inline.NumDeleted: 1257
begin_hunk_0_@_ZN6Assimp11XGLImporter10ReadObjectERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
  br i1 %i.r, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0166.0.lcssa1271 = phi ptr [ %.sroa.0166.0, %bb.e ]
  %.sroa.0151.0.lcssa1251 = phi ptr [ %.sroa.0151.0, %bb.e ]
  %.sroa.23.0.lcssa1230 = phi ptr [ %.sroa.23.0, %bb.e ] ; 2 uses
  %.sroa.13.0.lcssa1212 = phi ptr [ %.sroa.13.0, %bb.e ] ; 4 uses
  %.sroa.0151.0.lcssa1193 = phi ptr [ %.sroa.0151.0, %bb.e ] ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11XGLImporter10ReadObjectERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
.lr.ph441:                                        ; preds = %.lr.ph441.preheader, %.lr.ph441
  %indvars.iv579 = phi i64 [ 0, %.lr.ph441.preheader ], [ %indvars.iv.next580, %.lr.ph441 ] ; 3 uses
  %i.gp = shl nuw nsw i64 %indvars.iv579, 2
  %scevgep1251 = getelementptr i8, ptr %.sroa.0151.0.lcssa1251, i64 %i.gp
  %i.gq = load i32, ptr %scevgep1251, align 4
  %i.gr = load ptr, ptr %i.gn, align 8
  %i.gs = shl nuw nsw i64 %indvars.iv579, 2
end_hunk_1
begin_hunk_2_@_ZN6Assimp11XGLImporter10ReadObjectERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
.lr.ph443:                                        ; preds = %.lr.ph443.preheader, %.lr.ph443
  %indvars.iv582 = phi i64 [ 0, %.lr.ph443.preheader ], [ %indvars.iv.next583, %.lr.ph443 ] ; 3 uses
  %i.hf = shl nuw nsw i64 %indvars.iv582, 3
  %scevgep1253 = getelementptr i8, ptr %.sroa.0166.0.lcssa1271, i64 %i.hf
  %i.hg = load ptr, ptr %scevgep1253, align 8     ; 2 uses
  %i.hh = load ptr, ptr %i.he, align 8
  %i.hi = shl nuw nsw i64 %indvars.iv582, 3
end_hunk_2
begin_hunk_3_@_ZN6Assimp11XGLImporter18ResolveMaterialRefERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %lsr.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.n ] ; 4 uses
  %lsr56 = trunc i64 %lsr.iv to i32
  %i.bo = shl nuw nsw i64 %lsr.iv, 3
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.bo
  %i.bp = load ptr, ptr %scevgep, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp11XGLImporter18ResolveMaterialRefERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
  br i1 %exitcond.not, label %.loopexit.loopexitsplit, label %.lr.ph, !llvm.loop !116

.loopexit.loopexitsplit:                          ; preds = %bb.n
  %.1.ph.ph = phi i32 [ 0, %bb.n ]
  br label %.loopexit.loopexit

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %split = phi i32 [ %lsr56, %.lr.ph ]            ; 0 uses
  %tmp = trunc i64 %lsr.iv.lcssa to i32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %.lr.ph..loopexit.loopexit_crit_edge
  %.1.ph = phi i32 [ %tmp, %.lr.ph..loopexit.loopexit_crit_edge ], [ %.1.ph.ph, %.loopexit.loopexitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.m, %bb.f
end_hunk_4
begin_hunk_5_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %lsr.iv192.lcssa = phi ptr [ %lsr.iv192, %bb.j ]
  %.lcssa185 = phi i64 [ %i.ac, %bb.j ]           ; 2 uses
  %.lcssa182 = phi ptr [ %lsr.iv, %bb.j ]         ; 3 uses
  store ptr %.lcssa182, ptr %i.a, align 8
end_hunk_5
begin_hunk_6_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.lr.ph71
  %lsr.iv194 = phi ptr [ %lsr.iv192.lcssa, %.lr.ph71.preheader ], [ %scevgep195, %.lr.ph71 ] ; 3 uses
  store ptr %lsr.iv194, ptr %i.a, align 8
  %i.ag = load i8, ptr %lsr.iv194, align 1
  %i.ah = add i8 %i.ag, -48
end_hunk_6
