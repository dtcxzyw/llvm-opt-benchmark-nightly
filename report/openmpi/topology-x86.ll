Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-x86?download=true
inline.NumInlined: 78
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hwloc_look_x86:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.al = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.am, i8 -1, i64 28, i1 false)
  %i.an = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 -1, i64 28, i1 false)
  %i.ap = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aq, i8 -1, i64 28, i1 false)
  %i.ar = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.as, i8 -1, i64 28, i1 false)
  %i.at = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 -1, i64 28, i1 false)
  %i.av = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aw, i8 -1, i64 28, i1 false)
  %i.ax = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, i8 -1, i64 28, i1 false)
  %i.az = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1072
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 -1, i64 28, i1 false)
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !115

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod449 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod449)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bb = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv.epil
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 -1, i64 28, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !116

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  br i1 %.not140, label %bb.u, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bd = load i32, ptr %.0111, align 8, !tbaa !65 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.bd, 0
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  br i1 %.not42.i.i, label %.thread315, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %wide.trip.count.i.i = zext i32 %i.bd to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.bf, i64 %indvars.iv.i.i ; 8 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !68 ; 3 uses
  %i.bi = and i32 %i.bh, 1
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !69
  %.not34.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not34.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = and i32 %i.bh, 2
  %.not35.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not35.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !70
  %.not36.i.i = icmp eq i32 %.pre, %i.bn
  br i1 %.not36.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = and i32 %i.bh, 4
  %.not37.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !71
  %.not38.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not38.i.i, label %.critedge.i.i, label %bb.t

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !73 ; 2 uses
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !75
  br label %cpuid_or_from_dump.exit

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread315, label %bb.n, !llvm.loop !0

.thread315:                                       ; preds = %bb.t, %bb.m
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %.pre, i32 noundef 0, i32 noundef undef) #25 ; 0 uses
  store i32 0, ptr %i.a, align 4, !tbaa !12
  br label %bb.y

bb.u:                                             ; preds = %._crit_edge
  %i.cb = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 0, i32 0) #21, !srcloc !76 ; 3 uses
  %i.cc = extractvalue { i32, i64, i32, i32 } %i.cb, 0
  %i.cd = extractvalue { i32, i64, i32, i32 } %i.cb, 2
  %i.ce = extractvalue { i32, i64, i32, i32 } %i.cb, 3
  %.pre396 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %cpuid_or_from_dump.exit

cpuid_or_from_dump.exit:                          ; preds = %.critedge.i.i, %bb.u
  %i.cf = phi i32 [ %.pre396, %bb.u ], [ %i.bu, %.critedge.i.i ] ; 5 uses
  %.1279 = phi i32 [ %i.cd, %bb.u ], [ %i.bw, %.critedge.i.i ] ; 5 uses
  %.0275 = phi i32 [ %i.cc, %bb.u ], [ %i.bs, %.critedge.i.i ] ; 5 uses
  %storemerge.i = phi i32 [ %i.ce, %bb.u ], [ %i.by, %.critedge.i.i ] ; 5 uses
  %i.cg = icmp ne i32 %i.cf, 1970169159
  %i.ch = icmp ne i32 %.1279, 1818588270
  %or.cond7.not144 = select i1 %i.cg, i1 true, i1 %i.ch
  %i.ci = icmp ne i32 %storemerge.i, 1231384169
  %or.cond9.not = select i1 %or.cond7.not144, i1 true, i1 %i.ci
  br i1 %or.cond9.not, label %bb.v, label %bb.z

