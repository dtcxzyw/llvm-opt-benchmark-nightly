Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@stbi__jpeg_load:bb.a
  %spec.select.i.i.i.i = select i1 %.not.i.i46.i.i, i32 2147483647, i32 %i.kf ; 3 uses
  store i32 %spec.select.i.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  %i.kg = load i32, ptr %i.s, align 4
  %i.kh = icmp eq i32 %i.kg, 1                    ; 2 uses
  br i1 %.not65.i.i.i, label %bb.au, label %bb.bk

bb.au:                                            ; preds = %stbi__process_scan_header.exit.i.i
  br i1 %i.kh, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ki = load i32, ptr %i.t, align 8             ; 2 uses
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.kj ; 7 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 28
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = add nsw i32 %i.km, 7
  %i.ko = ashr i32 %i.kn, 3                       ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.kq = load i32, ptr %i.kp, align 8
  %i.kr = add nsw i32 %i.kq, 7
  %i.ks = ashr i32 %i.kr, 3                       ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %.preheader.lr.ph.i.i.i, label %.loopexit.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.ku = icmp sgt i32 %i.ko, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kk, i64 36
  br i1 %i.ku, label %.preheader.preheader.i.i.i, label %.loopexit.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lr.ph.i.i.i
  %wide.trip.count.i57.i.i = zext nneg i32 %i.ko to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge304.i.i.i, %.preheader.preheader.i.i.i
  %.0208305.i.i.i = phi i32 [ %i.mc, %._crit_edge304.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.la = shl nuw nsw i32 %.0208305.i.i.i, 3
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %.preheader.i.i.i
  %indvars.iv331.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next332.i.i.i, %bb.bc ] ; 2 uses
  %i.lb = load i32, ptr %i.kv, align 4
  %i.lc = load i32, ptr %i.kw, align 8
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.ld
  %i.lf = sext i32 %i.lb to i64                   ; 2 uses
  %i.lg = getelementptr inbounds [1680 x i8], ptr %i.am, i64 %i.lf
  %i.lh = getelementptr inbounds [1024 x i8], ptr %i.an, i64 %i.lf
  %i.li = load i32, ptr %i.kx, align 4
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [128 x i8], ptr %i.ao, i64 %i.lj
  %i.ll = call fastcc i32 @stbi__jpeg_decode_block(ptr noundef nonnull %i.d, ptr noundef %i.a, ptr noundef %i.le, ptr noundef %i.lg, ptr noundef %i.lh, i32 noundef %i.ki, ptr noundef %i.lk)
  %.not225.i.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not225.i.i.i, label %.loopexit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lm = load ptr, ptr %i.g, align 8
  %i.ln = load ptr, ptr %i.ky, align 8
  %i.lo = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lp = mul i32 %i.la, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds i8, ptr %i.ln, i64 %i.lq
  %i.ls = shl nuw nsw i64 %indvars.iv331.i.i.i, 3
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ls
  call void %i.lm(ptr noundef %i.lt, i32 noundef %i.lo, ptr noundef nonnull %i.a) #13, !inline_history !36
  %i.lu = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.lv = add nsw i32 %i.lu, -1
  store i32 %i.lv, ptr %i.ah, align 4
  %i.lw = icmp slt i32 %i.lu, 2
  br i1 %i.lw, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.lx = load i32, ptr %i.z, align 4
  %i.ly = icmp slt i32 %i.lx, 24
  br i1 %i.ly, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.lz = load i8, ptr %i.ag, align 8
  %i.ma = and i8 %i.lz, -8
  %or.cond.i58.i.i = icmp eq i8 %i.ma, -48
  br i1 %or.cond.i58.i.i, label %bb.bb, label %.loopexit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.mb = load i32, ptr %i.p, align 8             ; 2 uses
  %.not.i236.i.i.i = icmp eq i32 %i.mb, 0
  %spec.select.i237.i.i.i = select i1 %.not.i236.i.i.i, i32 2147483647, i32 %i.mb
  store i32 %spec.select.i237.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ax
  %indvars.iv.next332.i.i.i = add nuw nsw i64 %indvars.iv331.i.i.i, 1 ; 2 uses
  %exitcond334.not.i.i.i = icmp eq i64 %indvars.iv.next332.i.i.i, %wide.trip.count.i57.i.i
  br i1 %exitcond334.not.i.i.i, label %._crit_edge304.i.i.i, label %bb.aw, !llvm.loop !37

._crit_edge304.i.i.i:                             ; preds = %bb.bc
  %i.mc = add nuw nsw i32 %.0208305.i.i.i, 1      ; 2 uses
  %exitcond335.not.i.i.i = icmp eq i32 %i.mc, %i.ks
  br i1 %exitcond335.not.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !38

