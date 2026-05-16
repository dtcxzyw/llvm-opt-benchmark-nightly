inline.NumInlined: 41
inline.NumDeleted: 17
begin_hunk_0_@je_pa_shard_basic_stats_merge:bb.a
  store i64 %i.d, ptr %1, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.e) #4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9848
  %i.h = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.g) #4
  %i.i = add i64 %i.h, %i.f
  %i.j = load i64, ptr %2, align 8, !tbaa !56
  %i.k = add i64 %i.i, %i.j
  store i64 %i.k, ptr %2, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 19632
  %i.m = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.l) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29288
  %i.o = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.n) #4
  %i.p = add i64 %i.o, %i.m
  %i.q = load i64, ptr %3, align 8, !tbaa !56
  %i.r = add i64 %i.p, %i.q
  store i64 %i.r, ptr %3, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_stats_merge(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 39072 ; 3 uses
  %i.b = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.a) #4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48728 ; 3 uses
  %i.d = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.c) #4
  %i.e = add i64 %i.d, %i.b
  %i.f = shl i64 %i.e, 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57
  %i.j = add i64 %i.f, %i.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68112
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = load i64, ptr %2, align 8, !tbaa !62
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %2, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.r = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.q) #4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9848 ; 3 uses
  %i.t = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.s) #4
  %i.u = add i64 %i.r, %i.p
  %i.v = add i64 %i.u, %i.t
  %i.w = shl i64 %i.v, 12
  %i.x = load i64, ptr %6, align 8, !tbaa !56
  %i.y = add i64 %i.w, %i.x
  store i64 %i.y, ptr %6, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 62248 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ac = load atomic i64, ptr %i.g monotonic, align 8
  %i.ad = add i64 %i.ac, %i.ab
  store atomic i64 %i.ad, ptr %i.g monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  %i.ai = load atomic i64, ptr %i.ae monotonic, align 8
  %i.aj = add i64 %i.ai, %i.ah
  store atomic i64 %i.aj, ptr %i.ae monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = load atomic i64, ptr %i.ak monotonic, align 8
  %i.ap = add i64 %i.ao, %i.an
  store atomic i64 %i.ap, ptr %i.ak monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load atomic i64, ptr %i.as monotonic, align 8
  %i.au = load atomic i64, ptr %i.aq monotonic, align 8
  %i.av = add i64 %i.au, %i.at
  store atomic i64 %i.av, ptr %i.aq monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load atomic i64, ptr %i.ay monotonic, align 8
  %i.ba = load atomic i64, ptr %i.aw monotonic, align 8
  %i.bb = add i64 %i.ba, %i.az
  store atomic i64 %i.bb, ptr %i.aw monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load atomic i64, ptr %i.be monotonic, align 8
  %i.bg = load atomic i64, ptr %i.bc monotonic, align 8
  %i.bh = add i64 %i.bg, %i.bf
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load atomic i64, ptr %i.bk monotonic, align 8
  %i.bm = load atomic i64, ptr %i.bi monotonic, align 8
  %i.bn = add i64 %i.bm, %i.bl
  store atomic i64 %i.bn, ptr %i.bi monotonic, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 19632 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 29288 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11, !range !54, !noundef !55
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32    ; 12 uses
  %i.bu = tail call i64 @je_eset_nextents_get(ptr noundef nonnull %i.q, i32 noundef %i.bt) #4
  %i.bv = tail call i64 @je_eset_nextents_get(ptr noundef nonnull %i.s, i32 noundef %i.bt) #4
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = tail call i64 @je_eset_nextents_get(ptr noundef nonnull %i.bo, i32 noundef %i.bt) #4
  %i.by = tail call i64 @je_eset_nextents_get(ptr noundef nonnull %i.bp, i32 noundef %i.bt) #4
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = tail call i64 @je_eset_nextents_get(ptr noundef nonnull %i.a, i32 noundef %i.bt) #4
  %i.cb = tail call i64 @je_eset_nextents_get(ptr noundef nonnull %i.c, i32 noundef %i.bt) #4
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = tail call i64 @je_eset_nbytes_get(ptr noundef nonnull %i.q, i32 noundef %i.bt) #4
  %i.ce = tail call i64 @je_eset_nbytes_get(ptr noundef nonnull %i.s, i32 noundef %i.bt) #4
  %i.cf = add i64 %i.ce, %i.cd
  %i.cg = tail call i64 @je_eset_nbytes_get(ptr noundef nonnull %i.bo, i32 noundef %i.bt) #4
  %i.ch = tail call i64 @je_eset_nbytes_get(ptr noundef nonnull %i.bp, i32 noundef %i.bt) #4
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = tail call i64 @je_eset_nbytes_get(ptr noundef nonnull %i.a, i32 noundef %i.bt) #4
  %i.ck = tail call i64 @je_eset_nbytes_get(ptr noundef nonnull %i.c, i32 noundef %i.bt) #4
  %i.cl = add i64 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %indvars.iv ; 6 uses
  store i64 %i.bw, ptr %i.cm, align 8, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.bz, ptr %i.cn, align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 %i.cc, ptr %i.co, align 8, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cf, ptr %i.cp, align 8, !tbaa !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 %i.ci, ptr %i.cq, align 8, !tbaa !69
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store i64 %i.cl, ptr %i.cr, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 199
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 62384
  tail call void @je_hpa_shard_stats_merge(ptr noundef %0, ptr noundef nonnull %i.cs, ptr noundef %4) #4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 62264
  tail call void @je_sec_stats_merge(ptr noundef %0, ptr noundef nonnull %i.ct, ptr noundef %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

declare void @je_hpa_shard_stats_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @je_sec_stats_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_mtx_stats_read(ptr noundef %0, ptr noundef %1, ptr noundef initializes((64, 128)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 68184 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68224
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68176 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !73
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i.i, label %pa_shard_mtx_stats_read_single.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68160 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !78
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit

pa_shard_mtx_stats_read_single.exit:              ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false), !tbaa.struct !79
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 100
  store atomic i32 0, ptr %i.n monotonic, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68224
  store atomic i8 0, ptr %i.o monotonic, align 1
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.s = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.r) #4
  %.not.i.i28 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pa_shard_mtx_stats_read_single.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.q) #4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic i8 1, ptr %i.t monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %pa_shard_mtx_stats_read_single.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77
  %.not.i.i.i29 = icmp eq ptr %i.y, %0
  br i1 %.not.i.i.i29, label %pa_shard_mtx_stats_read_single.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.x, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !78
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit30

