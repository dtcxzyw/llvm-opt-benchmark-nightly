inline.NumInlined: 13
begin_hunk_0_@construct_ch:bb.a
  br i1 %.not5153, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %add_segments.exit47
  %.04255 = phi ptr [ %.tr.ph79.us.i, %add_segments.exit47 ], [ %i.c, %bb.d ] ; 4 uses
  %.04354 = phi ptr [ %i.br, %add_segments.exit47 ], [ %i.c, %bb.d ] ; 3 uses
  %i.m = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #8 ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04255, i64 8
end_hunk_0
begin_hunk_1_@construct_ch:bb.a
  store ptr %.04255, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %.04354, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.m, ptr %i.u, align 8, !tbaa !22
end_hunk_1
begin_hunk_2_@construct_ch:bb.a

tailrecurse.outer.split.us.us.i:                  ; preds = %.split72.us.us.i, %.lr.ph
  %.tr65.ph80.us.i = phi ptr [ %i.al, %.split72.us.us.i ], [ %.04255, %.lr.ph ] ; 4 uses
  %.tr.ph79.us.i = phi ptr [ %i.ai, %.split72.us.us.i ], [ %i.m, %.lr.ph ] ; 8 uses
  %i.x = load i64, ptr %.tr65.ph80.us.i, align 8
  %i.y = load i64, ptr %.tr.ph79.us.i, align 8    ; 3 uses
  %.not.us.us.i = icmp eq i64 %i.x, %i.y
end_hunk_2
begin_hunk_3_@construct_ch:bb.a
  br label %tailrecurse.outer.split.us.us.i

add_segments.exit:                                ; preds = %tailrecurse.outer.split.us.us.i
  %i.at = getelementptr inbounds nuw i8, ptr %.tr.ph79.us.i, i64 40 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.e, %add_segments.exit
end_hunk_3
begin_hunk_4_@construct_ch:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.tr65.i, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %.tr.ph79.us.i, ptr %i.bn, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr.i, i64 24
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !21
  %i.bp = load i64, ptr %i.bj, align 8
end_hunk_4
begin_hunk_5_@construct_ch:bb.a

.loopexit:                                        ; preds = %add_segments.exit47, %bb.d, %bb.c
  %.144 = phi ptr [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.br, %add_segments.exit47 ] ; 3 uses
  %.1 = phi ptr [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %.tr.ph79.us.i, %add_segments.exit47 ] ; 5 uses
  tail call void @free_tree(ptr noundef null) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !11
end_hunk_5
