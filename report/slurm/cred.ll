inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@slurm_cred_get_mem:bb.a
bb.d:                                             ; preds = %.thread, %bb.c
  %i.r = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.24, ptr noundef %2, i32 noundef %i.h) #11 ; 0 uses
  br label %bb.e

.thread50:                                        ; preds = %bb.a, %bb.c
  %.03853 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i32 %.03853 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %.thread50, %bb.d
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.y = and i64 %i.x, 8
  %.not43 = icmp eq i64 %i.y, 0
  br i1 %.not43, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @get_log_level() #11
  %i.aa = icmp sgt i32 %i.z, 3
  br i1 %i.aa, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %3, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef %2, ptr noundef nonnull %i.b, i64 noundef %i.ab) #11
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not44 = icmp eq ptr %i.ad, null
  br i1 %.not44, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 @nodelist_find(ptr noundef %i.af, ptr noundef %1) #11 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %.thread54

.thread54:                                        ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef %i.ai) #11 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = tail call i32 @slurm_get_rep_count_inx(ptr noundef %i.al, i32 noundef %i.an, i32 noundef %i.ag) #11 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread54, %bb.k
  %i.aq = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.27, ptr noundef %2, i32 noundef %i.ag) #11 ; 0 uses
  br label %thread-pre-split

bb.m:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ac, align 8
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  store i64 %i.au, ptr %4, align 8
  br label %bb.n

thread-pre-split:                                 ; preds = %bb.i, %bb.l
  %.pr = load i64, ptr %4, align 8
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.m
  %i.av = phi i64 [ %.pr, %thread-pre-split ], [ %i.au, %bb.m ]
  %.not45 = icmp eq i64 %i.av, 0
  br i1 %.not45, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load i64, ptr %3, align 8
  store i64 %i.aw, ptr %4, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ay = and i64 %i.ax, 8
  %.not46 = icmp eq i64 %i.ay, 0
  br i1 %.not46, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = tail call i32 @get_log_level() #11
  %i.ba = icmp sgt i32 %i.az, 3
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr %3, align 8
  %i.bc = load i64, ptr %4, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b, i64 noundef %i.bb, i64 noundef %i.bc) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.f, %bb.h, %bb.g
  ret void
}

declare i32 @nodelist_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @slurm_get_rep_count_inx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @format_core_allocs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @hostlist_create(ptr noundef %i.h) #11 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29, ptr noundef %i.j) #11 ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @hostlist_find(ptr noundef nonnull %i.i, ptr noundef %1) #11 ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  %i.o = load i32, ptr %i.n, align 4
  %.not69 = icmp ult i32 %i.l, %i.o
  br i1 %.not69, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.30, i32 noundef %i.l, i32 noundef %i.q) #11 ; 0 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.31, ptr noundef %1, ptr noundef %i.s) #11 ; 0 uses
  tail call void @hostlist_destroy(ptr noundef nonnull %i.i) #11
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.u = add nuw nsw i32 %i.l, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = load ptr, ptr %i.y, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.06183 = phi i32 [ 0, %bb.f ], [ %i.an, %bb.h ] ; 2 uses
  %.06382 = phi i32 [ 0, %bb.f ], [ %i.ap, %bb.h ] ; 2 uses
  %.06581 = phi i32 [ %i.u, %bb.f ], [ %i.ao, %bb.h ] ; 3 uses
  %i.ab = zext i32 %.06382 to i64                 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = icmp ugt i32 %.06581, %i.ad
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = mul i32 %i.ad, %i.ah
  %i.am = mul i32 %i.al, %i.ak
  %i.an = add i32 %i.am, %.06183                  ; 2 uses
  %i.ao = sub nuw nsw i32 %.06581, %i.ad          ; 2 uses
  %i.ap = add i32 %.06382, 1
  %.not70 = icmp eq i32 %i.ao, 0
  br i1 %.not70, label %.loopexit, label %bb.g, !llvm.loop !14

