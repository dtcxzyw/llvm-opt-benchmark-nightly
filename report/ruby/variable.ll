inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_const_list:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !208
  %i.d = tail call i64 @rb_ary_new_capa(i64 noundef %i.c) #26 ; 2 uses
  tail call void @rb_st_foreach_safe(ptr noundef nonnull %0, ptr noundef nonnull @list_i, i64 noundef %i.d) #26
  tail call void @rb_st_free_table(ptr noundef nonnull %0) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.c ], [ %i.a, %bb.b ]
  ret i64 %.0
}

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare void @rb_st_foreach_safe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @list_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i32, ptr %i.a, align 8, !tbaa !197
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_id2sym(i64 noundef %0) #26
  %i.f = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.e) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mod_constants(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #27
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  %i.d = and i64 %i.c, -5
  %.not7 = icmp eq i64 %i.d, 0
  br i1 %.not7, label %bb.f, label %.critedge

.critedge:                                        ; preds = %rb_check_arity.exit, %bb.c
  %i.e = tail call ptr @rb_mod_const_of(i64 noundef %2, ptr noundef null) ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.f = tail call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %rb_const_list.exit

bb.e:                                             ; preds = %.critedge
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !208
  %i.i = tail call i64 @rb_ary_new_capa(i64 noundef %i.h) #26 ; 2 uses
  tail call void @rb_st_foreach_safe(ptr noundef nonnull %i.e, ptr noundef nonnull @list_i, i64 noundef %i.i) #26
  tail call void @rb_st_free_table(ptr noundef nonnull %i.e) #26
  br label %rb_const_list.exit

bb.f:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = and i64 %i.k, 65536
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.j, i64 160      ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.g

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %bb.f
  %i.p = getelementptr i8, ptr %i.j, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.q = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.j, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.q, i64 128
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32, !range !34, !noundef !35
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.split7.i.i, label %bb.k

.split7.i.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = load i64, ptr %i.j, align 8, !tbaa !20
  %i.w = and i64 %i.v, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.i

bb.i:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.y = load i64, ptr %i.q, align 8, !tbaa !36
  %i.z = call i32 @rb_st_lookup(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.j, %bb.i, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.ab, %bb.j ], [ null, %bb.i ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.ac = getelementptr i8, ptr %i.j, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.ac, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.j, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.k, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i.i = phi ptr [ %i.p, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.ad, %bb.k ], [ %i.r, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199 ; 3 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %RCLASS_EXT_READABLE.exit.i
  %i.ag = call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %rb_const_list.exit

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i11.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i11.i, label %bb.n, label %rb_vm_lock_enter.exit.i

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.n, %bb.m
  %i.ai = call i64 @rb_id_table_size(ptr noundef nonnull %i.af) #26
  %i.aj = call i64 @rb_ary_new_capa(i64 noundef %i.ai) #26 ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  call void @rb_id_table_foreach(ptr noundef nonnull %i.af, ptr noundef nonnull @rb_local_constants_i, ptr noundef %i.ak) #26
  %i.al = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i12.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i12.i, label %bb.o, label %rb_vm_lock_leave.exit.i

bb.o:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.o, %rb_vm_lock_enter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_const_list.exit

rb_const_list.exit:                               ; preds = %rb_vm_lock_leave.exit.i, %bb.l, %bb.e, %bb.d
  %.05 = phi i64 [ %i.f, %bb.d ], [ %i.i, %bb.e ], [ %i.aj, %rb_vm_lock_leave.exit.i ], [ %i.ag, %bb.l ]
  ret i64 %.05
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 21) i32 @rb_const_defined_from(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_const_defined_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 21) i32 @rb_const_defined_0(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not25 = icmp eq i32 %3, 0
  %5 = trunc nuw i32 %2 to i1                     ; 2 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  br i1 %.not25, label %.split42.us, label %.split42

.split42.us:                                      ; preds = %bb.a
  %.not38.us.us = icmp eq i64 %0, 0               ; 2 uses
  br i1 %5, label %.split42.us.split.us, label %.split42.us.split.preheader

.split42.us.split.preheader:                      ; preds = %.split42.us
  br i1 %.not38.us.us, label %._crit_edge.split.us.us, label %.lr.ph.us

.split42.us.split.us:                             ; preds = %.split42.us
  br i1 %.not38.us.us, label %rb_autoloading_value.exit.thread, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.split42.us.split.us
  %i.c = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not24.us.us.us = icmp eq ptr %i.c, null
  br i1 %.not24.us.us.us, label %rb_autoloading_value.exit.thread, label %.split.us

._crit_edge.split.us.us:                          ; preds = %.lr.ph.us, %.split42.us.split.preheader
  %i.d = load i64, ptr %i.b, align 8, !tbaa !20
  %i.e = and i64 %i.d, 31
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %.split42.us.split.1, label %rb_autoloading_value.exit.thread

.split42.us.split.1:                              ; preds = %._crit_edge.split.us.us
  %i.g = load i64, ptr @rb_cObject, align 8, !tbaa !16 ; 3 uses
  %.not38.us.1 = icmp eq i64 %i.g, 0
  br i1 %.not38.us.1, label %rb_autoloading_value.exit.thread, label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %.split42.us.split.1
  %i.h = tail call ptr @rb_const_lookup(i64 noundef %i.g, i64 noundef %1) ; 2 uses
  %.not24.us.us.1 = icmp eq ptr %i.h, null
  br i1 %.not24.us.us.1, label %rb_autoloading_value.exit.thread, label %.split.us

.lr.ph.us:                                        ; preds = %.split42.us.split.preheader
  %i.i = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not24.us.us = icmp eq ptr %i.i, null
  br i1 %.not24.us.us, label %._crit_edge.split.us.us, label %.split.us

.split42:                                         ; preds = %bb.a, %bb.s
  %.021 = phi i64 [ %i.bh, %bb.s ], [ %0, %bb.a ] ; 2 uses
  %or.cond = phi i1 [ true, %bb.s ], [ %5, %bb.a ]
  %.not38 = icmp eq i64 %.021, 0
  br i1 %.not38, label %._crit_edge40, label %.lr.ph

.lr.ph:                                           ; preds = %.split42, %RCLASS_EXT_READABLE.exit
  %.139 = phi i64 [ %i.bd, %RCLASS_EXT_READABLE.exit ], [ %.021, %.split42 ] ; 3 uses
  %i.j = call ptr @rb_const_lookup(i64 noundef %.139, i64 noundef %1) ; 2 uses
  %.not24 = icmp eq ptr %i.j, null
  br i1 %.not24, label %bb.l, label %.split.us

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.us, %.lr.ph.us.1, %.lr.ph.us.us
  %.us-phi = phi i64 [ %i.g, %.lr.ph.us.1 ], [ %0, %.lr.ph.us.us ], [ %0, %.lr.ph.us ], [ %.139, %.lr.ph ] ; 3 uses
  %.us-phi41 = phi ptr [ %i.h, %.lr.ph.us.1 ], [ %i.c, %.lr.ph.us.us ], [ %i.i, %.lr.ph.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.not26 = icmp eq i32 %4, 0
  br i1 %.not26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.k = load i32, ptr %.us-phi41, align 8, !tbaa !197
  %i.l = and i32 %i.k, 255
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %rb_autoloading_value.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us
  %i.n = getelementptr i8, ptr %.us-phi41, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !165
  %i.p = icmp eq i64 %i.o, 36
  br i1 %i.p, label %bb.d, label %rb_autoloading_value.exit

bb.d:                                             ; preds = %bb.c
  %i.q = call fastcc i64 @check_autoload_required(i64 noundef %.us-phi, i64 noundef %1, ptr noundef null)
  %.not27 = icmp eq i64 %i.q, 0
  br i1 %.not27, label %bb.e, label %rb_autoloading_value.exit

bb.e:                                             ; preds = %bb.d
  %i.r = call fastcc i64 @autoload_data(i64 noundef %.us-phi, i64 noundef %1) ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %rb_autoloading_value.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @rb_check_typeddata(i64 noundef %i.r, ptr noundef nonnull @autoload_const_type) #26 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !146
  %i.v = call ptr @rb_check_typeddata(i64 noundef %i.u, ptr noundef nonnull @autoload_data_type) #26 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %rb_autoloading_value.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !170
  %i.y = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.z = getelementptr i8, ptr %i.y, i64 496
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !172
  %.not12.i.i.i = icmp eq i64 %i.x, %i.aa
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %.not12.i.i.i, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  store i64 4, ptr %.phi.trans.insert.i.i, align 8, !tbaa !16
  store i64 0, ptr %i.w, align 8, !tbaa !170
  br label %rb_autoloading_value.exit.thread

bb.h:                                             ; preds = %bb.g
  %.val.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !189 ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.val.pre.i.i, 4
  br i1 %.not.i9.i.i, label %rb_autoloading_value.exit.thread, label %autoload_by_current.exit.i.i

autoload_by_current.exit.i.i:                     ; preds = %bb.h
  %i.ab = call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i.i) #26
  %.not11.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not11.i.i, label %rb_autoloading_value.exit.thread, label %bb.i

bb.i:                                             ; preds = %autoload_by_current.exit.i.i
  %i.ac = getelementptr i8, ptr %i.s, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !152
  %i.ae = icmp eq i64 %i.ad, 36
  br i1 %i.ae, label %rb_autoloading_value.exit.thread, label %rb_autoloading_value.exit

rb_autoloading_value.exit:                        ; preds = %bb.i, %bb.d, %bb.c
  %.not29 = icmp eq i32 %2, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_autoloading_value.exit
  %i.af = load i64, ptr @rb_cObject, align 8, !tbaa !16 ; 2 uses
  %i.ag = icmp ne i64 %.us-phi, %i.af
  %.not30 = icmp eq i64 %0, %i.af
  %or.cond31 = or i1 %i.ag, %.not30
  br i1 %or.cond31, label %bb.k, label %rb_autoloading_value.exit.thread

bb.k:                                             ; preds = %bb.j, %rb_autoloading_value.exit
  br label %rb_autoloading_value.exit.thread

bb.l:                                             ; preds = %.lr.ph
  %i.ah = inttoptr i64 %.139 to ptr               ; 7 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  %i.aj = and i64 %i.ai, 65536
  %.not.i.i32 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i32, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.ah, i64 160    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.m

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.l
  %i.an = getelementptr i8, ptr %i.ah, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.m:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.ao = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %.split.i, label %bb.n

.split.i:                                         ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %i.ah, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.ao, i64 128
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !32, !range !34, !noundef !35
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.split7.i, label %bb.q

.split7.i:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !20
  %i.au = and i64 %i.at, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.o

bb.o:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.ax = call i32 @rb_st_lookup(ptr noundef nonnull %i.av, i64 noundef %i.aw, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.ax, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !16
  %i.az = inttoptr i64 %i.ay to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.p, %bb.o, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.az, %bb.p ], [ null, %bb.o ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ba = getelementptr i8, ptr %i.ah, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ba, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.q:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %i.ah, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.q
end_hunk_0
begin_hunk_1_@const_tbl_update:bb.a
  br i1 %i.bs, label %rb_obj_write.exit54, label %bb.o

bb.o:                                             ; preds = %autoload_const_value_for_named_constant.exit.thread
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #26
  br label %rb_obj_write.exit54

rb_obj_write.exit54:                              ; preds = %autoload_const_value_for_named_constant.exit.thread, %bb.o
  %i.bt = getelementptr i8, ptr %i.aj, i64 16
  store i64 %i.ao, ptr %i.bt, align 8, !tbaa !16
  %i.bu = icmp eq i64 %i.ao, 0
  %i.bv = and i64 %i.ao, 7
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = or i1 %i.bu, %i.bw
  br i1 %i.bx, label %rb_obj_write.exit55, label %bb.p

bb.p:                                             ; preds = %rb_obj_write.exit54
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.ao) #26
  br label %rb_obj_write.exit55

rb_obj_write.exit55:                              ; preds = %rb_obj_write.exit54, %bb.p
  %i.by = getelementptr i8, ptr %i.aj, i64 4
  store i32 %i.aq, ptr %i.by, align 4, !tbaa !237
  br label %rb_obj_write.exit53

bb.q:                                             ; preds = %bb.g
  %i.bz = call i64 @rb_id_quote_unprintable(i64 noundef %i.h) #26 ; 3 uses
  %i.ca = load i32, ptr %i.aj, align 8, !tbaa !197
  %i.cb = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.cc = icmp eq i64 %i.d, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.64, i64 noundef %i.bz) #35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cd = call i64 @rb_class_name(i64 noundef %i.d)
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.65, i64 noundef %i.cd, i64 noundef %i.bz) #35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !238 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4
  br i1 %i.cg, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr i8, ptr %i.aj, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !237 ; 2 uses
  %.not50 = icmp eq i32 %i.ci, 0
  br i1 %.not50, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !20
  %i.cl = and i64 %i.ck, 8192
  %.not.i56 = icmp eq i64 %i.cl, 0
  %i.cm = getelementptr i8, ptr %i.cj, i64 24     ; 2 uses
  br i1 %.not.i56, label %RSTRING_PTR.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.v, %bb.w
  %i.co = phi ptr [ %i.cn, %bb.w ], [ %i.cm, %bb.v ]
  call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.co, i32 noundef %i.ci, ptr noundef nonnull @.str.66, i64 noundef %i.bz) #26
  br label %bb.x

