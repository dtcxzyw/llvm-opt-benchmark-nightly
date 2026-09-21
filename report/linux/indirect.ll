Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/indirect?download=true
inline.NumInlined: 95
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ext4_ind_map_blocks:bb.a
  %.2.lcssa = phi i64 [ 1, %bb.t ], [ %i.eu, %._crit_edge.loopexit ]
  store i64 0, ptr %2, align 8
  %i.ev = load i32, ptr %i.g, align 4
  %i.ew = zext i32 %i.ev to i64
  %i.ex = call i64 @llvm.umin.i64(i64 %.2.lcssa, i64 %i.ew)
  %i.ey = trunc nuw i64 %i.ex to i32
  store i32 %i.ey, ptr %i.g, align 4
  br label %.thread

bb.w:                                             ; preds = %bb.s
  %i.ez = load i32, ptr %i.c, align 4
  %i.fa = icmp eq i32 %i.ez, -5
  br i1 %i.fa, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = load ptr, ptr %i.ab, align 8
  %i.fc = getelementptr i8, ptr %i.fb, i64 864
  %.val = load ptr, ptr %i.fc, align 32
  %i.fd = getelementptr i8, ptr %.val, i64 104
  %.val.val = load ptr, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %.val.val, i64 100
  %.val.val.val = load i32, ptr %i.fe, align 4
  %i.ff = and i32 %.val.val.val, 512
  %.not123 = icmp eq i32 %i.ff, 0
  br i1 %.not123, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ind_map_blocks, i32 noundef 604, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.5) #10
  store i32 -117, ptr %i.c, align 4
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, i8 0, i64 48, i1 false)
  store ptr %1, ptr %4, align 8
  %i.fh = load i32, ptr %i.e, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.fh, ptr %i.fi, align 4
  %i.fj = load i16, ptr %1, align 8
  %i.fk = icmp slt i16 %i.fj, -28672
  br i1 %i.fk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 32, ptr %i.fl, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fm = phi i32 [ 32, %bb.aa ], [ 0, %bb.z ]    ; 2 uses
  %i.fn = and i32 %3, 4
  %.not97 = icmp eq i32 %i.fn, 0
  br i1 %.not97, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fp = or disjoint i32 %i.fm, 1024             ; 2 uses
  store i32 %i.fp, ptr %i.fo, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fq = phi i32 [ %i.fp, %bb.ac ], [ %i.fm, %bb.ab ]
  %i.fr = and i32 %3, 32
  %.not98 = icmp eq i32 %i.fr, 0
  br i1 %.not98, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ft = or i32 %i.fq, 8192
  store i32 %i.ft, ptr %i.fs, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fu = getelementptr i8, ptr %i.bt, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8            ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.fv, null          ; 2 uses
  br i1 %.not.i.i101, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr i8, ptr %i.fv, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fy = getelementptr i8, ptr %1, i64 -232
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fz = phi ptr [ %i.fx, %bb.ag ], [ %i.fy, %bb.ah ]
  %i.ga = load ptr, ptr %i.bt, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.pn.i.i = phi ptr [ %i.ga, %bb.ai ], [ %.0.i.i, %bb.ak ]
  %.0.i.i = getelementptr i8, ptr %.pn.i.i, i64 -4 ; 3 uses
  %.not19.i.i = icmp ult ptr %.0.i.i, %i.fz
  br i1 %.not19.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = load i32, ptr %.0.i.i, align 4          ; 2 uses
  %.not21.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not21.i.i, label %bb.aj, label %bb.al, !llvm.loop !19

bb.al:                                            ; preds = %bb.ak
  %i.gc = zext i32 %i.gb to i64
  br label %ext4_find_goal.exit

bb.am:                                            ; preds = %bb.aj
  br i1 %.not.i.i101, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr i8, ptr %i.fv, i64 24
  %i.ge = load i64, ptr %i.gd, align 8
  br label %ext4_find_goal.exit