bb.v:                                             ; preds = %cpuid_or_from_dump.exit
  %i.cj = icmp eq i32 %i.cf, 1752462657
  %i.ck = icmp eq i32 %.1279, 1145913699
  %or.cond11 = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = icmp eq i32 %storemerge.i, 1769238117
  %or.cond13 = select i1 %or.cond11, i1 %i.cl, i1 false
  br i1 %or.cond13, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = icmp eq i32 %i.cf, 1953391939
  %i.cn = icmp eq i32 %.1279, 1936487777
  %or.cond15 = select i1 %i.cm, i1 %i.cn, i1 false
  %i.co = icmp eq i32 %storemerge.i, 1215460705
  %or.cond17 = select i1 %or.cond15, i1 %i.co, i1 false
  br i1 %or.cond17, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = icmp eq i32 %i.cf, 1750278176
  %i.cq = icmp eq i32 %.1279, 538995041
  %or.cond19 = select i1 %i.cp, i1 %i.cq, i1 false
  %i.cr = icmp eq i32 %storemerge.i, 1751608929
  %or.cond21 = select i1 %or.cond19, i1 %i.cr, i1 false
  br i1 %or.cond21, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread315, %bb.x
  %.1279286303311325 = phi i32 [ 0, %.thread315 ], [ %.1279, %bb.x ] ; 2 uses
  %.0275289302312324 = phi i32 [ 0, %.thread315 ], [ %.0275, %bb.x ]
  %storemerge.i290301313323 = phi i32 [ 0, %.thread315 ], [ %storemerge.i, %bb.x ] ; 2 uses
  %i.cs = phi i32 [ 0, %.thread315 ], [ %i.cf, %bb.x ] ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 1869052232
  %i.cu = icmp eq i32 %.1279286303311325, 1701734773
  %or.cond23 = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cv = icmp eq i32 %storemerge.i290301313323, 1852131182
  %or.cond25 = select i1 %or.cond23, i1 %i.cv, i1 false
  %spec.select = select i1 %or.cond25, i32 3, i32 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.x, %bb.v, %cpuid_or_from_dump.exit
  %or.cond9.not292 = phi i1 [ true, %bb.y ], [ false, %cpuid_or_from_dump.exit ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ] ; 2 uses
  %i.cw = phi i32 [ %i.cs, %bb.y ], [ 1970169159, %cpuid_or_from_dump.exit ], [ 1752462657, %bb.v ], [ 1953391939, %bb.w ], [ 1750278176, %bb.x ] ; 2 uses
  %storemerge.i291 = phi i32 [ %storemerge.i290301313323, %bb.y ], [ 1231384169, %cpuid_or_from_dump.exit ], [ 1769238117, %bb.v ], [ 1215460705, %bb.w ], [ 1751608929, %bb.x ] ; 2 uses
  %.0275288 = phi i32 [ %.0275289302312324, %bb.y ], [ %.0275, %cpuid_or_from_dump.exit ], [ %.0275, %bb.v ], [ %.0275, %bb.w ], [ %.0275, %bb.x ] ; 5 uses
  %.1279287 = phi i32 [ %.1279286303311325, %bb.y ], [ 1818588270, %cpuid_or_from_dump.exit ], [ 1145913699, %bb.v ], [ 1936487777, %bb.w ], [ 538995041, %bb.x ] ; 3 uses
  %.0117 = phi i32 [ %spec.select, %bb.y ], [ 0, %cpuid_or_from_dump.exit ], [ 1, %bb.v ], [ 2, %bb.w ], [ 2, %bb.x ] ; 2 uses
  %i.cx = icmp eq i32 %.0275288, 0
  br i1 %i.cx, label %look_procs.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not140, label %cpuid_or_from_dump.exit166.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr %.0111, align 8, !tbaa !65 ; 3 uses
  %.not42.i.i149 = icmp eq i32 %i.cy, 0
  br i1 %.not42.i.i149, label %._crit_edge.i.i157, label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66
  %wide.trip.count.i.i151 = zext i32 %i.cy to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %.lr.ph.i.i150
  %indvars.iv.i.i152 = phi i64 [ 0, %.lr.ph.i.i150 ], [ %indvars.iv.next.i.i155, %bb.ak ] ; 2 uses
  %i.db = getelementptr inbounds nuw [36 x i8], ptr %i.da, i64 %indvars.iv.i.i152 ; 8 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !68 ; 4 uses
  %i.dd = and i32 %i.dc, 1
  %.not.i.i153 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i153, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !69
  %.not34.i.i154 = icmp eq i32 %i.df, 1
  br i1 %.not34.i.i154, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dg = and i32 %i.dc, 2
  %.not35.i.i159 = icmp eq i32 %i.dg, 0
  br i1 %.not35.i.i159, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !70
  %.not36.i.i160 = icmp eq i32 %i.cw, %i.di
  br i1 %.not36.i.i160, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dj = and i32 %i.dc, 4
  %.not37.i.i161 = icmp eq i32 %i.dj, 0
  br i1 %.not37.i.i161, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !71
  %.not38.i.i162 = icmp eq i32 %.1279287, %i.dl
  br i1 %.not38.i.i162, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dm = and i32 %i.dc, 8
  %.not39.i.i163 = icmp eq i32 %i.dm, 0
  br i1 %.not39.i.i163, label %.critedge.i.i165, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !77
  %.not40.i.i164 = icmp eq i32 %storemerge.i291, %i.do
  br i1 %.not40.i.i164, label %.critedge.i.i165, label %bb.ak