bb.x:                                             ; preds = %RSTRING_PTR.exit, %bb.u, %bb.t
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.h) #26
  store i32 %i.ca, ptr %i.aj, align 8, !tbaa !197
  store i64 %i.f, ptr %i.ak, align 8, !tbaa !16
  %i.cp = icmp eq i64 %i.f, 0
  %i.cq = and i64 %i.f, 7
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = or i1 %i.cp, %i.cr
  br i1 %i.cs, label %rb_obj_write.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #26
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.y, %bb.x
  %i.ct = getelementptr i8, ptr %i.aj, i64 4
  %i.cu = call i64 @rb_source_location(ptr noundef %i.ct) #26 ; 4 uses
  store i64 %i.cu, ptr %i.ce, align 8, !tbaa !16
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = and i64 %i.cu, 7
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = or i1 %i.cv, %i.cx
  br i1 %i.cy, label %rb_obj_write.exit53, label %bb.z

bb.z:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.cu) #26
  br label %rb_obj_write.exit53

bb.aa:                                            ; preds = %RCLASS_EXT_READABLE.exit
  %i.cz = icmp ne i64 %i.d, 0
  %i.da = and i64 %i.d, 7
  %i.db = icmp eq i64 %i.da, 0
  %.not5.i.i.i = and i1 %i.cz, %i.db
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.aa
  %i.dc = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dd = and i64 %i.dc, 16384
  %.not10.i = icmp eq i64 %i.dd, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.de = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.aa
  %i.df = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i57 = icmp eq ptr %i.df, null
  br i1 %.not.i57, label %.split.i60, label %bb.ac

