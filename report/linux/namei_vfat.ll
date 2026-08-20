inline.NumInlined: 127
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@vfat_add_entry:bb.a

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  store i8 55, ptr %i.iw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !10
  %i.jk = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %7) #16
  %.not.i201.6.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i201.6.i.i, label %bb.cb, label %vfat_find_form.exit204.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.jl = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i.i203.6.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i203.6.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @__brelse(ptr noundef nonnull %i.jl) #16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  store i8 56, ptr %i.iw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !10
  %i.jm = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %7) #16
  %.not.i201.7.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i201.7.i.i, label %bb.ce, label %vfat_find_form.exit204.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.jn = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i.i203.7.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i203.7.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @__brelse(ptr noundef nonnull %i.jn) #16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  store i8 57, ptr %i.iw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !10
  %i.jo = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %7) #16
  %.not.i201.8.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i201.8.i.i, label %bb.ch, label %vfat_find_form.exit204.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.jp = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i.i203.8.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i203.8.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @__brelse(ptr noundef nonnull %i.jp) #16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.jq = load volatile i64, ptr @jiffies, align 64
  %i.jr = trunc i64 %i.jq to i32                  ; 2 uses
  %i.js = load volatile i64, ptr @jiffies, align 64
  %i.jt = icmp sgt i32 %.5.i.i, 2
  br i1 %i.jt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 32, ptr %i.ju, align 1
  %.pre356.i.i = sext i32 %.3245.i.i to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pre-phi357.i.i = phi i64 [ %.pre356.i.i, %bb.ck ], [ %.pre-phi.i.i, %bb.cj ]
  %i.jv = getelementptr i8, ptr %i.f, i64 %.pre-phi357.i.i ; 4 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 4
  store i8 126, ptr %i.jw, align 1
  %i.jx = lshr i64 %i.js, 16
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i8 %i.jy, 7
  %i.ka = add nuw nsw i8 %i.jz, 49
  %i.kb = getelementptr i8, ptr %i.jv, i64 5
  store i8 %i.ka, ptr %i.kb, align 1
  %i.kc = and i32 %i.jr, 65535
  %i.kd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %i.kc) #16 ; 0 uses
  %i.ke = load i32, ptr %i.c, align 4
  store i32 %i.ke, ptr %i.jv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !10
  %i.kf = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %6) #16
  %.not.i205331.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not.i205331.i.i, label %.lr.ph334.i.i, label %vfat_find_form.exit208.i.i

.lr.ph334.i.i:                                    ; preds = %bb.cl
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %.lr.ph334.i.i
  %.2126332.i.i = phi i32 [ %i.jr, %.lr.ph334.i.i ], [ %i.ki, %bb.co ]
  %i.kh = load ptr, ptr %i.kg, align 8            ; 2 uses
  %.not.i.i207.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i207.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @__brelse(ptr noundef nonnull %i.kh) #16
  br label %bb.co

vfat_find_form.exit208.i.i:                       ; preds = %bb.co, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.thread.i

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ki = add i32 %.2126332.i.i, -11              ; 2 uses
  %i.kj = and i32 %i.ki, 65535
  %i.kk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %i.kj) #16 ; 0 uses
  %i.kl = load i32, ptr %i.c, align 4
  store i32 %i.kl, ptr %i.jv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !10
  %i.km = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %6) #16
  %.not.i205.i.i = icmp eq i32 %i.km, 0
  br i1 %.not.i205.i.i, label %bb.cm, label %vfat_find_form.exit208.i.i

