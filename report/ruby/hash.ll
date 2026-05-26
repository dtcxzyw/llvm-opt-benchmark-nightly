inline.NumInlined: 822
inline.NumDeleted: 151
begin_hunk_0_@rb_hash_values:bb.a
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %ar_values.exit, label %bb.f, !llvm.loop !82

ar_values.exit:                                   ; preds = %bb.g, %bb.e
  %.0.lcssa.i = phi ptr [ %i.n, %bb.e ], [ %.1.i, %bb.g ]
  %i.ak = ptrtoint ptr %.0.lcssa.i to i64
  %i.al = ptrtoint ptr %i.n to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ao = add i64 %0, 24
  %i.ap = inttoptr i64 %i.ao to ptr
  tail call void @rb_gc_writebarrier_remember(i64 noundef %i.j) #29
  %i.aq = tail call ptr @rb_ary_ptr_use_start(i64 noundef %i.j) #29
  %i.ar = tail call i64 @rb_st_values(ptr noundef nonnull %i.ap, ptr noundef %i.aq, i64 noundef %.0.i) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %ar_values.exit
  %.024 = phi i64 [ %i.an, %ar_values.exit ], [ %i.ar, %bb.h ]
  tail call void @rb_ary_ptr_use_end(i64 noundef %i.j) #29
  tail call void @rb_ary_set_len(i64 noundef %i.j, i64 noundef %.024) #29
  br label %bb.j

bb.j:                                             ; preds = %RHASH_SIZE.exit, %bb.i
  ret i64 %i.j
}

declare i64 @rb_st_values(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_hash_has_key(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %hash_stlike_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 983040
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %hash_stlike_lookup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.h = and i64 %i.g, 32768
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.d, label %hash_stlike_lookup.exit, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i64 %i.f to i8
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 20
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = add i64 %0, 24
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.not19.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not19.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.f ] ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 %indvars.iv.i.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = icmp eq i8 %i.q, %i.i
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr [16 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45
  %i.u = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.t)
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %ar_find_entry.exit.i.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.e
  %i.v = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.v, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread5

hash_stlike_lookup.exit:                          ; preds = %bb.a, %bb.c
  %i.w = add i64 %0, 24
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = tail call i32 @rb_st_lookup(ptr noundef nonnull %i.x, i64 noundef %1, ptr noundef null) #29
  %.0.i.fr = freeze i32 %i.y
  %.not = icmp eq i32 %.0.i.fr, 0
  br i1 %.not, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread5

hash_stlike_lookup.exit.thread:                   ; preds = %bb.f, %bb.d, %ar_find_entry.exit.i.i, %bb.b, %hash_stlike_lookup.exit
  br label %hash_stlike_lookup.exit.thread5

hash_stlike_lookup.exit.thread5:                  ; preds = %ar_find_entry.exit.i.i, %hash_stlike_lookup.exit, %hash_stlike_lookup.exit.thread
  %i.z = phi i64 [ 0, %hash_stlike_lookup.exit.thread ], [ 20, %hash_stlike_lookup.exit ], [ 20, %ar_find_entry.exit.i.i ]
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, -7) i64 @rb_hash_update_by(i64 noundef returned %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.update_func_arg, align 8    ; 5 uses
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i.i = or i1 %i.h, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.b
  %i.j = tail call i64 @rb_convert_type_with_id(i64 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_hash_modify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %0, ptr %3, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.k, align 8, !tbaa !85
  %i.l = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %i.j, ptr noundef @rb_hash_update_func_i, i64 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.e

bb.d:                                             ; preds = %rb_hash_modify.exit
  tail call void @rb_hash_foreach(i64 noundef %i.j, ptr noundef @rb_hash_update_i, i64 noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_update_func_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !86
  %i.d = inttoptr i64 %i.b to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = and i64 %i.e, 4261412864
  %.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not, ptr @rb_hash_update_func_callback_insert, ptr @rb_hash_update_func_callback_noinsert
  tail call fastcc void @tbl_update(i64 noundef %i.b, i64 noundef %0, ptr noundef nonnull %i.g, i64 noundef %2)
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_update_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_hash_aset(i64 noundef %2, i64 noundef %0, i64 noundef %1) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_hash_compare_by_id(i64 noundef returned %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.d = and i64 %i.c, 32768
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %0, 24
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = icmp eq ptr %i.h, @rb_hashtype_ident
  br i1 %i.i, label %rb_hash_compare_by_id_p.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = icmp ne i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = and i64 %i.c, 2048
  %i.m = or disjoint i64 %i.l, %i.k
  %i.n = icmp eq i64 %i.m, 0
  %or.cond = and i1 %i.j, %i.n
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !67

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.o = and i64 %i.c, 31
  %i.p = icmp ne i64 %i.o, 5
  %i.q = and i64 %i.c, 49152
  %.not8.i.i = icmp eq i64 %i.q, 0
  %or.cond.i.i = or i1 %i.p, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.b, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.r = phi i64 [ %i.c, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.d ] ; 3 uses
  %i.s = and i64 %i.r, 4261412864
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_hash_modify_check.exit
  %i.t = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.t, ptr noundef nonnull @.str.8) #31
  unreachable

bb.f:                                             ; preds = %rb_hash_modify_check.exit
  %i.u = and i64 %i.r, 32768
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i64 %i.r, 16
  %i.w = and i64 %i.v, 15
  br label %RHASH_TABLE_EMPTY_P.exit

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %0, 24
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  br label %RHASH_TABLE_EMPTY_P.exit

RHASH_TABLE_EMPTY_P.exit:                         ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.w, %bb.g ], [ %i.aa, %bb.h ]
  %.not21 = icmp eq i64 %.0.i.i, 0
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit
  %i.ab = tail call fastcc ptr @ar_force_convert_table(i64 noundef %0) ; 0 uses
  %i.ac = add i64 %0, 24
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  store ptr @rb_hashtype_ident, ptr %i.ae, align 8, !tbaa !70
  br label %rb_hash_compare_by_id_p.exit

bb.j:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  store volatile ptr %i.ag, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef 0, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  store i64 4, ptr %i.aj, align 8, !tbaa !11
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.al = and i64 %i.ak, 32768
  %.not.i.i19 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i19, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = lshr i64 %i.ak, 16
  %i.an = and i64 %i.am, 15
  br label %RHASH_SIZE.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = add i64 %0, 24
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = add i64 %i.ah, 24
  %i.at = inttoptr i64 %i.as to ptr               ; 3 uses
  %i.au = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.at, ptr noundef nonnull @rb_hashtype_ident, i64 noundef %.0.i) #29 ; 0 uses
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.aw = or i64 %i.av, 32768
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !13
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rb_hash_rehash_i, i64 noundef %i.ah)
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ay = and i64 %i.ax, 32768
  %.not.i.i.not.i = icmp eq i64 %i.ay, 0
  %.pre23 = add i64 %0, 24
  %.pre24 = inttoptr i64 %.pre23 to ptr           ; 3 uses
  br i1 %.not.i.i.not.i, label %rb_hash_free.exit, label %bb.m

bb.m:                                             ; preds = %RHASH_SIZE.exit
  %i.az = getelementptr i8, ptr %.pre24, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37
  tail call void @ruby_xfree(ptr noundef %i.ba) #29
  %i.bb = getelementptr i8, ptr %.pre24, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39
  tail call void @ruby_xfree(ptr noundef %i.bc) #29
  %.pre22 = load i64, ptr %i.b, align 8, !tbaa !13
  br label %rb_hash_free.exit

rb_hash_free.exit:                                ; preds = %RHASH_SIZE.exit, %bb.m
  %i.bd = phi i64 [ %.pre22, %bb.m ], [ %i.ax, %RHASH_SIZE.exit ]
  %i.be = or i64 %i.bd, 32768
  store i64 %i.be, ptr %i.b, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.pre24, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.at, i64 56, i1 false), !tbaa.struct !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.at, i8 noundef 0, i64 noundef 56, i1 noundef false) #29
  br label %rb_hash_compare_by_id_p.exit