bb.ao:                                            ; preds = %bb.am
  %i.gf = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #10
  br label %ext4_find_goal.exit

ext4_find_goal.exit:                              ; preds = %bb.al, %bb.an, %bb.ao
  %.015.i.i = phi i64 [ %i.gc, %bb.al ], [ %i.ge, %bb.an ], [ %i.gf, %bb.ao ]
  %i.gg = and i64 %.015.i.i, 4294967295
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 %i.gg, ptr %i.gh, align 8
  %i.gi = zext nneg i32 %.060.i.ph to i64         ; 2 uses
  %i.gj = getelementptr [24 x i8], ptr %5, i64 %i.gi ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 24
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = add i32 %i.go, -1                       ; 7 uses
  %i.gq = load i32, ptr %i.g, align 4             ; 3 uses
  %i.gr = icmp sgt i32 %i.gp, 0
  br i1 %i.gr, label %ext4_blks_to_allocate.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %ext4_find_goal.exit
  %i.gs = icmp ult i32 %i.gq, 2
  %.not20.i = icmp eq i32 %i.bs, 0
  %or.cond21.i = or i1 %.not20.i, %i.gs
  br i1 %or.cond21.i, label %ext4_blks_to_allocate.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.gt = load ptr, ptr %i.bt, align 8
  %i.gu = add i32 %i.bs, -1
  %i.gv = add i32 %i.gq, -2
  %umin.i = call i32 @llvm.umin.i32(i32 %i.gu, i32 %i.gv)
  %i.gw = add nuw i32 %umin.i, 2
  %wide.trip.count.i = zext i32 %i.gw to i64      ; 2 uses
  br label %bb.ap

