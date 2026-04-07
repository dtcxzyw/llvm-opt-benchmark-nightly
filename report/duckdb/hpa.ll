inline.NumInlined: 162
inline.NumDeleted: 71
begin_hunk_0_@hpa_dalloc_batch:bb.a
  %i.bo = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !78
  call void %i.bq(ptr noundef nonnull %4, i1 noundef zeroext true) #8, !inline_history !79
  %i.br = load i64, ptr %4, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i29, i64 20
  store i8 1, ptr %i.bs, align 4, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i29, i64 24
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
end_hunk_0
begin_hunk_1_@hpa_dalloc_batch:bb.a

.sink.split.i.i:                                  ; preds = %bb.j, %hpdata_changing_state_get.exit.thread.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i29, i64 20
  store i8 0, ptr %i.bv, align 4, !tbaa !80
  br label %hpa_dalloc_locked.exit

hpa_dalloc_locked.exit:                           ; preds = %bb.j, %.sink.split.i.i
end_hunk_1
begin_hunk_2_@hpa_dalloc_batch:bb.a

bb.k:                                             ; preds = %._crit_edge
  %i.by = getelementptr i8, ptr %1, i64 1368      ; 2 uses
  %.val.i.i32 = load i64, ptr %i.by, align 8, !tbaa !81
  %i.bz = getelementptr i8, ptr %1, i64 5672      ; 2 uses
  %.val9.i.i = load i64, ptr %i.bz, align 8, !tbaa !44
  %i.ca = sub i64 %.val.i.i32, %.val9.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 5640 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !82 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %hpa_ndirty_max.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr i8, ptr %1, i64 1360
  %.val.i.i.i = load i64, ptr %i.ce, align 8, !tbaa !83 ; 3 uses
  %i.cf = icmp ult i64 %.val.i.i.i, 281474976710656
  br i1 %i.cf, label %bb.m, label %bb.n

end_hunk_2
begin_hunk_3_@hpa_dalloc_batch:bb.a
  br i1 %i.co, label %hpa_shard_has_deferred_work.exit, label %bb.o

bb.o:                                             ; preds = %hpa_ndirty_max.exit.thread.i.i
  %.val.i10.i.i = load i64, ptr %i.by, align 8, !tbaa !81
  %.val11.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !44
  %i.cp = getelementptr i8, ptr %i.cn, i64 176
  %.val12.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !75
  %.neg = add i64 %.val.i10.i.i, 512
  %i.cq = add i64 %.val11.i.i.i, %.val12.i.i.i
  %i.cr = sub i64 %.neg, %i.cq
  %i.cs = load i32, ptr %i.cb, align 8, !tbaa !82 ; 3 uses
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %hpa_ndirty_max.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr i8, ptr %1, i64 1360
  %.val.i.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !83 ; 3 uses
  %i.cv = icmp ult i64 %.val.i.i.i.i, 281474976710656
  br i1 %i.cv, label %bb.q, label %bb.r

end_hunk_3
begin_hunk_4_@hpa_time_until_deferred_work:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = call i64 %i.s(ptr noundef nonnull %2) #8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5648
  %i.v = load i64, ptr %i.u, align 8, !tbaa !85   ; 2 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %.thread, label %bb.f

end_hunk_4
begin_hunk_5_@hpa_time_until_deferred_work:bb.a
bb.g:                                             ; preds = %.thread, %malloc_mutex_lock.exit
  %.135 = phi i64 [ %i.y, %.thread ], [ -1, %malloc_mutex_lock.exit ] ; 4 uses
  %i.ab = getelementptr i8, ptr %1, i64 1368      ; 2 uses
  %.val.i = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr i8, ptr %1, i64 5672      ; 2 uses
  %.val9.i = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.ad = sub i64 %.val.i, %.val9.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 5640 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !82 ; 3 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %hpa_ndirty_max.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %1, i64 1360
  %.val.i.i = load i64, ptr %i.ah, align 8, !tbaa !83 ; 3 uses
  %i.ai = icmp ult i64 %.val.i.i, 281474976710656
  br i1 %i.ai, label %bb.i, label %bb.j

end_hunk_5
begin_hunk_6_@hpa_time_until_deferred_work:bb.a
  br i1 %i.ar, label %hpa_should_purge.exit.thread43, label %bb.k

