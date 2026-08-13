inline.NumInlined: 734
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 87
begin_hunk_0_@parse_ddd_cb:bb.a
  %i.vv = sext i8 %i.vu to i64
  %i.vw = add nsw i64 %i.vs, -48
  %i.vx = add nsw i64 %i.vw, %i.vv                ; 3 uses
  %i.vy = icmp eq i64 %i.g, 4
  br i1 %i.vy, label %bb.ap, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.pr.i573 = load i64, ptr @parse_ddd_cb.rbimpl_id.111, align 8, !tbaa !10 ; 2 uses
  %.not4.i574 = icmp eq i64 %.pr.i573, 0
  br i1 %.not4.i574, label %.lr.ph.i576, label %rbimpl_intern_const.exit578

.lr.ph.i576:                                      ; preds = %bb.am, %.lr.ph.i576
  %i.vz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.56, i64 noundef 3) #14 ; 3 uses
  store i64 %i.vz, ptr @parse_ddd_cb.rbimpl_id.111, align 8, !tbaa !10
  %.not.i577 = icmp eq i64 %i.vz, 0
  br i1 %.not.i577, label %.lr.ph.i576, label %rbimpl_intern_const.exit578, !llvm.loop !34

rbimpl_intern_const.exit578:                      ; preds = %.lr.ph.i576, %bb.am
  %.lcssa.i575 = phi i64 [ %.pr.i573, %bb.am ], [ %i.vz, %.lr.ph.i576 ]
  %i.wa = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i575) #14
  %i.wb = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !16
  %i.wd = sext i8 %i.wc to i64
  %i.we = mul nsw i64 %i.wd, 10
  %i.wf = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !16
  %i.wh = sext i8 %i.wg to i64
  %i.wi = add nsw i64 %i.we, -528
  %i.wj = add nsw i64 %i.wi, %i.wh
  %i.wk = shl nsw i64 %i.wj, 1
  %i.wl = or disjoint i64 %i.wk, 1
  %i.wm = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.wa, i64 noundef %i.wl) #14 ; 0 uses
  %.pr.i582 = load i64, ptr @parse_ddd_cb.rbimpl_id.112, align 8, !tbaa !10 ; 2 uses
  %.not4.i583 = icmp eq i64 %.pr.i582, 0
  br i1 %.not4.i583, label %.lr.ph.i585, label %rbimpl_intern_const.exit587

.lr.ph.i585:                                      ; preds = %rbimpl_intern_const.exit578, %.lr.ph.i585
  %i.wn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.54, i64 noundef 3) #14 ; 3 uses
  store i64 %i.wn, ptr @parse_ddd_cb.rbimpl_id.112, align 8, !tbaa !10
  %.not.i586 = icmp eq i64 %i.wn, 0
  br i1 %.not.i586, label %.lr.ph.i585, label %rbimpl_intern_const.exit587, !llvm.loop !34

rbimpl_intern_const.exit587:                      ; preds = %.lr.ph.i585, %rbimpl_intern_const.exit578
  %.lcssa.i584 = phi i64 [ %.pr.i582, %rbimpl_intern_const.exit578 ], [ %i.wn, %.lr.ph.i585 ]
  %i.wo = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i584) #14
  %i.wp = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !16
  %i.wr = sext i8 %i.wq to i64
  %i.ws = mul nsw i64 %i.wr, 10
  %i.wt = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !16
  %i.wv = sext i8 %i.wu to i64
  %i.ww = add nsw i64 %i.ws, -528
  %i.wx = add nsw i64 %i.ww, %i.wv
  %i.wy = shl nsw i64 %i.wx, 1
  %i.wz = or disjoint i64 %i.wy, 1
  %i.xa = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.wo, i64 noundef %i.wz) #14 ; 0 uses
  %.pr.i591 = load i64, ptr @parse_ddd_cb.rbimpl_id.113, align 8, !tbaa !10 ; 2 uses
  %.not4.i592 = icmp eq i64 %.pr.i591, 0
  br i1 %.not4.i592, label %.lr.ph.i594, label %rbimpl_intern_const.exit596

