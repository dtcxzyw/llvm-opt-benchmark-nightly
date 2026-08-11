inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_record_validate:bb.a
  %i.gv = call ptr @slurm_xcalloc(i64 noundef %i.gu, i64 noundef 80, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 568, ptr noundef nonnull @__func__._validate_config) #10 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 6 uses
  store ptr %i.gv, ptr %i.gw, align 8
  %i.gx = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph138.i, label %.._crit_edge139_crit_edge.i

.._crit_edge139_crit_edge.i:                      ; preds = %bb.ay
  %.pre159.i = sext i32 %i.gx to i64
  br label %._crit_edge139.i

.lr.ph138.i:                                      ; preds = %bb.ay
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  br label %bb.az

.loopexit:                                        ; preds = %._crit_edge73.split.us.us.i, %.preheader67.lr.ph.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %i.ha = load i32, ptr %i.gt, align 8
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next156.i, %i.hb
  br i1 %i.hc, label %bb.az, label %._crit_edge139.loopexit.i, !llvm.loop !14

bb.az:                                            ; preds = %.loopexit, %.lr.ph138.i
  %indvars.iv155.i = phi i64 [ 0, %.lr.ph138.i ], [ %indvars.iv.next156.i, %.loopexit ] ; 3 uses
  %i.hd = load ptr, ptr %i.gz, align 8
  %i.he = getelementptr inbounds nuw [18 x i8], ptr %i.hd, i64 %indvars.iv155.i ; 10 uses
  %i.hf = load ptr, ptr %i.gw, align 8
  %i.hg = getelementptr inbounds nuw [80 x i8], ptr %i.hf, i64 %indvars.iv155.i ; 14 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 12 ; 5 uses
  %i.hi = load i16, ptr %i.hh, align 2            ; 4 uses
  %.not.i.i = icmp eq i16 %i.hi, 0
  br i1 %.not.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 14 ; 4 uses
  %i.hk = load i16, ptr %i.hj, align 2            ; 4 uses
  %.not40.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not40.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 4 uses
  %i.hm = load i16, ptr %i.hl, align 2            ; 4 uses
  %.not41.i.i = icmp eq i16 %i.hm, 0
  br i1 %.not41.i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.hn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.17) #10 ; 0 uses
  br label %.thread.i

bb.bd:                                            ; preds = %bb.bb
  %i.ho = zext i16 %i.hi to i64
  %i.hp = zext i16 %i.hk to i64
  %i.hq = mul nuw nsw i64 %i.hp, %i.ho
  %i.hr = zext i16 %i.hm to i64
  %i.hs = mul nuw nsw i64 %i.hq, %i.hr            ; 2 uses
  %i.ht = icmp samesign ugt i64 %i.hs, 4294967295
  br i1 %i.ht, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hu = zext i16 %i.hi to i32
  %i.hv = zext i16 %i.hk to i32
  %i.hw = zext i16 %i.hm to i32
  %i.hx = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %i.hu, i32 noundef %i.hv, i32 noundef %i.hw) #10 ; 0 uses
  br label %.thread.i

bb.bf:                                            ; preds = %bb.bd
  %i.hy = load i16, ptr %i.bd, align 8
  %i.hz = icmp ugt i16 %i.hi, %i.hy
  br i1 %i.hz, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ia = load i16, ptr %i.bf, align 2
  %i.ib = icmp ugt i16 %i.hk, %i.ia
  br i1 %i.ib, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ic = load i16, ptr %i.bh, align 4
  %i.id = icmp ugt i16 %i.hm, %i.ic
  br i1 %i.id, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.ie = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.19) #10 ; 0 uses
  br label %.thread.i