.loopexit.i.i.i:                                  ; preds = %._crit_edge304.i.i.i, %bb.ba, %bb.aw, %.preheader.lr.ph.i.i.i, %bb.av
  %.3213.i.i.i = phi i32 [ 1, %bb.ba ], [ 1, %bb.av ], [ 1, %.preheader.lr.ph.i.i.i ], [ 0, %bb.aw ], [ 1, %._crit_edge304.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %stbi__parse_entropy_coded_data.exit.i.i

bb.bd:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.md = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.me = icmp sgt i32 %i.md, 0
  br i1 %i.me, label %.preheader257.lr.ph.i.i.i, label %.critedge.i56.i.i

.preheader257.lr.ph.i.i.i:                        ; preds = %bb.bd
  %i.mf = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.preheader257.i.i.i, label %.critedge.i56.i.i

.preheader257.i.i.i:                              ; preds = %.preheader257.lr.ph.i.i.i, %._crit_edge300.i.i.i
  %i.mh = phi i32 [ %i.pc, %._crit_edge300.i.i.i ], [ %i.md, %.preheader257.lr.ph.i.i.i ]
  %i.mi = phi i32 [ %i.pd, %._crit_edge300.i.i.i ], [ %spec.select.i.i.i.i, %.preheader257.lr.ph.i.i.i ] ; 2 uses
  %i.mj = phi i32 [ %i.pe, %._crit_edge300.i.i.i ], [ %i.mf, %.preheader257.lr.ph.i.i.i ] ; 2 uses
  %.0205301.i.i.i = phi i32 [ %i.pf, %._crit_edge300.i.i.i ], [ 0, %.preheader257.lr.ph.i.i.i ] ; 2 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %.preheader256.i.i.i, label %._crit_edge300.i.i.i

.preheader256.i.i.i:                              ; preds = %.preheader257.i.i.i, %bb.bj
  %i.ml = phi i32 [ %i.oy, %bb.bj ], [ %i.mi, %.preheader257.i.i.i ]
  %.0206299.i.i.i = phi i32 [ %i.oz, %bb.bj ], [ 0, %.preheader257.i.i.i ] ; 2 uses
  %i.mm = load i32, ptr %i.s, align 4             ; 2 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph297.i.i.i, label %._crit_edge298.i.i.i

.lr.ph297.i.i.i:                                  ; preds = %.preheader256.i.i.i, %.critedge230.i.i.i
  %i.mo = phi i32 [ %i.on, %.critedge230.i.i.i ], [ %i.mm, %.preheader256.i.i.i ] ; 2 uses
  %indvars.iv328.i.i.i = phi i64 [ %indvars.iv.next329.i.i.i, %.critedge230.i.i.i ], [ 0, %.preheader256.i.i.i ] ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv328.i.i.i
  %i.mq = load i32, ptr %i.mp, align 4            ; 2 uses
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.mr ; 7 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mu = load i32, ptr %i.mt, align 8            ; 2 uses
  %.not224294.i.i.i = icmp sgt i32 %i.mu, 0
  br i1 %.not224294.i.i.i, label %.preheader255.lr.ph.i.i.i, label %.critedge230.i.i.i

.preheader255.lr.ph.i.i.i:                        ; preds = %.lr.ph297.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 20
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 36
  %i.nb = load i32, ptr %i.mv, align 4            ; 2 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.preheader255.i.i.i, label %.critedge230.i.i.i

.preheader255.i.i.i:                              ; preds = %.preheader255.lr.ph.i.i.i, %._crit_edge293.i.i.i
  %i.nd = phi i32 [ %i.ok, %._crit_edge293.i.i.i ], [ %i.mu, %.preheader255.lr.ph.i.i.i ]
  %i.ne = phi i32 [ %i.ol, %._crit_edge293.i.i.i ], [ %i.nb, %.preheader255.lr.ph.i.i.i ] ; 3 uses
  %.0202295.i.i.i = phi i32 [ %i.om, %._crit_edge293.i.i.i ], [ 0, %.preheader255.lr.ph.i.i.i ] ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph292.i.i.i, label %._crit_edge293.i.i.i

.lr.ph292.i.i.i:                                  ; preds = %.preheader255.i.i.i, %bb.be
  %i.ng = phi i32 [ %i.oi, %bb.be ], [ %i.ne, %.preheader255.i.i.i ]
  %.0203291.i.i.i = phi i32 [ %i.oh, %bb.be ], [ 0, %.preheader255.i.i.i ] ; 2 uses
  %i.nh = load i32, ptr %i.mt, align 8
  %i.ni = load i32, ptr %i.mw, align 4
  %i.nj = load i32, ptr %i.mx, align 8
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.nk
  %i.nm = sext i32 %i.ni to i64                   ; 2 uses
  %i.nn = getelementptr inbounds [1680 x i8], ptr %i.am, i64 %i.nm
  %i.no = getelementptr inbounds [1024 x i8], ptr %i.an, i64 %i.nm
  %i.np = load i32, ptr %i.my, align 4
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [128 x i8], ptr %i.ao, i64 %i.nq
  %i.ns = call fastcc i32 @stbi__jpeg_decode_block(ptr noundef nonnull %i.d, ptr noundef %i.b, ptr noundef %i.nl, ptr noundef %i.nn, ptr noundef %i.no, i32 noundef %i.mq, ptr noundef %i.nr)
  %.not223.not.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not223.not.i.i.i, label %.critedge.i56.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph292.i.i.i
  %i.nt = mul nsw i32 %i.nh, %.0205301.i.i.i
  %i.nu = add nsw i32 %i.nt, %.0202295.i.i.i
  %i.nv = shl nsw i32 %i.nu, 3
  %i.nw = mul nsw i32 %i.ng, %.0206299.i.i.i
  %i.nx = add nsw i32 %i.nw, %.0203291.i.i.i
  %i.ny = shl nsw i32 %i.nx, 3
  %i.nz = load ptr, ptr %i.g, align 8
  %i.oa = load ptr, ptr %i.mz, align 8
  %i.ob = load i32, ptr %i.na, align 4            ; 2 uses
  %i.oc = mul nsw i32 %i.nv, %i.ob
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds i8, ptr %i.oa, i64 %i.od
  %i.of = sext i32 %i.ny to i64
  %i.og = getelementptr inbounds i8, ptr %i.oe, i64 %i.of
  call void %i.nz(ptr noundef %i.og, i32 noundef %i.ob, ptr noundef nonnull %i.b) #13, !inline_history !36
  %i.oh = add nuw nsw i32 %.0203291.i.i.i, 1      ; 2 uses
  %i.oi = load i32, ptr %i.mv, align 4            ; 3 uses
  %i.oj = icmp slt i32 %i.oh, %i.oi
  br i1 %i.oj, label %.lr.ph292.i.i.i, label %._crit_edge293.loopexit.i.i.i, !llvm.loop !39

._crit_edge293.loopexit.i.i.i:                    ; preds = %bb.be
  %.pre339.i.i.i = load i32, ptr %i.mt, align 8
  br label %._crit_edge293.i.i.i

._crit_edge293.i.i.i:                             ; preds = %._crit_edge293.loopexit.i.i.i, %.preheader255.i.i.i
  %i.ok = phi i32 [ %.pre339.i.i.i, %._crit_edge293.loopexit.i.i.i ], [ %i.nd, %.preheader255.i.i.i ] ; 2 uses
  %i.ol = phi i32 [ %i.oi, %._crit_edge293.loopexit.i.i.i ], [ %i.ne, %.preheader255.i.i.i ]
  %i.om = add nuw nsw i32 %.0202295.i.i.i, 1      ; 2 uses
  %.not224.i.i.i = icmp slt i32 %i.om, %i.ok
  br i1 %.not224.i.i.i, label %.preheader255.i.i.i, label %.critedge230.loopexit.i.i.i, !llvm.loop !40

.critedge230.loopexit.i.i.i:                      ; preds = %._crit_edge293.i.i.i
  %.pre340.i.i.i = load i32, ptr %i.s, align 4
  br label %.critedge230.i.i.i

.critedge230.i.i.i:                               ; preds = %.critedge230.loopexit.i.i.i, %.preheader255.lr.ph.i.i.i, %.lr.ph297.i.i.i
  %i.on = phi i32 [ %i.mo, %.lr.ph297.i.i.i ], [ %.pre340.i.i.i, %.critedge230.loopexit.i.i.i ], [ %i.mo, %.preheader255.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next329.i.i.i = add nuw nsw i64 %indvars.iv328.i.i.i, 1 ; 2 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = icmp slt i64 %indvars.iv.next329.i.i.i, %i.oo
  br i1 %i.op, label %.lr.ph297.i.i.i, label %._crit_edge298.loopexit.i.i.i, !llvm.loop !42

._crit_edge298.loopexit.i.i.i:                    ; preds = %.critedge230.i.i.i
  %.pre341.i.i.i = load i32, ptr %i.ah, align 4
  br label %._crit_edge298.i.i.i

._crit_edge298.i.i.i:                             ; preds = %._crit_edge298.loopexit.i.i.i, %.preheader256.i.i.i
  %i.oq = phi i32 [ %.pre341.i.i.i, %._crit_edge298.loopexit.i.i.i ], [ %i.ml, %.preheader256.i.i.i ] ; 2 uses
  %i.or = add nsw i32 %i.oq, -1                   ; 2 uses
  store i32 %i.or, ptr %i.ah, align 4
  %i.os = icmp slt i32 %i.oq, 2
  br i1 %i.os, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %._crit_edge298.i.i.i
  %i.ot = load i32, ptr %i.z, align 4
  %i.ou = icmp slt i32 %i.ot, 24
  br i1 %i.ou, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ov = load i8, ptr %i.ag, align 8
  %i.ow = and i8 %i.ov, -8
  %or.cond231.i.i.i = icmp eq i8 %i.ow, -48
  br i1 %or.cond231.i.i.i, label %bb.bi, label %.critedge.i56.i.i

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.ox = load i32, ptr %i.p, align 8             ; 2 uses
  %.not.i238.i.i.i = icmp eq i32 %i.ox, 0
  %spec.select.i239.i.i.i = select i1 %.not.i238.i.i.i, i32 2147483647, i32 %i.ox ; 2 uses
  store i32 %spec.select.i239.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge298.i.i.i
  %i.oy = phi i32 [ %i.or, %._crit_edge298.i.i.i ], [ %spec.select.i239.i.i.i, %bb.bi ] ; 2 uses
  %i.oz = add nuw nsw i32 %.0206299.i.i.i, 1      ; 2 uses
  %i.pa = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.pb = icmp slt i32 %i.oz, %i.pa
  br i1 %i.pb, label %.preheader256.i.i.i, label %._crit_edge300.loopexit.i.i.i, !llvm.loop !43

._crit_edge300.loopexit.i.i.i:                    ; preds = %bb.bj
  %.pre342.i.i.i = load i32, ptr %i.aj, align 4
  br label %._crit_edge300.i.i.i

._crit_edge300.i.i.i:                             ; preds = %._crit_edge300.loopexit.i.i.i, %.preheader257.i.i.i
  %i.pc = phi i32 [ %.pre342.i.i.i, %._crit_edge300.loopexit.i.i.i ], [ %i.mh, %.preheader257.i.i.i ] ; 2 uses
  %i.pd = phi i32 [ %i.oy, %._crit_edge300.loopexit.i.i.i ], [ %i.mi, %.preheader257.i.i.i ]
  %i.pe = phi i32 [ %i.pa, %._crit_edge300.loopexit.i.i.i ], [ %i.mj, %.preheader257.i.i.i ]
  %i.pf = add nuw nsw i32 %.0205301.i.i.i, 1      ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.pc
  br i1 %i.pg, label %.preheader257.i.i.i, label %.critedge.i56.i.i, !llvm.loop !44

.critedge.i56.i.i:                                ; preds = %._crit_edge300.i.i.i, %bb.bh, %.lr.ph292.i.i.i, %.preheader257.lr.ph.i.i.i, %bb.bd
  %.11.i.i.i = phi i32 [ 1, %bb.bd ], [ 1, %.preheader257.lr.ph.i.i.i ], [ 1, %bb.bh ], [ 0, %.lr.ph292.i.i.i ], [ 1, %._crit_edge300.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %stbi__parse_entropy_coded_data.exit.i.i

bb.bk:                                            ; preds = %stbi__process_scan_header.exit.i.i
  br i1 %i.kh, label %bb.bl, label %.preheader269.i.i.i

.preheader269.i.i.i:                              ; preds = %bb.bk
  %i.ph = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.preheader267.lr.ph.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

.preheader267.lr.ph.i.i.i:                        ; preds = %.preheader269.i.i.i
  %i.pj = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %.preheader267.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.pl = load i32, ptr %i.t, align 8             ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.pm ; 6 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = add nsw i32 %i.pp, 7
  %i.pr = ashr i32 %i.pq, 3                       ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  %i.pt = load i32, ptr %i.ps, align 8
  %i.pu = add nsw i32 %i.pt, 7
  %i.pv = ashr i32 %i.pu, 3                       ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.preheader262.lr.ph.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

.preheader262.lr.ph.i.i.i:                        ; preds = %bb.bl
  %i.px = icmp sgt i32 %i.pr, 0
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 80
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pn, i64 88
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  br i1 %i.px, label %.preheader262.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

.preheader262.i.i.i:                              ; preds = %.preheader262.lr.ph.i.i.i, %._crit_edge289.i.i.i
  %.0200290.i.i.i = phi i32 [ %i.aaf, %._crit_edge289.i.i.i ], [ 0, %.preheader262.lr.ph.i.i.i ] ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.eh, %.preheader262.i.i.i
  %.0201287.i.i.i = phi i32 [ 0, %.preheader262.i.i.i ], [ %i.aae, %bb.eh ] ; 2 uses
  %i.qc = load ptr, ptr %i.py, align 8
  %i.qd = load i32, ptr %i.pz, align 8
  %i.qe = mul nsw i32 %i.qd, %.0200290.i.i.i
  %i.qf = add nsw i32 %i.qe, %.0201287.i.i.i
  %i.qg = shl nsw i32 %i.qf, 6
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.qh ; 5 uses
  %i.qj = load i32, ptr %i.u, align 4             ; 5 uses
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ql = load i32, ptr %i.qb, align 8
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.qm
  %i.qo = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %i.d, ptr noundef %i.qi, ptr noundef %i.qn, i32 noundef %i.pl)
  %.not229.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not229.i.i.i, label %.loopexit401.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.qp = load i32, ptr %i.qa, align 4
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %i.qr = getelementptr inbounds [1680 x i8], ptr %i.am, i64 %i.qq ; 10 uses
  %i.qs = getelementptr inbounds [1024 x i8], ptr %i.an, i64 %i.qq
  %i.qt = load i32, ptr %i.w, align 4
  %i.qu = icmp eq i32 %i.qt, 0
  %i.qv = load i32, ptr %i.x, align 8             ; 4 uses
  %i.qw = load i32, ptr %i.ai, align 4            ; 3 uses
  %.not166.i.i.i.i = icmp eq i32 %i.qw, 0         ; 2 uses
  br i1 %i.qu, label %bb.bp, label %bb.cu

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not166.i.i.i.i, label %.preheader.i.i.i.i, label %bb.bq

.preheader.i.i.i.i:                               ; preds = %bb.bp
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 1280
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 1024
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1540
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qr, i64 1612
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.rb = add nsw i32 %i.qw, -1
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i

bb.br:                                            ; preds = %bb.ct, %.preheader.i.i.i.i
  %.0120.i.i.i.i = phi i32 [ %.4124.ph.i.i.i.i, %bb.ct ], [ %i.qj, %.preheader.i.i.i.i ] ; 3 uses
  %i.rc = load i32, ptr %i.z, align 4
  %i.rd = icmp slt i32 %i.rc, 16
  br i1 %i.rd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.bt
end_hunk_0
begin_hunk_1_@stbi__jpeg_load:bb.a
  %.0.i.i54.i.i = phi i32 [ %i.vj, %stbi__jpeg_get_bit.exit186.thread.i.i.i.i ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %stbi__jpeg_get_bits.exit182.i.i.i.i ], [ %i.vi, %stbi__jpeg_get_bit.exit186.i.i.i.i ]
  %i.yt = load i32, ptr %i.v, align 8             ; 2 uses
  %.not157250.i.i.i.i = icmp sgt i32 %.6.i.i.i.i, %i.yt
  br i1 %.not157250.i.i.i.i, label %.loopexit222.i.i.i.i, label %.lr.ph253.preheader.i.i.i.i

.lr.ph253.preheader.i.i.i.i:                      ; preds = %bb.du
  %i.yu = sext i32 %.6.i.i.i.i to i64
  br label %.lr.ph253.i.i.i.i

.lr.ph253.i.i.i.i:                                ; preds = %stbi__jpeg_get_bit.exit190.thread.i.i.i.i, %.lr.ph253.preheader.i.i.i.i
  %indvars.iv263.i.i.i.i = phi i64 [ %i.yu, %.lr.ph253.preheader.i.i.i.i ], [ %indvars.iv.next264.i.i.i.i, %stbi__jpeg_get_bit.exit190.thread.i.i.i.i ] ; 3 uses
  %.1252.i.i.i.i = phi i32 [ %.0115.i.i.i.i, %.lr.ph253.preheader.i.i.i.i ], [ %.3.i.i.i.i, %stbi__jpeg_get_bit.exit190.thread.i.i.i.i ] ; 7 uses
  %indvars.iv.next264.i.i.i.i = add nsw i64 %indvars.iv263.i.i.i.i, 1 ; 3 uses
  %i.yv = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv263.i.i.i.i
  %i.yw = load i8, ptr %i.yv, align 1
  %i.yx = zext i8 %i.yw to i64
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.yx ; 5 uses
  %i.yz = load i16, ptr %i.yy, align 2
  %.not158.i.i.i.i = icmp eq i16 %i.yz, 0
  br i1 %.not158.i.i.i.i, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph253.i.i.i.i
  %i.za = load i32, ptr %i.z, align 4             ; 2 uses
  %i.zb = icmp slt i32 %i.za, 1
  br i1 %i.zb, label %bb.dw, label %stbi__jpeg_get_bit.exit190.i.i.i.i

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i189.i.i.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.zc = icmp slt i32 %.pr.i189.i.i.i.i, 1
  br i1 %i.zc, label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i, label %stbi__jpeg_get_bit.exit190.i.i.i.i

stbi__jpeg_get_bit.exit190.i.i.i.i:               ; preds = %bb.dw, %bb.dv
  %i.zd = phi i32 [ %.pr.i189.i.i.i.i, %bb.dw ], [ %i.za, %bb.dv ]
  %i.ze = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.zf = shl i32 %i.ze, 1
  store i32 %i.zf, ptr %i.aa, align 8
  %i.zg = add nsw i32 %i.zd, -1
  store i32 %i.zg, ptr %i.z, align 4
  %.not159.i.i.i.i = icmp sgt i32 %i.ze, -1
  br i1 %.not159.i.i.i.i, label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %stbi__jpeg_get_bit.exit190.i.i.i.i
  %i.zh = load i16, ptr %i.yy, align 2            ; 4 uses
  %i.zi = sext i16 %i.zh to i32
  %i.zj = and i32 %i.vi, %i.zi
  %i.zk = icmp eq i32 %i.zj, 0
  br i1 %i.zk, label %bb.dy, label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.zl = icmp sgt i16 %i.zh, 0
  br i1 %i.zl, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.zm = add i16 %i.zh, %i.vk
  store i16 %i.zm, ptr %i.yy, align 2
  br label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.zn = sub i16 %i.zh, %i.vk
  store i16 %i.zn, ptr %i.yy, align 2
  br label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

bb.eb:                                            ; preds = %.lr.ph253.i.i.i.i
  %i.zo = icmp eq i32 %.1252.i.i.i.i, 0
  br i1 %i.zo, label %.thread219.i.i.i.i, label %bb.ec

.thread219.i.i.i.i:                               ; preds = %bb.eb
  %i.zp = trunc nsw i64 %indvars.iv.next264.i.i.i.i to i32
  %i.zq = trunc i32 %.0.i.i54.i.i to i16
  store i16 %i.zq, ptr %i.yy, align 2
  %.pre266.i.i.i.i = load i32, ptr %i.v, align 8
  br label %.loopexit222.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.zr = add nsw i32 %.1252.i.i.i.i, -1
  br label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

stbi__jpeg_get_bit.exit190.thread.i.i.i.i:        ; preds = %bb.ec, %bb.ea, %bb.dz, %bb.dx, %stbi__jpeg_get_bit.exit190.i.i.i.i, %bb.dw
  %.3.i.i.i.i = phi i32 [ %i.zr, %bb.ec ], [ %.1252.i.i.i.i, %bb.dz ], [ %.1252.i.i.i.i, %bb.ea ], [ %.1252.i.i.i.i, %bb.dx ], [ %.1252.i.i.i.i, %stbi__jpeg_get_bit.exit190.i.i.i.i ], [ %.1252.i.i.i.i, %bb.dw ]
  %i.zs = load i32, ptr %i.v, align 8             ; 2 uses
  %i.zt = sext i32 %i.zs to i64
  %.not157.not.i.i.i.i = icmp slt i64 %indvars.iv263.i.i.i.i, %i.zt
  br i1 %.not157.not.i.i.i.i, label %.lr.ph253.i.i.i.i, label %.loopexit222.loopexit.i.i.i.i

.loopexit222.loopexit.i.i.i.i:                    ; preds = %stbi__jpeg_get_bit.exit190.thread.i.i.i.i
  %i.zu = trunc nsw i64 %indvars.iv.next264.i.i.i.i to i32
  br label %.loopexit222.i.i.i.i

.loopexit222.i.i.i.i:                             ; preds = %.loopexit222.loopexit.i.i.i.i, %.thread219.i.i.i.i, %bb.du
  %i.zv = phi i32 [ %.pre266.i.i.i.i, %.thread219.i.i.i.i ], [ %i.yt, %bb.du ], [ %i.zs, %.loopexit222.loopexit.i.i.i.i ]
  %.9.i.i.i.i = phi i32 [ %i.zp, %.thread219.i.i.i.i ], [ %.6.i.i.i.i, %bb.du ], [ %i.zu, %.loopexit222.loopexit.i.i.i.i ] ; 2 uses
  %.not161.i.i.i.i = icmp sgt i32 %.9.i.i.i.i, %i.zv
  br i1 %.not161.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %bb.da, !llvm.loop !47

stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i: ; preds = %stbi__jpeg_get_bits.exit.i.i.i.i, %bb.cj, %bb.bq
  %.sink.i.i.i = phi i32 [ %i.rb, %bb.bq ], [ 0, %bb.cj ], [ %i.uc, %stbi__jpeg_get_bits.exit.i.i.i.i ]
  store i32 %.sink.i.i.i, ptr %i.ai, align 4
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i

stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i: ; preds = %stbi__jpeg_get_bit.exit.thread.i.i.i.i, %.loopexit222.i.i.i.i, %bb.ct, %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i, %bb.cv, %bb.bn
  %i.zw = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.zx = add nsw i32 %i.zw, -1
  store i32 %i.zx, ptr %i.ah, align 4
  %i.zy = icmp slt i32 %i.zw, 2
  br i1 %i.zy, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i
  %i.zz = load i32, ptr %i.z, align 4
  %i.aaa = icmp slt i32 %i.zz, 24
  br i1 %i.aaa, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.aab = load i8, ptr %i.ag, align 8            ; 2 uses
  %i.aac = and i8 %i.aab, -8
  %or.cond232.i.i.i = icmp eq i8 %i.aac, -48
  br i1 %or.cond232.i.i.i, label %bb.eg, label %stbi__parse_entropy_coded_data.exit.thread.i.i

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.aad = load i32, ptr %i.p, align 8            ; 2 uses
  %.not.i240.i.i.i = icmp eq i32 %i.aad, 0
  %spec.select.i241.i.i.i = select i1 %.not.i240.i.i.i, i32 2147483647, i32 %i.aad
  store i32 %spec.select.i241.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i
  %i.aae = add nuw nsw i32 %.0201287.i.i.i, 1     ; 2 uses
  %exitcond.not.i53.i.i = icmp eq i32 %i.aae, %i.pr
  br i1 %exitcond.not.i53.i.i, label %._crit_edge289.i.i.i, label %bb.bm, !llvm.loop !48

._crit_edge289.i.i.i:                             ; preds = %bb.eh
  %i.aaf = add nuw nsw i32 %.0200290.i.i.i, 1     ; 2 uses
  %exitcond327.not.i.i.i = icmp eq i32 %i.aaf, %i.pv
  br i1 %exitcond327.not.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i, label %.preheader262.i.i.i, !llvm.loop !49

.preheader267.i.i.i:                              ; preds = %.preheader267.lr.ph.i.i.i, %._crit_edge285.i.i.i
  %i.aag = phi i32 [ %i.acp, %._crit_edge285.i.i.i ], [ %i.ph, %.preheader267.lr.ph.i.i.i ]
  %i.aah = phi i32 [ %i.acq, %._crit_edge285.i.i.i ], [ %spec.select.i.i.i.i, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %i.aai = phi i32 [ %i.acr, %._crit_edge285.i.i.i ], [ %i.pj, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %.0198286.i.i.i = phi i32 [ %i.acs, %._crit_edge285.i.i.i ], [ 0, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %i.aaj = icmp sgt i32 %i.aai, 0
  br i1 %i.aaj, label %.preheader266.i.i.i, label %._crit_edge285.i.i.i

.preheader266.i.i.i:                              ; preds = %.preheader267.i.i.i, %bb.en
  %i.aak = phi i32 [ %i.acl, %bb.en ], [ %i.aah, %.preheader267.i.i.i ]
  %.0199284.i.i.i = phi i32 [ %i.acm, %bb.en ], [ 0, %.preheader267.i.i.i ] ; 2 uses
  %i.aal = load i32, ptr %i.s, align 4            ; 2 uses
  %i.aam = icmp sgt i32 %i.aal, 0
  br i1 %i.aam, label %.lr.ph282.i.i.i, label %._crit_edge283.i.i.i

.lr.ph282.i.i.i:                                  ; preds = %.preheader266.i.i.i, %.critedge234.i.i.i
  %i.aan = phi i32 [ %i.aca, %.critedge234.i.i.i ], [ %i.aal, %.preheader266.i.i.i ] ; 2 uses
  %indvars.iv.i48.i.i = phi i64 [ %indvars.iv.next.i49.i.i, %.critedge234.i.i.i ], [ 0, %.preheader266.i.i.i ] ; 2 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i48.i.i
  %i.aap = load i32, ptr %i.aao, align 4          ; 2 uses
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.aaq ; 5 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8 ; 3 uses
  %i.aat = load i32, ptr %i.aas, align 8          ; 2 uses
  %.not227279.i.i.i = icmp sgt i32 %i.aat, 0
  br i1 %.not227279.i.i.i, label %.preheader264.lr.ph.i.i.i, label %.critedge234.i.i.i

.preheader264.lr.ph.i.i.i:                        ; preds = %.lr.ph282.i.i.i
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 4 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 80
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 88
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aay = load i32, ptr %i.aau, align 4          ; 2 uses
  %i.aaz = icmp sgt i32 %i.aay, 0
  br i1 %i.aaz, label %.preheader264.i.i.i, label %.critedge234.i.i.i

.preheader264.i.i.i:                              ; preds = %.preheader264.lr.ph.i.i.i, %._crit_edge.i50.i.i
  %i.aba = phi i32 [ %i.abx, %._crit_edge.i50.i.i ], [ %i.aat, %.preheader264.lr.ph.i.i.i ]
  %i.abb = phi i32 [ %i.aby, %._crit_edge.i50.i.i ], [ %i.aay, %.preheader264.lr.ph.i.i.i ] ; 3 uses
  %.0280.i.i.i = phi i32 [ %i.abz, %._crit_edge.i50.i.i ], [ 0, %.preheader264.lr.ph.i.i.i ] ; 2 uses
  %i.abc = icmp sgt i32 %i.abb, 0
  br i1 %i.abc, label %.lr.ph.i51.i.i, label %._crit_edge.i50.i.i

bb.ei:                                            ; preds = %.lr.ph.i51.i.i
  %i.abd = add nuw nsw i32 %.0196278.i.i.i, 1     ; 2 uses
  %i.abe = load i32, ptr %i.aau, align 4          ; 3 uses
  %i.abf = icmp slt i32 %i.abd, %i.abe
  br i1 %i.abf, label %.lr.ph.i51.i.i, label %._crit_edge.loopexit.i52.i.i, !llvm.loop !50

.lr.ph.i51.i.i:                                   ; preds = %.preheader264.i.i.i, %bb.ei
  %i.abg = phi i32 [ %i.abe, %bb.ei ], [ %i.abb, %.preheader264.i.i.i ]
  %.0196278.i.i.i = phi i32 [ %i.abd, %bb.ei ], [ 0, %.preheader264.i.i.i ] ; 2 uses
  %i.abh = mul nsw i32 %i.abg, %.0199284.i.i.i
  %i.abi = add nsw i32 %i.abh, %.0196278.i.i.i
  %i.abj = load i32, ptr %i.aas, align 8
  %i.abk = mul nsw i32 %i.abj, %.0198286.i.i.i
  %i.abl = add nsw i32 %i.abk, %.0280.i.i.i
  %i.abm = load ptr, ptr %i.aav, align 8
  %i.abn = load i32, ptr %i.aaw, align 8
  %i.abo = mul nsw i32 %i.abl, %i.abn
  %i.abp = add nsw i32 %i.abi, %i.abo
  %i.abq = shl nsw i32 %i.abp, 6
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [2 x i8], ptr %i.abm, i64 %i.abr
  %i.abt = load i32, ptr %i.aax, align 8
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.abu
  %i.abw = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %i.d, ptr noundef %i.abs, ptr noundef %i.abv, i32 noundef %i.aap)
  %.not226.not.i.i.i = icmp eq i32 %i.abw, 0
  br i1 %.not226.not.i.i.i, label %.loopexit401.i, label %bb.ei

._crit_edge.loopexit.i52.i.i:                     ; preds = %bb.ei
  %.pre.i.i.i = load i32, ptr %i.aas, align 8
  br label %._crit_edge.i50.i.i

._crit_edge.i50.i.i:                              ; preds = %._crit_edge.loopexit.i52.i.i, %.preheader264.i.i.i
  %i.abx = phi i32 [ %.pre.i.i.i, %._crit_edge.loopexit.i52.i.i ], [ %i.aba, %.preheader264.i.i.i ] ; 2 uses
  %i.aby = phi i32 [ %i.abe, %._crit_edge.loopexit.i52.i.i ], [ %i.abb, %.preheader264.i.i.i ]
  %i.abz = add nuw nsw i32 %.0280.i.i.i, 1        ; 2 uses
  %.not227.i.i.i = icmp slt i32 %i.abz, %i.abx
  br i1 %.not227.i.i.i, label %.preheader264.i.i.i, label %.critedge234.loopexit.i.i.i, !llvm.loop !51

.critedge234.loopexit.i.i.i:                      ; preds = %._crit_edge.i50.i.i
  %.pre336.i.i.i = load i32, ptr %i.s, align 4
  br label %.critedge234.i.i.i

.critedge234.i.i.i:                               ; preds = %.critedge234.loopexit.i.i.i, %.preheader264.lr.ph.i.i.i, %.lr.ph282.i.i.i
  %i.aca = phi i32 [ %i.aan, %.lr.ph282.i.i.i ], [ %.pre336.i.i.i, %.critedge234.loopexit.i.i.i ], [ %i.aan, %.preheader264.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i49.i.i = add nuw nsw i64 %indvars.iv.i48.i.i, 1 ; 2 uses
  %i.acb = sext i32 %i.aca to i64
  %i.acc = icmp slt i64 %indvars.iv.next.i49.i.i, %i.acb
  br i1 %i.acc, label %.lr.ph282.i.i.i, label %._crit_edge283.loopexit.i.i.i, !llvm.loop !52

._crit_edge283.loopexit.i.i.i:                    ; preds = %.critedge234.i.i.i
  %.pre337.i.i.i = load i32, ptr %i.ah, align 4
  br label %._crit_edge283.i.i.i

._crit_edge283.i.i.i:                             ; preds = %._crit_edge283.loopexit.i.i.i, %.preheader266.i.i.i
  %i.acd = phi i32 [ %.pre337.i.i.i, %._crit_edge283.loopexit.i.i.i ], [ %i.aak, %.preheader266.i.i.i ] ; 2 uses
  %i.ace = add nsw i32 %i.acd, -1                 ; 2 uses
  store i32 %i.ace, ptr %i.ah, align 4
  %i.acf = icmp slt i32 %i.acd, 2
  br i1 %i.acf, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %._crit_edge283.i.i.i
  %i.acg = load i32, ptr %i.z, align 4
  %i.ach = icmp slt i32 %i.acg, 24
  br i1 %i.ach, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aci = load i8, ptr %i.ag, align 8            ; 2 uses
  %i.acj = and i8 %i.aci, -8
  %or.cond235.i.i.i = icmp eq i8 %i.acj, -48
  br i1 %or.cond235.i.i.i, label %bb.em, label %stbi__parse_entropy_coded_data.exit.thread.i.i

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.ack = load i32, ptr %i.p, align 8            ; 2 uses
  %.not.i242.i.i.i = icmp eq i32 %i.ack, 0
  %spec.select.i243.i.i.i = select i1 %.not.i242.i.i.i, i32 2147483647, i32 %i.ack ; 2 uses
  store i32 %spec.select.i243.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %._crit_edge283.i.i.i
  %i.acl = phi i32 [ %i.ace, %._crit_edge283.i.i.i ], [ %spec.select.i243.i.i.i, %bb.em ] ; 2 uses
  %i.acm = add nuw nsw i32 %.0199284.i.i.i, 1     ; 2 uses
  %i.acn = load i32, ptr %i.ak, align 8           ; 2 uses
  %i.aco = icmp slt i32 %i.acm, %i.acn
  br i1 %i.aco, label %.preheader266.i.i.i, label %._crit_edge285.loopexit.i.i.i, !llvm.loop !53

._crit_edge285.loopexit.i.i.i:                    ; preds = %bb.en
  %.pre338.i.i.i = load i32, ptr %i.aj, align 4
  br label %._crit_edge285.i.i.i

._crit_edge285.i.i.i:                             ; preds = %._crit_edge285.loopexit.i.i.i, %.preheader267.i.i.i
  %i.acp = phi i32 [ %.pre338.i.i.i, %._crit_edge285.loopexit.i.i.i ], [ %i.aag, %.preheader267.i.i.i ] ; 2 uses
  %i.acq = phi i32 [ %i.acl, %._crit_edge285.loopexit.i.i.i ], [ %i.aah, %.preheader267.i.i.i ]
  %i.acr = phi i32 [ %i.acn, %._crit_edge285.loopexit.i.i.i ], [ %i.aai, %.preheader267.i.i.i ]
  %i.acs = add nuw nsw i32 %.0198286.i.i.i, 1     ; 2 uses
  %i.act = icmp slt i32 %i.acs, %i.acp
  br i1 %i.act, label %.preheader267.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i, !llvm.loop !54

stbi__parse_entropy_coded_data.exit.i.i:          ; preds = %.critedge.i56.i.i, %.loopexit.i.i.i
  %.26.i.i.i = phi i32 [ %.11.i.i.i, %.critedge.i56.i.i ], [ %.3213.i.i.i, %.loopexit.i.i.i ]
  %.not45.i.i = icmp eq i32 %.26.i.i.i, 0
  br i1 %.not45.i.i, label %.loopexit401.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i: ; preds = %._crit_edge285.i.i.i, %._crit_edge289.i.i.i, %stbi__parse_entropy_coded_data.exit.i.i, %.preheader262.lr.ph.i.i.i, %bb.bl, %.preheader267.lr.ph.i.i.i, %.preheader269.i.i.i
  %.pr.i.i = load i8, ptr %i.ag, align 8
  br label %stbi__parse_entropy_coded_data.exit.thread.i.i

stbi__parse_entropy_coded_data.exit.thread.i.i:   ; preds = %bb.el, %bb.ef, %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i
  %i.acu = phi i8 [ %.pr.i.i, %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i ], [ %i.aab, %bb.ef ], [ %i.aci, %bb.el ]
  %i.acv = icmp eq i8 %i.acu, -1
  br i1 %i.acv, label %.loopexit.i59.i.i, label %bb.fd

.loopexit.i59.i.i:                                ; preds = %stbi__get8.exit.i64.i.i, %stbi__parse_entropy_coded_data.exit.thread.i.i
  %i.acw = load ptr, ptr %i.d, align 8            ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.acy = load ptr, ptr %i.acx, align 8
  %.not.i.i60.i.i = icmp eq ptr %i.acy, null
  br i1 %.not.i.i60.i.i, label %stbi__at_eof.exit.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %.loopexit.i59.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 32
  %i.ada = load ptr, ptr %i.acz, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acw, i64 40
  %i.adc = load ptr, ptr %i.adb, align 8
  %i.add = call i32 %i.ada(ptr noundef %i.adc) #13, !inline_history !55
  %.not6.i.i.i.i = icmp eq i32 %i.add, 0
  br i1 %.not6.i.i.i.i, label %stbi__at_eof.exit.thread.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acw, i64 48
  %i.adf = load i32, ptr %i.ade, align 8
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %stbi__skip_jpeg_junk_at_end.exit.i.i, label %stbi__at_eof.exit.i.i.i

stbi__at_eof.exit.i.i.i:                          ; preds = %bb.ep, %.loopexit.i59.i.i
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acw, i64 192
  %i.adi = load ptr, ptr %i.adh, align 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acw, i64 200
  %i.adk = load ptr, ptr %i.adj, align 8
  %.not37.i.i.i = icmp ult ptr %i.adi, %i.adk
  br i1 %.not37.i.i.i, label %stbi__at_eof.exit.thread.i.i.i, label %stbi__skip_jpeg_junk_at_end.exit.i.i

stbi__at_eof.exit.thread.i.i.i:                   ; preds = %stbi__at_eof.exit.i.i.i, %bb.eo
  %i.adl = load ptr, ptr %i.d, align 8            ; 11 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 192 ; 4 uses
  %i.adn = load ptr, ptr %i.adm, align 8          ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 200 ; 2 uses
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = icmp ult ptr %i.adn, %i.adp
  br i1 %i.adq, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %stbi__at_eof.exit.thread.i.i.i
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 1
  store ptr %i.adr, ptr %i.adm, align 8
  %i.ads = load i8, ptr %i.adn, align 1
  br label %stbi__get8.exit.i64.i.i.preheader

bb.er:                                            ; preds = %stbi__at_eof.exit.thread.i.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adl, i64 48 ; 2 uses
  %i.adu = load i32, ptr %i.adt, align 8
  %.not.i14.i.i.i = icmp eq i32 %i.adu, 0
  br i1 %.not.i14.i.i.i, label %stbi__get8.exit.i64.i.i.preheader, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.adw = load ptr, ptr %i.adv, align 8
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adl, i64 40
  %i.ady = load ptr, ptr %i.adx, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adl, i64 56 ; 4 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adl, i64 52
  %i.aeb = load i32, ptr %i.aea, align 4
  %i.aec = call i32 %i.adw(ptr noundef %i.ady, ptr noundef nonnull %i.adz, i32 noundef %i.aeb) #13, !inline_history !56 ; 2 uses
  %i.aed = load ptr, ptr %i.adm, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adl, i64 208
  %i.aef = load ptr, ptr %i.aee, align 8
  %i.aeg = ptrtoint ptr %i.aed to i64
  %i.aeh = ptrtoint ptr %i.aef to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = trunc i64 %i.aei to i32
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adl, i64 184 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 8
  %i.aem = add nsw i32 %i.ael, %i.aej
  store i32 %i.aem, ptr %i.aek, align 8
  %i.aen = icmp eq i32 %i.aec, 0
  br i1 %i.aen, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.adt, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adl, i64 57
  store i8 0, ptr %i.adz, align 8
  br label %stbi__refill_buffer.exit.i.i62.i.i

bb.eu:                                            ; preds = %bb.es
  %i.aep = sext i32 %i.aec to i64
  %i.aeq = getelementptr inbounds i8, ptr %i.adz, i64 %i.aep
  %.pre.i.i61.i.i = load i8, ptr %i.adz, align 8
  br label %stbi__refill_buffer.exit.i.i62.i.i
end_hunk_1
begin_hunk_2_@stbi__jpeg_load:bb.a
  %i.arg = icmp samesign ult i32 %i.arb, %i.arf
  br i1 %i.arg, label %bb.gz, label %output_jpeg_nv12.exit.i, !llvm.loop !72

bb.ha:                                            ; preds = %bb.ha, %.lr.ph67.i.i
  %i.arh = phi ptr [ %i.aom, %.lr.ph67.i.i ], [ %i.ars, %bb.ha ]
  %.266.i.i = phi i32 [ 0, %.lr.ph67.i.i ], [ %i.arr, %bb.ha ] ; 2 uses
  %i.ari = load ptr, ptr %i.aor, align 8
  %i.arj = load i32, ptr %i.anj, align 8
  %i.ark = mul i32 %i.arj, %.266.i.i
  %i.arl = zext i32 %i.ark to i64
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arl
  %i.arn = load i32, ptr %i.arh, align 8
  %i.aro = add i32 %i.arn, 1
  %i.arp = and i32 %i.aro, -2
  %i.arq = zext i32 %i.arp to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.arm, i8 -128, i64 %i.arq, i1 false)
  %i.arr = add nuw nsw i32 %.266.i.i, 1           ; 2 uses
  %i.ars = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 4
  %i.aru = load i32, ptr %i.art, align 4
  %i.arv = add i32 %i.aru, 1
  %i.arw = lshr i32 %i.arv, 1
  %i.arx = icmp samesign ult i32 %i.arr, %i.arw
  br i1 %i.arx, label %bb.ha, label %output_jpeg_nv12.exit.i, !llvm.loop !73

output_jpeg_nv12.exit.i:                          ; preds = %bb.ha, %._crit_edge.i.i, %bb.gy, %.preheader.i.i
  %i.ary = phi ptr [ %i.ara, %._crit_edge.i.i ], [ %i.aom, %bb.gy ], [ %i.aom, %.preheader.i.i ], [ %i.ars, %bb.ha ]
  %i.arz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.asa = load ptr, ptr %i.arz, align 8
  br label %.loopexit398.i

bb.hb:                                            ; preds = %.thread374.i, %.lr.ph.i
  %i.asb = phi i32 [ %.pre577.i, %.lr.ph.i ], [ %i.atj, %.thread374.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread374.i ] ; 3 uses
  %i.asc = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i ; 8 uses
  %i.asd = add i32 %i.asb, 3
  %i.ase = zext i32 %i.asd to i64
  %i.asf = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ase) #13 ; 2 uses
  %i.asg = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i ; 4 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 72
  store ptr %i.asf, ptr %i.ash, align 8
  %.not303.not.i = icmp eq ptr %i.asf, null
  br i1 %.not303.not.i, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %i.asi = load ptr, ptr %i.d, align 8
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.ask = load i32, ptr %i.asj, align 8          ; 2 uses
  %i.asl = icmp sgt i32 %i.ask, 0
  br i1 %i.asl, label %.lr.ph.i.i341.i, label %.thread375.i

.thread375.i:                                     ; preds = %bb.hc
  %i.asm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph.i.i341.i:                                  ; preds = %bb.hc
  %wide.trip.count.i.i342.i = zext nneg i32 %i.ask to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hj, %.lr.ph.i.i341.i
  %indvars.iv.i.i343.i = phi i64 [ 0, %.lr.ph.i.i341.i ], [ %indvars.iv.next.i.i347.i, %bb.hj ] ; 2 uses
  %i.asn = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i343.i ; 5 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 56
  %i.asp = load ptr, ptr %i.aso, align 8          ; 2 uses
  %.not.i.i344.i = icmp eq ptr %i.asp, null
  br i1 %.not.i.i344.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @SDL_free_REAL(ptr noundef nonnull %i.asp) #13
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.asq, i8 0, i64 16, i1 false)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asn, i64 64 ; 2 uses
  %i.ass = load ptr, ptr %i.asr, align 8          ; 2 uses
  %.not28.i.i345.i = icmp eq ptr %i.ass, null
  br i1 %.not28.i.i345.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @SDL_free_REAL(ptr noundef nonnull %i.ass) #13
  store ptr null, ptr %i.asr, align 8
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asn, i64 80
  store ptr null, ptr %i.ast, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asn, i64 72 ; 2 uses
  %i.asv = load ptr, ptr %i.asu, align 8          ; 2 uses
  %.not29.i.i346.i = icmp eq ptr %i.asv, null
  br i1 %.not29.i.i346.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @SDL_free_REAL(ptr noundef nonnull %i.asv) #13
  store ptr null, ptr %i.asu, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %indvars.iv.next.i.i347.i = add nuw nsw i64 %indvars.iv.i.i343.i, 1 ; 2 uses
  %exitcond.not.i.i348.i = icmp eq i64 %indvars.iv.next.i.i347.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i.i348.i, label %bb.ho, label %bb.hd, !llvm.loop !69

bb.hk:                                            ; preds = %bb.hb
  %i.asw = load i32, ptr %i.amf, align 8
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asg, i64 4
  %i.asy = load i32, ptr %i.asx, align 4
  %i.asz = sdiv i32 %i.asw, %i.asy                ; 4 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asc, i64 24
  store i32 %i.asz, ptr %i.ata, align 8
  %i.atb = load i32, ptr %i.amg, align 4
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.atd = load i32, ptr %i.atc, align 8
  %i.ate = sdiv i32 %i.atb, %i.atd                ; 5 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asc, i64 28
  store i32 %i.ate, ptr %i.atf, align 4
  %i.atg = ashr i32 %i.ate, 1
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asc, i64 36
  store i32 %i.atg, ptr %i.ath, align 4
  %i.ati = load ptr, ptr %i.d, align 8            ; 7 uses
  %i.atj = load i32, ptr %i.ati, align 8          ; 6 uses
  %i.atk = add i32 %i.asz, -1
  %i.atl = add i32 %i.atk, %i.atj
  %i.atm = udiv i32 %i.atl, %i.asz
  %i.atn = getelementptr inbounds nuw i8, ptr %i.asc, i64 32
  store i32 %i.atm, ptr %i.atn, align 16
  %i.ato = getelementptr inbounds nuw i8, ptr %i.asc, i64 40
  store i32 0, ptr %i.ato, align 8
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asg, i64 48
  %i.atq = load ptr, ptr %i.atp, align 8          ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asc, i64 16
  store ptr %i.atq, ptr %i.atr, align 16
  %i.ats = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  store ptr %i.atq, ptr %i.ats, align 8
  switch i32 %i.asz, label %.thread373.i [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %switch.selectcmp.i = icmp eq i32 %i.ate, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp778.i = icmp eq i32 %i.ate, 1
  %switch.select779.i = select i1 %switch.selectcmp778.i, ptr @resample_row_1, ptr %switch.select.i
  br label %.thread374.i

bb.hm:                                            ; preds = %bb.hk
  switch i32 %i.ate, label %.thread373.i [
    i32 1, label %.thread374.i
    i32 2, label %bb.hn
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.att = load ptr, ptr %i.i, align 8
  br label %.thread374.i

.thread373.i:                                     ; preds = %bb.hm, %bb.hk
  br label %.thread374.i

bb.ho:                                            ; preds = %bb.hj
  %i.atu = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.thread374.i:                                     ; preds = %.thread373.i, %bb.hn, %bb.hm, %bb.hl
  %stbi__resample_row_v_2.sink.i = phi ptr [ %switch.select779.i, %bb.hl ], [ %i.att, %bb.hn ], [ @stbi__resample_row_generic, %.thread373.i ], [ @stbi__resample_row_h_2, %bb.hm ]
  store ptr %stbi__resample_row_v_2.sink.i, ptr %i.asc, align 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hb, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.thread374.i
  %.phi.trans.insert579.i = getelementptr inbounds nuw i8, ptr %i.ati, i64 4
  %.pre580.i = load i32, ptr %.phi.trans.insert579.i, align 4 ; 4 uses
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.atj, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.hp, label %stbi__malloc_mad3.exit.thread.i

bb.hp:                                            ; preds = %._crit_edge.i
  %i.atv = icmp eq i32 %i.atj, 0
  br i1 %i.atv, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.hp
  %i.atw = udiv i32 2147483647, %i.atj
  %.not23.i.i.i = icmp samesign ugt i32 %i.alh, %i.atw
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.hp
  %i.atx = mul nuw nsw i32 %i.atj, %i.alh         ; 3 uses
  %i.aty = or i32 %.pre580.i, %i.atx
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.aty, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.hq, label %stbi__malloc_mad3.exit.thread.i

bb.hq:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.atz = icmp eq i32 %.pre580.i, 0
  br i1 %i.atz, label %stbi__mad3sizes_valid.exit.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.hq
  %i.aua = udiv i32 2147483647, %.pre580.i
  %.not.i.i350.i = icmp sgt i32 %i.atx, %i.aua
  br i1 %.not.i.i350.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mad3sizes_valid.exit.i.i

stbi__mad3sizes_valid.exit.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.hq
  %i.aub = mul nsw i32 %.pre580.i, %i.atx         ; 2 uses
  %.not9.i.i = icmp eq i32 %i.aub, 2147483647
  br i1 %.not9.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mad3sizes_valid.exit.i.i
  %i.auc = add nsw i32 %i.aub, 1
  %i.aud = sext i32 %i.auc to i64
  %i.aue = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.aud) #13 ; 4 uses
  %.not299.i = icmp eq ptr %i.aue, null
  %.pre582.i = load ptr, ptr %i.d, align 8        ; 4 uses
  br i1 %.not299.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader397.i

.preheader397.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.auf = getelementptr inbounds nuw i8, ptr %.pre582.i, i64 4
  %i.aug = load i32, ptr %i.auf, align 4
  %.not.i = icmp eq i32 %i.aug, 0
  br i1 %.not.i, label %.loopexit398.i, label %.lr.ph477.i

.lr.ph477.i:                                      ; preds = %.preheader397.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.d, i64 18508 ; 2 uses
  %i.aui = icmp eq i32 %i.alh, 1                  ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.auk = zext nneg i32 %i.alh to i64            ; 6 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph444.preheader.i

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mad3sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %._crit_edge.i
  %i.aun = phi ptr [ %i.ati, %stbi__mul2sizes_valid.exit.thread15.i.i.i ], [ %i.ati, %._crit_edge.i ], [ %i.ati, %stbi__mul2sizes_valid.exit.i.i.i ], [ %i.ati, %stbi__mul2sizes_valid.exit12.i.i.i ], [ %i.ati, %stbi__mad3sizes_valid.exit.i.i ], [ %.pre582.i, %stbi__malloc_mad3.exit.i ]
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 8
  %i.aup = load i32, ptr %i.auo, align 8          ; 2 uses
  %i.auq = icmp sgt i32 %i.aup, 0
  br i1 %i.auq, label %.lr.ph.i.i351.i, label %stbi__cleanup_jpeg.exit359.i

.lr.ph.i.i351.i:                                  ; preds = %stbi__malloc_mad3.exit.thread.i
  %wide.trip.count.i.i352.i = zext nneg i32 %i.aup to i64
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hx, %.lr.ph.i.i351.i
  %indvars.iv.i.i353.i = phi i64 [ 0, %.lr.ph.i.i351.i ], [ %indvars.iv.next.i.i357.i, %bb.hx ] ; 2 uses
  %i.aur = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i353.i ; 5 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 56
  %i.aut = load ptr, ptr %i.aus, align 8          ; 2 uses
  %.not.i.i354.i = icmp eq ptr %i.aut, null
  br i1 %.not.i.i354.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @SDL_free_REAL(ptr noundef nonnull %i.aut) #13
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aur, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.auu, i8 0, i64 16, i1 false)
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aur, i64 64 ; 2 uses
  %i.auw = load ptr, ptr %i.auv, align 8          ; 2 uses
  %.not28.i.i355.i = icmp eq ptr %i.auw, null
  br i1 %.not28.i.i355.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @SDL_free_REAL(ptr noundef nonnull %i.auw) #13
  store ptr null, ptr %i.auv, align 8
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aur, i64 80
  store ptr null, ptr %i.aux, align 8
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aur, i64 72 ; 2 uses
  %i.auz = load ptr, ptr %i.auy, align 8          ; 2 uses
  %.not29.i.i356.i = icmp eq ptr %i.auz, null
  br i1 %.not29.i.i356.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @SDL_free_REAL(ptr noundef nonnull %i.auz) #13
  store ptr null, ptr %i.auy, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %indvars.iv.next.i.i357.i = add nuw nsw i64 %indvars.iv.i.i353.i, 1 ; 2 uses
  %exitcond.not.i.i358.i = icmp eq i64 %indvars.iv.next.i.i357.i, %wide.trip.count.i.i352.i
  br i1 %exitcond.not.i.i358.i, label %stbi__cleanup_jpeg.exit359.i, label %bb.hr, !llvm.loop !69

stbi__cleanup_jpeg.exit359.i:                     ; preds = %bb.hx, %stbi__malloc_mad3.exit.thread.i
  %i.ava = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph444.preheader.i:                            ; preds = %.loopexit.i, %.lr.ph477.i
  %i.avb = phi ptr [ %.pre582.i, %.lr.ph477.i ], [ %i.bgf, %.loopexit.i ]
  %.0275476.i = phi i32 [ 0, %.lr.ph477.i ], [ %i.bgg, %.loopexit.i ] ; 2 uses
  %i.avc = load i32, ptr %i.avb, align 8
  br label %.lr.ph444.i

.lr.ph444.i:                                      ; preds = %bb.ia, %.lr.ph444.preheader.i
  %indvars.iv539.i = phi i64 [ 0, %.lr.ph444.preheader.i ], [ %indvars.iv.next540.i, %bb.ia ] ; 4 uses
  %i.avd = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv539.i ; 8 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 36 ; 3 uses
  %i.avf = load i32, ptr %i.ave, align 4          ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avd, i64 28
  %i.avh = load i32, ptr %i.avg, align 4          ; 2 uses
  %i.avi = ashr i32 %i.avh, 1
  %.not300.i = icmp slt i32 %i.avf, %i.avi        ; 2 uses
  %i.avj = load ptr, ptr %i.avd, align 16
  %i.avk = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv539.i ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 72
  %i.avm = load ptr, ptr %i.avl, align 8
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avd, i64 16 ; 4 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avd, i64 8 ; 3 uses
  %.in.i = select i1 %.not300.i, ptr %i.avo, ptr %i.avn
  %i.avp = load ptr, ptr %.in.i, align 8
  %.in301.i = select i1 %.not300.i, ptr %i.avn, ptr %i.avo
  %i.avq = load ptr, ptr %.in301.i, align 8
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avd, i64 32
  %i.avs = load i32, ptr %i.avr, align 16
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avd, i64 24
  %i.avu = load i32, ptr %i.avt, align 8
  %i.avv = call ptr %i.avj(ptr noundef %i.avm, ptr noundef %i.avp, ptr noundef %i.avq, i32 noundef %i.avs, i32 noundef %i.avu) #13, !inline_history !75
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv539.i
  store ptr %i.avv, ptr %i.avw, align 8
  %i.avx = add nsw i32 %i.avf, 1                  ; 2 uses
  store i32 %i.avx, ptr %i.ave, align 4
  %.not302.i = icmp slt i32 %i.avx, %i.avh
  br i1 %.not302.i, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph444.i
  store i32 0, ptr %i.ave, align 4
  %i.avy = load ptr, ptr %i.avn, align 16         ; 2 uses
  store ptr %i.avy, ptr %i.avo, align 8
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avd, i64 40 ; 2 uses
  %i.awa = load i32, ptr %i.avz, align 8
  %i.awb = add nsw i32 %i.awa, 1                  ; 2 uses
  store i32 %i.awb, ptr %i.avz, align 8
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avk, i64 32
  %i.awd = load i32, ptr %i.awc, align 8
  %i.awe = icmp slt i32 %i.awb, %i.awd
  br i1 %i.awe, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avk, i64 36
  %i.awg = load i32, ptr %i.awf, align 4
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds i8, ptr %i.avy, i64 %i.awh
  store ptr %i.awi, ptr %i.avn, align 16
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %.lr.ph444.i
  %indvars.iv.next540.i = add nuw nsw i64 %indvars.iv539.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next540.i, %wide.trip.count.i
  br i1 %exitcond543.not.i, label %._crit_edge445.i, label %.lr.ph444.i, !llvm.loop !76

._crit_edge445.i:                                 ; preds = %bb.ia
  %i.awj = mul i32 %.0275476.i, %i.alh
  %i.awk = mul i32 %i.awj, %i.avc
  %i.awl = zext i32 %i.awk to i64
  %i.awm = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.awl ; 12 uses
  br i1 %i.alt, label %bb.ib, label %bb.ii

bb.ib:                                            ; preds = %._crit_edge445.i
  %i.awn = load ptr, ptr %i.c, align 16           ; 5 uses
  %i.awo = load ptr, ptr %i.d, align 8            ; 15 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awq = load i32, ptr %i.awp, align 8
  switch i32 %i.awq, label %.preheader.i [
    i32 3, label %bb.ic
    i32 4, label %bb.ie
  ]

.preheader.i:                                     ; preds = %bb.ib
  %i.awr = load i32, ptr %i.awo, align 8
  %.not487.i = icmp eq i32 %i.awr, 0
  br i1 %.not487.i, label %.loopexit.i, label %.lr.ph475.i

bb.ic:                                            ; preds = %bb.ib
  br i1 %i.alr, label %.preheader380.i, label %.loopexit.sink.split.i

.preheader380.i:                                  ; preds = %bb.ic
  %i.aws = load i32, ptr %i.awo, align 8
  %.not486.i = icmp eq i32 %i.aws, 0
  br i1 %.not486.i, label %.loopexit.i, label %.lr.ph472.i

.lr.ph472.i:                                      ; preds = %.preheader380.i
  %i.awt = load ptr, ptr %i.aul, align 8
  %i.awu = load ptr, ptr %i.aum, align 16
  br label %bb.id

bb.id:                                            ; preds = %bb.id, %.lr.ph472.i
  %indvars.iv568.i = phi i64 [ 0, %.lr.ph472.i ], [ %indvars.iv.next569.i, %bb.id ] ; 4 uses
  %.0270471.i = phi ptr [ %i.awm, %.lr.ph472.i ], [ %i.axe, %bb.id ] ; 5 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awn, i64 %indvars.iv568.i
  %i.aww = load i8, ptr %i.awv, align 1
  store i8 %i.aww, ptr %.0270471.i, align 1
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awt, i64 %indvars.iv568.i
  %i.awy = load i8, ptr %i.awx, align 1
  %i.awz = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 1
  store i8 %i.awy, ptr %i.awz, align 1
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awu, i64 %indvars.iv568.i
  %i.axb = load i8, ptr %i.axa, align 1
  %i.axc = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 2
  store i8 %i.axb, ptr %i.axc, align 1
  %i.axd = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 3
  store i8 -1, ptr %i.axd, align 1
  %i.axe = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 %i.auk
  %indvars.iv.next569.i = add nuw nsw i64 %indvars.iv568.i, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@stbi__resample_row_h_2:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !alias.scope !104
  %i.v = zext <8 x i8> %wide.load to <8 x i32>
  %i.w = mul nuw nsw <8 x i32> %i.v, splat (i32 3)
  %i.x = add nuw nsw <8 x i32> %i.w, splat (i32 2) ; 2 uses
  %i.y = getelementptr i8, ptr %i.u, i64 -1
  %wide.load44 = load <8 x i8>, ptr %i.y, align 1, !alias.scope !104
  %i.z = zext <8 x i8> %wide.load44 to <8 x i32>
  %i.aa = add nuw nsw <8 x i32> %i.x, %i.z
  %i.ab = shl nuw nsw i64 %i.t, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %wide.load45 = load <8 x i8>, ptr %i.ae, align 1, !alias.scope !104
  %i.af = zext <8 x i8> %wide.load45 to <8 x i32>
  %i.ag = add nuw nsw <8 x i32> %i.x, %i.af
  %i.ah = shufflevector <8 x i32> %i.aa, <8 x i32> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ai = lshr <16 x i32> %i.ah, splat (i32 2)
  %interleaved.vec = trunc nuw <16 x i32> %i.ai to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.ac, align 1, !alias.scope !107, !noalias !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader46 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 3
  %i.ao = add nuw nsw i32 %i.an, 2                ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ak, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  %i.at = lshr i32 %i.as, 2
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = shl nuw nsw i64 %indvars.iv, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  store i8 %i.au, ptr %i.aw, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ao, %i.az
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.bc, ptr %i.bd, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !110

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %i.be = shl nuw nsw i32 %i.n, 1
  %i.bf = zext nneg i32 %i.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.037.lcssa = phi i64 [ 2, %bb.c ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = mul nuw nsw i16 %i.bk, 3
  %i.bm = sext i32 %i.n to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bp, 2
  %i.br = add nuw nsw i16 %i.bq, %i.bl
  %i.bs = lshr i16 %i.br, 2
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.037.lcssa ; 2 uses
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = load i8, ptr %i.bn, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.bv, ptr %i.bw, align 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @stbi__resample_row_generic(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 7 uses
  %wide.trip.count21 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check24 = icmp ult i32 %4, 32
  %i.d = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec25 = and i64 %i.c, 2147483644             ; 3 uses
  %cmp.n30 = icmp eq i64 %n.vec25, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv18
  %i.f = mul nuw nsw i64 %indvars.iv18, %i.c
  %.pre = load i8, ptr %i.e, align 1              ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.g, align 1
  store <16 x i8> %broadcast.splat, ptr %i.h, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <4 x i8> %broadcast.splatinsert26, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <4 x i8> %broadcast.splat27, ptr %i.j, align 1
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !114

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !115

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @stbi__malloc_mad3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad3sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23.i = icmp sgt i32 %0, %i.c
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.b
  %i.d = mul nsw i32 %1, %0                       ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %stbi__mad3sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i
  %i.h = mul nsw i32 %i.d, %2                     ; 2 uses
  %i.i = xor i32 %3, 2147483647
  %.not9 = icmp sgt i32 %i.h, %i.i
  br i1 %.not9, label %stbi__mad3sizes_valid.exit.thread, label %bb.d

bb.d:                                             ; preds = %stbi__mad3sizes_valid.exit
  %i.j = add nsw i32 %i.h, %3
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.k) #13
  br label %stbi__mad3sizes_valid.exit.thread

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i, %stbi__mad3sizes_valid.exit, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %stbi__mad3sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit12.i ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ], [ null, %stbi__mul2sizes_valid.exit.thread15.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__decode_jpeg_header(ptr nofree noundef nonnull captures(none) initializes((18472, 18473), (18504, 18512)) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 -1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 -1, ptr %i.c, align 8
  %i.d = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0)
  %i.e = icmp eq i8 %i.d, -40
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit32

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %.loopexit32

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) ; 3 uses
  %.036 = zext i8 %i.g to i32                     ; 2 uses
  %i.h = and i32 %.036, 254
  %or.cond37 = icmp ne i32 %i.h, 192
  %i.i = icmp ne i8 %i.g, -62
  %spec.select38 = and i1 %i.i, %or.cond37
  br i1 %spec.select38, label %.lr.ph40, label %._crit_edge

.loopexit:                                        ; preds = %stbi__at_eof.exit.thread, %bb.e
  %.1.in.lcssa = phi i8 [ %i.m, %bb.e ], [ %i.ae, %stbi__at_eof.exit.thread ] ; 3 uses
  %.0 = zext i8 %.1.in.lcssa to i32               ; 2 uses
  %i.j = and i32 %.0, 254
  %or.cond = icmp ne i32 %i.j, 192
  %i.k = icmp ne i8 %.1.in.lcssa, -62
  %spec.select = and i1 %i.k, %or.cond
  br i1 %spec.select, label %.lr.ph40, label %._crit_edge, !llvm.loop !116

.lr.ph40:                                         ; preds = %bb.d, %.loopexit
  %.039 = phi i32 [ %.0, %.loopexit ], [ %.036, %bb.d ]
  %i.l = tail call fastcc i32 @stbi__process_marker(ptr noundef %0, i32 noundef %.039)
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %.loopexit32, label %bb.e

bb.e:                                             ; preds = %.lr.ph40
  %i.m = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %stbi__at_eof.exit.thread
  %i.o = load ptr, ptr %0, align 8                ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %stbi__at_eof.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.s(ptr noundef %i.u) #13, !inline_history !117
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %stbi__at_eof.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %stbi__at_eof.exit.thread28, label %stbi__at_eof.exit

stbi__at_eof.exit:                                ; preds = %.lr.ph, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not31 = icmp ult ptr %i.aa, %i.ac
  br i1 %.not31, label %stbi__at_eof.exit.thread, label %stbi__at_eof.exit.thread28

stbi__at_eof.exit.thread28:                       ; preds = %bb.g, %stbi__at_eof.exit
  %i.ad = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit32

stbi__at_eof.exit.thread:                         ; preds = %bb.f, %stbi__at_eof.exit
  %i.ae = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) ; 2 uses
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !118

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.0.in.lcssa = phi i8 [ %i.g, %bb.d ], [ %.1.in.lcssa, %.loopexit ]
  %i.ag = icmp eq i8 %.0.in.lcssa, -62
  %i.ah = zext i1 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18480
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = tail call fastcc i32 @stbi__process_frame_header(ptr noundef %0)
  br label %.loopexit32

.loopexit32:                                      ; preds = %.lr.ph40, %._crit_edge, %bb.c, %stbi__at_eof.exit.thread28, %bb.b
  %.021 = phi i32 [ 0, %bb.b ], [ 0, %stbi__at_eof.exit.thread28 ], [ 1, %bb.c ], [ %i.aj, %._crit_edge ], [ 0, %.lr.ph40 ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @stbi__get_marker(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18472 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %i.a, align 8
  br label %stbi__get8.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load i8, ptr %i.e, align 1
  br label %stbi__get8.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef %i.s) #13, !inline_history !119 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add nsw i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp eq i32 %i.t, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  store i8 0, ptr %i.q, align 8
  br label %stbi__refill_buffer.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = sext i32 %i.t to i64
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %i.ag
  %.pre.i = load i8, ptr %i.q, align 8
  br label %stbi__refill_buffer.exit.i
end_hunk_3
begin_hunk_4_@stbi__process_frame_header:bb.a
  store i32 %i.ip, ptr %i.iq, align 8
  %i.ir = load i32, ptr %i.an, align 4
  %i.is = add nsw i32 %i.ik, -1
  %i.it = add i32 %i.is, %i.ir
  %i.iu = udiv i32 %i.it, %i.ik
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 18068 ; 2 uses
  store i32 %i.iu, ptr %i.iv, align 4
  %i.iw = load i32, ptr %i.cd, align 8
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph256, label %.loopexit

.lr.ph256:                                        ; preds = %._crit_edge253
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.iz = add nsw i32 %.0175.lcssa298, -1
  %i.ja = add nsw i32 %.0.lcssa300, -1
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 18480
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph256, %bb.bj
  %indvars.iv280 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next281, %bb.bj ] ; 4 uses
  %i.jc = load i32, ptr %i.a, align 8
  %i.jd = getelementptr inbounds nuw [96 x i8], ptr %i.iy, i64 %indvars.iv280 ; 11 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = mul i32 %i.jf, %i.jc
  %i.jh = add i32 %i.iz, %i.jg
  %i.ji = udiv i32 %i.jh, %.0175.lcssa298
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  store i32 %i.ji, ptr %i.jj, align 4
  %i.jk = load i32, ptr %i.an, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jm = load i32, ptr %i.jl, align 8            ; 2 uses
  %i.jn = mul i32 %i.jm, %i.jk
  %i.jo = add i32 %i.ja, %i.jn
  %i.jp = udiv i32 %i.jo, %.0.lcssa300
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store i32 %i.jp, ptr %i.jq, align 8
  %i.jr = load i32, ptr %i.iq, align 8
  %i.js = shl i32 %i.jf, 3
  %i.jt = mul i32 %i.js, %i.jr                    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jd, i64 36 ; 2 uses
  store i32 %i.jt, ptr %i.ju, align 4
  %i.jv = load i32, ptr %i.iv, align 4
  %i.jw = shl i32 %i.jm, 3
  %i.jx = mul i32 %i.jw, %i.jv                    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i32 %i.jx, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 80
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jd, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, i8 0, i64 24, i1 false)
  %i.kb = tail call fastcc ptr @stbi__malloc_mad2(i32 noundef %i.jt, i32 noundef %i.jx, i32 noundef 15) ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store ptr %i.kb, ptr %i.kc, align 8
  %i.kd = icmp eq ptr %i.kb, null
  br i1 %i.kd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ke = trunc nuw nsw i64 %indvars.iv280 to i32
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %i.kf)
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.kh = ptrtoint ptr %i.kb to i64
  %i.ki = add i64 %i.kh, 15
  %i.kj = and i64 %i.ki, -16
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  store ptr %i.kk, ptr %i.kl, align 8
  %i.km = load i32, ptr %i.jb, align 8
  %.not191 = icmp eq i32 %i.km, 0
  br i1 %.not191, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  %i.ko = load <2 x i32>, ptr %i.ju, align 4      ; 3 uses
  %i.kp = sdiv <2 x i32> %i.ko, splat (i32 8)
  store <2 x i32> %i.kp, ptr %i.kn, align 8
  %i.kq = extractelement <2 x i32> %i.ko, i64 0
  %i.kr = extractelement <2 x i32> %i.ko, i64 1
  %i.ks = tail call fastcc ptr @stbi__malloc_mad3(i32 noundef %i.kq, i32 noundef %i.kr, i32 noundef 2, i32 noundef 15) ; 3 uses
  store ptr %i.ks, ptr %i.ka, align 8
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ku = trunc nuw nsw i64 %indvars.iv280 to i32
  %i.kv = add nuw nsw i32 %i.ku, 1
  %i.kw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %i.kv)
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.kx = ptrtoint ptr %i.ks to i64
  %i.ky = add i64 %i.kx, 15
  %i.kz = and i64 %i.ky, -16
  %i.la = inttoptr i64 %i.kz to ptr
  store ptr %i.la, ptr %i.jz, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.lb = load i32, ptr %i.cd, align 8
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp slt i64 %indvars.iv.next281, %i.lc
  br i1 %i.ld, label %bb.bd, label %.loopexit, !llvm.loop !133

