Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/sec?download=true
inline.NumInlined: 89
inline.NumDeleted: 35
begin_hunk_0_@je_sec_init:bb.a
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.w, %i.ac
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !23

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.ad = phi i64 [ %i.ac, %bb.e ], [ 0, %bb.d ]
  %.027 = phi i32 [ %i.ab, %bb.e ], [ 0, %bb.d ]
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [168 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  %i.ah = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 0) #9
  br i1 %i.ah, label %.loopexit, label %bb.e

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.0.i, ptr %i.ai, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %sz_psz2ind.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %sz_psz2ind.exit ], [ false, %.critedge ], [ true, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_sec_alloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %sec_size_supported.exit.thread, label %sec_size_supported.exit

sec_size_supported.exit:                          ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %sec_size_supported.exit.thread, label %bb.b

bb.b:                                             ; preds = %sec_size_supported.exit
  %i.c = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.c, label %sz_psz2ind.exit, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.g) ; 2 uses
  %i.i = icmp samesign ult i64 %2, 16385
  %i.j = add nuw nsw i32 %i.h, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = select i1 %i.i, i64 12, i64 %i.k
  %i.m = lshr i64 %i.e, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, 2
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = zext nneg i32 %i.q to i64
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.r, %bb.c ], [ 199, %bb.b ] ; 3 uses
  %i.s = icmp eq i64 %.val.i, 1
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %sz_psz2ind.exit
  %i.t = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw [168 x i8], ptr %.val, i64 %.0.i ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.w = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.v) #9
  %.not.i22 = icmp eq i32 %i.w, 0
  br i1 %.not.i22, label %malloc_mutex_trylock_final.exit.i, label %bb.e

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store atomic i8 1, ptr %i.x monotonic, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.u) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_trylock_final.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.ac, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.ab, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !34
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 3 uses
  %.val.i23 = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 7 uses
  %.not.i24 = icmp eq ptr %.val.i23, null
  br i1 %.not.i24, label %bb.j, label %bb.h

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i23, i64 40 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !35
  %i.aj = icmp eq ptr %i.ai, %.val.i23
  br i1 %i.aj, label %bb.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i23, i64 48 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !39
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39
  store ptr %i.at, ptr %i.am, align 8, !tbaa !39
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !39
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %.val.i23, ptr %i.az, align 8, !tbaa !39
  br label %sec_bin_alloc_locked.exit

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ag, align 8, !tbaa !35
  br label %sec_bin_alloc_locked.exit