.critedge.i.i165:                                 ; preds = %bb.aj, %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !73 ; 2 uses
  store i32 %i.dq, ptr %i.a, align 4, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !74
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !75
  br label %cpuid_or_from_dump.exit166

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad
  %indvars.iv.next.i.i155 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 2 uses
  %exitcond.not.i.i156 = icmp eq i64 %indvars.iv.next.i.i155, %wide.trip.count.i.i151
  br i1 %exitcond.not.i.i156, label %._crit_edge.i.i157, label %bb.ac, !llvm.loop !0

._crit_edge.i.i157:                               ; preds = %bb.ak, %bb.ab
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %i.cw, i32 noundef %.1279287, i32 noundef %storemerge.i291) #25 ; 0 uses
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %.pre397 = load i32, ptr %.0111, align 8, !tbaa !65
  br label %cpuid_or_from_dump.exit166

cpuid_or_from_dump.exit166.thread:                ; preds = %bb.aa
  %i.dx = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 1, i32 %.1279287) #21, !srcloc !76 ; 2 uses
  %i.dy = extractvalue { i32, i64, i32, i32 } %i.dx, 2 ; 2 uses
  %i.dz = extractvalue { i32, i64, i32, i32 } %i.dx, 3
  store i32 %i.dz, ptr %i.b, align 16, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.dy, ptr %i.ea, align 16, !tbaa !12
  %i.eb = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 -2147483648, i32 %i.dy) #21, !srcloc !76 ; 2 uses
  %i.ec = extractvalue { i32, i64, i32, i32 } %i.eb, 0 ; 4 uses
  %i.ed = icmp ugt i32 %.0275288, 6
  br i1 %i.ed, label %.thread335, label %.thread340

cpuid_or_from_dump.exit166:                       ; preds = %.critedge.i.i165, %._crit_edge.i.i157
  %i.ee = phi i32 [ %i.dq, %.critedge.i.i165 ], [ 0, %._crit_edge.i.i157 ] ; 2 uses
  %7 = phi i32 [ %i.cy, %.critedge.i.i165 ], [ %.pre397, %._crit_edge.i.i157 ] ; 2 uses
  %.2280 = phi i32 [ %i.ds, %.critedge.i.i165 ], [ 0, %._crit_edge.i.i157 ] ; 3 uses
  %storemerge.i158 = phi i32 [ %i.du, %.critedge.i.i165 ], [ 0, %._crit_edge.i.i157 ] ; 3 uses
  store i32 %storemerge.i158, ptr %i.b, align 16, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.2280, ptr %i.ef, align 16, !tbaa !12
  %.not42.i.i168 = icmp eq i32 %7, 0
  br i1 %.not42.i.i168, label %._crit_edge.i.i176, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %cpuid_or_from_dump.exit166
  %i.eg = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !66
  %wide.trip.count.i.i170 = zext i32 %7 to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph.i.i169
  %indvars.iv.i.i171 = phi i64 [ 0, %.lr.ph.i.i169 ], [ %indvars.iv.next.i.i174, %bb.at ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [36 x i8], ptr %i.eh, i64 %indvars.iv.i.i171 ; 9 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !68 ; 4 uses
  %i.ek = and i32 %i.ej, 1
  %.not.i.i172 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i172, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !69
  %.not34.i.i173 = icmp eq i32 %i.em, -2147483648
  br i1 %.not34.i.i173, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.en = and i32 %i.ej, 2
  %.not35.i.i178 = icmp eq i32 %i.en, 0
  br i1 %.not35.i.i178, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !70
  %.not36.i.i179 = icmp eq i32 %i.ee, %i.ep
  br i1 %.not36.i.i179, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eq = and i32 %i.ej, 4
  %.not37.i.i180 = icmp eq i32 %i.eq, 0
  br i1 %.not37.i.i180, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !71
  %.not38.i.i181 = icmp eq i32 %.2280, %i.es
  br i1 %.not38.i.i181, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.et = and i32 %i.ej, 8
  %.not39.i.i182 = icmp eq i32 %i.et, 0
  br i1 %.not39.i.i182, label %.critedge.i.i184, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !77
  %.not40.i.i183 = icmp eq i32 %storemerge.i158, %i.ev
  br i1 %.not40.i.i183, label %.critedge.i.i184, label %bb.at

.critedge.i.i184:                                 ; preds = %bb.as, %bb.ar
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !73 ; 2 uses
  store i32 %i.ez, ptr %i.a, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !75
  br label %cpuid_or_from_dump.exit185

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ao, %bb.am
  %indvars.iv.next.i.i174 = add nuw nsw i64 %indvars.iv.i.i171, 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq i64 %indvars.iv.next.i.i174, %wide.trip.count.i.i170
  br i1 %exitcond.not.i.i175, label %._crit_edge.i.i176, label %bb.al, !llvm.loop !0

._crit_edge.i.i176:                               ; preds = %bb.at, %cpuid_or_from_dump.exit166
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ff = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef %i.ee, i32 noundef %.2280, i32 noundef %storemerge.i158) #25 ; 0 uses
  store i32 0, ptr %i.a, align 4, !tbaa !12
  br label %cpuid_or_from_dump.exit185