rb_hash_compare_by_id_p.exit:                     ; preds = %bb.b, %bb.i, %rb_hash_free.exit
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 21) i64 @rb_hash_compare_by_id_p(i64 noundef %0) #7 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %0, 24
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = icmp eq ptr %i.g, @rb_hashtype_ident
  %i.i = select i1 %i.h, i64 20, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ident_hash_new() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_cHash, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.b, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i64 4, ptr %i.g, align 8, !tbaa !11
  %i.h = add i64 %i.e, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.i, ptr noundef nonnull @rb_hashtype_ident, i64 noundef 0) #29 ; 0 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !13
  %i.l = or i64 %i.k, 32768
  store i64 %i.l, ptr %i.f, align 8, !tbaa !13
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ident_hash_new_with_size(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_cHash, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.b, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i64 4, ptr %i.g, align 8, !tbaa !11
  %i.h = add i64 %i.e, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.i, ptr noundef nonnull @rb_hashtype_ident, i64 noundef %0) #29 ; 0 uses
end_hunk_0
begin_hunk_1_@Init_Hash:bb.a
  %i.cf = load i64, ptr @rb_cHash, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.cf, ptr noundef nonnull @.str.86, ptr noundef nonnull @rb_hash_deconstruct_keys, i32 noundef 1) #29
  %i.cg = load i64, ptr @rb_cHash, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.cg, ptr noundef nonnull @.str.87, ptr noundef nonnull @rb_hash_s_ruby2_keywords_hash_p, i32 noundef 1) #29
  %i.ch = load i64, ptr @rb_cHash, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ch, ptr noundef nonnull @.str.88, ptr noundef nonnull @rb_hash_s_ruby2_keywords_hash, i32 noundef 1) #29
  %i.ci = load i64, ptr @rb_cHash, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  store volatile ptr %i.ck, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cl = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.ci, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i64 4, ptr %i.cn, align 8, !tbaa !11
  %i.co = tail call i64 @rb_obj_freeze(i64 noundef %i.cl) #29 ; 2 uses
  store i64 %i.co, ptr @rb_cHash_empty_frozen, align 8, !tbaa !11
  %i.cp = tail call i64 @rb_obj_set_shareable(i64 noundef %i.co) #29 ; 0 uses
  %i.cq = load i64, ptr @rb_cHash_empty_frozen, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.cq) #29
  %i.cr = load ptr, ptr @environ, align 8, !tbaa !92
  store ptr %i.cr, ptr @origenviron, align 8, !tbaa !92
  %i.cs = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.ct = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.cs, ptr noundef null, ptr noundef nonnull @env_data_type) #29 ; 2 uses
  store i64 %i.ct, ptr @envtbl, align 8, !tbaa !11
  %i.cu = load i64, ptr @rb_mEnumerable, align 8, !tbaa !11
  tail call void @rb_extend_object(i64 noundef %i.ct, i64 noundef %i.cu) #29
  %i.cv = load i64, ptr @envtbl, align 8, !tbaa !11
  %i.cw = tail call i64 @rb_obj_set_shareable(i64 noundef %i.cv) #29 ; 0 uses
  %i.cx = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.cx, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_f_getenv, i32 noundef 1) #29
  %i.cy = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.cy, ptr noundef nonnull @.str.26, ptr noundef nonnull @env_fetch, i32 noundef -1) #29
  %i.cz = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.cz, ptr noundef nonnull @.str.27, ptr noundef nonnull @env_aset_m, i32 noundef 2) #29
  %i.da = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.da, ptr noundef nonnull @.str.28, ptr noundef nonnull @env_aset_m, i32 noundef 2) #29
  %i.db = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.db, ptr noundef nonnull @.str.40, ptr noundef nonnull @env_each_pair, i32 noundef 0) #29
  %i.dc = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dc, ptr noundef nonnull @.str.39, ptr noundef nonnull @env_each_pair, i32 noundef 0) #29
  %i.dd = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dd, ptr noundef nonnull @.str.38, ptr noundef nonnull @env_each_key, i32 noundef 0) #29
  %i.de = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.de, ptr noundef nonnull @.str.37, ptr noundef nonnull @env_each_value, i32 noundef 0) #29
  %i.df = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.df, ptr noundef nonnull @.str.50, ptr noundef nonnull @env_delete_m, i32 noundef 1) #29
  %i.dg = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dg, ptr noundef nonnull @.str.51, ptr noundef nonnull @env_delete_if, i32 noundef 0) #29
  %i.dh = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dh, ptr noundef nonnull @.str.52, ptr noundef nonnull @env_keep_if, i32 noundef 0) #29
  %i.di = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.di, ptr noundef nonnull @.str.59, ptr noundef nonnull @env_slice, i32 noundef -1) #29
  %i.dj = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dj, ptr noundef nonnull @.str.60, ptr noundef nonnull @env_except, i32 noundef -1) #29
  %i.dk = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dk, ptr noundef nonnull @.str.61, ptr noundef nonnull @env_clear, i32 noundef 0) #29
  %i.dl = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dl, ptr noundef nonnull @.str.57, ptr noundef nonnull @env_reject, i32 noundef 0) #29
  %i.dm = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dm, ptr noundef nonnull @.str.58, ptr noundef nonnull @env_reject_bang, i32 noundef 0) #29
  %i.dn = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dn, ptr noundef nonnull @.str.53, ptr noundef nonnull @env_select, i32 noundef 0) #29
  %i.do = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.do, ptr noundef nonnull @.str.54, ptr noundef nonnull @env_select_bang, i32 noundef 0) #29
  %i.dp = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dp, ptr noundef nonnull @.str.55, ptr noundef nonnull @env_select, i32 noundef 0) #29
  %i.dq = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dq, ptr noundef nonnull @.str.56, ptr noundef nonnull @env_select_bang, i32 noundef 0) #29
  %i.dr = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dr, ptr noundef nonnull @.str.49, ptr noundef nonnull @env_shift, i32 noundef 0) #29
  %i.ds = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ds, ptr noundef nonnull @.str.17, ptr noundef nonnull @env_freeze, i32 noundef 0) #29
  %i.dt = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dt, ptr noundef nonnull @.str.62, ptr noundef nonnull @env_invert, i32 noundef 0) #29
  %i.du = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.du, ptr noundef nonnull @.str.64, ptr noundef nonnull @env_replace, i32 noundef 1) #29
  %i.dv = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dv, ptr noundef nonnull @.str.63, ptr noundef nonnull @env_update, i32 noundef -1) #29
  %i.dw = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dw, ptr noundef nonnull @.str.65, ptr noundef nonnull @env_update, i32 noundef -1) #29
  %i.dx = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dx, ptr noundef nonnull @.str.21, ptr noundef nonnull @env_inspect, i32 noundef 0) #29
  %i.dy = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dy, ptr noundef nonnull @.str.16, ptr noundef nonnull @env_none, i32 noundef 0) #29
  %i.dz = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.dz, ptr noundef nonnull @.str.20, ptr noundef nonnull @env_to_a, i32 noundef 0) #29
  %i.ea = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ea, ptr noundef nonnull @.str.22, ptr noundef nonnull @env_to_s, i32 noundef 0) #29
  %i.eb = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.eb, ptr noundef nonnull @.str.33, ptr noundef nonnull @env_key, i32 noundef 1) #29
  %i.ec = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ec, ptr noundef nonnull @.str.34, ptr noundef nonnull @env_size, i32 noundef 0) #29
  %i.ed = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ed, ptr noundef nonnull @.str.35, ptr noundef nonnull @env_size, i32 noundef 0) #29
  %i.ee = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ee, ptr noundef nonnull @.str.36, ptr noundef nonnull @env_empty_p, i32 noundef 0) #29
  %i.ef = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ef, ptr noundef nonnull @.str.45, ptr noundef nonnull @env_f_keys, i32 noundef 0) #29
  %i.eg = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.eg, ptr noundef nonnull @.str.46, ptr noundef nonnull @env_f_values, i32 noundef 0) #29
  %i.eh = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.eh, ptr noundef nonnull @.str.47, ptr noundef nonnull @env_values_at, i32 noundef -1) #29
  %i.ei = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ei, ptr noundef nonnull @.str.72, ptr noundef nonnull @env_has_key, i32 noundef 1) #29
  %i.ej = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ej, ptr noundef nonnull @.str.73, ptr noundef nonnull @env_has_key, i32 noundef 1) #29
  %i.ek = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ek, ptr noundef nonnull @.str.74, ptr noundef nonnull @env_has_key, i32 noundef 1) #29
  %i.el = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.el, ptr noundef nonnull @.str.75, ptr noundef nonnull @env_has_value, i32 noundef 1) #29
  %i.em = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.em, ptr noundef nonnull @.str.76, ptr noundef nonnull @env_has_key, i32 noundef 1) #29
  %i.en = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.en, ptr noundef nonnull @.str.77, ptr noundef nonnull @env_has_value, i32 noundef 1) #29
  %i.eo = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.eo, ptr noundef nonnull @.str.18, ptr noundef nonnull @env_f_to_hash, i32 noundef 0) #29
  %i.ep = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ep, ptr noundef nonnull @.str.19, ptr noundef nonnull @env_to_h, i32 noundef 0) #29
  %i.eq = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.eq, ptr noundef nonnull @.str.67, ptr noundef nonnull @env_assoc, i32 noundef 1) #29
  %i.er = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.er, ptr noundef nonnull @.str.68, ptr noundef nonnull @env_rassoc, i32 noundef 1) #29
  %i.es = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.es, ptr noundef nonnull @.str.89, ptr noundef nonnull @env_clone, i32 noundef -1) #29
  %i.et = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.et, ptr noundef nonnull @.str.90, ptr noundef nonnull @env_dup, i32 noundef 0) #29
  %i.eu = load i64, ptr @envtbl, align 8, !tbaa !11
  %i.ev = tail call i64 @rb_singleton_class(i64 noundef %i.eu) #29 ; 4 uses
  tail call void @rb_undef_method(i64 noundef %i.ev, ptr noundef nonnull @.str.91) #29
  tail call void @rb_undef_method(i64 noundef %i.ev, ptr noundef nonnull @.str.92) #29
  tail call void @rb_undef_method(i64 noundef %i.ev, ptr noundef nonnull @.str.15) #29
  tail call void @rb_undef_method(i64 noundef %i.ev, ptr noundef nonnull @.str.93) #29
  %i.ew = load i64, ptr @envtbl, align 8, !tbaa !11
  tail call void @rb_define_global_const(ptr noundef nonnull @.str.94, i64 noundef %i.ew) #29
  ret void
}