bb.k:                                             ; preds = %hpa_ndirty_max.exit.thread.i
  %.val.i10.i = load i64, ptr %i.ab, align 8, !tbaa !81
  %.val11.i.i = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.as = getelementptr i8, ptr %i.aq, i64 176
  %.val12.i.i = load i64, ptr %i.as, align 8, !tbaa !75
  %.neg = add i64 %.val.i10.i, 512
  %i.at = add i64 %.val11.i.i, %.val12.i.i
  %i.au = sub i64 %.neg, %i.at
  %i.av = load i32, ptr %i.ae, align 8, !tbaa !82 ; 3 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %hpa_should_purge.exit.thread43, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %1, i64 1360
  %.val.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !83 ; 3 uses
  %i.ay = icmp ult i64 %.val.i.i.i, 281474976710656
  br i1 %i.ay, label %bb.m, label %bb.n

end_hunk_6
begin_hunk_7_@hpa_time_until_deferred_work:bb.a

hpa_should_purge.exit.thread:                     ; preds = %hpa_ndirty_max.exit.i, %hpa_should_purge.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5680
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !86
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.p

end_hunk_7
begin_hunk_8_@hpa_time_until_deferred_work:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 5712
  %i.bq = call i64 %i.bo(ptr noundef nonnull %i.bp) #8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 5656
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !87 ; 2 uses
  %i.bt = icmp ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.q, label %hpa_should_purge.exit.thread43

