Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/reservation?download=true
inline.NumInlined: 103
inline.NumDeleted: 45
begin_hunk_0_@_parse_tres_str:bb.a
  %i.bp = load ptr, ptr %i.i, align 8
  %i.bq = call i32 @slurm_get_next_tres(ptr noundef nonnull %i.e, ptr noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #18
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = load ptr, ptr %i.c, align 8
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z
  %.not19.i = icmp eq ptr %.2.i, null
  br i1 %.not19.i, label %_append_typeless_gres.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.bv = call i32 @list_for_each(ptr noundef nonnull %.2.i, ptr noundef nonnull @_foreach_create_str, ptr noundef nonnull %0) #18 ; 0 uses
  call void @list_destroy(ptr noundef nonnull %.2.i) #18
  br label %_append_typeless_gres.exit

_append_typeless_gres.exit:                       ; preds = %bb.s, %.preheader.i, %._crit_edge.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.q, %bb.k, %bb.h, %bb.e, %bb.c, %bb.b, %bb.a, %_append_typeless_gres.exit
  %.0 = phi i32 [ 2115, %bb.c ], [ 2048, %bb.e ], [ 2006, %bb.h ], [ 2069, %bb.k ], [ 0, %bb.a ], [ 0, %_append_typeless_gres.exit ], [ 2115, %bb.b ], [ 2094, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_dump_resv_req(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.reserve_info, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  store i8 45, ptr %i.a, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 49, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  store i8 45, ptr %i.b, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 49, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.g = and i64 %i.f, 16384
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not26 = icmp eq i64 %i.i, 4294967294
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @slurm_make_time_str(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 256) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not27 = icmp eq i64 %i.k, 4294967294
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @slurm_make_time_str(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, i32 noundef 256) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not28 = icmp eq i64 %i.m, -2
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %2, i8 0, i64 176, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 8
  %i.r = call ptr @reservation_flags_string(ptr noundef nonnull %2) #18 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = call i32 @get_log_level() #18
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %i.u, -2
  %. = select i1 %i.x, i32 -1, i32 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.116, ptr noundef %1, ptr noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %., ptr noundef %i.s, i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ba) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @slurm_xfree(ptr noundef nonnull %i.c) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare ptr @xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @running_cons_tres() local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare ptr @find_part_record(ptr noundef) local_unnamed_addr #2

declare i32 @xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2046) i32 @_build_account_list(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 1)) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.slurmdb_assoc_rec, align 8  ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %1, align 4
  store ptr null, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.f = shl i64 %i.e, 32
  %sext = add i64 %i.f, 8589934592
  %i.g = ashr exact i64 %sext, 32
  %i.h = tail call ptr @slurm_xcalloc(i64 noundef %i.g, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 2200, ptr noundef nonnull @__func__._build_account_list) #18 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.i = tail call ptr @xstrdup(ptr noundef nonnull %0) #18 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call ptr @strtok_r(ptr noundef %i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not2936 = icmp eq ptr %i.j, null
  br i1 %.not2936, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 292
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 5 uses
  %.02637 = phi ptr [ %i.j, %.lr.ph ], [ %i.ah, %bb.p ] ; 3 uses
  %i.m = load i8, ptr %.02637, align 1
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %indvars.iv, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %3, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %3, align 1, !range !15, !noundef !16
  %.not30.not = icmp eq i8 %i.p, 0
  br i1 %.not30.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @get_log_level() #18
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.117) #18
  br label %bb.q

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.02637, i64 1
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.t = load i8, ptr %3, align 1, !range !15, !noundef !16
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 @get_log_level() #18
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.117) #18
  br label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %i.s, %bb.i ], [ %.02637, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.x = load i16, ptr @accounting_enforce, align 2 ; 2 uses
  %i.y = and i16 %i.x, 1
  %.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i, label %_is_account_valid.exit.thread, label %_is_account_valid.exit

_is_account_valid.exit.thread:                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.p

_is_account_valid.exit:                           ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %4, i8 0, i64 328, i1 false)
  store i32 -2, ptr %i.k, align 4
  store ptr %.1, ptr %i.l, align 8
  %i.z = load ptr, ptr @acct_db_conn, align 8
  %i.aa = zext i16 %i.x to i32
  %i.ab = call i32 @assoc_mgr_fill_in_assoc(ptr noundef %i.z, ptr noundef nonnull %4, i32 noundef %i.aa, ptr noundef nonnull %i.a, i1 noundef zeroext false) #18
  %.not2.i = icmp eq i32 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.not2.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_is_account_valid.exit
  %i.ac = call i32 @get_log_level() #18
  %i.ad = icmp sgt i32 %i.ac, 2
  br i1 %i.ad, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.118, ptr noundef nonnull %.1) #18
  br label %bb.q