ext4_blks_to_allocate.exit.thread:                ; preds = %ext4_find_goal.exit
  %i.gx = sub i32 %.0.i.ph, %i.bq
  %..i = call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %..i, ptr %i.gy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %.lr.ph97.i

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aq ] ; 3 uses
  %i.gz = getelementptr [4 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.aq, label %.critedge.loopexit.i

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.critedge.loopexit.i, label %bb.ap, !llvm.loop !20

.critedge.loopexit.i:                             ; preds = %bb.aq, %bb.ap
  %.017.ph.in.i = phi i64 [ %indvars.iv.i, %bb.ap ], [ %wide.trip.count.i, %bb.aq ]
  %.017.ph.i = trunc i64 %.017.ph.in.i to i32
  br label %ext4_blks_to_allocate.exit

ext4_blks_to_allocate.exit:                       ; preds = %.preheader.i, %.critedge.loopexit.i
  %.017.i = phi i32 [ %.017.ph.i, %.critedge.loopexit.i ], [ 1, %.preheader.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %.017.i, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not93.i = icmp slt i32 %i.gp, 0
  br i1 %.not93.i, label %ext4_alloc_branch.exit.thread, label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %ext4_blks_to_allocate.exit.thread, %ext4_blks_to_allocate.exit
  %i.hd = phi ptr [ %i.gy, %ext4_blks_to_allocate.exit.thread ], [ %i.hc, %ext4_blks_to_allocate.exit ] ; 4 uses
  %.pn124 = ptrtoint ptr %5 to i64
  %.pn.in = sub i64 %i.gl, %.pn124
  %.pn = sdiv exact i64 %.pn.in, 6
  %i.he = getelementptr i8, ptr %i.d, i64 %.pn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  store i32 0, ptr %i.b, align 4, !annotation !11
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = zext nneg i32 %i.gp to i64
  %i.hh = getelementptr [8 x i8], ptr %i.a, i64 %i.hg ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bg, %.lr.ph97.i
  %.095.i = phi i32 [ 1, %.lr.ph97.i ], [ %.2.i, %bb.bg ] ; 2 uses
  %.06994.i = phi i32 [ 0, %.lr.ph97.i ], [ %i.kr, %bb.bg ] ; 10 uses
  %i.hi = icmp eq i32 %.06994.i, %i.gp            ; 2 uses
  br i1 %i.hi, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hj = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.b) #10
  store i64 %i.hj, ptr %i.hh, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.hk = load ptr, ptr %4, align 8
  %i.hl = load i64, ptr %i.gh, align 8
  %i.hm = load i32, ptr %i.hf, align 8
  %i.hn = and i32 %i.hm, 1024
  %i.ho = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %i.hk, i64 noundef %i.hl, i32 noundef %i.hn, ptr noundef null, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.hp = sext i32 %.06994.i to i64               ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %i.a, i64 %i.hp
  store i64 %i.ho, ptr %i.hq, align 8
  store i64 %i.ho, ptr %i.gh, align 8
  %i.hr = getelementptr [24 x i8], ptr %i.bt, i64 %i.hp
  %i.hs = getelementptr i8, ptr %i.hr, i64 40
  store ptr null, ptr %i.hs, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ht = load i32, ptr %i.b, align 4
  %.not76.i = icmp eq i32 %i.ht, 0
  br i1 %.not76.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hu = add i32 %.06994.i, -1
  br label %.loopexit83.i

bb.aw:                                            ; preds = %bb.au
  %i.hv = sext i32 %.06994.i to i64               ; 3 uses
  %i.hw = getelementptr [8 x i8], ptr %i.a, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8            ; 3 uses
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = getelementptr [24 x i8], ptr %i.bt, i64 %i.hv ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  store i32 %i.hy, ptr %i.ia, align 8
  %i.ib = icmp eq i32 %.06994.i, 0
  br i1 %i.ib, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ic = load ptr, ptr %4, align 8
  %i.id = getelementptr i8, ptr %i.ic, i64 40
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %i.if = add i32 %.06994.i, -1
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr [8 x i8], ptr %i.a, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = getelementptr i8, ptr %i.ie, i64 24
  %.val.i105 = load i64, ptr %i.ij, align 8
  %i.ik = getelementptr i8, ptr %i.ie, i64 192
  %.val81.i = load ptr, ptr %i.ik, align 64       ; 2 uses
  %i.il = trunc i64 %.val.i105 to i32
  %i.im = getelementptr i8, ptr %.val81.i, i64 56
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = getelementptr i8, ptr %i.in, i64 56
  %.val.i.i.i = load i32, ptr %i.io, align 8
  %i.ip = and i32 %.val.i.i.i, -32905
  %i.iq = or disjoint i32 %i.ip, 32776
  %i.ir = call ptr @bdev_getblk(ptr noundef %.val81.i, i64 noundef %i.ii, i32 noundef %i.il, i32 noundef %i.iq) #10 ; 14 uses
  %i.is = getelementptr i8, ptr %i.hz, i64 16
  store ptr %i.ir, ptr %i.is, align 8
  %.not77.i = icmp eq ptr %i.ir, null
  br i1 %.not77.i, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  store i32 -12, ptr %i.b, align 4
  br label %.loopexit83.i

bb.az:                                            ; preds = %bb.ax
  %i.it = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.iu = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.ir, i64 2, ptr nonnull elementtype(i64) %i.ir) #9, !srcloc !39 ; 2 uses
  %i.iv = icmp ult i8 %i.iu, 2
  call void @llvm.assume(i1 %i.iv)
  %.not.not.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not.not.i.i, label %lock_buffer.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @__lock_buffer(ptr noundef nonnull %i.ir) #10
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %bb.ba, %bb.az
  %i.iw = load ptr, ptr %4, align 8
  %i.ix = getelementptr i8, ptr %i.iw, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_alloc_branch, i32 noundef 365, ptr noundef %0, ptr noundef %i.iy, ptr noundef nonnull %i.ir, i32 noundef 1) #10 ; 2 uses
  store i32 %i.iz, ptr %i.b, align 4
  %.not78.i = icmp eq i32 %i.iz, 0
  br i1 %.not78.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %lock_buffer.exit.i
  call void @unlock_buffer(ptr noundef nonnull %i.ir) #10
  br label %.loopexit83.i

