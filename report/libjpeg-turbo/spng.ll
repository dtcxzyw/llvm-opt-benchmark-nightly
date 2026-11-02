Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@spng_decode_scanline:bb.a
  %i.ie = add i8 %i.id, %i.ib
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !51
  %i.if = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.if ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !51
  %i.ik = add i8 %i.ij, %i.ih
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !51
  %i.il = add nuw i64 %.06.i.i.i, 2               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !51
  %i.io = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.il ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !51
  %i.iq = add i8 %i.ip, %i.in
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !51
  %i.ir = add nuw i64 %.06.i.i.i, 3               ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ir ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !51
  %i.iw = add i8 %i.iv, %i.it
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !51
  %i.ix = add nuw i64 %.06.i.i.i, 4               ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ix, %i.fh
  br i1 %exitcond.not.i.i.i.3, label %read_scanline.exit.thread356, label %.lr.ph.i80.i.i, !llvm.loop !251

bb.ag:                                            ; preds = %bb.am, %.lr.ph.i65.i
  %.07288.i.i = phi i64 [ 0, %.lr.ph.i65.i ], [ %i.jx, %bb.am ] ; 5 uses
  %.not.i66.i = icmp ult i64 %.07288.i.i, %i.fi
  br i1 %.not.i66.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iy = sub nuw i64 %.07288.i.i, %i.fi          ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !51
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.iy
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !51
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.070.i.i = phi i8 [ %i.ja, %bb.ah ], [ 0, %bb.ag ] ; 4 uses
  %.068.i.i = phi i8 [ %i.jc, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %.069.in.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.07288.i.i
  %.069.i.i = load i8, ptr %.069.in.i.i, align 1, !tbaa !51 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.07288.i.i ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !51  ; 4 uses
  switch i8 %i.fd, label %bb.am [
    i8 1, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.jf = add i8 %i.je, %.070.i.i
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.jg = zext i8 %.070.i.i to i16
  %i.jh = zext i8 %.069.i.i to i16
  %i.ji = add nuw nsw i16 %i.jh, %i.jg
  %i.jj = lshr i16 %i.ji, 1
  %i.jk = trunc nuw i16 %i.jj to i8
  %i.jl = add i8 %i.je, %i.jk
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.jm = zext i8 %.070.i.i to i32                ; 2 uses
  %i.jn = zext i8 %.069.i.i to i32
  %i.jo = zext i8 %.068.i.i to i32                ; 2 uses
  %i.jp = sub nsw i32 %i.jm, %i.jo                ; 2 uses
  %i.jq = add nsw i32 %i.jp, %i.jn                ; 2 uses
  %i.jr = sub nsw i32 %i.jq, %i.jm
  %i.js = tail call i32 @llvm.abs.i32(i32 %i.jr, i1 true) ; 2 uses
  %i.jt = tail call i32 @llvm.abs.i32(i32 %i.jp, i1 true) ; 2 uses
  %i.ju = sub nsw i32 %i.jq, %i.jo
  %i.jv = tail call i32 @llvm.abs.i32(i32 %i.ju, i1 true) ; 2 uses
  %.not.i81.i.i = icmp samesign ugt i32 %i.js, %i.jt
  %.not20.i.i.i = icmp samesign ugt i32 %i.js, %i.jv
  %or.cond.i.i.i = select i1 %.not.i81.i.i, i1 true, i1 %.not20.i.i.i
  %.not21.i.i.i = icmp samesign ugt i32 %i.jt, %i.jv
  %..i.i.i = select i1 %.not21.i.i.i, i8 %.068.i.i, i8 %.069.i.i
  %.0.i.i.i = select i1 %or.cond.i.i.i, i8 %..i.i.i, i8 %.070.i.i
  %i.jw = add i8 %.0.i.i.i, %i.je
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.071.i.i = phi i8 [ %i.je, %bb.ai ], [ %i.jf, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.jw, %bb.al ]
  store i8 %.071.i.i, ptr %i.jd, align 1, !tbaa !51
  %i.jx = add nuw i64 %.07288.i.i, 1              ; 2 uses
  %exitcond.not.i67.i = icmp eq i64 %i.jx, %i.fh
  br i1 %exitcond.not.i67.i, label %read_scanline.exit.thread356, label %bb.ag, !llvm.loop !252

read_scanline.exit.thread356:                     ; preds = %.lr.ph.i80.i.i.prol.loopexit, %.lr.ph.i80.i.i, %.lr.ph.i79.i.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.am, %middle.block712, %vec.epilog.middle.block, %bb.w, %.preheader.i.i, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.af, %.critedge.i.i
  store i8 %.085.i, ptr %i.fc, align 8, !tbaa !71
  %i.jy = load ptr, ptr %i.r, align 8, !tbaa !54  ; 33 uses
  %.not443 = icmp ne i32 %i.ae, 0                 ; 15 uses
  br i1 %.not443, label %.lr.ph, label %read_scanline.exit.thread356.rgb8_row_to_rgba8.exit_crit_edge

read_scanline.exit.thread356.rgb8_row_to_rgba8.exit_crit_edge: ; preds = %read_scanline.exit.thread356
  %.pre503 = and i16 %.sroa.0.0.copyload, 1
  br label %rgb8_row_to_rgba8.exit

.lr.ph:                                           ; preds = %read_scanline.exit.thread356
  %i.jz = and i16 %.sroa.0.0.copyload, 64
  %.not292 = icmp eq i16 %i.jz, 0
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 381
  %i.kb = and i16 %.sroa.0.0.copyload, 1          ; 12 uses
  %.not294 = icmp eq i16 %i.kb, 0                 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 2092 ; 2 uses
  %i.kd = and i32 %i.z, 5
  %.not296 = icmp eq i32 %i.kd, 0                 ; 3 uses
  %i.ke = icmp eq i32 %i.z, 1                     ; 3 uses
  br i1 %.not292, label %.lr.ph.split, label %bb.an

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.kf = and i16 %.sroa.0.0.copyload, 256
  %.not293 = icmp eq i16 %i.kf, 0
  br i1 %.not293, label %.lr.ph.split.split.preheader, label %bb.ap

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext i32 %i.ae to i64        ; 7 uses
  br label %.lr.ph.split.split

read_scanline.exit.thread:                        ; preds = %read_scanline_bytes.exit.i, %read_scanline_bytes.exit60.i, %read_scanline_bytes.exit60.thread70.i, %bb.f, %bb.ac, %u16_row_to_host.exit.i, %bb.l, %read_scanline_bytes.exit60.thread74.i, %bb.y, %read_scanline_bytes.exit.thread92.i
  %.042.i355 = phi i32 [ %.0.i.ph.i, %read_scanline_bytes.exit.thread92.i ], [ 65, %read_scanline_bytes.exit60.thread70.i ], [ 80, %bb.f ], [ 65, %bb.ac ], [ 80, %u16_row_to_host.exit.i ], [ 80, %bb.l ], [ %.0.i53.ph.i, %read_scanline_bytes.exit60.thread74.i ], [ 65, %bb.y ], [ %i.bq, %read_scanline_bytes.exit60.i ], [ %i.be, %read_scanline_bytes.exit.i ]
  store i32 0, ptr %i.e, align 8, !tbaa !50
  br label %update_row_info.exit.thread

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %expand_row.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %expand_row.exit ] ; 9 uses
  %.0241442 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.kh, %expand_row.exit ] ; 2 uses
  %.0243441 = phi i16 [ 0, %.lr.ph.split.split.preheader ], [ %.5, %expand_row.exit ] ; 8 uses
  %.0245440 = phi i16 [ 0, %.lr.ph.split.split.preheader ], [ %.4249, %expand_row.exit ] ; 8 uses
  %.0250439 = phi i16 [ 0, %.lr.ph.split.split.preheader ], [ %.4254, %expand_row.exit ] ; 8 uses
  %.0255438 = phi i16 [ 0, %.lr.ph.split.split.preheader ], [ %.4259, %expand_row.exit ] ; 8 uses
  %.0260437 = phi i8 [ 0, %.lr.ph.split.split.preheader ], [ %.4264, %expand_row.exit ] ; 9 uses
  %.0265436 = phi i8 [ 0, %.lr.ph.split.split.preheader ], [ %.3268, %expand_row.exit ] ; 9 uses
  %.0269435 = phi i8 [ 0, %.lr.ph.split.split.preheader ], [ %.3272, %expand_row.exit ] ; 9 uses
  %.0273434 = phi i8 [ 0, %.lr.ph.split.split.preheader ], [ %.3276, %expand_row.exit ] ; 9 uses
  %.sroa.6.0431 = phi i32 [ %i.v, %.lr.ph.split.split.preheader ], [ %.sroa.6.4, %expand_row.exit ] ; 14 uses
  %.sroa.19.0430 = phi ptr [ %i.s, %.lr.ph.split.split.preheader ], [ %.sroa.19.4, %expand_row.exit ] ; 14 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %.0241442 ; 13 uses
  %i.kh = add nuw nsw i64 %.0241442, %.0242
  %i.ki = load i8, ptr %i.ka, align 1, !tbaa !79
  switch i8 %i.ki, label %bb.bn [
    i8 2, label %bb.aq
    i8 3, label %bb.au
    i8 6, label %bb.bb
    i8 0, label %bb.be
    i8 4, label %bb.bk
  ]

