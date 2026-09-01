Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ialloc?download=true
inline.NumInlined: 321
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ext4_xattr_credits_for_new_inode:bb.a
  %i.m = tail call i32 @__ext4_xattr_set_credits(ptr noundef %i.b, ptr noundef null, ptr noundef null, i64 noundef %i.l, i1 noundef zeroext true) #10
  %i.n = zext i1 %i.k to i32
  %i.o = shl i32 %i.m, %i.n                       ; 3 uses
  %i.p = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 -1, ptr nonnull elementtype(i32) %i.c) #9, !srcloc !57 ; 2 uses
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp slt i32 %i.p, 1
  br i1 %i.r, label %bb.f, label %posix_acl_release.exit, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 3) #10
  br label %posix_acl_release.exit

bb.g:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.s = getelementptr i8, ptr %i.c, i64 8
  tail call void @kvfree_call_rcu(ptr noundef %i.s, ptr noundef nonnull %i.c) #10
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.019 = phi i32 [ 0, %bb.c ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ]
  %i.t = tail call i32 @__ext4_xattr_set_credits(ptr noundef %i.b, ptr noundef null, ptr noundef null, i64 noundef 1024, i1 noundef zeroext true) #10
  %i.u = shl i32 %i.t, 1
  %i.v = add i32 %i.u, %.019                      ; 2 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %posix_acl_release.exit
  %i.w = tail call i32 @__ext4_xattr_set_credits(ptr noundef %i.b, ptr noundef null, ptr noundef null, i64 noundef 40, i1 noundef zeroext true) #10
  %i.x = add i32 %i.w, %i.v
  br label %bb.i