.split.i60:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.dg = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.d, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.ac:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.dh = getelementptr i8, ptr %i.df, i64 128
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !32, !range !34, !noundef !35
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.split7.i59, label %bb.ad

.split7.i59:                                      ; preds = %bb.ac
  %i.dk = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.d, ptr noundef nonnull %i.df)
  br label %RCLASS_EXT_WRITABLE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.ab, %.split.i60, %.split7.i59, %bb.ad
  %.0.i58 = phi ptr [ %i.de, %bb.ab ], [ %i.dl, %bb.ad ], [ %i.dg, %.split.i60 ], [ %i.dk, %.split7.i59 ]
  %i.dm = getelementptr i8, ptr %.0.i58, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !199
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.h) #26
  %i.do = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #31 ; 5 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = call i32 @rb_id_table_insert(ptr noundef %i.dn, i64 noundef %i.h, i64 noundef %i.dp) #26 ; 0 uses
  store i32 %i.ag, ptr %i.do, align 8, !tbaa !197
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.f, ptr %i.dr, align 8, !tbaa !16
  %i.ds = icmp eq i64 %i.f, 0
  %i.dt = and i64 %i.f, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %rb_obj_write.exit.i61, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_EXT_WRITABLE.exit
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #26
  br label %rb_obj_write.exit.i61