declare i64 @rb_make_internal_id() local_unnamed_addr #1

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @empty_hash_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %0, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 16
  store i64 4, ptr %i.f, align 8, !tbaa !11
  ret i64 %i.d
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_s_create(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !11
  %i.f = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.e, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29 ; 6 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = and i64 %i.i, 32768
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %rb_hash_compare_by_id_p.exit.thread, label %RHASH_EMPTY_P.exit.thread

RHASH_EMPTY_P.exit.thread:                        ; preds = %bb.c
  %i.k = add i64 %i.f, 24
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %rb_hash_compare_by_id_p.exit.thread, label %.thread

.thread:                                          ; preds = %RHASH_EMPTY_P.exit.thread
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.r = icmp eq ptr %i.q, @rb_hashtype_ident
  br i1 %i.r, label %rb_hash_to_a.exit, label %rb_hash_compare_by_id_p.exit.thread

rb_hash_to_a.exit:                                ; preds = %.thread
  %i.s = tail call i64 @rb_ary_new_capa(i64 noundef %i.n) #29 ; 2 uses
  tail call void @rb_hash_foreach(i64 noundef %i.f, ptr noundef @to_a_i, i64 noundef %i.s)
  br label %bb.h

rb_hash_compare_by_id_p.exit.thread:              ; preds = %bb.c, %.thread, %RHASH_EMPTY_P.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  store volatile ptr %i.u, ptr %i.c, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %2, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 4 uses
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store i64 4, ptr %i.x, align 8, !tbaa !11
  %i.y = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.z = and i64 %i.y, 32768
  %.not.i.i.i43 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i43, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_hash_compare_by_id_p.exit.thread
  %i.aa = lshr i64 %i.y, 16
  %i.ab = and i64 %i.aa, 15
  br label %RHASH_EMPTY_P.exit45

bb.e:                                             ; preds = %rb_hash_compare_by_id_p.exit.thread
  %i.ac = add i64 %i.f, 24
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit45

RHASH_EMPTY_P.exit45:                             ; preds = %bb.d, %bb.e
  %.0.i.i44 = phi i64 [ %i.ab, %bb.d ], [ %i.af, %bb.e ]
  %i.ag = icmp eq i64 %.0.i.i44, 0
  br i1 %i.ag, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit45
  %i.ah = tail call fastcc i64 @hash_copy(i64 noundef %i.v, i64 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.ai = load i64, ptr %1, align 8, !tbaa !11
  %i.aj = tail call i64 @rb_check_array_type(i64 noundef %i.ai) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_hash_to_a.exit
  %.038 = phi i64 [ %i.aj, %bb.g ], [ %i.s, %rb_hash_to_a.exit ] ; 2 uses
  %i.ak = icmp eq i64 %.038, 4
  br i1 %i.ak, label %.thread63, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  store volatile ptr %i.am, ptr %i.b, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i46 = load volatile ptr, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i46, i64 noundef %2, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 4 uses
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store i64 4, ptr %i.ap, align 8, !tbaa !11
  %i.aq = inttoptr i64 %.038 to ptr               ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 32
  br label %bb.j

bb.j:                                             ; preds = %RARRAY_AREF.exit57, %bb.i
  %.039 = phi i64 [ 0, %bb.i ], [ %i.bz, %RARRAY_AREF.exit57 ] ; 5 uses
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.au = and i64 %i.at, 8192
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.j
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.aw = icmp slt i64 %.039, %i.av
  br i1 %i.aw, label %bb.k, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.j
  %i.ax = lshr i64 %i.at, 15
  %i.ay = and i64 %i.ax, 127
  %i.az = icmp samesign ult i64 %.039, %i.ay
  br i1 %i.az, label %RARRAY_AREF.exit, label %.loopexit

bb.k:                                             ; preds = %rb_array_len.exit
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !24
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.k
  %.0.i.i48 = phi ptr [ %i.ba, %bb.k ], [ %i.ar, %rb_array_len.exit.thread ]
  %i.bb = getelementptr [8 x i8], ptr %.0.i.i48, i64 %.039
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = tail call i64 @rb_check_array_type(i64 noundef %i.bc) #29 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %RARRAY_AREF.exit
  %i.bf = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.bg = tail call ptr @rb_builtin_class_name(i64 noundef %i.bc) #29
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bf, ptr noundef nonnull @.str.104, ptr noundef %i.bg, i64 noundef %.039) #31
  unreachable

bb.m:                                             ; preds = %RARRAY_AREF.exit
  %i.bh = inttoptr i64 %i.bd to ptr               ; 6 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = and i64 %i.bi, 8192
  %.not.i49 = icmp eq i64 %i.bj, 0                ; 3 uses
  br i1 %.not.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = lshr i64 %i.bi, 15
  %i.bl = and i64 %i.bk, 127
  br label %rb_array_len.exit51

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr i8, ptr %i.bh, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24
  br label %rb_array_len.exit51

rb_array_len.exit51:                              ; preds = %bb.n, %bb.o
  %.0.i50 = phi i64 [ %i.bl, %bb.n ], [ %i.bn, %bb.o ] ; 2 uses
  switch i64 %.0.i50, label %bb.p [
    i64 2, label %bb.q
    i64 1, label %bb.t
  ]

bb.p:                                             ; preds = %rb_array_len.exit51
  %i.bo = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bo, ptr noundef nonnull @.str.105, i64 noundef %.0.i50) #31
  unreachable