bb.i:                                             ; preds = %bb.g
  %i.aq = mul nuw nsw i32 %i.ak, %i.ah            ; 2 uses
  %i.ar = add nsw i32 %.06581, -1
  %i.as = mul nsw i32 %i.aq, %i.ar
  %i.at = add i32 %i.as, %.06183                  ; 2 uses
  %i.au = add i32 %i.at, %i.aq
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.at, %bb.i ], [ %i.an, %bb.h ] ; 3 uses
  %.0 = phi i32 [ %i.au, %bb.i ], [ 0, %bb.h ]    ; 2 uses
  %i.av = sub i32 %.0, %.1
  %i.aw = zext i32 %i.av to i64                   ; 3 uses
  %i.ax = tail call ptr @bit_alloc(i64 noundef %i.aw) #11 ; 4 uses
  store ptr %i.ax, ptr %i.c, align 8
  %i.ay = tail call ptr @bit_alloc(i64 noundef %i.aw) #11 ; 4 uses
  store ptr %i.ay, ptr %i.d, align 8
  %i.az = icmp ult i32 %.1, %.0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.bc = zext i32 %.1 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv90 = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv.next91, %bb.n ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = tail call i32 @slurm_bit_test(ptr noundef %i.bd, i64 noundef %indvars.iv90) #11
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @bit_set(ptr noundef %i.ax, i64 noundef %indvars.iv) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bf = load ptr, ptr %i.bb, align 8
  %i.bg = tail call i32 @slurm_bit_test(ptr noundef %i.bf, i64 noundef %indvars.iv90) #11
  %.not74 = icmp eq i32 %i.bg, 0
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @bit_set(ptr noundef %i.ay, i64 noundef %indvars.iv) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aw
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.n, %.loopexit
  tail call void @slurm_cred_get_mem(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.format_core_allocs, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bh = call ptr @bit_fmt(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef %i.ax) #11 ; 0 uses
  %i.bi = load i8, ptr %i.b, align 16
  %.not.i = icmp eq i8 %i.bi, 91
  br i1 %.not.i, label %bb.o, label %_core_format.exit

bb.o:                                             ; preds = %._crit_edge
  %i.bj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 93) #14 ; 2 uses
  %.not5.i = icmp eq ptr %i.bj, null
  br i1 %.not5.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.bj, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_core_format.exit

_core_format.exit:                                ; preds = %._crit_edge, %bb.q
  %.sink.i = phi ptr [ %i.bk, %bb.q ], [ %i.b, %._crit_edge ]
  %i.bl = call ptr @xstrdup(ptr noundef nonnull %.sink.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  store ptr %i.bl, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bm = call ptr @bit_fmt(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef %i.ay) #11 ; 0 uses
  %i.bn = load i8, ptr %i.a, align 16
  %.not.i75 = icmp eq i8 %i.bn, 91
  br i1 %.not.i75, label %bb.r, label %_core_format.exit78

bb.r:                                             ; preds = %_core_format.exit
  %i.bo = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 93) #14 ; 2 uses
  %.not5.i77 = icmp eq ptr %i.bo, null
  br i1 %.not5.i77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.bo, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_core_format.exit78

_core_format.exit78:                              ; preds = %_core_format.exit, %bb.t
  %.sink.i76 = phi ptr [ %i.bp, %bb.t ], [ %i.a, %_core_format.exit ]
  %i.bq = call ptr @xstrdup(ptr noundef nonnull %.sink.i76) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  store ptr %i.bq, ptr %4, align 8
  %.not71 = icmp eq ptr %i.ax, null
  br i1 %.not71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_core_format.exit78
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_core_format.exit78
  store ptr null, ptr %i.c, align 8
  %.not72 = icmp eq ptr %i.ay, null
  br i1 %.not72, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr null, ptr %i.d, align 8
  call void @hostlist_destroy(ptr noundef nonnull %i.i) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret void
}

declare ptr @hostlist_create(ptr noundef) local_unnamed_addr #3

declare i32 @hostlist_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hostlist_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #3

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @get_cred_gres(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @list_destroy(ptr noundef nonnull %i.c) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %2, align 8
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %.not29 = icmp eq ptr %i.d, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @list_destroy(ptr noundef nonnull %i.d) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @hostlist_create(ptr noundef %i.l) #11 ; 3 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29, ptr noundef %i.n) #11 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i32 @hostlist_find(ptr noundef nonnull %i.m, ptr noundef %1) #11 ; 5 uses
  tail call void @hostlist_destroy(ptr noundef nonnull %i.m) #11
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.s = load i32, ptr %i.r, align 4
  %.not31 = icmp ult i32 %i.p, %i.s
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.30, i32 noundef %i.p, i32 noundef %i.u) #11 ; 0 uses
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.32, ptr noundef %1, ptr noundef %i.w) #11 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = tail call ptr @gres_job_state_extract(ptr noundef %i.y, i32 noundef %i.p) #11
  store ptr %i.z, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr @gres_step_state_extract(ptr noundef %i.ab, i32 noundef %i.p) #11
  store ptr %i.ac, ptr %3, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.k, %bb.h
  ret void
}

declare ptr @gres_job_state_extract(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gres_step_state_extract(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @slurm_cred_pack(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #12
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.slurm_cred_pack) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @packbuf(ptr noundef %i.e, ptr noundef %1) #11
  %i.f = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