rb_obj_write.exit.i61:                            ; preds = %bb.ae, %RCLASS_EXT_WRITABLE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dy = call i64 @rb_source_location(ptr noundef nonnull %i.dx) #26 ; 4 uses
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !16
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = and i64 %i.dy, 7
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = or i1 %i.dz, %i.eb
  br i1 %i.ec, label %rb_obj_write.exit53, label %bb.af

bb.af:                                            ; preds = %rb_obj_write.exit.i61
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.dy) #26
  br label %rb_obj_write.exit53

rb_obj_write.exit53:                              ; preds = %bb.af, %rb_obj_write.exit.i61, %bb.z, %rb_obj_write.exit.i, %bb.n, %rb_obj_write.exit, %rb_obj_write.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

declare i64 @rb_source_location(ptr noundef) local_unnamed_addr #1

declare void @rb_compile_warn(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @rb_feature_provided(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_const_search_from(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = and i64 %0, -5
  %.not110115 = icmp eq i64 %i.i, 0
  br i1 %.not110115, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not52 = trunc nuw i32 %4 to i1                ; 2 uses
  %.not57 = icmp eq i32 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit86
  %.042117 = phi i64 [ %0, %.lr.ph ], [ %i.ex, %RCLASS_EXT_READABLE.exit86 ] ; 3 uses
  %.046116 = phi i1 [ true, %.lr.ph ], [ false, %RCLASS_EXT_READABLE.exit86 ]
  %.pre138 = inttoptr i64 %.042117 to ptr         ; 17 uses
  br i1 %.046116, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.pre138, align 8, !tbaa !20
  %i.k = and i64 %i.j, 65536
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.pre138, i64 160  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.d

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.c
  %i.o = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.p = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i, label %bb.h

.split7.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.u = load i64, ptr %.pre138, align 8, !tbaa !20
  %i.v = and i64 %i.u, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !36
  %i.y = call i32 @rb_st_lookup(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull %i.h) #26
  %.not5.i.i13.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.g, %bb.f, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ab = getelementptr i8, ptr %.pre138, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ab, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.h
  %.0.i = phi ptr [ %i.o, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ac, %bb.h ], [ %i.q, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ad = getelementptr i8, ptr %.0.i, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !239
  %.not = icmp eq i64 %i.ae, %.042117
  br i1 %.not, label %._crit_edge, label %bb.av

._crit_edge:                                      ; preds = %bb.b, %RCLASS_EXT_READABLE.exit
  %i.af = load i64, ptr %.pre138, align 8, !tbaa !20 ; 2 uses
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 28
  br i1 %i.ah, label %bb.i, label %.peel.begin

bb.i:                                             ; preds = %._crit_edge
  %i.ai = getelementptr i8, ptr %.pre138, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.aj to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.i, %._crit_edge
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.i ], [ %.pre138, %._crit_edge ] ; 5 uses
  %i.ak = phi i64 [ %.pre, %bb.i ], [ %i.af, %._crit_edge ]
  %.045 = phi i64 [ %i.aj, %bb.i ], [ %.042117, %._crit_edge ] ; 11 uses
  %i.al = icmp eq i64 %.045, 0
  %i.am = getelementptr i8, ptr %.pre-phi, i64 160 ; 4 uses
  %i.an = getelementptr i8, ptr %.pre-phi, i64 24 ; 10 uses
  %i.ao = and i64 %i.ak, 65536
  %.not.i.i.i59.peel = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i59.peel, label %RCLASS_EXT_READABLE.exit.i.peel, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel:   ; preds = %.peel.begin
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %RCLASS_EXT_READABLE.exit.i.peel, label %bb.j

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel
  %i.ar = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i60.peel = icmp eq ptr %i.ar, null
  br i1 %.not.i.i60.peel, label %RCLASS_EXT_READABLE.exit.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ar, i64 128
  %i.at = load i8, ptr %i.as, align 8, !tbaa !32, !range !34, !noundef !35
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.split7.i.i.peel, label %RCLASS_EXT_READABLE.exit.i.peel

.split7.i.i.peel:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.av = load i64, ptr %.pre-phi, align 8, !tbaa !20
  %i.aw = and i64 %i.av, 65536
  %.not.i.i.i10.i.i.peel = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i10.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel:          ; preds = %.split7.i.i.peel
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i.i.peel = icmp eq ptr %i.ax, null
  br i1 %.not.i.i12.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %bb.l

bb.l:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.az = call i32 @rb_st_lookup(ptr noundef nonnull %i.ax, i64 noundef %i.ay, ptr noundef nonnull %i.g) #26
  %.not5.i.i13.i.i.peel = icmp eq i32 %i.az, 0
  br i1 %.not5.i.i13.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !16
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel:       ; preds = %bb.m, %bb.l, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel, %.split7.i.i.peel
  %.0.i.i14.i.i.peel = phi ptr [ %i.bb, %bb.m ], [ null, %bb.l ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel ], [ null, %.split7.i.i.peel ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %.not.i15.i.i.peel = icmp eq ptr %.0.i.i14.i.i.peel, null
  %.0.i16.i.i.peel = select i1 %.not.i15.i.i.peel, ptr %i.an, ptr %.0.i.i14.i.i.peel
  br label %RCLASS_EXT_READABLE.exit.i.peel

RCLASS_EXT_READABLE.exit.i.peel:                  ; preds = %bb.j, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, %bb.k, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel, %.peel.begin
  %.0.i.i.peel = phi ptr [ %.0.i16.i.i.peel, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel ], [ %i.an, %bb.k ], [ %i.an, %.peel.begin ], [ %i.an, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel ], [ %i.an, %bb.j ]
  %i.bc = getelementptr i8, ptr %.0.i.i.peel, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !199 ; 2 uses
  %.not.i2.i.peel = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.peel, label %rb_const_lookup.exit.thread, label %bb.n

bb.n:                                             ; preds = %RCLASS_EXT_READABLE.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.be = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i3.i.peel = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i3.i.peel, label %bb.o, label %rb_vm_lock_enter.exit.i.i.peel

bb.o:                                             ; preds = %bb.n
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #26
  br label %rb_vm_lock_enter.exit.i.i.peel

rb_vm_lock_enter.exit.i.i.peel:                   ; preds = %bb.o, %bb.n
  %i.bf = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.bd, i64 noundef %1, ptr noundef nonnull %i.e) #26
  %i.bg = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i11.i.i.peel = icmp eq ptr %i.bg, null
  br i1 %.not.i.i11.i.i.peel, label %bb.p, label %rb_vm_lock_leave.exit.i.i.peel

bb.p:                                             ; preds = %rb_vm_lock_enter.exit.i.i.peel
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.f) #26
  br label %rb_vm_lock_leave.exit.i.i.peel

rb_vm_lock_leave.exit.i.i.peel:                   ; preds = %bb.p, %rb_vm_lock_enter.exit.i.i.peel
  %.not12.i.i.peel = icmp eq i32 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bh = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %.not51.peel = icmp eq i64 %i.bh, 0
  %or.cond109.peel = select i1 %.not12.i.i.peel, i1 true, i1 %.not51.peel
  br i1 %or.cond109.peel, label %rb_const_lookup.exit.thread, label %bb.q

bb.q:                                             ; preds = %rb_vm_lock_leave.exit.i.i.peel
  %.pre132 = load i32, ptr %i.bi, align 8, !tbaa !197 ; 2 uses
  %i.bj = and i32 %.pre132, 255
  %i.bk = icmp eq i32 %i.bj, 1
  %or.cond164 = select i1 %.not52, i1 %i.bk, i1 false
  br i1 %or.cond164, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = and i32 %.pre132, 256
  %.not.i62.peel = icmp eq i32 %i.bl, 0
end_hunk_1
begin_hunk_2_@rb_const_search_from:bb.a
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !146
  %i.cc = call ptr @rb_check_typeddata(i64 noundef %i.cb, ptr noundef nonnull @autoload_data_type) #26 ; 3 uses
  %.not.i.i64.peel = icmp eq ptr %i.cc, null
  br i1 %.not.i.i64.peel, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr i8, ptr %i.cc, i64 16     ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !170
  %i.cf = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.cg = getelementptr i8, ptr %i.cf, i64 496
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !172
  %.not12.i.i65.peel = icmp eq i64 %i.ce, %i.ch
  %.phi.trans.insert.i.peel = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  br i1 %.not12.i.i65.peel, label %bb.ab, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.aa
  store i64 4, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !16
  store i64 0, ptr %i.cd, align 8, !tbaa !170
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.val.pre.i.peel = load i64, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !189 ; 2 uses
  %.not.i9.i.peel = icmp eq i64 %.val.pre.i.peel, 4
  br i1 %.not.i9.i.peel, label %bb.ad, label %autoload_by_current.exit.i.peel

autoload_by_current.exit.i.peel:                  ; preds = %bb.ab
  %i.ci = call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i.peel) #26
  %.not11.i.peel = icmp eq i64 %i.ci, 0
  br i1 %.not11.i.peel, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %autoload_by_current.exit.i.peel
  %i.cj = getelementptr i8, ptr %i.bz, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !152 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 36
  br i1 %i.cl, label %bb.ad, label %autoloading_const_entry.exit

bb.ad:                                            ; preds = %bb.y, %bb.z, %.thread.i.peel, %bb.ab, %autoload_by_current.exit.i.peel, %bb.ac
  %i.cm = call i64 @rb_autoload_load(i64 noundef %.045, i64 noundef %1) ; 0 uses
  %.pre136 = load i64, ptr %.pre-phi, align 8, !tbaa !20
  %i.cn = and i64 %.pre136, 65536
  %.not.i.i.i59 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i59, label %RCLASS_EXT_READABLE.exit.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.ad
  %i.co = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %RCLASS_EXT_READABLE.exit.i, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.cq = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i60, label %RCLASS_EXT_READABLE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr i8, ptr %i.cq, i64 128
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.split7.i.i, label %RCLASS_EXT_READABLE.exit.i

.split7.i.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.cu = load i64, ptr %.pre-phi, align 8, !tbaa !20
  %i.cv = and i64 %i.cu, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.ag

bb.ag:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !36
  %i.cy = call i32 @rb_st_lookup(ptr noundef nonnull %i.cw, i64 noundef %i.cx, ptr noundef nonnull %i.g) #26
  %.not5.i.i13.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load i64, ptr %i.g, align 8, !tbaa !16
  %i.da = inttoptr i64 %i.cz to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.ah, %bb.ag, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.da, %bb.ah ], [ null, %bb.ag ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.an, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.ae, %bb.af, %bb.ad, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i
  %.0.i.i = phi ptr [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ], [ %i.an, %bb.af ], [ %i.an, %bb.ad ], [ %i.an, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i ], [ %i.an, %bb.ae ]
  %i.db = getelementptr i8, ptr %.0.i.i, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !199 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.dc, null
  br i1 %.not.i2.i, label %rb_const_lookup.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %RCLASS_EXT_READABLE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.dd = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i3.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i3.i, label %bb.aj, label %rb_vm_lock_enter.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #26
  br label %rb_vm_lock_enter.exit.i.i

rb_vm_lock_enter.exit.i.i:                        ; preds = %bb.aj, %bb.ai
  %i.de = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.dc, i64 noundef %1, ptr noundef nonnull %i.e) #26
  %i.df = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i11.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i11.i.i, label %bb.ak, label %rb_vm_lock_leave.exit.i.i