bb.bj:                                            ; preds = %bb.bh
  %i.if = trunc nuw i64 %i.hs to i32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hg, i64 44
  store i32 %i.if, ptr %i.ig, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hg, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ih, ptr noundef nonnull align 2 dereferenceable(6) %i.hh, i64 6, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ii, ptr noundef nonnull align 2 dereferenceable(6) %i.he, i64 6, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.he, i64 6 ; 4 uses
  %i.ik = load i16, ptr %i.ij, align 2
  %.not42.i.i = icmp eq i16 %i.ik, 0
  br i1 %.not42.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.il = load i16, ptr %i.hh, align 2
  store i16 %i.il, ptr %i.ij, align 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.im = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 3 uses
  %i.in = load i16, ptr %i.im, align 2
  %.not43.i.i = icmp eq i16 %i.in, 0
  br i1 %.not43.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.io = load i16, ptr %i.hj, align 2
  store i16 %i.io, ptr %i.im, align 2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 10 ; 3 uses
  %i.iq = load i16, ptr %i.ip, align 2
  %.not44.i.i = icmp eq i16 %i.iq, 0
  br i1 %.not44.i.i, label %bb.bo, label %_validate_placement.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.ir = load i16, ptr %i.hl, align 2
  store i16 %i.ir, ptr %i.ip, align 2
  br label %_validate_placement.exit.i

_validate_placement.exit.i:                       ; preds = %bb.bo, %bb.bn
  %i.is = getelementptr inbounds nuw i8, ptr %i.hg, i64 30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.is, ptr noundef nonnull align 2 dereferenceable(6) %i.ij, i64 6, i1 false)
  %i.it = load i16, ptr %i.ij, align 2            ; 2 uses
  %i.iu = load i16, ptr %i.im, align 2            ; 2 uses
  %i.iv = load i16, ptr %i.ip, align 2            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i16 0, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.iw = load i16, ptr %i.bd, align 8            ; 3 uses
  %i.ix = icmp ugt i16 %i.it, %i.iw
  br i1 %i.ix, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %_validate_placement.exit.i
  %i.iy = load i16, ptr %i.bf, align 2            ; 2 uses
  %i.iz = icmp ugt i16 %i.iu, %i.iy
  br i1 %i.iz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ja = load i16, ptr %i.bh, align 4            ; 2 uses
  %i.jb = icmp ugt i16 %i.iv, %i.ja
  br i1 %i.jb, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bp, %_validate_placement.exit.i
  %i.jc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.20) #10 ; 0 uses
  br label %_build_placement_anchors.exit

bb.bs:                                            ; preds = %bb.bq
  %i.jd = load i16, ptr %i.he, align 2            ; 2 uses
  %.not.i67 = icmp ult i16 %i.jd, %i.iw
  br i1 %.not.i67, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.je = getelementptr inbounds nuw i8, ptr %i.he, i64 2 ; 2 uses
  %i.jf = load i16, ptr %i.je, align 2
  %.not65.i = icmp ult i16 %i.jf, %i.iy
  br i1 %.not65.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jg = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2
  %.not66.i = icmp ult i16 %i.jh, %i.ja
  br i1 %.not66.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.ji = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %_build_placement_anchors.exit

bb.bw:                                            ; preds = %bb.bu
  %i.jj = call fastcc ptr @_build_axis_positions(i16 noundef zeroext %i.iw, i16 noundef zeroext %i.it, i16 noundef zeroext %i.jd, ptr noundef %i.a) ; 3 uses
  store ptr %i.jj, ptr %i.d, align 8
  %i.jk = load i16, ptr %i.bf, align 2
  %i.jl = load i16, ptr %i.je, align 2
  %i.jm = call fastcc ptr @_build_axis_positions(i16 noundef zeroext %i.jk, i16 noundef zeroext %i.iu, i16 noundef zeroext %i.jl, ptr noundef %i.b) ; 3 uses
  store ptr %i.jm, ptr %i.e, align 8
  %i.jn = load i16, ptr %i.bh, align 4
  %i.jo = load i16, ptr %i.jg, align 2
  %i.jp = call fastcc ptr @_build_axis_positions(i16 noundef zeroext %i.jn, i16 noundef zeroext %i.iv, i16 noundef zeroext %i.jo, ptr noundef %i.c) ; 3 uses
  store ptr %i.jp, ptr %i.f, align 8
  %i.jq = load i16, ptr %i.a, align 2             ; 3 uses
  %i.jr = zext i16 %i.jq to i64                   ; 2 uses
  %i.js = load i16, ptr %i.b, align 2             ; 3 uses
  %i.jt = zext i16 %i.js to i64                   ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jt, %i.jr
  %i.jv = load i16, ptr %i.c, align 2             ; 4 uses
  %i.jw = zext i16 %i.jv to i64                   ; 2 uses
  %i.jx = mul nuw nsw i64 %i.ju, %i.jw            ; 3 uses
  %i.jy = add nsw i64 %i.jx, -2147483648
  %or.cond.i = icmp ult i64 %i.jy, -2147483647
  br i1 %or.cond.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.22) #10 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.d) #10
  call void @slurm_xfree(ptr noundef nonnull %i.e) #10
  call void @slurm_xfree(ptr noundef nonnull %i.f) #10
  br label %_build_placement_anchors.exit