.lr.ph.i594:                                      ; preds = %rbimpl_intern_const.exit587, %.lr.ph.i594
  %i.xb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.52, i64 noundef 4) #14 ; 3 uses
  store i64 %i.xb, ptr @parse_ddd_cb.rbimpl_id.113, align 8, !tbaa !10
  %.not.i595 = icmp eq i64 %i.xb, 0
  br i1 %.not.i595, label %.lr.ph.i594, label %rbimpl_intern_const.exit596, !llvm.loop !34

rbimpl_intern_const.exit596:                      ; preds = %.lr.ph.i594, %rbimpl_intern_const.exit587
  %.lcssa.i593 = phi i64 [ %.pr.i591, %rbimpl_intern_const.exit587 ], [ %i.xb, %.lr.ph.i594 ]
  %i.xc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i593) #14
  %i.xd = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !16
  %i.xf = sext i8 %i.xe to i64
  %i.xg = mul nsw i64 %i.xf, 10
  %i.xh = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !16
  %i.xj = sext i8 %i.xi to i64
  %i.xk = add nsw i64 %i.xg, -528
  %i.xl = add nsw i64 %i.xk, %i.xj
  %i.xm = shl nsw i64 %i.xl, 1
  %i.xn = or disjoint i64 %i.xm, 1
  %i.xo = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.xc, i64 noundef %i.xn) #14 ; 0 uses
  %.pr.i600 = load i64, ptr @parse_ddd_cb.rbimpl_id.114, align 8, !tbaa !10 ; 2 uses
  %.not4.i601 = icmp eq i64 %.pr.i600, 0
  br i1 %.not4.i601, label %.lr.ph.i603, label %rbimpl_intern_const.exit605

.lr.ph.i603:                                      ; preds = %rbimpl_intern_const.exit596, %.lr.ph.i603
  %i.xp = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.xp, ptr @parse_ddd_cb.rbimpl_id.114, align 8, !tbaa !10
  %.not.i604 = icmp eq i64 %i.xp, 0
  br i1 %.not.i604, label %.lr.ph.i603, label %rbimpl_intern_const.exit605, !llvm.loop !34

rbimpl_intern_const.exit605:                      ; preds = %.lr.ph.i603, %rbimpl_intern_const.exit596
  %.lcssa.i602 = phi i64 [ %.pr.i600, %rbimpl_intern_const.exit596 ], [ %i.xp, %.lr.ph.i603 ]
  %i.xq = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i602) #14
  %i.xr = load i8, ptr %i.q, align 1, !tbaa !16
  %i.xs = sext i8 %i.xr to i64
  %i.xt = shl nsw i64 %i.xs, 1
  %i.xu = add nsw i64 %i.xt, -95
  %i.xv = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.xq, i64 noundef %i.xu) #14 ; 0 uses
  br label %bb.aq

bb.an:                                            ; preds = %.preheader729.preheader
  %i.xw = inttoptr i64 %i.g to ptr                ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !15
  %i.xy = and i64 %i.xx, 8192
  %.not.i611 = icmp eq i64 %i.xy, 0
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 24 ; 2 uses
  br i1 %.not.i611, label %RSTRING_PTR.exit612, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !16
  br label %RSTRING_PTR.exit612

RSTRING_PTR.exit612:                              ; preds = %bb.an, %bb.ao
  %i.yb = phi ptr [ %i.ya, %bb.ao ], [ %i.xz, %bb.an ]
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !16
  %i.yd = icmp eq i8 %i.yc, 45
  %i.ye = sub nsw i64 0, %i.vx
  %spec.select263 = select i1 %i.yd, i64 %i.ye, i64 %i.vx
  br label %bb.ap

bb.ap:                                            ; preds = %RSTRING_PTR.exit612, %.preheader729.preheader
  %.0253 = phi i64 [ %i.vx, %.preheader729.preheader ], [ %spec.select263, %RSTRING_PTR.exit612 ]
  %.pr.i613 = load i64, ptr @parse_ddd_cb.rbimpl_id.115, align 8, !tbaa !10 ; 2 uses
  %.not4.i614 = icmp eq i64 %.pr.i613, 0
  br i1 %.not4.i614, label %.lr.ph.i616, label %rbimpl_intern_const.exit618