bb.an:                                            ; preds = %.lr.ph
  %i.kj = and i16 %.sroa.0.0.copyload, 128
  %.not300 = icmp eq i16 %i.kj, 0
  br i1 %.not300, label %bb.ao, label %rgb8_row_to_rgba8.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.jy, i64 %i.fh, i1 false)
  br label %rgb8_row_to_rgba8.exit

bb.ap:                                            ; preds = %.lr.ph.split
  %i.kk = load i8, ptr %i.o, align 4, !tbaa !53
  %i.kl = zext i8 %i.kk to i32
  tail call fastcc void @unpack_scanline(ptr noundef %1, ptr noundef %i.jy, i32 noundef %i.ae, i32 noundef %i.kl, i32 noundef %i.z)
  br label %rgb8_row_to_rgba8.exit

bb.aq:                                            ; preds = %.lr.ph.split.split
  %i.km = load i8, ptr %i.o, align 4, !tbaa !53
  %i.kn = icmp eq i8 %i.km, 16
  br i1 %i.kn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ko = mul i64 %indvars.iv, 6
  %i.kp = and i64 %i.ko, 4294967294
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kp ; 3 uses
  %.0.copyload66 = load i16, ptr %i.kq, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %.0.copyload59 = load i16, ptr %i.kr, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %.0.copyload52 = load i16, ptr %i.ks, align 1
  br label %bb.bn

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ke, label %.lr.ph.i.preheader, label %bb.at