bb.bc:                                            ; preds = %lock_buffer.exit.i
  %i.ja = getelementptr i8, ptr %i.ir, i64 40     ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr i8, ptr %i.ir, i64 32
  %i.jd = load i64, ptr %i.jc, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %i.jb, i8 0, i64 %i.jd, i1 false)
  %i.je = load ptr, ptr %i.ja, align 8
  %i.jf = getelementptr [4 x i8], ptr %i.he, i64 %i.hv
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr [4 x i8], ptr %i.je, i64 %i.jh ; 3 uses
  store ptr %i.ji, ptr %i.hz, align 8
  br i1 %i.hi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jj = load i32, ptr %i.hd, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1.i = phi i32 [ %i.jj, %bb.bd ], [ %.095.i, %bb.bc ] ; 5 uses
  %i.jk = icmp sgt i32 %.1.i, 0
  br i1 %i.jk, label %.lr.ph.i106.preheader, label %._crit_edge.i

.lr.ph.i106.preheader:                            ; preds = %bb.be
  %xtraiter199 = and i32 %.1.i, 7                 ; 3 uses
  %i.jl = icmp ult i32 %.1.i, 8
  br i1 %i.jl, label %.lr.ph.i106.epil.preheader, label %.lr.ph.i106.preheader.new

.lr.ph.i106.preheader.new:                        ; preds = %.lr.ph.i106.preheader
  %unroll_iter203 = and i32 %.1.i, 2147483640
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106, %.lr.ph.i106.preheader.new
  %.07291.i = phi ptr [ %i.ji, %.lr.ph.i106.preheader.new ], [ %i.kj, %.lr.ph.i106 ] ; 9 uses
  %.07390.i = phi i64 [ %i.hx, %.lr.ph.i106.preheader.new ], [ %i.kg, %.lr.ph.i106 ] ; 9 uses
  %niter204 = phi i32 [ 0, %.lr.ph.i106.preheader.new ], [ %niter204.next.7, %.lr.ph.i106 ]
  %i.jm = trunc i64 %.07390.i to i32
  %i.jn = getelementptr i8, ptr %.07291.i, i64 4
  store i32 %i.jm, ptr %.07291.i, align 4
  %i.jo = trunc i64 %.07390.i to i32
  %i.jp = add i32 %i.jo, 1
  %i.jq = getelementptr i8, ptr %.07291.i, i64 8
  store i32 %i.jp, ptr %i.jn, align 4
  %i.jr = trunc i64 %.07390.i to i32
  %i.js = add i32 %i.jr, 2
  %i.jt = getelementptr i8, ptr %.07291.i, i64 12
  store i32 %i.js, ptr %i.jq, align 4
  %i.ju = trunc i64 %.07390.i to i32
  %i.jv = add i32 %i.ju, 3
  %i.jw = getelementptr i8, ptr %.07291.i, i64 16
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jx = trunc i64 %.07390.i to i32
  %i.jy = add i32 %i.jx, 4
  %i.jz = getelementptr i8, ptr %.07291.i, i64 20
  store i32 %i.jy, ptr %i.jw, align 4
  %i.ka = trunc i64 %.07390.i to i32
  %i.kb = add i32 %i.ka, 5
  %i.kc = getelementptr i8, ptr %.07291.i, i64 24
  store i32 %i.kb, ptr %i.jz, align 4
  %i.kd = trunc i64 %.07390.i to i32
  %i.ke = add i32 %i.kd, 6
  %i.kf = getelementptr i8, ptr %.07291.i, i64 28
  store i32 %i.ke, ptr %i.kc, align 4
  %i.kg = add i64 %.07390.i, 8                    ; 2 uses
  %i.kh = trunc i64 %.07390.i to i32
  %i.ki = add i32 %i.kh, 7
  %i.kj = getelementptr i8, ptr %.07291.i, i64 32 ; 2 uses
  store i32 %i.ki, ptr %i.kf, align 4
  %niter204.next.7 = add nuw nsw i32 %niter204, 8 ; 2 uses
  %niter204.ncmp.7 = icmp eq i32 %niter204.next.7, %unroll_iter203
  br i1 %niter204.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i106, !llvm.loop !21

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i106
  %lcmp.mod201.not = icmp eq i32 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %._crit_edge.i, label %.lr.ph.i106.epil.preheader