end_hunk_8
begin_hunk_9_@duckdb_je_hpa_shard_destroy:bb.a
  tail call void @duckdb_je_psset_remove(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %.val = load ptr, ptr %i.d, align 8, !tbaa !89
  tail call void %i.g(ptr noundef %.val, i64 noundef 2097152) #8
  %i.h = tail call ptr @duckdb_je_psset_pick_alloc(ptr noundef nonnull %i.a, i64 noundef 4096) #8 ; 2 uses
  %.not = icmp eq ptr %i.h, null
end_hunk_9
begin_hunk_10_@duckdb_je_hpa_shard_set_deferral_allowed:bb.a

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5644 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !90, !range !54, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  store i8 %i.a, ptr %i.n, align 4, !tbaa !90
  %.not = xor i1 %i.p, true
  %or.cond = or i1 %2, %.not
  br i1 %or.cond, label %bb.f, label %bb.e
end_hunk_10
begin_hunk_11_@hpa_shard_maybe_do_deferred_work:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5644
  %i.d = load i8, ptr %i.c, align 4, !tbaa !90, !range !54, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %bb.c

end_hunk_11
begin_hunk_12_@hpa_shard_maybe_do_deferred_work:bb.a
bb.d:                                             ; preds = %.backedge, %bb.c
  %.025 = phi i1 [ false, %bb.c ], [ %.025.be, %.backedge ] ; 2 uses
  %.1 = phi i64 [ 0, %bb.c ], [ %.1.be, %.backedge ] ; 6 uses
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !81
  %.val9.i = load i64, ptr %i.i, align 8, !tbaa !44
  %i.aa = sub i64 %.val.i, %.val9.i
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !82  ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %hpa_ndirty_max.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.k, align 8, !tbaa !83 ; 3 uses
  %i.ad = icmp ult i64 %.val.i.i, 281474976710656
  br i1 %i.ad, label %bb.f, label %bb.g

end_hunk_12
begin_hunk_13_@hpa_shard_maybe_do_deferred_work:bb.a
  br i1 %i.am, label %hpa_should_purge.exit.thread, label %bb.h

bb.h:                                             ; preds = %hpa_ndirty_max.exit.thread.i
  %.val.i10.i = load i64, ptr %i.h, align 8, !tbaa !81
  %.val11.i.i = load i64, ptr %i.i, align 8, !tbaa !44
  %i.an = getelementptr i8, ptr %i.al, i64 176
  %.val12.i.i = load i64, ptr %i.an, align 8, !tbaa !75
  %.neg = add i64 %.val.i10.i, 512
  %i.ao = add i64 %.val11.i.i, %.val12.i.i
  %i.ap = sub i64 %.neg, %i.ao
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !82  ; 3 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %hpa_ndirty_max.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !83 ; 3 uses
  %i.as = icmp ult i64 %.val.i.i.i, 281474976710656
  br i1 %i.as, label %bb.j, label %bb.k

end_hunk_13
begin_hunk_14_@hpa_shard_maybe_do_deferred_work:bb.a
  br i1 %i.bb, label %bb.l, label %hpa_should_purge.exit.thread

bb.l:                                             ; preds = %hpa_should_purge.exit
  %i.bc = load i8, ptr %i.n, align 8, !tbaa !91, !range !54, !noundef !71
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !84
  %i.bh = call i64 %i.bg(ptr noundef nonnull %i.o) #8, !inline_history !92
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !87
  %.not.i = icmp ult i64 %i.bh, %i.bi
  br i1 %.not.i, label %hpa_should_purge.exit.thread, label %bb.n

end_hunk_14
begin_hunk_15_@hpa_shard_maybe_do_deferred_work:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 19 ; 3 uses
  store i8 0, ptr %i.bl, align 1, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 3 uses
  store i8 0, ptr %i.bm, align 4, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 17 ; 2 uses
  store i8 0, ptr %i.bn, align 1, !tbaa !93
  call void @duckdb_je_psset_update_end(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bj) #8
  %i.bo = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  %.val.i27 = load i8, ptr %i.bo, align 8, !tbaa !77, !range !54, !noundef !71
end_hunk_15
begin_hunk_16_@hpa_shard_maybe_do_deferred_work:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 176
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94
  %.val58.i = load ptr, ptr %i.bj, align 8, !tbaa !89
  call void %i.bw(ptr noundef %.val58.i, i64 noundef 2097152) #8, !inline_history !92
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
end_hunk_16
begin_hunk_17_@hpa_shard_maybe_do_deferred_work:bb.a
  %i.bz = add i64 %.061.i, 1                      ; 2 uses
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !95
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !16
  call void %i.cc(ptr noundef %i.cd, i64 noundef %i.by) #8, !inline_history !92
  %i.ce = call zeroext i1 @duckdb_je_hpdata_purge_next(ptr noundef nonnull %i.bj, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i

end_hunk_17
begin_hunk_18_@hpa_shard_maybe_do_deferred_work:bb.a
  %i.cm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bq, i64 0
  %i.cn = sub <2 x i64> %i.cl, %i.cm
  store <2 x i64> %i.cn, ptr %i.i, align 8, !tbaa !42
  %i.co = load i64, ptr %i.v, align 8, !tbaa !96
  %i.cp = add i64 %i.co, %.0.lcssa.i
  store i64 %i.cp, ptr %i.v, align 8, !tbaa !96
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78
  call void %i.cs(ptr noundef nonnull %i.o, i1 noundef zeroext false) #8, !inline_history !92
  br i1 %i.bp, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.ct = load i64, ptr %i.w, align 8, !tbaa !97
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.w, align 8, !tbaa !97
  call void @duckdb_je_psset_update_begin(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bj) #8
  call void @duckdb_je_hpdata_dehugify(ptr noundef nonnull %i.bj) #8
  br label %hpdata_changing_state_get.exit.i.i
end_hunk_18
begin_hunk_19_@hpa_shard_maybe_do_deferred_work:bb.a
hpdata_changing_state_get.exit.i.i:               ; preds = %.critedge.i, %bb.u
  call void @duckdb_je_hpdata_purge_end(ptr noundef nonnull %i.bj, ptr noundef nonnull %6) #8
  store i8 0, ptr %i.bk, align 1, !tbaa !68
  store i8 1, ptr %i.bn, align 1, !tbaa !93
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bj, i64 34
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !72, !range !54, !noundef !71
  %i.cx = trunc nuw i8 %i.cw to i1
end_hunk_19
begin_hunk_20_@hpa_shard_maybe_do_deferred_work:bb.a
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !78
  call void %i.dg(ptr noundef nonnull %5, i1 noundef zeroext true) #8, !inline_history !98
  %i.dh = load i64, ptr %5, align 8
  store i8 1, ptr %i.bm, align 4, !tbaa !80
  %i.di = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
end_hunk_20
begin_hunk_21_@hpa_shard_maybe_do_deferred_work:bb.a
  br i1 %i.dj, label %.sink.split.i.i, label %bb.z

.sink.split.i.i:                                  ; preds = %bb.y, %hpdata_changing_state_get.exit.thread.i.i
  store i8 0, ptr %i.bm, align 4, !tbaa !80
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i.i, %bb.y
end_hunk_21
begin_hunk_22_@hpa_shard_maybe_do_deferred_work:bb.a
  br i1 %i.dm, label %hpa_hugify_blocked_by_ndirty.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %hpa_should_purge.exit.thread
  %.val.i.i29 = load i64, ptr %i.h, align 8, !tbaa !81
  %.val11.i.i30 = load i64, ptr %i.i, align 8, !tbaa !44
  %i.dn = getelementptr i8, ptr %i.dl, i64 176
  %.val12.i.i31 = load i64, ptr %i.dn, align 8, !tbaa !75
  %.neg54 = add i64 %.val.i.i29, 512
  %i.do = add i64 %.val11.i.i30, %.val12.i.i31
  %i.dp = sub i64 %.neg54, %i.do
  %i.dq = load i32, ptr %i.j, align 8, !tbaa !82  ; 3 uses
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %hpa_hugify_blocked_by_ndirty.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i33 = load i64, ptr %i.k, align 8, !tbaa !83 ; 3 uses
  %i.ds = icmp ult i64 %.val.i.i.i33, 281474976710656
  br i1 %i.ds, label %bb.ac, label %bb.ad

end_hunk_22
begin_hunk_23_@hpa_shard_maybe_do_deferred_work:bb.a
  store i64 %.val.i35, ptr %4, align 8
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !84
  %i.eg = call i64 %i.ef(ptr noundef nonnull %4) #8, !inline_history !99
  %i.eh = load i64, ptr %i.y, align 8, !tbaa !85
  %.not = icmp ult i64 %i.eg, %i.eh
  br i1 %.not, label %hpa_try_hugify.exit, label %bb.af

end_hunk_23
begin_hunk_24_@hpa_shard_maybe_do_deferred_work:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 19 ; 3 uses
  store i8 0, ptr %i.ej, align 1, !tbaa !73
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 20 ; 3 uses
  store i8 0, ptr %i.ek, align 4, !tbaa !80
  call void @duckdb_je_psset_update_end(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ea) #8
  store atomic i8 0, ptr %i.q monotonic, align 1
  %i.el = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #8 ; 0 uses
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 168
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !100
  %.val34.i = load ptr, ptr %i.ea, align 8, !tbaa !89
  call void %i.eo(ptr noundef %.val34.i, i64 noundef 2097152) #8, !inline_history !99
  %i.ep = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.r) #8
  %.not.i.i37 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i37, label %bb.ah, label %bb.ag
end_hunk_24
begin_hunk_25_@hpa_shard_maybe_do_deferred_work:bb.a
  br label %malloc_mutex_lock.exit.i39

malloc_mutex_lock.exit.i39:                       ; preds = %bb.ai, %bb.ah
  %i.ev = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.z, align 8, !tbaa !101
  call void @duckdb_je_psset_update_begin(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ea) #8
  call void @duckdb_je_hpdata_hugify(ptr noundef nonnull %i.ea) #8
  store i8 0, ptr %i.ei, align 2, !tbaa !72
end_hunk_25
begin_hunk_26_@hpa_shard_maybe_do_deferred_work:bb.a
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 184
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !78
  call void %i.fj(ptr noundef nonnull %3, i1 noundef zeroext true) #8, !inline_history !102
  %i.fk = load i64, ptr %3, align 8
  store i8 1, ptr %i.ek, align 4, !tbaa !80
  store i64 %i.fk, ptr %i.ec, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.val15.pre.i.i44 = load i64, ptr %i.fa, align 8, !tbaa !74
end_hunk_26
begin_hunk_27_@hpa_shard_maybe_do_deferred_work:bb.a
  br i1 %i.fl, label %.sink.split.i.i47, label %bb.am

.sink.split.i.i47:                                ; preds = %bb.al, %hpdata_changing_state_get.exit.thread.i.i48
  store i8 0, ptr %i.ek, align 4, !tbaa !80
  br label %bb.am

hpa_try_hugify.exit:                              ; preds = %bb.ae
end_hunk_27
begin_hunk_28_@hpa_try_alloc_batch_no_grow:bb.a
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = call ptr @duckdb_je_hpdata_reserve_alloc(ptr noundef nonnull %i.v, i64 noundef %2) #8
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !39
  %i.ae = getelementptr i8, ptr %i.v, i64 8
  %.val47.i = load i64, ptr %i.ae, align 8, !tbaa !103
  %i.af = load i64, ptr %i.t, align 8, !tbaa !66
  %i.ag = and i64 %i.af, -17592454479872
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
end_hunk_28
begin_hunk_29_@hpa_try_alloc_batch_no_grow:bb.a
  %i.al = or i64 %i.ak, %2
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %.val47.i, ptr %i.am, align 8, !tbaa !104
  %i.an = and i32 %i.ad, -268431361
  %i.ao = or disjoint i32 %i.an, 243294208
  %i.ap = zext i32 %i.ao to i64
end_hunk_29
begin_hunk_30_@hpa_try_alloc_batch_no_grow:bb.a
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 184
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78
  call void %i.bn(ptr noundef nonnull %7, i1 noundef zeroext true) #8, !inline_history !105
  %i.bo = load i64, ptr %7, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i8 1, ptr %i.bp, align 4, !tbaa !80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
end_hunk_30
begin_hunk_31_@hpa_try_alloc_batch_no_grow:bb.a

.sink.split.i.i:                                  ; preds = %bb.q, %hpdata_changing_state_get.exit.thread.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i8 0, ptr %i.bs, align 4, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %bb.q
end_hunk_31
begin_hunk_32_@hpa_try_alloc_batch_no_grow:bb.a

bb.u:                                             ; preds = %.loopexit
  %i.co = getelementptr i8, ptr %1, i64 1368      ; 2 uses
  %.val.i.i24 = load i64, ptr %i.co, align 8, !tbaa !81
  %i.cp = getelementptr i8, ptr %1, i64 5672      ; 2 uses
  %.val9.i.i = load i64, ptr %i.cp, align 8, !tbaa !44
  %i.cq = sub i64 %.val.i.i24, %.val9.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 5640 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !82 ; 3 uses
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %hpa_ndirty_max.exit.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %1, i64 1360
  %.val.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !83 ; 3 uses
  %i.cv = icmp ult i64 %.val.i.i.i, 281474976710656
  br i1 %i.cv, label %bb.w, label %bb.x

end_hunk_32
begin_hunk_33_@hpa_try_alloc_batch_no_grow:bb.a
  br i1 %i.de, label %hpa_shard_has_deferred_work.exit, label %bb.y

bb.y:                                             ; preds = %hpa_ndirty_max.exit.thread.i.i
  %.val.i10.i.i = load i64, ptr %i.co, align 8, !tbaa !81
  %.val11.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !44
  %i.df = getelementptr i8, ptr %i.dd, i64 176
  %.val12.i.i.i = load i64, ptr %i.df, align 8, !tbaa !75
  %.neg = add i64 %.val.i10.i.i, 512
  %i.dg = add i64 %.val11.i.i.i, %.val12.i.i.i
  %i.dh = sub i64 %.neg, %i.dg
  %i.di = load i32, ptr %i.cr, align 8, !tbaa !82 ; 3 uses
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %hpa_ndirty_max.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %1, i64 1360
  %.val.i.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !83 ; 3 uses
  %i.dl = icmp ult i64 %.val.i.i.i.i, 281474976710656
  br i1 %i.dl, label %bb.aa, label %bb.ab

end_hunk_33
begin_hunk_34_@llvm.umin.i64
!76 = !{!18, !11, i64 5632}
!77 = !{!69, !26, i64 16}
!78 = !{!8, !10, i64 184}
!79 = distinct !{null, null}
!80 = !{!69, !26, i64 20}
!81 = !{!27, !11, i64 1048}
!82 = !{!18, !4, i64 5640}
!83 = !{!27, !11, i64 1040}
!84 = !{!8, !10, i64 192}
!85 = !{!18, !11, i64 5648}
!86 = !{!18, !11, i64 5680}
!87 = !{!18, !11, i64 5656}
!88 = !{!8, !10, i64 152}
!89 = !{!69, !10, i64 0}
!90 = !{!18, !26, i64 5644}
!91 = !{!18, !26, i64 5664}
!92 = distinct !{null}
!93 = !{!69, !26, i64 17}
!94 = !{!8, !10, i64 176}
!95 = !{!8, !10, i64 160}
!96 = !{!18, !11, i64 5688}
!97 = !{!18, !11, i64 5704}
!98 = distinct !{null, null}
!99 = distinct !{null}
!100 = !{!8, !10, i64 168}
!101 = !{!18, !11, i64 5696}
!102 = distinct !{null, null}
!103 = !{!69, !11, i64 8}
!104 = !{!65, !11, i64 32}
!105 = distinct !{null, null}
end_hunk_34