.lr.ph.i.preheader:                               ; preds = %bb.as
  %xtraiter790 = and i64 %wide.trip.count, 1
  %i.kt = icmp eq i32 %i.ae, 1
  br i1 %i.kt, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter793 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter794 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter794.next.1, %.lr.ph.i ]
  %i.ku = trunc nuw i64 %indvars.iv.i to i32
  %i.kv = shl nsw i32 %i.ku, 2                    ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 %i.kw
  %i.ky = mul nuw nsw i64 %indvars.iv.i, 3
  %i.kz = and i64 %i.ky, 4294967294
  %i.la = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.la, i64 3, i1 false)
  %i.lb = or disjoint i32 %i.kv, 3
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 %i.lc
  store i8 -1, ptr %i.ld, align 1, !tbaa !51
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.le = trunc nuw i64 %indvars.iv.next.i to i32
  %i.lf = shl nsw i32 %i.le, 2                    ; 2 uses
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 %i.lg
  %i.li = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.lj = and i64 %i.li, 4294967295
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.lj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lh, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lk, i64 3, i1 false)
  %i.ll = or disjoint i32 %i.lf, 3
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 %i.lm
  store i8 -1, ptr %i.ln, align 1, !tbaa !51
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter794.next.1 = add i64 %niter794, 2         ; 2 uses
  %niter794.ncmp.1 = icmp eq i64 %niter794.next.1, %unroll_iter793
  br i1 %niter794.ncmp.1, label %rgb8_row_to_rgba8.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !253

bb.at:                                            ; preds = %bb.as
  %i.lo = trunc nuw i64 %indvars.iv to i32
  %i.lp = mul i32 %i.lo, 3                        ; 3 uses
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !51
  %i.lt = add i32 %i.lp, 1
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !51
  %i.lx = add i32 %i.lp, 2
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !51
  br label %bb.bn

bb.au:                                            ; preds = %.lr.ph.split.split
  %i.mb = load i8, ptr %i.o, align 4, !tbaa !53
  %i.mc = icmp eq i8 %i.mb, 8
  br i1 %i.mc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %.not296, label %.thread576, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  switch i32 %i.z, label %rgb8_row_to_rgba8.exit [
    i32 1, label %.lr.ph42.i.preheader
    i32 4, label %.lr.ph.i309.preheader
  ]

.lr.ph.i309.preheader:                            ; preds = %bb.aw
  %xtraiter782 = and i64 %wide.trip.count, 1
  %i.md = icmp eq i32 %i.ae, 1
  br i1 %i.md, label %.lr.ph.i309.epil.preheader, label %.lr.ph.i309.preheader.new