.lr.ph.i106.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i106.preheader
  %.07291.i.epil.init = phi ptr [ %i.ji, %.lr.ph.i106.preheader ], [ %i.kj, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07390.i.epil.init = phi i64 [ %i.hx, %.lr.ph.i106.preheader ], [ %i.kg, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod202 = icmp ne i32 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i106.epil

.lr.ph.i106.epil:                                 ; preds = %.lr.ph.i106.epil, %.lr.ph.i106.epil.preheader
  %.07291.i.epil = phi ptr [ %i.km, %.lr.ph.i106.epil ], [ %.07291.i.epil.init, %.lr.ph.i106.epil.preheader ] ; 2 uses
  %.07390.i.epil = phi i64 [ %i.kk, %.lr.ph.i106.epil ], [ %.07390.i.epil.init, %.lr.ph.i106.epil.preheader ] ; 2 uses
  %epil.iter200 = phi i32 [ %epil.iter200.next, %.lr.ph.i106.epil ], [ 0, %.lr.ph.i106.epil.preheader ]
  %i.kk = add i64 %.07390.i.epil, 1
  %i.kl = trunc i64 %.07390.i.epil to i32
  %i.km = getelementptr i8, ptr %.07291.i.epil, i64 4
  store i32 %i.kl, ptr %.07291.i.epil, align 4
  %epil.iter200.next = add i32 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i32 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %._crit_edge.i, label %.lr.ph.i106.epil, !llvm.loop !22

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i106.epil, %bb.be
  %i.kn = load volatile i64, ptr %i.ir, align 8
  %i.ko = and i64 %i.kn, 1
  %.not82.i = icmp eq i64 %i.ko, 0
  br i1 %.not82.i, label %bb.bf, label %set_buffer_uptodate.exit.i

bb.bf:                                            ; preds = %._crit_edge.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ir, i32 1, ptr nonnull elementtype(i8) %i.ir) #9, !srcloc !40
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %bb.bf, %._crit_edge.i
  call void @unlock_buffer(ptr noundef nonnull %i.ir) #10
  %i.kp = load ptr, ptr %4, align 8
  %i.kq = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_alloc_branch, i32 noundef 385, ptr noundef %0, ptr noundef %i.kp, ptr noundef nonnull %i.ir) #10 ; 2 uses
  store i32 %i.kq, ptr %i.b, align 4
  %.not79.i = icmp eq i32 %i.kq, 0
  br i1 %.not79.i, label %bb.bg, label %.loopexit83.i

bb.bg:                                            ; preds = %set_buffer_uptodate.exit.i, %bb.aw
  %.2.i = phi i32 [ %.095.i, %bb.aw ], [ %.1.i, %set_buffer_uptodate.exit.i ]
  %i.kr = add i32 %.06994.i, 1                    ; 2 uses
  %.not.i = icmp sgt i32 %i.kr, %i.gp
  br i1 %.not.i, label %ext4_alloc_branch.exit.thread, label %bb.ar, !llvm.loop !23

.loopexit83.i:                                    ; preds = %set_buffer_uptodate.exit.i, %bb.bb, %bb.ay, %bb.av
  %.170.i = phi i32 [ %i.hu, %bb.av ], [ %.06994.i, %bb.ay ], [ %.06994.i, %bb.bb ], [ %.06994.i, %set_buffer_uptodate.exit.i ] ; 2 uses
  %i.ks = icmp eq i32 %.170.i, %i.gp
  br i1 %i.ks, label %bb.bh, label %bb.bi
end_hunk_0
