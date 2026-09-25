Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/scanners?download=true
inline.NumInlined: 80
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cli_scangzip:bb.a
  %i.cc = zext i32 %i.cb to i64
  %i.cd = sub nsw i64 8192, %i.cc
  %i.ce = call i64 @cli_writen(i32 noundef %i.ca, ptr noundef nonnull %i.d, i64 noundef %i.cd) #18
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @inflateEnd(ptr noundef nonnull %1) #18 ; 0 uses
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !43
  %i.ci = call i32 @close(i32 noundef %i.ch) #18  ; 0 uses
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.ck = call i32 @cli_unlink(ptr noundef %i.cj) #18
  %.not73 = icmp eq i32 %i.ck, 0
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !71
  call void @free(ptr noundef %i.cl) #18
  %.148 = select i1 %.not73, i32 14, i32 10
  br label %.thread88

bb.ab:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %i.bf, align 8, !tbaa !172
  %i.cn = zext i32 %i.cm to i64
  %reass.sub = sub i64 %.147, %i.cn
  %i.co = add i64 %reass.sub, 8192                ; 6 uses
  %i.cp = call i32 @cli_checklimits(ptr noundef nonnull @.str.532, ptr noundef %0, i64 noundef %i.co, i64 noundef 0, i64 noundef 0) #18
  %.not72 = icmp eq i32 %i.cp, 0
  br i1 %.not72, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load i64, ptr %i.ba, align 8, !tbaa !65
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  switch i32 %i.bw, label %bb.af [
    i32 1, label %bb.ae
    i32 -5, label %bb.ag
    i32 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i32, ptr %i.be, align 8, !tbaa !171
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub i64 %i.bv, %i.cs
  %i.cu = call i32 @inflateReset(ptr noundef nonnull %1) #18 ; 0 uses
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.ba, align 8, !tbaa !65
  br label %.thread

bb.ag:                                            ; preds = %bb.ad, %bb.ad
  %i.cw = load i32, ptr %i.bf, align 8, !tbaa !172
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.x
  %.351 = phi i64 [ %i.bz, %bb.x ], [ %i.cv, %bb.af ], [ %i.ct, %bb.ae ], [ %i.cq, %bb.ac ], [ %i.bv, %bb.ag ] ; 2 uses
  %.3 = phi i64 [ %.147, %bb.x ], [ %i.co, %bb.af ], [ %i.co, %bb.ae ], [ %i.co, %bb.ac ], [ %i.co, %bb.ag ]
  %i.cy = load i64, ptr %i.ba, align 8, !tbaa !65 ; 2 uses
  %i.cz = icmp ult i64 %.351, %i.cy
  br i1 %i.cz, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %.preheader
  %i.da = call i32 @inflateEnd(ptr noundef nonnull %1) #18 ; 0 uses
  %i.db = load i32, ptr %i.c, align 4, !tbaa !43
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.dd = call i32 @cli_magic_scan_desc_type(i32 noundef %i.db, ptr noundef %i.dc, ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0), !inline_history !19 ; 2 uses
  %.not65 = icmp eq i32 %i.dd, 0
  %i.de = load i32, ptr %i.c, align 4, !tbaa !43
  %i.df = call i32 @close(i32 noundef %i.de) #18  ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !100
  %.not66 = icmp eq i32 %i.dj, 0                  ; 2 uses
  br i1 %.not65, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  br i1 %.not66, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.dl = call i32 @cli_unlink(ptr noundef %i.dk) #18
  %.not69 = icmp eq i32 %i.dl, 0
  br i1 %.not69, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !71
  call void @free(ptr noundef %i.dm) #18
  br label %.thread88

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !71
  call void @free(ptr noundef %i.dn) #18
  br label %.thread88

bb.al:                                            ; preds = %._crit_edge
  br i1 %.not66, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.dp = call i32 @cli_unlink(ptr noundef %i.do) #18
  %.not67 = icmp eq i32 %i.dp, 0
  %spec.select = select i1 %.not67, i32 0, i32 10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.052 = phi i32 [ 0, %bb.al ], [ %spec.select, %bb.am ]
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !71
  call void @free(ptr noundef %i.dq) #18
  br label %.thread88

.thread88:                                        ; preds = %bb.aa, %bb.t, %bb.an, %bb.ak, %bb.aj, %bb.r, %cli_scangzip_with_zib_from_the_80s.exit
  %.4 = phi i32 [ %.024.i, %cli_scangzip_with_zib_from_the_80s.exit ], [ %i.az, %bb.r ], [ %.052, %bb.an ], [ %i.dd, %bb.ak ], [ 10, %bb.aj ], [ %.146, %bb.t ], [ %.148, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_scanbzip(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %1 = alloca %struct.bz_stream, align 8          ; 13 uses
  %i.c = alloca [8192 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store i32 8192, ptr %i.e, align 8, !tbaa !176
  %i.f = call i32 @BZ2_bzDecompressInit(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #18 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.534, i32 noundef %i.f) #18
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = call i32 @cli_gentempfd(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.535) #18
  %i.l = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %1) #18 ; 0 uses
  br label %bb.y

bb.e:                                             ; preds = %.preheader, %bb.q
  %.024 = phi i64 [ %.125, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %.1, %bb.q ], [ 0, %.preheader ] ; 5 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !177
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !64   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp ult i64 %.0, %i.p
  br i1 %.not.i, label %fmap_need_off_once_len.exit, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit.thread:               ; preds = %bb.f
  store ptr null, ptr %1, align 8, !tbaa !178
  br label %.loopexit

fmap_need_off_once_len.exit:                      ; preds = %bb.f
  %i.q = sub nuw i64 %i.p, %.0
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.q, i64 8192) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91
  %i.t = call ptr %i.s(ptr noundef nonnull %i.n, i64 noundef %.0, i64 noundef %spec.select.i, i32 noundef 0) #18, !inline_history !0 ; 2 uses
  %.not20.i = icmp eq ptr %i.t, null
  %i.u = select i1 %.not20.i, i64 0, i64 %spec.select.i ; 3 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !178
  %i.v = trunc nuw nsw i64 %i.u to i32
  store i32 %i.v, ptr %i.j, align 8, !tbaa !177
  %i.w = add i64 %i.u, %.0
  %.not35 = icmp eq i64 %i.u, 0
  br i1 %.not35, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %fmap_need_off_once_len.exit, %fmap_need_off_once_len.exit.thread
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.536) #18
  br label %.loopexit49

bb.g:                                             ; preds = %fmap_need_off_once_len.exit, %bb.e
  %.1 = phi i64 [ %.0, %bb.e ], [ %i.w, %fmap_need_off_once_len.exit ]
  %i.x = call i32 @BZ2_bzDecompress(ptr noundef nonnull %1) #18 ; 4 uses
  %.not48 = icmp eq i32 %i.x, 4
  switch i32 %i.x, label %bb.h [
    i32 4, label %bb.i
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.537, i32 noundef %i.x) #18
  br label %.loopexit49

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.y = load i32, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %2 = icmp ne i32 %i.x, 0
  %or.cond3 = or i1 %2, %i.z
  br i1 %or.cond3, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.aa = zext i32 %i.y to i64
  %i.ab = sub nsw i64 8192, %i.aa                 ; 2 uses
  %i.ac = add i64 %i.ab, %.024                    ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !43
  %i.ae = call i64 @cli_writen(i32 noundef %i.ad, ptr noundef nonnull %i.c, i64 noundef %i.ab) #18
  %i.af = load i32, ptr %i.e, align 8, !tbaa !176
  %i.ag = zext i32 %i.af to i64
  %i.ah = sub nsw i64 8192, %i.ag
  %.not36 = icmp eq i64 %i.ae, %i.ah
  br i1 %.not36, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.538) #18
  %i.ai = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %1) #18 ; 0 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !43
  %i.ak = call i32 @close(i32 noundef %i.aj) #18  ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !100
  %.not38 = icmp eq i32 %i.ao, 0
  br i1 %.not38, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.aq = call i32 @cli_unlink(ptr noundef %i.ap) #18
  %.not39 = icmp eq i32 %i.aq, 0
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @free(ptr noundef %i.ar) #18
  br label %bb.y

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @free(ptr noundef %i.as) #18
  br label %bb.y