.loopexit:                                        ; preds = %bb.bj, %._crit_edge253, %bb.bh, %bb.be, %bb.bc, %bb.ba, %bb.aw, %bb.au, %bb.an, %.loopexit229, %bb.w, %stbi__get8.exit202.thread, %bb.n, %bb.l, %bb.j, %stbi__get8.exit.thread, %bb.b
  %.0179 = phi i32 [ 0, %bb.b ], [ 0, %stbi__get8.exit.thread ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.aw ], [ 0, %stbi__get8.exit202.thread ], [ 0, %bb.w ], [ 0, %.loopexit229 ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.bh ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.be ], [ 1, %._crit_edge253 ], [ 1, %bb.bj ]
  ret i32 %.0179
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @stbi__get8(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #13, !inline_history !134 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit

stbi__refill_buffer.exit:                         ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %stbi__refill_buffer.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__mad3sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #5 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %stbi__mul2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread15, label %stbi__mul2sizes_valid.exit

stbi__mul2sizes_valid.exit:                       ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15

stbi__mul2sizes_valid.exit.thread15:              ; preds = %bb.b, %stbi__mul2sizes_valid.exit
  %i.d = mul nsw i32 %1, %0                       ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %stbi__mul2sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit12.thread20, label %stbi__mul2sizes_valid.exit12

stbi__mul2sizes_valid.exit12:                     ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit12.thread20

stbi__mul2sizes_valid.exit12.thread20:            ; preds = %bb.c, %stbi__mul2sizes_valid.exit12
  %i.h = mul nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %stbi__mul2sizes_valid.exit.thread

stbi__mul2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15, %bb.a, %stbi__mul2sizes_valid.exit12.thread20, %stbi__mul2sizes_valid.exit12, %stbi__mul2sizes_valid.exit
  %i.l = phi i32 [ 0, %stbi__mul2sizes_valid.exit12 ], [ 0, %stbi__mul2sizes_valid.exit ], [ %i.k, %stbi__mul2sizes_valid.exit12.thread20 ], [ 0, %bb.a ], [ 0, %stbi__mul2sizes_valid.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @stbi__malloc_mad2(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i
  %i.d = mul nsw i32 %1, %0                       ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %stbi__mad2sizes_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.f = add nsw i32 %i.d, %2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.g) #13
  br label %stbi__mad2sizes_valid.exit.thread

stbi__mad2sizes_valid.exit.thread:                ; preds = %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mad2sizes_valid.exit, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %stbi__mad2sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbi__free_jpeg_components(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.h) #13
  store ptr null, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #13
  store ptr null, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 20 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0)
  %.pr = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.thread118.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  br label %stbi__jpeg_huff_decode.exit

bb.f:                                             ; preds = %.thread
  %i.v = lshr i32 %i.f, 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4             ; 3 uses
  br i1 %i.ab, label %.thread118.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.thread118.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nuw nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.ai, %i.al                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.am, 255
  br i1 %or.cond.i, label %.thread118.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.an, ptr %i.a, align 4
  %i.ao = shl i32 %i.f, %i.aa
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.e, %bb.k
  %.1.i.in.in = phi ptr [ %i.ar, %bb.k ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1    ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.thread118.sink.split, label %bb.l

bb.l:                                             ; preds = %stbi__jpeg_huff_decode.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  br i1 %.not, label %stbi__extend_receive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.a, align 4             ; 2 uses
  %i.at = icmp slt i32 %i.as, %.1.i
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = phi i32 [ %.pre.i, %bb.n ], [ %i.as, %bb.m ] ; 2 uses
  %i.av = icmp slt i32 %i.au, %.1.i
  br i1 %i.av, label %stbi__extend_receive.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.e, align 8             ; 3 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.ay = zext nneg i8 %.1.i.in to i64            ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = xor i32 %i.ba, -1
end_hunk_4
begin_hunk_5_@stbi__load_main:bb.a
  %n.vec = and i64 %i.aud, 4294967264             ; 6 uses
  %i.aug = getelementptr i8, ptr %.265.i.i.i.i.i.i.i, i64 %n.vec ; 2 uses
  %i.auh = getelementptr i8, ptr %i.atx, i64 %n.vec
  %i.aui = trunc nuw i64 %n.vec to i32
  %i.auj = sub i32 %.059.i.i.i.i.i.i.i, %i.aui
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.265.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.atx, i64 %index ; 2 uses
  %i.auk = getelementptr i8, ptr %next.gep388, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep388, align 1
  %wide.load389 = load <16 x i8>, ptr %i.auk, align 1
  %i.aul = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load389, ptr %i.aul, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aum = icmp eq i64 %index.next, %n.vec
  br i1 %i.aum, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aud
  br i1 %cmp.n, label %.loopexit.i.i.i.i.i.i.i.backedge, label %vec.epilog.iter.check

.loopexit.i.i.i.i.i.i.i.backedge:                 ; preds = %.preheader98.i.i.i.i.i.i.i.prol.loopexit, %.preheader98.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.lk, %.preheader.preheader.i.i.i.i.i.i.i, %bb.lj, %bb.kj
  %.063.i.i.i.i.i.i.i.be = phi ptr [ %.265.i.i.i.i.i.i.i, %bb.lj ], [ %.265.i.i.i.i.i.i.i, %bb.lk ], [ %i.aqh, %bb.kj ], [ %scevgep140.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i ], [ %i.aun, %vec.epilog.middle.block ], [ %i.aug, %middle.block ], [ %.lcssa483.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ], [ %i.avv, %.preheader98.i.i.i.i.i.i.i ]
  br label %.loopexit.i.i.i.i.i.i.i

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.auf, 0
  br i1 %min.epilog.iters.check, label %.preheader98.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec392 = and i64 %i.aud, 4294967292          ; 5 uses
  %i.aun = getelementptr i8, ptr %.265.i.i.i.i.i.i.i, i64 %n.vec392 ; 2 uses
  %i.auo = getelementptr i8, ptr %i.atx, i64 %n.vec392
  %i.aup = trunc nuw i64 %n.vec392 to i32
  %i.auq = sub i32 %.059.i.i.i.i.i.i.i, %i.aup
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index393 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next397, %vec.epilog.vector.body ] ; 3 uses
  %next.gep394 = getelementptr i8, ptr %.265.i.i.i.i.i.i.i, i64 %index393
  %next.gep395 = getelementptr i8, ptr %i.atx, i64 %index393
  %wide.load396 = load <4 x i8>, ptr %next.gep395, align 1
  store <4 x i8> %wide.load396, ptr %next.gep394, align 1
  %index.next397 = add nuw i64 %index393, 4       ; 2 uses
  %i.aur = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.aur, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n398 = icmp eq i64 %n.vec392, %i.aud
  br i1 %cmp.n398, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i.preheader

.preheader98.i.i.i.i.i.i.i.preheader:             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.i.i.i.i.i.i.i.ph = phi ptr [ %.265.i.i.i.i.i.i.i, %iter.check ], [ %i.aug, %vec.epilog.iter.check ], [ %i.aun, %vec.epilog.middle.block ] ; 2 uses
  %.060.i.i.i.i.i.i.i.ph = phi ptr [ %i.atx, %iter.check ], [ %i.auh, %vec.epilog.iter.check ], [ %i.auo, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.i.i.i.i.i.ph = phi i32 [ %.059.i.i.i.i.i.i.i, %iter.check ], [ %i.auj, %vec.epilog.iter.check ], [ %i.auq, %vec.epilog.middle.block ] ; 4 uses
  %i.aus = add nsw i32 %.2.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i32 %.2.i.i.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader98.i.i.i.i.i.i.i.prol.loopexit, label %.preheader98.i.i.i.i.i.i.i.prol

.preheader98.i.i.i.i.i.i.i.prol:                  ; preds = %.preheader98.i.i.i.i.i.i.i.preheader, %.preheader98.i.i.i.i.i.i.i.prol
  %.5.i.i.i.i.i.i.i.prol = phi ptr [ %i.auv, %.preheader98.i.i.i.i.i.i.i.prol ], [ %.5.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.060.i.i.i.i.i.i.i.prol = phi ptr [ %i.aut, %.preheader98.i.i.i.i.i.i.i.prol ], [ %.060.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.2.i.i.i.i.i.i.i.prol = phi i32 [ %i.auw, %.preheader98.i.i.i.i.i.i.i.prol ], [ %.2.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader98.i.i.i.i.i.i.i.prol ], [ 0, %.preheader98.i.i.i.i.i.i.i.preheader ]
  %i.aut = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.auu = load i8, ptr %.060.i.i.i.i.i.i.i.prol, align 1
  %i.auv = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.auu, ptr %.5.i.i.i.i.i.i.i.prol, align 1
  %i.auw = add nsw i32 %.2.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader98.i.i.i.i.i.i.i.prol.loopexit, label %.preheader98.i.i.i.i.i.i.i.prol, !llvm.loop !163

.preheader98.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.preheader98.i.i.i.i.i.i.i.prol, %.preheader98.i.i.i.i.i.i.i.preheader
  %.lcssa483.unr = phi ptr [ poison, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.auv, %.preheader98.i.i.i.i.i.i.i.prol ]
  %.5.i.i.i.i.i.i.i.unr = phi ptr [ %.5.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.auv, %.preheader98.i.i.i.i.i.i.i.prol ]
  %.060.i.i.i.i.i.i.i.unr = phi ptr [ %.060.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.aut, %.preheader98.i.i.i.i.i.i.i.prol ]
  %.2.i.i.i.i.i.i.i.unr = phi i32 [ %.2.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.auw, %.preheader98.i.i.i.i.i.i.i.prol ]
  %i.aux = icmp ult i32 %i.aus, 7
  br i1 %i.aux, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i

.preheader98.i.i.i.i.i.i.i:                       ; preds = %.preheader98.i.i.i.i.i.i.i.prol.loopexit, %.preheader98.i.i.i.i.i.i.i
  %.5.i.i.i.i.i.i.i = phi ptr [ %i.avv, %.preheader98.i.i.i.i.i.i.i ], [ %.5.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.060.i.i.i.i.i.i.i = phi ptr [ %i.avt, %.preheader98.i.i.i.i.i.i.i ], [ %.060.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i.i.i.i.i.i = phi i32 [ %i.avw, %.preheader98.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ]
  %i.auy = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 1
  %i.auz = load i8, ptr %.060.i.i.i.i.i.i.i, align 1
  %i.ava = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 1
  store i8 %i.auz, ptr %.5.i.i.i.i.i.i.i, align 1
  %i.avb = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 2
  %i.avc = load i8, ptr %i.auy, align 1
  %i.avd = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 2
  store i8 %i.avc, ptr %i.ava, align 1
  %i.ave = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 3
  %i.avf = load i8, ptr %i.avb, align 1
  %i.avg = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 3
  store i8 %i.avf, ptr %i.avd, align 1
  %i.avh = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 4
  %i.avi = load i8, ptr %i.ave, align 1
  %i.avj = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 4
  store i8 %i.avi, ptr %i.avg, align 1
  %i.avk = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 5
  %i.avl = load i8, ptr %i.avh, align 1
  %i.avm = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 5
  store i8 %i.avl, ptr %i.avj, align 1
  %i.avn = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 6
  %i.avo = load i8, ptr %i.avk, align 1
  %i.avp = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 6
  store i8 %i.avo, ptr %i.avm, align 1
  %i.avq = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 7
  %i.avr = load i8, ptr %i.avn, align 1
  %i.avs = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 7
  store i8 %i.avr, ptr %i.avp, align 1
  %i.avt = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 8
  %i.avu = load i8, ptr %i.avq, align 1
  %i.avv = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 8 ; 2 uses
  store i8 %i.avu, ptr %i.avs, align 1
  %i.avw = add nsw i32 %.2.i.i.i.i.i.i.i, -8      ; 2 uses
  %.not79.i.i.i.i.i.i.i.7 = icmp eq i32 %i.avw, 0
  br i1 %.not79.i.i.i.i.i.i.i.7, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i, !llvm.loop !164

.loopexit100.sink.split.i.i.i.i.i.i.i:            ; preds = %bb.kl, %bb.ky, %bb.ks, %bb.km, %bb.jz
  %i.avx = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

stbi__parse_huffman_block.exit.i.i.i.i.i.i:       ; preds = %bb.kl, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = phi i32 [ %.pr.i.i261.i.i.i.i, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %i.aqk, %bb.kl ]
  %i.avy = phi ptr [ %i.ago, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %.063.i.i.i.i.i.i.i, %bb.kl ] ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i32 %i.acm, 0
  br i1 %.not23.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, !llvm.loop !165

stbi__zexpand.exit19.thread.i.i.i.i:              ; preds = %stbi__compute_huffman_codes.exit.i.i.i.i.i.i, %bb.ia, %bb.hz, %stbi__zreceive.exit31.i.i.i.i.i.i, %.loopexit100.sink.split.i.i.i.i.i.i.i, %bb.lg, %bb.le, %bb.ld, %bb.lb, %bb.kh, %bb.kf, %bb.ke, %bb.kc, %stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i, %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, %stbi__parse_zlib_header.exit.thread.i.i.i.i.i.i
  %i.avz = load ptr, ptr %i.zy, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.avz) #13
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i: ; preds = %stbi__zexpand.exit19.thread.i.i.i.i, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.gt, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i: ; preds = %stbi__parse_huffman_block.exit.i.i.i.i.i.i
  %i.awa = load ptr, ptr %i.zy, align 8           ; 5 uses
  %i.awb = ptrtoint ptr %i.avy to i64
  %i.awc = ptrtoint ptr %i.awa to i64
  %i.awd = sub i64 %i.awb, %i.awc
  %i.awe = trunc i64 %i.awd to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr %i.awa, ptr %i.gt, align 8
  %i.awf = icmp eq ptr %i.awa, null
  br i1 %i.awf, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ll

bb.ll:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i
  %i.awg = load ptr, ptr %i.gu, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.awg) #13
  store ptr null, ptr %i.gu, align 8
  %i.awh = load i32, ptr %i.mt, align 8           ; 2 uses
  %i.awi = add nsw i32 %i.awh, 1                  ; 2 uses
  %i.awj = icmp eq i32 %4, %i.awi
  %i.awk = icmp ne i32 %4, 3
  %or.cond5.not288.not293.i.i.i = and i1 %i.awk, %i.awj
  %i.awl = icmp eq i8 %.0258.i.i.i, 0             ; 3 uses
  %or.cond7.not290.i.i.i = select i1 %or.cond5.not288.not293.i.i.i, i1 %i.awl, i1 false
  %i.awm = icmp ne i8 %.0254.i.i.i, 0
  %or.cond10.i.i.i = select i1 %or.cond7.not290.i.i.i, i1 true, i1 %i.awm
  %spec.select1607.i.i.i = select i1 %or.cond10.i.i.i, i32 %i.awi, i32 %i.awh ; 4 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1607.i.i.i, ptr %i.awn, align 4
  %i.awo = load i32, ptr %i.mu, align 8           ; 4 uses
  %i.awp = icmp eq i32 %i.awo, 16
  %i.awq = zext i1 %i.awp to i32
  %i.awr = shl i32 %spec.select1607.i.i.i, %i.awq ; 6 uses
  %.not.i373.i.i.i = icmp eq i32 %.0232.i.i.i, 0
  %i.aws = load ptr, ptr %10, align 8             ; 3 uses
  %i.awt = load i32, ptr %i.aws, align 8          ; 4 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.awv = load i32, ptr %i.awu, align 4          ; 5 uses
  br i1 %.not.i373.i.i.i, label %stbi__create_png_image.exit.i.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aww = or i32 %i.awv, %i.awt
  %or.cond.not.i.i.i.i.i.i.i = icmp sgt i32 %i.aww, -1
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.ln, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.ln:                                            ; preds = %bb.lm
  %i.awx = icmp eq i32 %i.awv, 0
  br i1 %i.awx, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.i.i.i.i.i.i:           ; preds = %bb.ln
  %i.awy = udiv i32 2147483647, %i.awv
  %.not23.i.i.i374.i.i.i = icmp sgt i32 %i.awt, %i.awy
  br i1 %.not23.i.i.i374.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i:  ; preds = %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.ln
  %i.awz = mul nsw i32 %i.awv, %i.awt             ; 3 uses
  %i.axa = or i32 %i.awr, %i.awz
  %or.cond.not.i10.i.i.i.i.i.i = icmp sgt i32 %i.axa, -1
  br i1 %or.cond.not.i10.i.i.i.i.i.i, label %bb.lo, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.lo:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i
  %i.axb = icmp eq i32 %i.awr, 0
  br i1 %i.axb, label %stbi__malloc_mad3.exit.i.i.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i.i.i.i:         ; preds = %bb.lo
  %i.axc = udiv i32 2147483647, %i.awr
  %.not.i.i.i375.i.i.i = icmp sgt i32 %i.awz, %i.axc
  br i1 %.not.i.i.i375.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__malloc_mad3.exit.i.i.i.i

stbi__malloc_mad3.exit.i.i.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %bb.lo
  %i.axd = mul nsw i32 %i.awr, %i.awz
  %i.axe = sext i32 %i.axd to i64
  %i.axf = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.axe) #13 ; 6 uses
  %.not92.i.i.i.i = icmp eq ptr %i.axf, null
  br i1 %.not92.i.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %.preheader100.i.i.i.i

.preheader100.i.i.i.i:                            ; preds = %stbi__malloc_mad3.exit.i.i.i.i
  %i.axg = sext i32 %i.awr to i64                 ; 9 uses
  br label %bb.lp

stbi__malloc_mad3.exit.thread.i.i.i.i:            ; preds = %stbi__malloc_mad3.exit.i.i.i.i, %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.lm
  %i.axh = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.lp:                                            ; preds = %bb.lr, %.preheader100.i.i.i.i
  %i.axi = phi ptr [ %i.aws, %.preheader100.i.i.i.i ], [ %i.bak, %bb.lr ] ; 4 uses
  %indvars.iv112.i.i.i.i = phi i64 [ 0, %.preheader100.i.i.i.i ], [ %indvars.iv.next113.i.i.i.i, %bb.lr ] ; 5 uses
  %.076106.i.i.i.i = phi ptr [ %i.awa, %.preheader100.i.i.i.i ], [ %.379.i.i.i.i, %bb.lr ] ; 3 uses
  %.085104.i.i.i.i = phi i32 [ %i.awe, %.preheader100.i.i.i.i ], [ %.388.i.i.i.i, %bb.lr ] ; 3 uses
  %i.axj = load i32, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i.i.i.i
  %i.axl = load i32, ptr %i.axk, align 4          ; 2 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i.i.i.i
  %i.axn = load i32, ptr %i.axm, align 4          ; 4 uses
  %i.axo = xor i32 %i.axl, -1
  %i.axp = add i32 %i.axj, %i.axo
  %i.axq = add i32 %i.axp, %i.axn                 ; 2 uses
  %i.axr = udiv i32 %i.axq, %i.axn                ; 6 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axi, i64 4
  %i.axt = load i32, ptr %i.axs, align 4
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i.i.i.i
  %i.axv = load i32, ptr %i.axu, align 4          ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i.i.i.i
  %i.axx = load i32, ptr %i.axw, align 4          ; 4 uses
  %i.axy = xor i32 %i.axv, -1
  %i.axz = add i32 %i.axt, %i.axy
  %i.aya = add i32 %i.axz, %i.axx                 ; 2 uses
  %i.ayb = udiv i32 %i.aya, %i.axx                ; 4 uses
  %i.ayc = icmp ule i32 %i.axn, %i.axq
  %i.ayd = icmp ule i32 %i.axx, %i.aya
  %or.cond.i376.i.i.i = select i1 %i.ayc, i1 %i.ayd, i1 false
  br i1 %or.cond.i376.i.i.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.ayf = load i32, ptr %i.aye, align 8
  %i.ayg = mul i32 %i.axr, %i.awo
  %i.ayh = mul i32 %i.ayg, %i.ayf
  %i.ayi = add nsw i32 %i.ayh, 7
  %i.ayj = ashr i32 %i.ayi, 3
  %i.ayk = add nsw i32 %i.ayj, 1
  %i.ayl = mul nsw i32 %i.ayk, %i.ayb             ; 2 uses
  %i.aym = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef %.076106.i.i.i.i, i32 noundef %.085104.i.i.i.i, i32 noundef %spec.select1607.i.i.i, i32 noundef %i.axr, i32 noundef %i.ayb, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not93.not.i.i.i.i = icmp eq i32 %i.aym, 0
  %.pre.i = load ptr, ptr %10, align 8            ; 4 uses
  br i1 %.not93.not.i.i.i.i, label %.thread.i382.i.i.i, label %.preheader99.i.i.i.i

.preheader99.i.i.i.i:                             ; preds = %bb.lq
  %i.ayn = icmp sgt i32 %i.ayb, 0
  %i.ayo = icmp sgt i32 %i.axr, 0
  %or.cond107.i.i.i.i = and i1 %i.ayo, %i.ayn
  %.pre.i378.i.i.i = load ptr, ptr %i.gv, align 8 ; 4 uses
  br i1 %or.cond107.i.i.i.i, label %.preheader.lr.ph.split.i.i.i.i, label %._crit_edge103.split.i.i.i.i

.preheader.lr.ph.split.i.i.i.i:                   ; preds = %.preheader99.i.i.i.i
  %i.ayp = sext i32 %i.axn to i64                 ; 3 uses
  %i.ayq = sext i32 %i.axl to i64                 ; 3 uses
  %i.ayr = zext nneg i32 %i.axr to i64            ; 3 uses
  %i.ays = zext nneg i32 %i.ayb to i64
  %xtraiter798 = and i64 %i.ayr, 1
  %i.ayt = icmp eq i32 %i.axr, 1
  %unroll_iter802 = and i64 %i.ayr, 2147483646
  %lcmp.mod800.not = icmp eq i64 %xtraiter798, 0
  %lcmp.mod801 = trunc i32 %i.axr to i1
  br label %.preheader.i379.i.i.i

.thread.i382.i.i.i:                               ; preds = %bb.lq
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.axf) #13
  br label %stbi__parse_png_file.exit.thread.i.i

.preheader.i379.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %.preheader.lr.ph.split.i.i.i.i
  %indvars.iv109.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i ], [ %indvars.iv.next110.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ayu = trunc i64 %indvars.iv109.i.i.i.i to i32
  %i.ayv = mul i32 %i.axx, %i.ayu
  %i.ayw = add i32 %i.ayv, %i.axv
  %i.ayx = mul i32 %i.ayw, %i.awr                 ; 3 uses
  %i.ayy = mul nuw nsw i64 %indvars.iv109.i.i.i.i, %i.ayr ; 3 uses
  br i1 %i.ayt, label %.epil.preheader797, label %.preheader.i379.i.i.i.new

.preheader.i379.i.i.i.new:                        ; preds = %.preheader.i379.i.i.i, %.preheader.i379.i.i.i.new
  %indvars.iv.i380.i.i.i = phi i64 [ %indvars.iv.next.i381.i.i.i.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ] ; 4 uses
  %niter803 = phi i64 [ %niter803.next.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ]
  %i.ayz = mul nsw i64 %indvars.iv.i380.i.i.i, %i.ayp
  %i.aza = add nsw i64 %i.ayz, %i.ayq
  %i.azb = load i32, ptr %.pre.i, align 8
  %i.azc = mul i32 %i.ayx, %i.azb
  %i.azd = zext i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azd
  %i.azf = mul nsw i64 %i.aza, %i.axg
  %i.azg = getelementptr inbounds i8, ptr %i.aze, i64 %i.azf
  %i.azh = add nuw nsw i64 %indvars.iv.i380.i.i.i, %i.ayy
  %i.azi = mul nsw i64 %i.azh, %i.axg
  %i.azj = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.azi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azg, ptr align 1 %i.azj, i64 %i.axg, i1 false)
  %indvars.iv.next.i381.i.i.i = or disjoint i64 %indvars.iv.i380.i.i.i, 1 ; 2 uses
  %i.azk = mul nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayp
  %i.azl = add nsw i64 %i.azk, %i.ayq
  %i.azm = load i32, ptr %.pre.i, align 8
  %i.azn = mul i32 %i.ayx, %i.azm
  %i.azo = zext i32 %i.azn to i64
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azo
  %i.azq = mul nsw i64 %i.azl, %i.axg
  %i.azr = getelementptr inbounds i8, ptr %i.azp, i64 %i.azq
  %i.azs = add nuw nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayy
  %i.azt = mul nsw i64 %i.azs, %i.axg
  %i.azu = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.azt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azr, ptr align 1 %i.azu, i64 %i.axg, i1 false)
  %indvars.iv.next.i381.i.i.i.1 = add nuw nsw i64 %indvars.iv.i380.i.i.i, 2 ; 2 uses
  %niter803.next.1 = add i64 %niter803, 2         ; 2 uses
  %niter803.ncmp.1.not = icmp eq i64 %niter803.next.1, %unroll_iter802
  br i1 %niter803.ncmp.1.not, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i379.i.i.i.new, !llvm.loop !166

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.preheader.i379.i.i.i.new
  br i1 %lcmp.mod800.not, label %._crit_edge.i.i.i.i, label %.epil.preheader797

