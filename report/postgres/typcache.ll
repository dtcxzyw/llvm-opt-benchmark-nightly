Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/typcache?download=true
inline.NumInlined: 107
inline.NumDeleted: 50
begin_hunk_0_@compare_values_of_enum:bb.a
bb.n:                                             ; preds = %bb.m
  %i.an = add nuw i64 %i.ai, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i48
  %.117.i.i52 = phi i64 [ %i.an, %bb.n ], [ %.01620.i.i50, %.lr.ph.i.i48 ] ; 2 uses
  %.1.i.i53 = phi i64 [ %.021.i.i49, %bb.n ], [ %i.ai, %.lr.ph.i.i48 ] ; 2 uses
  %i.ao = icmp ult i64 %.117.i.i52, %.1.i.i53
  br i1 %i.ao, label %.lr.ph.i.i48, label %find_enumitem.exit56.thread, !llvm.loop !29

find_enumitem.exit56:                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aj
  %i.aq = icmp eq ptr %.0.i47, null
  br i1 %i.aq, label %find_enumitem.exit56.thread, label %bb.x

find_enumitem.exit56.thread:                      ; preds = %bb.o, %enum_known_sorted.exit.thread, %find_enumitem.exit56
  tail call fastcc void @load_enum_cache_data(ptr noundef %0)
  %i.ar = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %find_enumitem.exit74.thread, label %bb.p

bb.p:                                             ; preds = %find_enumitem.exit56.thread
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 20 ; 4 uses
  %i.aw = zext nneg i32 %i.at to i64              ; 2 uses
  br label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %bb.s, %bb.p
  %.021.i.i58 = phi i64 [ %.1.i.i62, %bb.s ], [ %i.aw, %bb.p ] ; 2 uses
  %.01620.i.i59 = phi i64 [ %.117.i.i61, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.ax = add i64 %.01620.i.i59, %.021.i.i58
  %i.ay = lshr i64 %i.ax, 1                       ; 3 uses
  %i.az = shl i64 %i.ay, 3                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp ult i32 %1, %i.bb
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i57
  %.not.i.i60 = icmp eq i32 %1, %i.bb
  br i1 %.not.i.i60, label %find_enumitem.exit65.split.loop.exit129, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nuw i64 %i.ay, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i57
  %.117.i.i61 = phi i64 [ %i.bd, %bb.r ], [ %.01620.i.i59, %.lr.ph.i.i57 ] ; 2 uses
  %.1.i.i62 = phi i64 [ %.021.i.i58, %bb.r ], [ %i.ay, %.lr.ph.i.i57 ] ; 2 uses
  %i.be = icmp ult i64 %.117.i.i61, %.1.i.i62
  br i1 %i.be, label %.lr.ph.i.i57, label %find_enumitem.exit65, !llvm.loop !29

find_enumitem.exit65.split.loop.exit129:          ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  br label %find_enumitem.exit65

find_enumitem.exit65:                             ; preds = %bb.s, %find_enumitem.exit65.split.loop.exit129
  %.0.i63 = phi ptr [ %i.bf, %find_enumitem.exit65.split.loop.exit129 ], [ null, %bb.s ] ; 3 uses
  br label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.v, %find_enumitem.exit65
  %.021.i.i67 = phi i64 [ %.1.i.i71, %bb.v ], [ %i.aw, %find_enumitem.exit65 ] ; 2 uses
  %.01620.i.i68 = phi i64 [ %.117.i.i70, %bb.v ], [ 0, %find_enumitem.exit65 ] ; 2 uses
  %i.bg = add i64 %.01620.i.i68, %.021.i.i67
  %i.bh = lshr i64 %i.bg, 1                       ; 3 uses
  %i.bi = shl i64 %i.bh, 3                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = icmp ult i32 %2, %i.bk
  br i1 %i.bl, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i66
  %.not.i.i69 = icmp eq i32 %2, %i.bk
  br i1 %.not.i.i69, label %find_enumitem.exit74, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = add nuw i64 %i.bh, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i66
  %.117.i.i70 = phi i64 [ %i.bm, %bb.u ], [ %.01620.i.i68, %.lr.ph.i.i66 ] ; 2 uses
  %.1.i.i71 = phi i64 [ %.021.i.i67, %bb.u ], [ %i.bh, %.lr.ph.i.i66 ] ; 2 uses
  %i.bn = icmp ult i64 %.117.i.i70, %.1.i.i71
  br i1 %i.bn, label %.lr.ph.i.i66, label %find_enumitem.exit74.thread118, !llvm.loop !29

find_enumitem.exit74:                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bi
  %i.bp = icmp eq ptr %.0.i63, null
  br i1 %i.bp, label %find_enumitem.exit74.thread, label %bb.x

find_enumitem.exit74.thread118:                   ; preds = %bb.v
  %i.bq = icmp eq ptr %.0.i63, null
  br i1 %i.bq, label %find_enumitem.exit74.thread, label %bb.w

find_enumitem.exit74.thread:                      ; preds = %find_enumitem.exit74.thread118, %find_enumitem.exit56.thread, %find_enumitem.exit74
  %i.br = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.bs = load i32, ptr %0, align 8
  %i.bt = tail call ptr @format_type_be(i32 noundef %i.bs) #14
  %i.bu = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef %i.bt) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2746, ptr noundef nonnull @__func__.compare_values_of_enum) #14
  unreachable