bb.o:                                             ; preds = %bb.j
  %i.at = call i32 @cli_checklimits(ptr noundef nonnull @.str.539, ptr noundef %0, i64 noundef %i.ac, i64 noundef 0, i64 noundef 0) #18
  %.not37 = icmp eq i32 %i.at, 0
  br i1 %.not37, label %bb.p, label %.loopexit49

bb.p:                                             ; preds = %bb.o
  store ptr %i.c, ptr %i.d, align 8, !tbaa !175
  store i32 8192, ptr %i.e, align 8, !tbaa !176
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.125 = phi i64 [ %i.ac, %bb.p ], [ %.024, %bb.i ]
  br i1 %.not48, label %.loopexit49, label %bb.e

.loopexit49:                                      ; preds = %bb.o, %bb.q, %bb.h, %.loopexit
  %i.au = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %1) #18 ; 0 uses
  %i.av = load i32, ptr %i.a, align 4, !tbaa !43
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.ax = call i32 @cli_magic_scan_desc_type(i32 noundef %i.av, ptr noundef %i.aw, ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0), !inline_history !19 ; 2 uses
  %.not40 = icmp eq i32 %i.ax, 0
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !43
  %i.az = call i32 @close(i32 noundef %i.ay) #18  ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !100
  %.not41 = icmp eq i32 %i.bd, 0                  ; 2 uses
  br i1 %.not40, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.loopexit49
  br i1 %.not41, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.bf = call i32 @cli_unlink(ptr noundef %i.be) #18
  %.not44 = icmp eq i32 %i.bf, 0
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @free(ptr noundef %i.bg) #18
  br label %bb.y

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @free(ptr noundef %i.bh) #18
  br label %bb.y