bb.by:                                            ; preds = %bb.bw
  %i.ka = trunc nuw nsw i64 %i.jx to i32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  store i32 %i.ka, ptr %i.kb, align 8
  %i.kc = call ptr @slurm_xcalloc(i64 noundef %i.jx, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 237, ptr noundef nonnull @__func__._build_placement_anchors) #10
  store ptr %i.kc, ptr %i.hg, align 8
  %i.kd = load i32, ptr %i.kb, align 8
  %i.ke = sext i32 %i.kd to i64
  %i.kf = call ptr @slurm_xcalloc(i64 noundef %i.ke, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @__func__._build_placement_anchors) #10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  store ptr %i.kf, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store ptr %i.jj, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  store ptr %i.jm, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  store ptr %i.jp, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  store i16 %i.jq, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hg, i64 74
  store i16 %i.js, ptr %i.kl, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %i.hg, i64 76
  store i16 %i.jv, ptr %i.km, align 4
  %.not79.i = icmp eq i16 %i.jq, 0
  br i1 %.not79.i, label %.loopexit, label %.preheader67.lr.ph.i

.preheader67.lr.ph.i:                             ; preds = %bb.by
  %.not80.i = icmp eq i16 %i.js, 0
  %.not81.i = icmp eq i16 %i.jv, 0
  %or.cond111.i = or i1 %.not80.i, %.not81.i
  br i1 %or.cond111.i, label %.loopexit, label %.preheader67.us.preheader.i

.preheader67.us.preheader.i:                      ; preds = %.preheader67.lr.ph.i
  %1 = zext i16 %i.jv to i32
  br label %.preheader67.us.i

.preheader67.us.i:                                ; preds = %._crit_edge73.split.us.us.i, %.preheader67.us.preheader.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader67.us.preheader.i ], [ %indvars.iv.next94.i, %._crit_edge73.split.us.us.i ] ; 2 uses
  %.06075.us.i = phi i32 [ 0, %.preheader67.us.preheader.i ], [ %3, %._crit_edge73.split.us.us.i ]
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %indvars.iv93.i
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader67.us.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %._crit_edge.us.us.i ], [ 0, %.preheader67.us.i ] ; 2 uses
  %indvars.iv85.i = phi i32 [ %indvars.iv.next86.i, %._crit_edge.us.us.i ], [ %.06075.us.i, %.preheader67.us.i ] ; 2 uses
  %2 = sext i32 %indvars.iv85.i to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %indvars.iv88.i
  br label %bb.bz

bb.bz:                                            ; preds = %_build_anchor_bitmap.exit.us.us.i, %.preheader.us.us.i
  %indvars.iv85.i.a = phi i64 [ %indvars.iv.next86.i.a, %_build_anchor_bitmap.exit.us.us.i ], [ %2, %.preheader.us.us.i ] ; 3 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %_build_anchor_bitmap.exit.us.us.i ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.kp = load i16, ptr %i.kn, align 2
  %i.kq = load i16, ptr %i.ko, align 2
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv.i68
  %i.ks = load i16, ptr %i.kr, align 2
  %i.kt = load i32, ptr @node_record_count, align 4
  %i.ku = sext i32 %i.kt to i64
  %i.kv = call ptr @bit_alloc(i64 noundef %i.ku) #10 ; 3 uses
  %i.kw = load i16, ptr %i.hl, align 2            ; 2 uses
  %.not39.i.us.us.i = icmp eq i16 %i.kw, 0
  br i1 %.not39.i.us.us.i, label %_build_anchor_bitmap.exit.us.us.i, label %.lr.ph37.i.us.us.i

.lr.ph37.i.us.us.i:                               ; preds = %bb.bz
  %i.kx = zext i16 %i.ks to i32
  %i.ky = zext i16 %i.kq to i32
  %i.kz = zext i16 %i.kp to i32
  %i.la = load i16, ptr %i.hj, align 2            ; 3 uses
  %.not40.i.us.us.i = icmp eq i16 %i.la, 0
  br i1 %.not40.i.us.us.i, label %_build_anchor_bitmap.exit.us.us.i, label %.lr.ph37.split.i.us.us.i