.lr.ph.i616:                                      ; preds = %bb.ap, %.lr.ph.i616
  %i.yf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.yf, ptr @parse_ddd_cb.rbimpl_id.115, align 8, !tbaa !10
  %.not.i617 = icmp eq i64 %i.yf, 0
  br i1 %.not.i617, label %.lr.ph.i616, label %rbimpl_intern_const.exit618, !llvm.loop !34

rbimpl_intern_const.exit618:                      ; preds = %.lr.ph.i616, %bb.ap
  %.lcssa.i615 = phi i64 [ %.pr.i613, %bb.ap ], [ %i.yf, %.lr.ph.i616 ]
  %i.yg = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i615) #14
  %i.yh = shl nsw i64 %.0253, 1
  %i.yi = or disjoint i64 %i.yh, 1
  %i.yj = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.yg, i64 noundef %i.yi) #14 ; 0 uses
  %.pr.i619 = load i64, ptr @parse_ddd_cb.rbimpl_id.116, align 8, !tbaa !10 ; 2 uses
  %.not4.i620 = icmp eq i64 %.pr.i619, 0
  br i1 %.not4.i620, label %.lr.ph.i622, label %rbimpl_intern_const.exit624

.lr.ph.i622:                                      ; preds = %rbimpl_intern_const.exit618, %.lr.ph.i622
  %i.yk = tail call i64 @rb_intern2(ptr noundef nonnull @.str.76, i64 noundef 4) #14 ; 3 uses
  store i64 %i.yk, ptr @parse_ddd_cb.rbimpl_id.116, align 8, !tbaa !10
  %.not.i623 = icmp eq i64 %i.yk, 0
  br i1 %.not.i623, label %.lr.ph.i622, label %rbimpl_intern_const.exit624, !llvm.loop !34

rbimpl_intern_const.exit624:                      ; preds = %.lr.ph.i622, %rbimpl_intern_const.exit618
  %.lcssa.i621 = phi i64 [ %.pr.i619, %rbimpl_intern_const.exit618 ], [ %i.yk, %.lr.ph.i622 ]
  %i.yl = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i621) #14
  %i.ym = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !16
  %i.yo = sext i8 %i.yn to i64
  %i.yp = mul nsw i64 %i.yo, 10
  %i.yq = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !16
  %i.ys = sext i8 %i.yr to i64
  %i.yt = add nsw i64 %i.yp, 4294966768
  %i.yu = add nsw i64 %i.yt, %i.ys
  %i.yv = mul nuw nsw i64 %i.yu, 10
  %i.yw = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !16
  %i.yy = sext i8 %i.yx to i64
  %i.yz = add nuw nsw i64 %i.yv, 4294967248
  %i.za = add nsw i64 %i.yz, %i.yy
  %sext979 = shl i64 %i.za, 32
  %i.zb = ashr exact i64 %sext979, 31
  %i.zc = or disjoint i64 %i.zb, 1
  %i.zd = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.yl, i64 noundef %i.zc) #14 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %rbimpl_intern_const.exit421, %bb.q, %rbimpl_intern_const.exit605, %rbimpl_intern_const.exit624, %rbimpl_intern_const.exit550, %rbimpl_intern_const.exit569, %rbimpl_intern_const.exit515, %rbimpl_intern_const.exit523, %rbimpl_intern_const.exit500, %rbimpl_intern_const.exit438, %rbimpl_intern_const.exit333, %rbimpl_intern_const.exit362, %rbimpl_intern_const.exit288, %rbimpl_intern_const.exit306, %rbimpl_intern_const.exit, %rbimpl_intern_const.exit270, %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr %i.a, ptr %i.d, align 8, !tbaa !31
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #14, !srcloc !60
  %i.ze = load ptr, ptr %i.d, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.zf = load volatile i64, ptr %i.ze, align 8, !tbaa !10 ; 0 uses
  %i.zg = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.zh = icmp eq i64 %i.zg, 4
  br i1 %i.zh, label %bb.bd, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.zi = inttoptr i64 %i.zg to ptr               ; 3 uses
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !15
  %i.zk = and i64 %i.zj, 8192
  %.not.i628 = icmp eq i64 %i.zk, 0
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 24 ; 2 uses
  br i1 %.not.i628, label %RSTRING_PTR.exit629, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !16
  br label %RSTRING_PTR.exit629

