inline.NumInlined: 822
inline.NumDeleted: 151
begin_hunk_0_@hash_foreach_call:bb.a
bb.j:                                             ; preds = %ensure_ar_table.exit.i
  %i.an = load i8, ptr %i.o, align 1, !tbaa !24
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %ar_cleared_entry.exit42.i, label %ar_cleared_entry.exit42.thread.i

ar_cleared_entry.exit42.i:                        ; preds = %bb.j
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !45
  %.not11.i = icmp eq i64 %i.ap, 36
  br i1 %.not11.i, label %bb.m, label %ar_cleared_entry.exit42.thread.i

ar_cleared_entry.exit42.thread.i:                 ; preds = %ar_cleared_entry.exit42.i, %bb.j
  store i64 36, ptr %i.r, align 8, !tbaa !45
  store i8 -1, ptr %i.o, align 1, !tbaa !24
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = lshr i32 %i.ar, 16
  %i.at = and i32 %i.as, 15
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  %.not.i43.i = icmp eq i32 %i.au, 0
  br i1 %.not.i43.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ar_cleared_entry.exit42.thread.i
  %i.av = sext i32 %i.au to i64
  %i.aw = and i64 %i.aq, -983041
  %i.ax = shl nsw i64 %i.av, 16
  %i.ay = or i64 %i.ax, %i.aw
  br label %RHASH_AR_TABLE_SIZE_DEC.exit.i

bb.l:                                             ; preds = %ar_cleared_entry.exit42.thread.i
  %i.az = and i64 %i.aq, -16711681
  br label %RHASH_AR_TABLE_SIZE_DEC.exit.i

RHASH_AR_TABLE_SIZE_DEC.exit.i:                   ; preds = %bb.l, %bb.k
  %storemerge.i.i = phi i64 [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  store i64 %storemerge.i.i, ptr %i.c, align 8, !tbaa !13
  br label %bb.m

default.unreachable:                              ; preds = %ensure_ar_table.exit.i
  unreachable

bb.m:                                             ; preds = %RHASH_AR_TABLE_SIZE_DEC.exit.i, %ar_cleared_entry.exit42.i, %ar_find_entry_hint.exit.i, %bb.f, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ar_foreach_check.exit.thread, label %bb.d, !llvm.loop !58

ar_foreach_check.exit:                            ; preds = %bb.a
  %i.ba = add i64 %i.b, 24
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = tail call i32 @rb_st_foreach_check(ptr noundef nonnull %i.bb, ptr noundef nonnull @hash_foreach_iter, i64 noundef %0, i64 noundef 36) #29 ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %ar_foreach_check.exit.thread, label %ar_foreach_check.exit.thread14

ar_foreach_check.exit.thread14:                   ; preds = %bb.g, %ar_find_entry_hint.exit.i, %bb.i, %ar_foreach_check.exit
  %.017 = phi i32 [ %i.bc, %ar_foreach_check.exit ], [ 2, %bb.i ], [ 2, %ar_find_entry_hint.exit.i ], [ 2, %bb.g ]
  %i.bd = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @.str.97, i32 noundef %.017) #31
  unreachable

ar_foreach_check.exit.thread:                     ; preds = %ensure_ar_table.exit.i, %bb.m, %bb.b, %bb.c, %ar_foreach_check.exit
  ret i64 4
}

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @hash_foreach_ensure(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = lshr i64 %i.b, 25
  %i.d = and i64 %i.c, 127                        ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 127, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @id_hash_iter_lev, align 8, !tbaa !11
  %i.f = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef %i.e) #29 ; 2 uses
  %i.g = ashr i64 %i.f, 1                         ; 2 uses
  %i.h = icmp ugt i64 %i.g, 127
  %i.i = load i64, ptr @id_hash_iter_lev, align 8, !tbaa !11 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = or i64 %i.f, 1
  %i.k = add i64 %i.j, -2
  tail call void @rb_ivar_set_internal(i64 noundef %0, i64 noundef %i.i, i64 noundef %i.k) #29
  br label %hash_iter_lev_dec.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_attr_delete(i64 noundef %0, i64 noundef %i.i) #29 ; 0 uses
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.99) #31
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.n = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.a ]
  %.0.i = phi i64 [ %i.g, %bb.d ], [ %i.d, %bb.a ]
  %i.o = and i64 %i.n, -4261412865
  %i.p = shl nuw nsw i64 %.0.i, 25
  %i.q = add nsw i64 %i.p, -33554432
  %i.r = or i64 %i.q, %i.o
  store i64 %i.r, ptr %i.a, align 8, !tbaa !13
  br label %hash_iter_lev_dec.exit