bb.p:                                             ; preds = %_is_account_valid.exit.thread, %_is_account_valid.exit
  %i.ae = call ptr @xstrdup(ptr noundef nonnull %.1) #18
  %i.af = load ptr, ptr %i.d, align 8             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not29 = icmp eq ptr %i.ah, null
  br i1 %.not29, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.ai = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.aj = phi ptr [ %i.h, %bb.b ], [ %i.af, %._crit_edge.loopexit ]
  %.025.lcssa = phi i32 [ 0, %bb.b ], [ %i.ai, %._crit_edge.loopexit ]
  store i32 %.025.lcssa, ptr %1, align 4
  store ptr %i.aj, ptr %2, align 8
  br label %.sink.split

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.k, %bb.l, %bb.g, %bb.h
  %5 = and i64 %indvars.iv, 4294967295
  %.not43 = icmp eq i64 %5, 0
  br i1 %.not43, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.q
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  %.pre = load ptr, ptr %i.d, align 8
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %indvars.iv50 = phi i64 [ 0, %.lr.ph41.preheader ], [ %indvars.iv.next51, %.lr.ph41 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv50
  call void @slurm_xfree(ptr noundef %i.ak) #18
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !23

._crit_edge42:                                    ; preds = %.lr.ph41, %bb.q
  call void @slurm_xfree(ptr noundef nonnull %i.d) #18
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge42
  %.027.ph = phi i32 [ 0, %._crit_edge ], [ 2045, %._crit_edge42 ]
  call void @slurm_xfree(ptr noundef nonnull %i.c) #18
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.a
  %.027 = phi i32 [ 2045, %bb.a ], [ %.027.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2011) i32 @_build_uid_list(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 1)) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %1, align 4
  store ptr null, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.f = shl i64 %i.e, 32
  %sext = add i64 %i.f, 8589934592
  %i.g = ashr exact i64 %sext, 32
  %i.h = tail call ptr @slurm_xcalloc(i64 noundef %i.g, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 2345, ptr noundef nonnull @__func__._build_uid_list) #18
  store ptr %i.h, ptr %i.c, align 8
  %i.i = tail call ptr @xstrdup(ptr noundef nonnull %0) #18 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call ptr @strtok_r(ptr noundef %i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.a) #18 ; 3 uses
  %.not2632 = icmp eq ptr %i.j, null
  br i1 %.not2632, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  br label %bb.y

.lr.ph:                                           ; preds = %bb.b
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %.02233.us = phi ptr [ %i.x, %bb.k ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.k = load i8, ptr %.02233.us, align 1
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.m = load i8, ptr %3, align 1, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split.us, label %bb.h

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.o = icmp eq i64 %indvars.iv, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %3, align 1, !range !15, !noundef !16
  %.not27.not.us = icmp eq i8 %i.p, 0
  br i1 %.not27.not.us, label %.split36.us, label %bb.g

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %3, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02233.us, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.123.us = phi ptr [ %i.q, %bb.g ], [ %.02233.us, %bb.c ] ; 2 uses
  %i.r = call i32 @uid_from_string(ptr noundef nonnull %.123.us, ptr noundef nonnull %i.d) #18
  %.not28.us = icmp eq i32 %i.r, 0
  br i1 %.not28.us, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @get_log_level() #18
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.120, ptr noundef nonnull %.123.us) #18
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.d, align 4
  %i.v = load ptr, ptr %i.c, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.u, ptr %i.w, align 4
  %i.x = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not26.us = icmp eq ptr %i.x, null
  br i1 %.not26.us, label %._crit_edge.loopexit, label %.lr.ph.split.us, !llvm.loop !24

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.w
  %.034 = phi i32 [ %.1, %bb.w ], [ 0, %.lr.ph ]  ; 5 uses
  %.02233 = phi ptr [ %i.ar, %bb.w ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = load i8, ptr %.02233, align 1
  %i.z = icmp eq i8 %i.y, 45
  br i1 %i.z, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph.split
  %i.aa = icmp eq i32 %.034, 0
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %3, align 1
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ab = load i8, ptr %3, align 1, !range !15, !noundef !16
  %.not27.not = icmp eq i8 %i.ab, 0
  br i1 %.not27.not, label %.split36.us, label %bb.p

.split36.us:                                      ; preds = %bb.n, %bb.e
  %i.ac = call i32 @get_log_level() #18
  %i.ad = icmp sgt i32 %i.ac, 2
  br i1 %i.ad, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.split36.us
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.119) #18
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.02233, i64 1
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split
  %i.af = load i8, ptr %3, align 1, !range !15, !noundef !16
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.split.us, label %bb.s