bb.w:                                             ; preds = %find_enumitem.exit74.thread118
  %i.bv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.bw = load i32, ptr %0, align 8
  %i.bx = tail call ptr @format_type_be(i32 noundef %i.bw) #14
  %i.by = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %2, ptr noundef %i.bx) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2749, ptr noundef nonnull @__func__.compare_values_of_enum) #14
  unreachable

bb.x:                                             ; preds = %find_enumitem.exit74, %find_enumitem.exit56
  %.034 = phi ptr [ %.0.i47, %find_enumitem.exit56 ], [ %.0.i63, %find_enumitem.exit74 ]
  %.0 = phi ptr [ %i.ap, %find_enumitem.exit56 ], [ %i.bo, %find_enumitem.exit74 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.ca = load float, ptr %i.bz, align 4          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.cc = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cd = fcmp olt float %i.ca, %i.cc
  br i1 %i.cd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = fcmp ogt float %i.ca, %i.cc
  %.44 = zext i1 %i.ce to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.h, %bb.a
  %.035 = phi i32 [ -1, %bb.x ], [ %., %bb.h ], [ 0, %bb.a ], [ %.44, %bb.y ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal fastcc void @load_enum_cache_data(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ScanKeyData, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 101
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 151027844) #14 ; 0 uses
  %i.e = load i32, ptr %0, align 8
  %i.f = tail call ptr @format_type_be(i32 noundef %i.e) #14
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23, ptr noundef %i.f) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2785, ptr noundef nonnull @__func__.load_enum_cache_data) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef 64) #14 ; 2 uses
  %i.i = load i32, ptr %0, align 8
  %i.j = zext i32 %i.i to i64
  call void @ScanKeyInit(ptr noundef nonnull %1, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.j) #14
  %i.k = call ptr @table_open(i32 noundef 3501, i32 noundef 1) #14 ; 2 uses
  %i.l = call ptr @systable_beginscan(ptr noundef %i.k, i32 noundef 3503, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %1) #14 ; 3 uses
  %i.m = call ptr @systable_getnext(ptr noundef %i.l) #14 ; 2 uses
  %.not102113 = icmp eq ptr %i.m, null
  br i1 %.not102113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.n = phi ptr [ %i.ae, %bb.e ], [ %i.m, %bb.c ]
  %.093116 = phi i32 [ %.194, %bb.e ], [ 64, %bb.c ] ; 3 uses
  %.095115 = phi i32 [ %i.ad, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.096114 = phi ptr [ %.197, %bb.e ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r ; 2 uses
  %.not105 = icmp slt i32 %.095115, %.093116
  br i1 %.not105, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = shl i32 %.093116, 1                      ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  %i.w = call ptr @repalloc(ptr noundef %.096114, i64 noundef %i.v) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.197 = phi ptr [ %i.w, %bb.d ], [ %.096114, %.lr.ph ] ; 3 uses
  %.194 = phi i32 [ %i.t, %bb.d ], [ %.093116, %.lr.ph ]
  %i.x = load i32, ptr %i.s, align 4
  %i.y = sext i32 %.095115 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.197, i64 %i.y ; 2 uses
  store i32 %i.x, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = add i32 %.095115, 1                     ; 2 uses
  %i.ae = call ptr @systable_getnext(ptr noundef %i.l) #14 ; 2 uses
  %.not102 = icmp eq ptr %i.ae, null
  br i1 %.not102, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.096.lcssa = phi ptr [ %i.h, %bb.c ], [ %.197, %bb.e ] ; 5 uses
  %.095.lcssa = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.e ] ; 6 uses
  call void @systable_endscan(ptr noundef %i.l) #14
  call void @table_close(ptr noundef %i.k, i32 noundef 1) #14
  %i.af = sext i32 %.095.lcssa to i64             ; 2 uses
  call void @pg_qsort(ptr noundef %.096.lcssa, i64 noundef %i.af, i64 noundef 8, ptr noundef nonnull @enum_oid_cmp) #14
  %i.ag = add i32 %.095.lcssa, -1                 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond136.not141 = icmp slt i32 %i.ag, 1
  br i1 %exitcond136.not141, label %._crit_edge124._crit_edge, label %.lr.ph147

.lr.ph147:                                        ; preds = %._crit_edge, %._crit_edge124
  %.085146 = phi i32 [ %.077.lcssa..085, %._crit_edge124 ], [ 1, %._crit_edge ] ; 2 uses
  %.087145 = phi ptr [ %.080.lcssa..087, %._crit_edge124 ], [ null, %._crit_edge ] ; 2 uses
  %.090144 = phi i32 [ %..090, %._crit_edge124 ], [ 0, %._crit_edge ]
  %indvars.iv143 = phi i64 [ %indvars.iv.next, %._crit_edge124 ], [ 1, %._crit_edge ] ; 2 uses
  %indvars.iv133142 = phi i64 [ %indvars.iv.next134, %._crit_edge124 ], [ 0, %._crit_edge ] ; 3 uses
  %i.ah = call ptr @bms_make_singleton(i32 noundef 0) #14 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.096.lcssa, i64 %indvars.iv133142 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133142, 1 ; 3 uses
  %2 = trunc nuw i64 %indvars.iv.next134 to i32
  %3 = icmp sgt i32 %.095.lcssa, %2
  br i1 %3, label %.lr.ph123.preheader, label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %.lr.ph147
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load float, ptr %i.ak, align 4
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.h
  %indvars.iv130 = phi i64 [ %indvars.iv143, %.lr.ph123.preheader ], [ %indvars.iv.next131, %bb.h ] ; 2 uses
  %.075120 = phi float [ %i.al, %.lr.ph123.preheader ], [ %.2.ph, %bb.h ] ; 2 uses
  %.077119 = phi i32 [ 1, %.lr.ph123.preheader ], [ %.279.ph, %bb.h ] ; 3 uses
  %.080118 = phi ptr [ %i.ah, %.lr.ph123.preheader ], [ %.282.ph, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.096.lcssa, i64 %indvars.iv130 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sub i32 %i.an, %i.aj                    ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 8191
  br i1 %i.ap, label %._crit_edge124, label %bb.f

bb.f:                                             ; preds = %.lr.ph123
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = load float, ptr %i.aq, align 4          ; 2 uses
  %i.as = fcmp ogt float %i.ar, %.075120
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = call ptr @bms_add_member(ptr noundef %.080118, i32 noundef %i.ao) #14
  %i.au = add i32 %.077119, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.282.ph = phi ptr [ %.080118, %bb.f ], [ %i.at, %bb.g ] ; 2 uses
  %.279.ph = phi i32 [ %.077119, %bb.f ], [ %i.au, %bb.g ] ; 2 uses
  %.2.ph = phi float [ %.075120, %bb.f ], [ %i.ar, %bb.g ]
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131 to i32
  %exitcond.not = icmp eq i32 %.095.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge124, label %.lr.ph123, !llvm.loop !31

._crit_edge124:                                   ; preds = %bb.h, %.lr.ph123, %.lr.ph147
  %.080.lcssa = phi ptr [ %i.ah, %.lr.ph147 ], [ %.080118, %.lr.ph123 ], [ %.282.ph, %bb.h ] ; 2 uses
  %.077.lcssa = phi i32 [ 1, %.lr.ph147 ], [ %.077119, %.lr.ph123 ], [ %.279.ph, %bb.h ] ; 2 uses
  %i.av = icmp sgt i32 %.077.lcssa, %.085146      ; 3 uses
  %.087..080.lcssa = select i1 %i.av, ptr %.087145, ptr %.080.lcssa
  %..090 = select i1 %i.av, i32 %i.aj, i32 %.090144 ; 2 uses
  %.080.lcssa..087 = select i1 %i.av, ptr %.080.lcssa, ptr %.087145 ; 2 uses
  %.077.lcssa..085 = call i32 @llvm.smax.i32(i32 %.077.lcssa, i32 %.085146) ; 2 uses
  call void @bms_free(ptr noundef %.087..080.lcssa) #14
  %i.aw = trunc nuw nsw i64 %indvars.iv133142 to i32
  %i.ax = xor i32 %i.aw, -1
  %i.ay = add i32 %.095.lcssa, %i.ax
  %.not103 = icmp sge i32 %.077.lcssa..085, %i.ay
  %indvars.iv.next = add nuw nsw i64 %indvars.iv143, 1
  %exitcond136.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count
  %or.cond = select i1 %.not103, i1 true, i1 %exitcond136.not
  br i1 %or.cond, label %._crit_edge124._crit_edge, label %.lr.ph147

._crit_edge124._crit_edge:                        ; preds = %._crit_edge124, %._crit_edge
  %.292 = phi i32 [ 0, %._crit_edge ], [ %..090, %._crit_edge124 ]
  %.289 = phi ptr [ null, %._crit_edge ], [ %.080.lcssa..087, %._crit_edge124 ] ; 2 uses
  %i.az = load ptr, ptr @CacheMemoryContext, align 8
  %i.ba = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.az, ptr @CurrentMemoryContext, align 8
  %i.bb = shl nsw i64 %i.af, 3                    ; 2 uses
  %i.bc = add nsw i64 %i.bb, 20
  %i.bd = call ptr @palloc(i64 noundef %i.bc) #14 ; 5 uses
  store i32 %.292, ptr %i.bd, align 8
  %i.be = call ptr @bms_copy(ptr noundef %.289) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i32 %.095.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %.096.lcssa, i64 %i.bb, i1 false)
  store ptr %i.ba, ptr @CurrentMemoryContext, align 8
  call void @pfree(ptr noundef %.096.lcssa) #14
  call void @bms_free(ptr noundef %.289) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not104 = icmp eq ptr %i.bj, null
  br i1 %.not104, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge124._crit_edge
  call void @pfree(ptr noundef nonnull %i.bj) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge124._crit_edge
  store ptr %i.bd, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AtEOXact_TypeCache() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = load i32, ptr @in_progress_list_len, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %finalize_in_progress_typentries.exit

.lr.ph.i:                                         ; preds = %bb.a, %insert_rel_type_cache_if_needed.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %insert_rel_type_cache_if_needed.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr @TypeCacheHash, align 8
  %i.e = load ptr, ptr @in_progress_list, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = call ptr @hash_search(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 0, ptr noundef null) #14 ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %insert_rel_type_cache_if_needed.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.i = load i8, ptr %i.h, align 1
  %.not.i.i = icmp eq i8 %i.i, 99
  br i1 %.not.i.i, label %bb.c, label %insert_rel_type_cache_if_needed.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, -1572865
  %or.cond.i.i = icmp eq i32 %i.l, 0
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.n = load ptr, ptr %i.m, align 8
  %.not11.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i, label %insert_rel_type_cache_if_needed.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.o = load ptr, ptr @RelIdToTypeIdCacheHash, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = call ptr @hash_search(ptr noundef %i.o, ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.r = load i32, ptr %i.p, align 8
  store i32 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.s, ptr %i.t, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %insert_rel_type_cache_if_needed.exit.i

insert_rel_type_cache_if_needed.exit.i:           ; preds = %bb.e, %bb.d, %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr @in_progress_list_len, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %finalize_in_progress_typentries.exit, !llvm.loop !32

finalize_in_progress_typentries.exit:             ; preds = %insert_rel_type_cache_if_needed.exit.i, %bb.a
  store i32 0, ptr @in_progress_list_len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AtEOSubXact_TypeCache() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = load i32, ptr @in_progress_list_len, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %finalize_in_progress_typentries.exit

.lr.ph.i:                                         ; preds = %bb.a, %insert_rel_type_cache_if_needed.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %insert_rel_type_cache_if_needed.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr @TypeCacheHash, align 8
  %i.e = load ptr, ptr @in_progress_list, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = call ptr @hash_search(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 0, ptr noundef null) #14 ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %insert_rel_type_cache_if_needed.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.i = load i8, ptr %i.h, align 1
  %.not.i.i = icmp eq i8 %i.i, 99
  br i1 %.not.i.i, label %bb.c, label %insert_rel_type_cache_if_needed.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, -1572865
  %or.cond.i.i = icmp eq i32 %i.l, 0
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.n = load ptr, ptr %i.m, align 8
  %.not11.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i, label %insert_rel_type_cache_if_needed.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.o = load ptr, ptr @RelIdToTypeIdCacheHash, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = call ptr @hash_search(ptr noundef %i.o, ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.r = load i32, ptr %i.p, align 8
  store i32 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.s, ptr %i.t, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %insert_rel_type_cache_if_needed.exit.i

insert_rel_type_cache_if_needed.exit.i:           ; preds = %bb.e, %bb.d, %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr @in_progress_list_len, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %finalize_in_progress_typentries.exit, !llvm.loop !32

finalize_in_progress_typentries.exit:             ; preds = %insert_rel_type_cache_if_needed.exit.i, %bb.a
  store i32 0, ptr @in_progress_list_len, align 4
  ret void
}

declare i32 @GetSysCacheHashValue(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @relation_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @relation_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_multirange_range(i32 noundef) local_unnamed_addr #2

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ScanKeyInit(ptr noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @systable_beginscan(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @systable_getnext(ptr noundef) local_unnamed_addr #2

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #2

declare ptr @stringToNode(ptr noundef) local_unnamed_addr #2

declare ptr @expression_planner(ptr noundef) local_unnamed_addr #2
end_hunk_0