.epil.preheader797:                               ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i379.i.i.i
  %indvars.iv.i380.i.i.i.epil.init = phi i64 [ 0, %.preheader.i379.i.i.i ], [ %indvars.iv.next.i381.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod801)
  %i.azv = mul nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayp
  %i.azw = add nsw i64 %i.azv, %i.ayq
  %i.azx = load i32, ptr %.pre.i, align 8
  %i.azy = mul i32 %i.ayx, %i.azx
  %i.azz = zext i32 %i.azy to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azz
  %i.bab = mul nsw i64 %i.azw, %i.axg
  %i.bac = getelementptr inbounds i8, ptr %i.baa, i64 %i.bab
  %i.bad = add nuw nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayy
  %i.bae = mul nsw i64 %i.bad, %i.axg
  %i.baf = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.bae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bac, ptr align 1 %i.baf, i64 %i.axg, i1 false)
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.epil.preheader797
  %indvars.iv.next110.i.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i.i, 1 ; 2 uses
  %i.bag = icmp samesign ult i64 %indvars.iv.next110.i.i.i.i, %i.ays
  br i1 %i.bag, label %.preheader.i379.i.i.i, label %._crit_edge103.split.i.i.i.i, !llvm.loop !167

._crit_edge103.split.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i, %.preheader99.i.i.i.i
  tail call void @SDL_free_REAL(ptr noundef %.pre.i378.i.i.i) #13
  %i.bah = zext i32 %i.ayl to i64
  %i.bai = getelementptr inbounds nuw i8, ptr %.076106.i.i.i.i, i64 %i.bah
  %i.baj = sub i32 %.085104.i.i.i.i, %i.ayl
  br label %bb.lr

