begin_hunk_0
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge.critedge, label %bb.j

.critedge.critedge:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i64, ptr %i.f, align 8, !tbaa !10
  store i64 %i.v, ptr %3, align 8, !tbaa !10
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define hidden void @luaV_settable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
.peel.begin:
  %4 = alloca %struct.lua_TValue, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.0.sroa.gep56 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 5
  %.074.lcssa76.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.074.lcssa76.sroa.gep105 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %i.c, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.peel.begin
end_hunk_1
begin_hunk_2
  br i1 %.not52.peel, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %.0.sroa.gep, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = tail call ptr @luaT_gettm(ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef %i.w) #9 ; 2 uses
end_hunk_2
begin_hunk_3
  br i1 %.not52, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %.0.sroa.gep, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.av = call ptr @luaT_gettm(ptr noundef nonnull %i.an, i32 noundef 1, ptr noundef %i.au) #9 ; 2 uses
end_hunk_3
begin_hunk_4

.loopexit:                                        ; preds = %bb.v, %bb.i
  %.3.lcssa = phi ptr [ %.3.peel, %bb.i ], [ %.3, %bb.v ] ; 2 uses
  %.071.lcssa75 = phi ptr [ %.074.lcssa76.sroa.gep, %bb.i ], [ %.074.lcssa76.sroa.gep105, %bb.v ]
  %.0.sroa.phi70.lcssa73 = phi ptr [ %1, %bb.i ], [ %4, %bb.v ]
  %i.br = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
end_hunk_4
begin_hunk_5
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !8
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %.0.sroa.phi70.lcssa73, align 8, !tbaa !10
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !10
  %i.ca = load i32, ptr %.071.lcssa75, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !8
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
end_hunk_5
begin_hunk_6
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r, %bb.s, %.thread, %callTM.exit, %.loopexit79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}
end_hunk_6