.lr.ph37.split.i.us.us.i:                         ; preds = %.lr.ph37.i.us.us.i, %._crit_edge34.i.us.us.i
  %i.lb = phi i16 [ %i.mm, %._crit_edge34.i.us.us.i ], [ %i.kw, %.lr.ph37.i.us.us.i ] ; 2 uses
  %i.lc = phi i16 [ %i.mn, %._crit_edge34.i.us.us.i ], [ %i.la, %.lr.ph37.i.us.us.i ] ; 3 uses
  %i.ld = phi i16 [ %i.mo, %._crit_edge34.i.us.us.i ], [ %i.la, %.lr.ph37.i.us.us.i ] ; 2 uses
  %indvars.iv50.i.us.us.i = phi i32 [ %indvars.iv.next51.i.us.us.i, %._crit_edge34.i.us.us.i ], [ 0, %.lr.ph37.i.us.us.i ] ; 2 uses
  %i.le = load i16, ptr %i.bh, align 4
  %i.lf = add nuw nsw i32 %indvars.iv50.i.us.us.i, %i.kx
  %i.lg = zext i16 %i.le to i32
  %i.lh = urem i32 %i.lf, %i.lg
  %.not41.i.us.us.i = icmp eq i16 %i.ld, 0
  br i1 %.not41.i.us.us.i, label %._crit_edge34.i.us.us.i, label %.lr.ph33.i.us.us.i

.lr.ph33.i.us.us.i:                               ; preds = %.lr.ph37.split.i.us.us.i
  %i.li = load i16, ptr %i.hh, align 2            ; 2 uses
  %.not42.i.us.us.i = icmp eq i16 %i.li, 0
  br i1 %.not42.i.us.us.i, label %._crit_edge34.i.us.us.i, label %.lr.ph33.split.i.us.us.i

.lr.ph33.split.i.us.us.i:                         ; preds = %.lr.ph33.i.us.us.i, %._crit_edge.i.us.us.i
  %i.lj = phi i16 [ %i.mh, %._crit_edge.i.us.us.i ], [ %i.lc, %.lr.ph33.i.us.us.i ]
  %i.lk = phi i16 [ %i.mi, %._crit_edge.i.us.us.i ], [ %i.li, %.lr.ph33.i.us.us.i ] ; 2 uses
  %i.ll = phi i16 [ %i.mj, %._crit_edge.i.us.us.i ], [ 1, %.lr.ph33.i.us.us.i ]
  %indvars.iv47.i.us.us.i = phi i32 [ %indvars.iv.next48.i.us.us.i, %._crit_edge.i.us.us.i ], [ 0, %.lr.ph33.i.us.us.i ] ; 2 uses
  %i.lm = load i16, ptr %i.bf, align 2
  %i.ln = add nuw nsw i32 %indvars.iv47.i.us.us.i, %i.ky
  %i.lo = zext i16 %i.lm to i32
  %i.lp = urem i32 %i.ln, %i.lo
  %.not43.i.us.us.i = icmp eq i16 %i.ll, 0
  br i1 %.not43.i.us.us.i, label %._crit_edge.i.us.us.i, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph33.split.i.us.us.i, %bb.cb
  %i.lq = phi i16 [ %i.me, %bb.cb ], [ %i.lk, %.lr.ph33.split.i.us.us.i ]
  %indvars.iv.i.us.us.i = phi i32 [ %indvars.iv.next.i.us.us.i, %bb.cb ], [ 0, %.lr.ph33.split.i.us.us.i ] ; 2 uses
  %i.lr = load i16, ptr %i.bd, align 8
  %i.ls = add nuw nsw i32 %indvars.iv.i.us.us.i, %i.kz
  %i.lt = zext i16 %i.lr to i32                   ; 2 uses
  %i.lu = urem i32 %i.ls, %i.lt
  %i.lv = load i16, ptr %i.bf, align 2
  %i.lw = zext i16 %i.lv to i32
  %i.lx = mul nuw i32 %i.lh, %i.lw
  %reass.add.i.i.us.us.i = add nuw i32 %i.lx, %i.lp
  %reass.mul.i.i.us.us.i = mul i32 %reass.add.i.i.us.us.i, %i.lt
  %i.ly = add nuw nsw i32 %reass.mul.i.i.us.us.i, %i.lu
  %i.lz = load ptr, ptr %i.bn, align 8
  %i.ma = zext nneg i32 %i.ly to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4            ; 2 uses
  %.not.i.us.us.i = icmp eq i32 %i.mc, -2
  br i1 %.not.i.us.us.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.us.us.i
  %i.md = zext i32 %i.mc to i64
  call void @bit_set(ptr noundef %i.kv, i64 noundef %i.md) #10
  %.pre.i.us.us.i = load i16, ptr %i.hh, align 2
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i.us.us.i
  %i.me = phi i16 [ %.pre.i.us.us.i, %bb.ca ], [ %i.lq, %.lr.ph.i.us.us.i ] ; 4 uses
  %indvars.iv.next.i.us.us.i = add nuw nsw i32 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %i.mf = zext i16 %i.me to i32
  %i.mg = icmp samesign ult i32 %indvars.iv.next.i.us.us.i, %i.mf
  br i1 %i.mg, label %.lr.ph.i.us.us.i, label %._crit_edge.loopexit.i.us.us.i, !llvm.loop !15