.lr.ph.i309.preheader.new:                        ; preds = %.lr.ph.i309.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph.i309

.lr.ph42.i.preheader:                             ; preds = %bb.aw
  %xtraiter785 = and i64 %wide.trip.count, 1
  %i.me = icmp eq i32 %i.ae, 1
  br i1 %i.me, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.i.preheader.new

.lr.ph42.i.preheader.new:                         ; preds = %.lr.ph42.i.preheader
  %unroll_iter788 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.i.preheader.new
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph42.i.preheader.new ], [ %indvars.iv.next47.i.1, %.lr.ph42.i ] ; 4 uses
  %niter789 = phi i64 [ 0, %.lr.ph42.i.preheader.new ], [ %niter789.next.1, %.lr.ph42.i ]
  %i.mf = shl nuw nsw i64 %indvars.iv46.i, 2
  %i.mg = and i64 %i.mf, 4294967288
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 %i.mg ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv46.i
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !51
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.mk ; 4 uses
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !81
  store i8 %i.mm, ptr %i.mh, align 1, !tbaa !51
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !51
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !83
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !51
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 3
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !84
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !51
  %indvars.iv.next47.i = or disjoint i64 %indvars.iv46.i, 1 ; 2 uses
  %i.mw = shl nuw nsw i64 %indvars.iv.next47.i, 2
  %i.mx = and i64 %i.mw, 4294967292
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 %i.mx ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv.next47.i
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !51
  %i.nb = zext i8 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.nb ; 4 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !81
  store i8 %i.nd, ptr %i.my, align 1, !tbaa !51
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !82
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !83
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !51
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 3
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !84
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !51
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %niter789.next.1 = add i64 %niter789, 2         ; 2 uses
  %niter789.ncmp.1 = icmp eq i64 %niter789.next.1, %unroll_iter788
  br i1 %niter789.ncmp.1, label %rgb8_row_to_rgba8.exit.loopexit770.unr-lcssa, label %.lr.ph42.i, !llvm.loop !254

.lr.ph.i309:                                      ; preds = %.lr.ph.i309, %.lr.ph.i309.preheader.new
  %indvars.iv.i310 = phi i64 [ 0, %.lr.ph.i309.preheader.new ], [ %indvars.iv.next.i311.1, %.lr.ph.i309 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i309.preheader.new ], [ %niter.next.1, %.lr.ph.i309 ]
  %i.nn = mul nuw nsw i64 %indvars.iv.i310, 3
  %i.no = and i64 %i.nn, 4294967294
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 %i.no ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv.i310
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !51
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ns ; 3 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !81
  store i8 %i.nu, ptr %i.np, align 1, !tbaa !51
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !82
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !51
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !83
  %i.oa = getelementptr inbounds nuw i8, ptr %i.np, i64 2
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !51
  %indvars.iv.next.i311 = or disjoint i64 %indvars.iv.i310, 1 ; 2 uses
  %i.ob = mul nuw nsw i64 %indvars.iv.next.i311, 3
  %i.oc = and i64 %i.ob, 4294967295
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv.next.i311
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !51
  %i.og = zext i8 %i.of to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.og ; 3 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !81
  store i8 %i.oi, ptr %i.od, align 1, !tbaa !51
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !51
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.on = load i8, ptr %i.om, align 1, !tbaa !83
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  store i8 %i.on, ptr %i.oo, align 1, !tbaa !51
  %indvars.iv.next.i311.1 = add nuw nsw i64 %indvars.iv.i310, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %rgb8_row_to_rgba8.exit.loopexit771.unr-lcssa, label %.lr.ph.i309, !llvm.loop !255

.thread576:                                       ; preds = %bb.av
  %i.op = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !51
  br label %bb.ba

bb.ax:                                            ; preds = %bb.au
  %i.or = load i8, ptr %.sroa.19.0430, align 1, !tbaa !51
  %i.os = sub i32 %.sroa.6.0431, %i.q             ; 2 uses
  %i.ot = icmp ugt i32 %i.os, 7                   ; 2 uses
  %spec.select367.idx = zext i1 %i.ot to i64
  %spec.select367 = getelementptr inbounds nuw i8, ptr %.sroa.19.0430, i64 %spec.select367.idx ; 3 uses
  %spec.select368 = select i1 %i.ot, i32 %i.v, i32 %i.os ; 3 uses
  %i.ou = zext i8 %i.or to i32
  %i.ov = lshr i32 %i.ou, %.sroa.6.0431
  %i.ow = trunc nuw i32 %i.ov to i8
  %i.ox = and i8 %i.ow, %i.u                      ; 2 uses
  br i1 %.not296, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.oy ; 4 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !81
  store i8 %i.pa, ptr %i.kg, align 1, !tbaa !51
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !82
  %i.pd = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !51
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !83
  %i.pg = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !51
  br i1 %i.ke, label %bb.az, label %expand_row.exit