hash_iter_lev_dec.exit:                           ; preds = %bb.c, %bb.f
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_new() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_cHash, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.b, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i64 4, ptr %i.g, align 8, !tbaa !11
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_hash_new_with_size(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp ugt i64 %0, 8                       ; 2 uses
  %i.c = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.d = select i1 %i.b, i64 80, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.c, i64 noundef 8, i32 noundef 0, i64 noundef %i.d) #29 ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  store i64 4, ptr %i.i, align 8, !tbaa !11
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, 24
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.k, ptr noundef nonnull @objhash, i64 noundef %0) #29 ; 0 uses
  %i.m = load i64, ptr %i.h, align 8, !tbaa !13
  %i.n = or i64 %i.m, 32768
  store i64 %i.n, ptr %i.h, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_new_capa(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp ugt i64 %0, 8                       ; 2 uses
  %i.c = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.d = select i1 %i.b, i64 80, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.c, i64 noundef 8, i32 noundef 0, i64 noundef %i.d) #29 ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  store i64 4, ptr %i.i, align 8, !tbaa !11
  br i1 %i.b, label %bb.b, label %rb_hash_new_with_size.exit

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, 24
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.k, ptr noundef nonnull @objhash, i64 noundef %0) #29 ; 0 uses
  %i.m = load i64, ptr %i.h, align 8, !tbaa !13
  %i.n = or i64 %i.m, 32768
  store i64 %i.n, ptr %i.h, align 8, !tbaa !13
  br label %rb_hash_new_with_size.exit

rb_hash_new_with_size.exit:                       ; preds = %bb.a, %bb.b
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_dup(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call i64 @rb_obj_class(i64 noundef %0) #29
  %i.e = and i64 %i.c, 16384
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59   ; 4 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !13
  %.fr7.i = freeze i64 %i.h                       ; 2 uses
  %i.i = and i64 %.fr7.i, 32768
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %.fr7.i, 16
  %i.k = and i64 %i.j, 15
  br label %RHASH_EMPTY_P.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = add i64 %0, 24
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  %i.p = icmp eq i64 %.0.i.i.i, 0
  %i.q = or i1 %.not.i.i.i.i, %i.p
  %i.r = select i1 %i.q, i64 160, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  store volatile ptr %i.t, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = or disjoint i64 %i.e, 8
  %i.v = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.d, i64 noundef %i.u, i32 noundef 0, i64 noundef %i.r) #29 ; 5 uses
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store i64 %i.g, ptr %i.x, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.g, 0
  %i.z = and i64 %i.g, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %hash_dup.exit, label %bb.d

bb.d:                                             ; preds = %RHASH_EMPTY_P.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.v, i64 noundef %i.g) #29
  br label %hash_dup.exit

hash_dup.exit:                                    ; preds = %RHASH_EMPTY_P.exit.i, %bb.d
  %i.ac = tail call fastcc i64 @hash_copy(i64 noundef %i.v, i64 noundef %0) ; 0 uses
  %i.ad = icmp eq i64 %0, 0
  %i.ae = and i64 %0, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %hash_dup.exit.rb_obj_gen_fields_p.exit_crit_edge, label %rb_type.exit.i

hash_dup.exit.rb_obj_gen_fields_p.exit_crit_edge: ; preds = %hash_dup.exit
  %.shift.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.shift.i.i.i.phi.trans.insert, align 4, !tbaa !13
  br label %rb_obj_gen_fields_p.exit