._crit_edge.loopexit.i.us.us.i:                   ; preds = %bb.cb
  %.pre53.i.us.us.i = load i16, ptr %i.hj, align 2
  br label %._crit_edge.i.us.us.i

._crit_edge.i.us.us.i:                            ; preds = %._crit_edge.loopexit.i.us.us.i, %.lr.ph33.split.i.us.us.i
  %i.mh = phi i16 [ %.pre53.i.us.us.i, %._crit_edge.loopexit.i.us.us.i ], [ %i.lj, %.lr.ph33.split.i.us.us.i ] ; 4 uses
  %i.mi = phi i16 [ %i.me, %._crit_edge.loopexit.i.us.us.i ], [ %i.lk, %.lr.ph33.split.i.us.us.i ]
  %i.mj = phi i16 [ %i.me, %._crit_edge.loopexit.i.us.us.i ], [ 0, %.lr.ph33.split.i.us.us.i ]
  %indvars.iv.next48.i.us.us.i = add nuw nsw i32 %indvars.iv47.i.us.us.i, 1 ; 2 uses
  %i.mk = zext i16 %i.mh to i32
  %i.ml = icmp samesign ult i32 %indvars.iv.next48.i.us.us.i, %i.mk
  br i1 %i.ml, label %.lr.ph33.split.i.us.us.i, label %._crit_edge34.loopexit44.i.us.us.i, !llvm.loop !16

._crit_edge34.loopexit44.i.us.us.i:               ; preds = %._crit_edge.i.us.us.i
  %.pre54.i.us.us.i = load i16, ptr %i.hl, align 2
  br label %._crit_edge34.i.us.us.i

._crit_edge34.i.us.us.i:                          ; preds = %._crit_edge34.loopexit44.i.us.us.i, %.lr.ph33.i.us.us.i, %.lr.ph37.split.i.us.us.i
  %i.mm = phi i16 [ %.pre54.i.us.us.i, %._crit_edge34.loopexit44.i.us.us.i ], [ %i.lb, %.lr.ph37.split.i.us.us.i ], [ %i.lb, %.lr.ph33.i.us.us.i ] ; 2 uses
  %i.mn = phi i16 [ %i.mh, %._crit_edge34.loopexit44.i.us.us.i ], [ %i.lc, %.lr.ph37.split.i.us.us.i ], [ %i.lc, %.lr.ph33.i.us.us.i ]
  %i.mo = phi i16 [ %i.mh, %._crit_edge34.loopexit44.i.us.us.i ], [ 0, %.lr.ph37.split.i.us.us.i ], [ %i.ld, %.lr.ph33.i.us.us.i ]
  %indvars.iv.next51.i.us.us.i = add nuw nsw i32 %indvars.iv50.i.us.us.i, 1 ; 2 uses
  %i.mp = zext i16 %i.mm to i32
  %i.mq = icmp samesign ult i32 %indvars.iv.next51.i.us.us.i, %i.mp
  br i1 %i.mq, label %.lr.ph37.split.i.us.us.i, label %_build_anchor_bitmap.exit.us.us.i, !llvm.loop !18