bb.q:                                             ; preds = %rb_array_len.exit51
  br i1 %.not.i49, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr i8, ptr %i.bh, i64 16
  br label %RARRAY_AREF.exit54

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bh, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  br label %RARRAY_AREF.exit54

RARRAY_AREF.exit54:                               ; preds = %bb.r, %bb.s
  %.0.i.i53 = phi ptr [ %i.bp, %bb.r ], [ %i.br, %bb.s ]
  %i.bs = getelementptr i8, ptr %.0.i.i53, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %RARRAY_AREF.exit54, %rb_array_len.exit51
  %.0 = phi i64 [ %i.bt, %RARRAY_AREF.exit54 ], [ 4, %rb_array_len.exit51 ]
  br i1 %.not.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr i8, ptr %i.bh, i64 16
  br label %RARRAY_AREF.exit57

bb.v:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %i.bh, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  br label %RARRAY_AREF.exit57

RARRAY_AREF.exit57:                               ; preds = %bb.u, %bb.v
  %.0.i.i56 = phi ptr [ %i.bu, %bb.u ], [ %i.bw, %bb.v ]
  %i.bx = load i64, ptr %.0.i.i56, align 8, !tbaa !11
  %i.by = tail call i64 @rb_hash_aset(i64 noundef %i.an, i64 noundef %i.bx, i64 noundef %.0) ; 0 uses
  %i.bz = add nuw nsw i64 %.039, 1
  br label %bb.j, !llvm.loop !100

bb.w:                                             ; preds = %bb.a
  %i.ca = and i32 %0, 1
  %.not40 = icmp eq i32 %i.ca, 0
  br i1 %.not40, label %bb.x, label %.thread63

.thread63:                                        ; preds = %bb.h, %bb.w
  %i.cb = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cb, ptr noundef nonnull @.str.106) #31
  unreachable

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  store volatile ptr %i.cd, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i58 = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i58, i64 noundef %2, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store i64 4, ptr %i.cg, align 8, !tbaa !11
  %i.ch = sext i32 %0 to i64
  tail call void @rb_hash_bulk_insert(i64 noundef %i.ch, ptr noundef %1, i64 noundef %i.ce)
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %RHASH_EMPTY_P.exit45, %bb.f, %bb.x
  %.037 = phi i64 [ %i.ce, %bb.x ], [ %i.v, %RHASH_EMPTY_P.exit45 ], [ %i.v, %bb.f ], [ %i.an, %rb_array_len.exit ], [ %i.an, %rb_array_len.exit.thread ]
end_hunk_1
begin_hunk_2_@rb_hash_reject:bb.a
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i64 4, ptr %i.o, align 8, !tbaa !11
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, 32768
  %i.r = load i64, ptr %i.n, align 8, !tbaa !13
  %i.s = and i64 %i.r, -32769
  %storemerge.i = or disjoint i64 %i.s, %i.q
  store i64 %storemerge.i, ptr %i.n, align 8, !tbaa !13
  %i.t = tail call fastcc i64 @hash_copy(i64 noundef %i.m, i64 noundef %0) ; 0 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.v = and i64 %i.u, 32768
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i64 %i.u, 16
  %i.x = and i64 %i.w, 15
  br label %RHASH_EMPTY_P.exit

bb.e:                                             ; preds = %bb.c
  %i.y = add i64 %0, 24
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.x, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = icmp eq i64 %.0.i.i, 0
  br i1 %i.ac, label %compact_after_delete.exit, label %bb.f

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit
  tail call void @rb_hash_foreach(i64 noundef %i.m, ptr noundef @delete_if_i, i64 noundef %i.m)
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !13
  %i.ae = and i64 %i.ad, 4261445632
  %or.cond.i = icmp eq i64 %i.ae, 32768
  br i1 %or.cond.i, label %bb.g, label %compact_after_delete.exit