RSTRING_PTR.exit629:                              ; preds = %bb.ar, %bb.as
  %i.zn = phi ptr [ %i.zm, %bb.as ], [ %i.zl, %bb.ar ] ; 15 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !12 ; 12 uses
  %i.zq = icmp eq i64 %i.j, 4
  br i1 %i.zq, label %bb.az, label %bb.at

bb.at:                                            ; preds = %RSTRING_PTR.exit629
  switch i64 %i.zp, label %.thread717 [
    i64 2, label %bb.au
    i64 4, label %bb.au
    i64 6, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at
  %.pr.i630 = load i64, ptr @parse_ddd_cb.rbimpl_id.117, align 8, !tbaa !10 ; 2 uses
  %.not4.i631 = icmp eq i64 %.pr.i630, 0
  br i1 %.not4.i631, label %.lr.ph.i633, label %n2i.exit638

.lr.ph.i633:                                      ; preds = %bb.au, %.lr.ph.i633
  %i.zr = call i64 @rb_intern2(ptr noundef nonnull @.str.56, i64 noundef 3) #14 ; 3 uses
  store i64 %i.zr, ptr @parse_ddd_cb.rbimpl_id.117, align 8, !tbaa !10
  %.not.i634 = icmp eq i64 %i.zr, 0
  br i1 %.not.i634, label %.lr.ph.i633, label %n2i.exit638, !llvm.loop !34

n2i.exit638:                                      ; preds = %.lr.ph.i633, %bb.au
  %.lcssa.i632 = phi i64 [ %.pr.i630, %bb.au ], [ %i.zr, %.lr.ph.i633 ]
  %i.zs = call i64 @rb_id2sym(i64 noundef %.lcssa.i632) #14
  %i.zt = getelementptr i8, ptr %i.zn, i64 %i.zp
  %i.zu = getelementptr i8, ptr %i.zt, i64 -2
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !16
  %i.zw = sext i8 %i.zv to i64
  %i.zx = mul nsw i64 %i.zw, 10
  %i.zy = add nsw i64 %i.zx, -528
  %i.zz = getelementptr i8, ptr %i.zn, i64 %i.zp
  %i.aaa = getelementptr i8, ptr %i.zz, i64 -1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !16
  %i.aac = sext i8 %i.aab to i64
  %i.aad = add nsw i64 %i.zy, %i.aac
  %i.aae = shl nsw i64 %i.aad, 1
  %i.aaf = or disjoint i64 %i.aae, 1
  %i.aag = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.zs, i64 noundef %i.aaf) #14 ; 0 uses
  %i.aah = icmp samesign ugt i64 %i.zp, 3
  br i1 %i.aah, label %bb.av, label %.thread717

bb.av:                                            ; preds = %n2i.exit638
  %.pr.i639 = load i64, ptr @parse_ddd_cb.rbimpl_id.118, align 8, !tbaa !10 ; 2 uses
  %.not4.i640 = icmp eq i64 %.pr.i639, 0
  br i1 %.not4.i640, label %.lr.ph.i642, label %.loopexit

.lr.ph.i642:                                      ; preds = %bb.av, %.lr.ph.i642
  %i.aai = call i64 @rb_intern2(ptr noundef nonnull @.str.54, i64 noundef 3) #14 ; 3 uses
  store i64 %i.aai, ptr @parse_ddd_cb.rbimpl_id.118, align 8, !tbaa !10
  %.not.i643 = icmp eq i64 %i.aai, 0
  br i1 %.not.i643, label %.lr.ph.i642, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph.i642, %bb.av
  %.lcssa.i641 = phi i64 [ %.pr.i639, %bb.av ], [ %i.aai, %.lr.ph.i642 ]
  %i.aaj = call i64 @rb_id2sym(i64 noundef %.lcssa.i641) #14
  %2 = add nsw i64 %i.zp, -4                      ; 2 uses
  %i.aak = getelementptr inbounds i8, ptr %i.zn, i64 %2
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !16
  %i.aam = sext i8 %i.aal to i64
  %i.aan = mul nsw i64 %i.aam, 10
  %i.aao = add nsw i64 %i.aan, -528
  %i.aap = getelementptr i8, ptr %i.zn, i64 %i.zp
  %i.aaq = getelementptr i8, ptr %i.aap, i64 -3
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !16
  %i.aas = sext i8 %i.aar to i64
  %i.aat = add nsw i64 %i.aao, %i.aas
  %i.aau = shl nsw i64 %i.aat, 1
  %i.aav = or disjoint i64 %i.aau, 1
  %i.aaw = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.aaj, i64 noundef %i.aav) #14 ; 0 uses
  %i.aax = icmp samesign ugt i64 %i.zp, 5
  br i1 %i.aax, label %bb.aw, label %.thread717

