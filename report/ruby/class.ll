inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@ruby_xfree

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_iclass_classext_free(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 125
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 24
  %or.cond = icmp eq i8 %i.c, 8
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  tail call void @rb_id_table_free(ptr noundef %i.e) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %.not9 = icmp eq ptr %i.g, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_id_table_free(ptr noundef nonnull %i.g) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_class_classext_free_subclasses(ptr noundef nonnull %1, i64 noundef %0, i1 noundef zeroext false)
  br i1 %2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_xfree(ptr noundef nonnull %1) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_set_box_classext(i64 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_class_set_box_classext_args, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 %0, ptr %3, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !56
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = and i64 %i.c, 65536
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %RCLASS_CLASSEXT_TBL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %RCLASS_CLASSEXT_TBL.exit

RCLASS_CLASSEXT_TBL.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = load i64, ptr %1, align 8, !tbaa !11
  %i.h = ptrtoint ptr %3 to i64
  %i.i = call i32 @rb_st_update(ptr noundef %.0.i, i64 noundef %i.g, ptr noundef nonnull @set_box_classext_update, i64 noundef %i.h) #18 ; 0 uses
  %i.j = getelementptr i8, ptr %1, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = call i64 @rb_obj_id(i64 noundef %0) #18
  %i.m = call i32 @rb_st_insert(ptr noundef %i.k, i64 noundef %i.l, i64 noundef %0) #18 ; 0 uses
  call void @rb_gc_writebarrier_remember(i64 noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @set_box_classext_update(ptr readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = and i64 %i.d, 31
  %i.f = icmp eq i64 %i.e, 28
  br i1 %i.f, label %bb.c, label %bb.g, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !17
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 125
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 24
  %or.cond.i = icmp eq i8 %i.k, 8
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  tail call void @rb_id_table_free(ptr noundef %i.m) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %.not8.i = icmp eq ptr %i.o, null
  br i1 %.not8.i, label %iclass_free_orphan_classext.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_id_table_free(ptr noundef nonnull %i.o) #18
  br label %iclass_free_orphan_classext.exit

iclass_free_orphan_classext.exit:                 ; preds = %bb.e, %bb.f
  tail call void @rb_class_classext_free_subclasses(ptr noundef nonnull %i.h, i64 noundef %i.b, i1 noundef zeroext true)
  tail call void @ruby_xfree(ptr noundef nonnull %i.h) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.30) #19
  unreachable

bb.h:                                             ; preds = %iclass_free_orphan_classext.exit, %bb.a
  %i.p = getelementptr i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %1, align 8, !tbaa !17
  ret i32 0
}

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_gc_writebarrier_remember(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias noundef nonnull ptr @rb_class_duplicate_classext(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_class_set_box_classext_args, align 8 ; 5 uses
  %4 = alloca %struct.duplicate_id_tbl_data, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.duplicate_id_tbl_data, align 8 ; 5 uses
  %6 = alloca %struct.duplicate_id_tbl_data, align 8 ; 5 uses
  %i.b = tail call noalias nonnull dereferenceable(136) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 136) #20 ; 16 uses
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit56.thread, label %rbimpl_RB_TYPE_P_fastpath.exit56

rbimpl_RB_TYPE_P_fastpath.exit56:                 ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 3                      ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.b, label %bb.d

rbimpl_RB_TYPE_P_fastpath.exit56.thread:          ; preds = %bb.a
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %.not.i64 = icmp eq ptr %i.t, null
  br i1 %.not.i64, label %duplicate_classext_m_tbl.exit, label %bb.d

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit56
  br i1 %i.j, label %bb.c, label %duplicate_classext_m_tbl.exit

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @rb_id_table_create(i64 noundef 0) #18
  br label %duplicate_classext_m_tbl.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit56.thread, %rbimpl_RB_TYPE_P_fastpath.exit56
  %i.v = phi ptr [ %i.t, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ], [ %i.o, %rbimpl_RB_TYPE_P_fastpath.exit56 ] ; 2 uses
  %.0.i5566 = phi i1 [ false, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit56 ]
  %i.w = tail call i64 @rb_id_table_size(ptr noundef nonnull %i.v) #18
  %i.x = tail call ptr @rb_id_table_create(i64 noundef %i.w) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.x, ptr %6, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.y, align 8, !tbaa !61
  call void @rb_id_table_foreach(ptr noundef nonnull %i.v, ptr noundef nonnull @duplicate_classext_m_tbl_i, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %duplicate_classext_m_tbl.exit

duplicate_classext_m_tbl.exit:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit56.thread, %bb.b, %bb.c, %bb.d
  %.0.i5565 = phi i1 [ %.0.i5566, %bb.d ], [ true, %bb.c ], [ false, %bb.b ], [ false, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ] ; 2 uses
  %.0.i57 = phi ptr [ %i.x, %bb.d ], [ %i.u, %bb.c ], [ null, %bb.b ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %.0.i57, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 125 ; 7 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, -25
  %7 = or disjoint i8 %i.ac, 8
  store i8 %7, ptr %i.aa, align 1
  %i.ad = getelementptr i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %rb_obj_write.exit, label %bb.e

bb.e:                                             ; preds = %duplicate_classext_m_tbl.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = call i64 @rb_imemo_fields_clone(i64 noundef %i.ae) #18 ; 4 uses
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !17
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %rb_obj_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.ag) #18
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.f, %bb.e, %duplicate_classext_m_tbl.exit
  %i.al = getelementptr i8, ptr %0, i64 125       ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 4
  %.not52 = icmp eq i8 %i.an, 0
  %i.ao = getelementptr i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 4 uses
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_obj_write.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !33
  %8 = load i8, ptr %i.aa, align 1
  %i.ar = or i8 %8, 4
  br label %bb.j

bb.h:                                             ; preds = %rb_obj_write.exit
  %.not.i58 = icmp eq ptr %i.ap, null
  br i1 %.not.i58, label %duplicate_classext_const_tbl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call i64 @rb_id_table_size(ptr noundef nonnull %i.ap) #18
  %i.at = call ptr @rb_id_table_create(i64 noundef %i.as) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.at, ptr %5, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.au, align 8, !tbaa !61
  call void @rb_id_table_foreach(ptr noundef nonnull %i.ap, ptr noundef nonnull @duplicate_classext_const_tbl_i, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %duplicate_classext_const_tbl.exit

duplicate_classext_const_tbl.exit:                ; preds = %bb.h, %bb.i
  %.0.i59 = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.0.i59, ptr %i.av, align 8, !tbaa !33
  %9 = load i8, ptr %i.aa, align 1
  %10 = and i8 %9, -5
  br label %bb.j

bb.j:                                             ; preds = %duplicate_classext_const_tbl.exit, %bb.g
  %storemerge = phi i8 [ %10, %duplicate_classext_const_tbl.exit ], [ %i.ar, %bb.g ]
  store i8 %storemerge, ptr %i.aa, align 1
  %i.aw = getelementptr i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %.not.i60 = icmp eq ptr %i.ax, null
  br i1 %.not.i60, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.0.i5565, label %bb.l, label %duplicate_classext_id_table.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = call ptr @rb_id_table_create(i64 noundef 0) #18
  br label %duplicate_classext_id_table.exit

bb.m:                                             ; preds = %bb.j
  %i.az = call i64 @rb_id_table_size(ptr noundef nonnull %i.ax) #18
  %i.ba = call ptr @rb_id_table_create(i64 noundef %i.az) #18 ; 2 uses
  call void @rb_id_table_foreach(ptr noundef nonnull %i.ax, ptr noundef nonnull @duplicate_classext_id_table_i, ptr noundef %i.ba) #18
  br label %duplicate_classext_id_table.exit

duplicate_classext_id_table.exit:                 ; preds = %bb.k, %bb.l, %bb.m
  %.0.i61 = phi ptr [ %i.ba, %bb.m ], [ %i.ay, %bb.l ], [ null, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %.0.i61, ptr %i.bb, align 8, !tbaa !34
  call fastcc void @duplicate_classext_subclasses(ptr noundef nonnull %0, ptr noundef %i.b)
  %i.bc = getelementptr i8, ptr %0, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !63 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !17
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = and i64 %i.bd, 7
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %RCLASSEXT_SET_ORIGIN.exit, label %bb.n

bb.n:                                             ; preds = %duplicate_classext_id_table.exit
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.bd) #18
  br label %RCLASSEXT_SET_ORIGIN.exit

RCLASSEXT_SET_ORIGIN.exit:                        ; preds = %duplicate_classext_id_table.exit, %bb.n
  %i.bj = load i8, ptr %i.al, align 1
  %i.bk = load i8, ptr %i.aa, align 1
  %i.bl = and i8 %i.bk, -4
  %i.bm = and i8 %i.bj, 3
  %i.bn = or disjoint i8 %i.bl, %i.bm
  store i8 %i.bn, ptr %i.aa, align 1
  %i.bo = getelementptr i8, ptr %0, i64 128
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !64
  br i1 %.0.i5565, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %RCLASSEXT_SET_ORIGIN.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36
  %.0.in71 = getelementptr i8, ptr %i.bs, i64 8
  %.072 = load ptr, ptr %.0.in71, align 8, !tbaa !65 ; 2 uses
  %.not5373 = icmp eq ptr %.072, null
  br i1 %.not5373, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = ptrtoint ptr %3 to i64
  %i.bx = getelementptr i8, ptr %2, i64 120
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %class_duplicate_iclass_classext.exit
  %.074 = phi ptr [ %.072, %.lr.ph ], [ %.0, %class_duplicate_iclass_classext.exit ] ; 2 uses
  %i.by = load i64, ptr %.074, align 8, !tbaa !66 ; 10 uses
  %.not54 = icmp ne i64 %i.by, 0
  %i.bz = and i64 %i.by, 7
  %.not70 = icmp eq i64 %i.bz, 0
  %or.cond = and i1 %.not54, %.not70
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit, label %class_duplicate_iclass_classext.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.p
  %i.ca = inttoptr i64 %i.by to ptr               ; 16 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %i.cc = and i64 %i.cb, 31
  %i.cd = icmp eq i64 %i.cc, 28
  br i1 %i.cd, label %bb.q, label %class_duplicate_iclass_classext.exit

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ce = getelementptr i8, ptr %i.ca, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !67
  %i.cg = icmp eq i64 %i.cf, %1
  br i1 %i.cg, label %bb.r, label %class_duplicate_iclass_classext.exit

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr i8, ptr %i.ca, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ci = and i64 %i.cb, 65536
  %.not.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %RCLASS_CLASSEXT_TBL.exit.i.i

RCLASS_CLASSEXT_TBL.exit.i.i:                     ; preds = %bb.r
  %i.cj = getelementptr i8, ptr %i.ca, i64 160
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i
  %i.cl = load i64, ptr %2, align 8, !tbaa !11
  %i.cm = call i32 @rb_st_lookup(ptr noundef nonnull %i.ck, i64 noundef %i.cl, ptr noundef nonnull %i.a) #18
  %.not5.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not5.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i:   ; preds = %bb.s, %RCLASS_CLASSEXT_TBL.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.u

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i:          ; preds = %bb.s
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i62 = icmp eq i64 %i.cn, 0
  br i1 %.not.i62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr i8, ptr %i.co, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !68
  call void @rb_invalidate_method_caches(ptr noundef %i.cq, i64 noundef %i.cs) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i
  %i.ct = call noalias nonnull dereferenceable(136) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 136) #20 ; 10 uses
  store ptr %2, ptr %i.ct, align 8, !tbaa !42
  %i.cu = getelementptr i8, ptr %i.ca, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !58
  %i.cx = getelementptr i8, ptr %i.ca, i64 149    ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = and i8 %i.cy, 24
  %or.cond.i = icmp eq i8 %i.cz, 8
  br i1 %or.cond.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr i8, ptr %i.ca, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32 ; 3 uses
  %.not.i41.i = icmp eq ptr %i.db, null
  br i1 %.not.i41.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dc = call ptr @rb_id_table_create(i64 noundef 0) #18
  br label %duplicate_classext_m_tbl.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dd = call i64 @rb_id_table_size(ptr noundef nonnull %i.db) #18
  %i.de = call ptr @rb_id_table_create(i64 noundef %i.dd) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.de, ptr %4, align 8, !tbaa !59
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !61
  call void @rb_id_table_foreach(ptr noundef nonnull %i.db, ptr noundef nonnull @duplicate_classext_m_tbl_i, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %duplicate_classext_m_tbl.exit.i

bb.y:                                             ; preds = %bb.u
  %i.df = load ptr, ptr %i.z, align 8, !tbaa !32
  br label %duplicate_classext_m_tbl.exit.i

duplicate_classext_m_tbl.exit.i:                  ; preds = %bb.y, %bb.x, %bb.w
  %.sink.i = phi ptr [ %i.df, %bb.y ], [ %i.de, %bb.x ], [ %i.dc, %bb.w ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %.sink.i, ptr %i.dg, align 8, !tbaa !32
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !33
  %i.dj = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !34
  call fastcc void @duplicate_classext_subclasses(ptr noundef %i.ch, ptr noundef %i.ct)
  %i.dl = getelementptr i8, ptr %i.ca, i64 120
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !63 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !17
  %i.do = icmp eq i64 %i.dm, 0
  %i.dp = and i64 %i.dm, 7
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = or i1 %i.do, %i.dq
  br i1 %i.dr, label %RCLASSEXT_SET_ORIGIN.exit.i, label %bb.z

bb.z:                                             ; preds = %duplicate_classext_m_tbl.exit.i
  call void @rb_gc_writebarrier(i64 noundef range(i64 1, 0) %i.by, i64 noundef %i.dm) #18
  br label %RCLASSEXT_SET_ORIGIN.exit.i

RCLASSEXT_SET_ORIGIN.exit.i:                      ; preds = %bb.z, %duplicate_classext_m_tbl.exit.i
  %i.ds = load i8, ptr %i.cx, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 125 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = and i8 %i.du, -25
  %i.dw = and i8 %i.ds, 24
  %i.dx = or disjoint i8 %i.dv, %i.dw
  store i8 %i.dx, ptr %i.dt, align 1
  %i.dy = getelementptr i8, ptr %i.ca, i64 136
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !69 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
end_hunk_0
begin_hunk_1_@push_subclass_entry_to_list:bb.a
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.split7.i.i, label %bb.n

.split7.i.i:                                      ; preds = %bb.m
  %i.cs = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.cn)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ct = inttoptr i64 %1 to ptr
  %i.cu = getelementptr i8, ptr %i.ct, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.n, %.split7.i.i, %.split.i.i, %bb.l
  %.0.i.i = phi ptr [ %i.cm, %bb.l ], [ %i.cu, %bb.n ], [ %i.co, %.split.i.i ], [ %i.cs, %.split7.i.i ]
  %i.cv = getelementptr i8, ptr %.0.i.i, i64 88   ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !51 ; 5 uses
  %.not.i30 = icmp eq ptr %i.cw, null
  br i1 %.not.i30, label %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit, label %bb.o

bb.o:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !49
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !49
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr i8, ptr %i.cw, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  call void @rb_st_free_table(ptr noundef %i.db) #18
  call void @ruby_xfree(ptr noundef nonnull %i.cw) #18
  br label %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit

RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit:          ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.o, %bb.p
  %i.dc = load i64, ptr %i.bo, align 8, !tbaa !49
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.bo, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.cv, align 8, !tbaa !51
  br label %bb.w

bb.q:                                             ; preds = %.split.us
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32, !prof !73

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39:      ; preds = %bb.q
  %i.de = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !19
  %i.dg = and i64 %i.df, 16384
  %.not10.i.i40 = icmp eq i64 %i.dg, 0
  br i1 %.not10.i.i40, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32, label %bb.r, !prof !74

bb.r:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39
  %i.dh = getelementptr i8, ptr %i.de, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i34

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39, %bb.q
  %i.di = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i33, label %.split.i.i38, label %bb.s

.split.i.i38:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32
  %i.dj = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i34

bb.s:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32
  %i.dk = getelementptr i8, ptr %i.di, i64 128
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !75, !range !76, !noundef !77
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.split7.i.i37, label %bb.t

.split7.i.i37:                                    ; preds = %bb.s
  %i.dn = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.di)
  br label %RCLASS_EXT_WRITABLE.exit.i34

bb.t:                                             ; preds = %bb.s
  %i.do = inttoptr i64 %1 to ptr
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i34

RCLASS_EXT_WRITABLE.exit.i34:                     ; preds = %bb.t, %.split7.i.i37, %.split.i.i38, %bb.r
  %.0.i.i35 = phi ptr [ %i.dh, %bb.r ], [ %i.dp, %bb.t ], [ %i.dj, %.split.i.i38 ], [ %i.dn, %.split7.i.i37 ]
  %i.dq = getelementptr i8, ptr %.0.i.i35, i64 80 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !50 ; 5 uses
  %.not.i36 = icmp eq ptr %i.dr, null
  br i1 %.not.i36, label %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit, label %bb.u

bb.u:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i34
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !49
  %i.dt = add i64 %i.ds, -1                       ; 2 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !49
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.v, label %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr i8, ptr %i.dr, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !40
  call void @rb_st_free_table(ptr noundef %i.dw) #18
  call void @ruby_xfree(ptr noundef nonnull %i.dr) #18
  br label %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit

RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit:           ; preds = %RCLASS_EXT_WRITABLE.exit.i34, %bb.u, %bb.v
  %i.dx = load i64, ptr %i.bo, align 8, !tbaa !49
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.bo, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.dq, align 8, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit, %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_remove_from_super_subclasses(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !73

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = and i64 %i.e, 16384
  %.not10.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.b, !prof !74

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.a
  %i.h = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !75, !range !76, !noundef !77
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split7.i, label %bb.d

.split7.i:                                        ; preds = %bb.c
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.h)
  br label %RCLASS_EXT_WRITABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.b, %.split.i, %.split7.i, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.i, %.split.i ], [ %i.m, %.split7.i ] ; 2 uses
  %i.p = getelementptr i8, ptr %.0.i, i64 80      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 5 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %RCLASS_EXT_WRITABLE.exit
  %i.r = getelementptr i8, ptr %i.q, i64 8        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = load ptr, ptr %.0.i, align 8, !tbaa !42  ; 2 uses
  %.not.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i7, label %box_subclasses_tbl_key.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43
  br label %box_subclasses_tbl_key.exit

box_subclasses_tbl_key.exit:                      ; preds = %bb.e, %bb.f
  %.0.i8 = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  tail call fastcc void @remove_class_from_subclasses(ptr noundef %i.s, i64 noundef %.0.i8, i64 noundef %0)
  %i.w = load i64, ptr %i.q, align 8, !tbaa !49
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.q, align 8, !tbaa !49
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %rb_box_subclasses_ref_dec.exit

bb.g:                                             ; preds = %box_subclasses_tbl_key.exit
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !40
  tail call void @rb_st_free_table(ptr noundef %i.z) #18
  tail call void @ruby_xfree(ptr noundef nonnull %i.q) #18
  br label %rb_box_subclasses_ref_dec.exit

rb_box_subclasses_ref_dec.exit:                   ; preds = %box_subclasses_tbl_key.exit, %bb.g
  store ptr null, ptr %i.p, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %RCLASS_EXT_WRITABLE.exit, %rb_box_subclasses_ref_dec.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @remove_class_from_subclasses(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = call i32 @rb_st_lookup(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) #18
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not2738 = icmp eq i64 %i.d, 0
  %.not27 = select i1 %.not.i, i1 true, i1 %.not2738
  br i1 %.not27, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66
  %i.g = icmp eq i64 %i.f, %2                     ; 3 uses
  br i1 %i.g, label %.loopexit33, label %select.unfold.peel

select.unfold.peel:                               ; preds = %.lr.ph.preheader
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not.peel = icmp eq ptr %i.i, null
  br i1 %.not.peel, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.peel, %select.unfold
  %.029 = phi ptr [ %i.v, %select.unfold ], [ %i.i, %select.unfold.peel ] ; 3 uses
  %i.j = load i64, ptr %.029, align 8, !tbaa !66
  %i.k = icmp eq i64 %i.j, %2
  br i1 %i.k, label %.loopexit33, label %select.unfold

.loopexit33:                                      ; preds = %.lr.ph, %.lr.ph.preheader
  %.029.lcssa = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.029, %.lr.ph ] ; 3 uses
  %i.l = getelementptr i8, ptr %.029.lcssa, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 3 uses
  %i.n = getelementptr i8, ptr %.029.lcssa, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 4 uses
  %.not22 = icmp eq ptr %i.m, null
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit33
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit33
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.f, label %bb.g

.thread:                                          ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.o, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !72
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %3 = load i64, ptr %i.b, align 8, !tbaa !17
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = call i32 @rb_st_update(ptr noundef %0, i64 noundef %3, ptr noundef nonnull @remove_class_from_subclasses_replace_first_entry, i64 noundef %i.r) #18 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = call i32 @rb_st_delete(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef null) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %bb.f, %bb.d
  call void @ruby_xfree(ptr noundef nonnull %.029.lcssa) #18
  br label %.loopexit

select.unfold:                                    ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.029, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !84

.loopexit:                                        ; preds = %select.unfold, %select.unfold.peel, %bb.a, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_foreach_subclass(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = and i64 %i.c, 65536
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.i = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !75, !range !76, !noundef !77
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = load i64, ptr %i.b, align 8, !tbaa !19
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.q = load i64, ptr %i.i, align 8, !tbaa !11
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !17
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.u, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.v, %bb.f ], [ %i.j, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.w = getelementptr i8, ptr %.0.i, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not7 = icmp eq ptr %i.ab, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %RCLASS_EXT_READABLE.exit, %.lr.ph
  %.08 = phi ptr [ %i.ae, %.lr.ph ], [ %i.ab, %RCLASS_EXT_READABLE.exit ] ; 2 uses
  %i.ac = load i64, ptr %.08, align 8, !tbaa !66
  %i.ad = getelementptr i8, ptr %.08, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  call void %1(i64 noundef %i.ac, i64 noundef %2) #18
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_class_set_super(i64 noundef %0, i64 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @class_associate_super(i64 noundef %0, i64 noundef %1, i1 noundef zeroext false) ; 0 uses
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @class_associate_super(i64 noundef %0, i64 noundef returned %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %1, 0                       ; 2 uses
  switch i64 %1, label %bb.b [
    i64 36, label %bb.d
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !82
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %rb_class_subclass_add.exit.i

bb.c:                                             ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #18
  br label %rb_class_subclass_add.exit.i

.split.us.sink.split.i:                           ; preds = %rb_class_subclass_add.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #18
  br label %class_switch_superclass.exit

rb_class_subclass_add.exit.i:                     ; preds = %bb.b, %bb.c
  call void @rb_class_remove_from_super_subclasses(i64 noundef %0)
  call fastcc void @push_subclass_entry_to_list(i64 noundef range(i64 1, 0) %1, i64 noundef %0, i1 noundef zeroext false)
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !82
  %.not.i.i4.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i4.i, label %.split.us.sink.split.i, label %class_switch_superclass.exit

class_switch_superclass.exit:                     ; preds = %.split.us.sink.split.i, %rb_class_subclass_add.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %class_switch_superclass.exit
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = inttoptr i64 %0 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  store i64 %1, ptr %i.e, align 8, !tbaa !17
  %i.f = and i64 %1, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %.not, %i.g
  br i1 %i.h, label %RCLASS_SET_SUPER.exit, label %RCLASS_SET_SUPER.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.i = icmp ne i64 %0, 0
  %i.j = and i64 %0, 7
  %i.k = icmp eq i64 %i.j, 0
  %.not5.i.i.i.i = and i1 %i.i, %i.k
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !73

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.f
  %i.l = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = and i64 %i.m, 16384
  %.not10.i.i = icmp eq i64 %i.n, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.g, !prof !74

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.o = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.f
  %i.p = call ptr @rb_current_box() #18           ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.q = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !75, !range !76, !noundef !77
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i.i, label %bb.i
end_hunk_1