.split.us:                                        ; preds = %bb.q, %bb.c
  %i.ah = call i32 @get_log_level() #18
  %i.ai = icmp sgt i32 %i.ah, 2
  br i1 %i.ai, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.split.us
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.119) #18
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.p
  %.123 = phi ptr [ %i.ae, %bb.p ], [ %.02233, %bb.q ] ; 2 uses
  %i.aj = call i32 @uid_from_string(ptr noundef nonnull %.123, ptr noundef nonnull %i.d) #18
  %.not28 = icmp eq i32 %i.aj, 0
  br i1 %.not28, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = call i32 @get_log_level() #18
  %i.al = icmp sgt i32 %i.ak, 2
  br i1 %i.al, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.120, ptr noundef nonnull %.123) #18
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.am = load i32, ptr %i.d, align 4
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = add nsw i32 %.034, 1
  %i.ap = sext i32 %.034 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.am, ptr %i.aq, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.1 = phi i32 [ %i.ao, %bb.v ], [ %.034, %bb.u ], [ %.034, %bb.t ] ; 2 uses
  %i.ar = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not26 = icmp eq ptr %i.ar, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph.split, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.as = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@_pick_nodes_ordered:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.dw = call i32 @get_log_level() #18
  %i.dx = icmp sgt i32 %i.dw, 3
  br i1 %i.dx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %i.cf, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__._pick_node_cnt, ptr noundef %i.dy, i32 noundef %i.dm) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.dz = call fastcc ptr @_resv_select(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ck)
  br label %.thread159.i

bb.ao:                                            ; preds = %.thread.i, %bb.aj
  %.067126.i = phi i32 [ %.067127.i, %.thread.i ], [ %i.dc, %bb.aj ] ; 3 uses
  %i.ea = icmp eq i32 %.067126.i, 0
  br i1 %i.ea, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.eb = load i32, ptr %i.ab, align 8
  %i.ec = icmp eq i32 %i.eb, -2
  br i1 %i.ec, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ed = load i64, ptr %i.by, align 8
  %i.ee = and i64 %i.ed, 256
  %.not89.i = icmp eq i64 %i.ee, 0
  br i1 %.not89.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.eg = and i64 %i.ef, 16384
  %.not102.i = icmp eq i64 %i.eg, 0
  br i1 %.not102.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eh = call i32 @get_log_level() #18
  %i.ei = icmp sgt i32 %i.eh, 3
  br i1 %i.ei, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ej = load ptr, ptr %i.cf, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__._pick_node_cnt, ptr noundef %i.ej, i32 noundef %i.dm) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.ek = load ptr, ptr %i.cl, align 8
  %i.el = call i64 @bit_size(ptr noundef %i.ek) #18
  %i.em = call ptr @bit_alloc(i64 noundef %i.el) #18
  br label %.thread159.i

