inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@zone_timelocal:bb.a
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.f, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@zone_timelocal:bb.a
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bn = load volatile i64, ptr %i.bm, align 8, !tbaa !13 ; 0 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !13
  br label %extract_time.exit

bb.m:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@zone_timelocal:bb.a
  br label %extract_time.exit

extract_time.exit:                                ; preds = %rb_time_unmagnify.exit.i, %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14, %bb.o, %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i, %bb.q, %bb.r
  %2 = phi i64 [ %.pre, %rb_time_unmagnify.exit.i ], [ %1, %bb.n ], [ %1, %bb.o ], [ %1, %bb.p ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14 ], [ %1, %bb.q ], [ %1, %bb.r ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %.0.i = phi i64 [ %.06.i.i.i, %rb_time_unmagnify.exit.i ], [ %i.by, %bb.n ], [ %i.by, %bb.o ], [ %i.ck, %bb.p ], [ %i.by, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14 ], [ %i.cm, %bb.q ], [ %i.cy, %bb.r ], [ %i.cm, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i ], [ %i.cm, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = call fastcc i64 @wsub(i64 noundef %.06.i.i, i64 noundef %.0.i) ; 5 uses
end_hunk_2
begin_hunk_3_@zone_timelocal:bb.a
  br i1 %i.df, label %rb_obj_write.exit.i, label %bb.s

bb.s:                                             ; preds = %extract_time.exit
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.cz) #18
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.s, %extract_time.exit
end_hunk_3
begin_hunk_4_@zone_timelocal:bb.a
  br i1 %i.dk, label %zone_set_offset.exit, label %bb.t

bb.t:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %0) #18
  br label %zone_set_offset.exit

zone_set_offset.exit:                             ; preds = %rb_obj_write.exit.i, %bb.t
end_hunk_4
begin_hunk_5_@zone_timelocal:bb.a
  br i1 %i.ei, label %time_set_timew.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %.023) #18
  br label %time_set_timew.exit

time_set_timew.exit:                              ; preds = %bb.x, %bb.y, %bb.z
end_hunk_5
begin_hunk_6_@zone_localtime:bb.a
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.h, align 8, !tbaa !13
end_hunk_6
begin_hunk_7_@zone_localtime:bb.a
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = or i64 %i.pg, 70368744177664
  store i64 %i.ph, ptr %i.pf, align 8
  %3 = load i64, ptr %i.h, align 8, !tbaa !13     ; 2 uses
  %i.pi = call fastcc i64 @wsub(i64 noundef %.1.i, i64 noundef %.06.i.i.i) ; 5 uses
  %i.pj = call i64 @validate_utc_offset(i64 noundef %i.pi) ; 0 uses
  %i.pk = getelementptr i8, ptr %i.q, i64 24
end_hunk_7
begin_hunk_8_@zone_localtime:bb.a
  br i1 %i.po, label %rb_obj_write.exit.i, label %bb.bq

bb.bq:                                            ; preds = %rb_obj_write.exit
  call void @rb_gc_writebarrier(i64 noundef %3, i64 noundef %i.pi) #18
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.bq, %rb_obj_write.exit
end_hunk_8
begin_hunk_9_@zone_localtime:bb.a
  br i1 %i.pt, label %zone_set_offset.exit, label %bb.br

bb.br:                                            ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %3, i64 noundef %0) #18
  br label %zone_set_offset.exit

zone_set_offset.exit:                             ; preds = %rb_obj_write.exit.i, %bb.br
end_hunk_9