bb.az:                                            ; preds = %bb.ay
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 3
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !84
  %i.pj = getelementptr inbounds nuw i8, ptr %i.kg, i64 3
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !51
  br label %expand_row.exit

bb.ba:                                            ; preds = %.thread576, %bb.ax
  %.0582 = phi i8 [ %i.oq, %.thread576 ], [ %i.ox, %bb.ax ]
  %.sroa.6.1581 = phi i32 [ %.sroa.6.0431, %.thread576 ], [ %spec.select368, %bb.ax ]
end_hunk_0
begin_hunk_1_@spng_encode_chunks:bb.a
  store i8 %i.gg, ptr %i.be, align 2, !tbaa !51
  %i.gh = trunc i32 %i.ga to i8
  store i8 %i.gh, ptr %i.bg, align 1, !tbaa !51
  %i.gi = tail call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_gama, ptr noundef nonnull %i.p, i64 noundef 4) ; 2 uses
  %.not488.i = icmp eq i32 %i.gi, 0
  br i1 %.not488.i, label %._crit_edge643.i, label %write_chunks_before_idat.exit

._crit_edge643.i:                                 ; preds = %bb.t
  %.pre644.i = load i32, ptr %i.m, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge643.i, %bb.s
  %i.gj = phi i32 [ %.pre644.i, %._crit_edge643.i ], [ %i.fx, %bb.s ] ; 2 uses
  %i.gk = and i32 %i.gj, 8
  %.not489.i = icmp eq i32 %i.gk, 0
  br i1 %.not489.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !339
  %i.go = tail call i64 @compressBound(i64 noundef %i.gn) #28 ; 2 uses
  store i64 %i.go, ptr %i.b, align 8, !tbaa !95
  %i.gp = getelementptr i8, ptr %0, i64 160
  %.val535.i = load ptr, ptr %i.gp, align 8, !tbaa !143
  %i.gq = tail call ptr %.val535.i(i64 noundef %i.go) #28, !inline_history !330 ; 6 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !206
  %i.gu = load i64, ptr %i.gm, align 8, !tbaa !339
  %i.gv = call i32 @compress2(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.gt, i64 noundef %i.gu, i32 noundef -1) #28
  %.not490.i = icmp eq i32 %i.gv, 0
  br i1 %.not490.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr i8, ptr %0, i64 184
  %.val541.i = load ptr, ptr %i.gw, align 8, !tbaa !145
  call void %.val541.i(ptr noundef nonnull %i.gq) #28, !inline_history !331
  br label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.gx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gl) #29 ; 3 uses
  %i.gy = add i64 %i.gx, 2
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.ha = add i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = icmp ugt i64 %i.gz, %i.ha
  br i1 %i.hb, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr null, ptr %i.c, align 8, !tbaa !91
  %i.hc = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef nonnull @type_iccp, i64 noundef %i.ha, ptr noundef %i.c) ; 2 uses
  %.not491.i = icmp eq i32 %i.hc, 0
  br i1 %.not491.i, label %bb.aa, label %.thread549.i

.thread549.i:                                     ; preds = %bb.z
  %i.hd = getelementptr i8, ptr %0, i64 184
  %.val540.i = load ptr, ptr %i.hd, align 8, !tbaa !145
  call void %.val540.i(ptr noundef nonnull %i.gq) #28, !inline_history !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %write_chunks_before_idat.exit.thread

.thread.i:                                        ; preds = %bb.y, %bb.x, %bb.v
  %.2427.ph.i = phi i32 [ 3, %bb.y ], [ 64, %bb.x ], [ 2, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %write_chunks_before_idat.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !91  ; 3 uses
  %i.hf = add i64 %i.gx, 1                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr nonnull align 8 %i.gl, i64 %i.hf, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hf
  store i8 0, ptr %i.hg, align 1, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gx
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i64, ptr %i.b, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hi, ptr nonnull align 1 %i.gq, i64 %i.hj, i1 false)
  %i.hk = getelementptr i8, ptr %0, i64 184
  %.val539.i = load ptr, ptr %i.hk, align 8, !tbaa !145
  call void %.val539.i(ptr noundef nonnull %i.gq) #28, !inline_history !331
  %i.hl = call fastcc i32 @finish_chunk(ptr noundef nonnull %0) ; 2 uses
  %.not492.i = icmp eq i32 %i.hl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %.not492.i, label %._crit_edge645.i, label %write_chunks_before_idat.exit