bb.av:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.en = load ptr, ptr %i.cl, align 8
  %i.eo = call ptr @bit_copy(ptr noundef %i.en) #18 ; 3 uses
  store ptr %i.eo, ptr %i.d, align 8
  %i.ep = load ptr, ptr @job_list, align 8
  %i.eq = call ptr @list_iterator_create(ptr noundef %i.ep) #18 ; 3 uses
  %i.er = call ptr @list_next(ptr noundef %i.eq) #18 ; 2 uses
  %.not90130.i = icmp eq ptr %i.er, null
  br i1 %.not90130.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.backedge129.i, %.lr.ph.i
  %i.et = phi ptr [ %i.er, %.lr.ph.i ], [ %i.ix, %.backedge129.i ] ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 512
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = and i32 %i.ev, 255
  %.off.i = add nsw i32 %i.ew, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.ax, label %.backedge129.i

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 272
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = load i64, ptr %i.cg, align 8
  %i.fa = icmp slt i64 %i.ey, %i.ez
  br i1 %i.fa, label %.backedge129.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load i32, ptr %i.ab, align 8
  %i.fc = icmp eq i32 %i.fb, -2
  br i1 %i.fc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fd = load ptr, ptr %i.cl, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 656
  %i.ff = load ptr, ptr %i.fe, align 8
  call void @bit_and_not(ptr noundef %i.fd, ptr noundef %i.ff) #18
  br label %.backedge129.i

bb.ba:                                            ; preds = %bb.ay
  %i.fg = load i64, ptr %i.by, align 8
  %i.fh = and i64 %i.fg, 64
  %.not101.i = icmp eq i64 %i.fh, 0
  br i1 %.not101.i, label %bb.bb, label %.backedge129.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 504 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8            ; 7 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_check_job_compatibility.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 96 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call i32 @bit_set_count(ptr noundef %i.fm) #18 ; 3 uses
  %i.fo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fp = and i64 %i.fo, 16384
  %.not63.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not63.i.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.fq = load ptr, ptr %i.fj, align 8
  %i.fr = call ptr @bit_fmt(ptr noundef nonnull %i.c, i32 noundef 200, ptr noundef %i.fq) #18 ; 0 uses
  %i.fs = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ft = and i64 %i.fs, 16384
  %.not64.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not64.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fu = call i32 @get_log_level() #18
  %i.fv = icmp sgt i32 %i.fu, 3
  br i1 %i.fv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fw = load ptr, ptr %i.fl, align 8
  %i.fx = call i64 @bit_size(ptr noundef %i.fw) #18
  %i.fy = load ptr, ptr %i.fj, align 8
  %i.fz = call i64 @bit_size(ptr noundef %i.fy) #18
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__._check_job_compatibility, i32 noundef %i.fn, i64 noundef %i.fx, ptr noundef nonnull %i.et, ptr noundef nonnull %i.c, i64 noundef %i.fz) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bc
  %i.ga = load ptr, ptr %i.fl, align 8
  %i.gb = call ptr @bit_copy(ptr noundef %i.ga) #18 ; 6 uses
  store ptr %i.gb, ptr %i.b, align 8
  call void @node_conf_create_cluster_core_bitmap(ptr noundef nonnull %i.es) #18
  %.not88.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not88.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bh
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fj, i64 136
  br label %bb.bi

bb.bi:                                            ; preds = %.thread.i.i, %.lr.ph.i.i
  %indvars.iv96.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next97.i.i, %.thread.i.i ] ; 4 uses
  %.05686.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.157.lcssa.i.i, %.thread.i.i ] ; 6 uses
  %.05984.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.gv, %.thread.i.i ]
  %i.gf = load ptr, ptr %i.gc, align 8
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv96.i.i
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32
  %i.gj = load ptr, ptr %i.gd, align 8
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %indvars.iv96.i.i
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.gm, %i.gi
  %.fr89.i.i = freeze i32 %i.gn                   ; 7 uses
  %i.go = load ptr, ptr %i.ge, align 8
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv96.i.i
  %i.gq = load i32, ptr %i.gp, align 4            ; 5 uses
  %i.gr = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.gs = and i64 %i.gr, 16384
  %.not66.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not66.i.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gt = call i32 @get_log_level() #18
  %i.gu = icmp sgt i32 %i.gt, 3
  br i1 %i.gu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__._check_job_compatibility, i32 noundef %.fr89.i.i, i32 noundef %i.gq, i32 noundef %.05686.i.i) #18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.gv = add nsw i32 %i.gq, %.05984.i.i          ; 2 uses
  %i.gw = add nsw i32 %i.gq, -1                   ; 2 uses
  %.not6776.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not6776.i.i, label %.thread.i.i, label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %bb.bl
  %.not90.i.i = icmp eq i32 %.fr89.i.i, 0
  br i1 %.not90.i.i, label %.lr.ph79.split.i.i, label %.lr.ph79.split.us.preheader.i.i

