begin_hunk_0
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %ares_cat_domain.exit.thread86, label %ares_cat_domain.exit.thread97

ares_cat_domain.exit.thread97:                    ; preds = %bb.p, %bb.f, %bb.c, %._crit_edge
  %.055103 = phi i64 [ %i.x, %._crit_edge ], [ %i.x, %bb.p ], [ 1, %bb.f ], [ 1, %bb.c ]
  %.056102 = phi ptr [ %i.z, %._crit_edge ], [ %i.z, %bb.p ], [ %i.m, %bb.f ], [ %i.c, %bb.c ]
  store ptr %.056102, ptr %2, align 8, !tbaa !41
  store i64 %.055103, ptr %3, align 8, !tbaa !42
  br label %bb.q

ares_cat_domain.exit.thread86:                    ; preds = %bb.n, %bb.a, %bb.p, %bb.f, %bb.l, %bb.b, %bb.j, %ares_search_eligible.exit.thread
  %.05593 = phi i64 [ %i.x, %bb.p ], [ 1, %bb.f ], [ 1, %ares_search_eligible.exit.thread ], [ 0, %bb.a ], [ %i.x, %bb.l ], [ 1, %bb.b ], [ %i.x, %bb.j ], [ %i.x, %bb.n ]
  %.05692 = phi ptr [ %i.z, %bb.p ], [ %i.m, %bb.f ], [ null, %ares_search_eligible.exit.thread ], [ null, %bb.a ], [ %i.z, %bb.l ], [ null, %bb.b ], [ null, %bb.j ], [ %i.z, %bb.n ]
  %.15891 = phi i32 [ 15, %bb.p ], [ 15, %bb.f ], [ 15, %ares_search_eligible.exit.thread ], [ %i.b, %bb.a ], [ 15, %bb.l ], [ 15, %bb.b ], [ 15, %bb.j ], [ 15, %bb.n ]
  call void @ares_strsplit_free(ptr noundef %.05692, i64 noundef %.05593) #8
  br label %bb.q

bb.q:                                             ; preds = %ares_cat_domain.exit.thread86, %ares_cat_domain.exit.thread97
  %.15890 = phi i32 [ %.15891, %ares_cat_domain.exit.thread86 ], [ 0, %ares_cat_domain.exit.thread97 ]
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @ares_free(ptr noundef %i.bj) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
end_hunk_0