_build_anchor_bitmap.exit.us.us.i:                ; preds = %._crit_edge34.i.us.us.i, %.lr.ph37.i.us.us.i, %bb.bz
  %i.mr = load ptr, ptr %i.hg, align 8
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %indvars.iv85.i.a
  store ptr %i.kv, ptr %i.ms, align 8
  %i.mt = call i32 @bit_set_count(ptr noundef %i.kv) #10
  %i.mu = load ptr, ptr %i.kg, align 8
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv85.i.a
  store i32 %i.mt, ptr %i.mv, align 4
  %indvars.iv.next86.i.a = add nsw i64 %indvars.iv85.i.a, 1 ; 2 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i69, %i.jw
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.bz, !llvm.loop !19

._crit_edge.us.us.i:                              ; preds = %_build_anchor_bitmap.exit.us.us.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next86.i = add i32 %indvars.iv85.i, %1
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %i.jt
  br i1 %exitcond92.not.i, label %._crit_edge73.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !20

._crit_edge73.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %3 = trunc nsw i64 %indvars.iv.next86.i.a to i32
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %i.jr
  br i1 %exitcond97.not.i, label %.loopexit, label %.preheader67.us.i, !llvm.loop !21

_build_placement_anchors.exit:                    ; preds = %bb.br, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread.i

._crit_edge139.loopexit.i:                        ; preds = %.loopexit
  %.pre.i = load ptr, ptr %i.gw, align 8
  br label %._crit_edge139.i

._crit_edge139.i:                                 ; preds = %._crit_edge139.loopexit.i, %.._crit_edge139_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre159.i, %.._crit_edge139_crit_edge.i ], [ %i.hb, %._crit_edge139.loopexit.i ]
  %i.mw = phi ptr [ %i.gv, %.._crit_edge139_crit_edge.i ], [ %.pre.i, %._crit_edge139.loopexit.i ]
  call void @qsort(ptr noundef %i.mw, i64 noundef %.pre-phi.i, i64 noundef 80, ptr noundef nonnull @_placement_cmp) #10
  %i.mx = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph.i58, label %.thread.i

.preheader.i63:                                   ; preds = %bb.cf
  %i.mz = icmp sgt i32 %i.nz, 0
  br i1 %i.mz, label %.lr.ph119.i, label %.thread.i

.lr.ph.i58:                                       ; preds = %._crit_edge139.i, %bb.cf
  %i.na = phi i32 [ %i.nz, %bb.cf ], [ %i.mx, %._crit_edge139.i ]
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i62, %bb.cf ], [ 0, %._crit_edge139.i ] ; 2 uses
  %i.nb = load ptr, ptr %i.gw, align 8
  %i.nc = getelementptr inbounds nuw [80 x i8], ptr %i.nb, i64 %indvars.iv.i59 ; 7 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 30
  %i.ne = load i16, ptr %i.nd, align 2            ; 2 uses
  %i.nf = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not7.i.i = icmp eq i16 %i.nf, 0
  br i1 %.not7.i.i, label %_gcd.exit.i, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i58, %.lr.ph.i.i60
  %.09.i.i = phi i16 [ %.068.i.i, %.lr.ph.i.i60 ], [ %i.ne, %.lr.ph.i58 ]
  %.068.i.i = phi i16 [ %i.ng, %.lr.ph.i.i60 ], [ %i.nf, %.lr.ph.i58 ] ; 3 uses
  %i.ng = urem i16 %.09.i.i, %.068.i.i            ; 2 uses
  %.not.i.i61 = icmp eq i16 %i.ng, 0
  br i1 %.not.i.i61, label %_gcd.exit.i, label %.lr.ph.i.i60, !llvm.loop !22