bb.g:                                             ; preds = %bb.f
  %i.af = add i64 %i.m, 24
  %i.ag = inttoptr i64 %i.af to ptr
  tail call void @rb_st_compact_table(ptr noundef nonnull %i.ag) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %bb.g, %bb.f, %RHASH_EMPTY_P.exit, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.m, %RHASH_EMPTY_P.exit ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_reject_bang(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #29
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #29
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not3.i.i.i.i = and i1 %i.e, %i.g
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.j = and i64 %i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.k = and i64 %i.i, 31
  %i.l = icmp ne i64 %i.k, 5
  %i.m = and i64 %i.i, 49152
  %.not8.i.i.i = icmp eq i64 %i.m, 0
  %or.cond.i.i.i = or i1 %i.l, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.h, align 8, !tbaa !13
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.d
  %i.n = phi i64 [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = and i64 %i.n, 32768
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_hash_modify.exit
  %i.p = lshr i64 %i.n, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_SIZE.exit

bb.f:                                             ; preds = %rb_hash_modify.exit
  %i.r = add i64 %0, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %.not12 = icmp eq i64 %.0.i, 0
  br i1 %.not12, label %bb.j, label %bb.g

bb.g:                                             ; preds = %RHASH_SIZE.exit
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @delete_if_i, i64 noundef %0)
  %i.v = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.w = and i64 %i.v, 32768
  %.not.i.i13 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i13, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = lshr i64 %i.v, 16
  %i.y = and i64 %i.x, 15
  br label %RHASH_SIZE.exit15

bb.i:                                             ; preds = %bb.g
  %i.z = add i64 %0, 24
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51
  br label %RHASH_SIZE.exit15

RHASH_SIZE.exit15:                                ; preds = %bb.h, %bb.i
  %.0.i14 = phi i64 [ %i.y, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i64 %.0.i, %.0.i14
  %. = select i1 %i.ad, i64 4, i64 %0
  br label %bb.j

bb.j:                                             ; preds = %RHASH_SIZE.exit15, %RHASH_SIZE.exit, %bb.b
  %.0 = phi i64 [ %., %RHASH_SIZE.exit15 ], [ 4, %RHASH_SIZE.exit ], [ %i.d, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_slice(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i32 %0, 0
  %.pre = inttoptr i64 %2 to ptr                  ; 3 uses
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.pre, align 8, !tbaa !13  ; 2 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 16
  %i.g = and i64 %i.f, 15
  br label %RHASH_EMPTY_P.exit

bb.d:                                             ; preds = %bb.b
  %i.h = add i64 %2, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.g, %bb.c ], [ %i.k, %bb.d ]
  %i.l = icmp eq i64 %.0.i.i, 0
  br i1 %i.l, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.a, %RHASH_EMPTY_P.exit
  %i.m = load i64, ptr @rb_cHash, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  store volatile ptr %i.o, ptr %i.b, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.m, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 5 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store i64 4, ptr %i.r, align 8, !tbaa !11
  %i.s = load i64, ptr %.pre, align 8, !tbaa !13
  %i.t = and i64 %i.s, 32768
  %.not.i.i.i19 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i19, label %copy_compare_by_id.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.u = add i64 %2, 24
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = icmp eq ptr %i.x, @rb_hashtype_ident
  br i1 %i.y, label %rb_hash_compare_by_id_p.exit.i, label %copy_compare_by_id.exit

rb_hash_compare_by_id_p.exit.i:                   ; preds = %bb.e
  %i.z = tail call i64 @rb_hash_compare_by_id(i64 noundef %i.p) ; 0 uses
  br label %copy_compare_by_id.exit

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.aa = icmp ugt i32 %0, 8                      ; 2 uses
  %i.ab = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.ac = select i1 %i.aa, i64 80, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  store volatile ptr %i.ae, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.ab, i64 noundef 8, i32 noundef 0, i64 noundef %i.ac) #29 ; 6 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store i64 4, ptr %i.ah, align 8, !tbaa !11
  br i1 %i.aa, label %bb.g, label %rb_hash_new_with_size.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = sext i32 %0 to i64
  %i.aj = add i64 %i.af, 24
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.ak, ptr noundef nonnull @objhash, i64 noundef %i.ai) #29 ; 0 uses
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.an = or i64 %i.am, 32768
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !13
  br label %rb_hash_new_with_size.exit

rb_hash_new_with_size.exit:                       ; preds = %bb.f, %bb.g
  %i.ao = load i64, ptr %.pre, align 8, !tbaa !13
  %i.ap = and i64 %i.ao, 32768
  %.not.i.i.i20 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i20, label %copy_compare_by_id.exit22, label %bb.h

bb.h:                                             ; preds = %rb_hash_new_with_size.exit
  %i.aq = add i64 %2, 24
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !70
  %i.au = icmp eq ptr %i.at, @rb_hashtype_ident
  br i1 %i.au, label %rb_hash_compare_by_id_p.exit.i21, label %copy_compare_by_id.exit22

rb_hash_compare_by_id_p.exit.i21:                 ; preds = %bb.h
  %i.av = tail call i64 @rb_hash_compare_by_id(i64 noundef %i.af) ; 0 uses
  br label %copy_compare_by_id.exit22

copy_compare_by_id.exit22:                        ; preds = %rb_hash_new_with_size.exit, %bb.h, %rb_hash_compare_by_id_p.exit.i21
  %i.aw = icmp sgt i32 %0, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %copy_compare_by_id.exit

.lr.ph.preheader:                                 ; preds = %copy_compare_by_id.exit22
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = tail call i64 @rb_hash_lookup2(i64 noundef %2, i64 noundef %i.ay, i64 noundef 36) ; 2 uses
  %i.ba = icmp eq i64 %i.az, 36
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bb = tail call i64 @rb_hash_aset(i64 noundef %i.af, i64 noundef %i.ay, i64 noundef %i.az) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %copy_compare_by_id.exit, label %.lr.ph, !llvm.loop !113

copy_compare_by_id.exit:                          ; preds = %bb.j, %copy_compare_by_id.exit22, %rb_hash_compare_by_id_p.exit.i, %bb.e, %._crit_edge
  %.0 = phi i64 [ %i.p, %rb_hash_compare_by_id_p.exit.i ], [ %i.p, %._crit_edge ], [ %i.p, %bb.e ], [ %i.af, %copy_compare_by_id.exit22 ], [ %i.af, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_hash_except(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 32768
  %.not.i.i.not.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i.i.not.i, i64 160, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  store volatile ptr %i.j, ptr %i.c, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.d, i64 noundef 8, i32 noundef 0, i64 noundef %i.h) #29 ; 5 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  store i64 4, ptr %i.m, align 8, !tbaa !11
  %i.n = load i64, ptr %i.e, align 8, !tbaa !13
  %i.o = and i64 %i.n, 32768
  %i.p = load i64, ptr %i.l, align 8, !tbaa !13
  %i.q = and i64 %i.p, -32769
  %storemerge.i = or disjoint i64 %i.q, %i.o
  store i64 %storemerge.i, ptr %i.l, align 8, !tbaa !13
  %i.r = tail call fastcc i64 @hash_copy(i64 noundef %i.k, i64 noundef %2) ; 0 uses
  %i.s = icmp sgt i32 %0, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.u, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.v = call i32 @rb_hash_stlike_delete(i64 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !114

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.w = load i64, ptr %i.l, align 8, !tbaa !13
  %i.x = and i64 %i.w, 4261445632
  %or.cond.i = icmp eq i64 %i.x, 32768
  br i1 %or.cond.i, label %bb.b, label %compact_after_delete.exit

bb.b:                                             ; preds = %._crit_edge
  %i.y = add i64 %i.k, 24
  %i.z = inttoptr i64 %i.y to ptr
  call void @rb_st_compact_table(ptr noundef nonnull %i.z) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %._crit_edge, %bb.b
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_invert(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 16
  %i.f = and i64 %i.e, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %0, 24
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = icmp ugt i64 %.0.i, 8                    ; 2 uses
  %i.l = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.m = select i1 %i.k, i64 80, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.l, i64 noundef 8, i32 noundef 0, i64 noundef %i.m) #29 ; 4 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store i64 4, ptr %i.r, align 8, !tbaa !11
  br i1 %i.k, label %bb.d, label %rb_hash_new_with_size.exit

bb.d:                                             ; preds = %RHASH_SIZE.exit
  %i.s = add i64 %i.p, 24
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.t, ptr noundef nonnull @objhash, i64 noundef %.0.i) #29 ; 0 uses
  %i.v = load i64, ptr %i.q, align 8, !tbaa !13
  %i.w = or i64 %i.v, 32768
  store i64 %i.w, ptr %i.q, align 8, !tbaa !13
  br label %rb_hash_new_with_size.exit

rb_hash_new_with_size.exit:                       ; preds = %RHASH_SIZE.exit, %bb.d
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rb_hash_invert_i, i64 noundef %i.p)
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_update(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.update_call_args, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %2, ptr %3, align 8, !tbaa !115
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %0, ptr %i.c, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.e = tail call i32 @rb_block_given_p() #29
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.d, align 4, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.h, align 1, !tbaa !122
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 0, ptr %i.i, align 2
  %i.j = icmp ne i64 %2, 0
  %i.k = and i64 %2, 7
  %i.l = icmp eq i64 %i.k, 0
  %.not3.i.i.i.i = and i1 %i.j, %i.l
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.a
  %i.m = inttoptr i64 %2 to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 3 uses
  %i.o = and i64 %i.n, 2048
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.p = and i64 %i.n, 31
  %i.q = icmp ne i64 %i.p, 5
  %i.r = and i64 %i.n, 49152
  %.not8.i.i.i = icmp eq i64 %i.r, 0
  %or.cond.i.i.i = or i1 %i.q, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %2) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.b
  %i.s = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.t = call i64 @rb_ensure(ptr noundef nonnull @rb_hash_update_call, i64 noundef %i.s, ptr noundef nonnull @rb_hash_update_ensure, i64 noundef %i.s) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_merge(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.update_call_args, align 8   ; 10 uses
  %i.a = tail call i64 @rb_hash_dup(i64 noundef %2) ; 7 uses
  %i.b = inttoptr i64 %2 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 32768
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %copy_compare_by_id.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %2, 24
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = icmp eq ptr %i.h, @rb_hashtype_ident
  br i1 %i.i, label %rb_hash_compare_by_id_p.exit.i, label %copy_compare_by_id.exit

rb_hash_compare_by_id_p.exit.i:                   ; preds = %bb.b
  %i.j = tail call i64 @rb_hash_compare_by_id(i64 noundef %i.a) ; 0 uses
  br label %copy_compare_by_id.exit

copy_compare_by_id.exit:                          ; preds = %bb.a, %bb.b, %rb_hash_compare_by_id_p.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %i.a, ptr %3, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %0, ptr %i.m, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.o = tail call i32 @rb_block_given_p() #29
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %i.n, align 4, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.r, align 1, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 0, ptr %i.s, align 2
  %i.t = icmp ne i64 %i.a, 0
  %i.u = and i64 %i.a, 7
  %i.v = icmp eq i64 %i.u, 0
  %.not3.i.i.i.i.i = and i1 %i.t, %i.v
  br i1 %.not3.i.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i.i.i:                       ; preds = %copy_compare_by_id.exit
  %i.w = inttoptr i64 %i.a to ptr
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13   ; 3 uses
  %i.y = and i64 %i.x, 2048
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i.i:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i.i, %copy_compare_by_id.exit
  tail call void @rb_error_frozen_object(i64 noundef %i.a) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i.i
  %i.z = and i64 %i.x, 31
  %i.aa = icmp ne i64 %i.z, 5
  %i.ab = and i64 %i.x, 49152
  %.not8.i.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i.i.i.i = or i1 %i.aa, %.not8.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %rb_hash_update.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.a) #29
  br label %rb_hash_update.exit

rb_hash_update.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.c
  %i.ac = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ad = call i64 @rb_ensure(ptr noundef nonnull @rb_hash_update_call, i64 noundef %i.ac, ptr noundef nonnull @rb_hash_update_ensure, i64 noundef %i.ac) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i64 %i.ad
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_assoc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %2 = alloca %struct.st_table, align 8           ; 7 uses
  %3 = alloca %struct.st_hash_type, align 8       ; 3 uses
  %4 = alloca %struct.assoc_arg, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %RHASH_EMPTY_P.exit.thread, label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.a
  %i.f = add i64 %0, 24
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.b

RHASH_EMPTY_P.exit.thread:                        ; preds = %bb.a
  %i.k = and i64 %i.d, 983040
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %.thread

bb.b:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = icmp eq ptr %i.n, @rb_hashtype_ident
  br i1 %i.o, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !tbaa.struct !30
  store ptr @assoc_cmp, ptr %3, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  store ptr %i.t, ptr %i.p, align 8, !tbaa !125
  store ptr %3, ptr %i.q, align 8, !tbaa !70
  store ptr %2, ptr %4, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.u, align 8, !tbaa !128
  %i.v = ptrtoint ptr %4 to i64
  %i.w = icmp ne i64 %0, 0
  %i.x = and i64 %0, 7
  %i.y = and i64 %i.d, 2048
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = icmp eq i64 %i.z, 0
  %or.cond = and i1 %i.w, %i.aa
  br i1 %or.cond, label %bb.c, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ab = call i32 @rb_st_lookup(ptr noundef nonnull %2, i64 noundef %1, ptr noundef nonnull %i.a) #29
  %.not.i20 = icmp eq i32 %i.ab, 0
  %i.ac = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %.not.i20, label %.thread28, label %bb.h

bb.c:                                             ; preds = %.critedge
  %i.ad = lshr i64 %i.d, 25
  %i.ae = and i64 %i.ad, 127                      ; 3 uses
  %i.af = icmp eq i64 %i.ae, 127
  br i1 %i.af, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = load i64, ptr @id_hash_iter_lev, align 8, !tbaa !11
  %i.ah = call i64 @rb_ivar_get(i64 noundef %0, i64 noundef %i.ag) #29
  %i.ai = ashr i64 %i.ah, 1
  %i.aj = add nsw i64 %i.ai, 1                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 4611686018427387904
  br i1 %i.ak, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.98) #31
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.am = and i64 %i.d, -4261414913
  %i.an = shl nuw nsw i64 %i.ae, 25
  %i.ao = add nuw nsw i64 %i.an, 33554432
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !13
  %i.aq = icmp samesign ult i64 %i.ae, 126
  br i1 %i.aq, label %hash_iter_lev_inc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i22 = phi i64 [ %i.aj, %bb.d ], [ 127, %bb.f ]
  %i.ar = load i64, ptr @id_hash_iter_lev, align 8, !tbaa !11
  %i.as = shl nuw nsw i64 %.0.i22, 1
  %i.at = or disjoint i64 %i.as, 1
  call void @rb_ivar_set_internal(i64 noundef %0, i64 noundef %i.ar, i64 noundef %i.at) #29
  br label %hash_iter_lev_inc.exit