cpuid_or_from_dump.exit185:                       ; preds = %.critedge.i.i184, %._crit_edge.i.i176
  %i.fg = phi i32 [ %i.ez, %.critedge.i.i184 ], [ 0, %._crit_edge.i.i176 ] ; 3 uses
  %.3 = phi i32 [ %i.fb, %.critedge.i.i184 ], [ 0, %._crit_edge.i.i176 ]
  %.1276 = phi i32 [ %i.ex, %.critedge.i.i184 ], [ 0, %._crit_edge.i.i176 ] ; 3 uses
  %storemerge.i177 = phi i32 [ %i.fd, %.critedge.i.i184 ], [ 0, %._crit_edge.i.i176 ] ; 3 uses
  %i.fh = icmp ugt i32 %.0275288, 6
  br i1 %i.fh, label %bb.au, label %bb.be

bb.au:                                            ; preds = %cpuid_or_from_dump.exit185
  %i.fi = load i32, ptr %.0111, align 8, !tbaa !65 ; 2 uses
  %.not42.i.i187 = icmp eq i32 %i.fi, 0
  br i1 %.not42.i.i187, label %._crit_edge.i.i195, label %.lr.ph.i.i188

.lr.ph.i.i188:                                    ; preds = %bb.au
  %i.fj = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !66
  %wide.trip.count.i.i189 = zext i32 %i.fi to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.bd, %.lr.ph.i.i188
  %indvars.iv.i.i190 = phi i64 [ 0, %.lr.ph.i.i188 ], [ %indvars.iv.next.i.i193, %bb.bd ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [36 x i8], ptr %i.fk, i64 %indvars.iv.i.i190 ; 8 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !68 ; 4 uses
  %i.fn = and i32 %i.fm, 1
  %.not.i.i191 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i191, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !69
  %.not34.i.i192 = icmp eq i32 %i.fp, 7
  br i1 %.not34.i.i192, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fq = and i32 %i.fm, 2
  %.not35.i.i197 = icmp eq i32 %i.fq, 0
  br i1 %.not35.i.i197, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !70
  %.not36.i.i198 = icmp eq i32 %i.fg, %i.fs
  br i1 %.not36.i.i198, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ft = and i32 %i.fm, 4
  %.not37.i.i199 = icmp eq i32 %i.ft, 0
  br i1 %.not37.i.i199, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !71
  %.not38.i.i200 = icmp eq i32 %i.fv, 0
  br i1 %.not38.i.i200, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fw = and i32 %i.fm, 8
  %.not39.i.i201 = icmp eq i32 %i.fw, 0
  br i1 %.not39.i.i201, label %.critedge.i.i203, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !77
  %.not40.i.i202 = icmp eq i32 %storemerge.i177, %i.fy
  br i1 %.not40.i.i202, label %.critedge.i.i203, label %bb.bd

.critedge.i.i203:                                 ; preds = %bb.bc, %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !73 ; 2 uses
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !74
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !75
  br label %cpuid_or_from_dump.exit204

bb.bd:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.aw
  %indvars.iv.next.i.i193 = add nuw nsw i64 %indvars.iv.i.i190, 1 ; 2 uses
  %exitcond.not.i.i194 = icmp eq i64 %indvars.iv.next.i.i193, %wide.trip.count.i.i189
  br i1 %exitcond.not.i.i194, label %._crit_edge.i.i195, label %bb.av, !llvm.loop !0

._crit_edge.i.i195:                               ; preds = %bb.bd, %bb.au
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.17, i32 noundef 7, i32 noundef %i.fg, i32 noundef 0, i32 noundef %storemerge.i177) #25 ; 0 uses
  store i32 0, ptr %i.a, align 4, !tbaa !12
  br label %cpuid_or_from_dump.exit204