vfat_create_shortname.exit.i:                     ; preds = %vfat_find_form.exit.thread.i.i, %._crit_edge310.i.i, %.split.i.i
  %.0152.i.i = phi i32 [ -17, %vfat_find_form.exit.thread.i.i ], [ -22, %._crit_edge310.i.i ], [ -22, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %vfat_build_slots.exit.thread47

.thread.i:                                        ; preds = %vfat_find_form.exit208.i.i, %vfat_find_form.exit204.i.i, %vfat_find_form.exit200.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ay
  %i.kn = and i8 %.sroa.0218.1242.i.i, 2
  %.not178.i.i = icmp eq i8 %i.kn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ko = and i8 %.sroa.0.1.i.i, 2
  %.not136137.i = icmp eq i8 %i.ko, 0
  %.not136.i = select i1 %.not178.i.i, i1 true, i1 %.not136137.i
  br i1 %.not136.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %.thread.i
  %i.kp = load i8, ptr %i.f, align 1              ; 2 uses
  %i.kq = call i8 @llvm.fshl.i8(i8 %i.kp, i8 %i.kp, i8 7)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = add i8 %i.kq, %i.ks                     ; 2 uses
  %i.ku = call i8 @llvm.fshl.i8(i8 %i.kt, i8 %i.kt, i8 7)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = add i8 %i.ku, %i.kw                     ; 2 uses
  %i.ky = call i8 @llvm.fshl.i8(i8 %i.kx, i8 %i.kx, i8 7)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = add i8 %i.ky, %i.la                     ; 2 uses
  %i.lc = call i8 @llvm.fshl.i8(i8 %i.lb, i8 %i.lb, i8 7)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = add i8 %i.lc, %i.le                     ; 2 uses
  %i.lg = call i8 @llvm.fshl.i8(i8 %i.lf, i8 %i.lf, i8 7)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = add i8 %i.lg, %i.li                     ; 2 uses
  %i.lk = call i8 @llvm.fshl.i8(i8 %i.lj, i8 %i.lj, i8 7)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = add i8 %i.lk, %i.lm                     ; 2 uses
  %i.lo = call i8 @llvm.fshl.i8(i8 %i.ln, i8 %i.ln, i8 7)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = add i8 %i.lo, %i.lq                     ; 2 uses
  %i.ls = call i8 @llvm.fshl.i8(i8 %i.lr, i8 %i.lr, i8 7)
  %i.lt = load i8, ptr %i.hy, align 1
  %i.lu = add i8 %i.ls, %i.lt                     ; 2 uses
  %i.lv = call i8 @llvm.fshl.i8(i8 %i.lu, i8 %i.lu, i8 7)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = add i8 %i.lv, %i.lx                     ; 2 uses
  %i.lz = call i8 @llvm.fshl.i8(i8 %i.ly, i8 %i.ly, i8 7)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.mb = load i8, ptr %i.ma, align 1
  %i.mc = add i8 %i.lz, %i.mb
  %i.md = sdiv i32 %.3118.i, 13                   ; 2 uses
  %i.me = icmp sgt i32 %.3118.i, 12
  br i1 %i.me, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cq
  %i.mf = zext nneg i32 %i.md to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.mf, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 4 uses
  %.069153.i = phi ptr [ %i.s, %.lr.ph.preheader.i ], [ %i.mv, %.lr.ph.i ] ; 9 uses
  %10 = trunc nuw i64 %indvars.iv.i to i32
  %i.mg = trunc i64 %indvars.iv.i to i8
  store i8 %i.mg, ptr %.069153.i, align 2
  %i.mh = getelementptr i8, ptr %.069153.i, i64 11
  store i8 15, ptr %i.mh, align 1
  %i.mi = getelementptr i8, ptr %.069153.i, i64 12
  store i8 0, ptr %i.mi, align 2
  %i.mj = getelementptr i8, ptr %.069153.i, i64 13
  store i8 %i.mc, ptr %i.mj, align 1
  %i.mk = getelementptr i8, ptr %.069153.i, i64 26
  store i16 0, ptr %i.mk, align 2
  %i.ml = mul nsw i64 %indvars.iv.i, 13
  %i.mm = add nsw i64 %i.ml, 4294967283
  %i.mn = and i64 %i.mm, 4294967295
  %i.mo = getelementptr i8, ptr %.069153.i, i64 1
  %i.mp = getelementptr [2 x i8], ptr %i.z, i64 %i.mn ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(10) %i.mo, ptr noundef readonly align 2 dereferenceable(10) %i.mp, i64 10, i1 false)
  %i.mq = getelementptr i8, ptr %.069153.i, i64 14
  %i.mr = getelementptr i8, ptr %i.mp, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %i.mq, ptr noundef readonly align 2 dereferenceable(12) %i.mr, i64 12, i1 false)
  %i.ms = getelementptr i8, ptr %.069153.i, i64 28
  %i.mt = getelementptr i8, ptr %i.mp, i64 22
  %i.mu = load i32, ptr %i.mt, align 2
  store i32 %i.mu, ptr %i.ms, align 2
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.mv = getelementptr i8, ptr %.069153.i, i64 32 ; 2 uses
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.cq
  %.069.lcssa.i = phi ptr [ %i.s, %bb.cq ], [ %i.mv, %.lr.ph.i ]
  %i.mw = load i8, ptr %i.s, align 8
  %i.mx = or i8 %i.mw, 64
  store i8 %i.mx, ptr %i.s, align 8
  %i.my = add nsw i32 %i.md, 1
  br label %bb.cr

vfat_build_slots.exit.thread47:                   ; preds = %bb.m, %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader, %.lr.ph.i78.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.g, %vfat_create_shortname.exit.i, %.critedge77.i.i, %._crit_edge.i77.i, %bb.h
  %.1.i.ph = phi i32 [ %i.at, %bb.g ], [ -22, %.lr.ph.split.us.i.i.preheader ], [ -22, %._crit_edge.i77.i ], [ -22, %.lr.ph.i78.i ], [ -22, %.critedge77.i.i ], [ %.0152.i.i, %vfat_create_shortname.exit.i ], [ -36, %bb.h ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -22, %switch.early.test.i.i.i ], [ -36, %.lr.ph.split.us.i.i ], [ -36, %.lr.ph.split.i.i ], [ -22, %bb.m ]
  call void @kfree(ptr noundef nonnull %i.z) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.cw