hash_iter_lev_inc.exit:                           ; preds = %bb.f, %bb.g
  %i.au = call i64 @rb_ensure(ptr noundef nonnull @assoc_lookup, i64 noundef %i.v, ptr noundef nonnull @hash_foreach_ensure, i64 noundef %0) #29
  br label %bb.h

bb.h:                                             ; preds = %RB_OBJ_FROZEN.exit.thread, %hash_iter_lev_inc.exit
  %.018 = phi i64 [ %i.ac, %RB_OBJ_FROZEN.exit.thread ], [ %i.au, %hash_iter_lev_inc.exit ] ; 2 uses
  %i.av = icmp eq i64 %.018, 36
  br i1 %i.av, label %.thread28, label %bb.i

.thread28:                                        ; preds = %bb.h, %RB_OBJ_FROZEN.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = call i64 @rb_assoc_new(i64 noundef %1, i64 noundef %.018) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.j

.thread:                                          ; preds = %RHASH_EMPTY_P.exit.thread, %.thread28, %bb.b
  store i64 %1, ptr %i.b, align 16, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 4, ptr %i.ax, align 8, !tbaa !11
  %i.ay = ptrtoint ptr %i.b to i64
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef @assoc_i, i64 noundef %i.ay)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %RHASH_EMPTY_P.exit.thread, %RHASH_EMPTY_P.exit, %.thread
  %.1 = phi i64 [ %i.aw, %bb.i ], [ %i.az, %.thread ], [ 4, %RHASH_EMPTY_P.exit ], [ 4, %RHASH_EMPTY_P.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_rassoc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %1, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 4, ptr %i.b, align 8, !tbaa !11
  %i.c = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rassoc_i, i64 noundef %i.c)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_hash_flatten(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #31
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @rb_fix2int(i64 noundef %i.b) #29
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_num2int(i64 noundef %i.b) #29
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %i.f = trunc i64 %.0.i to i32                   ; 2 uses
  %.not25 = icmp eq i32 %i.f, 0
  %i.g = inttoptr i64 %2 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %i.i = and i64 %i.h, 32768
  %.not.i.i.i = icmp eq i64 %i.i, 0               ; 2 uses
  br i1 %.not25, label %bb.f, label %bb.i

bb.f:                                             ; preds = %rb_num2int_inline.exit
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i64 %i.h, 16
  %i.k = and i64 %i.j, 15
  br label %rb_hash_to_a.exit

bb.h:                                             ; preds = %bb.f
  %i.l = add i64 %2, 24
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  br label %rb_hash_to_a.exit

rb_hash_to_a.exit:                                ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.k, %bb.g ], [ %i.o, %bb.h ]
  %i.p = tail call i64 @rb_ary_new_capa(i64 noundef %.0.i.i) #29 ; 2 uses
  tail call void @rb_hash_foreach(i64 noundef %2, ptr noundef @to_a_i, i64 noundef %i.p)
  br label %bb.r

bb.i:                                             ; preds = %rb_num2int_inline.exit
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = lshr i64 %i.h, 16
  %i.r = and i64 %i.q, 15
  br label %RHASH_SIZE.exit

bb.k:                                             ; preds = %bb.i
  %i.s = add i64 %2, 24
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.j, %bb.k
  %.0.i26 = phi i64 [ %i.r, %bb.j ], [ %i.v, %bb.k ]
  %i.w = shl i64 %.0.i26, 1
  %i.x = tail call i64 @rb_ary_new_capa(i64 noundef %i.w) #29 ; 6 uses
  tail call void @rb_hash_foreach(i64 noundef %2, ptr noundef @flatten_i, i64 noundef %i.x)
  %i.y = add i32 %i.f, -1                         ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %RHASH_SIZE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.aa = shl nuw i32 %i.y, 1
  %i.ab = or disjoint i32 %i.aa, 1
  %i.ac = zext i32 %i.ab to i64
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !11
  %i.ad = load i64, ptr @id_flatten_bang, align 8, !tbaa !11
  %i.ae = call i64 @rb_funcallv(i64 noundef %i.x, i64 noundef %i.ad, i32 noundef 1, ptr noundef nonnull %i.a) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.r