bb.v:                                             ; preds = %.loopexit49
  br i1 %.not41, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.bj = call i32 @cli_unlink(ptr noundef %i.bi) #18
  %.not42 = icmp eq i32 %i.bj, 0
  %spec.select = select i1 %.not42, i32 0, i32 10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.026 = phi i32 [ 0, %bb.v ], [ %spec.select, %bb.w ]
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @free(ptr noundef %i.bk) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.t, %bb.n, %bb.m, %bb.d, %bb.b
  %.027 = phi i32 [ 8, %bb.b ], [ %i.i, %bb.d ], [ %i.ax, %bb.u ], [ 10, %bb.t ], [ %.026, %bb.x ], [ 14, %bb.n ], [ 10, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_scanxz(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %1 = alloca %struct.CLI_XZ, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #20 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.540) #18
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %1, i8 0, i64 1632, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  store i64 1048576, ptr %i.f, align 8, !tbaa !186
  %i.g = call i32 @cli_XzInit(ptr noundef nonnull %1) #18 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.541, i32 noundef %i.g) #18
  call void @free(ptr noundef nonnull %i.c) #18
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = call i32 @cli_gentempfd(ptr noundef %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.542) #18
  call void @cli_XzShutdown(ptr noundef nonnull %1) #18
  call void @free(ptr noundef nonnull %i.c) #18
  br label %bb.t

.split:                                           ; preds = %bb.e
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !71
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.543, ptr noundef %i.k) #18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1624 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1608 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %.split
  %.037 = phi i64 [ 0, %.split ], [ %.138, %bb.p ] ; 2 uses
  %.036 = phi i64 [ 0, %.split ], [ %.1, %bb.p ]  ; 5 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !187
  %.not48 = icmp eq i64 %i.o, 0
  br i1 %.not48, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !64   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp ult i64 %.036, %i.r
  br i1 %.not.i, label %bb.i, label %fmap_need_off_once_len.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = sub nuw i64 %i.r, %.036
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.s, i64 262144) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.v = call ptr %i.u(ptr noundef nonnull %i.p, i64 noundef %.036, i64 noundef %spec.select.i, i32 noundef 0) #18, !inline_history !0 ; 2 uses
  %.not20.i = icmp eq ptr %i.v, null
  br i1 %.not20.i, label %fmap_need_off_once_len.exit.thread, label %fmap_need_off_once_len.exit