bb.aw:                                            ; preds = %.loopexit
  %.pr.i648 = load i64, ptr @parse_ddd_cb.rbimpl_id.119, align 8, !tbaa !10 ; 2 uses
  %.not4.i649 = icmp eq i64 %.pr.i648, 0
  br i1 %.not4.i649, label %.lr.ph.i651, label %rbimpl_intern_const.exit653

.lr.ph.i651:                                      ; preds = %bb.aw, %.lr.ph.i651
  %i.aay = call i64 @rb_intern2(ptr noundef nonnull @.str.52, i64 noundef 4) #14 ; 3 uses
  store i64 %i.aay, ptr @parse_ddd_cb.rbimpl_id.119, align 8, !tbaa !10
  %.not.i652 = icmp eq i64 %i.aay, 0
  br i1 %.not.i652, label %.lr.ph.i651, label %rbimpl_intern_const.exit653, !llvm.loop !34

rbimpl_intern_const.exit653:                      ; preds = %.lr.ph.i651, %bb.aw
  %.lcssa.i650 = phi i64 [ %.pr.i648, %bb.aw ], [ %i.aay, %.lr.ph.i651 ]
  %i.aaz = call i64 @rb_id2sym(i64 noundef %.lcssa.i650) #14
  %i.aba = add i64 %i.zp, -5
  %xtraiter = and i64 %i.zp, 3                    ; 3 uses
  %i.abb = icmp ult i64 %i.aba, 3
  br i1 %i.abb, label %.epil.preheader, label %rbimpl_intern_const.exit653.new

rbimpl_intern_const.exit653.new:                  ; preds = %rbimpl_intern_const.exit653
  %unroll_iter = and i64 %2, -4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %rbimpl_intern_const.exit653.new
  %.012.i654 = phi i32 [ 0, %rbimpl_intern_const.exit653.new ], [ %i.acc, %bb.ax ]
  %.01011.i655 = phi i64 [ 0, %rbimpl_intern_const.exit653.new ], [ %i.acd, %bb.ax ] ; 5 uses
  %niter = phi i64 [ 0, %rbimpl_intern_const.exit653.new ], [ %niter.next.3, %bb.ax ]
  %i.abc = mul nsw i32 %.012.i654, 10
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.01011.i655
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !16
  %i.abf = sext i8 %i.abe to i32
  %i.abg = add i32 %i.abc, -48
  %i.abh = add i32 %i.abg, %i.abf
  %i.abi = mul nsw i32 %i.abh, 10
  %i.abj = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.01011.i655
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 1
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !16
  %i.abm = sext i8 %i.abl to i32
  %i.abn = add i32 %i.abi, -48
  %i.abo = add i32 %i.abn, %i.abm
  %i.abp = mul nsw i32 %i.abo, 10
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.01011.i655
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 2
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !16
  %i.abt = sext i8 %i.abs to i32
  %i.abu = add i32 %i.abp, -48
  %i.abv = add i32 %i.abu, %i.abt
  %i.abw = mul nsw i32 %i.abv, 10
  %i.abx = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.01011.i655
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 3
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !16
  %i.aca = sext i8 %i.abz to i32
  %i.acb = add i32 %i.abw, -48
  %i.acc = add i32 %i.acb, %i.aca                 ; 3 uses
  %i.acd = add nuw nsw i64 %.01011.i655, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %n2i.exit656.unr-lcssa, label %bb.ax, !llvm.loop !61

n2i.exit656.unr-lcssa:                            ; preds = %bb.ax
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %n2i.exit656, label %.epil.preheader