pa_shard_mtx_stats_read_single.exit30:            ; preds = %bb.f, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.q, i64 64, i1 false), !tbaa.struct !79
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 164
  store atomic i32 0, ptr %i.ad monotonic, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic i8 0, ptr %i.ae monotonic, align 1
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 19520 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19584 ; 2 uses
  %i.ai = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ah) #4
  %.not.i.i31 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %pa_shard_mtx_stats_read_single.exit30
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ag) #4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 19624
  store atomic i8 1, ptr %i.aj monotonic, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %pa_shard_mtx_stats_read_single.exit30
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 19576 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !73
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 19568 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !77
  %.not.i.i.i32 = icmp eq ptr %i.ao, %0
  br i1 %.not.i.i.i32, label %pa_shard_mtx_stats_read_single.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.an, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 19560 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !78
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit33

pa_shard_mtx_stats_read_single.exit33:            ; preds = %bb.i, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ag, i64 64, i1 false), !tbaa.struct !79
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 228
  store atomic i32 0, ptr %i.at monotonic, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 19624
  store atomic i8 0, ptr %i.au monotonic, align 1
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #4 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 38960 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 39024 ; 2 uses
  %i.ay = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ax) #4
  %.not.i.i34 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pa_shard_mtx_stats_read_single.exit33
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.aw) #4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 39064
  store atomic i8 1, ptr %i.az monotonic, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %pa_shard_mtx_stats_read_single.exit33
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 39016 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !73
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 39008 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !77
  %.not.i.i.i35 = icmp eq ptr %i.be, %0
  br i1 %.not.i.i.i35, label %pa_shard_mtx_stats_read_single.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %0, ptr %i.bd, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 39000 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !78
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit36

pa_shard_mtx_stats_read_single.exit36:            ; preds = %bb.l, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.aw, i64 64, i1 false), !tbaa.struct !79
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 292
  store atomic i32 0, ptr %i.bj monotonic, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 39064
  store atomic i8 0, ptr %i.bk monotonic, align 1
  %i.bl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ax) #4 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 58672 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 58736 ; 2 uses
  %i.bo = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bn) #4
  %.not.i.i37 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %pa_shard_mtx_stats_read_single.exit36
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bm) #4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 58776
  store atomic i8 1, ptr %i.bp monotonic, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %pa_shard_mtx_stats_read_single.exit36
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 58728 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !73
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 58720 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77
  %.not.i.i.i38 = icmp eq ptr %i.bu, %0
  br i1 %.not.i.i.i38, label %pa_shard_mtx_stats_read_single.exit39, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.bt, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 58712 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !78
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit39