._crit_edge645.i:                                 ; preds = %bb.aa
  %.pre646.i = load i32, ptr %i.m, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge645.i, %bb.u
  %i.hm = phi i32 [ %.pre646.i, %._crit_edge645.i ], [ %i.gj, %bb.u ] ; 2 uses
  %i.hn = and i32 %i.hm, 32
  %.not493.i = icmp eq i32 %i.hn, 0
  br i1 %.not493.i, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = load i8, ptr %i.bw, align 1, !tbaa !108
  switch i8 %i.ho, label %write_chunks_before_idat.exit.thread [
    i8 0, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.ae
    i8 4, label %bb.af
    i8 6, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.hq = load i8, ptr %i.hp, align 4, !tbaa !121
  store i8 %i.hq, ptr %i.p, align 8, !tbaa !51
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac, %bb.ac
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1549
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !122
  store i8 %i.hs, ptr %i.p, align 8, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1550
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !123
  store i8 %i.hu, ptr %i.bb, align 1, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1551
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !124
  store i8 %i.hw, ptr %i.be, align 2, !tbaa !51
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !121
  store i8 %i.hy, ptr %i.p, align 8, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !125
  store i8 %i.ia, ptr %i.bb, align 1, !tbaa !51
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1549
  %i.ic = load <4 x i8>, ptr %i.ib, align 1, !tbaa !51
  store <4 x i8> %i.ic, ptr %i.p, align 8, !tbaa !51
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0411.i = phi i64 [ 1, %bb.ad ], [ 3, %bb.ae ], [ 2, %bb.af ], [ 4, %bb.ag ]
  %i.id = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_sbit, ptr noundef nonnull %i.p, i64 noundef %.0411.i) ; 2 uses
  %.not494.i = icmp eq i32 %i.id, 0
  br i1 %.not494.i, label %._crit_edge647.i, label %write_chunks_before_idat.exit