.thread335:                                       ; preds = %cpuid_or_from_dump.exit166.thread
  %i.gh = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 7, i32 0) #21, !srcloc !76 ; 2 uses
  %i.gi = extractvalue { i32, i64, i32, i32 } %i.gh, 2
  %i.gj = extractvalue { i32, i64, i32, i32 } %i.gh, 3
  %.pre397.a = load i32, ptr %i.a, align 4, !tbaa !12
  br label %cpuid_or_from_dump.exit204

cpuid_or_from_dump.exit204:                       ; preds = %.critedge.i.i203, %._crit_edge.i.i195, %.thread335
  %i.gk = phi i32 [ %.pre397.a, %.thread335 ], [ 0, %._crit_edge.i.i195 ], [ %i.ga, %.critedge.i.i203 ] ; 2 uses
  %.1276333338 = phi i32 [ %i.ec, %.thread335 ], [ %.1276, %._crit_edge.i.i195 ], [ %.1276, %.critedge.i.i203 ]
  %.4 = phi i32 [ %i.gi, %.thread335 ], [ 0, %._crit_edge.i.i195 ], [ %i.gc, %.critedge.i.i203 ]
  %storemerge.i196 = phi i32 [ %i.gj, %.thread335 ], [ 0, %._crit_edge.i.i195 ], [ %i.ge, %.critedge.i.i203 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %storemerge.i196, ptr %i.gm, align 8, !tbaa !12
  br label %bb.be

bb.be:                                            ; preds = %cpuid_or_from_dump.exit204, %cpuid_or_from_dump.exit185
  %i.gn = phi i32 [ %storemerge.i196, %cpuid_or_from_dump.exit204 ], [ 0, %cpuid_or_from_dump.exit185 ] ; 4 uses
  %i.go = phi i32 [ %i.gk, %cpuid_or_from_dump.exit204 ], [ %i.fg, %cpuid_or_from_dump.exit185 ] ; 2 uses
  %.1276332 = phi i32 [ %.1276333338, %cpuid_or_from_dump.exit204 ], [ %.1276, %cpuid_or_from_dump.exit185 ] ; 5 uses
  %.0278 = phi i32 [ %.4, %cpuid_or_from_dump.exit204 ], [ %.3, %cpuid_or_from_dump.exit185 ] ; 3 uses
  %.0277 = phi i32 [ %storemerge.i196, %cpuid_or_from_dump.exit204 ], [ %storemerge.i177, %cpuid_or_from_dump.exit185 ] ; 2 uses
  %i.gp = icmp ugt i32 %.1276332, -2147483648
  %or.cond27 = and i1 %or.cond9.not292, %i.gp
  br i1 %or.cond27, label %bb.bf, label %bb.bq

.thread340:                                       ; preds = %cpuid_or_from_dump.exit166.thread
  %i.gq = extractvalue { i32, i64, i32, i32 } %i.eb, 2
  %i.gr = icmp ugt i32 %i.ec, -2147483648
  %or.cond27344 = and i1 %or.cond9.not292, %i.gr
  br i1 %or.cond27344, label %.thread349, label %bb.bq

end_hunk_0
begin_hunk_1_@hwloc_look_x86:bb.a
bb.cb:                                            ; preds = %bb.ca
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !66
  call void @free(ptr noundef %i.it) #21
  br label %cpuiddump_free.exit.i

cpuiddump_free.exit.i:                            ; preds = %bb.cb, %bb.ca
  call void @free(ptr noundef nonnull %.0.i) #21
  br label %bb.cc

bb.cc:                                            ; preds = %cpuiddump_free.exit.i, %bb.bz, %bb.by, %bb.bw, %bb.bv
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bu, !llvm.loop !118

._crit_edge.i:                                    ; preds = %bb.cc, %bb.bt
  %i.iu = load ptr, ptr %i.ic, align 8, !tbaa !26
  %.not76.i = icmp eq ptr %i.iu, null
  br i1 %.not76.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %._crit_edge.i
  %i.iv = call i32 %.0115(ptr noundef %i.ia, ptr noundef %.068.i, i32 noundef 0) #21, !inline_history !117 ; 0 uses
  call void @hwloc_bitmap_free(ptr noundef %.067.i) #21
  call void @hwloc_bitmap_free(ptr noundef %.068.i) #21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !25
  %.not77.i = icmp eq i32 %i.ix, 0
  br i1 %.not77.i, label %look_procs.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.val87.i = load ptr, ptr %i.e, align 8, !tbaa !32
  %.val88.i = load ptr, ptr %i.c, align 8, !tbaa !19
  %.val88.val.i = load i32, ptr %.val88.i, align 8, !tbaa !31
  call fastcc void @summarize(ptr %.val87.i, i32 %.val88.val.i, ptr noundef nonnull %i.ai, i64 noundef range(i64 0, 4) %1)
  %i.iy = and i32 %i.hy, 32768
  %.not78.i = icmp eq i32 %i.iy, 0
  br i1 %.not78.i, label %look_procs.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iz = call noalias ptr @hwloc_bitmap_alloc() #21 ; 4 uses
  %i.ja = call noalias ptr @hwloc_bitmap_alloc() #21 ; 4 uses
  br i1 %.not94.i, label %._crit_edge93.i, label %.lr.ph92.preheader.i

.lr.ph92.preheader.i:                             ; preds = %bb.cg
  %wide.trip.count100.i = zext i32 %i.ib to i64
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.ci, %.lr.ph92.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph92.preheader.i ], [ %indvars.iv.next98.i, %bb.ci ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv97.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 140
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !80
  switch i32 %i.jd, label %bb.ci [
    i32 32, label %.sink.split.i
    i32 64, label %bb.ch
  ]

bb.ch:                                            ; preds = %.lr.ph92.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ch, %.lr.ph92.i
  %.sink.i = phi ptr [ %i.ja, %bb.ch ], [ %i.iz, %.lr.ph92.i ]
  %i.je = trunc nuw i64 %indvars.iv97.i to i32
  %i.jf = call i32 @hwloc_bitmap_set(ptr noundef %.sink.i, i32 noundef %i.je) #21 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.sink.split.i, %.lr.ph92.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count100.i
  br i1 %exitcond101.not.i, label %._crit_edge93.i, label %.lr.ph92.i, !llvm.loop !119

._crit_edge93.i:                                  ; preds = %bb.ci, %bb.cg
  %i.jg = call i32 @hwloc_bitmap_iszero(ptr noundef %i.iz) #24
  %.not79.i = icmp eq i32 %i.jg, 0
  br i1 %.not79.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %._crit_edge93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @.str.20, ptr %2, align 8, !tbaa !82
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.21, ptr %i.jh, align 8, !tbaa !83
  %i.ji = call i32 @hwloc_internal_cpukinds_register(ptr noundef %i.ia, ptr noundef %i.iz, i32 noundef -1, ptr noundef nonnull %2, i32 noundef 1, i64 noundef 0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.cl

bb.ck:                                            ; preds = %._crit_edge93.i
  call void @hwloc_bitmap_free(ptr noundef %i.iz) #21
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jj = call i32 @hwloc_bitmap_iszero(ptr noundef %i.ja) #24
  %.not80.i = icmp eq i32 %i.jj, 0
  br i1 %.not80.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @.str.20, ptr %3, align 8, !tbaa !82
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.22, ptr %i.jk, align 8, !tbaa !83
  %i.jl = call i32 @hwloc_internal_cpukinds_register(ptr noundef %i.ia, ptr noundef %i.ja, i32 noundef -1, ptr noundef nonnull %3, i32 noundef 1, i64 noundef 0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %look_procs.exit.thread

bb.cn:                                            ; preds = %bb.cl
  call void @hwloc_bitmap_free(ptr noundef %i.ja) #21
  br label %look_procs.exit.thread

look_procs.exit:                                  ; preds = %bb.br
  call void @hwloc_bitmap_free(ptr noundef %i.ie) #21
  %i.jm = icmp eq i32 %i.g, 1
  br i1 %i.jm, label %look_procs.exit.thread.thread, label %look_procs.exit.thread

look_procs.exit.thread.thread:                    ; preds = %look_procs.exit
  %.val = load ptr, ptr %i.c, align 8, !tbaa !19
  call fastcc void @look_proc(ptr %.val, ptr noundef %i.ai, i64 noundef %1, i32 noundef %.0275288, i32 noundef %.1276332345, ptr noundef %i.b, i32 noundef %.0117, ptr noundef %.0111)
  %.val146 = load ptr, ptr %i.e, align 8, !tbaa !32
  %.val147 = load ptr, ptr %i.c, align 8, !tbaa !19
  %.val147.val = load i32, ptr %.val147, align 8, !tbaa !31
  call fastcc void @summarize(ptr %.val146, i32 %.val147.val, ptr noundef %i.ai, i64 noundef %1)
  br label %.lr.ph377.preheader

look_procs.exit.thread:                           ; preds = %bb.ce, %bb.cf, %bb.cn, %bb.cm, %look_procs.exit, %bb.z
  %.1 = phi i32 [ -1, %bb.z ], [ 0, %bb.ce ], [ -1, %look_procs.exit ], [ 0, %bb.cm ], [ 0, %bb.cn ], [ 0, %bb.cf ] ; 2 uses
  br i1 %.not379, label %._crit_edge378, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %look_procs.exit.thread.thread, %look_procs.exit.thread
  %.1420 = phi i32 [ 0, %look_procs.exit.thread.thread ], [ %.1, %look_procs.exit.thread ]
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %.lr.ph377
  %indvars.iv391 = phi i64 [ 0, %.lr.ph377.preheader ], [ %indvars.iv.next392, %.lr.ph377 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [152 x i8], ptr %i.ai, i64 %indvars.iv391 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !84
  call void @free(ptr noundef %i.jp) #21
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !85
  call void @free(ptr noundef %i.jr) #21
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %i.ah
  br i1 %exitcond395.not, label %._crit_edge378, label %.lr.ph377, !llvm.loop !120

._crit_edge378:                                   ; preds = %.lr.ph377, %look_procs.exit.thread
  %.1421 = phi i32 [ %.1, %look_procs.exit.thread ], [ %.1420, %.lr.ph377 ]
  call void @free(ptr noundef %i.ai) #21
  br label %bb.co

.thread358:                                       ; preds = %bb.b, %bb.e
  call void @hwloc_bitmap_free(ptr noundef null) #21
  br label %bb.cr

bb.co:                                            ; preds = %._crit_edge378, %bb.l, %bb.g
  %.1114 = phi ptr [ %.0113, %bb.l ], [ %.0113, %._crit_edge378 ], [ null, %bb.g ]
  %.2 = phi i32 [ -1, %bb.l ], [ %.1421, %._crit_edge378 ], [ -1, %bb.g ] ; 2 uses
  call void @hwloc_bitmap_free(ptr noundef %.1114) #21
  %.not145 = icmp eq ptr %.0111, null
  br i1 %.not145, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.js = load i32, ptr %.0111, align 8, !tbaa !65
  %.not.i226 = icmp eq i32 %i.js, 0
  br i1 %.not.i226, label %cpuiddump_free.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jt = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !66
  call void @free(ptr noundef %i.ju) #21
  br label %cpuiddump_free.exit

cpuiddump_free.exit:                              ; preds = %bb.cp, %bb.cq
  call void @free(ptr noundef nonnull %.0111) #21
  br label %bb.cr

bb.cr:                                            ; preds = %.thread358, %cpuiddump_free.exit, %bb.co
  %.2363 = phi i32 [ -1, %.thread358 ], [ %.2, %cpuiddump_free.exit ], [ %.2, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2363
}

declare i32 @hwloc_obj_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hwloc_alloc_root_sets(ptr noundef) local_unnamed_addr #2

declare void @hwloc_setup_pu_level(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @hwloc_add_uname_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @hwloc_set_native_binding_hooks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @cpuiddump_read(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.11, i32 noundef %1) #25 ; 0 uses
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.f = add i64 %i.e, 15                         ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #22 ; 6 uses
  %.not47 = icmp eq ptr %i.g, null
  br i1 %.not47, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef nonnull %0, i32 noundef %1) #21 ; 0 uses
  %i.i = tail call noalias ptr @fopen(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13) ; 6 uses
  %.not48 = icmp eq ptr %i.i, null
  br i1 %.not48, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.g) #25 ; 0 uses
  br label %bb.m

.preheader:                                       ; preds = %bb.d, %.preheader
  %.0 = phi i32 [ %i.m, %.preheader ], [ 0, %bb.d ] ; 3 uses
  %i.l = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef nonnull %i.i)
  %.not49 = icmp eq ptr %i.l, null
  %i.m = add i32 %.0, 1
  br i1 %.not49, label %bb.f, label %.preheader, !llvm.loop !124

bb.f:                                             ; preds = %.preheader
  %i.n = zext i32 %.0 to i64
  %i.o = mul nuw nsw i64 %i.n, 36
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #22 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !66
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.15, i32 noundef %.0, i32 noundef %1) #25 ; 0 uses
  %i.t = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.u = call i32 @fseek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 0) ; 0 uses
  br label %.outer