fmap_need_off_once_len.exit.thread:               ; preds = %bb.h, %bb.i
  store ptr null, ptr %i.n, align 8, !tbaa !188
  store i64 0, ptr %i.l, align 8, !tbaa !187
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.544) #18
  br label %bb.q

fmap_need_off_once_len.exit:                      ; preds = %bb.i
  store ptr %i.v, ptr %i.n, align 8, !tbaa !188
  store i64 %spec.select.i, ptr %i.l, align 8, !tbaa !187
  %i.w = add i64 %spec.select.i, %.036
  br label %bb.j

bb.j:                                             ; preds = %fmap_need_off_once_len.exit, %bb.g
  %.1 = phi i64 [ %.036, %bb.g ], [ %i.w, %fmap_need_off_once_len.exit ]
  %i.x = call i32 @cli_XzDecode(ptr noundef nonnull %1) #18 ; 4 uses
  %.not61 = icmp eq i32 %i.x, 2
  switch i32 %i.x, label %bb.k [
    i32 2, label %bb.l
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.545, i32 noundef %i.x) #18
  br label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.y = load i64, ptr %i.f, align 8, !tbaa !186  ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %2 = icmp ne i32 %i.x, 0
  %or.cond3 = or i1 %2, %i.z
  br i1 %or.cond3, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aa = sub i64 1048576, %i.y                   ; 3 uses
  %i.ab = add i64 %i.aa, %.037                    ; 3 uses
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !43
  %i.ad = call i64 @cli_writen(i32 noundef %i.ac, ptr noundef nonnull %i.c, i64 noundef %i.aa) #18
  %.not50 = icmp eq i64 %i.ad, %i.aa
  br i1 %.not50, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = call i32 @cli_checklimits(ptr noundef nonnull @.str.547, ptr noundef %0, i64 noundef %i.ab, i64 noundef 0, i64 noundef 0) #18
  %.not51 = icmp eq i32 %i.ae, 0
  br i1 %.not51, label %.thread, label %.thread58

.thread58:                                        ; preds = %bb.n
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.548, i64 noundef %i.ab) #18
  br label %.loopexit62

.thread:                                          ; preds = %bb.n
  store ptr %i.c, ptr %i.e, align 8, !tbaa !185
  store i64 1048576, ptr %i.f, align 8, !tbaa !186
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.546) #18
  br label %bb.q

bb.p:                                             ; preds = %.thread, %bb.l
  %.138 = phi i64 [ %i.ab, %.thread ], [ %.037, %bb.l ]
  br i1 %.not61, label %.loopexit62, label %bb.g

.loopexit62:                                      ; preds = %bb.p, %.thread58
  %i.af = load i32, ptr %i.a, align 4, !tbaa !43
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.ah = call i32 @cli_magic_scan_desc_type(i32 noundef %i.af, ptr noundef %i.ag, ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0), !inline_history !19
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.loopexit62, %bb.k, %fmap_need_off_once_len.exit.thread
  %.3 = phi i32 [ 20, %bb.k ], [ %i.ah, %.loopexit62 ], [ 14, %bb.o ], [ 26, %fmap_need_off_once_len.exit.thread ] ; 3 uses
  call void @cli_XzShutdown(ptr noundef nonnull %1) #18
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !43
  %i.aj = call i32 @close(i32 noundef %i.ai) #18  ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !100
  %.not52 = icmp eq i32 %i.an, 0
  br i1 %.not52, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.ap = call i32 @cli_unlink(ptr noundef %i.ao) #18
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = icmp eq i32 %.3, 0
  %or.cond5 = select i1 %i.aq, i1 %i.ar, i1 false
  %spec.store.select = select i1 %or.cond5, i32 10, i32 %.3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.4 = phi i32 [ %.3, %bb.q ], [ %spec.store.select, %bb.r ]
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @free(ptr noundef %i.as) #18
  call void @free(ptr noundef %i.c) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f, %bb.d, %bb.b
  %.041 = phi i32 [ 20, %bb.b ], [ 8, %bb.d ], [ %i.j, %bb.f ], [ %.4, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.041
}

