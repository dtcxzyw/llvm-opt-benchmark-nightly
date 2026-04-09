inline.NumInlined: 219
inline.NumDeleted: 155
begin_hunk_0_@_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_:bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
end_hunk_0
begin_hunk_1_@_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_:bb.a
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
end_hunk_1
begin_hunk_2_@_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_:bb.a
._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.i.loopexit.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
end_hunk_2
begin_hunk_3_@_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_:bb.a
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %3 = add nsw i32 %i.e, -1
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = getelementptr i8, ptr %1, i64 %5
  %scevgep.i = getelementptr i8, ptr %6, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
end_hunk_3