bb.m:                                             ; preds = %RHASH_SIZE.exit
  %i.af = icmp slt i32 %i.y, 0
  br i1 %i.af, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr @id_flatten_bang, align 8, !tbaa !11
  %i.ah = tail call i64 @rb_funcallv(i64 noundef %i.x, i64 noundef %i.ag, i32 noundef 0, ptr noundef null) #29 ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %rb_check_arity.exit
  %i.ai = inttoptr i64 %2 to ptr
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = and i64 %i.aj, 32768
  %.not.i.i27 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i27, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = lshr i64 %i.aj, 16
  %i.am = and i64 %i.al, 15
  br label %RHASH_SIZE.exit29

bb.q:                                             ; preds = %bb.o
  %i.an = add i64 %2, 24
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !51
  br label %RHASH_SIZE.exit29

RHASH_SIZE.exit29:                                ; preds = %bb.p, %bb.q
  %.0.i28 = phi i64 [ %i.am, %bb.p ], [ %i.aq, %bb.q ]
  %i.ar = shl i64 %.0.i28, 1
  %i.as = tail call i64 @rb_ary_new_capa(i64 noundef %i.ar) #29 ; 2 uses
  tail call void @rb_hash_foreach(i64 noundef %2, ptr noundef @flatten_i, i64 noundef %i.as)
  br label %bb.r

bb.r:                                             ; preds = %rb_hash_to_a.exit, %bb.m, %bb.n, %bb.l, %RHASH_SIZE.exit29
  %.121 = phi i64 [ %i.as, %RHASH_SIZE.exit29 ], [ %i.p, %rb_hash_to_a.exit ], [ %i.x, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.l ]
  ret i64 %.121
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_compact(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_hash_dup(i64 noundef %0) ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %RHASH_EMPTY_P.exit, label %RHASH_EMPTY_P.exit.thread

RHASH_EMPTY_P.exit:                               ; preds = %bb.a
  %i.e = and i64 %i.c, 983040
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %compact_after_delete.exit, label %bb.b

RHASH_EMPTY_P.exit.thread:                        ; preds = %bb.a
  %i.g = add i64 %0, 24
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.b

bb.b:                                             ; preds = %RHASH_EMPTY_P.exit.thread, %RHASH_EMPTY_P.exit
  tail call void @rb_hash_foreach(i64 noundef %i.a, ptr noundef @delete_if_nil, i64 noundef %i.a)
  %i.l = inttoptr i64 %i.a to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = and i64 %i.m, 4261445632
  %or.cond.i = icmp eq i64 %i.n, 32768
  br i1 %or.cond.i, label %bb.c, label %compact_after_delete.exit

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.a, 24
  %i.p = inttoptr i64 %i.o to ptr
  tail call void @rb_st_compact_table(ptr noundef nonnull %i.p) #29
  br label %compact_after_delete.exit

.thread:                                          ; preds = %RHASH_EMPTY_P.exit.thread
  %i.q = getelementptr i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = icmp eq ptr %i.r, @rb_hashtype_ident
  br i1 %i.s, label %rb_hash_compare_by_id_p.exit, label %compact_after_delete.exit

rb_hash_compare_by_id_p.exit:                     ; preds = %.thread
  %i.t = tail call i64 @rb_hash_compare_by_id(i64 noundef %i.a) ; 0 uses
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %RHASH_EMPTY_P.exit, %.thread, %bb.c, %bb.b, %rb_hash_compare_by_id_p.exit
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, -7) i64 @rb_hash_compact_bang(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 3 uses
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
  %i.j = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.k = and i64 %i.j, 32768
  %.not.i.i11 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_hash_modify_check.exit
  %i.l = lshr i64 %i.j, 16
  %i.m = and i64 %i.l, 15
  br label %RHASH_SIZE.exit

bb.d:                                             ; preds = %rb_hash_modify_check.exit
  %i.n = add i64 %0, 24
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.m, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %RHASH_SIZE.exit
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @delete_if_nil, i64 noundef %0)
  %i.r = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.s = and i64 %i.r, 32768
  %.not.i.i12 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i64 %i.r, 16
  %i.u = and i64 %i.t, 15
  br label %RHASH_SIZE.exit14

bb.g:                                             ; preds = %bb.e
  %i.v = add i64 %0, 24
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51
  br label %RHASH_SIZE.exit14

RHASH_SIZE.exit14:                                ; preds = %bb.f, %bb.g
  %.0.i13 = phi i64 [ %i.u, %bb.f ], [ %i.y, %bb.g ]
  %.not10 = icmp eq i64 %.0.i, %.0.i13
  br i1 %.not10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RHASH_SIZE.exit14, %RHASH_SIZE.exit
  br label %bb.i