.outer:                                           ; preds = %bb.k, %bb.h
  %.041.ph = phi ptr [ %.142, %bb.k ], [ %i.p, %bb.h ] ; 10 uses
  %.1.ph = phi i32 [ %.2, %bb.k ], [ 0, %bb.h ]   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.j
  %i.v = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef nonnull %i.i)
  %.not51 = icmp eq ptr %i.v, null
  br i1 %.not51, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.a, align 16, !tbaa !29
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.i, label %bb.k, !llvm.loop !125

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.041.ph, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %.041.ph, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.041.ph, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %.041.ph, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.041.ph, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %.041.ph, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.041.ph, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %.041.ph, i64 32
  %i.ag = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16, ptr noundef %.041.ph, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af) #21
  %i.ah = icmp eq i32 %i.ag, 9                    ; 2 uses
  %.142.idx = select i1 %i.ah, i64 36, i64 0
  %.142 = getelementptr inbounds nuw i8, ptr %.041.ph, i64 %.142.idx
  %i.ai = zext i1 %i.ah to i32
  %.2 = add i32 %.1.ph, %i.ai
  br label %.outer, !llvm.loop !125

bb.l:                                             ; preds = %bb.i
  store i32 %.1.ph, ptr %i.b, align 8, !tbaa !65
  %i.aj = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @free(ptr noundef %i.g) #21
  br label %bb.o

