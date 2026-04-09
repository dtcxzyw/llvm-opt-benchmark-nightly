inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #50
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
end_hunk_0
begin_hunk_1_@_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
end_hunk_1
begin_hunk_2_@_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.i.loopexit.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
end_hunk_2
begin_hunk_3_@_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
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
begin_hunk_4_@_Z18SetGenericPropertyIfEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #50
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
end_hunk_4
begin_hunk_5_@_Z18SetGenericPropertyIfEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
end_hunk_5
begin_hunk_6_@_Z18SetGenericPropertyIfEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.i.loopexit.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
end_hunk_6
begin_hunk_7_@_Z18SetGenericPropertyIfEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
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
end_hunk_7
begin_hunk_8_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #50
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = and i32 %i.d, 3
  %i.f = lshr i32 %i.d, 2                         ; 4 uses
  switch i32 %i.f, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
end_hunk_8
begin_hunk_9_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a
  %i.aa = shl i32 %i.v, 16
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = xor i32 %i.ab, %i.v                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ae = lshr i32 %i.ac, 11
  %i.af = add i32 %i.ae, %i.ac                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
end_hunk_9
begin_hunk_10_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a
._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.ag = and i32 %i.d, 4
  %lcmp.mod.not = icmp eq i32 %i.ag, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.i.loopexit.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ad, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.af, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
end_hunk_10
begin_hunk_11_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a
  %i.ao = shl i32 %i.aj, 16
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = xor i32 %i.ap, %i.aj                    ; 2 uses
  %i.ar = lshr i32 %i.aq, 11
  %i.as = add i32 %i.ar, %i.aq
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.af, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.i.epil.preheader ]
  %4 = add nsw i32 %i.f, -1
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = getelementptr i8, ptr %1, i64 %6
  %scevgep.i = getelementptr i8, ptr %7, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.e, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
end_hunk_11
begin_hunk_12_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #50
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
end_hunk_12
begin_hunk_13_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
end_hunk_13
begin_hunk_14_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.i.loopexit.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
end_hunk_14
begin_hunk_15_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
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
end_hunk_15
