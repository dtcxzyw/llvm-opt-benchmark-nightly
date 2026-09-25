Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/hash?download=true
inline.NumInlined: 822
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ar_force_convert_table:bb.a

.lr.ph.split.us34.i:                              ; preds = %bb.g, %.lr.ph.i39
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph.i39 ] ; 3 uses
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %indvars.iv.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 36
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us34.i
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !44
  %i.as = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19
  call void @rb_st_add_direct_with_hash(ptr noundef nonnull %1, i64 noundef %i.ao, i64 noundef %i.ar, i64 noundef %i.at) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us34.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count49.i40
  br i1 %exitcond.not.i, label %ar_each_key.exit41, label %.lr.ph.split.us34.i, !llvm.loop !2

ar_each_key.exit41:                               ; preds = %bb.g, %bb.e
  %i.au = load i64, ptr %i.c, align 8, !tbaa !21
  %i.av = and i64 %i.au, -16711681
  store i64 %i.av, ptr %i.c, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.g, i8 noundef 0, i64 noundef 136, i1 noundef false) #29
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ax = or i64 %i.aw, 32768
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %ar_each_key.exit37

ar_each_key.exit37:                               ; preds = %._crit_edge, %ar_each_key.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %ar_each_key.exit37
  ret ptr %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @rb_hash_tbl(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_gc_writebarrier_unprotect(i64 noundef %0) #29
  %i.a = tail call fastcc noundef ptr @ar_force_convert_table(i64 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_hash_stlike_update(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @ar_update(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.e = tail call fastcc ptr @ar_force_convert_table(i64 noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.a
  %i.f = add i64 %0, 24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i32 @rb_st_update(ptr noundef nonnull %i.g, i64 noundef %1, ptr noundef %2, i64 noundef %3) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @ar_update(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 0, ptr %i.b, align 8, !tbaa !19
  %i.c = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash) ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = and i64 %i.e, 32768
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %ar_add_direct_with_hash.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  %i.h = and i32 %i.g, 983040
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.c to i8
  %i.j = lshr i32 %i.g, 20
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %i.l = add i64 %0, 24
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.not19.i.i = icmp eq i32 %i.k, 0
  br i1 %.not19.i.i, label %.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 5 uses
  %i.o = getelementptr i8, ptr %i.m, i64 %indvars.iv.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.s)
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !1

bb.f:                                             ; preds = %bb.d
  %.not31.not = icmp eq i64 %indvars.iv.i.i, 8
  br i1 %.not31.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !19
  %i.v = getelementptr i8, ptr %i.r, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !44
  store i64 %i.w, ptr %i.b, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %bb.b, %bb.g, %bb.f
  %i.x = phi i64 [ %1, %bb.b ], [ %i.u, %bb.g ], [ %1, %bb.f ], [ %1, %bb.c ], [ %1, %bb.e ]
  %.not3243 = phi i1 [ true, %bb.b ], [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.c ], [ true, %bb.e ] ; 2 uses
  %.02842 = phi i64 [ 8, %bb.b ], [ %indvars.iv.i.i, %bb.g ], [ 8, %bb.f ], [ 8, %bb.c ], [ 8, %bb.e ] ; 3 uses
  %.02941 = phi i32 [ 0, %bb.b ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ] ; 6 uses
  %i.y = call i32 %2(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %3, i32 noundef %.02941) #29
  %i.z = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.aa = and i64 %i.z, 32768
  %.not.i.i35 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i35, label %ensure_ar_table.exit, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ab = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.96) #31
  unreachable

ensure_ar_table.exit:                             ; preds = %.thread
  switch i32 %i.y, label %ar_add_direct_with_hash.exit [
    i32 0, label %bb.i
    i32 2, label %bb.p
  ]

bb.i:                                             ; preds = %ensure_ar_table.exit
  br i1 %.not3243, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ae = trunc i64 %i.z to i32                   ; 2 uses
  %i.af = and i32 %i.ae, 524288
  %.not.i36 = icmp eq i32 %i.af, 0
  br i1 %.not.i36, label %bb.k, label %ar_add_direct_with_hash.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = lshr i32 %i.ae, 20
  %i.ah = and i32 %i.ag, 15                       ; 2 uses
  %i.ai = icmp samesign ugt i32 %i.ah, 7
  br i1 %i.ai, label %bb.l, label %ar_add_direct_with_hash.exit.thread, !prof !54

bb.l:                                             ; preds = %bb.k
  %i.aj = call fastcc i32 @ar_compact_table(i64 noundef %0)
  br label %ar_add_direct_with_hash.exit.thread

ar_add_direct_with_hash.exit.thread:              ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.aj, %bb.l ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ak = add i64 %0, 24
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.am, i64 %i.an ; 2 uses
  store i64 %i.ac, ptr %i.ao, align 8, !tbaa !43
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i64 %i.ad, ptr %i.ap, align 8, !tbaa !44
  %i.aq = trunc i64 %i.c to i8
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.an
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  %i.as = load i64, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %i.at = and i64 %i.as, -16711681
  %i.au = shl nuw nsw i32 %.0.i, 20
  %i.av = add nuw nsw i32 %i.au, 1048576
  %i.aw = zext nneg i32 %i.av to i64
  %4 = or i64 %i.at, %i.aw
  %5 = and i64 %i.as, 983040
  %narrow.i.i = add nuw nsw i64 %5, 65536
  %i.ax = or i64 %4, %narrow.i.i
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !21
  br label %ar_add_direct_with_hash.exit

bb.m:                                             ; preds = %bb.i
  %i.ay = add i64 %0, 24
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = getelementptr [16 x i8], ptr %i.ba, i64 %.02842 ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %.not34 = icmp eq i64 %i.x, %i.bc
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !19
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !44
  br label %ar_add_direct_with_hash.exit

bb.p:                                             ; preds = %ensure_ar_table.exit
  br i1 %.not3243, label %ar_add_direct_with_hash.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = add i64 %0, 24
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = getelementptr [16 x i8], ptr %i.bh, i64 %.02842
  store i64 36, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr i8, ptr %i.bg, i64 %.02842
  store i8 -1, ptr %i.bj, align 1, !tbaa !24
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = and i32 %i.bm, 15
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  %.not.i37 = icmp eq i32 %i.bo, 0
  br i1 %.not.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = sext i32 %i.bo to i64
  %i.bq = and i64 %i.bk, -983041
  %i.br = shl nsw i64 %i.bp, 16
  %i.bs = or i64 %i.br, %i.bq
  br label %RHASH_AR_TABLE_SIZE_DEC.exit

bb.s:                                             ; preds = %bb.q
  %i.bt = and i64 %i.bk, -16711681
  br label %RHASH_AR_TABLE_SIZE_DEC.exit

RHASH_AR_TABLE_SIZE_DEC.exit:                     ; preds = %bb.r, %bb.s
  %storemerge.i = phi i64 [ %i.bs, %bb.r ], [ %i.bt, %bb.s ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !21
  br label %ar_add_direct_with_hash.exit

ar_add_direct_with_hash.exit:                     ; preds = %ensure_ar_table.exit, %bb.o, %RHASH_AR_TABLE_SIZE_DEC.exit, %bb.p, %ar_add_direct_with_hash.exit.thread, %bb.j, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.j ], [ %.02941, %ar_add_direct_with_hash.exit.thread ], [ %.02941, %bb.p ], [ %.02941, %RHASH_AR_TABLE_SIZE_DEC.exit ], [ %.02941, %bb.o ], [ %.02941, %ensure_ar_table.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i32 %.0
}

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_to_hash_type(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_convert_type_with_id(i64 noundef %0, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29
  ret i64 %i.a
}

declare i64 @rb_convert_type_with_id(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_check_hash_type(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_check_convert_type_with_id(i64 noundef %0, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29
  ret i64 %i.a
}

declare i64 @rb_check_convert_type_with_id(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, -7) i64 @rb_hash_rehash(i64 noundef returned %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 5 uses
  %i.e = and i64 %i.d, 4261412864
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.3) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = and i64 %i.d, 2048
  %i.j = or disjoint i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = and i1 %i.g, %i.k
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !55

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.l = and i64 %i.d, 31
  %i.m = icmp ne i64 %i.l, 5
  %i.n = and i64 %i.d, 49152
  %.not8.i.i = icmp eq i64 %i.n, 0
  %or.cond.i.i = or i1 %i.m, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.d, !prof !56

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !21
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.o = phi i64 [ %i.d, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.d ]
  %i.p = and i64 %i.o, 32768
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_hash_modify_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  store volatile ptr %i.r, ptr %i.b, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef 0, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i64 4, ptr %i.u, align 8, !tbaa !19
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rb_hash_rehash_i, i64 noundef %i.s)
  %i.v = load i64, ptr %i.c, align 8, !tbaa !21
  %i.w = and i64 %i.v, -16711681
  store i64 %i.w, ptr %i.c, align 8, !tbaa !21
  %i.x = add i64 %0, 24
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.y, i8 noundef 0, i64 noundef 136, i1 noundef false) #29
  %i.z = add i64 %i.s, 24
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef nonnull align 8 dereferenceable(136) %i.aa, i64 136, i1 false), !tbaa.struct !57
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !24
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !21
  %i.ad = and i64 %i.ac, 15728640
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !21
  %i.af = and i64 %i.ae, -15728641
  %i.ag = or disjoint i64 %i.af, %i.ad            ; 2 uses
  store i64 %i.ag, ptr %i.c, align 8, !tbaa !21
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !21
  %i.ai = and i64 %i.ah, 983040
  %i.aj = and i64 %i.ag, -983041
  %i.ak = or disjoint i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !21
  tail call void @rb_gc_writebarrier_remember(i64 noundef %0) #29
  br label %bb.g

bb.f:                                             ; preds = %rb_hash_modify_check.exit
  %i.al = add i64 %0, 24
  %i.am = inttoptr i64 %i.al to ptr               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  store volatile ptr %i.ao, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i21 = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i21, i64 noundef 0, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store i64 4, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr i8, ptr %i.am, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = getelementptr i8, ptr %i.am, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !45
  %i.aw = add i64 %i.ap, 24
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.ax, ptr noundef %i.at, i64 noundef %i.av) #29 ; 0 uses
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.ba = or i64 %i.az, 32768
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !21
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rb_hash_rehash_i, i64 noundef %i.ap)
  %i.bb = getelementptr i8, ptr %i.am, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !36
  tail call void @ruby_xfree(ptr noundef %i.bc) #29
  %i.bd = getelementptr i8, ptr %i.am, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37
  tail call void @ruby_xfree(ptr noundef %i.be) #29
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !21
  %i.bg = or i64 %i.bf, 32768
end_hunk_0
begin_hunk_1_@ar_compact_table:bb.a
  br i1 %.not45, label %bb.d, label %ar_cleared_entry.exit40.thread

ar_cleared_entry.exit40.thread:                   ; preds = %.lr.ph, %ar_cleared_entry.exit40
  %i.aa = getelementptr i8, ptr %i.j, i64 %indvars.iv59 ; 2 uses
  %i.ab = trunc nuw i64 %indvars.iv59 to i32
  %i.ac = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !102
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !24
  store i8 %i.ad, ptr %i.m, align 1, !tbaa !24
  store i64 36, ptr %i.ac, align 8, !tbaa !43
  store i8 -1, ptr %i.aa, align 1, !tbaa !24
  %i.ae = add nuw nsw i32 %i.ab, 1
  br label %ar_cleared_entry.exit.thread

bb.d:                                             ; preds = %ar_cleared_entry.exit40
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next60, %i.l
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !4

ar_cleared_entry.exit.thread:                     ; preds = %.lr.ph54, %ar_cleared_entry.exit, %ar_cleared_entry.exit40.thread
  %.3 = phi i32 [ %i.ae, %ar_cleared_entry.exit40.thread ], [ %.053, %ar_cleared_entry.exit ], [ %.053, %.lr.ph54 ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph54, !llvm.loop !5

.loopexit:                                        ; preds = %ar_cleared_entry.exit.thread, %bb.c, %bb.d, %bb.b
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ah = and i64 %i.ag, -15728641
  %i.ai = shl nuw nsw i32 %i.g, 20
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  ret i32 %i.g
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #6

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ar_insert(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.j, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.b to i8                     ; 2 uses
  %i.f = trunc i64 %i.c to i32
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.g, 15                         ; 2 uses
  %i.i = add i64 %0, 24
  %i.j = inttoptr i64 %i.i to ptr                 ; 7 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 5 uses
  %.not19.i.i = icmp eq i32 %i.h, 0
  br i1 %.not19.i.i, label %ar_find_entry.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 5 uses
  %i.l = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = icmp eq i8 %i.m, %i.e
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.p)
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %ar_find_entry.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ar_find_entry.exit.thread, label %.lr.ph.i.i, !llvm.loop !1

ar_find_entry.exit:                               ; preds = %bb.c
  %i.r = icmp eq i64 %indvars.iv.i.i, 8
  br i1 %i.r, label %ar_find_entry.exit.thread, label %bb.i

ar_find_entry.exit.thread:                        ; preds = %bb.d, %bb.b, %ar_find_entry.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !21
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 15                         ; 5 uses
  %i.w = icmp samesign ugt i32 %i.v, 7
  br i1 %i.w, label %bb.j, label %bb.e

bb.e:                                             ; preds = %ar_find_entry.exit.thread
  %i.x = lshr i32 %i.t, 20
  %i.y = and i32 %i.x, 15                         ; 4 uses
  %i.z = icmp eq i32 %i.v, %i.y
  br i1 %i.z, label %.ar_compact_table.exit_crit_edge, label %bb.f

.ar_compact_table.exit_crit_edge:                 ; preds = %bb.e
  %.pre = shl nuw nsw i32 %i.v, 20
  br label %ar_compact_table.exit

bb.f:                                             ; preds = %bb.e
  %.not55.i = icmp eq i32 %i.y, 0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph54.preheader.i

.lr.ph54.preheader.i:                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %ar_cleared_entry.exit.thread.i, %.lr.ph54.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph54.preheader.i ], [ %indvars.iv.next62.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph54.preheader.i ], [ %indvars.iv.next.i, %ar_cleared_entry.exit.thread.i ] ; 2 uses
  %.053.i = phi i32 [ 0, %.lr.ph54.preheader.i ], [ %.3.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %indvars.iv61.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %ar_cleared_entry.exit.i, label %ar_cleared_entry.exit.thread.i

ar_cleared_entry.exit.i:                          ; preds = %.lr.ph54.i
  %i.ae = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv61.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %.not.i24 = icmp eq i64 %i.af, 36
  br i1 %.not.i24, label %bb.g, label %ar_cleared_entry.exit.thread.i

bb.g:                                             ; preds = %ar_cleared_entry.exit.i
  %i.ag = trunc i64 %indvars.iv61.i to i32
  %i.ah = add i32 %i.ag, 1
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.053.i, i32 %i.ah)
  %i.ai = icmp ult i32 %spec.select.i, %i.y
  br i1 %i.ai, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aj = zext i32 %.053.i to i64
  %umax.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 %i.aj)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv59.i = phi i64 [ %umax.i, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i, %bb.h ] ; 6 uses
  %i.ak = getelementptr i8, ptr %i.j, i64 %indvars.iv59.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %ar_cleared_entry.exit40.i, label %ar_cleared_entry.exit40.thread.i