bb.i:                                             ; preds = %posix_acl_release.exit, %bb.h, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.x, %bb.h ], [ %i.v, %posix_acl_release.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -1, 1) i32 @find_group_orlov(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.dx_hash_info, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 -160       ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 864        ; 4 uses
  %.val178 = load ptr, ptr %i.c, align 32         ; 6 uses
  %i.d = getelementptr i8, ptr %.val178, i64 64
  %.val179.val = load i32, ptr %i.d, align 64     ; 6 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !37
  %.val177 = load ptr, ptr %i.c, align 32         ; 2 uses
  %i.e = getelementptr i8, ptr %.val177, i64 32
  %i.f = load i64, ptr %i.e, align 32
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = getelementptr i8, ptr %.val178, i64 1180
  %.val180 = load i32, ptr %i.h, align 4          ; 7 uses
  %i.i = shl nuw i32 1, %.val180                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.j = icmp slt i32 %i.i, 2                     ; 5 uses
  %i.k = add i32 %.val179.val, -1
  %i.l = add i32 %i.k, %i.i
  %i.m = lshr i32 %i.l, %.val180
  %.0135 = select i1 %i.j, i32 %.val179.val, i32 %i.m ; 12 uses
  %i.n = select i1 %i.j, i32 0, i32 %.val180
  %.0129 = lshr i32 %i.b, %i.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !annotation !13
  %i.o = getelementptr i8, ptr %.val178, i64 272
  %i.p = load volatile i64, ptr %i.o, align 16
  %..i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.p, i64 0)
  %i.q = trunc i64 %..i to i32                    ; 2 uses
  %i.r = udiv i32 %i.q, %.0135                    ; 2 uses
  %i.s = getelementptr i8, ptr %.val178, i64 232
  %i.t = load volatile i64, ptr %i.s, align 8
  %..i182 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.u = zext i32 %.0135 to i64
  %i.v = udiv i64 %..i182, %i.u                   ; 2 uses
  %i.w = getelementptr i8, ptr %.val178, i64 312
  %i.x = load volatile i64, ptr %i.w, align 8
  %..i183 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %i.y = trunc i64 %..i183 to i32
  %i.z = and i16 %3, -4096
  %i.aa = icmp eq i16 %i.z, 16384
  br i1 %i.aa, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 48
  %.val181 = load ptr, ptr %i.ad, align 8
  %i.ae = icmp eq ptr %1, %.val181
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr i8, ptr %1, i64 -152
  %i.ag = load volatile i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 131072
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not156 = icmp eq ptr %4, null
  br i1 %.not156, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.val178, i64 196
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %4, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %4, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = call i32 @ext4fs_dirhash(ptr noundef nonnull %1, ptr noundef %i.am, i32 noundef %i.ao, ptr noundef nonnull %5) #10 ; 0 uses
  %i.aq = load i32, ptr %5, align 8
  %i.ar = urem i32 %i.aq, %.0135
  br label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.d
  %i.as = tail call i32 @__get_random_u32_below(i32 noundef %.0135) #10
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %i.ar, %bb.e ], [ %i.as, %bb.f ]
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %get_orlov_stats.exit.thread.thread, %.lr.ph.preheader
  %i.at = phi i1 [ true, %get_orlov_stats.exit.thread.thread ], [ false, %.lr.ph.preheader ]
  %.0132214.ph = phi i32 [ %.sroa.17.0, %get_orlov_stats.exit.thread.thread ], [ %i.g, %.lr.ph.preheader ]
  %.0136213.ph = phi i32 [ %i.av, %get_orlov_stats.exit.thread.thread ], [ 0, %.lr.ph.preheader ]
  %.0139212.ph = phi i32 [ %i.bo, %get_orlov_stats.exit.thread.thread ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %get_orlov_stats.exit.thread
  %.0139212 = phi i32 [ %i.bn, %get_orlov_stats.exit.thread ], [ %.0139212.ph, %.lr.ph.outer ] ; 3 uses
  %i.au = add i32 %.0139212, %.1
  %i.av = urem i32 %i.au, %.0135                  ; 4 uses
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  call void @__rcu_read_lock() #10
  %.val.i = load ptr, ptr %i.c, align 32
  %i.aw = getelementptr i8, ptr %.val.i, i64 1184
  %i.ax = load volatile ptr, ptr %i.aw, align 32
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  call void @__rcu_read_unlock() #10
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load volatile i32, ptr %i.bb, align 4
  %i.bd = load volatile i64, ptr %i.ba, align 8
  %i.be = getelementptr i8, ptr %i.ba, i64 12
  %i.bf = load volatile i32, ptr %i.be, align 4
  br label %get_orlov_stats.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bg = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %i.av, ptr noundef null) #10 ; 4 uses
  %.not.i184 = icmp eq ptr %i.bg, null
  br i1 %.not.i184, label %get_orlov_stats.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %i.bg) #10
  %i.bi = call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %i.bg) #10
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call i32 @ext4_used_dirs_count(ptr noundef %0, ptr noundef nonnull %i.bg) #10
  br label %get_orlov_stats.exit

get_orlov_stats.exit:                             ; preds = %bb.g, %bb.i
  %.sroa.0.0 = phi i64 [ %i.bd, %bb.g ], [ %i.bj, %bb.i ]
  %.sroa.11.0 = phi i32 [ %i.bc, %bb.g ], [ %i.bh, %bb.i ] ; 2 uses
  %.sroa.17.0 = phi i32 [ %i.bf, %bb.g ], [ %i.bk, %bb.i ] ; 2 uses
  %.not165 = icmp eq i32 %.sroa.11.0, 0
  br i1 %.not165, label %get_orlov_stats.exit.thread, label %bb.j

bb.j:                                             ; preds = %get_orlov_stats.exit
  %.not166 = icmp uge i32 %.sroa.17.0, %.0132214.ph
  %i.bl = icmp ult i32 %.sroa.11.0, %i.r
  %or.cond = select i1 %.not166, i1 true, i1 %i.bl
  %i.bm = icmp ult i64 %.sroa.0.0, %i.v
  %or.cond168 = select i1 %or.cond, i1 true, i1 %i.bm
  br i1 %or.cond168, label %get_orlov_stats.exit.thread, label %get_orlov_stats.exit.thread.thread

get_orlov_stats.exit.thread:                      ; preds = %bb.h, %bb.j, %get_orlov_stats.exit
  %i.bn = add nuw i32 %.0139212, 1                ; 2 uses
  %exitcond235.not = icmp eq i32 %i.bn, %.0135
  br i1 %exitcond235.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