rb_type.exit.i:                                   ; preds = %hash_dup.exit
  %1 = load i64, ptr %i.b, align 8                ; 2 uses
  %i.ah = trunc i64 %1 to i32
  %i.ai = and i32 %i.ah, 31
  %2 = lshr i64 %1, 32
  %3 = trunc nuw i64 %2 to i32
  switch i32 %i.ai, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %hash_dup.exit.rb_obj_gen_fields_p.exit_crit_edge, %rb_type.exit.i
  %4 = phi i32 [ %.pre, %hash_dup.exit.rb_obj_gen_fields_p.exit_crit_edge ], [ %3, %rb_type.exit.i ]
  %5 = and i32 %4, 134742015
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_obj_gen_fields_p.exit
  tail call void @rb_copy_generic_ivar(i64 noundef %i.v, i64 noundef %0) #29
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.e, %rb_obj_gen_fields_p.exit
  ret i64 %i.v
}

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare void @rb_copy_generic_ivar(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_hash_resurrect(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !59   ; 4 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !13
  %.fr7.i = freeze i64 %i.f                       ; 2 uses
  %i.g = and i64 %.fr7.i, 32768
  %.not.i.i.i.i = icmp eq i64 %i.g, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %.fr7.i, 16
  %i.i = and i64 %i.h, 15
  br label %RHASH_EMPTY_P.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %0, 24
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  %i.n = icmp eq i64 %.0.i.i.i, 0
  %i.o = or i1 %.not.i.i.i.i, %i.n
  %i.p = select i1 %i.o, i64 160, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  store volatile ptr %i.r, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.b, i64 noundef 8, i32 noundef 0, i64 noundef %i.p) #29 ; 4 uses
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i64 %i.e, ptr %i.u, align 8, !tbaa !11
  %i.v = icmp eq i64 %i.e, 0
  %i.w = and i64 %i.e, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %hash_dup.exit, label %bb.d

bb.d:                                             ; preds = %RHASH_EMPTY_P.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.s, i64 noundef %i.e) #29
  br label %hash_dup.exit

hash_dup.exit:                                    ; preds = %RHASH_EMPTY_P.exit.i, %bb.d
  %i.z = tail call fastcc i64 @hash_copy(i64 noundef %i.s, i64 noundef %0) ; 0 uses
  ret i64 %i.s
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @rb_hash_tbl_raw(i64 noundef %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ar_force_convert_table(i64 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @ar_force_convert_table(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i64], align 16               ; 4 uses
  %i.b = alloca [8 x i64], align 16               ; 8 uses
  %1 = alloca %struct.st_table, align 8           ; 5 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i.not = icmp eq i64 %i.e, 0
  %i.f = add i64 %0, 24
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  br i1 %.not.i.i.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.h = trunc i64 %i.d to i32
  %i.i = lshr i32 %i.h, 20
  %i.j = and i32 %i.i, 15                         ; 5 uses
  %i.k = lshr i64 %i.d, 16
  %i.l = and i64 %i.k, 15
  %.not.i = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 8        ; 5 uses
  %wide.trip.count49.i = zext nneg i32 %i.j to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count49.i, 3     ; 3 uses
  %i.n = icmp samesign ult i32 %i.j, 4
  br i1 %i.n, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count49.i, 12
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.i.new
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph.split.us.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %.lr.ph.split.us.i ]
  %i.o = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv46.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45
  %i.q = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i64 %i.p, ptr %i.q, align 16, !tbaa !11
  %indvars.iv.next47.i = or disjoint i64 %indvars.iv46.i, 1 ; 2 uses
  %i.r = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next47.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11
  %indvars.iv.next47.i.1 = or disjoint i64 %indvars.iv46.i, 2 ; 2 uses
  %i.u = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next47.i.1
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45
  %i.w = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i64 %i.v, ptr %i.w, align 16, !tbaa !11
  %indvars.iv.next47.i.2 = or disjoint i64 %indvars.iv46.i, 3 ; 2 uses
  %i.x = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next47.i.2
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i64 %i.y, ptr %i.z, align 8, !tbaa !11
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !61

.lr.ph.preheader.unr-lcssa:                       ; preds = %.lr.ph.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph.i
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next47.i.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv.next47.i.epil, %.lr.ph.split.us.i.epil ], [ %indvars.iv46.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.aa = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv46.i.epil
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv46.i.epil
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !11
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.lr.ph.split.us.i.epil, !llvm.loop !62

.lr.ph.preheader:                                 ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.preheader.unr-lcssa
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i64, ptr %i.c, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %i.ad = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.b ]
  %i.ae = and i64 %i.ad, 32768
  %.not.i33 = icmp eq i64 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br i1 %.not.i33, label %bb.e, label %ar_each_key.exit37, !prof !64

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 36
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %i.ag, ptr noundef nonnull @obj_any_hash)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.aj = phi i64 [ %i.ai, %bb.c ], [ 0, %.lr.ph ]
  %i.ak = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !65

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.al = call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %1, ptr noundef nonnull @objhash, i64 noundef %i.l) #29 ; 0 uses
  br i1 %.not.i, label %ar_each_key.exit41, label %.lr.ph.i39
end_hunk_0
begin_hunk_1_@rb_hash_delete_if:bb.a