._crit_edge647.i:                                 ; preds = %bb.ah
  %.pre648.i = load i32, ptr %i.m, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge647.i, %bb.ab
  %i.ie = phi i32 [ %.pre648.i, %._crit_edge647.i ], [ %i.hm, %bb.ab ]
  %i.if = and i32 %i.ie, 64
  %.not495.i = icmp eq i32 %i.if, 0
  br i1 %.not495.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1553
  %i.ih = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_srgb, ptr noundef nonnull %i.ig, i64 noundef 1) ; 2 uses
  %.not496.i = icmp eq i32 %i.ih, 0
  br i1 %.not496.i, label %bb.ak, label %write_chunks_before_idat.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ii = call fastcc i32 @write_unknown_chunks(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not497.i = icmp eq i32 %i.ii, 0
  br i1 %.not497.i, label %bb.al, label %write_chunks_before_idat.exit

bb.al:                                            ; preds = %bb.ak
  %i.ij = load i32, ptr %i.m, align 8             ; 2 uses
  %i.ik = and i32 %i.ij, 2
  %.not498.i = icmp eq i32 %i.ik, 0
  br i1 %.not498.i, label %bb.an, label %.preheader583.i

.preheader583.i:                                  ; preds = %bb.al
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.im = load i32, ptr %i.il, align 4, !tbaa !111 ; 5 uses
  %.not610.i = icmp eq i32 %i.im, 0
  br i1 %.not610.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader583.i
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %wide.trip.count.i = zext i32 %i.im to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.io = icmp eq i32 %i.im, 1
  br i1 %i.io, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.am ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.am ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 4, !tbaa !81
  %i.ir = trunc nuw i64 %indvars.iv.i to i32
  %i.is = mul nsw i32 %i.ir, 3                    ; 3 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.it
  store i8 %i.iq, ptr %i.iu, align 1, !tbaa !51
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !82
  %i.ix = or disjoint i32 %i.is, 1
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.iy
  store i8 %i.iw, ptr %i.iz, align 1, !tbaa !51
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !83
  %i.jc = add nuw nsw i32 %i.is, 2
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.jd
  store i8 %i.jb, ptr %i.je, align 1, !tbaa !51
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next.i ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 4, !tbaa !81
  %i.jh = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ji = mul nsw i32 %i.jh, 3                    ; 3 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.jj
  store i8 %i.jg, ptr %i.jk, align 1, !tbaa !51
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !82
  %i.jn = add nsw i32 %i.ji, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.jo
  store i8 %i.jm, ptr %i.jp, align 1, !tbaa !51
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !83
  %i.js = add nsw i32 %i.ji, 2
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.jt
  store i8 %i.jr, ptr %i.ju, align 1, !tbaa !51
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !332

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.am
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod100 = trunc i32 %i.im to i1
  call void @llvm.assume(i1 %lcmp.mod100)
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !81
  %i.jx = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.jy = mul i32 %i.jx, 3                        ; 3 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.jz
  store i8 %i.jw, ptr %i.ka, align 1, !tbaa !51
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !82
  %i.kd = add i32 %i.jy, 1
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ke
  store i8 %i.kc, ptr %i.kf, align 1, !tbaa !51
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !83
  %i.ki = add i32 %i.jy, 2
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.kj
  store i8 %i.kh, ptr %i.kk, align 1, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader583.i
  %i.kl = mul i32 %i.im, 3
  %i.km = zext i32 %i.kl to i64
  %i.kn = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_plte, ptr noundef nonnull %i.p, i64 noundef %i.km) ; 2 uses
  %.not499.i = icmp eq i32 %i.kn, 0
  br i1 %.not499.i, label %._crit_edge._crit_edge.i, label %write_chunks_before_idat.exit

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre649.i = load i32, ptr %i.m, align 8
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge._crit_edge.i, %bb.al
  %i.ko = phi i32 [ %.pre649.i, %._crit_edge._crit_edge.i ], [ %i.ij, %bb.al ] ; 2 uses
  %i.kp = and i32 %i.ko, 256
  %.not500.i = icmp eq i32 %i.kp, 0
  br i1 %.not500.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kq = load i8, ptr %i.bw, align 1, !tbaa !108
  switch i8 %i.kq, label %write_chunks_before_idat.exit.thread [
    i8 0, label %bb.ap
    i8 4, label %bb.ap
    i8 2, label %bb.aq
    i8 6, label %bb.aq
    i8 3, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.ks = load i16, ptr %i.kr, align 8, !tbaa !127 ; 2 uses
  %i.kt = lshr i16 %i.ks, 8
  %i.ku = trunc nuw i16 %i.kt to i8
  store i8 %i.ku, ptr %i.p, align 8, !tbaa !51
  %i.kv = trunc i16 %i.ks to i8
  store i8 %i.kv, ptr %i.bb, align 1, !tbaa !51
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao, %bb.ao
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1570
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !128 ; 2 uses
  %i.ky = lshr i16 %i.kx, 8
  %i.kz = trunc nuw i16 %i.ky to i8
  store i8 %i.kz, ptr %i.p, align 8, !tbaa !51
  %i.la = trunc i16 %i.kx to i8
  store i8 %i.la, ptr %i.bb, align 1, !tbaa !51
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.lc = load i16, ptr %i.lb, align 4, !tbaa !129 ; 2 uses
  %i.ld = lshr i16 %i.lc, 8
  %i.le = trunc nuw i16 %i.ld to i8
  store i8 %i.le, ptr %i.be, align 2, !tbaa !51
  %i.lf = trunc i16 %i.lc to i8
  store i8 %i.lf, ptr %i.bg, align 1, !tbaa !51
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1574
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !130 ; 2 uses
  %i.li = lshr i16 %i.lh, 8
  %i.lj = trunc nuw i16 %i.li to i8
  store i8 %i.lj, ptr %i.bh, align 4, !tbaa !51
  %i.lk = trunc i16 %i.lh to i8
  store i8 %i.lk, ptr %i.bo, align 1, !tbaa !51
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.lm = load i16, ptr %i.ll, align 8, !tbaa !131
  %i.ln = trunc i16 %i.lm to i8
  store i8 %i.ln, ptr %i.p, align 8, !tbaa !51
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1412.i = phi i64 [ 2, %bb.ap ], [ 6, %bb.aq ], [ 1, %bb.ar ]
  %i.lo = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_bkgd, ptr noundef nonnull %i.p, i64 noundef %.1412.i) ; 2 uses
  %.not501.i = icmp eq i32 %i.lo, 0
  br i1 %.not501.i, label %._crit_edge650.i, label %write_chunks_before_idat.exit