get_orlov_stats.exit.thread.thread:               ; preds = %bb.j
  %i.bo = add nuw i32 %.0139212, 1                ; 2 uses
  %exitcond235.not264 = icmp eq i32 %i.bo, %.0135
  br i1 %exitcond235.not264, label %.loopexit205, label %.lr.ph.outer, !llvm.loop !59

._crit_edge:                                      ; preds = %get_orlov_stats.exit.thread
  br i1 %i.at, label %.loopexit205, label %.loopexit203

.loopexit205:                                     ; preds = %get_orlov_stats.exit187, %get_orlov_stats.exit187.us, %get_orlov_stats.exit.thread.thread, %._crit_edge
  %.2138 = phi i32 [ %.0136213.ph, %._crit_edge ], [ %i.av, %get_orlov_stats.exit.thread.thread ], [ %i.cm, %get_orlov_stats.exit187.us ], [ %i.cv, %get_orlov_stats.exit187 ] ; 2 uses
  %i.bp = icmp eq i32 %.val180, 0
  br i1 %i.bp, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %.loopexit205
  %i.bq = shl i32 %.2138, %.val180
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.o
  %.1140217 = phi i32 [ 0, %bb.k ], [ %i.bu, %bb.o ] ; 2 uses
  %i.br = add nuw i32 %.1140217, %i.bq            ; 3 uses
  %.not158 = icmp ult i32 %i.br, %.val179.val
  br i1 %.not158, label %bb.m, label %.loopexit203

bb.m:                                             ; preds = %bb.l
  %i.bs = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %i.br, ptr noundef null) #10 ; 2 uses
  %.not159 = icmp eq ptr %i.bs, null
  br i1 %.not159, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %i.bs) #10
  %.not160 = icmp eq i32 %i.bt, 0
  br i1 %.not160, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bu = add nuw i32 %.1140217, 1                ; 2 uses
  %exitcond238.not.a = icmp eq i32 %i.bu, %i.i
  br i1 %exitcond238.not.a, label %.loopexit203, label %bb.l, !llvm.loop !60

bb.p:                                             ; preds = %bb.c, %bb.a
  %i.bv = udiv i32 %i.y, %.0135
  %i.bw = shl i32 %i.g, %.val180                  ; 2 uses
  %i.bx = sdiv i32 %i.bw, 16
  %i.by = add i32 %i.bv, %i.bx                    ; 2 uses
  %.neg = sdiv i32 %i.bw, -4
  %i.bz = add i32 %i.r, %.neg
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 1) ; 2 uses
  %i.ca = getelementptr i8, ptr %.val177, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = sext i32 %i.i to i64
  %i.cd = mul i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = sub nsw i64 %i.v, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0) ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 688
  %i.ci = load i32, ptr %i.ch, align 8            ; 3 uses
  %.not154 = icmp eq i32 %i.ci, -1                ; 2 uses
  %brmerge = or i1 %i.j, %.not154
  %.0129.mux = select i1 %.not154, i32 %.0129, i32 %i.ci ; 2 uses
  br i1 %brmerge, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.p
  %i.cj = lshr i32 %i.ci, %.val180
  br label %get_orlov_stats.exit187.preheader

bb.q:                                             ; preds = %bb.p
  br i1 %i.j, label %.split.us, label %get_orlov_stats.exit187.preheader

get_orlov_stats.exit187.preheader:                ; preds = %.thread, %bb.q
  %.2271 = phi i32 [ %i.cj, %.thread ], [ %.0129.mux, %bb.q ]
  %i.ck = zext nneg i32 %spec.store.select1 to i64
  br label %get_orlov_stats.exit187

.split.us:                                        ; preds = %bb.q, %get_orlov_stats.exit187.thread.us
  %.2141211.us = phi i32 [ %i.ct, %get_orlov_stats.exit187.thread.us ], [ 0, %bb.q ] ; 2 uses
  %i.cl = add i32 %.2141211.us, %.0129.mux
  %i.cm = urem i32 %i.cl, %.0135                  ; 2 uses
  %i.cn = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %i.cm, ptr noundef null) #10 ; 4 uses
  %.not.i185.us = icmp eq ptr %i.cn, null
  br i1 %.not.i185.us, label %get_orlov_stats.exit187.thread.us, label %get_orlov_stats.exit187.us

