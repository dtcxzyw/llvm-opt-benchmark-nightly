inline.NumInlined: 129
inline.NumDeleted: 61
begin_hunk_0_@base_block_alloc:bb.a
  br i1 %.not.i.i.i.i, label %tsd_fetch_impl.exit.i.i.i, label %bb.h, !prof !45

bb.h:                                             ; preds = %bb.g
  %i.au = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.ar, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i.i.i

tsd_fetch_impl.exit.i.i.i:                        ; preds = %bb.h, %bb.g, %bb.f
  %i.av = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.h ], [ %0, %bb.f ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 824
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !15
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !15
  br i1 %i.ay, label %bb.i, label %ehooks_pre_reentrancy.exit.i.i

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i.i.i
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %i.av) #10
  br label %ehooks_pre_reentrancy.exit.i.i

ehooks_pre_reentrancy.exit.i.i:                   ; preds = %bb.i, %tsd_fetch_impl.exit.i.i.i
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !46
  %.val.i.i = load i32, ptr %2, align 8, !tbaa !44
  %i.bd = call ptr %i.bc(ptr noundef nonnull %i.an, ptr noundef null, i64 noundef range(i64 0, -2097151) %i.ai, i64 noundef 2097152, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val.i.i) #10, !inline_history !48 ; 2 uses
  br i1 %i.aq, label %bb.j, label %tsd_fetch_impl.exit.i27.i.i

bb.j:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i
  %i.be = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 824
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !15
  %.not.i.i28.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i28.i.i, label %tsd_fetch_impl.exit.i27.i.i, label %bb.k, !prof !45

bb.k:                                             ; preds = %bb.j
  %i.bh = call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.be, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i27.i.i

tsd_fetch_impl.exit.i27.i.i:                      ; preds = %bb.k, %bb.j, %ehooks_pre_reentrancy.exit.i.i
  %i.bi = phi ptr [ %i.be, %bb.j ], [ %i.bh, %bb.k ], [ %0, %ehooks_pre_reentrancy.exit.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = add i8 %i.bk, -1                        ; 2 uses
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !15
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %base_map.exit

bb.l:                                             ; preds = %tsd_fetch_impl.exit.i27.i.i
  call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %i.bi) #10
  br label %base_map.exit

base_map.exit:                                    ; preds = %bb.c, %bb.e, %tsd_fetch_impl.exit.i27.i.i, %bb.l
  %.0.i55 = phi ptr [ %i.am, %bb.c ], [ %i.ap, %bb.e ], [ %i.bd, %tsd_fetch_impl.exit.i27.i.i ], [ %i.bd, %bb.l ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bn = icmp eq ptr %.0.i55, null
  br i1 %i.bn, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %base_map.exit
  %i.bo = load i32, ptr @duckdb_je_opt_metadata_thp, align 4, !tbaa !3 ; 3 uses
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = load i32, ptr @duckdb_je_init_system_thp_mode, align 4
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp eq i32 %i.bo, 2
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = call zeroext i1 @duckdb_je_pages_huge(ptr noundef nonnull %.0.i55, i64 noundef %i.ai) #10 ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.bv = icmp eq i32 %i.bo, 1
  %i.bw = icmp ne ptr %1, null
  %or.cond = and i1 %i.bw, %i.bv
  br i1 %or.cond, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.by = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bx) #10
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bz) #10
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 1, ptr %i.ca monotonic, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.cf, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %0, ptr %i.ce, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !41
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !41
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.s, %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !30, !range !49, !noundef !50
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %base_auto_thp_switch.exit.thread, label %bb.u