declare i32 @cli_scangpt(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_scanapm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_scanarj(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.arj_metadata_tag, align 8   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.549) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = tail call ptr @cli_gentemp_with_prefix(ptr noundef %i.b, ptr noundef nonnull @.str.550) #18 ; 12 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mkdir(ptr noundef nonnull %i.c, i32 noundef 448) #18
  %.not45 = icmp eq i32 %i.d, 0
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.551, ptr noundef nonnull %i.c) #18
  tail call void @free(ptr noundef nonnull %i.c) #18
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = call i32 @cli_unarj_open(ptr noundef %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %1) #18 ; 3 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100
  %.not55 = icmp eq i32 %i.o, 0
  br i1 %.not55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @cli_rmdirs(ptr noundef nonnull %i.c) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @free(ptr noundef nonnull %i.c) #18
  %i.q = call ptr @cl_strerror(i32 noundef %i.g) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.552, ptr noundef %i.q) #18
  br label %bb.ab

bb.h:                                             ; preds = %.preheader, %bb.w
  %.0 = phi i32 [ %i.t, %bb.w ], [ 0, %.preheader ]
  store ptr null, ptr %1, align 8, !tbaa !190
  %i.r = call i32 @cli_unarj_prepare_file(ptr noundef nonnull %1) #18 ; 3 uses
  %.not47 = icmp eq i32 %i.r, 0
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call ptr @cl_strerror(i32 noundef %i.r) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.553, ptr noundef %i.s) #18
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.t = add nuw nsw i32 %.0, 1                   ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !190
  %i.v = load i32, ptr %i.h, align 8, !tbaa !191
  %i.w = zext i32 %i.v to i64
  %i.x = load i32, ptr %i.i, align 4, !tbaa !192
  %i.y = zext i32 %i.x to i64
  %i.z = load i32, ptr %i.j, align 8, !tbaa !193
  %i.aa = call i32 @cli_matchmeta(ptr noundef %0, ptr noundef %i.u, i64 noundef %i.w, i64 noundef %i.y, i32 noundef %i.z, i32 noundef %i.t, i32 noundef 0) #18
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @cli_rmdirs(ptr noundef nonnull %i.c) #18 ; 0 uses
  call void @free(ptr noundef %i.c) #18
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !192
  %i.ae = zext i32 %i.ad to i64
  %i.af = load i32, ptr %i.h, align 8, !tbaa !191
  %i.ag = zext i32 %i.af to i64
  %i.ah = call i32 @cli_checklimits(ptr noundef nonnull @.str.554, ptr noundef %0, i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef 0) #18
  %.not48 = icmp eq i32 %i.ah, 0
  br i1 %.not48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %1, align 8, !tbaa !190   ; 2 uses
  %.not52 = icmp eq ptr %i.ai, null
  br i1 %.not52, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ai) #18
  br label %bb.w

bb.o:                                             ; preds = %bb.l
  %i.aj = call i32 @cli_unarj_extract_file(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #18 ; 3 uses
  %.not49 = icmp eq i32 %i.aj, 0
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = call ptr @cl_strerror(i32 noundef %i.aj) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.555, ptr noundef %i.ak) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = load i32, ptr %i.k, align 4, !tbaa !194 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.an = call i64 @lseek(i32 noundef %i.al, i64 noundef 0, i32 noundef 0) #18
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.s, label %bb.t

end_hunk_0