get_orlov_stats.exit187.us:                       ; preds = %.split.us
  %i.co = tail call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %i.cn) #10
  %i.cp = tail call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %i.cn) #10
  %i.cq = tail call i32 @ext4_used_dirs_count(ptr noundef %0, ptr noundef nonnull %i.cn) #10
  %.not155.us = icmp uge i32 %i.cq, %i.by
  %i.cr = icmp ult i32 %i.co, %spec.store.select
  %or.cond172.us = select i1 %.not155.us, i1 true, i1 %i.cr
  %i.cs = icmp ult i32 %i.cp, %spec.store.select1
  %or.cond175.us = select i1 %or.cond172.us, i1 true, i1 %i.cs
  br i1 %or.cond175.us, label %get_orlov_stats.exit187.thread.us, label %.loopexit205

get_orlov_stats.exit187.thread.us:                ; preds = %get_orlov_stats.exit187.us, %.split.us
  %i.ct = add nuw i32 %.2141211.us, 1             ; 2 uses
  %exitcond234.not = icmp eq i32 %i.ct, %.0135
  br i1 %exitcond234.not, label %.loopexit203, label %.split.us, !llvm.loop !61

get_orlov_stats.exit187:                          ; preds = %get_orlov_stats.exit187.preheader, %get_orlov_stats.exit187.thread
  %.2141211 = phi i32 [ %i.di, %get_orlov_stats.exit187.thread ], [ 0, %get_orlov_stats.exit187.preheader ] ; 2 uses
  %i.cu = add i32 %.2141211, %.2271
  %i.cv = urem i32 %i.cu, %.0135                  ; 2 uses
  tail call void @__rcu_read_lock() #10
  %.val.i186 = load ptr, ptr %i.c, align 32
  %i.cw = getelementptr i8, ptr %.val.i186, i64 1184
  %i.cx = load volatile ptr, ptr %i.cw, align 32
  %i.cy = zext i32 %i.cv to i64
  %i.cz = getelementptr [8 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  tail call void @__rcu_read_unlock() #10
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = load volatile i32, ptr %i.db, align 4
  %i.dd = load volatile i64, ptr %i.da, align 8
  %i.de = getelementptr i8, ptr %i.da, i64 12
  %i.df = load volatile i32, ptr %i.de, align 4
  %.not155 = icmp uge i32 %i.df, %i.by
  %i.dg = icmp ult i32 %i.dc, %spec.store.select
  %or.cond172 = select i1 %.not155, i1 true, i1 %i.dg
  %i.dh = icmp ult i64 %i.dd, %i.ck
  %or.cond175 = select i1 %or.cond172, i1 true, i1 %i.dh
  br i1 %or.cond175, label %get_orlov_stats.exit187.thread, label %.loopexit205

get_orlov_stats.exit187.thread:                   ; preds = %get_orlov_stats.exit187
  %i.di = add nuw i32 %.2141211, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, %.0135
  br i1 %exitcond.not, label %.loopexit203, label %get_orlov_stats.exit187, !llvm.loop !61

.loopexit203:                                     ; preds = %get_orlov_stats.exit187.thread, %get_orlov_stats.exit187.thread.us, %bb.o, %bb.l, %._crit_edge
  %i.dj = udiv i32 %i.q, %.val179.val
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.loopexit203
  %.0134 = phi i32 [ %i.dj, %.loopexit203 ], [ 0, %bb.v ] ; 2 uses
  %i.dk = load i32, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.u
  %.3218 = phi i32 [ 0, %bb.r ], [ %i.dp, %bb.u ] ; 2 uses
  %i.dl = add i32 %.3218, %i.dk
  %i.dm = urem i32 %i.dl, %.val179.val            ; 2 uses
  %i.dn = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %i.dm, ptr noundef null) #10 ; 2 uses
  %.not162 = icmp eq ptr %i.dn, null
  br i1 %.not162, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %i.dn) #10 ; 2 uses
  %.not163 = icmp eq i32 %i.do, 0
  %.not164 = icmp ult i32 %i.do, %.0134
  %or.cond176 = select i1 %.not163, i1 true, i1 %.not164
  br i1 %or.cond176, label %bb.u, label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dp = add nuw i32 %.3218, 1                   ; 2 uses
  %exitcond240.not = icmp eq i32 %i.dp, %.val179.val
  br i1 %exitcond240.not, label %bb.v, label %bb.s, !llvm.loop !62