bb.lr:                                            ; preds = %._crit_edge103.split.i.i.i.i, %bb.lp
  %i.bak = phi ptr [ %i.axi, %bb.lp ], [ %.pre.i, %._crit_edge103.split.i.i.i.i ]
  %.388.i.i.i.i = phi i32 [ %.085104.i.i.i.i, %bb.lp ], [ %i.baj, %._crit_edge103.split.i.i.i.i ]
  %.379.i.i.i.i = phi ptr [ %.076106.i.i.i.i, %bb.lp ], [ %i.bai, %._crit_edge103.split.i.i.i.i ]
  %indvars.iv.next113.i.i.i.i = add nuw nsw i64 %indvars.iv112.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i377.i.i.i = icmp eq i64 %indvars.iv.next113.i.i.i.i, 7
  br i1 %exitcond.not.i377.i.i.i, label %stbi__create_png_image.exit.thread436.i.i.i, label %bb.lp, !llvm.loop !168

stbi__create_png_image.exit.thread436.i.i.i:      ; preds = %bb.lr
  store ptr %i.axf, ptr %i.gv, align 8
  br label %bb.ls

stbi__create_png_image.exit.i.i.i:                ; preds = %bb.ll
  %i.bal = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef nonnull readonly %i.awa, i32 noundef %i.awe, i32 noundef %spec.select1607.i.i.i, i32 noundef %i.awt, i32 noundef %i.awv, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not294.i.i.i = icmp eq i32 %i.bal, 0
  br i1 %.not294.i.i.i, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ls

bb.ls:                                            ; preds = %stbi__create_png_image.exit.i.i.i, %stbi__create_png_image.exit.thread436.i.i.i
  %.not295.i.i.i = icmp eq i8 %.0254.i.i.i, 0
  br i1 %.not295.i.i.i, label %stbi__compute_transparency16.exit.thread.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.bam = load i32, ptr %i.mu, align 8
  %i.ban = icmp eq i32 %i.bam, 16
  %i.bao = load i32, ptr %i.awn, align 4
  %.val.i.i.i = load ptr, ptr %10, align 8        ; 2 uses
  %.val325.i.i.i = load ptr, ptr %i.gv, align 8   ; 8 uses
  %.val.val.i.i.i = load i32, ptr %.val.i.i.i, align 8
  %i.bap = getelementptr i8, ptr %.val.i.i.i, i64 4
  %.val.val326.i.i.i = load i32, ptr %i.bap, align 4
  %i.baq = mul i32 %.val.val326.i.i.i, %.val.val.i.i.i ; 15 uses
  %i.bar = icmp eq i32 %i.bao, 2                  ; 2 uses
  %.not8.i.i.i.i = icmp eq i32 %i.baq, 0          ; 4 uses
  br i1 %i.ban, label %bb.lu, label %bb.me

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.bar, label %.preheader.i384.i.i.i, label %.preheader1.i.i.i.i

.preheader1.i.i.i.i:                              ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader1.i.i.i.i
  %i.bas = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bat = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bau = load i16, ptr %i.f, align 2            ; 3 uses
  %i.bav = load i16, ptr %i.bas, align 2          ; 3 uses
  %i.baw = load i16, ptr %i.bat, align 2          ; 3 uses
end_hunk_5
begin_hunk_6_@stbi__load_main:bb.a
  %.2230.i.i.i = phi i32 [ %.0228.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0228.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0228.i.i.i, %.thread.i.i.i.i ], [ %.0228.i.i.i, %.thread.i405.i.i.i ], [ %.0228.i.i.i, %.preheader463.i.i.i ], [ %.0228.i.i.i, %.preheader465.i.i.i ], [ %.0228.i.i.i, %.preheader.i.i.i ], [ %.0228.i.i.i, %bb.cz ], [ %.0228.i.i.i, %bb.db ], [ %.0228.i.i.i, %bb.de ], [ %i.ro, %bb.eq ], [ %i.ro, %bb.eo ], [ %.0228.i.i.i, %bb.ne ], [ %.0228.i.i.i, %bb.ng ], [ %.0228.i.i.i, %bb.nj ], [ %.0228.i.i.i, %.preheader467.i.i.i ], [ %.0228.i.i.i, %.lr.ph782.i.i.i ], [ %.0228.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0228.i.i.i, %.lr.ph784.i.i.i ], [ %.0228.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.1226.i.i.i = phi i32 [ %.0225.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0225.i.i.i, %stbi__getn.exit.i.i.i ], [ 1, %.thread.i.i.i.i ], [ %.0225.i.i.i, %.thread.i405.i.i.i ], [ %.0225.i.i.i, %.preheader463.i.i.i ], [ %.0225.i.i.i, %.preheader465.i.i.i ], [ %.0225.i.i.i, %.preheader.i.i.i ], [ 1, %bb.cz ], [ 1, %bb.db ], [ 1, %bb.de ], [ %.0225.i.i.i, %bb.eq ], [ %.0225.i.i.i, %bb.eo ], [ %.0225.i.i.i, %bb.ne ], [ %.0225.i.i.i, %bb.ng ], [ %.0225.i.i.i, %bb.nj ], [ %.0225.i.i.i, %.preheader467.i.i.i ], [ %.0225.i.i.i, %.lr.ph782.i.i.i ], [ %.0225.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0225.i.i.i, %.lr.ph784.i.i.i ], [ %.0225.i.i.i, %stbi__get8.exit363.i.i.i ]
  %i.bkn = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  %i.bko = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  br label %stbi__check_png_header.exit.i.i.i

stbi__parse_png_file.exit.thread.i.loopexit.i:    ; preds = %bb.gm
  store ptr %i.nu, ptr %i.gu, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi__parse_png_file.exit.thread.i.i:             ; preds = %stbi__parse_png_file.exit.thread.i.loopexit.i, %bb.nd, %bb.nb, %stbi__expand_png_palette.exit.thread.i.i.i, %stbi__create_png_image.exit.i.i.i, %.thread.i382.i.i.i, %stbi__malloc_mad3.exit.thread.i.i.i.i, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i, %bb.gv, %bb.gt, %stbi__getn.exit.thread.i.i.i, %.thread425.i.i.i, %bb.gl, %bb.gj, %bb.gh, %bb.ge, %bb.gc, %bb.fv, %bb.ft, %bb.fq, %bb.fo, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.em, %bb.ej, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ea, %bb.dt, %bb.dm, %bb.dk, %bb.di, %bb.dg, %stbi__check_png_header.exit.thread.i.i.i, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert798 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre799 = load ptr, ptr %.phi.trans.insert798, align 8
  br label %bb.nw

bb.nk:                                            ; preds = %bb.mz, %bb.my, %.thread441.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.bkp = load i32, ptr %i.mu, align 8           ; 2 uses
  %i.bkq = icmp slt i32 %i.bkp, 9                 ; 2 uses
  br i1 %i.bkq, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bkr = icmp eq i32 %i.bkp, 16
  br i1 %i.bkr, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.bks = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25) #13 ; 0 uses
  br label %stbi__png_load.exit