bb.e:                                             ; preds = %rb_hash_modify_check.exit
  %i.p = lshr i64 %i.n, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_TABLE_EMPTY_P.exit

bb.f:                                             ; preds = %rb_hash_modify_check.exit
  %i.r = add i64 %0, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  br label %RHASH_TABLE_EMPTY_P.exit

RHASH_TABLE_EMPTY_P.exit:                         ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.q, %bb.e ], [ %i.u, %bb.f ]
  %.not10 = icmp eq i64 %.0.i.i, 0
  br i1 %.not10, label %compact_after_delete.exit, label %bb.g

bb.g:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @delete_if_i, i64 noundef %0)
  %i.v = load i64, ptr %i.h, align 8, !tbaa !13
  %i.w = and i64 %i.v, 4261445632
  %or.cond.i = icmp eq i64 %i.w, 32768
  br i1 %or.cond.i, label %bb.h, label %compact_after_delete.exit

bb.h:                                             ; preds = %bb.g
  %i.x = add i64 %0, 24
  %i.y = inttoptr i64 %i.x to ptr
  tail call void @rb_st_compact_table(ptr noundef nonnull %i.y) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %bb.h, %bb.g, %RHASH_TABLE_EMPTY_P.exit, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %RHASH_TABLE_EMPTY_P.exit ], [ %0, %bb.g ], [ %0, %bb.h ]
  ret i64 %.0
}

declare i32 @rb_block_given_p() local_unnamed_addr #1

declare i64 @rb_enumeratorize_with_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_frame_this_func() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 1, 0) i64 @hash_enum_size(i64 noundef %0, i64 %1, i64 %2) #7 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 16
  %i.e = and i64 %i.d, 15
  br label %rb_hash_size.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %0, 24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  br label %rb_hash_size.exit

rb_hash_size.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %i.j = shl i64 %.0.i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @delete_if_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 (i32, ...) @rb_yield_values(i32 noundef 2, i64 noundef %0, i64 noundef %1) #29
  %i.b = and i64 %i.a, -5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %rb_hash_modify.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not3.i.i.i.i = and i1 %i.c, %i.e
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.b
  %i.f = inttoptr i64 %2 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = and i64 %i.g, 2048
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.b
  tail call void @rb_error_frozen_object(i64 noundef %2) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.i = and i64 %i.g, 31
  %i.j = icmp ne i64 %i.i, 5
  %i.k = and i64 %i.g, 49152
  %.not8.i.i.i = icmp eq i64 %i.k, 0
  %or.cond.i.i.i = or i1 %i.j, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %2) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, -7) i64 @rb_hash_clear(i64 noundef returned %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.b ] ; 3 uses
  %i.k = and i64 %i.j, 4261412864
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_hash_modify_check.exit
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @clear_i, i64 noundef 0)
  br label %compact_after_delete.exit

bb.d:                                             ; preds = %rb_hash_modify_check.exit
  %i.l = and i64 %i.j, 32768
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = and i64 %i.j, -4278157313
  store i64 %i.m, ptr %i.d, align 8, !tbaa !13
  br label %compact_after_delete.exit

bb.f:                                             ; preds = %bb.d
  %i.n = add i64 %0, 24
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  tail call void @rb_st_clear(ptr noundef nonnull %i.o) #29
  %i.p = load i64, ptr %i.d, align 8, !tbaa !13
  %i.q = and i64 %i.p, 4261445632
  %or.cond.i = icmp eq i64 %i.q, 32768
  br i1 %or.cond.i, label %bb.g, label %compact_after_delete.exit

bb.g:                                             ; preds = %bb.f
  tail call void @rb_st_compact_table(ptr noundef nonnull %i.o) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @clear_i(i64 %0, i64 %1, i64 %2) #8 {
bb.a:
  ret i32 2
}

declare void @rb_st_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_hash_key_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %.pre.i = inttoptr i64 %0 to ptr                ; 3 uses
  br i1 %i.d, label %.rb_obj_gen_fields_p.exit_crit_edge, label %rb_type.exit.i

.rb_obj_gen_fields_p.exit_crit_edge:              ; preds = %bb.a
  %.shift.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre = load i32, ptr %.shift.i.i.i.phi.trans.insert, align 4, !tbaa !13
  br label %rb_obj_gen_fields_p.exit