pa_shard_mtx_stats_read_single.exit39:            ; preds = %bb.o, %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bm, i64 64, i1 false), !tbaa.struct !79
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 356
  store atomic i32 0, ptr %i.bz monotonic, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 58776
  store atomic i8 0, ptr %i.ca monotonic, align 1
  %i.cb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bn) #4 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 60456 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 60520 ; 2 uses
  %i.ce = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cd) #4
  %.not.i.i40 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %pa_shard_mtx_stats_read_single.exit39
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.cc) #4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 60560
  store atomic i8 1, ptr %i.cf monotonic, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %pa_shard_mtx_stats_read_single.exit39
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 60512 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !73
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !73
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 60504 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !77
  %.not.i.i.i41 = icmp eq ptr %i.ck, %0
  br i1 %.not.i.i.i41, label %pa_shard_mtx_stats_read_single.exit42, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %0, ptr %i.cj, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 60496 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !78
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit42

pa_shard_mtx_stats_read_single.exit42:            ; preds = %bb.r, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.cc, i64 64, i1 false), !tbaa.struct !79
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 420
  store atomic i32 0, ptr %i.cp monotonic, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 60560
  store atomic i8 0, ptr %i.cq monotonic, align 1
  %i.cr = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cd) #4 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11, !range !54, !noundef !55
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %pa_shard_mtx_stats_read_single.exit42
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 62448 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 62512 ; 2 uses
  %i.cx = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cw) #4
  %.not.i.i43 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.cv) #4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 62552
  store atomic i8 1, ptr %i.cy monotonic, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 62504 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !73
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !73
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 62496 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !77
  %.not.i.i.i44 = icmp eq ptr %i.dd, %0
  br i1 %.not.i.i.i44, label %pa_shard_mtx_stats_read_single.exit45, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %0, ptr %i.dc, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 62488 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !78
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit45

pa_shard_mtx_stats_read_single.exit45:            ; preds = %bb.v, %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.cv, i64 64, i1 false), !tbaa.struct !79
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 612
  store atomic i32 0, ptr %i.di monotonic, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 62552
  store atomic i8 0, ptr %i.dj monotonic, align 1
  %i.dk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cw) #4 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 62560 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 62624 ; 2 uses
  %i.dn = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dm) #4
  %.not.i.i46 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i46, label %bb.y, label %bb.x

bb.x:                                             ; preds = %pa_shard_mtx_stats_read_single.exit45
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.dl) #4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 62664
  store atomic i8 1, ptr %i.do monotonic, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %pa_shard_mtx_stats_read_single.exit45
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 62616 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !73
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 62608 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !77
  %.not.i.i.i47 = icmp eq ptr %i.dt, %0
  br i1 %.not.i.i.i47, label %pa_shard_mtx_stats_read_single.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %0, ptr %i.ds, align 8, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 62600 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !78
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !78
  br label %pa_shard_mtx_stats_read_single.exit48

pa_shard_mtx_stats_read_single.exit48:            ; preds = %bb.y, %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.dl, i64 64, i1 false), !tbaa.struct !79
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 676
  store atomic i32 0, ptr %i.dy monotonic, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 62664
  store atomic i8 0, ptr %i.dz monotonic, align 1
  %i.ea = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dm) #4 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 62264
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 704
  tail call void @je_sec_mutex_stats_read(ptr noundef %0, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ec) #4
  br label %bb.aa

bb.aa:                                            ; preds = %pa_shard_mtx_stats_read_single.exit48, %pa_shard_mtx_stats_read_single.exit42
  ret void
}

declare void @je_sec_mutex_stats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @je_eset_npages_get(ptr noundef) local_unnamed_addr #1

