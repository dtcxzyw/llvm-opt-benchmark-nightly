inline.NumInlined: 263
inline.NumDeleted: 70
begin_hunk_0_@rb_st_hash:bb.a
bb.i:                                             ; preds = %bb.h, %bb.e
  %.5 = phi i64 [ %i.be, %bb.e ], [ %i.bq, %bb.h ] ; 2 uses
  %i.br = xor i64 %.5, %.136
  %i.bs = shl nuw nsw i64 %.5, 7
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = mul i64 %i.bt, 5545529020109919103
  br label %bb.j

default.unreachable:                              ; preds = %.loopexit
  unreachable

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.237 = phi i64 [ %.136, %.loopexit ], [ %i.bu, %bb.i ]
  %i.bv = xor i64 %.237, %1                       ; 2 uses
  %i.bw = lshr i64 %i.bv, 30
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -4658895280553007687     ; 2 uses
  %i.bz = lshr i64 %i.by, 27
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -7723592293110705685     ; 2 uses
  %i.cc = lshr i64 %i.cb, 31
  %i.cd = xor i64 %i.cc, %i.cb
  ret i64 %i.cd
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_st_hash_uint32(i64 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = mul i64 %i.a, -8663945395140668459
  %i.c = mul i64 %i.a, 2487297242801635328
  %i.d = lshr i64 %i.b, 31
  %i.e = or disjoint i64 %i.d, %i.c
  %i.f = xor i64 %i.e, %0                         ; 2 uses
  %i.g = mul i64 %i.f, 5545529020109919103
  %i.h = mul i64 %i.f, 4838912824426102784
  %i.i = lshr i64 %i.g, 40
  %i.j = or disjoint i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_st_hash_uint(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = mul i64 %i.a, -8663945395140668459
  %i.c = mul i64 %i.a, 2487297242801635328
  %i.d = lshr i64 %i.b, 31
  %i.e = or disjoint i64 %i.d, %i.c
  %i.f = xor i64 %i.e, %0                         ; 2 uses
  %i.g = mul i64 %i.f, 5545529020109919103
  %i.h = mul i64 %i.f, 4838912824426102784
  %i.i = lshr i64 %i.g, 40
  %i.j = or disjoint i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_st_hash_end(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %0, 30
  %i.b = xor i64 %i.a, %0
  %i.c = mul i64 %i.b, -4658895280553007687       ; 2 uses
  %i.d = lshr i64 %i.c, 27
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -7723592293110705685       ; 2 uses
  %i.g = lshr i64 %i.f, 31
  %i.h = xor i64 %i.g, %i.f
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @rb_st_hash_start(i64 noundef returned %0) local_unnamed_addr #7 {
bb.a:
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.026 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.d ]  ; 2 uses
  %.025 = phi ptr [ %1, %bb.a ], [ %i.e, %bb.d ]  ; 2 uses
  %i.a = load i8, ptr %.026, align 1, !tbaa !46   ; 4 uses
  %i.b = load i8, ptr %.025, align 1, !tbaa !46   ; 4 uses
  %i.c = icmp eq i8 %i.a, 0                       ; 2 uses
  %i.d = icmp eq i8 %i.b, 0                       ; 2 uses
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %not. = xor i1 %i.d, true
  %. = sext i1 %not. to i32
  %spec.select35 = select i1 %i.c, i32 %., i32 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.025, i64 1
  %i.f = getelementptr i8, ptr %.026, i64 1
  %i.g = add i8 %i.a, -65
  %or.cond5 = icmp ult i8 %i.g, 26
  %i.h = or disjoint i8 %i.a, 32
  %spec.select = select i1 %or.cond5, i8 %i.h, i8 %i.a ; 2 uses
  %i.i = add i8 %i.b, -65
  %or.cond8 = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.b, 32
  %.0 = select i1 %or.cond8, i8 %i.j, i8 %i.b     ; 2 uses
  %.not = icmp eq i8 %spec.select, %.0
  br i1 %.not, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i8 %spec.select, %.0
  %.34 = select i1 %i.k, i32 1, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.027 = phi i32 [ %.34, %bb.e ], [ %spec.select35, %bb.c ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not46 = icmp eq i64 %2, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %i.a = add nuw i64 %.045, 1                     ; 2 uses
  %i.b = getelementptr i8, ptr %.03044, i64 1
  %i.c = getelementptr i8, ptr %.03143, i64 1
  %exitcond.not = icmp eq i64 %i.a, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.045 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %.03044 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.03143 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.03143, align 1, !tbaa !46 ; 4 uses
  %i.e = load i8, ptr %.03044, align 1, !tbaa !46 ; 4 uses
  %i.f = icmp eq i8 %i.d, 0                       ; 2 uses
  %i.g = icmp eq i8 %i.e, 0                       ; 2 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %not. = xor i1 %i.g, true
  %. = sext i1 %not. to i32
  %spec.select39 = select i1 %i.f, i32 %., i32 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = add i8 %i.d, -65
  %or.cond5 = icmp ult i8 %i.h, 26
  %i.i = or disjoint i8 %i.d, 32
  %spec.select = select i1 %or.cond5, i8 %i.i, i8 %i.d ; 2 uses
  %i.j = add i8 %i.e, -65
  %or.cond8 = icmp ult i8 %i.j, 26
  %i.k = or disjoint i8 %i.e, 32
  %.027 = select i1 %or.cond8, i8 %i.k, i8 %i.e   ; 2 uses
  %.not = icmp eq i8 %spec.select, %.027
  br i1 %.not, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i8 %spec.select, %.027
  %.38 = select i1 %i.l, i32 1, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c, %bb.e
  %.029 = phi i32 [ %.38, %bb.e ], [ %spec.select39, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_st_numcmp(i64 noundef %0, i64 noundef %1) #7 {
bb.a:
  %i.a = icmp ne i64 %0, %1
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @rb_st_numhash(i64 noundef %0) #7 {
bb.a:
  %i.a = lshr i64 %0, 11
  %i.b = shl i64 %0, 3
  %i.c = or i64 %i.a, %i.b
  %i.d = lshr i64 %0, 3
  %i.e = xor i64 %i.c, %i.d
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_hash_bulk_insert_into_st_table(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %0, 2
  %i.b = tail call ptr @rb_hash_tbl_raw(i64 noundef %2, ptr noundef nonnull @.str, i32 noundef 2320) #25 ; 16 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = add i64 %i.d, %i.a                       ; 2 uses
  %.val21.i = load i8, ptr %i.b, align 8, !tbaa !19
  %i.f = zext nneg i8 %.val21.i to i64
  %i.g = shl nuw i64 1, %i.f
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %st_expand_table.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = tail call noalias nonnull dereferenceable(56) ptr @ruby_xmalloc(i64 noundef 56) #24 ; 7 uses
  %i.k = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.j, ptr noundef %i.i, i64 noundef %i.e) ; 0 uses
  %.val.i = load i8, ptr %i.b, align 8, !tbaa !19
  %i.l = zext nneg i8 %.val.i to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 25) %i.m, i64 24) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.c, label %rbimpl_size_mul_or_raise.exit.i, !prof !54

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_malloc_size_overflow(i64 noundef 24, i64 noundef %i.m) #23
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.n, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull readonly align 1 %i.q, i64 noundef range(i64 1, 0) %i.t, i1 noundef false) #25
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !27
  tail call void @ruby_xfree(ptr noundef %.pre.i) #25
  %i.u = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  tail call void @ruby_xfree(ptr noundef %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  tail call void @ruby_xfree(ptr noundef %i.x) #25
  %i.y = load i8, ptr %i.j, align 8, !tbaa !19
  store i8 %i.y, ptr %i.b, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = getelementptr i8, ptr %i.b, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !24
  %i.ae = getelementptr i8, ptr %i.b, i64 2
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !24
  store ptr %i.s, ptr %i.p, align 8, !tbaa !27
  store ptr null, ptr %i.u, align 8, !tbaa !26
  %i.af = getelementptr i8, ptr %i.b, i64 4       ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !29
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #25
  br label %st_expand_table.exit

st_expand_table.exit:                             ; preds = %bb.a, %rbimpl_size_mul_or_raise.exit.i
  %i.ai = getelementptr i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.d, label %3, !prof !79

3:                                                ; preds = %st_expand_table.exit
  tail call fastcc void @st_insert_generic(ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %st_insert_linear.exit

bb.d:                                             ; preds = %st_expand_table.exit
  %i.ak = icmp slt i64 %0, 3
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = load i64, ptr %1, align 8, !tbaa !11
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  tail call fastcc void @st_insert_single(ptr noundef nonnull %i.b, i64 noundef %2, i64 noundef %i.al, i64 noundef %i.an)
  br label %st_insert_linear.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.b, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22
  %i.aq = icmp ult i8 %i.ap, 5
  br i1 %i.aq, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.f, %rb_obj_written.exit12.i
  %.013.i = phi i64 [ %i.be, %rb_obj_written.exit12.i ], [ 0, %bb.f ] ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %.013.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 8 uses
  %i.at = tail call i64 @rb_obj_class(i64 noundef %i.as) #25
  %i.au = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %st_stringify.exit.i

bb.g:                                             ; preds = %.preheader
  %i.aw = icmp ne i64 %i.as, 0
  %i.ax = and i64 %i.as, 7
  %i.ay = icmp eq i64 %i.ax, 0
  %.not3.i.i.i = and i1 %i.aw, %i.ay
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %st_stringify.exit.i

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.g
  %i.az = inttoptr i64 %i.as to ptr
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !80
  %i.bb = and i64 %i.ba, 2048
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %bb.h, label %st_stringify.exit.i

bb.h:                                             ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.bc = tail call i64 @rb_hash_key_str(i64 noundef %i.as) #25
  br label %st_stringify.exit.i

st_stringify.exit.i:                              ; preds = %bb.h, %RB_OBJ_FROZEN.exit.i.i, %bb.g, %.preheader
  %i.bd = phi i64 [ %i.bc, %bb.h ], [ %i.as, %RB_OBJ_FROZEN.exit.i.i ], [ %i.as, %.preheader ], [ %i.as, %bb.g ] ; 4 uses
  %i.be = add i64 %.013.i, 2                      ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ar, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11 ; 4 uses
  %i.bh = tail call i32 @rb_st_insert(ptr noundef nonnull %i.b, i64 noundef %i.bd, i64 noundef %i.bg) ; 0 uses
  %i.bi = icmp eq i64 %i.bd, 0
  %i.bj = and i64 %i.bd, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rb_obj_written.exit.i, label %bb.i

bb.i:                                             ; preds = %st_stringify.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.bd) #25
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.i, %st_stringify.exit.i
  %i.bm = icmp eq i64 %i.bg, 0
  %i.bn = and i64 %i.bg, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %rb_obj_written.exit12.i, label %bb.j

bb.j:                                             ; preds = %rb_obj_written.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.bg) #25
  br label %rb_obj_written.exit12.i

rb_obj_written.exit12.i:                          ; preds = %bb.j, %rb_obj_written.exit.i
  %i.bq = icmp slt i64 %i.be, %0
  br i1 %i.bq, label %.preheader, label %st_insert_linear.exit, !llvm.loop !82

bb.k:                                             ; preds = %bb.f
  tail call fastcc void @st_insert_generic(ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %st_insert_linear.exit

st_insert_linear.exit:                            ; preds = %rb_obj_written.exit12.i, %bb.e, %bb.k, %3
  ret void
}

declare ptr @rb_hash_tbl_raw(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @st_insert_generic(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = add i64 %.019, 2                         ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  tail call fastcc void @st_insert_single(ptr noundef %0, i64 noundef %3, i64 noundef %i.c, i64 noundef %i.f)
  %i.g = icmp slt i64 %i.d, %1
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 1          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 2
  %i.j = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 48         ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 16         ; 4 uses
  br label %st_rehash_linear.exit.i

st_rehash_linear.exit.i.backedge:                 ; preds = %bb.x, %bb.f
  br label %st_rehash_linear.exit.i

st_rehash_linear.exit.i:                          ; preds = %st_rehash_linear.exit.i.backedge, %._crit_edge
  %i.q = load i8, ptr %i.h, align 1, !tbaa !22
  %i.r = icmp ult i8 %i.q, 5
  br i1 %i.r, label %bb.b, label %bb.j

bb.b:                                             ; preds = %st_rehash_linear.exit.i
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !26
  tail call void @ruby_xfree(ptr noundef %i.s) #25
  store ptr null, ptr %i.j, align 8, !tbaa !26
  %i.t = load i64, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph48.i.i, label %st_rehash.exit

.lr.ph48.i.i:                                     ; preds = %bb.b, %.loopexit.i.i
  %i.w = phi i64 [ %i.bj, %.loopexit.i.i ], [ %i.u, %bb.b ] ; 4 uses
  %.03446.i.i = phi i64 [ %.pre52.i.i, %.loopexit.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %.03446.i.i ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  %i.aa = icmp ne i64 %i.z, -1
  %.pre52.i.i = add nuw i64 %.03446.i.i, 1        ; 4 uses
  %i.ab = icmp ult i64 %.pre52.i.i, %i.w
  %or.cond.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph48.i.i
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  br label %bb.c

bb.c:                                             ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bg, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %i.ae = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bh, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %.03545.i.i = phi i64 [ %.pre52.i.i, %.lr.ph.i.i ], [ %.035.i.i, %update_range_for_deleted.exit.i.i ] ; 5 uses
  %.035.in44.i.i = phi i64 [ %.03446.i.i, %.lr.ph.i.i ], [ %.03545.i.i, %update_range_for_deleted.exit.i.i ]
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.ag = getelementptr [24 x i8], ptr %i.af, i64 %.03545.i.i ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %update_range_for_deleted.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !35
  %i.al = icmp eq i64 %i.ak, %i.ah
  br i1 %i.al, label %bb.e, label %update_range_for_deleted.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.ag, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = load i64, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %.thread63.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = tail call i32 %i.ar(i64 noundef %i.an, i64 noundef %i.ao) #25, !inline_history !84
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !29
  %i.at = icmp eq i32 %i.aj, %.pre.i.i
  br i1 %i.at, label %bb.g, label %st_rehash_linear.exit.i.backedge, !prof !55, !llvm.loop !85

bb.g:                                             ; preds = %bb.f
  %i.au = icmp eq i32 %i.as, 0
  br i1 %i.au, label %.thread63.i.i, label %.update_range_for_deleted.exit_crit_edge.i.i

.update_range_for_deleted.exit_crit_edge.i.i:     ; preds = %bb.g
  %.pre50.i.i = load i64, ptr %i.l, align 8, !tbaa !33 ; 2 uses
  br label %update_range_for_deleted.exit.i.i

.thread63.i.i:                                    ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !tbaa.struct !86
  store i64 -1, ptr %i.ag, align 8, !tbaa !35
  %i.av = load i64, ptr %i.p, align 8, !tbaa !28
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.p, align 8, !tbaa !28
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !34
  %i.ay = icmp eq i64 %i.ax, %.03545.i.i
  %.pre51.i.i = load i64, ptr %i.l, align 8, !tbaa !33 ; 7 uses
  br i1 %i.ay, label %bb.h, label %update_range_for_deleted.exit.i.i

bb.h:                                             ; preds = %.thread63.i.i
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.ba = add i64 %.035.in44.i.i, 2
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.pre51.i.i, i64 %i.ba) ; 2 uses
  %.0.i.i.i67 = add nuw i64 %.03545.i.i, 1        ; 2 uses
  %i.bb = icmp ult i64 %.0.i.i.i67, %.pre51.i.i
  br i1 %i.bb, label %.lr.ph70, label %.critedge.i.i.i

bb.i:                                             ; preds = %.lr.ph70
  %.0.i.i.i = add nuw i64 %.0.i.i.i68, 1          ; 2 uses
  %i.bc = icmp ult i64 %.0.i.i.i, %.pre51.i.i
  br i1 %i.bc, label %.lr.ph70, label %.critedge.i.i.i, !llvm.loop !61

.lr.ph70:                                         ; preds = %bb.h, %bb.i
  %.0.i.i.i68 = phi i64 [ %.0.i.i.i, %bb.i ], [ %.0.i.i.i67, %bb.h ] ; 3 uses
  %i.bd = getelementptr [24 x i8], ptr %i.az, i64 %.0.i.i.i68
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !35
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %bb.i, label %..critedge.i.i.i_crit_edge, !llvm.loop !61

..critedge.i.i.i_crit_edge:                       ; preds = %.lr.ph70
  br label %.critedge.i.i.i, !llvm.loop !61

.critedge.i.i.i:                                  ; preds = %bb.i, %..critedge.i.i.i_crit_edge, %bb.h
  %.0.lcssa.i.i.i = phi i64 [ %umax.i.i.i, %bb.h ], [ %.0.i.i.i68, %..critedge.i.i.i_crit_edge ], [ %umax.i.i.i, %bb.i ]
  store i64 %.0.lcssa.i.i.i, ptr %i.k, align 8, !tbaa !34
  br label %update_range_for_deleted.exit.i.i

update_range_for_deleted.exit.i.i:                ; preds = %.critedge.i.i.i, %.thread63.i.i, %.update_range_for_deleted.exit_crit_edge.i.i, %bb.d, %bb.c
  %i.bg = phi i64 [ %.pre50.i.i, %.update_range_for_deleted.exit_crit_edge.i.i ], [ %i.ad, %bb.c ], [ %.pre51.i.i, %.critedge.i.i.i ], [ %.pre51.i.i, %.thread63.i.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.bh = phi i64 [ %.pre50.i.i, %.update_range_for_deleted.exit_crit_edge.i.i ], [ %i.ae, %bb.c ], [ %.pre51.i.i, %.critedge.i.i.i ], [ %.pre51.i.i, %.thread63.i.i ], [ %i.ae, %bb.d ] ; 2 uses
  %.035.i.i = add nuw i64 %.03545.i.i, 1          ; 2 uses
  %i.bi = icmp ult i64 %.035.i.i, %i.bh
  br i1 %i.bi, label %bb.c, label %.loopexit.i.i, !llvm.loop !87

.loopexit.i.i:                                    ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph48.i.i
  %i.bj = phi i64 [ %i.w, %.lr.ph48.i.i ], [ %i.bg, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %i.bk = icmp ult i64 %.pre52.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph48.i.i, label %st_rehash.exit, !llvm.loop !88

bb.j:                                             ; preds = %st_rehash_linear.exit.i
  %.val.i.i = load i8, ptr %0, align 8, !tbaa !19
  %i.bl = zext i8 %.val.i.i to i64
  %i.bm = getelementptr [16 x i8], ptr @features, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bp = shl i64 %i.bo, 3
  %.val64.i.i = load i8, ptr %i.i, align 2, !tbaa !24 ; 2 uses
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.br = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.bq, i64 noundef %i.bp) #26 ; 10 uses
  store ptr %i.br, ptr %i.j, align 8, !tbaa !26
  %.val61.i.i = load i8, ptr %0, align 8, !tbaa !19
  %i.bs = zext i8 %.val61.i.i to i64
  %i.bt = getelementptr [16 x i8], ptr @features, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !25
  %i.bw = shl i64 %i.bv, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.br, i8 noundef 0, i64 noundef %i.bw, i1 noundef false) #25
  %i.bx = load i64, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.by = load i64, ptr %i.l, align 8, !tbaa !33
  %i.bz = icmp ult i64 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph.i4.i, label %st_rehash.exit

.lr.ph.i4.i:                                      ; preds = %bb.j, %bb.ab
  %.05085.i.i = phi i64 [ %i.ep, %bb.ab ], [ %i.bx, %bb.j ] ; 3 uses
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.cb = getelementptr [24 x i8], ptr %i.ca, i64 %.05085.i.i ; 5 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !35 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i4.i
  %.val63.i.i = load i8, ptr %i.h, align 1, !tbaa !22 ; 2 uses
  %i.ce = zext nneg i8 %.val63.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ce
  %i.cf = xor i64 %notmask.i.i.i.i, -1
  %i.cg = and i64 %i.cc, %i.cf
  %i.ch = getelementptr i8, ptr %i.cb, i64 8
  br label %bb.l

bb.l:                                             ; preds = %set_bin.exit.i.i, %bb.k
  %.val6593.i.i = phi i8 [ %.val63.i.i, %bb.k ], [ %.val65.i.i, %set_bin.exit.i.i ]
end_hunk_0