rb_type.exit.i:                                   ; preds = %bb.a
  %1 = load i64, ptr %.pre.i, align 8             ; 2 uses
  %i.e = trunc i64 %1 to i32
  %i.f = and i32 %i.e, 31
  %2 = lshr i64 %1, 32
  %3 = trunc nuw i64 %2 to i32
  switch i32 %i.f, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %.rb_obj_gen_fields_p.exit_crit_edge, %rb_type.exit.i
  %4 = phi i32 [ %.pre, %.rb_obj_gen_fields_p.exit_crit_edge ], [ %3, %rb_type.exit.i ]
  %5 = and i32 %4, 134742015
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.c

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_obj_gen_fields_p.exit
  %i.g = getelementptr i8, ptr %.pre.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.k = tail call i64 @rb_fstring(i64 noundef %0) #29
  br label %bb.d

bb.c:                                             ; preds = %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit
  %i.l = tail call i64 @rb_str_new_frozen(i64 noundef %0) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  ret i64 %.0
}

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_hash_aset(i64 noundef %0, i64 noundef %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = and i64 %i.b, 4261412864
  %.not = icmp eq i64 %i.c, 0                     ; 2 uses
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i.i.i = and i1 %i.d, %i.f
  %i.g = and i64 %i.b, 2048
  %.not.i.i.i = icmp eq i64 %i.g, 0
  %or.cond = select i1 %.not3.i.i.i.i, i1 %.not.i.i.i, i1 false, !prof !67
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !67

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.h = and i64 %i.b, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.b, 49152
  %.not8.i.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i.i = or i1 %i.i, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.b
  %i.k = phi i64 [ %i.b, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %.pre, %bb.b ]
  %i.l = and i64 %i.k, 32768
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %rb_hash_modify.exit
  %i.m = add i64 %0, 24
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = icmp eq ptr %i.p, @rb_hashtype_ident
  br i1 %i.q, label %bb.d, label %.critedge

.critedge:                                        ; preds = %rb_hash_modify.exit, %bb.c
  %i.r = tail call i64 @rb_obj_class(i64 noundef %1) #29
  %i.s = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.u = select i1 %.not, ptr @hash_aset_insert, ptr @hash_aset_noinsert
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.v = select i1 %.not, ptr @hash_aset_str_insert, ptr @hash_aset_str_noinsert
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.v, %bb.e ], [ %i.u, %bb.d ]
  tail call fastcc void @tbl_update(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %.sink, i64 noundef %2)
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tbl_update(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.update_arg, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 %3, ptr %4, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %0, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !80
  %i.e = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 32768
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call fastcc i32 @ar_update(i64 noundef %0, i64 noundef %1, ptr noundef nonnull @tbl_update_modify, i64 noundef %i.e)
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %.thread.i, label %rb_hash_stlike_update.exit

.thread.i:                                        ; preds = %bb.b
  %i.j = call fastcc ptr @ar_force_convert_table(i64 noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.a
  %i.k = add i64 %0, 24
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = call i32 @rb_st_update(ptr noundef nonnull %i.l, i64 noundef %1, ptr noundef nonnull @tbl_update_modify, i64 noundef %i.e) #29 ; 0 uses
  br label %rb_hash_stlike_update.exit

rb_hash_stlike_update.exit:                       ; preds = %bb.b, %bb.c
  %i.n = load i64, ptr %i.c, align 8, !tbaa !79   ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = and i64 %i.n, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %rb_obj_written.exit, label %bb.d

bb.d:                                             ; preds = %rb_hash_stlike_update.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.n) #29
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rb_hash_stlike_update.exit, %bb.d
  %i.s = load i64, ptr %i.d, align 8, !tbaa !80   ; 3 uses
  %.not = icmp eq i64 %i.s, 0
  %i.t = and i64 %i.s, 7
  %i.u = icmp ne i64 %i.t, 0
  %or.cond = or i1 %.not, %i.u
  br i1 %or.cond, label %rb_obj_written.exit8, label %bb.e

bb.e:                                             ; preds = %rb_obj_written.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.s) #29
  br label %rb_obj_written.exit8

rb_obj_written.exit8:                             ; preds = %bb.e, %rb_obj_written.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @hash_aset_noinsert(ptr readnone captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @no_new_key() #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %.val = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %.val, ptr %1, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @hash_aset_insert(ptr readnone captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2, i32 %3) #9 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %.val = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %.val, ptr %1, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @hash_aset_str_noinsert(ptr readnone captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %hash_aset_str.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @no_new_key() #33
  unreachable

hash_aset_str.exit:                               ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %.val.i, ptr %1, align 8, !tbaa !11
  ret i32 0
}
end_hunk_1