.lr.ph79.split.us.preheader.i.i:                  ; preds = %.lr.ph79.i.i
  %i.gx = sext i32 %.05686.i.i to i64
  %i.gy = sext i32 %.fr89.i.i to i64
  %i.gz = mul i32 %.fr89.i.i, %i.gq
  %i.ha = add i32 %i.gz, %.05686.i.i
  %wide.trip.count.i.i = zext i32 %.fr89.i.i to i64
  br label %.lr.ph79.split.us.i.i

.lr.ph79.split.us.i.i:                            ; preds = %bb.bz, %.lr.ph79.split.us.preheader.i.i
  %indvars.iv93.i.i = phi i64 [ %i.gx, %.lr.ph79.split.us.preheader.i.i ], [ %indvars.iv.next94.i.i, %bb.bz ] ; 3 uses
  %i.hb = phi i32 [ %i.gw, %.lr.ph79.split.us.preheader.i.i ], [ %i.id, %bb.bz ] ; 2 uses
  %i.hc = call i64 @bit_ffs(ptr noundef %i.gb) #18 ; 3 uses
  %i.hd = trunc i64 %i.hc to i32                  ; 4 uses
  %i.he = icmp slt i32 %i.hd, 0
  %i.hf = trunc nsw i64 %indvars.iv93.i.i to i32  ; 2 uses
  br i1 %i.he, label %.thread.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph79.split.us.i.i
  %i.hg = call i32 @cr_get_coremap_offset(i32 noundef %i.hd) #18
  %i.hh = sext i32 %i.hg to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.br, %.lr.ph.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i, %bb.br ] ; 4 uses
  %.075.us.i.i = phi i32 [ 0, %.lr.ph.us.i.i ], [ %.1.us.i.i, %bb.br ] ; 3 uses
  %i.hi = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.hj = and i64 %i.hi, 16384
  %.not70.us.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not70.us.i.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hk = call i32 @get_log_level() #18
  %i.hl = icmp sgt i32 %i.hk, 3
  br i1 %i.hl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hm = trunc nuw nsw i64 %indvars.iv.i.i to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__._check_job_compatibility, ptr noundef nonnull %i.et, i32 noundef %i.hm, i32 noundef %i.hf, i32 noundef %.075.us.i.i) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.hn = load ptr, ptr %i.fi, align 8
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = add nsw i64 %indvars.iv.i.i, %indvars.iv93.i.i
  %i.hq = call i32 @slurm_bit_test(ptr noundef %i.ho, i64 noundef %i.hp) #18
  %.not71.us.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not71.us.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hr = add nsw i32 %.075.us.i.i, 1
  %i.hs = load ptr, ptr %i.es, align 8
  %i.ht = add nsw i64 %indvars.iv.i.i, %i.hh
  call void @bit_set(ptr noundef %i.hs, i64 noundef %i.ht) #18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1.us.i.i = phi i32 [ %i.hr, %bb.bq ], [ %.075.us.i.i, %bb.bp ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.bm, !llvm.loop !106

bb.bs:                                            ; preds = %._crit_edge.us.i.i
  %i.hu = call i32 @get_log_level() #18
  %i.hv = icmp sgt i32 %i.hu, 3
  br i1 %i.hv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__._check_job_compatibility, i32 noundef %i.hd, i32 noundef %.1.us.i.i, i32 noundef %.fr89.i.i) #18
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.us.i.i, %bb.bt, %bb.bs
  %i.hw = icmp eq i32 %.1.us.i.i, %.fr89.i.i
  br i1 %i.hw, label %bb.bv, label %._crit_edge102.i.i

