Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbcenc?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sbc_encode_frame:bb.a
  %i.ji = icmp samesign ult i64 %indvars.iv.next.i60, %i.jh
  br i1 %i.ji, label %bb.v, label %._crit_edge.loopexit.i61, !llvm.loop !60

._crit_edge.loopexit.i61:                         ; preds = %put_bits.exit104.i
  %.pre212.i = load i8, ptr %i.j, align 8, !tbaa !39
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.loopexit.i61, %.preheader131.i
  %i.jj = phi i8 [ %i.ia, %.preheader131.i ], [ %.pre212.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %i.jk = phi i8 [ %i.ib, %.preheader131.i ], [ %i.iw, %._crit_edge.loopexit.i61 ]
  %i.jl = phi i8 [ 0, %.preheader131.i ], [ %i.iw, %._crit_edge.loopexit.i61 ]
  %.sroa.28.2.lcssa.i = phi ptr [ %.sroa.28.1141.i, %.preheader131.i ], [ %.sroa.28.10.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %.sroa.15.2.lcssa.i = phi i32 [ %.sroa.15.1142.i, %.preheader131.i ], [ %.0.i.i103.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %.sroa.0.2.lcssa.i = phi i32 [ %.sroa.0.1143.i, %.preheader131.i ], [ %.026.i.i102.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %.295.lcssa.i = phi i32 [ %.194144.i, %.preheader131.i ], [ %i.jg, %._crit_edge.loopexit.i61 ] ; 2 uses
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.jm = zext i8 %i.jj to i64
  %i.jn = icmp samesign ult i64 %indvars.iv.next190.i, %i.jm
  br i1 %i.jn, label %.preheader131.i, label %._crit_edge146.i, !llvm.loop !61

._crit_edge146.i:                                 ; preds = %._crit_edge.i62, %bb.u
  %.sroa.28.1.lcssa.i = phi ptr [ %.sroa.28.0.i, %bb.u ], [ %.sroa.28.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.15.1.lcssa.i = phi i32 [ %.sroa.15.0.i, %bb.u ], [ %.sroa.15.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i32 [ %.sroa.0.0.i, %bb.u ], [ %.sroa.0.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.194.lcssa.i = phi i32 [ %.093.i, %bb.u ], [ %.295.lcssa.i, %._crit_edge.i62 ] ; 3 uses
  %i.jo = srem i32 %.194.lcssa.i, 8               ; 2 uses
  %.not99.i = icmp eq i32 %i.jo, 0
  br i1 %.not99.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge146.i
  %i.jp = sub nsw i32 8, %i.jo
  %i.jq = ashr i32 %.194.lcssa.i, 3
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.a, i64 %i.jr ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !84
  %i.ju = zext i8 %i.jt to i32
  %i.jv = shl nuw nsw i32 %i.ju, %i.jp
  %i.jw = trunc i32 %i.jv to i8
  store i8 %i.jw, ptr %i.js, align 1, !tbaa !84
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge146.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !41
  %i.jz = sext i32 %.194.lcssa.i to i64
  %i.ka = call zeroext i8 @ff_sbc_crc8(ptr noundef %i.jy, ptr noundef nonnull %i.a, i64 noundef %i.jz) #8
  %i.kb = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 3
  store i8 %i.ka, ptr %i.kc, align 1, !tbaa !84
  call void @ff_sbc_calculate_bits(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b) #8
  %i.kd = load i8, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  %.not182.i = icmp eq i8 %i.kd, 0
  br i1 %.not182.i, label %.preheader129.i, label %.preheader130.lr.ph.i

.preheader130.lr.ph.i:                            ; preds = %bb.ac
  %i.ke = load i8, ptr %i.i, align 16, !tbaa !35  ; 4 uses
  %.not183.i = icmp eq i8 %i.ke, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br i1 %.not183.i, label %.preheader129.i, label %.preheader130.preheader.i

.preheader130.preheader.i:                        ; preds = %.preheader130.lr.ph.i
  %wide.trip.count198.i = zext i8 %i.kd to i64
  %wide.trip.count.i = zext i8 %i.ke to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.kg = icmp eq i8 %i.ke, 1
  %unroll_iter = and i64 %wide.trip.count.i, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i8 %i.ke to i1
  br label %.preheader130.i

.preheader130.i:                                  ; preds = %._crit_edge153.i, %.preheader130.preheader.i
  %indvars.iv195.i = phi i64 [ 0, %.preheader130.preheader.i ], [ %indvars.iv.next196.i, %._crit_edge153.i ] ; 5 uses
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv195.i ; 3 uses
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.kf, i64 %indvars.iv195.i ; 3 uses
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv195.i ; 3 uses
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv195.i ; 3 uses
  br i1 %i.kg, label %.epil.preheader, label %.preheader130.i.new

.preheader129.i:                                  ; preds = %._crit_edge153.i, %.preheader130.lr.ph.i, %bb.ac
  %i.kl = load i8, ptr %i.m, align 1, !tbaa !36   ; 2 uses
  %.not184.i = icmp eq i8 %i.kl, 0
  br i1 %.not184.i, label %._crit_edge176.i, label %.preheader128.lr.ph.i

.preheader128.lr.ph.i:                            ; preds = %.preheader129.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.kn = ptrtoint ptr %i.hn to i64
  br label %.preheader128.i

.preheader130.i.new:                              ; preds = %.preheader130.i, %.preheader130.i.new
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i.1, %.preheader130.i.new ], [ 0, %.preheader130.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %.preheader130.i.new ], [ 0, %.preheader130.i ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv192.i
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !43
  %notmask.i = shl nsw i32 -1, %i.kp
  %i.kq = xor i32 %notmask.i, -1
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv192.i
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !43 ; 2 uses
  %i.kt = sub i32 15, %i.ks
  %i.ku = shl i32 %i.kq, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv192.i
  store i32 %i.ku, ptr %i.kv, align 8, !tbaa !43
  %i.kw = add i32 %i.ks, 16
  %i.kx = shl nuw i32 1, %i.kw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv192.i
  store i32 %i.kx, ptr %i.ky, align 8, !tbaa !43
  %indvars.iv.next193.i = or disjoint i64 %indvars.iv192.i, 1 ; 4 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next193.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !43
  %notmask.i.1 = shl nsw i32 -1, %i.la
  %i.lb = xor i32 %notmask.i.1, -1
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv.next193.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !43 ; 2 uses
  %i.le = sub i32 15, %i.ld
  %i.lf = shl i32 %i.lb, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next193.i
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !43
  %i.lh = add i32 %i.ld, 16
  %i.li = shl nuw i32 1, %i.lh
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.next193.i
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !43
  %indvars.iv.next193.i.1 = add nuw nsw i64 %indvars.iv192.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge153.i.unr-lcssa, label %.preheader130.i.new, !llvm.loop !62

._crit_edge153.i.unr-lcssa:                       ; preds = %.preheader130.i.new
  br i1 %lcmp.mod.not, label %._crit_edge153.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge153.i.unr-lcssa, %.preheader130.i
  %indvars.iv192.i.epil.init = phi i64 [ 0, %.preheader130.i ], [ %indvars.iv.next193.i.1, %._crit_edge153.i.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv192.i.epil.init
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !43
  %notmask.i.epil = shl nsw i32 -1, %i.ll
  %i.lm = xor i32 %notmask.i.epil, -1
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv192.i.epil.init
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !43 ; 2 uses
  %i.lp = sub i32 15, %i.lo
  %i.lq = shl i32 %i.lm, %i.lp
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv192.i.epil.init
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !43
  %i.ls = add i32 %i.lo, 16
  %i.lt = shl nuw i32 1, %i.ls
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv192.i.epil.init
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !43
  br label %._crit_edge153.i

._crit_edge153.i:                                 ; preds = %._crit_edge153.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %wide.trip.count198.i
  br i1 %exitcond199.not.i, label %.preheader129.i, label %.preheader130.i, !llvm.loop !63

.preheader128.i:                                  ; preds = %._crit_edge168.i, %.preheader128.lr.ph.i
  %i.lv = phi i8 [ %i.kl, %.preheader128.lr.ph.i ], [ %i.nn, %._crit_edge168.i ]
  %i.lw = phi i8 [ %i.kd, %.preheader128.lr.ph.i ], [ %i.no, %._crit_edge168.i ] ; 2 uses
  %i.lx = phi i8 [ %i.kd, %.preheader128.lr.ph.i ], [ %i.np, %._crit_edge168.i ]
  %indvars.iv206.i = phi i64 [ 0, %.preheader128.lr.ph.i ], [ %indvars.iv.next207.i, %._crit_edge168.i ] ; 2 uses
  %.sroa.0.3174.i = phi i32 [ %.sroa.0.1.lcssa.i, %.preheader128.lr.ph.i ], [ %.sroa.0.4.lcssa.i, %._crit_edge168.i ] ; 2 uses
  %.sroa.15.3173.i = phi i32 [ %.sroa.15.1.lcssa.i, %.preheader128.lr.ph.i ], [ %.sroa.15.4.lcssa.i, %._crit_edge168.i ] ; 2 uses
  %.sroa.28.3172.i = phi ptr [ %.sroa.28.1.lcssa.i, %.preheader128.lr.ph.i ], [ %.sroa.28.4.lcssa.i, %._crit_edge168.i ] ; 2 uses
  %.not185.i = icmp eq i8 %i.lx, 0
  br i1 %.not185.i, label %._crit_edge168.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader128.i
  %i.ly = getelementptr inbounds nuw [64 x i8], ptr %i.km, i64 %indvars.iv206.i
  %.pre213.i = load i8, ptr %i.i, align 16, !tbaa !35 ; 2 uses
  br label %.preheader.i63

.preheader.i63:                                   ; preds = %._crit_edge160.i, %.preheader.lr.ph.i
  %i.lz = phi i8 [ %i.lw, %.preheader.lr.ph.i ], [ %i.ni, %._crit_edge160.i ]
  %i.ma = phi i8 [ %.pre213.i, %.preheader.lr.ph.i ], [ %i.nj, %._crit_edge160.i ] ; 2 uses
  %i.mb = phi i8 [ %.pre213.i, %.preheader.lr.ph.i ], [ %i.nk, %._crit_edge160.i ]
  %indvars.iv203.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next204.i, %._crit_edge160.i ] ; 5 uses
  %.sroa.0.4166.i = phi i32 [ %.sroa.0.3174.i, %.preheader.lr.ph.i ], [ %.sroa.0.5.lcssa.i, %._crit_edge160.i ] ; 2 uses
  %.sroa.15.4165.i = phi i32 [ %.sroa.15.3173.i, %.preheader.lr.ph.i ], [ %.sroa.15.5.lcssa.i, %._crit_edge160.i ] ; 2 uses
  %.sroa.28.4164.i = phi ptr [ %.sroa.28.3172.i, %.preheader.lr.ph.i ], [ %.sroa.28.5.lcssa.i, %._crit_edge160.i ] ; 2 uses
  %.not186.i = icmp eq i8 %i.mb, 0
  br i1 %.not186.i, label %._crit_edge160.i, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %.preheader.i63
  %i.mc = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv203.i
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv203.i
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv203.i
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %indvars.iv203.i
  br label %bb.ad

bb.ad:                                            ; preds = %put_bits.exit108.i, %.lr.ph159.i
  %i.mg = phi i8 [ %i.ma, %.lr.ph159.i ], [ %i.nf, %put_bits.exit108.i ] ; 2 uses
  %indvars.iv200.i = phi i64 [ 0, %.lr.ph159.i ], [ %indvars.iv.next201.i, %put_bits.exit108.i ] ; 5 uses
  %.sroa.0.5157.i = phi i32 [ %.sroa.0.4166.i, %.lr.ph159.i ], [ %.sroa.0.6.i, %put_bits.exit108.i ] ; 3 uses
  %.sroa.15.5156.i = phi i32 [ %.sroa.15.4165.i, %.lr.ph159.i ], [ %.sroa.15.6.i, %put_bits.exit108.i ] ; 6 uses
  %.sroa.28.5155.i = phi ptr [ %.sroa.28.4164.i, %.lr.ph159.i ], [ %.sroa.28.6.i, %put_bits.exit108.i ] ; 6 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv200.i
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !43 ; 6 uses
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %put_bits.exit108.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv200.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !43
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv200.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !43
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv200.i
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !84
  %i.mq = add i32 %i.mp, %i.mn
  %4 = call i32 @llvm.umulh.i32(i32 %i.ml, i32 %i.mq) ; 3 uses
  %i.mr = icmp slt i32 %i.mi, %.sroa.15.5156.i
  br i1 %i.mr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ms = shl i32 %.sroa.0.5157.i, %i.mi
  %i.mt = or i32 %4, %i.ms
  %i.mu = sub nsw i32 %.sroa.15.5156.i, %i.mi
  br label %put_bits.exit108.i

bb.ag:                                            ; preds = %bb.ae
  %i.mv = ptrtoint ptr %.sroa.28.5155.i to i64
  %i.mw = sub i64 %i.kn, %i.mv
  %i.mx = icmp ugt i64 %i.mw, 3
  br i1 %i.mx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.my = shl i32 %.sroa.0.5157.i, %.sroa.15.5156.i
  %i.mz = sub nsw i32 %i.mi, %.sroa.15.5156.i
  %i.na = lshr i32 %4, %i.mz
  %i.nb = or i32 %i.na, %i.my
  %i.nc = call i32 @llvm.bswap.i32(i32 %i.nb)
  store i32 %i.nc, ptr %.sroa.28.5155.i, align 1, !tbaa !84
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.28.5155.i, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.28.11.i = phi ptr [ %i.nd, %bb.ah ], [ %.sroa.28.5155.i, %bb.ai ]
  %reass.sub.i105.i = add i32 %.sroa.15.5156.i, 32
  %i.ne = sub i32 %reass.sub.i105.i, %i.mi
  %.pre214.i = load i8, ptr %i.i, align 16, !tbaa !35
  br label %put_bits.exit108.i

put_bits.exit108.i:                               ; preds = %bb.aj, %bb.af, %bb.ad
  %i.nf = phi i8 [ %i.mg, %bb.ad ], [ %i.mg, %bb.af ], [ %.pre214.i, %bb.aj ] ; 4 uses
  %.sroa.28.6.i = phi ptr [ %.sroa.28.5155.i, %bb.ad ], [ %.sroa.28.5155.i, %bb.af ], [ %.sroa.28.11.i, %bb.aj ] ; 2 uses
  %.sroa.15.6.i = phi i32 [ %.sroa.15.5156.i, %bb.ad ], [ %i.mu, %bb.af ], [ %i.ne, %bb.aj ] ; 2 uses
  %.sroa.0.6.i = phi i32 [ %.sroa.0.5157.i, %bb.ad ], [ %i.mt, %bb.af ], [ %4, %bb.aj ] ; 2 uses
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.ng = zext i8 %i.nf to i64
  %i.nh = icmp samesign ult i64 %indvars.iv.next201.i, %i.ng
  br i1 %i.nh, label %bb.ad, label %._crit_edge160.loopexit.i, !llvm.loop !64

._crit_edge160.loopexit.i:                        ; preds = %put_bits.exit108.i
  %.pre215.i = load i8, ptr %i.j, align 8, !tbaa !39
  br label %._crit_edge160.i

._crit_edge160.i:                                 ; preds = %._crit_edge160.loopexit.i, %.preheader.i63
  %i.ni = phi i8 [ %i.lz, %.preheader.i63 ], [ %.pre215.i, %._crit_edge160.loopexit.i ] ; 4 uses
  %i.nj = phi i8 [ %i.ma, %.preheader.i63 ], [ %i.nf, %._crit_edge160.loopexit.i ]
  %i.nk = phi i8 [ 0, %.preheader.i63 ], [ %i.nf, %._crit_edge160.loopexit.i ]
  %.sroa.28.5.lcssa.i = phi ptr [ %.sroa.28.4164.i, %.preheader.i63 ], [ %.sroa.28.6.i, %._crit_edge160.loopexit.i ] ; 2 uses
  %.sroa.15.5.lcssa.i = phi i32 [ %.sroa.15.4165.i, %.preheader.i63 ], [ %.sroa.15.6.i, %._crit_edge160.loopexit.i ] ; 2 uses
  %.sroa.0.5.lcssa.i = phi i32 [ %.sroa.0.4166.i, %.preheader.i63 ], [ %.sroa.0.6.i, %._crit_edge160.loopexit.i ] ; 2 uses
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %i.nl = zext i8 %i.ni to i64
  %i.nm = icmp samesign ult i64 %indvars.iv.next204.i, %i.nl
  br i1 %i.nm, label %.preheader.i63, label %._crit_edge168.loopexit.i, !llvm.loop !65

._crit_edge168.loopexit.i:                        ; preds = %._crit_edge160.i
  %.pre216.i = load i8, ptr %i.m, align 1, !tbaa !36
  br label %._crit_edge168.i

._crit_edge168.i:                                 ; preds = %._crit_edge168.loopexit.i, %.preheader128.i
  %i.nn = phi i8 [ %i.lv, %.preheader128.i ], [ %.pre216.i, %._crit_edge168.loopexit.i ] ; 2 uses
  %i.no = phi i8 [ %i.lw, %.preheader128.i ], [ %i.ni, %._crit_edge168.loopexit.i ]
  %i.np = phi i8 [ 0, %.preheader128.i ], [ %i.ni, %._crit_edge168.loopexit.i ]
  %.sroa.28.4.lcssa.i = phi ptr [ %.sroa.28.3172.i, %.preheader128.i ], [ %.sroa.28.5.lcssa.i, %._crit_edge168.loopexit.i ] ; 2 uses
  %.sroa.15.4.lcssa.i = phi i32 [ %.sroa.15.3173.i, %.preheader128.i ], [ %.sroa.15.5.lcssa.i, %._crit_edge168.loopexit.i ] ; 2 uses
  %.sroa.0.4.lcssa.i = phi i32 [ %.sroa.0.3174.i, %.preheader128.i ], [ %.sroa.0.5.lcssa.i, %._crit_edge168.loopexit.i ] ; 2 uses
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %i.nq = zext i8 %i.nn to i64
  %i.nr = icmp samesign ult i64 %indvars.iv.next207.i, %i.nq
  br i1 %i.nr, label %.preheader128.i, label %._crit_edge176.i, !llvm.loop !66

._crit_edge176.i:                                 ; preds = %._crit_edge168.i, %.preheader129.i
  %.sroa.28.3.lcssa.i = phi ptr [ %.sroa.28.1.lcssa.i, %.preheader129.i ], [ %.sroa.28.4.lcssa.i, %._crit_edge168.i ]
  %.sroa.15.3.lcssa.i = phi i32 [ %.sroa.15.1.lcssa.i, %.preheader129.i ], [ %.sroa.15.4.lcssa.i, %._crit_edge168.i ] ; 3 uses
  %.sroa.0.3.lcssa.i = phi i32 [ %.sroa.0.1.lcssa.i, %.preheader129.i ], [ %.sroa.0.4.lcssa.i, %._crit_edge168.i ]
  %i.ns = icmp slt i32 %.sroa.15.3.lcssa.i, 32
  br i1 %i.ns, label %.lr.ph.i.i, label %sbc_pack_frame.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge176.i
  %i.nt = shl i32 %.sroa.0.3.lcssa.i, %.sroa.15.3.lcssa.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i.i
  %.sroa.28.13.i = phi ptr [ %.sroa.28.3.lcssa.i, %.lr.ph.i.i ], [ %i.nx, %bb.am ] ; 3 uses
  %.sroa.15.7.i = phi i32 [ %.sroa.15.3.lcssa.i, %.lr.ph.i.i ], [ %i.nz, %bb.am ] ; 2 uses
  %.sroa.0.7.i = phi i32 [ %i.nt, %.lr.ph.i.i ], [ %i.ny, %bb.am ] ; 2 uses
  %i.nu = icmp ult ptr %.sroa.28.13.i, %i.hn
  br i1 %i.nu, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 160) #8
  call void @abort() #9
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.nv = lshr i32 %.sroa.0.7.i, 24
  %i.nw = trunc nuw i32 %i.nv to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.28.13.i, i64 1
  store i8 %i.nw, ptr %.sroa.28.13.i, align 1, !tbaa !84
  %i.ny = shl i32 %.sroa.0.7.i, 8
  %i.nz = add nsw i32 %.sroa.15.7.i, 8
  %i.oa = icmp slt i32 %.sroa.15.7.i, 24
  br i1 %i.oa, label %bb.ak, label %sbc_pack_frame.exit, !llvm.loop !67

sbc_pack_frame.exit:                              ; preds = %bb.am, %._crit_edge176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store i32 1, ptr %3, align 4, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %bb.a, %sbc_pack_frame.exit
  %.054 = phi i32 [ 0, %sbc_pack_frame.exit ], [ 0, %bb.a ], [ %i.as, %bb.b ]
  ret i32 %.054
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @ff_sbcdsp_init(ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare zeroext i8 @ff_sbc_crc8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_sbc_calculate_bits(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"short", !5, i64 0}
!30 = !{!"sbc_frame", !5, i64 0, !5, i64 1, !6, i64 4, !5, i64 8, !6, i64 12, !5, i64 16, !5, i64 17, !29, i64 18, !5, i64 20, !24, i64 24, !5, i64 32, !5, i64 96}
!31 = !{!"sbc_dsp_context", !6, i64 0, !5, i64 4, !5, i64 16, !9, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !9, i64 1360, !9, i64 1368, !9, i64 1376, !9, i64 1384}
!32 = !{!"SBCEncContext", !10, i64 0, !13, i64 8, !6, i64 16, !30, i64 32, !31, i64 1152}
!33 = !{!32, !6, i64 16}
!34 = !{!30, !6, i64 4}
!35 = !{!30, !5, i64 16}
!36 = !{!30, !5, i64 1}
!37 = !{!30, !6, i64 12}
!38 = !{!30, !5, i64 17}
!39 = !{!30, !5, i64 8}
!40 = !{!30, !29, i64 18}
!41 = !{!30, !24, i64 24}
!42 = !{!32, !6, i64 1152}
!43 = !{!6, !6, i64 0}
!44 = !{!30, !5, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = !{!27, !6, i64 688}
!48 = !{!27, !6, i64 356}
!49 = !{!27, !6, i64 344}
!50 = !{!27, !6, i64 376}
!51 = !{!27, !6, i64 420}
!52 = !{!32, !13, i64 8}
!53 = !{!27, !13, i64 56}
!54 = !{!32, !5, i64 1156}
!55 = distinct !{null}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !45}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !45}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !45}
!68 = !{!"p2 omnipotent char", !25, i64 0}
!69 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!70 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!71 = !{!"AVFrame", !5, i64 0, !5, i64 64, !68, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !69, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !70, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!72 = !{!71, !6, i64 112}
!73 = !{!32, !9, i64 2520}
!74 = !{!14, !14, i64 0}
!75 = !{!32, !9, i64 2512}
!76 = !{!31, !6, i64 0}
!77 = !{!31, !5, i64 4}
!78 = !{!31, !9, i64 1344}
!79 = !{!31, !9, i64 1352}
!80 = !{!32, !9, i64 2536}
!81 = !{!32, !9, i64 2528}
!82 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!83 = !{!82, !14, i64 24}
!84 = !{!5, !5, i64 0}
!85 = !{!82, !6, i64 32}
end_hunk_0