sec_bin_alloc_locked.exit:                        ; preds = %.thread.i.i, %bb.i
  %i.ba = getelementptr i8, ptr %.val.i23, i64 16
  %.val10.i = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bb = and i64 %.val10.i, -4096
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !40
  %i.be = sub i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %malloc_mutex_lock.exit, %sec_bin_alloc_locked.exit
  %.sink56 = phi i64 [ 136, %sec_bin_alloc_locked.exit ], [ 128, %malloc_mutex_lock.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink56 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store atomic i8 0, ptr %i.bi monotonic, align 8
  br label %sec_size_supported.exit.thread.sink.split

bb.k:                                             ; preds = %sz_psz2ind.exit
  %i.bj = icmp eq ptr %0, null
  br i1 %i.bj, label %.lr.ph.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39  ; 2 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %sec_shard_pick.exit.i, label %.lr.ph.i

sec_shard_pick.exit.i:                            ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.bp = mul i64 %i.bo, 6364136223846793005
  %i.bq = add i64 %i.bp, 1442695040888963407      ; 2 uses
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !13
  %i.br = lshr i64 %i.bq, 32
  %i.bs = load i64, ptr %1, align 8, !tbaa !26
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc i64 %i.bu to i8                   ; 3 uses
  store i8 %i.bv, ptr %i.bk, align 8, !tbaa !39
  %.pre = load i64, ptr %1, align 8, !tbaa !26
  %i.bw = icmp eq i64 %.pre, 0
  br i1 %i.bw, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.k, %sec_shard_pick.exit.i
  %.0.i.i47 = phi i8 [ %i.bv, %sec_shard_pick.exit.i ], [ %i.bl, %bb.l ], [ 0, %bb.k ]
  %i.bx = getelementptr i8, ptr %1, i64 32
  %i.by = getelementptr i8, ptr %1, i64 40
  br label %bb.m

bb.m:                                             ; preds = %malloc_mutex_trylock.exit.i, %.lr.ph.i
  %.03863.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dx, %malloc_mutex_trylock.exit.i ]
  %.03962.i = phi i8 [ %.0.i.i47, %.lr.ph.i ], [ %spec.store.select.i, %malloc_mutex_trylock.exit.i ] ; 2 uses
  %.val45.i = load ptr, ptr %i.bx, align 8, !tbaa !19
  %.val46.i = load i32, ptr %i.by, align 8, !tbaa !25
  %i.bz = zext i8 %.03962.i to i64
  %i.ca = zext i32 %.val46.i to i64
  %i.cb = mul nuw nsw i64 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw [168 x i8], ptr %.val45.i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [168 x i8], ptr %i.cc, i64 %.0.i ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72 ; 3 uses
  %i.cf = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ce) #9
  %.not.i25 = icmp eq i32 %i.cf, 0
  br i1 %.not.i25, label %bb.n, label %malloc_mutex_trylock.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 64 ; 3 uses
  store atomic i8 1, ptr %i.cg monotonic, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !28
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !33
  %.not.i.i.i = icmp eq ptr %i.cl, %0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %0, ptr %i.ck, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %.val.i.i = load ptr, ptr %i.cp, align 8, !tbaa !35 ; 7 uses
  %.not.i.i27 = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i27, label %sec_bin_alloc_locked.exit.thread.i, label %bb.q

sec_bin_alloc_locked.exit.thread.i:               ; preds = %bb.p
  store atomic i8 0, ptr %i.cg monotonic, align 8
  %i.cq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ce) #9 ; 0 uses
  br label %malloc_mutex_trylock.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !35
  %i.cu = icmp eq ptr %i.ct, %.val.i.i
  br i1 %i.cu, label %bb.r, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !39
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !39 ; 2 uses
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !39
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store ptr %i.df, ptr %i.di, align 8, !tbaa !39
  %i.dj = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %.val.i.i, ptr %i.dk, align 8, !tbaa !39
  br label %.thread.i

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.cr, align 8, !tbaa !35
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %.thread.i.i.i
  %i.dl = getelementptr i8, ptr %.val.i.i, i64 16
  %.val10.i.i = load i64, ptr %i.dl, align 8, !tbaa !39
  %i.dm = and i64 %.val10.i.i, -4096
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 112 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !40
  %i.dp = sub i64 %i.do, %i.dm
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 136 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !44
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !44
  store atomic i8 0, ptr %i.cg monotonic, align 1
  br label %sec_size_supported.exit.thread.sink.split

malloc_mutex_trylock.exit.i:                      ; preds = %sec_bin_alloc_locked.exit.thread.i, %bb.m
  %i.dt = add i8 %.03962.i, 1                     ; 2 uses
  %i.du = zext i8 %i.dt to i64
  %i.dv = load i64, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.dw = icmp eq i64 %i.dv, %i.du
  %spec.store.select.i = select i1 %i.dw, i8 0, i8 %i.dt ; 2 uses
  %i.dx = add nuw i64 %.03863.i, 1                ; 2 uses
  %.not43.i = icmp ult i64 %i.dx, %i.dv
  br i1 %.not43.i, label %bb.m, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %malloc_mutex_trylock.exit.i, %sec_shard_pick.exit.i
  %.038.lcssa.i = phi i8 [ %i.bv, %sec_shard_pick.exit.i ], [ %spec.store.select.i, %malloc_mutex_trylock.exit.i ]
  %i.dy = getelementptr i8, ptr %1, i64 32
  %.val.i26 = load ptr, ptr %i.dy, align 8, !tbaa !19
  %i.dz = getelementptr i8, ptr %1, i64 40
  %.val44.i = load i32, ptr %i.dz, align 8, !tbaa !25
  %i.ea = zext i8 %.038.lcssa.i to i64
  %i.eb = zext i32 %.val44.i to i64
  %i.ec = mul nuw nsw i64 %i.eb, %i.ea
  %i.ed = getelementptr inbounds nuw [168 x i8], ptr %.val.i26, i64 %i.ec
  %i.ee = getelementptr inbounds nuw [168 x i8], ptr %i.ed, i64 %.0.i ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72 ; 2 uses
  %i.eg = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ef) #9
  %.not.i47.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i47.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.s