bb.nn:                                            ; preds = %bb.nl, %bb.nk
  %storemerge.i.i = phi i32 [ 8, %bb.nk ], [ 16, %bb.nl ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.bkt = load ptr, ptr %i.gv, align 8           ; 5 uses
  %.not57.i.i = icmp eq i32 %4, 0
  %.pre703.i.i = load ptr, ptr %10, align 8       ; 6 uses
  br i1 %.not57.i.i, label %._crit_edge.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bku = getelementptr inbounds nuw i8, ptr %.pre703.i.i, i64 12 ; 2 uses
  %i.bkv = load i32, ptr %i.bku, align 4          ; 3 uses
  %.not58.i.i = icmp eq i32 %4, %i.bkv
  br i1 %.not58.i.i, label %._crit_edge.i.i, label %bb.np

bb.np:                                            ; preds = %bb.no
  br i1 %i.gn, label %bb.nt, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.bkw = load i32, ptr %.pre703.i.i, align 8    ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %.pre703.i.i, i64 4
  %i.bky = load i32, ptr %i.bkx, align 4          ; 2 uses
  br i1 %i.bkq, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  %i.bkz = tail call fastcc ptr @stbi__convert_format(ptr noundef %i.bkt, i32 noundef %i.bkv, i32 noundef range(i32 0, 5) %4, i32 noundef %i.bkw, i32 noundef %i.bky)
  br label %bb.nt

bb.ns:                                            ; preds = %bb.nq
  %i.bla = tail call fastcc ptr @stbi__convert_format16(ptr noundef %i.bkt, i32 noundef %i.bkv, i32 noundef range(i32 0, 5) %4, i32 noundef %i.bkw, i32 noundef %i.bky)
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %bb.nr, %bb.np
  %.0.i.i = phi ptr [ %i.bkt, %bb.np ], [ %i.bkz, %bb.nr ], [ %i.bla, %bb.ns ] ; 2 uses
  store i32 %4, ptr %i.bku, align 4
  %i.blb = icmp eq ptr %.0.i.i, null
  br i1 %i.blb, label %stbi__png_load.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.nt, %bb.no, %bb.nn
  %.1.i.i = phi ptr [ %i.bkt, %bb.nn ], [ %i.bkt, %bb.no ], [ %.0.i.i, %bb.nt ] ; 2 uses
  %i.blc = load i32, ptr %.pre703.i.i, align 8
  store i32 %i.blc, ptr %1, align 4
  %i.bld = getelementptr inbounds nuw i8, ptr %.pre703.i.i, i64 4
  %i.ble = load i32, ptr %i.bld, align 4
  store i32 %i.ble, ptr %2, align 4
  br i1 %i.gn, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %._crit_edge.i.i
  store i32 1, ptr %3, align 4
  br label %bb.nw

bb.nv:                                            ; preds = %._crit_edge.i.i
  %i.blf = getelementptr inbounds nuw i8, ptr %.pre703.i.i, i64 8
  %i.blg = load i32, ptr %i.blf, align 8
  store i32 %i.blg, ptr %3, align 4
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu, %stbi__parse_png_file.exit.thread.i.i
  %i.blh = phi ptr [ null, %bb.nu ], [ null, %bb.nv ], [ %.pre799, %stbi__parse_png_file.exit.thread.i.i ]
  %i.bli = phi ptr [ null, %bb.nu ], [ null, %bb.nv ], [ %.pre, %stbi__parse_png_file.exit.thread.i.i ]
  %.2.i.i = phi ptr [ %.1.i.i, %bb.nu ], [ %.1.i.i, %bb.nv ], [ null, %stbi__parse_png_file.exit.thread.i.i ]
  tail call void @SDL_free_REAL(ptr noundef %i.bli) #13
  tail call void @SDL_free_REAL(ptr noundef %i.blh) #13
  %i.blj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.blk = load ptr, ptr %i.blj, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.blk) #13
  br label %stbi__png_load.exit

stbi__png_load.exit:                              ; preds = %bb.ax, %bb.nm, %bb.nt, %bb.nw
  %.052.i.i = phi ptr [ null, %bb.ax ], [ null, %bb.nm ], [ %.2.i.i, %bb.nw ], [ null, %bb.nt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.oa

bb.nx:                                            ; preds = %bb.c, %stbi__get8.exit.i.1.i, %bb.i, %stbi__get8.exit.i.2.i, %bb.o, %stbi__get8.exit.i.3.i, %bb.u, %stbi__get8.exit.i.4.i, %bb.aa, %stbi__get8.exit.i.5.i, %bb.ag, %stbi__get8.exit.i.6.i, %bb.am, %stbi__get8.exit.i.7.i, %bb.as, %stbi__get8.exit.i.i
  %i.bll = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.23) #13 ; 0 uses
  %i.blm = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.blm, ptr %i.i, align 8
  %i.bln = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 18568) #13 ; 11 uses
  %.not.i = icmp eq ptr %i.bln, null
  br i1 %.not.i, label %stbi__jpeg_test.exit.thread, label %bb.ny

stbi__jpeg_test.exit.thread:                      ; preds = %bb.nx
  %i.blo = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bln, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18536) %i.blp, i8 0, i64 18536, i1 false)
  store ptr %0, ptr %i.bln, align 8
  %i.blq = getelementptr inbounds nuw i8, ptr %i.bln, i64 18544
  store ptr @stbi__idct_block, ptr %i.blq, align 8
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bln, i64 18552
  store ptr @stbi__YCbCr_to_RGB_row, ptr %i.blr, align 8
  %i.bls = getelementptr inbounds nuw i8, ptr %i.bln, i64 18560
  store ptr @stbi__resample_row_hv_2, ptr %i.bls, align 8
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bln, i64 18508
  store i32 -1, ptr %i.blt, align 4
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bln, i64 18472
  store i8 -1, ptr %i.blu, align 8
  %i.blv = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %i.bln)
  %.not = icmp eq i8 %i.blv, -40
  br i1 %.not, label %.critedge, label %stbi__jpeg_test.exit

stbi__jpeg_test.exit:                             ; preds = %bb.ny
  %i.blw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  %i.blx = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.blx, ptr %i.i, align 8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.bln) #13
  br label %bb.nz

.critedge:                                        ; preds = %bb.ny
  %i.bly = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.bly, ptr %i.i, align 8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.bln) #13
  %i.blz = tail call fastcc ptr @stbi__jpeg_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null)
  br label %bb.oa

bb.nz:                                            ; preds = %stbi__jpeg_test.exit, %stbi__jpeg_test.exit.thread
  %i.bma = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22) #13 ; 0 uses
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %.critedge, %stbi__png_load.exit
  %.0 = phi ptr [ %.052.i.i, %stbi__png_load.exit ], [ %i.blz, %.critedge ], [ null, %bb.nz ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__convert_format(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %1
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %3, 0                        ; 13 uses
  br i1 %i.c, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.d
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp samesign ugt i32 %2, %i.d
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp samesign ugt i32 %i.e, %i.h
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.i = mul nsw i32 %i.e, %4
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.j) #13 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad3.exit.thread, label %.preheader201

.preheader201:                                    ; preds = %stbi__malloc_mad3.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph262, label %._crit_edge

.lr.ph262:                                        ; preds = %.preheader201
  %i.n = shl nsw i32 %1, 3
  %i.o = or disjoint i32 %i.n, %2                 ; 2 uses
  %.11169202 = add nsw i32 %3, -1                 ; 25 uses
  switch i32 %i.o, label %.critedge [
    i32 10, label %.lr.ph262.split
    i32 11, label %.lr.ph262.split
    i32 12, label %.lr.ph262.split
    i32 17, label %.lr.ph262.split
    i32 19, label %.lr.ph262.split
    i32 20, label %.lr.ph262.split
    i32 28, label %.lr.ph262.split
    i32 25, label %.lr.ph262.split
    i32 26, label %.lr.ph262.split
    i32 33, label %.lr.ph262.split
    i32 34, label %.lr.ph262.split
    i32 35, label %.lr.ph262.split
  ]

.lr.ph262.split:                                  ; preds = %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.p = add nsw i32 %3, -2                       ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.p, i32 -1) ; 2 uses
  %i.q = sub i32 %i.p, %smin                      ; 14 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1                  ; 22 uses
  %i.t = xor i32 %smin, -1
  %i.u = add nuw i32 %3, %i.t                     ; 6 uses
  %min.iters.check509 = icmp ult i32 %i.q, 7
  %n.vec511 = and i64 %i.s, 8589934584            ; 5 uses
  %i.v = trunc i64 %n.vec511 to i32
  %i.w = sub i32 %.11169202, %i.v
  %i.x = shl nuw nsw i64 %n.vec511, 1
  %i.y = shl nuw nsw i64 %n.vec511, 2
  %cmp.n526 = icmp eq i64 %i.s, %n.vec511
  %min.iters.check456 = icmp ult i32 %i.q, 8
  %min.iters.check458 = icmp ult i32 %i.q, 16
  %i.z = and i64 %i.s, 15                         ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 16, i64 %i.z       ; 2 uses
  %n.vec460 = sub nsw i64 %i.s, %i.ab             ; 5 uses
  %i.ac = trunc i64 %n.vec460 to i32
  %i.ad = sub i32 %.11169202, %i.ac
  %i.ae = shl nsw i64 %n.vec460, 2
  %min.epilog.iters.check489 = icmp samesign ult i64 %i.ab, 9
  %i.af = and i64 %i.s, 7                         ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 8, i64 %i.af
  %n.vec491 = sub nsw i64 %i.s, %i.ah             ; 4 uses
  %i.ai = trunc i64 %n.vec491 to i32
  %i.aj = sub i32 %.11169202, %i.ai
  %i.ak = shl nsw i64 %n.vec491, 2
  %min.iters.check435 = icmp ult i32 %i.q, 7
  %n.vec437 = and i64 %i.s, 8589934584            ; 5 uses
  %i.al = trunc i64 %n.vec437 to i32
  %i.am = sub i32 %.11169202, %i.al
  %i.an = shl nuw nsw i64 %n.vec437, 1
  %i.ao = mul nuw nsw i64 %n.vec437, 3
  %cmp.n452 = icmp eq i64 %i.s, %n.vec437
  %min.iters.check382 = icmp ult i32 %i.q, 7
  %min.iters.check384 = icmp ult i32 %i.q, 15
  %i.ap = and i64 %i.s, 8
  %n.vec386 = and i64 %i.s, 8589934576            ; 6 uses
  %i.aq = trunc i64 %n.vec386 to i32
  %i.ar = sub i32 %.11169202, %i.aq
  %i.as = mul nuw nsw i64 %n.vec386, 3
  %cmp.n408 = icmp eq i64 %i.s, %n.vec386
  %min.epilog.iters.check415.not.not = icmp eq i64 %i.ap, 0
  %n.vec417 = and i64 %i.s, 8589934584            ; 5 uses
  %i.at = trunc i64 %n.vec417 to i32
  %i.au = sub i32 %.11169202, %i.at
  %i.av = mul nuw nsw i64 %n.vec417, 3
  %cmp.n431 = icmp eq i64 %i.s, %n.vec417
  %xtraiter = and i32 %i.u, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6164.prol = add nsw i32 %3, -2
  %i.aw = icmp slt i32 %3, 2
  %xtraiter543 = and i32 %i.u, 1
  %lcmp.mod544.not = icmp eq i32 %xtraiter543, 0
  %.5163.prol = add nsw i32 %3, -2
  %i.ax = icmp slt i32 %3, 2
  %xtraiter545 = and i32 %i.u, 3                  ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.ay = icmp ult i32 %i.q, 3
  %min.iters.check331 = icmp ult i32 %i.q, 8
  %min.iters.check333 = icmp ult i32 %i.q, 16
  %i.az = and i64 %i.s, 15                        ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 16, i64 %i.az      ; 2 uses
  %n.vec335 = sub nsw i64 %i.s, %i.bb             ; 5 uses
  %i.bc = trunc i64 %n.vec335 to i32
  %i.bd = sub i32 %.11169202, %i.bc
  %i.be = shl nsw i64 %n.vec335, 1
  %min.epilog.iters.check363 = icmp samesign ult i64 %i.bb, 9
  %i.bf = and i64 %i.s, 7                         ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i64 8, i64 %i.bf
  %n.vec365 = sub nsw i64 %i.s, %i.bh             ; 4 uses
  %i.bi = trunc i64 %n.vec365 to i32
  %i.bj = sub i32 %.11169202, %i.bi
  %i.bk = shl nsw i64 %n.vec365, 1
  %xtraiter547 = and i32 %i.u, 3                  ; 2 uses
  %lcmp.mod548.not = icmp eq i32 %xtraiter547, 0
  %i.bl = icmp ult i32 %i.q, 3
  %xtraiter550 = and i32 %i.u, 3                  ; 2 uses
  %lcmp.mod551.not = icmp eq i32 %xtraiter550, 0
  %i.bm = icmp ult i32 %i.q, 3
  %min.iters.check = icmp ult i32 %i.q, 3
  %min.iters.check313 = icmp ult i32 %i.q, 15
  %i.bn = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 8589934576               ; 6 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = sub i32 %.11169202, %i.bo
  %i.bq = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.s, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  %n.vec320 = and i64 %i.s, 8589934588            ; 5 uses
  %i.br = trunc i64 %n.vec320 to i32
  %i.bs = sub i32 %.11169202, %i.br
  %i.bt = shl nuw nsw i64 %n.vec320, 1
  %cmp.n327 = icmp eq i64 %i.s, %n.vec320
  %xtraiter553 = and i32 %i.u, 1
  %lcmp.mod554.not = icmp eq i32 %xtraiter553, 0
  %.11169.prol = add nsw i32 %3, -2
  %i.bu = icmp slt i32 %3, 2
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__malloc_mad3.exit
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  %i.bv = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph262.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph262.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  %i.bx = mul i32 %3, %i.bw                       ; 2 uses
  %i.by = mul i32 %i.bx, %1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz ; 126 uses
  %i.cb = mul i32 %i.bx, %2
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cc ; 50 uses
  switch i32 %i.o, label %.preheader199 [
    i32 10, label %.preheader
    i32 11, label %.preheader179
    i32 12, label %.preheader181
    i32 17, label %.preheader183
    i32 19, label %.preheader185
    i32 20, label %.preheader187
    i32 28, label %.preheader189
    i32 25, label %.preheader191
    i32 26, label %.preheader193
    i32 33, label %.preheader195
    i32 34, label %.preheader197
  ]

.preheader199:                                    ; preds = %bb.f
  br i1 %i.c, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader199
  br i1 %lcmp.mod554.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ce = load i8, ptr %i.ca, align 1
  store i8 %i.ce, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11169205.unr = phi i32 [ %.11169202, %.lr.ph.preheader ], [ %.11169.prol, %.lr.ph.prol ]
  %.11204.unr = phi ptr [ %i.cd, %.lr.ph.preheader ], [ %i.cm, %.lr.ph.prol ]
  %.11155203.unr = phi ptr [ %i.ca, %.lr.ph.preheader ], [ %i.cl, %.lr.ph.prol ]
  br i1 %i.bu, label %.loopexit, label %.lr.ph

.preheader197:                                    ; preds = %bb.f
  br i1 %i.c, label %.loopexit, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %.preheader197
  br i1 %min.iters.check509, label %.lr.ph210.preheader541, label %vector.ph510

vector.ph510:                                     ; preds = %.lr.ph210.preheader
  %i.cn = getelementptr i8, ptr %i.cd, i64 %i.x
end_hunk_6
begin_hunk_7_@stbi__convert_format:bb.a
  %i.alq = getelementptr inbounds nuw i8, ptr %.6150227, i64 6
  %i.alr = getelementptr inbounds nuw i8, ptr %.6228, i64 8
  %.6164.1 = add i32 %.6164229, -2                ; 2 uses
  %i.als = icmp sgt i32 %.6164.1, -1
  br i1 %i.als, label %.lr.ph230, label %.loopexit, !llvm.loop !199

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %.lr.ph225
  %.7165224 = phi i32 [ %.7165, %.lr.ph225 ], [ %.7165224.ph, %.lr.ph225.preheader ]
  %.7223 = phi ptr [ %i.amj, %.lr.ph225 ], [ %.7223.ph, %.lr.ph225.preheader ] ; 2 uses
  %.7151222 = phi ptr [ %i.ami, %.lr.ph225 ], [ %.7151222.ph, %.lr.ph225.preheader ] ; 4 uses
  %i.alt = load i8, ptr %.7151222, align 1
  %i.alu = zext i8 %i.alt to i16
  %i.alv = getelementptr inbounds nuw i8, ptr %.7151222, i64 1
  %i.alw = load i8, ptr %i.alv, align 1
  %i.alx = zext i8 %i.alw to i16
  %i.aly = getelementptr inbounds nuw i8, ptr %.7151222, i64 2
  %i.alz = load i8, ptr %i.aly, align 1
  %i.ama = zext i8 %i.alz to i16
  %i.amb = mul nuw nsw i16 %i.alu, 77
  %i.amc = mul nuw i16 %i.alx, 150
  %i.amd = add nuw i16 %i.amc, %i.amb
  %i.ame = mul nuw nsw i16 %i.ama, 29
  %i.amf = add nuw i16 %i.amd, %i.ame
  %i.amg = lshr i16 %i.amf, 8
  %i.amh = trunc nuw i16 %i.amg to i8
  store i8 %i.amh, ptr %.7223, align 1
  %i.ami = getelementptr inbounds nuw i8, ptr %.7151222, i64 3
  %i.amj = getelementptr inbounds nuw i8, ptr %.7223, i64 1
  %.7165 = add i32 %.7165224, -1                  ; 2 uses
  %i.amk = icmp sgt i32 %.7165, -1
  br i1 %i.amk, label %.lr.ph225, label %.loopexit, !llvm.loop !200

.lr.ph220:                                        ; preds = %.lr.ph220.preheader538, %.lr.ph220
  %.8166219 = phi i32 [ %.8166, %.lr.ph220 ], [ %.8166219.ph, %.lr.ph220.preheader538 ]
  %.8218 = phi ptr [ %i.anc, %.lr.ph220 ], [ %.8218.ph, %.lr.ph220.preheader538 ] ; 3 uses
  %.8152217 = phi ptr [ %i.anb, %.lr.ph220 ], [ %.8152217.ph, %.lr.ph220.preheader538 ] ; 4 uses
  %i.aml = load i8, ptr %.8152217, align 1
  %i.amm = zext i8 %i.aml to i16
  %i.amn = getelementptr inbounds nuw i8, ptr %.8152217, i64 1
  %i.amo = load i8, ptr %i.amn, align 1
  %i.amp = zext i8 %i.amo to i16
  %i.amq = getelementptr inbounds nuw i8, ptr %.8152217, i64 2
  %i.amr = load i8, ptr %i.amq, align 1
  %i.ams = zext i8 %i.amr to i16
  %i.amt = mul nuw nsw i16 %i.amm, 77
  %i.amu = mul nuw i16 %i.amp, 150
  %i.amv = add nuw i16 %i.amu, %i.amt
  %i.amw = mul nuw nsw i16 %i.ams, 29
  %i.amx = add nuw i16 %i.amv, %i.amw
  %i.amy = lshr i16 %i.amx, 8
  %i.amz = trunc nuw i16 %i.amy to i8
  store i8 %i.amz, ptr %.8218, align 1
  %i.ana = getelementptr inbounds nuw i8, ptr %.8218, i64 1
  store i8 -1, ptr %i.ana, align 1
  %i.anb = getelementptr inbounds nuw i8, ptr %.8152217, i64 3
  %i.anc = getelementptr inbounds nuw i8, ptr %.8218, i64 2
  %.8166 = add i32 %.8166219, -1                  ; 2 uses
  %i.and = icmp sgt i32 %.8166, -1
  br i1 %i.and, label %.lr.ph220, label %.loopexit, !llvm.loop !201

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %.9167214 = phi i32 [ %.9167, %.lr.ph215 ], [ %.9167214.ph, %.lr.ph215.preheader ]
  %.9213 = phi ptr [ %i.anu, %.lr.ph215 ], [ %.9213.ph, %.lr.ph215.preheader ] ; 2 uses
  %.9153212 = phi ptr [ %i.ant, %.lr.ph215 ], [ %.9153212.ph, %.lr.ph215.preheader ] ; 4 uses
  %i.ane = load i8, ptr %.9153212, align 1
  %i.anf = zext i8 %i.ane to i16
  %i.ang = getelementptr inbounds nuw i8, ptr %.9153212, i64 1
  %i.anh = load i8, ptr %i.ang, align 1
  %i.ani = zext i8 %i.anh to i16
  %i.anj = getelementptr inbounds nuw i8, ptr %.9153212, i64 2
  %i.ank = load i8, ptr %i.anj, align 1
  %i.anl = zext i8 %i.ank to i16
  %i.anm = mul nuw nsw i16 %i.anf, 77
  %i.ann = mul nuw i16 %i.ani, 150
  %i.ano = add nuw i16 %i.ann, %i.anm
  %i.anp = mul nuw nsw i16 %i.anl, 29
  %i.anq = add nuw i16 %i.ano, %i.anp
  %i.anr = lshr i16 %i.anq, 8
  %i.ans = trunc nuw i16 %i.anr to i8
  store i8 %i.ans, ptr %.9213, align 1
  %i.ant = getelementptr inbounds nuw i8, ptr %.9153212, i64 4
  %i.anu = getelementptr inbounds nuw i8, ptr %.9213, i64 1
  %.9167 = add i32 %.9167214, -1                  ; 2 uses
  %i.anv = icmp sgt i32 %.9167, -1
  br i1 %i.anv, label %.lr.ph215, label %.loopexit, !llvm.loop !202