ar_cleared_entry.exit40.i:                        ; preds = %.lr.ph.i
  %i.an = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !43
  %.not45.i = icmp eq i64 %i.ao, 36
  br i1 %.not45.i, label %bb.h, label %ar_cleared_entry.exit40.thread.i

ar_cleared_entry.exit40.thread.i:                 ; preds = %ar_cleared_entry.exit40.i, %.lr.ph.i
  %i.ap = getelementptr i8, ptr %i.j, i64 %indvars.iv59.i ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv59.i to i32
  %i.ar = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !102
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !24
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !24
  store i64 36, ptr %i.ar, align 8, !tbaa !43
  store i8 -1, ptr %i.ap, align 1, !tbaa !24
  %i.at = add nuw nsw i32 %i.aq, 1
  br label %ar_cleared_entry.exit.thread.i

bb.h:                                             ; preds = %ar_cleared_entry.exit40.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next60.i, %i.aa
  br i1 %i.au, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !4

ar_cleared_entry.exit.thread.i:                   ; preds = %ar_cleared_entry.exit40.thread.i, %ar_cleared_entry.exit.i, %.lr.ph54.i
  %.3.i = phi i32 [ %i.at, %ar_cleared_entry.exit40.thread.i ], [ %.053.i, %ar_cleared_entry.exit.i ], [ %.053.i, %.lr.ph54.i ]
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next62.i, %i.aa
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %ar_cleared_entry.exit.thread.i, %bb.g, %bb.h, %bb.f
  %i.av = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aw = and i64 %i.av, -15728641
  %i.ax = shl nuw nsw i32 %i.v, 20                ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = or disjoint i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.a, align 8, !tbaa !21
  br label %ar_compact_table.exit