bb.ak:                                            ; preds = %rb_vm_lock_enter.exit.i.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.f) #26
  br label %rb_vm_lock_leave.exit.i.i

rb_vm_lock_leave.exit.i.i:                        ; preds = %bb.ak, %rb_vm_lock_enter.exit.i.i
  %.not12.i.i = icmp eq i32 %i.de, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.dg = load i64, ptr %i.e, align 8             ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %.not51 = icmp eq i64 %i.dg, 0
  %or.cond109 = select i1 %.not12.i.i, i1 true, i1 %.not51
  br i1 %or.cond109, label %rb_const_lookup.exit.thread, label %bb.al

bb.al:                                            ; preds = %rb_vm_lock_leave.exit.i.i
  %.pre133 = load i32, ptr %i.dh, align 8, !tbaa !197 ; 2 uses
  %i.di = and i32 %.pre133, 255
  %i.dj = icmp eq i32 %i.di, 1
  %or.cond167 = select i1 %.not52, i1 %i.dj, i1 false
  br i1 %or.cond167, label %.loopexit, label %bb.am

.loopexit:                                        ; preds = %bb.al, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !98
  store volatile ptr %i.dl, ptr %i.d, align 8, !tbaa !98
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.d, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dm = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 152
  store i64 %.045, ptr %i.dm, align 8, !tbaa !140
  br label %.thread100