malloc_mutex_trylock_final.exit.i.i:              ; preds = %._crit_edge.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store atomic i8 1, ptr %i.eh monotonic, align 1
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ee) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %malloc_mutex_trylock_final.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 48 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !33
  %.not.i.i48.i = icmp eq ptr %i.em, %0
  br i1 %.not.i.i48.i, label %malloc_mutex_lock.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %0, ptr %i.el, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !34
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.u, %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 120 ; 3 uses
  %.val.i49.i = load ptr, ptr %i.eq, align 8, !tbaa !35 ; 7 uses
  %.not.i50.i = icmp eq ptr %.val.i49.i, null
  br i1 %.not.i50.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i49.i, i64 40 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !39 ; 3 uses
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !35
  %i.et = icmp eq ptr %i.es, %.val.i49.i
  br i1 %i.et, label %bb.w, label %.thread.i.i51.i

.thread.i.i51.i:                                  ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !39
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i49.i, i64 48 ; 4 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr %i.ev, ptr %i.ey, align 8, !tbaa !39
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !39 ; 2 uses
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !39
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !39
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !39
  store ptr %i.fd, ptr %i.ew, align 8, !tbaa !39
  %i.fe = load ptr, ptr %i.er, align 8, !tbaa !39 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !39
  %i.fi = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store ptr %.val.i49.i, ptr %i.fj, align 8, !tbaa !39
  br label %sec_bin_alloc_locked.exit54.i

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.eq, align 8, !tbaa !35
  br label %sec_bin_alloc_locked.exit54.i

sec_bin_alloc_locked.exit54.i:                    ; preds = %bb.w, %.thread.i.i51.i
  %i.fk = getelementptr i8, ptr %.val.i49.i, i64 16
  %.val10.i53.i = load i64, ptr %i.fk, align 8, !tbaa !39
  %i.fl = and i64 %.val10.i53.i, -4096
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ee, i64 112 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !40
  %i.fo = sub i64 %i.fn, %i.fl
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !40
  br label %bb.x

bb.x:                                             ; preds = %sec_bin_alloc_locked.exit54.i, %malloc_mutex_lock.exit.i
  %.sink79.i = phi i64 [ 136, %sec_bin_alloc_locked.exit54.i ], [ 128, %malloc_mutex_lock.exit.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sink79.i ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !13
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store atomic i8 0, ptr %i.fs monotonic, align 8
  br label %sec_size_supported.exit.thread.sink.split

sec_size_supported.exit.thread.sink.split:        ; preds = %bb.x, %.thread.i, %bb.j
  %.sink = phi ptr [ %i.v, %bb.j ], [ %i.ce, %.thread.i ], [ %i.ef, %bb.x ]
  %.1.ph = phi ptr [ %.val.i23, %bb.j ], [ %.val.i.i, %.thread.i ], [ %.val.i49.i, %bb.x ]
  %i.ft = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink) #9 ; 0 uses
  br label %sec_size_supported.exit.thread