bb.v:                                             ; preds = %bb.u
  %.not161 = icmp eq i32 %.0134, 0
  br i1 %.not161, label %.loopexit, label %bb.r

.loopexit.sink.split:                             ; preds = %bb.n, %bb.t, %.loopexit205
  %.lcssa.sink = phi i32 [ %i.dm, %bb.t ], [ %.2138, %.loopexit205 ], [ %i.br, %bb.n ]
  store i32 %.lcssa.sink, ptr %2, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.loopexit.sink.split
  %.0 = phi i32 [ 0, %.loopexit.sink.split ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @find_inode_bit(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 5 uses
  %.val28 = load ptr, ptr %i.a, align 32          ; 2 uses
  %i.b = getelementptr i8, ptr %.val28, i64 576
  %i.c = load ptr, ptr %i.b, align 64
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr i8, ptr %.val28, i64 32
  %i.f = load i64, ptr %i.e, align 32             ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 40
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = getelementptr i8, ptr %0, i64 192
  %.pre = load i64, ptr %3, align 8
  br label %find_next_zero_bit.exit

find_next_zero_bit.exit:                          ; preds = %bb.a, %bb.h
  %i.j = phi i64 [ %.pre, %bb.a ], [ %i.bg, %bb.h ]
  %i.k = phi i64 [ %i.f, %bb.a ], [ %i.bi, %bb.h ]
  %.0 = phi i64 [ %i.f, %bb.a ], [ %i.bf, %bb.h ]
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = tail call i64 @_find_next_zero_bit(ptr noundef %i.l, i64 noundef %i.k, i64 noundef %i.j) #10 ; 4 uses
  store i64 %i.m, ptr %3, align 8
  %.val25 = load ptr, ptr %i.a, align 32          ; 2 uses
  %i.n = getelementptr i8, ptr %.val25, i64 32
  %i.o = load i64, ptr %i.n, align 32             ; 2 uses
  %.not = icmp ult i64 %i.m, %i.o
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %find_next_zero_bit.exit
  br i1 %i.d, label %bb.c, label %recently_deleted.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %i.m to i32                    ; 2 uses
  %i.q = getelementptr i8, ptr %.val25, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %1, ptr noundef null) #10 ; 4 uses
  %.not.i29 = icmp eq ptr %i.t, null
  br i1 %.not.i29, label %recently_deleted.exit.thread, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %.val49.i = load ptr, ptr %i.a, align 32        ; 2 uses
  %i.u = getelementptr i8, ptr %.val49.i, i64 104
  %.val49.val.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val49.val.i, i64 100
  %.val49.val.val.i = load i32, ptr %i.v, align 4
  %i.w = and i32 %.val49.val.val.i, 1040
  %.not55.i = icmp eq i32 %i.w, 0
  br i1 %.not55.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@ext4_init_inode_table:bb.a
  br i1 %i.bm, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not79 = icmp eq i32 %2, 0
  br i1 %.not79, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.bf, align 64
  %i.bo = call i32 @blkdev_issue_flush(ptr noundef %i.bn) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  call fastcc void @ext4_lock_group(ptr noundef %0, i32 noundef %1) #12, !srcloc !67
  %i.bp = load i16, ptr %i.g, align 2
  %i.bq = or i16 %i.bp, 4
  store i16 %i.bq, ptr %i.g, align 2
  call void @ext4_group_desc_csum_set(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.d) #10
  %.val83 = load ptr, ptr %i.c, align 32
  %i.br = getelementptr i8, ptr %.val83, i64 424
  %.val83.val = load ptr, ptr %i.br, align 8
  %i.bs = and i32 %1, 127
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr [64 x i8], ptr %.val83.val, i64 %i.bt
  call void @_raw_spin_unlock(ptr noundef %i.bu) #10
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1621, ptr noundef %i.l, ptr noundef null, ptr noundef %i.bv) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %._crit_edge, %bb.p, %bb.k, %bb.h
  %.067 = phi i32 [ %i.ba, %._crit_edge ], [ %i.bw, %bb.p ], [ %i.bl, %bb.m ], [ 1, %bb.h ], [ 1, %bb.k ]
  call void @up_write(ptr noundef %i.p) #10
  %i.bx = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1625, ptr noundef %i.l) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %bb.q, %bb.d
  %.1 = phi i32 [ 0, %bb.b ], [ %i.o, %bb.d ], [ %.067, %bb.q ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_free_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_ext4_load_inode_bitmap(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_load_inode_bitmap, i64 8), i1 false) #9
          to label %arch_static_branch.exit [label %arch_test_bit.exit.i], !srcloc !15