bb.am:                                            ; preds = %bb.al
  %i.dn = and i32 %.pre133, 256
  %.not.i62 = icmp eq i32 %i.dn, 0
  br i1 %.not.i62, label %rb_const_warn_if_deprecated.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 1) #26
  br i1 %i.do, label %bb.ao, label %rb_const_warn_if_deprecated.exit

bb.ao:                                            ; preds = %bb.an
  %i.dp = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.dq = icmp eq i64 %.045, %i.dp
  br i1 %i.dq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dr = call i64 @rb_id_quote_unprintable(i64 noundef %1) #26
  call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.29, i64 noundef %i.dr) #35
  br label %rb_const_warn_if_deprecated.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ds = call i64 @rb_class_real(i64 noundef %.045) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.dt = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.ds, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4
  br i1 %i.du, label %rb_class_name.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = call i64 @rb_str_dup(i64 noundef %i.dt) #26
  br label %rb_class_name.exit

rb_class_name.exit:                               ; preds = %bb.aq, %bb.ar
  %.0.i.i88 = phi i64 [ 4, %bb.aq ], [ %i.dv, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dw = call i64 @rb_id_quote_unprintable(i64 noundef %1) #26
  call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef %.0.i.i88, i64 noundef %i.dw) #35
  br label %rb_const_warn_if_deprecated.exit

rb_const_warn_if_deprecated.exit:                 ; preds = %bb.am, %bb.an, %bb.ap, %rb_class_name.exit
  %i.dx = getelementptr i8, ptr %i.dh, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !165 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 36
  br i1 %i.dz, label %rb_const_lookup.exit.thread, label %.loopexit123

autoloading_const_entry.exit:                     ; preds = %bb.ac
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %.thread100, label %bb.as

bb.as:                                            ; preds = %autoloading_const_entry.exit
  store i64 %.045, ptr %5, align 8, !tbaa !16
  %.phi.trans.insert134 = getelementptr i8, ptr %i.bz, i64 48
  %.pre135 = load i64, ptr %.phi.trans.insert134, align 8, !tbaa !152
  br label %.thread100

.loopexit123:                                     ; preds = %rb_const_warn_if_deprecated.exit.peel, %rb_const_warn_if_deprecated.exit
  %.lcssa = phi i64 [ %i.dy, %rb_const_warn_if_deprecated.exit ], [ %i.bw, %rb_const_warn_if_deprecated.exit.peel ] ; 2 uses
  %.not53 = trunc nuw i32 %2 to i1
  %i.ea = load i64, ptr @rb_cObject, align 8
  %i.eb = icmp eq i64 %.045, %i.ea
  %or.cond = select i1 %.not53, i1 %i.eb, i1 false
  br i1 %or.cond, label %select.unfold, label %bb.at