.epil.preheader:                                  ; preds = %n2i.exit656.unr-lcssa, %rbimpl_intern_const.exit653
  %.012.i654.epil.init = phi i32 [ 0, %rbimpl_intern_const.exit653 ], [ %i.acc, %n2i.exit656.unr-lcssa ]
  %.01011.i655.epil.init = phi i64 [ 0, %rbimpl_intern_const.exit653 ], [ %i.acd, %n2i.exit656.unr-lcssa ]
  %lcmp.mod1148 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1148)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader
  %.012.i654.epil = phi i32 [ %.012.i654.epil.init, %.epil.preheader ], [ %i.acj, %bb.ay ]
  %.01011.i655.epil = phi i64 [ %.01011.i655.epil.init, %.epil.preheader ], [ %i.ack, %bb.ay ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ay ]
  %i.ace = mul nsw i32 %.012.i654.epil, 10
  %i.acf = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.01011.i655.epil
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !16
  %i.ach = sext i8 %i.acg to i32
  %i.aci = add i32 %i.ace, -48
  %i.acj = add i32 %i.aci, %i.ach                 ; 2 uses
  %i.ack = add nuw nsw i64 %.01011.i655.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %n2i.exit656, label %bb.ay, !llvm.loop !62

n2i.exit656:                                      ; preds = %bb.ay, %n2i.exit656.unr-lcssa
  %.lcssa1102 = phi i32 [ %i.acc, %n2i.exit656.unr-lcssa ], [ %i.acj, %bb.ay ]
  %i.acl = sext i32 %.lcssa1102 to i64
  br label %.thread717.sink.split

bb.az:                                            ; preds = %RSTRING_PTR.exit629
  switch i64 %i.zp, label %.thread717 [
    i64 2, label %bb.ba
    i64 4, label %bb.ba
    i64 6, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az
  %.pr.i657 = load i64, ptr @parse_ddd_cb.rbimpl_id.120, align 8, !tbaa !10 ; 2 uses
  %.not4.i658 = icmp eq i64 %.pr.i657, 0
  br i1 %.not4.i658, label %.lr.ph.i660, label %rbimpl_intern_const.exit662

.lr.ph.i660:                                      ; preds = %bb.ba, %.lr.ph.i660
  %i.acm = call i64 @rb_intern2(ptr noundef nonnull @.str.52, i64 noundef 4) #14 ; 3 uses
  store i64 %i.acm, ptr @parse_ddd_cb.rbimpl_id.120, align 8, !tbaa !10
  %.not.i661 = icmp eq i64 %i.acm, 0
  br i1 %.not.i661, label %.lr.ph.i660, label %rbimpl_intern_const.exit662, !llvm.loop !34

rbimpl_intern_const.exit662:                      ; preds = %.lr.ph.i660, %bb.ba
  %.lcssa.i659 = phi i64 [ %.pr.i657, %bb.ba ], [ %i.acm, %.lr.ph.i660 ]
  %i.acn = call i64 @rb_id2sym(i64 noundef %.lcssa.i659) #14
  %i.aco = load i8, ptr %i.zn, align 1, !tbaa !16
  %i.acp = sext i8 %i.aco to i64
  %i.acq = mul nsw i64 %i.acp, 10
  %i.acr = getelementptr inbounds nuw i8, ptr %i.zn, i64 1
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !16
  %i.act = sext i8 %i.acs to i64
  %i.acu = add nsw i64 %i.acq, -528
  %i.acv = add nsw i64 %i.acu, %i.act
  %i.acw = shl nsw i64 %i.acv, 1
  %i.acx = or disjoint i64 %i.acw, 1
  %i.acy = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.acn, i64 noundef %i.acx) #14 ; 0 uses
  %i.acz = icmp samesign ugt i64 %i.zp, 3
  br i1 %i.acz, label %bb.bb, label %.thread717

bb.bb:                                            ; preds = %rbimpl_intern_const.exit662
  %.pr.i666 = load i64, ptr @parse_ddd_cb.rbimpl_id.121, align 8, !tbaa !10 ; 2 uses
  %.not4.i667 = icmp eq i64 %.pr.i666, 0
  br i1 %.not4.i667, label %.lr.ph.i669, label %rbimpl_intern_const.exit671