bb.i:                                             ; preds = %RHASH_SIZE.exit14, %bb.h
  %.0 = phi i64 [ 4, %bb.h ], [ %0, %RHASH_SIZE.exit14 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_has_value(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.c = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rb_hash_search_value, i64 noundef %i.c)
  %i.d = load i64, ptr %i.a, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_any_p(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 16, !tbaa !11
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #31
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = inttoptr i64 %2 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.e = lshr i64 %i.c, 16
  %i.f = and i64 %i.e, 15
  br label %RHASH_EMPTY_P.exit

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.g = add i64 %2, 24
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.f, %bb.c ], [ %i.j, %bb.d ]
  %i.k = icmp eq i64 %.0.i.i, 0
  br i1 %i.k, label %bb.n, label %bb.e

bb.e:                                             ; preds = %RHASH_EMPTY_P.exit
  %.not = icmp eq i32 %0, 0
  %i.l = tail call i32 @rb_block_given_p() #29
  %.not7 = icmp eq i32 %i.l, 0                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.115) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load i64, ptr %1, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !11
  %i.o = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %2, ptr noundef @any_p_i_pattern, i64 noundef %i.o)
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  br i1 %.not7, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @rb_block_pair_yield_optimizable() #29
  %.not8 = icmp eq i32 %i.p, 0
  %i.q = ptrtoint ptr %i.a to i64                 ; 2 uses
  br i1 %.not8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_hash_foreach(i64 noundef %2, ptr noundef @any_p_i_fast, i64 noundef %i.q)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @rb_hash_foreach(i64 noundef %2, ptr noundef @any_p_i, i64 noundef %i.q)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %i.r = load i64, ptr %i.a, align 16, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %RHASH_EMPTY_P.exit, %bb.m
  %.0 = phi i64 [ 0, %RHASH_EMPTY_P.exit ], [ %i.r, %bb.m ], [ 20, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_dig(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
end_hunk_2
begin_hunk_3_@rb_hash_lt:bb.a

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_ge(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = tail call i64 @rb_convert_type_with_id(i64 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29 ; 3 uses
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 16
  %i.g = and i64 %i.f, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i64 %0, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %i.l = inttoptr i64 %i.b to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i6 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RHASH_SIZE.exit
  %i.o = lshr i64 %i.m, 16
  %i.p = and i64 %i.o, 15
  br label %RHASH_SIZE.exit8

bb.e:                                             ; preds = %RHASH_SIZE.exit
  %i.q = add i64 %i.b, 24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  br label %RHASH_SIZE.exit8

RHASH_SIZE.exit8:                                 ; preds = %bb.d, %bb.e
  %.0.i7 = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.e ]
  %i.u = icmp ult i64 %.0.i, %.0.i7
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RHASH_SIZE.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 20, ptr %i.v, align 8, !tbaa !11
  %i.w = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %i.b, ptr noundef @hash_le_i, i64 noundef %i.w)
  %i.x = load i64, ptr %i.v, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.g

bb.g:                                             ; preds = %RHASH_SIZE.exit8, %bb.f
  %.0 = phi i64 [ %i.x, %bb.f ], [ 0, %RHASH_SIZE.exit8 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_gt(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = tail call i64 @rb_convert_type_with_id(i64 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29 ; 3 uses
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 16
  %i.g = and i64 %i.f, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i64 %0, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %i.l = inttoptr i64 %i.b to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i6 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RHASH_SIZE.exit
  %i.o = lshr i64 %i.m, 16
  %i.p = and i64 %i.o, 15
  br label %RHASH_SIZE.exit8

bb.e:                                             ; preds = %RHASH_SIZE.exit
  %i.q = add i64 %i.b, 24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  br label %RHASH_SIZE.exit8

RHASH_SIZE.exit8:                                 ; preds = %bb.d, %bb.e
  %.0.i7 = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.e ]
  %.not = icmp ugt i64 %.0.i, %.0.i7
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RHASH_SIZE.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 20, ptr %i.u, align 8, !tbaa !11
  %i.v = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %i.b, ptr noundef @hash_le_i, i64 noundef %i.v)
  %i.w = load i64, ptr %i.u, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.g

bb.g:                                             ; preds = %RHASH_SIZE.exit8, %bb.f
  %.0 = phi i64 [ %i.w, %bb.f ], [ 0, %RHASH_SIZE.exit8 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @rb_hash_deconstruct_keys(i64 noundef returned %0, i64 %1) #8 {
bb.a:
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_hash_s_ruby2_keywords_hash_p(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !129

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !74

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 8) #35
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = and i64 %i.f, 8192
  %.not = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not, i64 0, i64 20
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_s_ruby2_keywords_hash(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !129

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !74

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 8) #35
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %1) ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !13
  %i.k = and i64 %i.j, 32768
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %rb_hash_compare_by_id_p.exit.thread, label %RHASH_EMPTY_P.exit.thread

RHASH_EMPTY_P.exit.thread:                        ; preds = %Check_Type.exit
  %i.l = add i64 %1, 24
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread, label %rb_hash_compare_by_id_p.exit.thread

.thread:                                          ; preds = %RHASH_EMPTY_P.exit.thread
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = icmp eq ptr %i.r, @rb_hashtype_ident
  br i1 %i.s, label %rb_hash_compare_by_id_p.exit, label %rb_hash_compare_by_id_p.exit.thread

rb_hash_compare_by_id_p.exit:                     ; preds = %.thread
  %i.t = tail call i64 @rb_hash_compare_by_id(i64 noundef %i.i) ; 0 uses
  br label %rb_hash_compare_by_id_p.exit.thread

rb_hash_compare_by_id_p.exit.thread:              ; preds = %Check_Type.exit, %.thread, %RHASH_EMPTY_P.exit.thread, %rb_hash_compare_by_id_p.exit
  %i.u = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101
  %i.w = or i64 %i.v, 8192
  store i64 %i.w, ptr %i.u, align 8, !tbaa !101
  ret i64 %i.i
}

declare i64 @rb_obj_set_shareable(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_extend_object(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_f_getenv(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #29 ; 0 uses
  %i.c = load volatile i64, ptr %i.a, align 8, !tbaa !11
  %i.d = call fastcc ptr @get_env_cstr(i64 noundef %i.c, ptr noundef nonnull @.str.116)
  %i.e = call fastcc i64 @getenv_with_lock(ptr noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @env_fetch(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = add i32 %0, -3
  %or.cond11 = icmp ult i32 %i.b, -2
  br i1 %or.cond11, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #31
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = tail call i32 @rb_block_given_p() #29
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.f = icmp eq i32 %0, 2
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.100) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_check_arity.exit
  %i.g = call i64 @rb_string_value(ptr noundef nonnull %i.a) #29 ; 0 uses
  %i.h = load volatile i64, ptr %i.a, align 8, !tbaa !11
  %i.i = call fastcc ptr @get_env_cstr(i64 noundef %i.h, ptr noundef nonnull @.str.116)
  %i.j = call fastcc i64 @getenv_with_lock(ptr noundef %i.i) ; 2 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !11
  %i.m = call i64 @rb_yield(i64 noundef %i.l) #29
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %0, 1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11
  %i.p = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.119, i64 noundef %i.o) #29
  %i.q = load i64, ptr @envtbl, align 8, !tbaa !11
  %i.r = load i64, ptr %i.a, align 8, !tbaa !11
  call fastcc void @rb_key_err_raise(i64 noundef %i.p, i64 noundef %i.q, i64 noundef %i.r) #33
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.f
  %.0 = phi i64 [ %i.m, %bb.f ], [ %i.t, %bb.i ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @env_aset_m(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @env_aset(i64 noundef %1, i64 noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @env_each_pair(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_frame_this_func() #29
  %i.d = tail call i64 @rb_id2sym(i64 noundef %i.c) #29
  %i.e = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.d, i32 noundef 0, ptr noundef null, ptr noundef nonnull @rb_env_size) #29
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_ary_new() #29          ; 3 uses
  %i.g = tail call ptr @rb_locale_encoding() #29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #29
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr @environ, align 8, !tbaa !92 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %.not3764 = icmp eq ptr %i.j, null
  br i1 %.not3764, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rb_vm_lock_enter.exit, %bb.g
  %i.k = phi ptr [ %i.y, %bb.g ], [ %i.j, %rb_vm_lock_enter.exit ] ; 3 uses
  %.03065 = phi ptr [ %i.x, %bb.g ], [ %i.i, %rb_vm_lock_enter.exit ]
  %i.l = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 61) #30 ; 3 uses
  %.not38 = icmp eq ptr %i.l, null
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = call i64 @rb_external_str_new_with_enc(ptr noundef nonnull %i.k, i64 noundef %i.o, ptr noundef %i.g) #29 ; 2 uses
  %i.q = call i64 @rb_obj_freeze(i64 noundef %i.p) #29 ; 0 uses
  %i.r = call i64 @rb_ary_push(i64 noundef %i.f, i64 noundef %i.p) #29 ; 0 uses
  %i.s = getelementptr i8, ptr %i.l, i64 1        ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %env_str_new2.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #30
  %i.u = call i64 @rb_external_str_new_with_enc(ptr noundef nonnull %i.s, i64 noundef %i.t, ptr noundef %i.g) #29 ; 2 uses
  %i.v = call i64 @rb_obj_freeze(i64 noundef %i.u) #29 ; 0 uses
  br label %env_str_new2.exit

env_str_new2.exit:                                ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ 4, %bb.e ]
  %i.w = call i64 @rb_ary_push(i64 noundef %i.f, i64 noundef %.0.i) #29 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %env_str_new2.exit, %.lr.ph
  %i.x = getelementptr i8, ptr %.03065, i64 8     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 2 uses
  %.not37 = icmp eq ptr %i.y, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.g, %rb_vm_lock_enter.exit
  %i.z = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i39 = icmp eq ptr %i.z, null
  br i1 %.not.i.i39, label %bb.h, label %rb_vm_lock_leave.exit

bb.h:                                             ; preds = %._crit_edge
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #29
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aa = call i32 @rb_block_pair_yield_optimizable() #29
  %.not36 = icmp eq i32 %i.aa, 0
  %i.ab = inttoptr i64 %i.f to ptr                ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16     ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 32     ; 2 uses
  br i1 %.not36, label %.preheader, label %.preheader62

.preheader62:                                     ; preds = %rb_vm_lock_leave.exit, %RARRAY_AREF.exit45
  %.032 = phi i64 [ %i.aq, %RARRAY_AREF.exit45 ], [ 0, %rb_vm_lock_leave.exit ] ; 4 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.af = and i64 %i.ae, 8192
  %.not.i40 = icmp eq i64 %i.af, 0
  br i1 %.not.i40, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %.preheader62
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !24
end_hunk_3