bb.at:                                            ; preds = %.loopexit123
  %.not54 = icmp eq ptr %5, null
  br i1 %.not54, label %.thread100, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %.045, ptr %5, align 8, !tbaa !16
  br label %.thread100

rb_const_lookup.exit.thread:                      ; preds = %rb_vm_lock_leave.exit.i.i, %RCLASS_EXT_READABLE.exit.i, %rb_const_warn_if_deprecated.exit, %bb.x, %rb_vm_lock_leave.exit.i.i.peel, %RCLASS_EXT_READABLE.exit.i.peel
  br i1 %.not57, label %select.unfold, label %bb.av

bb.av:                                            ; preds = %RCLASS_EXT_READABLE.exit, %rb_const_lookup.exit.thread
  %i.ec = load i64, ptr %.pre138, align 8, !tbaa !20
  %i.ed = and i64 %i.ec, 65536
  %.not.i.i67 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i67, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68:        ; preds = %bb.av
  %i.ee = getelementptr i8, ptr %.pre138, i64 160 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85, label %bb.aw

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68, %bb.av
  %i.eh = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit86

bb.aw:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68
  %i.ei = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i69 = icmp eq ptr %i.ei, null
  br i1 %.not.i69, label %.split.i80, label %bb.ax

.split.i80:                                       ; preds = %bb.aw
  %i.ej = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit86

bb.ax:                                            ; preds = %bb.aw
  %i.ek = getelementptr i8, ptr %i.ei, i64 128
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !32, !range !34, !noundef !35
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.split7.i71, label %bb.ba

.split7.i71:                                      ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.en = load i64, ptr %.pre138, align 8, !tbaa !20
  %i.eo = and i64 %i.en, 65536
  %.not.i.i.i10.i72 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i10.i72, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i73

RCLASS_CLASSEXT_TBL.exit.i.i11.i73:               ; preds = %.split7.i71
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i74 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i12.i74, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, label %bb.ay

bb.ay:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i73
  %i.eq = load i64, ptr %i.ei, align 8, !tbaa !36
  %i.er = call i32 @rb_st_lookup(ptr noundef nonnull %i.ep, i64 noundef %i.eq, ptr noundef nonnull %i.c) #26
  %.not5.i.i13.i75 = icmp eq i32 %i.er, 0
  br i1 %.not5.i.i13.i75, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.es = load i64, ptr %i.c, align 8, !tbaa !16
  %i.et = inttoptr i64 %i.es to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76

