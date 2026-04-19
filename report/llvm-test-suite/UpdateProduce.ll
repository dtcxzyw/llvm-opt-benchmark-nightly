inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.g = phi i32 [ %i.y, %bb.f ], [ %i.b, %.lr.ph ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.0.036.us = phi i64 [ %.sroa.0.2.us, %bb.f ], [ undef, %.lr.ph ]
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv44 ; 3 uses
  %.sroa.0.4.insert.mask31.us = and i64 %.sroa.0.036.us, 4278190080
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  %.sroa.0.4.insert.ext.us = zext i32 %i.k to i64
  %.sroa.0.4.insert.shift.us = shl nuw i64 %.sroa.0.4.insert.ext.us, 32
  %.sroa.0.4.insert.insert.us = or disjoint i64 %.sroa.0.4.insert.shift.us, %.sroa.0.4.insert.mask31.us ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %.sroa.12.8.insert.ext.us = zext i32 %i.m to i64
  %.sroa.12.8.insert.insert.us = or disjoint i64 %.sroa.12.8.insert.ext.us, -4294967296
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.0.4.insert.insert.us, 257 ; 3 uses
  %i.n = load i32, ptr %i.i, align 4, !tbaa !17   ; 3 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
end_hunk_0
begin_hunk_1_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %.sroa.0.2.insert.insert.us = or disjoint i64 %.sroa.0.4.insert.insert.us, 65793
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.split.us
end_hunk_1
begin_hunk_2_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a
  br i1 %i.r, label %.split39.us, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.us
  %.sroa.0.1.us = phi i64 [ %.sroa.0.0.insert.insert.us, %.lr.ph.split.us ], [ %.sroa.0.2.insert.insert.us, %bb.b ], [ %.sroa.0.0.insert.insert.us, %bb.c ], [ %.sroa.0.4.insert.insert.us, %bb.d ] ; 2 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.t = load i32, ptr %i.f, align 4, !tbaa !8
end_hunk_2
begin_hunk_3_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us, %bb.e
  %i.y = phi i32 [ %.pre, %bb.e ], [ %i.g, %.lr.ph.split.us ] ; 2 uses
  %.sroa.0.2.us = phi i64 [ %.sroa.0.1.us, %bb.e ], [ %.sroa.0.0.insert.insert.us, %.lr.ph.split.us ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next45, %i.z
  br i1 %i.aa, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !20
end_hunk_3
begin_hunk_4_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.0.036 = phi i64 [ %.sroa.0.2, %bb.l ], [ undef, %.lr.ph ]
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv ; 3 uses
  %.sroa.0.4.insert.mask31 = and i64 %.sroa.0.036, 4278190080
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %.sroa.0.4.insert.ext = zext i32 %i.ae to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.4.insert.mask31 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %.sroa.12.8.insert.ext = zext i32 %i.ag to i64
  %.sroa.12.8.insert.insert = or disjoint i64 %.sroa.12.8.insert.ext, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.4.insert.insert, 257 ; 3 uses
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !17 ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
end_hunk_4
begin_hunk_5_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a
  unreachable

bb.j:                                             ; preds = %.lr.ph.split
  %.sroa.0.2.insert.insert = or disjoint i64 %.sroa.0.4.insert.insert, 65793
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.lr.ph.split
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.insert.insert, %.lr.ph.split ], [ %.sroa.0.2.insert.insert, %bb.j ], [ %.sroa.0.0.insert.insert, %bb.i ], [ %.sroa.0.4.insert.insert, %bb.h ] ; 2 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.as = load i32, ptr %i.f, align 4, !tbaa !8
end_hunk_5
begin_hunk_6_@_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.k ], [ %.sroa.0.0.insert.insert, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
end_hunk_6