declare i64 @je_eset_nextents_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @je_eset_nbytes_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !18, i64 17}
!12 = !{!"pa_shard_s", !13, i64 0, !15, i64 8, !17, i64 16, !18, i64 17, !19, i64 24, !35, i64 62264, !39, i64 62384, !50, i64 68096, !8, i64 68240, !33, i64 68248, !53, i64 68256, !28, i64 68264, !27, i64 68272}
!13 = !{!"p1 _ZTS12pa_central_s", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"", !16, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"", !18, i64 0}
!18 = !{!"_Bool", !9, i64 0}
!19 = !{!"pac_s", !20, i64 0, !21, i64 56, !21, i64 19496, !21, i64 38936, !27, i64 58376, !28, i64 58384, !29, i64 58392, !30, i64 58400, !22, i64 58408, !31, i64 58520, !15, i64 58640, !32, i64 58648, !32, i64 60432, !33, i64 62216, !34, i64 62224, !15, i64 62232}
!20 = !{!"pai_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!21 = !{!"ecache_s", !22, i64 0, !23, i64 112, !23, i64 9768, !8, i64 19424, !8, i64 19428, !18, i64 19432}
!22 = !{!"malloc_mutex_s", !9, i64 0}
!23 = !{!"eset_s", !9, i64 0, !9, i64 32, !9, i64 6432, !24, i64 9632, !15, i64 9640, !8, i64 9648}
!24 = !{!"", !25, i64 0}
!25 = !{!"", !26, i64 0}
!26 = !{!"p1 _ZTS7edata_s", !14, i64 0}
!27 = !{!"p1 _ZTS6base_s", !14, i64 0}
!28 = !{!"p1 _ZTS6emap_s", !14, i64 0}
!29 = !{!"p1 _ZTS13edata_cache_s", !14, i64 0}
!30 = !{!"exp_grow_s", !8, i64 0, !8, i64 4}
!31 = !{!"san_bump_alloc_s", !22, i64 0, !26, i64 112}
!32 = !{!"decay_s", !22, i64 0, !18, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !16, i64 144, !15, i64 152, !16, i64 160, !16, i64 168, !9, i64 176, !16, i64 1776}
!33 = !{!"p1 _ZTS14malloc_mutex_s", !14, i64 0}
!34 = !{!"p1 _ZTS11pac_stats_s", !14, i64 0}
!35 = !{!"sec_s", !20, i64 0, !36, i64 56, !37, i64 64, !38, i64 104, !8, i64 112}
!36 = !{!"p1 _ZTS5pai_s", !14, i64 0}
!37 = !{!"sec_opts_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!38 = !{!"p1 _ZTS11sec_shard_s", !14, i64 0}
!39 = !{!"hpa_shard_s", !20, i64 0, !40, i64 56, !22, i64 64, !22, i64 176, !27, i64 288, !41, i64 296, !42, i64 320, !16, i64 5600, !8, i64 5608, !28, i64 5616, !48, i64 5624, !16, i64 5664, !49, i64 5672, !15, i64 5704}
!40 = !{!"p1 _ZTS13hpa_central_s", !14, i64 0}
!41 = !{!"edata_cache_fast_s", !24, i64 0, !29, i64 8, !18, i64 16}
!42 = !{!"psset_s", !9, i64 0, !9, i64 1024, !43, i64 1032, !44, i64 1056, !45, i64 4224, !9, i64 4232, !9, i64 5256, !45, i64 5272}
!43 = !{!"psset_bin_stats_s", !16, i64 0, !16, i64 8, !16, i64 16}
!44 = !{!"psset_stats_s", !9, i64 0, !9, i64 3072, !9, i64 3120}
!45 = !{!"", !46, i64 0}
!46 = !{!"", !47, i64 0}
!47 = !{!"p1 _ZTS8hpdata_s", !14, i64 0}
!48 = !{!"hpa_shard_opts_s", !16, i64 0, !16, i64 8, !8, i64 16, !18, i64 20, !16, i64 24, !16, i64 32}
!49 = !{!"hpa_shard_nonderived_stats_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!50 = !{!"edata_cache_s", !51, i64 0, !15, i64 16, !22, i64 24, !27, i64 136}
!51 = !{!"", !52, i64 0}
!52 = !{!"ph_s", !14, i64 0, !16, i64 8}
!53 = !{!"p1 _ZTS16pa_shard_stats_s", !14, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!16, !16, i64 0}
!57 = !{!58, !16, i64 56}
!58 = !{!"pa_shard_stats_s", !16, i64 0, !59, i64 8}
!59 = !{!"pac_stats_s", !60, i64 0, !60, i64 24, !16, i64 48, !15, i64 56, !15, i64 64}
!60 = !{!"pac_decay_stats_s", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"locked_u64_s", !15, i64 0}
!62 = !{!58, !16, i64 0}
!63 = !{!12, !34, i64 62248}
!64 = !{!65, !16, i64 0}
!65 = !{!"pac_estats_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!66 = !{!65, !16, i64 16}
!67 = !{!65, !16, i64 32}
!68 = !{!65, !16, i64 8}
!69 = !{!65, !16, i64 24}
!70 = !{!65, !16, i64 40}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!74, !16, i64 56}
!74 = !{!"", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !75, i64 36, !16, i64 40, !76, i64 48, !16, i64 56}
!75 = !{!"", !8, i64 0}
!76 = !{!"p1 _ZTS6tsdn_s", !14, i64 0}
!77 = !{!74, !76, i64 48}
!78 = !{!74, !16, i64 40}
!79 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56, i64 24, i64 8, !56, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 8, !56, i64 48, i64 8, !80, i64 56, i64 8, !56}
!80 = !{!76, !76, i64 0}
end_hunk_0