ar_compact_table.exit:                            ; preds = %.ar_compact_table.exit_crit_edge, %.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %.ar_compact_table.exit_crit_edge ], [ %i.ax, %.loopexit.i ]
  %i.ba = zext nneg i32 %i.v to i64               ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  store i64 %1, ptr %i.bb, align 8, !tbaa !43
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i64 %2, ptr %i.bc, align 8, !tbaa !44
  %i.bd = getelementptr i8, ptr %i.j, i64 %i.ba
  store i8 %i.e, ptr %i.bd, align 1, !tbaa !24
  %i.be = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.bf = and i64 %i.be, -16711681
  %i.bg = add nuw nsw i32 %.pre-phi, 1048576
  %i.bh = zext nneg i32 %i.bg to i64
  %3 = or disjoint i64 %i.bf, %i.bh
  %4 = and i64 %i.be, 983040
  %narrow.i = add nuw nsw i64 %4, 65536
  %i.bi = or i64 %3, %narrow.i
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %ar_find_entry.exit
  %i.bj = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store i64 %2, ptr %i.bk, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %ar_find_entry.exit.thread, %bb.a, %bb.i, %ar_compact_table.exit
  ret void
}

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_call_with_block(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #19

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #1

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_inspect(i64 noundef) #1

declare i64 @rb_any_to_s(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_ellipsize(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_key_err_raise(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = tail call i64 @rb_key_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #29
  tail call void @rb_exc_raise(i64 noundef %i.a) #31
  unreachable
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #6

declare i64 @rb_proc_lambda_p(i64 noundef) local_unnamed_addr #1

declare i32 @rb_proc_arity(i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield_values(i32 noundef, ...) local_unnamed_addr #1

declare void @rb_st_compact_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tbl_update_modify(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !19
  %i.c = load i64, ptr %1, align 8, !tbaa !19
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66   ; 10 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #29 ; 2 uses
  switch i32 %i.h, label %rb_hash_modify.exit32 [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !19
  %.not23 = icmp eq i64 %i.i, %i.b
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !19
  %.not24 = icmp eq i64 %i.j, %i.c
  br i1 %.not24, label %rb_hash_modify.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = icmp ne i64 %i.e, 0
  %i.l = and i64 %i.e, 7
  %i.m = icmp eq i64 %i.l, 0
  %.not3.i.i.i.i = and i1 %i.k, %i.m
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !61

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.e
  %i.n = inttoptr i64 %i.e to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %i.p = and i64 %i.o, 2048
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !62

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.e
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.q = and i64 %i.o, 31
  %i.r = icmp ne i64 %i.q, 5
  %i.s = and i64 %i.o, 49152
  %.not8.i.i.i = icmp eq i64 %i.s, 0
  %or.cond.i.i.i = or i1 %i.r, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.f, !prof !56

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.f
  %i.t = load i64, ptr %0, align 8, !tbaa !19
  %i.u = getelementptr i8, ptr %i.a, i64 24
  store i64 %i.t, ptr %i.u, align 8, !tbaa !67
  %i.v = load i64, ptr %1, align 8, !tbaa !19
  %i.w = getelementptr i8, ptr %i.a, i64 32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !68
  br label %rb_hash_modify.exit32

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %rb_hash_modify.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ne i64 %i.e, 0
  %i.y = and i64 %i.e, 7
  %i.z = icmp eq i64 %i.y, 0
  %.not3.i.i.i.i25 = and i1 %i.x, %i.z
  br i1 %.not3.i.i.i.i25, label %RB_OBJ_FROZEN.exit.i.i.i27, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !61

RB_OBJ_FROZEN.exit.i.i.i27:                       ; preds = %bb.h
  %i.aa = inttoptr i64 %i.e to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21 ; 3 uses
  %i.ac = and i64 %i.ab, 2048
  %.not.i.i.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !62

RB_OBJ_FROZEN.exit.thread.i.i.i26:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i27, %bb.h
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i27
  %i.ad = and i64 %i.ab, 31
  %i.ae = icmp ne i64 %i.ad, 5
  %i.af = and i64 %i.ab, 49152
  %.not8.i.i.i30 = icmp eq i64 %i.af, 0
  %or.cond.i.i.i31 = or i1 %i.ae, %.not8.i.i.i30
  br i1 %or.cond.i.i.i31, label %rb_hash_modify.exit32, label %bb.i, !prof !56

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit32

rb_hash_modify.exit32:                            ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, %bb.g, %bb.d, %rb_hash_modify.exit, %bb.a
  ret i32 %i.h
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @no_new_key() unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.103) #31
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_update_func_callback_noinsert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %rb_hash_update_func_callback.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @no_new_key() #33
  unreachable

rb_hash_update_func_callback.exit:                ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %.val = load i64, ptr %i.a, align 8, !tbaa !64
  %i.b = inttoptr i64 %.val to ptr                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = load i64, ptr %0, align 8, !tbaa !19
  %i.h = load i64, ptr %1, align 8, !tbaa !19
  %i.i = tail call i64 %i.f(i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.d) #29, !inline_history !6
  store i64 %i.i, ptr %1, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_update_func_callback_insert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
end_hunk_1