sec_size_supported.exit.thread:                   ; preds = %sec_size_supported.exit.thread.sink.split, %bb.a, %sec_size_supported.exit
  %.1 = phi ptr [ null, %sec_size_supported.exit ], [ null, %bb.a ], [ %.1.ph, %sec_size_supported.exit.thread.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @je_sec_dalloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !26    ; 2 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val24 = load ptr, ptr %2, align 8, !tbaa !35
  %i.a = getelementptr i8, ptr %.val24, i64 16
  %.val25 = load i64, ptr %i.a, align 8, !tbaa !39
  %i.b = and i64 %.val25, -4096                   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.b, 8070450532247928832
  br i1 %i.f, label %sz_psz2ind.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = tail call range(i64 0, 53) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.j) ; 2 uses
  %i.l = icmp samesign ult i64 %i.b, 16385
  %i.m = add nuw nsw i32 %i.k, 11
  %i.n = zext nneg i32 %i.m to i64
  %i.o = select i1 %i.l, i64 12, i64 %i.n
  %i.p = lshr i64 %i.h, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.k, 2
  %i.t = or disjoint i32 %i.r, %i.s
  %i.u = zext nneg i32 %i.t to i64
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.u, %bb.d ], [ 199, %bb.c ] ; 3 uses
  %i.v = icmp eq i64 %.val, 1
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %sz_psz2ind.exit
  %i.w = getelementptr i8, ptr %1, i64 32
  %.val22 = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw [168 x i8], ptr %.val22, i64 %.0.i ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.y) #9
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.f

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 1, ptr %i.aa monotonic, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.x) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_trylock_final.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.af, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.g, %bb.h
end_hunk_0
begin_hunk_1_@je_sec_dalloc:bb.a
  %.050.i = phi i8 [ %.0.i.i39, %.lr.ph.i ], [ %spec.store.select.i, %bb.n ] ; 2 uses
  %.03449.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bu, %bb.n ]
  %.val38.i = load ptr, ptr %i.ay, align 8, !tbaa !19
  %.val39.i = load i32, ptr %i.az, align 8, !tbaa !25
  %i.ba = zext i8 %.050.i to i64
  %i.bb = zext i32 %.val39.i to i64
  %i.bc = mul nuw nsw i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [168 x i8], ptr %.val38.i, i64 %i.bc
  %i.be = getelementptr inbounds nuw [168 x i8], ptr %i.bd, i64 %.0.i ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.bg = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bf) #9
  %.not45.i = icmp eq i32 %i.bg, 0
  br i1 %.not45.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  store atomic i8 1, ptr %i.bh monotonic, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %.not.i.i.i = icmp eq ptr %i.bm, %0
  br i1 %.not.i.i.i, label %.thread43.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %0, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !34
  br label %.thread43.i

.thread43.i:                                      ; preds = %bb.m, %bb.l
  tail call fastcc void @sec_bin_dalloc_locked(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.be, i64 noundef range(i64 0, -4095) %i.b, ptr noundef nonnull %2)
  store atomic i8 0, ptr %i.bh monotonic, align 8
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.bq = add i8 %.050.i, 1                       ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = load i64, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.br
  %spec.store.select.i = select i1 %i.bt, i8 0, i8 %i.bq ; 2 uses
  %i.bu = add nuw i64 %.03449.i, 1                ; 2 uses
  %.not.i26 = icmp ult i64 %i.bu, %i.bs
  br i1 %.not.i26, label %bb.k, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.n, %sec_shard_pick.exit.i
  %.0.lcssa.i = phi i8 [ %i.aw, %sec_shard_pick.exit.i ], [ %spec.store.select.i, %bb.n ]
  %i.bv = getelementptr i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bw = getelementptr i8, ptr %1, i64 40
  %.val37.i = load i32, ptr %i.bw, align 8, !tbaa !25
  %i.bx = zext i8 %.0.lcssa.i to i64
  %i.by = zext i32 %.val37.i to i64
  %i.bz = mul nuw nsw i64 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw [168 x i8], ptr %.val.i, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [168 x i8], ptr %i.ca, i64 %.0.i ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72 ; 2 uses
  %i.cd = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cc) #9
  %.not.i.i27 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i27, label %malloc_mutex_trylock_final.exit.i.i, label %bb.o