._crit_edge102.i.i:                               ; preds = %bb.bu
  %.pre103.i.i = and i64 %i.hc, 2147483647
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.hx = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.hy = and i64 %i.hx, 16384
  %.not69.us.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not69.us.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hz = call i32 @get_log_level() #18
  %i.ia = icmp sgt i32 %i.hz, 3
  br i1 %i.ia, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__._check_job_compatibility, ptr noundef nonnull %i.et, i32 noundef %i.hd) #18
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.ib = load ptr, ptr %i.cl, align 8
  %i.ic = and i64 %i.hc, 2147483647               ; 2 uses
  call void @bit_clear(ptr noundef %i.ib, i64 noundef %i.ic) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge102.i.i
  %.pre-phi104.i.i = phi i64 [ %.pre103.i.i, %._crit_edge102.i.i ], [ %i.ic, %bb.by ]
  %indvars.iv.next94.i.i = add nsw i64 %indvars.iv93.i.i, %i.gy
  call void @bit_clear(ptr noundef %i.gb, i64 noundef %.pre-phi104.i.i) #18
  %i.id = add nsw i32 %i.hb, -1
  %.not67.us.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not67.us.i.i, label %.thread.i.i, label %.lr.ph79.split.us.i.i

._crit_edge.us.i.i:                               ; preds = %bb.br
  %i.ie = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.if = and i64 %i.ie, 16384
  %.not68.us.i.i = icmp eq i64 %i.if, 0
  br i1 %.not68.us.i.i, label %bb.bu, label %bb.bs

.lr.ph79.split.i.i:                               ; preds = %.lr.ph79.i.i, %bb.cg
  %i.ig = phi i32 [ %i.iv, %bb.cg ], [ %i.gw, %.lr.ph79.i.i ] ; 2 uses
  %i.ih = call i64 @bit_ffs(ptr noundef %i.gb) #18 ; 2 uses
  %i.ii = trunc i64 %i.ih to i32                  ; 4 uses
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph79.split.i.i
  %i.ik = call i32 @cr_get_coremap_offset(i32 noundef %i.ii) #18 ; 0 uses
  %i.il = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.im = and i64 %i.il, 16384
  %.not68.i.i = icmp eq i64 %i.im, 0
  br i1 %.not68.i.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.in = call i32 @get_log_level() #18
  %i.io = icmp sgt i32 %i.in, 3
  br i1 %i.io, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__._check_job_compatibility, i32 noundef %i.ii, i32 noundef 0, i32 noundef 0) #18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.ip = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.iq = and i64 %i.ip, 16384
  %.not69.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not69.i.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = call i32 @get_log_level() #18
  %i.is = icmp sgt i32 %i.ir, 3
  br i1 %i.is, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__._check_job_compatibility, ptr noundef nonnull %i.et, i32 noundef %i.ii) #18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.it = load ptr, ptr %i.cl, align 8
  %i.iu = and i64 %i.ih, 2147483647               ; 2 uses
  call void @bit_clear(ptr noundef %i.it, i64 noundef %i.iu) #18
  call void @bit_clear(ptr noundef %i.gb, i64 noundef %i.iu) #18
  %i.iv = add nsw i32 %i.ig, -1
  %.not67.i.i = icmp eq i32 %i.ig, 0
  br i1 %.not67.i.i, label %.thread.i.i, label %.lr.ph79.split.i.i

.thread.i.i:                                      ; preds = %bb.bz, %.lr.ph79.split.us.i.i, %bb.cg, %.lr.ph79.split.i.i, %bb.bl
  %.157.lcssa.i.i = phi i32 [ %.05686.i.i, %bb.bl ], [ %.05686.i.i, %bb.cg ], [ %.05686.i.i, %.lr.ph79.split.i.i ], [ %i.ha, %bb.bz ], [ %i.hf, %.lr.ph79.split.us.i.i ]
  %i.iw = icmp ult i32 %i.gv, %i.fn
  br i1 %i.iw, label %bb.bi, label %._crit_edge.i.i, !llvm.loop !107

._crit_edge.i.i:                                  ; preds = %.thread.i.i, %bb.bh
  %.not65.i.i = icmp eq ptr %i.gb, null
  br i1 %.not65.i.i, label %_check_job_compatibility.exit.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i.i
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #18
  br label %_check_job_compatibility.exit.i

_check_job_compatibility.exit.i:                  ; preds = %bb.ch, %._crit_edge.i.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.backedge129.i