arch_test_bit.exit.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #9, !srcloc !68
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.b) #9, !srcloc !17 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !19
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_load_inode_bitmap, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_ext4_load_inode_bitmap(ptr noundef %i.i, ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !20
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #9, !srcloc !21
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %arch_test_bit.exit.i, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @bdev_getblk(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_load_inode_bitmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_inode_bitmap_csum_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_request_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @from_vfsuid(ptr noundef, ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_inode_acl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_xattr_set_credits(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4fs_dirhash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__get_random_u32_below(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_allocate_inode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 2148426528}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"auto-init"}
!14 = !{i64 2148425590, i64 2148425629, i64 2148425650, i64 2148425687, i64 2148425710, i64 2148425581}
!15 = !{i64 2148646290, i64 2148646330, i64 2148646447, i64 2148646468, i64 2148646511, i64 2148646526, i64 2148646559, i64 2148646593, i64 2148646617}
!16 = !{i64 2157998340}
!17 = !{i64 2148438834}
!18 = !{i64 2151785337}
!19 = !{i64 2151788639}
!20 = !{i64 2151789061}
!21 = !{i64 2151800843}
!22 = !{i64 8098}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{i64 8879}
!25 = !{i64 2148435399}
!26 = !{i64 2148824968, i64 2148825007, i64 2148825028, i64 2148825065, i64 2148825088, i64 2148824959}
!27 = !{i64 2148825343, i64 2148825382, i64 2148825403, i64 2148825440, i64 2148825463, i64 2148825334}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{i64 934493}
!30 = !{i64 2148432055, i64 2148432094, i64 2148432115, i64 2148432152, i64 2148432175, i64 2148432184}
!31 = !{!"branch_weights", i32 1, i32 127}
!32 = !{i64 2148840923, i64 2148840962, i64 2148840983, i64 2148841020, i64 2148841043, i64 2148841052}
!33 = !{!"branch_weights", i32 127, i32 255873}
!34 = !{i64 5348}
!35 = !{i64 22284}
!36 = !{i64 23463}
!37 = !{i64 2157523903}
!38 = !{i64 2158029003}
!39 = !{i64 2148207158}
!40 = !{i64 28597}
!41 = !{i64 28989}
!42 = distinct !{!42, !12}
!43 = !{i64 17538}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = !{i64 29932}
!47 = !{i64 30218}
!48 = !{i64 2162122335, i64 2162122205}
!49 = !{i64 2162122866, i64 2162123342, i64 2162123375, i64 2162123410, i64 2162123426, i64 2162124267, i64 2162124325, i64 2162124374, i64 2162124184, i64 2162123485, i64 2162123517}
!50 = !{i64 2148432810}
!51 = !{i64 31279}
!52 = distinct !{!52, !12}
!53 = !{i64 32848}
!54 = !{i64 33743}
!55 = !{i64 34372}
!56 = !{i64 38130}
!57 = !{i64 2148835174, i64 2148835213, i64 2148835234, i64 2148835271, i64 2148835294, i64 2148835303}
!58 = !{i64 2150830736}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = !{i64 2158064462}
!64 = !{i64 38954}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = !{i64 45376}
!68 = !{i64 2159603966}
end_hunk_1