.lr.ph.i669:                                      ; preds = %bb.bb, %.lr.ph.i669
  %i.ada = call i64 @rb_intern2(ptr noundef nonnull @.str.54, i64 noundef 3) #14 ; 3 uses
  store i64 %i.ada, ptr @parse_ddd_cb.rbimpl_id.121, align 8, !tbaa !10
  %.not.i670 = icmp eq i64 %i.ada, 0
  br i1 %.not.i670, label %.lr.ph.i669, label %rbimpl_intern_const.exit671, !llvm.loop !34

rbimpl_intern_const.exit671:                      ; preds = %.lr.ph.i669, %bb.bb
  %.lcssa.i668 = phi i64 [ %.pr.i666, %bb.bb ], [ %i.ada, %.lr.ph.i669 ]
  %i.adb = call i64 @rb_id2sym(i64 noundef %.lcssa.i668) #14
  %i.adc = getelementptr inbounds nuw i8, ptr %i.zn, i64 2
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !16
  %i.ade = sext i8 %i.add to i64
  %i.adf = mul nsw i64 %i.ade, 10
  %i.adg = getelementptr inbounds nuw i8, ptr %i.zn, i64 3
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !16
  %i.adi = sext i8 %i.adh to i64
  %i.adj = add nsw i64 %i.adf, -528
  %i.adk = add nsw i64 %i.adj, %i.adi
  %i.adl = shl nsw i64 %i.adk, 1
  %i.adm = or disjoint i64 %i.adl, 1
  %i.adn = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.adb, i64 noundef %i.adm) #14 ; 0 uses
  %i.ado = icmp samesign ugt i64 %i.zp, 5
  br i1 %i.ado, label %bb.bc, label %.thread717

bb.bc:                                            ; preds = %rbimpl_intern_const.exit671
  %.pr.i675 = load i64, ptr @parse_ddd_cb.rbimpl_id.122, align 8, !tbaa !10 ; 2 uses
  %.not4.i676 = icmp eq i64 %.pr.i675, 0
  br i1 %.not4.i676, label %.lr.ph.i678, label %rbimpl_intern_const.exit680

.lr.ph.i678:                                      ; preds = %bb.bc, %.lr.ph.i678
  %i.adp = call i64 @rb_intern2(ptr noundef nonnull @.str.56, i64 noundef 3) #14 ; 3 uses
  store i64 %i.adp, ptr @parse_ddd_cb.rbimpl_id.122, align 8, !tbaa !10
  %.not.i679 = icmp eq i64 %i.adp, 0
  br i1 %.not.i679, label %.lr.ph.i678, label %rbimpl_intern_const.exit680, !llvm.loop !34

rbimpl_intern_const.exit680:                      ; preds = %.lr.ph.i678, %bb.bc
  %.lcssa.i677 = phi i64 [ %.pr.i675, %bb.bc ], [ %i.adp, %.lr.ph.i678 ]
  %i.adq = call i64 @rb_id2sym(i64 noundef %.lcssa.i677) #14
  %i.adr = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !16
  %i.adt = sext i8 %i.ads to i64
  %i.adu = mul nsw i64 %i.adt, 10
  %i.adv = getelementptr inbounds nuw i8, ptr %i.zn, i64 5
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !16
  %i.adx = sext i8 %i.adw to i64
  %i.ady = add nsw i64 %i.adu, -528
  %i.adz = add nsw i64 %i.ady, %i.adx
  br label %.thread717.sink.split

.thread717.sink.split:                            ; preds = %n2i.exit656, %rbimpl_intern_const.exit680
  %.sink1041 = phi i64 [ %i.adz, %rbimpl_intern_const.exit680 ], [ %i.acl, %n2i.exit656 ]
  %.sink = phi i64 [ %i.adq, %rbimpl_intern_const.exit680 ], [ %i.aaz, %n2i.exit656 ]
  %i.aea = shl nsw i64 %.sink1041, 1
  %i.aeb = or disjoint i64 %i.aea, 1
  %i.aec = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %.sink, i64 noundef %i.aeb) #14 ; 0 uses
  br label %.thread717