malloc_mutex_trylock_final.exit.i.i:              ; preds = %._crit_edge.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store atomic i8 1, ptr %i.ce monotonic, align 1
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.cb) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %malloc_mutex_trylock_final.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 56 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !33
  %.not.i.i40.i = icmp eq ptr %i.cj, %0
  br i1 %.not.i.i40.i, label %malloc_mutex_lock.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %0, ptr %i.ci, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.q, %bb.p
  tail call fastcc void @sec_bin_dalloc_locked(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.cb, i64 noundef range(i64 0, -4095) %i.b, ptr noundef nonnull %2)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store atomic i8 0, ptr %i.cn monotonic, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %malloc_mutex_lock.exit.i, %.thread43.i, %malloc_mutex_lock.exit
  %.lcssa.sink.i.sink = phi ptr [ %i.y, %malloc_mutex_lock.exit ], [ %i.bf, %.thread43.i ], [ %i.cc, %malloc_mutex_lock.exit.i ]
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.lcssa.sink.i.sink) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sec_bin_dalloc_locked(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, -4095) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !tbaa !40
  %.val = load ptr, ptr %3, align 8, !tbaa !35    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !35
  %i.f = icmp eq ptr %i.e, %.val
  br i1 %i.f, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.h, ptr %i.k, align 8, !tbaa !39
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.l, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  store ptr %i.p, ptr %i.i, align 8, !tbaa !39
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !39
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %.val, ptr %i.v, align 8, !tbaa !39
  br label %edata_list_active_remove.exit

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !35
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.thread.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 7 uses
  store ptr %.val, ptr %i.d, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 4 uses
  store ptr %.val, ptr %i.x, align 8, !tbaa !39
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %edata_list_active_prepend.exit, label %bb.c

bb.c:                                             ; preds = %edata_list_active_remove.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !39
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %.val, ptr %i.ad, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !39
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !35  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !39
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %.val, ptr %i.am, align 8, !tbaa !39
  br label %edata_list_active_prepend.exit

edata_list_active_prepend.exit:                   ; preds = %edata_list_active_remove.exit, %bb.c
  store ptr %.val, ptr %i.w, align 8, !tbaa !35
  %i.an = load i64, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47 ; 3 uses
  %.not = icmp ugt i64 %i.an, %i.ap
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %edata_list_active_prepend.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !48
  br label %.critedge

bb.e:                                             ; preds = %edata_list_active_prepend.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !49
  %i.aw = lshr i64 %i.ap, 2
  %i.ax = sub nuw i64 %i.ap, %i.aw                ; 2 uses
  %i.ay = icmp ugt i64 %i.an, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %edata_list_active_append.exit
  %i.az = phi i64 [ %i.cu, %edata_list_active_append.exit ], [ %i.an, %bb.e ]
  %.val26 = load ptr, ptr %i.w, align 8, !tbaa !35 ; 5 uses
  %i.ba = icmp eq ptr %.val26, null
  br i1 %i.ba, label %.critedge, label %edata_list_active_last.exit

edata_list_active_last.exit:                      ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.val26, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 12 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %.val25 = load i64, ptr %i.bd, align 8, !tbaa !39
  %i.be = and i64 %.val25, -4096
  %i.bf = sub i64 %i.az, %i.be
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !40
  %i.bg = icmp eq ptr %.val26, %i.bc
  br i1 %i.bg, label %bb.f, label %.thread.i28

bb.f:                                             ; preds = %edata_list_active_last.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.val26, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39 ; 2 uses
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !35
  %i.bj = icmp eq ptr %i.bi, %.val26
  br i1 %i.bj, label %bb.g, label %.thread.i28

