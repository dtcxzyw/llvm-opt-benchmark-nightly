inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  br label %._crit_edge60

.critedge:                                        ; preds = %bb.b
  %lsr.iv114.lcssa = phi ptr [ %lsr.iv113, %bb.b ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %indvar.lcssa = phi i64 [ %indvar, %bb.b ]
  %.041.lcssa = phi i32 [ %.041, %bb.b ]          ; 2 uses
  %.02740.lcssa = phi ptr [ %scevgep109, %bb.b ]  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  %i.al = shl nuw i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.02740.lcssa, i64 %i.al
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939.lcssa, i64 0
  %i.ao = lshr i64 %lsr.iv.lcssa, 5
  %i.ap = shl nuw nsw i64 %i.ao, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv115 = phi ptr [ %scevgep116, %vector.body ], [ %lsr.iv114.lcssa, %vector.ph ] ; 3 uses
  %lsr.iv110 = phi i64 [ %lsr.iv.next111, %vector.body ], [ %i.ap, %vector.ph ]
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
end_hunk_1