.thread717:                                       ; preds = %.thread717.sink.split, %rbimpl_intern_const.exit662, %n2i.exit638, %bb.az, %rbimpl_intern_const.exit671, %bb.at, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr %i.b, ptr %i.e, align 8, !tbaa !31
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #14, !srcloc !63
  %i.aed = load ptr, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.aee = load volatile i64, ptr %i.aed, align 8, !tbaa !10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.thread717, %bb.aq
  %i.aef = icmp eq i64 %i.j, 4
  br i1 %i.aef, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aeg = inttoptr i64 %i.j to ptr
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !12 ; 3 uses
  %.pr.i684 = load i64, ptr @parse_ddd_cb.rbimpl_id.123, align 8, !tbaa !10 ; 2 uses
  %.not4.i685 = icmp eq i64 %.pr.i684, 0
  br i1 %.not4.i685, label %.lr.ph.i687, label %rbimpl_intern_const.exit689

.lr.ph.i687:                                      ; preds = %bb.be, %.lr.ph.i687
  %i.aej = call i64 @rb_intern2(ptr noundef nonnull @.str.58, i64 noundef 12) #14 ; 3 uses
  store i64 %i.aej, ptr @parse_ddd_cb.rbimpl_id.123, align 8, !tbaa !10
  %.not.i688 = icmp eq i64 %i.aej, 0
  br i1 %.not.i688, label %.lr.ph.i687, label %rbimpl_intern_const.exit689, !llvm.loop !34

rbimpl_intern_const.exit689:                      ; preds = %.lr.ph.i687, %bb.be
  %.lcssa.i686 = phi i64 [ %.pr.i684, %bb.be ], [ %i.aej, %.lr.ph.i687 ]
  %i.aek = call i64 @rb_id2sym(i64 noundef %.lcssa.i686) #14
  %i.ael = call i64 @rb_str_to_inum(i64 noundef %i.j, i32 noundef 10, i32 noundef 0) #14
  %.pr.i690 = load i64, ptr @parse_ddd_cb.rbimpl_id.124, align 8, !tbaa !10 ; 2 uses
  %.not4.i691 = icmp eq i64 %.pr.i690, 0
  br i1 %.not4.i691, label %.lr.ph.i693, label %rbimpl_intern_const.exit695

.lr.ph.i693:                                      ; preds = %rbimpl_intern_const.exit689, %.lr.ph.i693
  %i.aem = call i64 @rb_intern2(ptr noundef nonnull @.str.50, i64 noundef 2) #14 ; 3 uses
  store i64 %i.aem, ptr @parse_ddd_cb.rbimpl_id.124, align 8, !tbaa !10
  %.not.i694 = icmp eq i64 %i.aem, 0
  br i1 %.not.i694, label %.lr.ph.i693, label %rbimpl_intern_const.exit695, !llvm.loop !34

rbimpl_intern_const.exit695:                      ; preds = %.lr.ph.i693, %rbimpl_intern_const.exit689
  %.lcssa.i692 = phi i64 [ %.pr.i690, %rbimpl_intern_const.exit689 ], [ %i.aem, %.lr.ph.i693 ]
  %i.aen = add i64 %i.aei, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.aen, -1
  br i1 %or.cond.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %rbimpl_intern_const.exit695
  %i.aeo = shl nsw i64 %i.aei, 1
  %i.aep = or disjoint i64 %i.aeo, 1
  br label %rb_long2num_inline.exit

bb.bg:                                            ; preds = %rbimpl_intern_const.exit695
  %i.aeq = call i64 @rb_int2big(i64 noundef %i.aei) #14
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.bf, %bb.bg
  %.0.i = phi i64 [ %i.aep, %bb.bf ], [ %i.aeq, %bb.bg ]
  %i.aer = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 21, i64 noundef %.lcssa.i692, i32 noundef 1, i64 noundef %.0.i) #14
  %i.aes = call i64 @rb_rational_new(i64 noundef %i.ael, i64 noundef %i.aer) #14
  %i.aet = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.aek, i64 noundef %i.aes) #14 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %rb_long2num_inline.exit, %bb.bd
  %i.aeu = load i64, ptr %i.c, align 8, !tbaa !10 ; 6 uses
  %i.aev = icmp eq i64 %i.aeu, 4
  br i1 %i.aev, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aew = inttoptr i64 %i.aeu to ptr             ; 3 uses
end_hunk_0