_gcd.exit.i:                                      ; preds = %.lr.ph.i.i60, %.lr.ph.i58
  %.0.lcssa.i.i = phi i16 [ %i.ne, %.lr.ph.i58 ], [ %.068.i.i, %.lr.ph.i.i60 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 36
  %i.ni = load i16, ptr %i.nh, align 4
  %i.nj = icmp ult i16 %.0.lcssa.i.i, %i.ni
  br i1 %i.nj, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %_gcd.exit.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.nl = load i16, ptr %i.nk, align 4            ; 2 uses
  %i.nm = load i16, ptr %i.bf, align 2            ; 2 uses
  %.not7.i56.i = icmp eq i16 %i.nm, 0
  br i1 %.not7.i56.i, label %_gcd.exit62.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %bb.cc, %.lr.ph.i57.i
  %.09.i58.i = phi i16 [ %.068.i59.i, %.lr.ph.i57.i ], [ %i.nl, %bb.cc ]
  %.068.i59.i = phi i16 [ %i.nn, %.lr.ph.i57.i ], [ %i.nm, %bb.cc ] ; 3 uses
  %i.nn = urem i16 %.09.i58.i, %.068.i59.i        ; 2 uses
  %.not.i60.i = icmp eq i16 %i.nn, 0
  br i1 %.not.i60.i, label %_gcd.exit62.i, label %.lr.ph.i57.i, !llvm.loop !22

_gcd.exit62.i:                                    ; preds = %.lr.ph.i57.i, %bb.cc
  %.0.lcssa.i61.i = phi i16 [ %i.nl, %bb.cc ], [ %.068.i59.i, %.lr.ph.i57.i ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.nc, i64 38
  %i.np = load i16, ptr %i.no, align 2
  %i.nq = icmp ult i16 %.0.lcssa.i61.i, %i.np
  br i1 %i.nq, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_gcd.exit62.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nc, i64 34
  %i.ns = load i16, ptr %i.nr, align 2            ; 2 uses
  %i.nt = load i16, ptr %i.bh, align 4            ; 2 uses
  %.not7.i63.i = icmp eq i16 %i.nt, 0
  br i1 %.not7.i63.i, label %_gcd.exit69.i, label %.lr.ph.i64.i

.lr.ph.i64.i:                                     ; preds = %bb.cd, %.lr.ph.i64.i
  %.09.i65.i = phi i16 [ %.068.i66.i, %.lr.ph.i64.i ], [ %i.ns, %bb.cd ]
  %.068.i66.i = phi i16 [ %i.nu, %.lr.ph.i64.i ], [ %i.nt, %bb.cd ] ; 3 uses
  %i.nu = urem i16 %.09.i65.i, %.068.i66.i        ; 2 uses
  %.not.i67.i = icmp eq i16 %i.nu, 0
  br i1 %.not.i67.i, label %_gcd.exit69.i, label %.lr.ph.i64.i, !llvm.loop !22

_gcd.exit69.i:                                    ; preds = %.lr.ph.i64.i, %bb.cd
  %.0.lcssa.i68.i = phi i16 [ %i.ns, %bb.cd ], [ %.068.i66.i, %.lr.ph.i64.i ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nc, i64 40
  %i.nw = load i16, ptr %i.nv, align 4
  %i.nx = icmp ult i16 %.0.lcssa.i68.i, %i.nw
  br i1 %i.nx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_gcd.exit69.i, %_gcd.exit62.i, %_gcd.exit.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nc, i64 42
  store i8 1, ptr %i.ny, align 2
  %.pre.i66 = load i32, ptr %i.gt, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_gcd.exit69.i
  %i.nz = phi i32 [ %.pre.i66, %bb.ce ], [ %i.na, %_gcd.exit69.i ] ; 4 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.oa = sext i32 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next.i62, %i.oa
  br i1 %i.ob, label %.lr.ph.i58, label %.preheader.i63, !llvm.loop !23

.lr.ph119.i:                                      ; preds = %.preheader.i63, %._crit_edge.i65
  %i.oc = phi i32 [ %i.sm, %._crit_edge.i65 ], [ %i.nz, %.preheader.i63 ] ; 3 uses
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %._crit_edge.i65 ], [ 0, %.preheader.i63 ] ; 2 uses
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %._crit_edge.i65 ], [ 1, %.preheader.i63 ] ; 2 uses
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 3 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next128.i, %i.od
  br i1 %i.oe, label %.lr.ph116.i, label %.thread.i

.lr.ph116.i:                                      ; preds = %.lr.ph119.i
  %i.of = load ptr, ptr %i.gw, align 8
  %i.og = getelementptr inbounds nuw [80 x i8], ptr %i.of, i64 %indvars.iv127.i ; 11 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 44
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 42 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 30
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 36
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 26
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 38
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 28
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 34
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %.lr.ph116.i
  %i.os = phi i32 [ %i.oc, %.lr.ph116.i ], [ %i.si, %bb.ck ] ; 5 uses
  %i.ot = phi i32 [ %i.oc, %.lr.ph116.i ], [ %i.sj, %bb.ck ] ; 4 uses
  %indvars.iv124.i = phi i64 [ %indvars.iv122.i, %.lr.ph116.i ], [ %indvars.iv.next125.i, %bb.ck ] ; 2 uses
  %i.ou = load ptr, ptr %i.gw, align 8
  %i.ov = getelementptr inbounds nuw [80 x i8], ptr %i.ou, i64 %indvars.iv124.i ; 12 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 44
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = load i32, ptr %i.oh, align 4
  %.not.i64 = icmp eq i32 %i.ox, %i.oy
  br i1 %.not.i64, label %bb.ch, label %._crit_edge.i65

bb.ch:                                            ; preds = %bb.cg
  %i.oz = load i8, ptr %i.oi, align 2, !range !24, !noundef !25
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 42
  %i.pc = load i8, ptr %i.pb, align 2, !range !24, !noundef !25
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.pe = load i16, ptr %i.oj, align 8            ; 3 uses
  %i.pf = load i16, ptr %i.ok, align 2            ; 2 uses
  %i.pg = load i16, ptr %i.ol, align 4            ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.pi = load i16, ptr %i.ph, align 8            ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 30
  %i.pk = load i16, ptr %i.pj, align 2            ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  %i.pm = load i16, ptr %i.pl, align 4            ; 2 uses
  %i.pn = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not7.i.i.i = icmp eq i16 %i.pk, 0
  br i1 %.not7.i.i.i, label %_gcd.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cj, %.lr.ph.i.i.i
  %.09.i.i.i = phi i16 [ %.068.i.i.i, %.lr.ph.i.i.i ], [ %i.pf, %bb.cj ]
  %.068.i.i.i = phi i16 [ %i.po, %.lr.ph.i.i.i ], [ %i.pk, %bb.cj ] ; 3 uses
  %i.po = urem i16 %.09.i.i.i, %.068.i.i.i        ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.po, 0
  br i1 %.not.i.i.i, label %_gcd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_gcd.exit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.cj
  %.0.lcssa.i.i.i = phi i16 [ %i.pf, %bb.cj ], [ %.068.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7.i27.i.i = icmp eq i16 %i.pn, 0
  br i1 %.not7.i27.i.i, label %_gcd.exit33.i.i, label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %_gcd.exit.i.i, %.lr.ph.i28.i.i
  %.09.i29.i.i = phi i16 [ %.068.i30.i.i, %.lr.ph.i28.i.i ], [ %.0.lcssa.i.i.i, %_gcd.exit.i.i ]
  %.068.i30.i.i = phi i16 [ %i.pp, %.lr.ph.i28.i.i ], [ %i.pn, %_gcd.exit.i.i ] ; 3 uses
  %i.pp = urem i16 %.09.i29.i.i, %.068.i30.i.i    ; 2 uses
  %.not.i31.i.i = icmp eq i16 %i.pp, 0
  br i1 %.not.i31.i.i, label %_gcd.exit33.i.i, label %.lr.ph.i28.i.i, !llvm.loop !22

_gcd.exit33.i.i:                                  ; preds = %.lr.ph.i28.i.i, %_gcd.exit.i.i
  %.0.lcssa.i32.i.i = phi i16 [ %.0.lcssa.i.i.i, %_gcd.exit.i.i ], [ %.068.i30.i.i, %.lr.ph.i28.i.i ]
  %i.pq = icmp eq i16 %i.pe, %i.pi
  br i1 %i.pq, label %_grids_overlap_axis.exit.thread.i, label %_grids_overlap_axis.exit.i

_grids_overlap_axis.exit.i:                       ; preds = %_gcd.exit33.i.i
  %i.pr = zext i16 %i.pi to i32                   ; 2 uses
  %i.ps = zext i16 %i.pe to i32                   ; 2 uses
  %i.pt = icmp ugt i16 %i.pi, %i.pe               ; 3 uses
  %i.pu = zext i16 %.0.lcssa.i32.i.i to i32       ; 2 uses
end_hunk_0