._crit_edge650.i:                                 ; preds = %bb.as
  %.pre651.i = load i32, ptr %i.m, align 8
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge650.i, %bb.an
  %i.lp = phi i32 [ %.pre651.i, %._crit_edge650.i ], [ %i.ko, %bb.an ] ; 2 uses
  %i.lq = and i32 %i.lp, 512
  %.not502.i = icmp eq i32 %i.lq, 0
  br i1 %.not502.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !111 ; 5 uses
  %i.lt = shl i32 %i.ls, 1
  %i.lu = zext i32 %i.lt to i64
  %.not611.i = icmp eq i32 %i.ls, 0
  br i1 %.not611.i, label %._crit_edge595.i, label %.lr.ph594.i

.lr.ph594.i:                                      ; preds = %bb.au
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1578 ; 3 uses
  %wide.trip.count628.i = zext i32 %i.ls to i64   ; 2 uses
  %xtraiter102 = and i64 %wide.trip.count628.i, 1
  %i.lw = icmp eq i32 %i.ls, 1
  br i1 %i.lw, label %.epil.preheader101, label %.lr.ph594.i.new

.lr.ph594.i.new:                                  ; preds = %.lr.ph594.i
  %unroll_iter105 = and i64 %wide.trip.count628.i, 4294967294
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph594.i.new
  %indvars.iv625.i = phi i64 [ 0, %.lr.ph594.i.new ], [ %indvars.iv.next626.i.1, %bb.av ] ; 4 uses
  %niter106 = phi i64 [ 0, %.lr.ph594.i.new ], [ %niter106.next.1, %bb.av ]
  %i.lx = shl nuw nsw i64 %indvars.iv625.i, 1
  %i.ly = and i64 %i.lx, 4294967292
  %i.lz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %indvars.iv625.i
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !74 ; 2 uses
  %i.mc = lshr i16 %i.mb, 8
  %i.md = trunc nuw i16 %i.mc to i8
  store i8 %i.md, ptr %i.lz, align 1, !tbaa !51
  %i.me = trunc i16 %i.mb to i8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !51
  %indvars.iv.next626.i = or disjoint i64 %indvars.iv625.i, 1 ; 2 uses
  %i.mg = shl nuw nsw i64 %indvars.iv.next626.i, 1
  %i.mh = and i64 %i.mg, 4294967294
  %i.mi = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %indvars.iv.next626.i
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !74 ; 2 uses
  %i.ml = lshr i16 %i.mk, 8
  %i.mm = trunc nuw i16 %i.ml to i8
  store i8 %i.mm, ptr %i.mi, align 1, !tbaa !51
  %i.mn = trunc i16 %i.mk to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !51
  %indvars.iv.next626.i.1 = add nuw nsw i64 %indvars.iv625.i, 2 ; 2 uses
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge595.i.loopexit.unr-lcssa, label %bb.av, !llvm.loop !333

._crit_edge595.i.loopexit.unr-lcssa:              ; preds = %bb.av
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %._crit_edge595.i, label %.epil.preheader101

.epil.preheader101:                               ; preds = %._crit_edge595.i.loopexit.unr-lcssa, %.lr.ph594.i
  %indvars.iv625.i.epil.init = phi i64 [ 0, %.lr.ph594.i ], [ %indvars.iv.next626.i.1, %._crit_edge595.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i32 %i.ls to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.mp = shl nuw nsw i64 %indvars.iv625.i.epil.init, 1
  %i.mq = and i64 %i.mp, 4294967294
  %i.mr = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %indvars.iv625.i.epil.init
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !74 ; 2 uses
  %i.mu = lshr i16 %i.mt, 8
  %i.mv = trunc nuw i16 %i.mu to i8
  store i8 %i.mv, ptr %i.mr, align 1, !tbaa !51
  %i.mw = trunc i16 %i.mt to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !51
  br label %._crit_edge595.i

._crit_edge595.i:                                 ; preds = %.epil.preheader101, %._crit_edge595.i.loopexit.unr-lcssa, %bb.au
  %i.my = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_hist, ptr noundef nonnull %i.p, i64 noundef %i.lu) ; 2 uses
  %.not503.i = icmp eq i32 %i.my, 0
  br i1 %.not503.i, label %._crit_edge595._crit_edge.i, label %write_chunks_before_idat.exit

._crit_edge595._crit_edge.i:                      ; preds = %._crit_edge595.i
  %.pre652.i = load i32, ptr %i.m, align 8
  br label %bb.aw
end_hunk_1