bb.m:                                             ; preds = %bb.g, %bb.e
  call void @free(ptr noundef nonnull %i.g) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.m
  call void @free(ptr noundef nonnull %i.b) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n, %bb.l
  %.043 = phi ptr [ %i.b, %bb.l ], [ null, %bb.n ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.043
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @fake_get_cpubind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) unnamed_addr #12 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @fake_set_cpubind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) unnamed_addr #12 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc void @cpuid_or_from_dump(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not42.i = icmp eq i32 %i.a, 0
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %wide.trip.count.i = zext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.d = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv.i ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68   ; 4 uses
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %0, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69
  %.not34.i = icmp eq i32 %i.g, %i.i
  br i1 %.not34.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = and i32 %i.e, 2
  %.not35.i = icmp eq i32 %i.j, 0
  br i1 %.not35.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %1, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70
  %.not36.i = icmp eq i32 %i.k, %i.m
  br i1 %.not36.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = and i32 %i.e, 4
  %.not37.i = icmp eq i32 %i.n, 0
  br i1 %.not37.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %2, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !71
  %.not38.i = icmp eq i32 %i.o, %i.q
  br i1 %.not38.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = and i32 %i.e, 8
  %.not39.i = icmp eq i32 %i.r, 0
  br i1 %.not39.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %3, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !77
  %.not40.i = icmp eq i32 %i.s, %i.u
  br i1 %.not40.i, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !72
  store i32 %i.w, ptr %0, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !73
  store i32 %i.y, ptr %1, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !74
end_hunk_1