.lr.ph210:                                        ; preds = %.lr.ph210.preheader541, %.lr.ph210
  %.10168209 = phi i32 [ %.10168, %.lr.ph210 ], [ %.10168209.ph, %.lr.ph210.preheader541 ]
  %.10208 = phi ptr [ %i.aop, %.lr.ph210 ], [ %.10208.ph, %.lr.ph210.preheader541 ] ; 3 uses
  %.10154207 = phi ptr [ %i.aoo, %.lr.ph210 ], [ %.10154207.ph, %.lr.ph210.preheader541 ] ; 5 uses
  %i.anw = load i8, ptr %.10154207, align 1
  %i.anx = zext i8 %i.anw to i16
  %i.any = getelementptr inbounds nuw i8, ptr %.10154207, i64 1
  %i.anz = load i8, ptr %i.any, align 1
  %i.aoa = zext i8 %i.anz to i16
  %i.aob = getelementptr inbounds nuw i8, ptr %.10154207, i64 2
  %i.aoc = load i8, ptr %i.aob, align 1
  %i.aod = zext i8 %i.aoc to i16
  %i.aoe = mul nuw nsw i16 %i.anx, 77
  %i.aof = mul nuw i16 %i.aoa, 150
  %i.aog = add nuw i16 %i.aof, %i.aoe
  %i.aoh = mul nuw nsw i16 %i.aod, 29
  %i.aoi = add nuw i16 %i.aog, %i.aoh
  %i.aoj = lshr i16 %i.aoi, 8
  %i.aok = trunc nuw i16 %i.aoj to i8
  store i8 %i.aok, ptr %.10208, align 1
  %i.aol = getelementptr inbounds nuw i8, ptr %.10154207, i64 3
  %i.aom = load i8, ptr %i.aol, align 1
  %i.aon = getelementptr inbounds nuw i8, ptr %.10208, i64 1
  store i8 %i.aom, ptr %i.aon, align 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %.10154207, i64 4
  %i.aop = getelementptr inbounds nuw i8, ptr %.10208, i64 2
  %.10168 = add i32 %.10168209, -1                ; 2 uses
  %i.aoq = icmp sgt i32 %.10168, -1
  br i1 %i.aoq, label %.lr.ph210, label %.loopexit, !llvm.loop !203

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.11169205 = phi i32 [ %.11169.1, %.lr.ph ], [ %.11169205.unr, %.lr.ph.prol.loopexit ]
  %.11204 = phi ptr [ %i.api, %.lr.ph ], [ %.11204.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %.11155203 = phi ptr [ %i.aph, %.lr.ph ], [ %.11155203.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.aor = load i8, ptr %.11155203, align 1
  store i8 %i.aor, ptr %.11204, align 1
  %i.aos = getelementptr inbounds nuw i8, ptr %.11155203, i64 1
  %i.aot = load i8, ptr %i.aos, align 1
  %i.aou = getelementptr inbounds nuw i8, ptr %.11204, i64 1
  store i8 %i.aot, ptr %i.aou, align 1
  %i.aov = getelementptr inbounds nuw i8, ptr %.11155203, i64 2
  %i.aow = load i8, ptr %i.aov, align 1
  %i.aox = getelementptr inbounds nuw i8, ptr %.11204, i64 2
  store i8 %i.aow, ptr %i.aox, align 1
  %i.aoy = getelementptr inbounds nuw i8, ptr %.11155203, i64 4
  %i.aoz = getelementptr inbounds nuw i8, ptr %.11204, i64 3
  %i.apa = load i8, ptr %i.aoy, align 1
  store i8 %i.apa, ptr %i.aoz, align 1
  %i.apb = getelementptr inbounds nuw i8, ptr %.11155203, i64 5
  %i.apc = load i8, ptr %i.apb, align 1
  %i.apd = getelementptr inbounds nuw i8, ptr %.11204, i64 4
  store i8 %i.apc, ptr %i.apd, align 1
  %i.ape = getelementptr inbounds nuw i8, ptr %.11155203, i64 6
  %i.apf = load i8, ptr %i.ape, align 1
  %i.apg = getelementptr inbounds nuw i8, ptr %.11204, i64 5
  store i8 %i.apf, ptr %i.apg, align 1
  %i.aph = getelementptr inbounds nuw i8, ptr %.11155203, i64 8
  %i.api = getelementptr inbounds nuw i8, ptr %.11204, i64 6
  %.11169.1 = add i32 %.11169205, -2              ; 2 uses
  %i.apj = icmp sgt i32 %.11169.1, -1
  br i1 %i.apj, label %.lr.ph, label %.loopexit, !llvm.loop !204

.critedge:                                        ; preds = %.lr.ph262
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #13
  %i.apk = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.32) #13 ; 0 uses
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph210, %.lr.ph215, %.lr.ph220, %.lr.ph225, %.lr.ph230.prol.loopexit, %.lr.ph230, %.lr.ph235.prol.loopexit, %.lr.ph235, %.lr.ph240.prol.loopexit, %.lr.ph240, %.lr.ph245, %.lr.ph250.prol.loopexit, %.lr.ph250, %.lr.ph255.prol.loopexit, %.lr.ph255, %.lr.ph260, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block525, %middle.block451, %middle.block407, %vec.epilog.middle.block430, %middle.block, %vec.epilog.middle.block, %.preheader199, %.preheader197, %.preheader195, %.preheader193, %.preheader191, %.preheader189, %.preheader187, %.preheader185, %.preheader183, %.preheader181, %.preheader179, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !205

._crit_edge:                                      ; preds = %.loopexit, %.preheader201
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.b, %bb.a, %._crit_edge, %stbi__malloc_mad3.exit.thread
  %.2172 = phi ptr [ %i.k, %._crit_edge ], [ null, %bb.a ], [ null, %stbi__malloc_mad3.exit.thread ], [ null, %.critedge ], [ %0, %bb.b ]
  ret ptr %.2172
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__convert_format16(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %3, 0                        ; 13 uses
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread24.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %3
  %.not34.i.i = icmp samesign ugt i32 %2, %i.c
  br i1 %.not34.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread24.i.i

stbi__mul2sizes_valid.exit.thread24.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %3, %2                   ; 4 uses
  %i.e = or i32 %4, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i
  %i.f = icmp eq i32 %4, 0
  br i1 %i.f, label %stbi__malloc_mad4.exit, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %4
  %.not.i.i = icmp samesign ule i32 %i.d, %i.g
  %i.h = mul nsw i32 %i.d, %4
  %or.cond.not.i = icmp ult i32 %i.h, 1073741824
  %or.cond.i = select i1 %.not.i.i, i1 %or.cond.not.i, i1 false
  br i1 %or.cond.i, label %stbi__malloc_mad4.exit, label %stbi__malloc_mad4.exit.thread

stbi__malloc_mad4.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit18.i.i
  %i.i = shl nuw i32 %i.d, 1
  %i.j = mul i32 %i.i, %4
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.k) #13 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %stbi__malloc_mad4.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad4.exit
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.o = shl nsw i32 %1, 3
  %i.p = or disjoint i32 %i.o, %2                 ; 2 uses
  %.11167198 = add nsw i32 %3, -1                 ; 14 uses
  switch i32 %i.p, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.q = add nsw i32 %3, -2                       ; 2 uses
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.q, i32 -1)
  %i.s = sub i32 %i.q, %i.r                       ; 2 uses
  %min.iters.check315 = icmp ult i32 %i.s, 8
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = and i64 %i.u, 7                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 8, i64 %i.v
  %n.vec317 = sub nsw i64 %i.u, %i.x              ; 4 uses
  %i.y = trunc i64 %n.vec317 to i32
  %i.z = sub i32 %.11167198, %i.y
  %i.aa = shl nsw i64 %n.vec317, 1
  %i.ab = shl nsw i64 %n.vec317, 2
  %i.ac = add nsw i32 %3, -2                      ; 2 uses
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 -1)
  %i.ae = sub i32 %i.ac, %i.ad                    ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 7
  %n.vec = and i64 %i.ag, 8589934584              ; 5 uses
  %i.ah = trunc i64 %n.vec to i32
  %i.ai = sub i32 %.11167198, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %bb.b, %stbi__malloc_mad4.exit
  tail call void @SDL_free_REAL(ptr noundef %0) #13
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = mul i32 %3, %i.am                       ; 2 uses
  %i.ao = mul i32 %i.an, %1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap ; 17 uses
  %i.ar = mul i32 %i.an, %2
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.as ; 17 uses
  switch i32 %i.p, label %.preheader195 [
    i32 10, label %.preheader
    i32 11, label %.preheader175
    i32 12, label %.preheader177
    i32 17, label %.preheader179
    i32 19, label %.preheader181
    i32 20, label %.preheader183
    i32 28, label %.preheader185
    i32 25, label %.preheader187
    i32 26, label %.preheader189
    i32 33, label %.preheader191
    i32 34, label %.preheader193
  ]

.preheader195:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph206

.preheader191:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph211

.preheader189:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph216

.preheader187:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph221

.preheader185:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph226

.preheader183:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph231

.preheader181:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph236

.preheader179:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %.preheader179
  br i1 %min.iters.check315, label %.lr.ph241.preheader334, label %vector.ph316

.lr.ph241.preheader334:                           ; preds = %vector.body318, %.lr.ph241.preheader
  %.3159240.ph = phi i32 [ %.11167198, %.lr.ph241.preheader ], [ %i.z, %vector.body318 ]
  %.3239.ph = phi ptr [ %i.at, %.lr.ph241.preheader ], [ %i.au, %vector.body318 ]
  %.3145238.ph = phi ptr [ %i.aq, %.lr.ph241.preheader ], [ %i.av, %vector.body318 ]
  br label %.lr.ph241

vector.ph316:                                     ; preds = %.lr.ph241.preheader
  %i.au = getelementptr i8, ptr %i.at, i64 %i.aa
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.ab
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next325, %vector.body318 ] ; 3 uses
  %i.aw = shl i64 %index319, 1
  %next.gep320 = getelementptr i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %index319, 2                    ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.ax
  %next.gep322 = getelementptr i8, ptr %i.ay, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep321, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec323 = load <8 x i16>, ptr %next.gep322, align 2
  %strided.vec324 = shufflevector <8 x i16> %wide.vec323, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.az = getelementptr i8, ptr %next.gep320, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep320, align 2
  store <4 x i16> %strided.vec324, ptr %i.az, align 2
  %index.next325 = add nuw i64 %index319, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next325, %n.vec317
  br i1 %i.ba, label %.lr.ph241.preheader334, label %vector.body318, !llvm.loop !206

.preheader177:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph246

.preheader175:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph251

.preheader:                                       ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph256.preheader330, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph256.preheader
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.aj
  %i.bc = getelementptr i8, ptr %i.aq, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bd
  %i.be = getelementptr i8, ptr %i.at, i64 %i.bd
  %next.gep308 = getelementptr i8, ptr %i.be, i64 16
  %i.bf = shl i64 %index, 1
  %next.gep309 = getelementptr i8, ptr %i.aq, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep309, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep309, align 2
  %wide.load310 = load <4 x i16>, ptr %i.bg, align 2
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  %interleaved.vec311 = shufflevector <4 x i16> %wide.load310, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec311, ptr %next.gep308, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph256.preheader330

.lr.ph256.preheader330:                           ; preds = %.lr.ph256.preheader, %middle.block
  %.0156255.ph = phi i32 [ %.11167198, %.lr.ph256.preheader ], [ %i.ai, %middle.block ]
  %.0254.ph = phi ptr [ %i.at, %.lr.ph256.preheader ], [ %i.bb, %middle.block ]
  %.0142253.ph = phi ptr [ %i.aq, %.lr.ph256.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader330, %.lr.ph256
end_hunk_7
begin_hunk_8_@stbi__zbuild_huffman:bb.a
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !224

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !225

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %i.df = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbi__zhuffman_decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %stbi__fill_bits.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val20 = load ptr, ptr %i.d, align 8           ; 3 uses
  %.not22 = icmp ult ptr %.val, %.val20
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %stbi__zhuffman_decode_slowpath.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.e, align 4
  %i.g = add nsw i32 %i.b, 16                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  br label %stbi__fill_bits.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %stbi__zget8.exit.i, %bb.e
  %.val.i.i = phi ptr [ %.val.i.i23, %stbi__zget8.exit.i ], [ %.val, %bb.e ] ; 4 uses
  %i.i = phi i32 [ %i.q, %stbi__zget8.exit.i ], [ %i.b, %bb.e ] ; 5 uses
  %i.j = phi i32 [ %i.p, %stbi__zget8.exit.i ], [ %.promoted.i, %bb.e ] ; 2 uses
  %.highbits.i = lshr i32 %i.j, %i.i
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.val20, ptr %0, align 8
  br label %stbi__fill_bits.exit

bb.h:                                             ; preds = %bb.f
  %.not3.i.i = icmp ult ptr %.val.i.i, %.val20
  br i1 %.not3.i.i, label %bb.i, label %stbi__zget8.exit.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i, align 1
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i

stbi__zget8.exit.i:                               ; preds = %bb.i, %bb.h
  %.val.i.i23 = phi ptr [ %i.k, %bb.i ], [ %.val.i.i, %bb.h ]
  %i.n = phi i32 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = shl i32 %i.n, %i.i
  %i.p = or i32 %i.o, %i.j                        ; 2 uses
  store i32 %i.p, ptr %i.h, align 8
  %i.q = add nsw i32 %i.i, 8                      ; 3 uses
  store i32 %i.q, ptr %i.a, align 8
  %i.r = icmp slt i32 %i.i, 17
  br i1 %i.r, label %bb.f, label %stbi__fill_bits.exit, !llvm.loop !154

stbi__fill_bits.exit:                             ; preds = %stbi__zget8.exit.i, %bb.g, %bb.d, %bb.a
  %i.s = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.g ], [ %i.g, %bb.d ], [ %i.q, %stbi__zget8.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = and i32 %i.u, 511
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not19 = icmp eq i16 %i.y, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %stbi__fill_bits.exit
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = lshr i32 %i.z, 9                        ; 2 uses
  %i.ab = lshr i32 %i.u, %i.aa
  store i32 %i.ab, ptr %i.t, align 8
  %i.ac = sub nsw i32 %i.s, %i.aa
  store i32 %i.ac, ptr %i.a, align 8
  %i.ad = and i32 %i.z, 511
  br label %stbi__zhuffman_decode_slowpath.exit

bb.k:                                             ; preds = %stbi__fill_bits.exit
  %trunc.i.i.i = trunc i32 %i.u to i16
  %rev.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i)
  %i.ae = zext i16 %rev.i.i.i to i32              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 7 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp sgt i32 %i.ah, %i.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ai, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 15
  br i1 %i.ak, label %stbi__zhuffman_decode_slowpath.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nuw nsw i32 16, %i.aj
  %i.am = lshr i32 %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1124
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.ar, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 287
  br i1 %i.ax, label %stbi__zhuffman_decode_slowpath.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  %.not.i21 = icmp eq i64 %indvars.iv.i, %i.bc
  br i1 %.not.i21, label %bb.p, label %stbi__zhuffman_decode_slowpath.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = lshr i32 %i.u, %i.aj
  store i32 %i.bd, ptr %i.t, align 8
  %i.be = sub nsw i32 %i.s, %i.aj
  store i32 %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.az
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  br label %stbi__zhuffman_decode_slowpath.exit