bb.cr:                                            ; preds = %._crit_edge.i, %bb.cp, %.thread133.i
  %.1 = phi i32 [ %i.my, %._crit_edge.i ], [ 1, %.thread133.i ], [ 1, %bb.cp ]
  %.1103.ph130.i = phi i8 [ 0, %._crit_edge.i ], [ %.1103.ph.ph.i, %.thread133.i ], [ 0, %bb.cp ]
  %.068.i = phi ptr [ %.069.lcssa.i, %._crit_edge.i ], [ %i.s, %.thread133.i ], [ %i.s, %bb.cp ] ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(11) %.068.i, ptr noundef nonnull align 1 dereferenceable(11) %i.f, i64 11, i1 false)
  %.not76.i = icmp eq i32 %2, 0
  %i.mz = select i1 %.not76.i, i8 32, i8 16
  %i.na = getelementptr i8, ptr %.068.i, i64 11
  store i8 %i.mz, ptr %i.na, align 1
  %i.nb = getelementptr i8, ptr %.068.i, i64 12
  store i8 %.1103.ph130.i, ptr %i.nb, align 4
  call void @fat_time_unix2fat(ptr noundef %.val.i, ptr noundef %4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #16
  %i.nc = load i16, ptr %i.g, align 2             ; 2 uses
  %i.nd = getelementptr i8, ptr %.068.i, i64 14
  store i16 %i.nc, ptr %i.nd, align 2
  %i.ne = getelementptr i8, ptr %.068.i, i64 22
  store i16 %i.nc, ptr %i.ne, align 2
  %i.nf = load i16, ptr %i.h, align 2             ; 3 uses
  %i.ng = getelementptr i8, ptr %.068.i, i64 18
  store i16 %i.nf, ptr %i.ng, align 2
  %i.nh = getelementptr i8, ptr %.068.i, i64 16
  store i16 %i.nf, ptr %i.nh, align 4
  %i.ni = getelementptr i8, ptr %.068.i, i64 24
  store i16 %i.nf, ptr %i.ni, align 4
  %i.nj = load i8, ptr %i.i, align 1
  %i.nk = getelementptr i8, ptr %.068.i, i64 13
  store i8 %i.nj, ptr %i.nk, align 1
  %i.nl = trunc i32 %3 to i16
  %i.nm = getelementptr i8, ptr %.068.i, i64 26
  store i16 %i.nl, ptr %i.nm, align 2
  %i.nn = lshr i32 %3, 16
  %i.no = trunc nuw nsw i32 %i.nn to i16
  %i.np = getelementptr i8, ptr %.068.i, i64 20
  store i16 %i.no, ptr %i.np, align 4
  %i.nq = getelementptr i8, ptr %.068.i, i64 28
  store i32 0, ptr %i.nq, align 4
  call void @kfree(ptr noundef nonnull %i.z) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.nr = call i32 @fat_add_entries(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef %.1, ptr noundef %5) #16 ; 2 uses
  %.not34 = icmp eq i32 %i.nr, 0
  br i1 %.not34, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  call void @fat_truncate_time(ptr noundef %0, ptr noundef %4, i32 noundef 2) #16
  %i.ns = load ptr, ptr %i.v, align 8
  %i.nt = getelementptr i8, ptr %i.ns, i64 80
  %i.nu = load i64, ptr %i.nt, align 16
  %i.nv = and i64 %i.nu, 144
  %.not35 = icmp eq i64 %i.nv, 0
  br i1 %.not35, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.nw = getelementptr i8, ptr %0, i64 4
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = and i32 %i.nx, 65
  %.not36 = icmp eq i32 %i.ny, 0
  br i1 %.not36, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.nz = call i32 @fat_sync_inode(ptr noundef %0) #16 ; 0 uses
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 112) #16
  br label %bb.cw

bb.cw:                                            ; preds = %vfat_build_slots.exit.thread47, %vfat_build_slots.exit.thread, %bb.cu, %bb.cv, %bb.cr
  %.030 = phi i32 [ %.1.i.ph, %vfat_build_slots.exit.thread47 ], [ %i.nr, %bb.cr ], [ 0, %bb.cu ], [ 0, %bb.cv ], [ -12, %vfat_build_slots.exit.thread ]
  call void @kfree(ptr noundef nonnull %i.s) #16
  br label %vfat_striptail_len.exit.thread

vfat_striptail_len.exit.thread:                   ; preds = %bb.b, %bb.a, %vfat_striptail_len.exit, %bb.cw
  %.0 = phi i32 [ %.030, %bb.cw ], [ -12, %vfat_striptail_len.exit ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @inode_maybe_inc_iversion(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_remove_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_alloc_new_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_dir_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @vfat_update_dotdot_de(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((20, 22), (26, 28)) %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -132
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = trunc i32 %i.b to i16
  %i.d = getelementptr i8, ptr %3, i64 26
  store i16 %i.c, ptr %i.d, align 2
  %i.e = lshr i32 %i.b, 16
  %i.f = trunc nuw i32 %i.e to i16
  %i.g = getelementptr i8, ptr %3, i64 20
  store i16 %i.f, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %1, i64 -32
  tail call void @mmb_mark_buffer_dirty(ptr noundef %2, ptr noundef %i.h) #16
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 80
  %i.l = load i64, ptr %i.k, align 16
  %i.m = and i64 %i.l, 144
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 65
  %.not7 = icmp eq i32 %i.p, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = tail call i32 @sync_dirty_buffer(ptr noundef %2) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_0