.backedge129.i:                                   ; preds = %_check_job_compatibility.exit.i, %bb.ba, %bb.az, %bb.ax, %bb.aw
  %i.ix = call ptr @list_next(ptr noundef %i.eq) #18 ; 2 uses
  %.not90.i = icmp eq ptr %i.ix, null
  br i1 %.not90.i, label %._crit_edge.i, label %bb.aw, !llvm.loop !108

._crit_edge.i:                                    ; preds = %.backedge129.i, %bb.av
  call void @list_iterator_destroy(ptr noundef %i.eq) #18
  %i.iy = load ptr, ptr %i.cl, align 8
  %i.iz = call i32 @bit_set_count(ptr noundef %i.iy) #18
  %.not91.i = icmp ult i32 %i.iz, %.067126.i
  br i1 %.not91.i, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i
  %i.ja = load ptr, ptr %i.cl, align 8
  %i.jb = call ptr @bit_copy(ptr noundef %i.ja) #18
  store ptr %i.jb, ptr %i.e, align 8
  %i.jc = call fastcc ptr @_resv_select(ptr noundef readonly %0, ptr noundef nonnull %i.ck) ; 2 uses
  %.not92.i = icmp eq ptr %i.jc, null
  br i1 %.not92.i, label %bb.cj, label %bb.cz

bb.cj:                                            ; preds = %bb.ci
  %i.jd = load ptr, ptr %i.cl, align 8
  %i.je = load ptr, ptr %i.e, align 8
  call void @bit_or(ptr noundef %i.jd, ptr noundef %i.je) #18
  %i.jf = load ptr, ptr %i.e, align 8
  %.not93.i = icmp eq ptr %i.jf, null
  br i1 %.not93.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
end_hunk_1
begin_hunk_2_@_combine_gres_list_exc:bb.a

.loopexit54:                                      ; preds = %bb.j, %bb.f, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not50 = icmp eq ptr %i.aq, null
  br i1 %.not50, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.loopexit54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 152 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not51 = icmp eq ptr %i.as, null
  br i1 %.not51, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.au = load i32, ptr %i.at, align 8
  %i.av = zext i32 %i.au to i64
  %i.aw = call ptr @slurm_xcalloc(i64 noundef %i.av, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 6139, ptr noundef nonnull @__func__._combine_gres_list_exc) #18
  store ptr %i.aw, ptr %i.ar, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %.not59 = icmp eq i32 %i.ay, 0
  br i1 %.not59, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.m, %.lr.ph57
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %.lr.ph57 ], [ 0, %bb.m ] ; 3 uses
  %i.az = load ptr, ptr %i.ap, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv61
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.ar, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv61 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.bd, align 8
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.bg = load i32, ptr %i.ax, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next62, %i.bh
  br i1 %i.bi, label %.lr.ph57, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %.lr.ph57, %bb.m, %.loopexit54, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 1
}

declare i32 @gres_find_job_by_key_exact_type(ptr noundef, ptr noundef) #2