.thread.i28:                                      ; preds = %bb.f, %edata_list_active_last.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !39
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !39
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !39
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %i.bc, ptr %i.cb, align 8, !tbaa !39
  br label %edata_list_active_remove.exit29

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.w, align 8, !tbaa !35
  br label %edata_list_active_remove.exit29

edata_list_active_remove.exit29:                  ; preds = %.thread.i28, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  store ptr %i.bc, ptr %i.cc, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 4 uses
  store ptr %i.bc, ptr %i.cd, align 8, !tbaa !39
  %i.ce = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %edata_list_active_append.exit, label %bb.h

bb.h:                                             ; preds = %edata_list_active_remove.exit29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !39
  %i.ci = load ptr, ptr %3, align 8, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %i.bc, ptr %i.cj, align 8, !tbaa !39
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  store ptr %i.cm, ptr %i.cd, align 8, !tbaa !39
  %i.cn = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !39
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store ptr %i.bc, ptr %i.cs, align 8, !tbaa !39
  %.pre.i = load ptr, ptr %i.cc, align 8, !tbaa !39
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %edata_list_active_remove.exit29, %bb.h
  %i.ct = phi ptr [ %.pre.i, %bb.h ], [ %i.bc, %edata_list_active_remove.exit29 ]
  store ptr %i.ct, ptr %3, align 8, !tbaa !35
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %i.ax
  br i1 %i.cv, label %.lr.ph, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %edata_list_active_append.exit, %.lr.ph, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_sec_fill(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.a, label %sz_psz2ind.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %2, -1                       ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.e) ; 2 uses
  %i.g = icmp samesign ult i64 %2, 16385
  %i.h = add nuw nsw i32 %i.f, 11
  %i.i = zext nneg i32 %i.h to i64
  %i.j = select i1 %i.g, i64 12, i64 %i.i
  %i.k = lshr i64 %i.c, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 3
  %i.n = shl nuw nsw i32 %i.f, 2
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = zext nneg i32 %i.o to i64
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.p, %bb.b ], [ 199, %bb.a ]
  %i.q = icmp eq ptr %0, null
  br i1 %i.q, label %sec_shard_pick.exit, label %bb.c

bb.c:                                             ; preds = %sz_psz2ind.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !39    ; 2 uses
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %bb.d, label %sec_shard_pick.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = mul i64 %i.v, 6364136223846793005
  %i.x = add i64 %i.w, 1442695040888963407        ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !tbaa !13
  %i.y = lshr i64 %i.x, 32
  %i.z = load i64, ptr %1, align 8, !tbaa !26
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc i64 %i.ab to i8                   ; 2 uses
  store i8 %i.ac, ptr %i.r, align 8, !tbaa !39
  br label %sec_shard_pick.exit

sec_shard_pick.exit:                              ; preds = %sz_psz2ind.exit, %bb.c, %bb.d
  %.0.i36 = phi i8 [ 0, %sz_psz2ind.exit ], [ %i.ac, %bb.d ], [ %i.s, %bb.c ]
  %i.ad = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.ae = getelementptr i8, ptr %1, i64 40
  %.val34 = load i32, ptr %i.ae, align 8, !tbaa !25
  %i.af = zext i8 %.0.i36 to i64
  %i.ag = zext i32 %.val34 to i64
  %i.ah = mul nuw nsw i64 %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw [168 x i8], ptr %.val, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [168 x i8], ptr %i.ai, i64 %.0.i ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.al = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ak) #9
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.e

malloc_mutex_trylock_final.exit.i:                ; preds = %sec_shard_pick.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store atomic i8 1, ptr %i.am monotonic, align 1
  br label %bb.f

bb.e:                                             ; preds = %sec_shard_pick.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.aj) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_trylock_final.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.ar, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.aq, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !34
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.av = mul i64 %4, %2                          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 112 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !47 ; 2 uses
  %.not = icmp ugt i64 %i.ay, %i.ba
end_hunk_1