stbi__zhuffman_decode_slowpath.exit:              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.c, %bb.j
  %.0 = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.j ], [ %i.bi, %bb.p ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #13 ; 6 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %8 = zext nneg i32 %i.ah to i64
  %i.av = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aw = sext i32 %spec.select to i64            ; 40 uses
  %i.ax = icmp slt i32 %spec.select, %i.av        ; 4 uses
  %i.ay = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.az = icmp sgt i32 %i.av, 0
  %i.ba = sext i32 %i.av to i64                   ; 13 uses
  %i.bb = icmp eq i32 %6, 8
  %i.bc = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bd = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.be = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 20 uses
  %i.bg = zext i32 %i.z to i64
  %i.bh = icmp eq i32 %7, 0
  %i.bi = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bi
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.av to i64     ; 8 uses
  %i.bk = shl nuw nsw i64 %i.bf, 1
  %i.bl = getelementptr i8, ptr %i.as, i64 %i.bf
  %scevgep505 = getelementptr i8, ptr %i.bl, i64 1
  %i.bm = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bn = add i32 %i.z, -1                        ; 3 uses
  %i.bo = add nuw nsw i64 %i.bf, 1
  %min.iters.check703 = icmp ult i64 %i.bm, 8
  %i.bp = add nsw i64 %i.aw, -1
  %diff.check701 = icmp ult i64 %i.bp, 31
  %or.cond737 = select i1 %min.iters.check703, i1 true, i1 %diff.check701
  %min.iters.check705 = icmp ult i64 %i.bm, 32
  %i.bq = and i64 %i.bm, 24
  %n.vec707 = and i64 %i.bm, -32                  ; 4 uses
  %i.br = add nsw i64 %n.vec707, %i.aw
  %cmp.n716 = icmp eq i64 %i.bm, %n.vec707
  %min.epilog.iters.check722 = icmp eq i64 %i.bq, 0
  %n.vec724 = and i64 %i.bm, -8                   ; 3 uses
  %i.bs = add nsw i64 %n.vec724, %i.aw
  %cmp.n731 = icmp eq i64 %i.bm, %n.vec724
  %i.bt = add nsw i64 %i.ba, -1
  %min.iters.check671 = icmp ult i32 %spec.select, 4
  %min.iters.check673 = icmp ult i32 %spec.select, 32
  %i.bu = and i64 %wide.trip.count424, 28
  %n.vec675 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n684 = icmp eq i64 %n.vec675, %wide.trip.count424
  %min.epilog.iters.check689 = icmp eq i64 %i.bu, 0
  %n.vec691 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n698 = icmp eq i64 %n.vec691, %wide.trip.count424
  %xtraiter751 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %min.iters.check636 = icmp ult i64 %i.bm, 4
  %i.bv = add nsw i64 %i.aw, -1
  %diff.check630 = icmp ult i64 %i.bv, 15
  %min.iters.check638 = icmp ult i64 %i.bm, 16
  %i.bw = and i64 %i.bm, 12
  %n.vec640 = and i64 %i.bm, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec640, %i.aw
  %cmp.n649 = icmp eq i64 %i.bm, %n.vec640
  %min.epilog.iters.check655 = icmp eq i64 %i.bw, 0
  %n.vec657 = and i64 %i.bm, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec657, %i.aw
  %cmp.n666 = icmp eq i64 %i.bm, %n.vec657
  %min.iters.check600 = icmp ult i32 %spec.select, 4
  %min.iters.check602 = icmp ult i32 %spec.select, 32
  %i.bz = and i64 %wide.trip.count424, 28
  %n.vec604 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n613 = icmp eq i64 %n.vec604, %wide.trip.count424
  %min.epilog.iters.check618 = icmp eq i64 %i.bz, 0
  %n.vec620 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec620, %wide.trip.count424
  %xtraiter753 = and i64 %wide.trip.count424, 1
  %lcmp.mod754.not = icmp eq i64 %xtraiter753, 0
  %i.ca = add nsw i64 %wide.trip.count424, -1
  %min.iters.check567 = icmp ult i64 %i.bm, 4
  %i.cb = add nsw i64 %i.aw, -1
  %diff.check565 = icmp ult i64 %i.cb, 15
  %min.iters.check569 = icmp ult i64 %i.bm, 16
  %i.cc = and i64 %i.bm, 12
  %n.vec571 = and i64 %i.bm, -16                  ; 4 uses
  %i.cd = add nsw i64 %n.vec571, %i.aw
  %cmp.n579 = icmp eq i64 %i.bm, %n.vec571
  %min.epilog.iters.check585 = icmp eq i64 %i.cc, 0
  %n.vec587 = and i64 %i.bm, -4                   ; 3 uses
  %i.ce = add nsw i64 %n.vec587, %i.aw
  %cmp.n595 = icmp eq i64 %i.bm, %n.vec587
  %i.cf = add nsw i64 %i.ba, -1
  %min.iters.check534 = icmp ult i32 %i.av, 4
  %min.iters.check536 = icmp ult i32 %i.av, 32
  %i.cg = and i64 %wide.trip.count444, 28
  %n.vec538 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n547 = icmp eq i64 %n.vec538, %wide.trip.count444
  %min.epilog.iters.check552 = icmp eq i64 %i.cg, 0
  %n.vec554 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec554, %wide.trip.count444
  %xtraiter759 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod760.not = icmp eq i64 %xtraiter759, 0
  %min.iters.check510 = icmp ult i64 %i.bm, 8
  %i.ch = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.ch, 31
  %or.cond736 = select i1 %min.iters.check510, i1 true, i1 %diff.check
  %min.iters.check511 = icmp ult i64 %i.bm, 32
  %i.ci = and i64 %i.bm, 24
  %n.vec513 = and i64 %i.bm, -32                  ; 4 uses
  %i.cj = add nsw i64 %n.vec513, %i.aw
  %cmp.n522 = icmp eq i64 %i.bm, %n.vec513
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  %n.vec524 = and i64 %i.bm, -8                   ; 3 uses
  %i.ck = add nsw i64 %n.vec524, %i.aw
  %cmp.n529 = icmp eq i64 %i.bm, %n.vec524
  %i.cl = add nsw i64 %i.ba, -1
  %xtraiter765 = and i32 %4, 1
  %i.cm = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod766.not = icmp eq i32 %xtraiter765, 0
  %lcmp.mod767 = trunc i32 %4 to i1
  %xtraiter768 = and i32 %i.z, 3                  ; 3 uses
  %i.cn = icmp ult i32 %i.z, 4
  %unroll_iter771 = and i32 %i.z, -4
  %lcmp.mod769.not = icmp eq i32 %xtraiter768, 0
  %lcmp.mod770 = icmp ne i32 %xtraiter768, 0
  %i.co = and i64 %i.bf, 1
  %lcmp.mod774.not.not = icmp eq i64 %i.co, 0
  %i.cp = shl nuw nsw i64 %i.bf, 2
  %i.cq = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cr = icmp eq i32 %.030.i305, 0
  %i.cs = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cs, 4294967288              ; 3 uses
  %i.ct = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  %xtraiter779 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bn, 0
  %unroll_iter783 = and i32 %i.z, -2
  %lcmp.mod781.not = icmp eq i32 %xtraiter779, 0
  %lcmp.mod782 = trunc i32 %i.z to i1
  %xtraiter785 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bn, 0
  %unroll_iter789 = and i32 %i.z, -2
  %lcmp.mod787.not = icmp eq i32 %xtraiter785, 0
  %lcmp.mod788 = trunc i32 %i.z to i1
  %xtraiter791 = and i32 %i.z, 1
  %i.cw = icmp eq i32 %i.bn, 0
  %unroll_iter795 = and i32 %i.z, -2
  %lcmp.mod793.not = icmp eq i32 %xtraiter791, 0
  %lcmp.mod794 = trunc i32 %i.z to i1
  %i.cx = and i64 %i.bf, 1
  %lcmp.mod798.not.not = icmp eq i64 %i.cx, 0
  %i.cy = shl nuw nsw i64 %i.bf, 2
  %i.cz = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.da = icmp eq i32 %.030.i305, 0
  %xtraiter800 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod801.not = icmp eq i64 %xtraiter800, 0
  %i.db = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.ql, %.loopexit ] ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.dd = trunc i64 %indvars.iv457 to i1
  %i.de = select i1 %i.dd, i64 %8, i64 0          ; 8 uses
  %i.df = getelementptr i8, ptr %i.as, i64 %i.de  ; 80 uses
  %i.dg = and i32 %i.dc, 1
  %i.dh = xor i32 %i.dg, 1
  %i.di = mul nuw nsw i32 %i.dh, %i.ah
  %i.dj = zext nneg i32 %i.di to i64              ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dj ; 30 uses
  %i.dl = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dm = mul i32 %i.e, %i.dc
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 %i.dn  ; 38 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dq = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dr = icmp ugt i8 %i.dq, 4
  br i1 %i.dr, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = icmp eq i64 %indvars.iv457, 0
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = zext nneg i8 %i.dq to i64
  %i.du = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dv, %bb.o ], [ %i.dq, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check686, label %.preheader354

iter.check686:                                    ; preds = %.preheader356
  %i.dw = sub nsw i64 %i.dj, %i.de
  %diff.check669 = icmp ugt i64 %i.dw, -32
  %or.cond733 = select i1 %min.iters.check671, i1 true, i1 %diff.check669
  br i1 %or.cond733, label %.lr.ph360.preheader, label %vector.main.loop.iter.check672

vector.main.loop.iter.check672:                   ; preds = %iter.check686
  br i1 %min.iters.check673, label %vec.epilog.ph690, label %vector.body676

vector.body676:                                   ; preds = %vector.main.loop.iter.check672, %vector.body676
  %index677 = phi i64 [ %index.next682, %vector.body676 ], [ 0, %vector.main.loop.iter.check672 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index677 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load678 = load <16 x i8>, ptr %i.dx, align 1
  %wide.load679 = load <16 x i8>, ptr %i.dy, align 1
end_hunk_8
begin_hunk_9_@stbi__create_png_image_raw:bb.a
  %.4396 = phi i8 [ %i.rs, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.rr, %.lr.ph397.1 ], [ %i.do, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.df, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.rt, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter796 = phi i32 [ %niter796.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.rk = and i32 %.2267393, 6
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.rm = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.rn = load i8, ptr %.4246394, align 1
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.rm, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.rn, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.ro = select i1 %isneg, i8 %i.qn, i8 0
  %i.rp = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.ro, ptr %.2241395, align 1
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.rq = select i1 %isneg.1.not, i8 0, i8 %i.qn
  %i.rr = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.rq, ptr %i.rp, align 1
  %i.rs = shl i8 %.5, 2                           ; 2 uses
  %i.rt = add nuw i32 %.2267393, 2                ; 2 uses
  %niter796.next.1 = add i32 %niter796, 2         ; 2 uses
  %niter796.ncmp.1 = icmp eq i32 %niter796.next.1, %unroll_iter795
  br i1 %niter796.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397, !llvm.loop !252

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod793.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.rs, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.do, %.lr.ph397.preheader ], [ %i.rr, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.df, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.rt, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod794)
  %i.ru = and i32 %.2267393.epil.init, 7
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.rw = load i8, ptr %.4246394.epil.init, align 1
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.rw, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.rx = select i1 %isneg.epil, i8 %i.qn, i8 0
  store i8 %i.rx, ptr %.2241395.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit739.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod787.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit739.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.do, %.lr.ph392.preheader ], [ %i.qv, %.loopexit335.loopexit739.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.df, %.lr.ph392.preheader ], [ %i.qo, %.loopexit335.loopexit739.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.qw, %.loopexit335.loopexit739.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod788)
  %i.ry = and i32 %.0265388.epil.init, 1
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %bb.z, label %.loopexit335.loopexit739.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.sa = load i8, ptr %.0242389.epil.init, align 1
  %i.sb = lshr i8 %i.sa, 4
  %i.sc = mul i8 %i.sb, %i.qn
  br label %.loopexit335.loopexit739.epilog-lcssa

.loopexit335.loopexit739.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.sc, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit740.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod781.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit740.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.ri, %.loopexit335.loopexit740.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.do, %.lr.ph387.preheader ], [ %i.rh, %.loopexit335.loopexit740.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.df, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit740.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.rj, %.loopexit335.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod782)
  %i.sd = and i32 %.1266383.epil.init, 3
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.aa, label %.loopexit335.loopexit740.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sf = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit740.epilog-lcssa

.loopexit335.loopexit740.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sf, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sg = lshr i8 %.3.epil, 6
  %i.sh = mul i8 %i.sg, %i.qn
  store i8 %i.sh, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit740.epilog-lcssa, %.loopexit335.loopexit740.unr-lcssa, %.loopexit335.loopexit739.epilog-lcssa, %.loopexit335.loopexit739.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bc, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.bd, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod798.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.si = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cy ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 3
  store i8 -1, ptr %i.sj, align 1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cz ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  %i.sm = load i8, ptr %i.sl, align 1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  store i8 %i.sm, ptr %i.sn, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  %i.sp = load i8, ptr %i.so, align 1
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  store i8 %i.sp, ptr %i.sq, align 1
  %i.sr = load i8, ptr %i.sk, align 1
  store i8 %i.sr, ptr %i.si, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bf, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.da, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod801.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bf, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter802 = phi i64 [ %prol.iter802.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.ss = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.st = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ss ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  store i8 -1, ptr %i.su, align 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv35.i.prol
  %i.sw = load i8, ptr %i.sv, align 1
  store i8 %i.sw, ptr %i.st, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter802.next = add i64 %prol.iter802, 1   ; 2 uses
  %prol.iter802.cmp.not = icmp eq i64 %prol.iter802.next, %xtraiter800
  br i1 %prol.iter802.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !253

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bf, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.db, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.sx = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.sx ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 1
  store i8 -1, ptr %i.sz, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv35.i
  %i.tb = load i8, ptr %i.ta, align 1
  store i8 %i.tb, ptr %i.sy, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.tc = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  store i8 -1, ptr %i.te, align 1
  %i.tf = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next36.i
  %i.tg = load i8, ptr %i.tf, align 1
  store i8 %i.tg, ptr %i.td, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.th = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  store i8 -1, ptr %i.tj, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next36.i.1
  %i.tl = load i8, ptr %i.tk, align 1
  store i8 %i.tl, ptr %i.ti, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tm = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  store i8 -1, ptr %i.to, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next36.i.2
  %i.tq = load i8, ptr %i.tp, align 1
  store i8 %i.tq, ptr %i.tn, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !254

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tr = shl nsw i64 %indvars.iv.i, 2
  %i.ts = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tr ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 3
  store i8 -1, ptr %i.tt, align 1
  %i.tu = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tu ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 2
  %i.tx = load i8, ptr %i.tw, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  store i8 %i.tx, ptr %i.ty, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 1
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  store i8 %i.ua, ptr %i.ub, align 1
  %i.uc = load i8, ptr %i.tv, align 1
  store i8 %i.uc, ptr %i.ts, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ud = shl nsw i64 %indvars.iv.next.i, 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ud ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 3
  store i8 -1, ptr %i.uf, align 1
  %i.ug = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.uh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ug ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 2
  %i.uj = load i8, ptr %i.ui, align 1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ue, i64 2
  store i8 %i.uj, ptr %i.uk, align 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  %i.um = load i8, ptr %i.ul, align 1
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 1
  store i8 %i.um, ptr %i.un, align 1
  %i.uo = load i8, ptr %i.uh, align 1
  store i8 %i.uo, ptr %i.ue, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !255

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.df, i64 %i.bg, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bd, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.be, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod774.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.up = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cp ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 3
  store i8 -1, ptr %i.uq, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cq ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 2
  %i.ut = load i8, ptr %i.us, align 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  store i8 %i.ut, ptr %i.uu, align 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  %i.uw = load i8, ptr %i.uv, align 1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  store i8 %i.uw, ptr %i.ux, align 1
  %i.uy = load i8, ptr %i.ur, align 1
  store i8 %i.uy, ptr %i.up, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bf, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cr, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.be, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader741, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.i314.preheader
  %i.uz = getelementptr i8, ptr %i.dl, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.uz, i64 2
  %scevgep504 = getelementptr i8, ptr %scevgep, i64 %i.dn
  %scevgep506 = getelementptr i8, ptr %scevgep505, i64 %i.de
  %bound0 = icmp ult ptr %i.do, %scevgep506
  %bound1 = icmp ult ptr %i.df, %scevgep504
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.i314.preheader741, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.va = sub i64 %i.bf, %index                   ; 2 uses
  %i.vb = shl nuw nsw i64 %i.va, 1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.va
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ve, align 1, !alias.scope !256
  %i.vf = getelementptr inbounds i8, ptr %i.vc, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vf, align 1, !alias.scope !259, !noalias !256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vg = icmp eq i64 %index.next, %n.vec
  br i1 %i.vg, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader741

.lr.ph32.i314.preheader741:                       ; preds = %vector.memcheck, %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph32.i314.preheader ], [ %i.ct, %middle.block ] ; 4 uses
  %i.vh = add nsw i64 %indvars.iv35.i315.ph, 1
  %xtraiter776 = and i64 %i.vh, 3                 ; 2 uses
  %lcmp.mod777.not = icmp eq i64 %xtraiter776, 0
  br i1 %lcmp.mod777.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol

.lr.ph32.i314.prol:                               ; preds = %.lr.ph32.i314.preheader741, %.lr.ph32.i314.prol
  %indvars.iv35.i315.prol = phi i64 [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader741 ] ; 3 uses
  %prol.iter778 = phi i64 [ %prol.iter778.next, %.lr.ph32.i314.prol ], [ 0, %.lr.ph32.i314.preheader741 ]
  %i.vi = shl nuw nsw i64 %indvars.iv35.i315.prol, 1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vi ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  store i8 -1, ptr %i.vk, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv35.i315.prol
  %i.vm = load i8, ptr %i.vl, align 1
  store i8 %i.vm, ptr %i.vj, align 1
  %indvars.iv.next36.i316.prol = add nsw i64 %indvars.iv35.i315.prol, -1 ; 2 uses
  %prol.iter778.next = add i64 %prol.iter778, 1   ; 2 uses
  %prol.iter778.cmp.not = icmp eq i64 %prol.iter778.next, %xtraiter776
  br i1 %prol.iter778.cmp.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol, !llvm.loop !262

.lr.ph32.i314.prol.loopexit:                      ; preds = %.lr.ph32.i314.prol, %.lr.ph32.i314.preheader741
  %indvars.iv35.i315.unr = phi i64 [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader741 ], [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ]
  %i.vn = icmp ult i64 %indvars.iv35.i315.ph, 3
  br i1 %i.vn, label %.loopexit, label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316.3, %.lr.ph32.i314 ], [ %indvars.iv35.i315.unr, %.lr.ph32.i314.prol.loopexit ] ; 6 uses
  %i.vo = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  store i8 -1, ptr %i.vq, align 1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv35.i315
  %i.vs = load i8, ptr %i.vr, align 1
  store i8 %i.vs, ptr %i.vp, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1 ; 2 uses
  %i.vt = shl nuw nsw i64 %indvars.iv.next36.i316, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vt ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 1
  store i8 -1, ptr %i.vv, align 1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.next36.i316
  %i.vx = load i8, ptr %i.vw, align 1
  store i8 %i.vx, ptr %i.vu, align 1
  %indvars.iv.next36.i316.1 = add nsw i64 %indvars.iv35.i315, -2 ; 2 uses
  %i.vy = shl nuw nsw i64 %indvars.iv.next36.i316.1, 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  store i8 -1, ptr %i.wa, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.next36.i316.1
  %i.wc = load i8, ptr %i.wb, align 1
  store i8 %i.wc, ptr %i.vz, align 1
  %indvars.iv.next36.i316.2 = add nsw i64 %indvars.iv35.i315, -3 ; 3 uses
  %i.wd = shl nuw nsw i64 %indvars.iv.next36.i316.2, 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.wd ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  store i8 -1, ptr %i.wf, align 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.next36.i316.2
  %i.wh = load i8, ptr %i.wg, align 1
  store i8 %i.wh, ptr %i.we, align 1
  %indvars.iv.next36.i316.3 = add nsw i64 %indvars.iv35.i315, -4
  %.not39.i317.3 = icmp eq i64 %indvars.iv.next36.i316.2, 0
  br i1 %.not39.i317.3, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !263

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.wi = shl nsw i64 %indvars.iv.i309, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.wi ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 3
  store i8 -1, ptr %i.wk, align 1
  %i.wl = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wm = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.wl ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 2
  %i.wo = load i8, ptr %i.wn, align 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  store i8 %i.wo, ptr %i.wp, align 1
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  %i.wr = load i8, ptr %i.wq, align 1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  store i8 %i.wr, ptr %i.ws, align 1
  %i.wt = load i8, ptr %i.wm, align 1
  store i8 %i.wt, ptr %i.wj, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.wu = shl nsw i64 %indvars.iv.next.i310, 2
  %i.wv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.wu ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 3
  store i8 -1, ptr %i.ww, align 1
  %i.wx = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.wx ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 2
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wv, i64 2
  store i8 %i.xa, ptr %i.xb, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 1
  %i.xd = load i8, ptr %i.xc, align 1
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wv, i64 1
  store i8 %i.xd, ptr %i.xe, align 1
  %i.xf = load i8, ptr %i.wy, align 1
  store i8 %i.xf, ptr %i.wv, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !255

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bc, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.cn, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.yo, %.lr.ph382 ], [ %i.do, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.yp, %.lr.ph382 ], [ %i.df, %.lr.ph382.preheader ] ; 9 uses
  %niter772 = phi i32 [ %niter772.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.xg = load i8, ptr %.0249380, align 1
  %i.xh = zext i8 %i.xg to i16
  %i.xi = shl nuw i16 %i.xh, 8
  %i.xj = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.xk = load i8, ptr %i.xj, align 1
  %i.xl = zext i8 %i.xk to i16
  %i.xm = or disjoint i16 %i.xi, %i.xl
  store i16 %i.xm, ptr %.0381, align 2
  %i.xn = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.xo = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.xp = load i8, ptr %i.xo, align 1
  %i.xq = zext i8 %i.xp to i16
  %i.xr = shl nuw i16 %i.xq, 8
  %i.xs = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = zext i8 %i.xt to i16
  %i.xv = or disjoint i16 %i.xr, %i.xu
  store i16 %i.xv, ptr %i.xn, align 2
  %i.xw = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.xx = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xy = load i8, ptr %i.xx, align 1
  %i.xz = zext i8 %i.xy to i16
  %i.ya = shl nuw i16 %i.xz, 8
  %i.yb = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.yc = load i8, ptr %i.yb, align 1
  %i.yd = zext i8 %i.yc to i16
  %i.ye = or disjoint i16 %i.ya, %i.yd
  store i16 %i.ye, ptr %i.xw, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.yg = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.yh = load i8, ptr %i.yg, align 1
  %i.yi = zext i8 %i.yh to i16
  %i.yj = shl nuw i16 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = zext i8 %i.yl to i16
  %i.yn = or disjoint i16 %i.yj, %i.ym
  store i16 %i.yn, ptr %i.yf, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter772.next.3 = add i32 %niter772, 4         ; 2 uses
  %niter772.ncmp.3 = icmp eq i32 %niter772.next.3, %unroll_iter771
  br i1 %niter772.ncmp.3, label %.loopexit.loopexit744.unr-lcssa, label %.lr.ph382, !llvm.loop !264

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bd, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cm, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.zi, %.lr.ph378 ], [ %i.do, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.zj, %.lr.ph378 ], [ %i.df, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.yq = load i8, ptr %.1250376, align 1
  %i.yr = zext i8 %i.yq to i16
  %i.ys = shl nuw i16 %i.yr, 8
  %i.yt = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = zext i8 %i.yu to i16
  %i.yw = or disjoint i16 %i.ys, %i.yv
  store i16 %i.yw, ptr %.1377, align 2
  %i.yx = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.yx, align 2
  %i.yy = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.yz = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = zext i8 %i.za to i16
  %i.zc = shl nuw i16 %i.zb, 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.ze = load i8, ptr %i.zd, align 1
  %i.zf = zext i8 %i.ze to i16
  %i.zg = or disjoint i16 %i.zc, %i.zf
  store i16 %i.zg, ptr %i.yy, align 2
  %i.zh = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.zh, align 2
  %i.zi = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit745.unr-lcssa, label %.lr.ph378, !llvm.loop !265

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.aal, %.lr.ph374 ], [ %i.do, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.aam, %.lr.ph374 ], [ %i.df, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.aak, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.zk = load i8, ptr %.2251372, align 1
  %i.zl = zext i8 %i.zk to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = zext i8 %i.zo to i16
  %i.zq = or disjoint i16 %i.zm, %i.zp
  store i16 %i.zq, ptr %.2373, align 2
  %i.zr = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.zs = load i8, ptr %i.zr, align 1
  %i.zt = zext i8 %i.zs to i16
  %i.zu = shl nuw i16 %i.zt, 8
  %i.zv = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.zw = load i8, ptr %i.zv, align 1
  %i.zx = zext i8 %i.zw to i16
  %i.zy = or disjoint i16 %i.zu, %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.zy, ptr %i.zz, align 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.aab = load i8, ptr %i.aaa, align 1
  %i.aac = zext i8 %i.aab to i16
  %i.aad = shl nuw i16 %i.aac, 8
  %i.aae = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.aaf = load i8, ptr %i.aae, align 1
  %i.aag = zext i8 %i.aaf to i16
  %i.aah = or disjoint i16 %i.aad, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.aah, ptr %i.aai, align 2
  %i.aaj = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.aaj, align 2
  %i.aak = add nuw i32 %.5270371, 1               ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.aam = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.aak, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !266

.loopexit.loopexit744.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod769.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit744.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.do, %.lr.ph382.preheader ], [ %i.yo, %.loopexit.loopexit744.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.df, %.lr.ph382.preheader ], [ %i.yp, %.loopexit.loopexit744.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod770)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.aau, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.aav, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.aan = load i8, ptr %.0249380.epil, align 1
  %i.aao = zext i8 %i.aan to i16
  %i.aap = shl nuw i16 %i.aao, 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.aar = load i8, ptr %i.aaq, align 1
  %i.aas = zext i8 %i.aar to i16
  %i.aat = or disjoint i16 %i.aap, %i.aas
  store i16 %i.aat, ptr %.0381.epil, align 2
  %i.aau = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.aav = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter768
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !267

.loopexit.loopexit745.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod766.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit745.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.do, %.lr.ph378.preheader ], [ %i.zi, %.loopexit.loopexit745.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.df, %.lr.ph378.preheader ], [ %i.zj, %.loopexit.loopexit745.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod767)
  %i.aaw = load i8, ptr %.1250376.epil.init, align 1
  %i.aax = zext i8 %i.aaw to i16
  %i.aay = shl nuw i16 %i.aax, 8
end_hunk_9