declare ptr @gres_create_state(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gres_job_state_dup(ptr noundef) local_unnamed_addr #2

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_update_resv_jobs(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load i32, ptr %0, align 4
  store i32 %i.b, ptr %i.a, align 4
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._update_resv_jobs.job_write_lock) #18
  %i.c = load ptr, ptr @resv_list, align 8        ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._update_resv_jobs.job_write_lock) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = call ptr @list_find_first(ptr noundef nonnull %i.c, ptr noundef nonnull @_find_resv_id, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._update_resv_jobs.job_write_lock) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @job_list, align 8
  %i.f = call i32 @list_for_each(ptr noundef %i.e, ptr noundef nonnull @_set_job_resvid, ptr noundef nonnull %i.d) #18 ; 0 uses
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._update_resv_jobs.job_write_lock) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_set_job_resvid(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 16384
  %.not12 = icmp eq i64 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @get_log_level() #18
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.258, ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.n, ptr noundef %i.p) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr @acct_db_conn, align 8
  %i.u = tail call i32 @jobacct_storage_g_job_start(ptr noundef %i.t, ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_update_resv_pend_cnt(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  ret i32 0
}

declare i32 @acct_storage_g_remove_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #14

declare void @slurmscriptd_run_resv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @acct_storage_g_node_inx(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @acct_storage_g_add_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @acct_storage_g_modify_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @next_node(ptr noundef) local_unnamed_addr #2

declare i32 @node_features_g_overlap(ptr noundef) local_unnamed_addr #2

declare i32 @node_features_g_boot_time() local_unnamed_addr #2

declare void @job_queue_append_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_foreach_reservation_license(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #15 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = load i16, ptr %1, align 8
  %i.c = icmp eq i16 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13, !14}
!1 = distinct !{!1, !13, !14}
!2 = distinct !{!2, !13, !14}
!3 = distinct !{!3, !13, !14}
!4 = distinct !{!4, !13, !14}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{null}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
!30 = distinct !{!30, !13, !14}
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14}
!33 = distinct !{!33, !13, !14}
!34 = distinct !{!34, !13, !14}
!35 = distinct !{!35, !13, !14}
!36 = distinct !{!36, !13, !14, !41}
!37 = distinct !{!37, !13, !14}
!38 = distinct !{!38, !13, !14}
!39 = distinct !{!39, !13, !14}
!40 = distinct !{!40, !13, !14}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = distinct !{!42, !13, !14}
!43 = distinct !{!43, !13, !14}
!44 = distinct !{!44, !13, !14}
!45 = distinct !{!45, !13, !14}
!46 = distinct !{!46, !13, !14}
!47 = distinct !{!47, !13, !14}
!48 = distinct !{!48, !13, !14}
!49 = distinct !{!49, !13, !14}
!50 = distinct !{!50, !13, !14}
!51 = distinct !{!51, !13, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !13, !14}
!54 = distinct !{!54, !13, !14}
!55 = distinct !{!55, !13, !14}
!56 = distinct !{!56, !13, !14}
!57 = distinct !{!57, !13, !14}
!58 = distinct !{!58, !13, !14}
!59 = distinct !{!59, !13, !14}
!60 = distinct !{!60, !13, !14}
!61 = distinct !{!61, !13, !14}
!62 = distinct !{!62, !13, !14}
!63 = distinct !{!63, !13, !14}
!64 = distinct !{!64, !13, !14}
!65 = distinct !{!65, !13, !14}
!66 = distinct !{!66, !13, !14}
!67 = distinct !{!67, !13, !14}
!68 = distinct !{!68, !13, !14}
!69 = distinct !{!69, !13, !14}
!70 = distinct !{!70, !13, !14}
!71 = distinct !{!71, !13, !14}
!72 = distinct !{!72, !13, !14}
!73 = distinct !{!73, !13, !14}
!74 = distinct !{!74, !13, !14}
!75 = distinct !{!75, !13, !14}
!76 = distinct !{!76, !13, !14}
!77 = distinct !{!77, !13, !14}
!78 = distinct !{!78, !13, !14}
!79 = distinct !{!79, !13, !14}
!80 = distinct !{!80, !13, !14}
!81 = distinct !{!81, !13, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !13, !14}
!84 = distinct !{!84, !13, !14}
!85 = distinct !{!85, !13, !14}
!86 = distinct !{!86, !13, !14}
!87 = distinct !{!87, !13, !14}
!88 = distinct !{!88, !13, !14}
!89 = distinct !{!89, !13, !14}
!90 = distinct !{!90, !13, !14}
!91 = distinct !{!91, !13, !14, !100, !101}
!92 = distinct !{!92, !13, !14, !100}
!93 = distinct !{!93, !13, !14}
!94 = distinct !{!94, !13, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !13, !14}
!97 = distinct !{!97, !13, !14}
!98 = distinct !{!98, !13, !14}
!99 = distinct !{!99, !13, !14}
!100 = !{!"llvm.loop.isvectorized", i32 1}
!101 = !{!"llvm.loop.unroll.runtime.disable"}
!102 = distinct !{!102, !13, !14}
!103 = distinct !{!103, !13, !14}
!104 = distinct !{!104, !13, !14}
!105 = distinct !{!105, !13, !14}
!106 = distinct !{!106, !13, !14}
!107 = distinct !{!107, !13, !14}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13, !14}
!110 = distinct !{!110, !13, !14}
!111 = distinct !{!111, !13, !14}
!112 = distinct !{!112, !13, !14}
!113 = distinct !{!113, !13, !14}
!114 = distinct !{!114, !13, !14}
!115 = distinct !{!115, !13, !14}
end_hunk_2