RCLASS_EXT_READABLE_LOOKUP.exit17.i76:            ; preds = %bb.az, %bb.ay, %RCLASS_CLASSEXT_TBL.exit.i.i11.i73, %.split7.i71
  %.0.i.i14.i77 = phi ptr [ %i.et, %bb.az ], [ null, %bb.ay ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i73 ], [ null, %.split7.i71 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %.not.i15.i78 = icmp eq ptr %.0.i.i14.i77, null
  %i.eu = getelementptr i8, ptr %.pre138, i64 24
  %.0.i16.i79 = select i1 %.not.i15.i78, ptr %i.eu, ptr %.0.i.i14.i77
  br label %RCLASS_EXT_READABLE.exit86

bb.ba:                                            ; preds = %bb.ax
  %i.ev = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit86

RCLASS_EXT_READABLE.exit86:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85, %.split.i80, %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, %bb.ba
  %.0.i70 = phi ptr [ %i.eh, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85 ], [ %i.ev, %bb.ba ], [ %i.ej, %.split.i80 ], [ %.0.i16.i79, %RCLASS_EXT_READABLE_LOOKUP.exit17.i76 ]
  %i.ew = getelementptr i8, ptr %.0.i70, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !205 ; 2 uses
  %i.ey = and i64 %i.ex, -5
  %.not110 = icmp eq i64 %i.ey, 0
  br i1 %.not110, label %select.unfold, label %bb.b, !llvm.loop !240

select.unfold:                                    ; preds = %RCLASS_EXT_READABLE.exit86, %rb_const_lookup.exit.thread, %bb.a, %.loopexit123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ez = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !98
  store volatile ptr %i.fa, ptr %i.b, align 8, !tbaa !98
  %.0..0..0..0..0..0..i87 = load volatile ptr, ptr %i.b, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fb = getelementptr i8, ptr %.0..0..0..0..0..0..i87, i64 152
  store i64 0, ptr %i.fb, align 8, !tbaa !140
  br label %.thread100

.thread100:                                       ; preds = %bb.as, %autoloading_const_entry.exit, %bb.au, %bb.at, %.loopexit, %select.unfold
  %.5 = phi i64 [ 36, %select.unfold ], [ %.lcssa, %bb.au ], [ %.lcssa, %bb.at ], [ 36, %.loopexit ], [ %i.ck, %autoloading_const_entry.exit ], [ %.pre135, %bb.as ]
  ret i64 %.5
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_const_location_from(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = and i64 %0, -5
  %.not4549 = icmp eq i64 %i.b, 0
  br i1 %.not4549, label %.thread36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not28 = icmp eq i32 %3, 0
  br i1 %.not28, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.c = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not.us = icmp eq ptr %i.c, null
  br i1 %.not.us, label %.thread36, label %.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.02250 = phi i64 [ %i.bq, %bb.q ], [ %0, %.lr.ph ] ; 3 uses
  %i.d = call ptr @rb_const_lookup(i64 noundef %.02250, i64 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %0, %.lr.ph.split.us ], [ %.02250, %.lr.ph.split ] ; 2 uses
  %.us-phi52 = phi ptr [ %i.c, %.lr.ph.split.us ], [ %i.d, %.lr.ph.split ] ; 3 uses
  %.not29 = trunc nuw i32 %2 to i1
  %i.e = load i64, ptr @rb_cObject, align 8
  %i.f = icmp eq i64 %.us-phi, %i.e
  %or.cond = select i1 %.not29, i1 %i.f, i1 false
  br i1 %or.cond, label %.thread36, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.g = getelementptr i8, ptr %.us-phi52, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !165
  %i.i = icmp eq i64 %i.h, 36
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call fastcc i64 @autoload_data(i64 noundef %.us-phi, i64 noundef %1) ; 2 uses
  %i.k = and i64 %i.j, -5
  %.not46 = icmp eq i64 %i.k, 0
  br i1 %.not46, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @rb_check_typeddata(i64 noundef %i.j, ptr noundef nonnull @autoload_const_type) #26 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !146
  %i.o = call ptr @rb_check_typeddata(i64 noundef %i.n, ptr noundef nonnull @autoload_data_type) #26 ; 4 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %get_autoload_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !170
  %i.r = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.s = getelementptr i8, ptr %i.r, i64 496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !172
  %.not12.i = icmp eq i64 %i.q, %i.t
  br i1 %.not12.i, label %get_autoload_data.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.o, i64 8
  store i64 4, ptr %i.u, align 8, !tbaa !16
  store i64 0, ptr %i.p, align 8, !tbaa !170
  br label %get_autoload_data.exit

get_autoload_data.exit:                           ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr i8, ptr %i.l, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !152
  %i.x = icmp eq i64 %i.w, 36
  br i1 %i.x, label %.thread, label %bb.g

bb.g:                                             ; preds = %get_autoload_data.exit
  %i.y = getelementptr i8, ptr %i.o, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !189
  %i.aa = call i64 @rb_mutex_owned_p(i64 noundef %i.z) #26
  %i.ab = and i64 %i.aa, -5
  %.not47 = icmp eq i64 %i.ab, 0
  br i1 %.not47, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.l, i64 64
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !213
  %i.ae = getelementptr i8, ptr %i.l, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !236
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 1
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = call i64 @rb_assoc_new(i64 noundef %i.ad, i64 noundef %i.ai) #26
  br label %.thread36

.thread:                                          ; preds = %get_autoload_data.exit, %bb.g, %bb.c, %bb.b
  %i.ak = getelementptr i8, ptr %.us-phi52, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !238 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.an = call i64 @rb_ary_new() #26
  br label %.thread36

bb.j:                                             ; preds = %.thread
  %i.ao = getelementptr i8, ptr %.us-phi52, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !237
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = call i64 @rb_assoc_new(i64 noundef %i.al, i64 noundef %i.as) #26
  br label %.thread36

bb.k:                                             ; preds = %.lr.ph.split
  %i.au = inttoptr i64 %.02250 to ptr             ; 7 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !20
  %i.aw = and i64 %i.av, 65536
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.au, i64 160    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.l

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.k
  %i.ba = getelementptr i8, ptr %i.au, i64 24
  br label %bb.q

bb.l:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.bb = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i31 = icmp eq ptr %i.bb, null
  br i1 %.not.i31, label %.split.i, label %bb.m

.split.i:                                         ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %i.au, i64 24
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr i8, ptr %i.bb, i64 128
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !32, !range !34, !noundef !35
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.split7.i, label %bb.p

.split7.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !20
  %i.bh = and i64 %i.bg, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.n

bb.n:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.bk = call i32 @rb_st_lookup(ptr noundef nonnull %i.bi, i64 noundef %i.bj, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.bk, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.o, %bb.n, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.bm, %bb.o ], [ null, %bb.n ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.bn = getelementptr i8, ptr %i.au, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.bn, ptr %.0.i.i14.i
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.au, i64 24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %.split.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i
  %.0.i = phi ptr [ %i.ba, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.bo, %bb.p ], [ %i.bc, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.bp = getelementptr i8, ptr %.0.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !205 ; 2 uses
  %i.br = and i64 %i.bq, -5
  %.not45 = icmp eq i64 %i.br, 0
  br i1 %.not45, label %.thread36, label %.lr.ph.split

.thread36:                                        ; preds = %bb.q, %bb.a, %.lr.ph.split.us, %.split.us, %bb.h, %bb.j, %bb.i
  %.5 = phi i64 [ 4, %.split.us ], [ %i.an, %bb.i ], [ %i.aj, %bb.h ], [ %i.at, %bb.j ], [ 4, %.lr.ph.split.us ], [ 4, %bb.a ], [ 4, %bb.q ]
  ret i64 %.5
}

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_CLASSEXT_TBL.exit.i

RCLASS_CLASSEXT_TBL.exit.i:                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i
  %i.i = load i64, ptr %1, align 8, !tbaa !36
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull %i.b) #26
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread:     ; preds = %bb.b, %RCLASS_CLASSEXT_TBL.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.c

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit:            ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not = icmp eq i64 %i.k, 0
end_hunk_2