bb.u:                                             ; preds = %malloc_mutex_lock.exit
  %.val.i = load i32, ptr %1, align 8, !tbaa !44
  %.not.i56 = icmp eq i32 %.val.i, 0
  %i.cm = getelementptr i8, ptr %1, i64 160
  %.val17.i = load ptr, ptr %i.cm, align 8, !tbaa !29 ; 4 uses
  br i1 %.not.i56, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %bb.u, %.preheader59
  %.05.i.i = phi ptr [ %i.co, %.preheader59 ], [ %.val17.i, %bb.u ]
  %.0.i.i = phi i64 [ %i.cp, %.preheader59 ], [ 2, %bb.u ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.co, null
  %i.cp = add i64 %.0.i.i, 1
  br i1 %.not.i.i57, label %base_get_num_blocks.exit.i, label %.preheader59

base_get_num_blocks.exit.i:                       ; preds = %.preheader59
  %i.cq = icmp eq i64 %.0.i.i, 2
  br i1 %i.cq, label %bb.w, label %base_auto_thp_switch.exit.thread66

.preheader:                                       ; preds = %bb.u, %.preheader
  %.05.i20.i = phi ptr [ %i.cs, %.preheader ], [ %.val17.i, %bb.u ]
  %.0.i21.i = phi i64 [ %i.ct, %.preheader ], [ 2, %bb.u ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i20.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !51 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.cs, null
  %i.ct = add i64 %.0.i21.i, 1
  br i1 %.not.i22.i, label %bb.v, label %.preheader

bb.v:                                             ; preds = %.preheader
  %i.cu = icmp eq i64 %.0.i21.i, 5
  br i1 %i.cu, label %bb.w, label %base_auto_thp_switch.exit.thread66

bb.w:                                             ; preds = %bb.v, %base_get_num_blocks.exit.i
  store i8 1, ptr %i.cj, align 8, !tbaa !30
  %.not162.i = icmp eq ptr %.val17.i, null
  br i1 %.not162.i, label %base_auto_thp_switch.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 3936 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i
  %.03.i = phi ptr [ %.val17.i, %.lr.ph.i ], [ %.0.i58, %bb.x ] ; 5 uses
  %i.cw = load i64, ptr %.03.i, align 8, !tbaa !17
  %i.cx = call zeroext i1 @duckdb_je_pages_huge(ptr noundef nonnull %.03.i, i64 noundef %i.cw) #10 ; 0 uses
  %i.cy = load i64, ptr %.03.i, align 8, !tbaa !17
  %i.cz = getelementptr i8, ptr %.03.i, i64 32
  %.val19.i = load i64, ptr %i.cz, align 8, !tbaa !15
  %i.da = add i64 %i.cy, 2097151
  %i.db = sub i64 %i.da, %.val19.i
  %i.dc = lshr i64 %i.db, 21
  %i.dd = load i64, ptr %i.cv, align 8, !tbaa !34
  %i.de = add i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.cv, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.0.i58 = load ptr, ptr %i.df, align 8, !tbaa !52 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i58, null
  br i1 %.not16.i, label %base_auto_thp_switch.exit, label %bb.x

base_auto_thp_switch.exit:                        ; preds = %bb.x
  %.pre = load i8, ptr %i.cj, align 8, !tbaa !30, !range !49
  %i.dg = trunc nuw i8 %.pre to i1
  br i1 %i.dg, label %base_auto_thp_switch.exit.thread, label %base_auto_thp_switch.exit.thread66

base_auto_thp_switch.exit.thread:                 ; preds = %bb.w, %malloc_mutex_lock.exit, %base_auto_thp_switch.exit
  %i.dh = call zeroext i1 @duckdb_je_pages_huge(ptr noundef nonnull %.0.i55, i64 noundef %i.ai) #10 ; 0 uses
  br label %base_auto_thp_switch.exit.thread66

base_auto_thp_switch.exit.thread66:               ; preds = %base_get_num_blocks.exit.i, %bb.v, %base_auto_thp_switch.exit.thread, %base_auto_thp_switch.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 0, ptr %i.di monotonic, align 8
  %i.dj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bx) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.o, %base_auto_thp_switch.exit.thread66, %bb.p, %bb.m
  %i.dk = icmp ugt i64 %i.ai, 8070450532247928832
  br i1 %i.dk, label %sz_psz2ind.exit, label %bb.z, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.dl = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = add nsw i64 %i.ai, -1                   ; 2 uses
  %i.dn = call range(i64 0, 44) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true) ; 2 uses
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %7 = sub nuw nsw i64 61, %i.dn
  %i.dp = lshr i64 %i.dm, %7
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 3
  %i.ds = shl nuw nsw i32 %i.do, 2
  %reass.sub = sub nsw i32 %i.dr, %i.ds
  %8 = add nsw i32 %reass.sub, 200
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.y, %bb.z
  %.0.i = phi i32 [ %8, %bb.z ], [ 199, %bb.y ]
  store i32 %.0.i, ptr %3, align 4, !tbaa !3
  store i64 %i.ai, ptr %.0.i55, align 8, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i55, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i55, i64 144
  %i.dw = add i64 %i.ai, -144
  %i.dx = load i64, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %4, align 8, !tbaa !10
  %i.dz = load i64, ptr %i.du, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i55, i64 24
  store ptr %i.dv, ptr %i.ea, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i55, i64 32
  store i64 %i.dw, ptr %i.eb, align 8, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i55, i64 48
  store i64 %i.dx, ptr %i.ec, align 8, !tbaa !53
  %i.ed = and i64 %i.dz, -268435456
  %i.ee = or disjoint i64 %i.ed, 243314687
  store i64 %i.ee, ptr %i.du, align 8, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %base_map.exit, %sz_psz2ind.exit
  ret ptr %.0.i55
}

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @base_unmap(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  %i.c = icmp eq ptr %i.b, @duckdb_je_ehooks_default_extent_hooks
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @duckdb_je_extent_dalloc_mmap(ptr noundef %2, i64 noundef %3) #10
  br i1 %i.d, label %bb.c, label %ehooks_purge_lazy.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @duckdb_je_pages_decommit(ptr noundef %2, i64 noundef %3) #10
  br i1 %i.e, label %bb.d, label %ehooks_purge_lazy.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @duckdb_je_pages_purge_forced(ptr noundef %2, i64 noundef %3) #10
  br i1 %i.f, label %bb.e, label %ehooks_purge_lazy.exit

bb.e:                                             ; preds = %bb.d
  %i.g = tail call zeroext i1 @duckdb_je_pages_purge_lazy(ptr noundef %2, i64 noundef %3) #10 ; 0 uses
  br label %ehooks_purge_lazy.exit

bb.f:                                             ; preds = %bb.a
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 3 uses
  %i.i = icmp eq ptr %i.h, @duckdb_je_ehooks_default_extent_hooks
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call zeroext i1 @duckdb_je_ehooks_default_dalloc_impl(ptr noundef %2, i64 noundef %3) #10
  br i1 %i.j, label %ehooks_dalloc.exit.thread, label %ehooks_purge_lazy.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ehooks_dalloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.n, label %bb.j, label %tsd_fetch_impl.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 824
  %i.q = load i8, ptr %i.p, align 8, !tbaa !15
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.k, !prof !45

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.k, %bb.j, %bb.i
  %i.s = phi ptr [ %i.o, %bb.j ], [ %i.r, %bb.k ], [ %0, %bb.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 824
  %i.u = load i8, ptr %i.t, align 8, !tbaa !15
  %i.v = icmp eq i8 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = add i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !15
  br i1 %i.v, label %bb.l, label %ehooks_pre_reentrancy.exit.i

bb.l:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %i.s) #10
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.l, %tsd_fetch_impl.exit.i.i
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !54
  %.val.i = load i32, ptr %1, align 8, !tbaa !44
  %i.aa = tail call zeroext i1 %i.z(ptr noundef %i.h, ptr noundef %2, i64 noundef %3, i1 noundef zeroext true, i32 noundef %.val.i) #10, !inline_history !55 ; 2 uses
  br i1 %i.n, label %bb.m, label %tsd_fetch_impl.exit.i15.i

bb.m:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ab = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 824
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !15
  %.not.i.i16.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i16.i, label %tsd_fetch_impl.exit.i15.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i15.i

tsd_fetch_impl.exit.i15.i:                        ; preds = %bb.n, %bb.m, %ehooks_pre_reentrancy.exit.i
  %i.af = phi ptr [ %i.ab, %bb.m ], [ %i.ae, %bb.n ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !15
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %ehooks_dalloc.exit

bb.o:                                             ; preds = %tsd_fetch_impl.exit.i15.i
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %i.af) #10
  br i1 %i.aa, label %ehooks_dalloc.exit.thread, label %ehooks_purge_lazy.exit

ehooks_dalloc.exit:                               ; preds = %tsd_fetch_impl.exit.i15.i
  br i1 %i.aa, label %ehooks_dalloc.exit.thread, label %ehooks_purge_lazy.exit

ehooks_dalloc.exit.thread:                        ; preds = %bb.h, %bb.o, %bb.g, %ehooks_dalloc.exit
  %i.ak = load atomic ptr, ptr %i.a acquire, align 8 ; 3 uses
  %i.al = icmp eq ptr %i.ak, @duckdb_je_ehooks_default_extent_hooks
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ehooks_dalloc.exit.thread
  %i.am = tail call zeroext i1 @duckdb_je_ehooks_default_decommit_impl(ptr noundef %2, i64 noundef 0, i64 noundef %3) #10
  br i1 %i.am, label %ehooks_decommit.exit.thread, label %ehooks_purge_lazy.exit

bb.q:                                             ; preds = %ehooks_dalloc.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ehooks_decommit.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.aq, label %bb.s, label %tsd_fetch_impl.exit.i.i29

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 824
  %i.at = load i8, ptr %i.as, align 8, !tbaa !15
  %.not.i.i.i33 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i33, label %tsd_fetch_impl.exit.i.i29, label %bb.t, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.au = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.ar, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i.i29

tsd_fetch_impl.exit.i.i29:                        ; preds = %bb.t, %bb.s, %bb.r
  %i.av = phi ptr [ %i.ar, %bb.s ], [ %i.au, %bb.t ], [ %0, %bb.r ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 824
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !15
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !15
  br i1 %i.ay, label %bb.u, label %ehooks_pre_reentrancy.exit.i30

bb.u:                                             ; preds = %tsd_fetch_impl.exit.i.i29
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %i.av) #10
  br label %ehooks_pre_reentrancy.exit.i30

ehooks_pre_reentrancy.exit.i30:                   ; preds = %bb.u, %tsd_fetch_impl.exit.i.i29
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !56
  %.val.i31 = load i32, ptr %1, align 8, !tbaa !44
  %i.bd = tail call zeroext i1 %i.bc(ptr noundef %i.ak, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i31) #10, !inline_history !57 ; 2 uses
  br i1 %i.aq, label %bb.v, label %tsd_fetch_impl.exit.i17.i

bb.v:                                             ; preds = %ehooks_pre_reentrancy.exit.i30
  %i.be = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 824
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !15
  %.not.i.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i18.i, label %tsd_fetch_impl.exit.i17.i, label %bb.w, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.bh = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.be, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i17.i

tsd_fetch_impl.exit.i17.i:                        ; preds = %bb.w, %bb.v, %ehooks_pre_reentrancy.exit.i30
  %i.bi = phi ptr [ %i.be, %bb.v ], [ %i.bh, %bb.w ], [ %0, %ehooks_pre_reentrancy.exit.i30 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = add i8 %i.bk, -1                        ; 2 uses
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !15
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.x, label %ehooks_decommit.exit
end_hunk_0
begin_hunk_1_@duckdb_je_b0_dalloc_tcache_stack:bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !15 ; 3 uses
  %i.r = add i64 %.val.i, 1                       ; 3 uses
  %i.s = icmp ult i64 %i.r, 4097
  br i1 %i.s, label %bb.e, label %bb.f, !prof !45

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.t = add nsw i64 %.val.i, 8
  %i.u = lshr i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64
  br label %base_edata_heap_insert.exit

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.y = icmp ugt i64 %i.r, 8070450532247928832
  br i1 %i.y, label %base_edata_heap_insert.exit, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %i.r, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.aa, i1 true) ; 3 uses
  %i.ac = sub nuw nsw i64 60, %i.ab
  %i.ad = ashr exact i64 -1152921504606846976, %i.ab
  %i.ae = and i64 %i.ad, %.val.i
  %i.af = lshr i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, 3
  %i.ah = shl nuw nsw i64 %i.ab, 2
  %reass.sub = sub nsw i64 %i.ag, %i.ah
  %i.ai = add nsw i64 %reass.sub, 229
  br label %base_edata_heap_insert.exit

base_edata_heap_insert.exit:                      ; preds = %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.x, %bb.e ], [ %i.ai, %bb.g ], [ 232, %bb.f ]
  %i.aj = add nuw nsw i64 %.0.i.i, 4294967295
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.al = and i64 %i.aj, 4294967295
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al
  tail call void @duckdb_je_edata_heap_insert(ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) #10
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store atomic i8 0, ptr %i.an monotonic, align 8
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #10 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_base_stats_get(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #10
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !41
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3896
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  store i64 %i.n, ptr %2, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3904
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62
  store i64 %i.p, ptr %3, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3912
  %i.r = load i64, ptr %i.q, align 8, !tbaa !63
  store i64 %i.r, ptr %4, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32
  store i64 %i.t, ptr %5, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3928
  %i.v = load i64, ptr %i.u, align 8, !tbaa !33
  store i64 %i.v, ptr %6, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3936
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  store i64 %i.x, ptr %7, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 0, ptr %i.y monotonic, align 8
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_base_prefork(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull %i.a) #10
  ret void
}

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_base_postfork_parent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull %i.a) #10
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_base_postfork_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @duckdb_je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull %i.a) #10
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_base_boot(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @duckdb_je_base_new(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_ehooks_default_extent_hooks, i1 noundef zeroext true) ; 2 uses
  store ptr %i.a, ptr @b0, align 8, !tbaa !7
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

declare zeroext i1 @duckdb_je_pages_huge(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

declare ptr @duckdb_je_extent_alloc_mmap(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_ehooks_default_alloc_impl(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @duckdb_je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_extent_dalloc_mmap(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pages_decommit(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pages_purge_forced(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pages_purge_lazy(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pages_nohuge(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_ehooks_default_dalloc_impl(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_ehooks_default_decommit_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_ehooks_default_purge_forced_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_ehooks_default_purge_lazy_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @duckdb_je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare ptr @duckdb_je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_edata_avail_first(ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_avail_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTS6base_s", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !9, i64 8}
!13 = !{!"edata_s", !11, i64 0, !9, i64 8, !5, i64 16, !14, i64 24, !11, i64 32, !5, i64 40, !5, i64 64}
!14 = !{!"p1 _ZTS8hpdata_s", !9, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!13, !11, i64 0}
!17 = !{!18, !11, i64 0}
!18 = !{!"base_block_s", !11, i64 0, !19, i64 8, !13, i64 16}
!19 = !{!"p1 _ZTS12base_block_s", !9, i64 0}
!20 = !{!21, !4, i64 148}
!21 = !{!"base_s", !22, i64 0, !22, i64 16, !24, i64 32, !25, i64 144, !4, i64 148, !11, i64 152, !19, i64 160, !5, i64 168, !26, i64 3880, !11, i64 3896, !11, i64 3904, !11, i64 3912, !11, i64 3920, !11, i64 3928, !11, i64 3936}
!22 = !{!"ehooks_s", !4, i64 0, !23, i64 8}
!23 = !{!"", !9, i64 0}
!24 = !{!"malloc_mutex_s", !5, i64 0}
!25 = !{!"_Bool", !5, i64 0}
!26 = !{!"", !27, i64 0}
!27 = !{!"ph_s", !9, i64 0, !11, i64 8}
!28 = !{!21, !11, i64 152}
!29 = !{!21, !19, i64 160}
!30 = !{!21, !25, i64 144}
!31 = !{!21, !11, i64 3896}
!32 = !{!21, !11, i64 3920}
!33 = !{!21, !11, i64 3928}
!34 = !{!21, !11, i64 3936}
!35 = !{!36, !11, i64 56}
!36 = !{!"", !37, i64 0, !37, i64 8, !11, i64 16, !11, i64 24, !4, i64 32, !38, i64 36, !11, i64 40, !39, i64 48, !11, i64 56}
!37 = !{!"", !11, i64 0}
!38 = !{!"", !4, i64 0}
!39 = !{!"p1 _ZTS6tsdn_s", !9, i64 0}
!40 = !{!36, !39, i64 48}
!41 = !{!36, !11, i64 40}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!25, !25, i64 0}
!44 = !{!22, !4, i64 0}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!47, !9, i64 0}
!47 = !{!"extent_hooks_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!48 = distinct !{null, null}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!18, !19, i64 8}
!52 = !{!19, !19, i64 0}
!53 = !{!13, !11, i64 32}
!54 = !{!47, !9, i64 8}
!55 = distinct !{null}
!56 = !{!47, !9, i64 32}
!57 = distinct !{null}
!58 = !{!47, !9, i64 48}
!59 = distinct !{null}
!60 = !{!47, !9, i64 40}
!61 = distinct !{null}
!62 = !{!21, !11, i64 3904}
!63 = !{!21, !11, i64 3912}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS7edata_s", !9, i64 0}
end_hunk_1
