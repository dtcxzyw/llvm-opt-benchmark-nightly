Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbcenc?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sbc_encode_frame:bb.a
  %i.cp = shl nuw nsw i32 %i.co, 2
  %i.cq = add i32 %i.cl, %i.cp
  %i.cr = shl nuw nsw i32 %i.cn, 2
  %i.cs = sub i32 %i.cq, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.ct
  %.idx66.i = shl nuw nsw i64 %indvars.iv90.i, 5
  %invariant.gep80.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx66.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph78.i
  %.076.i = phi ptr [ %i.cu, %.lr.ph78.i ], [ %i.dc, %bb.h ] ; 2 uses
  %.05575.i = phi i32 [ 0, %.lr.ph78.i ], [ %i.dd, %bb.h ] ; 2 uses
  %i.cv = load ptr, ptr %i.cf, align 16, !tbaa !78
  %i.cw = zext nneg i32 %.05575.i to i64
  %.idx65.i = shl nuw nsw i64 %i.cw, 6
  %gep81.i = getelementptr inbounds nuw i8, ptr %invariant.gep80.i, i64 %.idx65.i
  tail call void %i.cv(ptr noundef nonnull %i.bv, ptr noundef %.076.i, ptr noundef nonnull %gep81.i, i32 noundef 16) #8, !inline_history !55
  %i.cx = load i8, ptr %i.ce, align 4, !tbaa !77
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cy, 2
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [2 x i8], ptr %.076.i, i64 %i.db
  %i.dd = add nuw nsw i32 %.05575.i, %i.cy        ; 2 uses
  %i.de = load i8, ptr %i.m, align 1, !tbaa !36   ; 3 uses
  %i.df = zext i8 %i.de to i32
  %i.dg = icmp samesign ult i32 %i.dd, %i.df
  br i1 %i.dg, label %bb.h, label %._crit_edge79.loopexit.i, !llvm.loop !56

._crit_edge79.loopexit.i:                         ; preds = %bb.h
  %.pre96.i = load i8, ptr %i.j, align 8, !tbaa !39
  br label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %._crit_edge79.loopexit.i, %bb.g
  %i.dh = phi i8 [ %.pre96.i, %._crit_edge79.loopexit.i ], [ %i.ch, %bb.g ] ; 2 uses
  %i.di = phi i8 [ %i.de, %._crit_edge79.loopexit.i ], [ %i.ci, %bb.g ]
  %i.dj = phi i8 [ %i.de, %._crit_edge79.loopexit.i ], [ 0, %bb.g ]
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %i.dk = zext i8 %i.dh to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next91.i, %i.dk
  br i1 %i.dl, label %bb.g, label %sbc_analyze_audio.exit, !llvm.loop !57

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph73.i
  %i.dm = phi i8 [ %i.bx, %.lr.ph73.i ], [ %i.em, %._crit_edge.i ]
  %i.dn = phi i8 [ %.pre.i, %.lr.ph73.i ], [ %i.en, %._crit_edge.i ] ; 2 uses
  %i.do = phi i8 [ %.pre.i, %.lr.ph73.i ], [ %i.eo, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph73.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.not86.i = icmp eq i8 %i.do, 0
  br i1 %.not86.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw [656 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.dq = load i32, ptr %i.bv, align 16, !tbaa !76
  %i.dr = load i8, ptr %i.bz, align 4, !tbaa !77
  %i.ds = zext i8 %i.dr to i32
  %i.dt = zext i8 %i.dn to i32
  %i.du = shl nuw nsw i32 %i.dt, 3
  %i.dv = add i32 %i.dq, %i.du
  %i.dw = shl nuw nsw i32 %i.ds, 3
  %i.dx = sub i32 %i.dv, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.dy
  %.idx62.i = shl nuw nsw i64 %indvars.iv.i, 5
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx62.i
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.171.i = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.eh, %bb.j ] ; 2 uses
  %.15670.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ei, %bb.j ] ; 2 uses
  %i.ea = load ptr, ptr %i.ca, align 8, !tbaa !79
  %i.eb = zext nneg i32 %.15670.i to i64
  %.idx61.i = shl nuw nsw i64 %i.eb, 6
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx61.i
  tail call void %i.ea(ptr noundef nonnull %i.bv, ptr noundef %.171.i, ptr noundef nonnull %gep.i, i32 noundef 16) #8, !inline_history !55
  %i.ec = load i8, ptr %i.bz, align 4, !tbaa !77
  %i.ed = zext i8 %i.ec to i32                    ; 2 uses
  %i.ee = shl nuw nsw i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [2 x i8], ptr %.171.i, i64 %i.eg
  %i.ei = add nuw nsw i32 %.15670.i, %i.ed        ; 2 uses
  %i.ej = load i8, ptr %i.m, align 1, !tbaa !36   ; 3 uses
  %i.ek = zext i8 %i.ej to i32
  %i.el = icmp samesign ult i32 %i.ei, %i.ek
  br i1 %i.el, label %bb.j, label %._crit_edge.loopexit.i, !llvm.loop !58

._crit_edge.loopexit.i:                           ; preds = %bb.j
  %.pre93.i = load i8, ptr %i.j, align 8, !tbaa !39
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.i
  %i.em = phi i8 [ %.pre93.i, %._crit_edge.loopexit.i ], [ %i.dm, %bb.i ] ; 2 uses
  %i.en = phi i8 [ %i.ej, %._crit_edge.loopexit.i ], [ %i.dn, %bb.i ]
  %i.eo = phi i8 [ %i.ej, %._crit_edge.loopexit.i ], [ 0, %bb.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = zext i8 %i.em to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next.i, %i.ep
  br i1 %i.eq, label %bb.i, label %sbc_analyze_audio.exit, !llvm.loop !59

sbc_analyze_audio.exit:                           ; preds = %._crit_edge.i, %._crit_edge79.i, %.preheader69.i, %.preheader.i, %bb.f
  %i.er = load i32, ptr %i.h, align 4, !tbaa !34
  %i.es = icmp eq i32 %i.er, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ev = load i8, ptr %i.m, align 1, !tbaa !36
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %sbc_analyze_audio.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 2536
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !80
  %i.ez = load i8, ptr %i.i, align 16, !tbaa !35
  %i.fa = zext i8 %i.ez to i32
  %i.fb = tail call i32 %i.ey(ptr noundef nonnull %i.et, ptr noundef nonnull %i.eu, i32 noundef %i.ew, i32 noundef %i.fa) #8
  br label %bb.m

bb.l:                                             ; preds = %sbc_analyze_audio.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 2528
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !81
  %i.fe = load i8, ptr %i.j, align 8, !tbaa !39
  %i.ff = zext i8 %i.fe to i32
  %i.fg = load i8, ptr %i.i, align 16, !tbaa !35
  %i.fh = zext i8 %i.fg to i32
  tail call void %i.fd(ptr noundef nonnull %i.et, ptr noundef nonnull %i.eu, i32 noundef %i.ew, i32 noundef %i.ff, i32 noundef %i.fh) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %i.fb, %bb.k ], [ 0, %bb.l ]    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fj = load i32, ptr %i.fi, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fk, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %.not.i57 = icmp eq i32 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !83 ; 2 uses
  br i1 %.not.i57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 -83, ptr %i.fm, align 1, !tbaa !84
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  store i8 0, ptr %i.fo, align 1, !tbaa !84
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i8 -100, ptr %i.fm, align 1, !tbaa !84
  %i.fp = load i8, ptr %i.g, align 16, !tbaa !44
  %i.fq = shl i8 %i.fp, 6
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !84
  %i.ft = load i8, ptr %i.m, align 1, !tbaa !36
  %i.fu = shl i8 %i.ft, 2
  %i.fv = add i8 %i.fu, 48
  %i.fw = and i8 %i.fv, 48
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !84
  %i.ga = or i8 %i.fw, %i.fz
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !84
  %i.gb = load i32, ptr %i.h, align 4, !tbaa !34
  %i.gc = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !84
  %.tr.i = trunc i32 %i.gb to i8
  %i.gf = shl i8 %.tr.i, 2
  %i.gg = and i8 %i.gf, 12
  %i.gh = or i8 %i.gg, %i.ge
  store i8 %i.gh, ptr %i.gd, align 1, !tbaa !84
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !37
  %i.gk = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !84
  %.tr98.i = trunc i32 %i.gj to i8
  %i.gn = shl i8 %.tr98.i, 1
  %i.go = and i8 %i.gn, 2
  %i.gp = or i8 %i.go, %i.gm
  store i8 %i.gp, ptr %i.gl, align 1, !tbaa !84
  %i.gq = load i8, ptr %i.i, align 16, !tbaa !35
  %i.gr = icmp eq i8 %i.gq, 8
  %i.gs = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !84
  %i.gv = zext i1 %i.gr to i8
  %i.gw = or i8 %i.gu, %i.gv
  store i8 %i.gw, ptr %i.gt, align 1, !tbaa !84
  %i.gx = load i8, ptr %i.ad, align 1, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i = phi i8 [ %i.gx, %bb.o ], [ 0, %bb.n ]
  %i.gy = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  store i8 %.sink.i, ptr %i.gz, align 1, !tbaa !84
  %i.ha = load ptr, ptr %i.fl, align 8, !tbaa !83 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !84
  store i8 %i.hc, ptr %i.a, align 1, !tbaa !84
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !84
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !84
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !85 ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 4
  %spec.select.i.i = select i1 %i.hj, ptr null, ptr %i.hg ; 5 uses
  %i.hk = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 4)
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  %i.hm = getelementptr i8, ptr %spec.select.i.i, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 -4     ; 3 uses
  %i.ho = load i32, ptr %i.h, align 4, !tbaa !34
  %i.hp = icmp eq i32 %i.ho, 3
  br i1 %i.hp, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.hq = load i8, ptr %i.i, align 16, !tbaa !35  ; 2 uses
  %i.hr = zext i8 %i.hq to i32                    ; 3 uses
  %i.hs = icmp ult i8 %i.hq, 32
  br i1 %i.hs, label %put_bits.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %4 = and i64 %i.hl, 2147483644
  %.not127.i = icmp eq i64 %4, 4
  br i1 %.not127.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 4
  br label %put_bits.exit.i

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #8
  %.pre.i64 = load i8, ptr %i.i, align 16, !tbaa !35
  %.pre217.i = zext i8 %.pre.i64 to i32
  br label %put_bits.exit.i

put_bits.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.q
  %.pre-phi.i = phi i32 [ %i.hr, %bb.s ], [ %.pre217.i, %bb.t ], [ %i.hr, %bb.q ]
  %.sroa.28.8.i = phi ptr [ %i.ht, %bb.s ], [ %spec.select.i.i, %bb.t ], [ %spec.select.i.i, %bb.q ]
  %.pn.i = phi i32 [ 64, %bb.s ], [ 64, %bb.t ], [ 32, %bb.q ]
  %.0.i.i.i = sub nsw i32 %.pn.i, %i.hr
  %i.hu = trunc i32 %.0 to i8
  store i8 %i.hu, ptr %i.fk, align 1, !tbaa !84
  %i.hv = add nuw nsw i32 %.pre-phi.i, 16
  br label %bb.u

bb.u:                                             ; preds = %put_bits.exit.i, %bb.p
  %.sroa.28.0.i = phi ptr [ %.sroa.28.8.i, %put_bits.exit.i ], [ %spec.select.i.i, %bb.p ] ; 2 uses
  %.sroa.15.0.i = phi i32 [ %.0.i.i.i, %put_bits.exit.i ], [ 32, %bb.p ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %.0, %put_bits.exit.i ], [ 0, %bb.p ] ; 2 uses
  %.093.i = phi i32 [ %i.hv, %put_bits.exit.i ], [ 16, %bb.p ] ; 2 uses
  %i.hw = load i8, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not180.i.a = icmp eq i8 %i.hw, 0
  br i1 %.not180.i.a, label %._crit_edge146.i, label %.preheader131.lr.ph.i

.preheader131.lr.ph.i:                            ; preds = %bb.u
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.hy = ptrtoint ptr %i.hn to i64
  %.pre209.i.a = load i8, ptr %i.i, align 16, !tbaa !35 ; 2 uses
  br label %.preheader131.i

.preheader131.i:                                  ; preds = %._crit_edge.i62, %.preheader131.lr.ph.i
  %i.hz = phi i8 [ %i.hw, %.preheader131.lr.ph.i ], [ %i.ji, %._crit_edge.i62 ]
  %i.ia = phi i8 [ %.pre209.i.a, %.preheader131.lr.ph.i ], [ %i.jj, %._crit_edge.i62 ] ; 2 uses
  %i.ib = phi i8 [ %.pre209.i.a, %.preheader131.lr.ph.i ], [ %i.jk, %._crit_edge.i62 ]
  %indvars.iv189.i = phi i64 [ 0, %.preheader131.lr.ph.i ], [ %indvars.iv.next190.i, %._crit_edge.i62 ] ; 2 uses
  %.194144.i = phi i32 [ %.093.i, %.preheader131.lr.ph.i ], [ %.295.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.0.1143.i = phi i32 [ %.sroa.0.0.i, %.preheader131.lr.ph.i ], [ %.sroa.0.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.15.1142.i = phi i32 [ %.sroa.15.0.i, %.preheader131.lr.ph.i ], [ %.sroa.15.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.28.1141.i = phi ptr [ %.sroa.28.0.i, %.preheader131.lr.ph.i ], [ %.sroa.28.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.not181.i.a = icmp eq i8 %i.ib, 0
  br i1 %.not181.i.a, label %._crit_edge.i62, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.preheader131.i
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %indvars.iv189.i
  br label %bb.v

bb.v:                                             ; preds = %put_bits.exit104.i, %.lr.ph.i58
  %i.id = phi i8 [ %i.ia, %.lr.ph.i58 ], [ %i.iv, %put_bits.exit104.i ]
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i58 ], [ %indvars.iv.next.i60, %put_bits.exit104.i ] ; 2 uses
  %.295136.i = phi i32 [ %.194144.i, %.lr.ph.i58 ], [ %i.jf, %put_bits.exit104.i ] ; 2 uses
  %.sroa.0.2135.i = phi i32 [ %.sroa.0.1143.i, %.lr.ph.i58 ], [ %.026.i.i102.i, %put_bits.exit104.i ] ; 2 uses
  %.sroa.15.2134.i = phi i32 [ %.sroa.15.1142.i, %.lr.ph.i58 ], [ %.0.i.i103.i, %put_bits.exit104.i ] ; 5 uses
  %.sroa.28.2133.i = phi ptr [ %.sroa.28.1141.i, %.lr.ph.i58 ], [ %.sroa.28.10.i, %put_bits.exit104.i ] ; 5 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i59 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !43 ; 2 uses
  %i.ig = and i32 %i.if, 15                       ; 3 uses
  %i.ih = icmp sgt i32 %.sroa.15.2134.i, 4
  br i1 %i.ih, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ii = shl i32 %.sroa.0.2135.i, 4
  %i.ij = or disjoint i32 %i.ig, %i.ii
  %i.ik = add nsw i32 %.sroa.15.2134.i, -4
  br label %put_bits.exit104.i

bb.x:                                             ; preds = %bb.v
  %i.il = ptrtoint ptr %.sroa.28.2133.i to i64
  %i.im = sub i64 %i.hy, %i.il
  %i.in = icmp ugt i64 %i.im, 3
  br i1 %i.in, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.io = shl i32 %.sroa.0.2135.i, %.sroa.15.2134.i
  %i.ip = sub nsw i32 4, %.sroa.15.2134.i
  %i.iq = lshr i32 %i.ig, %i.ip
  %i.ir = or i32 %i.iq, %i.io
  %i.is = tail call i32 @llvm.bswap.i32(i32 %i.ir)
  store i32 %i.is, ptr %.sroa.28.2133.i, align 1, !tbaa !84
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.28.2133.i, i64 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.28.9.i = phi ptr [ %i.it, %bb.y ], [ %.sroa.28.2133.i, %bb.z ]
  %i.iu = add nsw i32 %.sroa.15.2134.i, 28
  %.pre210.i.a = load i32, ptr %i.ie, align 4, !tbaa !43
  %.pre211.i.a = load i8, ptr %i.i, align 16, !tbaa !35
  br label %put_bits.exit104.i

put_bits.exit104.i:                               ; preds = %bb.aa, %bb.w
  %i.iv = phi i8 [ %i.id, %bb.w ], [ %.pre211.i.a, %bb.aa ] ; 4 uses
  %i.iw = phi i32 [ %i.if, %bb.w ], [ %.pre210.i.a, %bb.aa ]
  %.sroa.28.10.i = phi ptr [ %.sroa.28.2133.i, %bb.w ], [ %.sroa.28.9.i, %bb.aa ] ; 2 uses
  %.026.i.i102.i = phi i32 [ %i.ij, %bb.w ], [ %i.ig, %bb.aa ] ; 2 uses
  %.0.i.i103.i = phi i32 [ %i.ik, %bb.w ], [ %i.iu, %bb.aa ] ; 2 uses
  %i.ix = ashr i32 %.295136.i, 3
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.a, i64 %i.iy ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !84
  %i.jb = shl i8 %i.ja, 4
  %i.jc = trunc i32 %i.iw to i8
  %i.jd = and i8 %i.jc, 15
  %i.je = or disjoint i8 %i.jb, %i.jd
  store i8 %i.je, ptr %i.iz, align 1, !tbaa !84
  %i.jf = add nsw i32 %.295136.i, 4               ; 2 uses
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.jg = zext i8 %i.iv to i64
  %i.jh = icmp samesign ult i64 %indvars.iv.next.i60, %i.jg
  br i1 %i.jh, label %bb.v, label %._crit_edge.loopexit.i61, !llvm.loop !60

._crit_edge.loopexit.i61:                         ; preds = %put_bits.exit104.i
  %.pre212.i.a = load i8, ptr %i.j, align 8, !tbaa !39
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.loopexit.i61, %.preheader131.i
  %i.ji = phi i8 [ %i.hz, %.preheader131.i ], [ %.pre212.i.a, %._crit_edge.loopexit.i61 ] ; 2 uses
  %i.jj = phi i8 [ %i.ia, %.preheader131.i ], [ %i.iv, %._crit_edge.loopexit.i61 ]
  %i.jk = phi i8 [ 0, %.preheader131.i ], [ %i.iv, %._crit_edge.loopexit.i61 ]
  %.sroa.28.2.lcssa.i = phi ptr [ %.sroa.28.1141.i, %.preheader131.i ], [ %.sroa.28.10.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %.sroa.15.2.lcssa.i = phi i32 [ %.sroa.15.1142.i, %.preheader131.i ], [ %.0.i.i103.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %.sroa.0.2.lcssa.i = phi i32 [ %.sroa.0.1143.i, %.preheader131.i ], [ %.026.i.i102.i, %._crit_edge.loopexit.i61 ] ; 2 uses
  %.295.lcssa.i = phi i32 [ %.194144.i, %.preheader131.i ], [ %i.jf, %._crit_edge.loopexit.i61 ] ; 2 uses
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.jl = zext i8 %i.ji to i64
  %i.jm = icmp samesign ult i64 %indvars.iv.next190.i, %i.jl
  br i1 %i.jm, label %.preheader131.i, label %._crit_edge146.i, !llvm.loop !61

._crit_edge146.i:                                 ; preds = %._crit_edge.i62, %bb.u
  %.sroa.28.1.lcssa.i = phi ptr [ %.sroa.28.0.i, %bb.u ], [ %.sroa.28.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.15.1.lcssa.i = phi i32 [ %.sroa.15.0.i, %bb.u ], [ %.sroa.15.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i32 [ %.sroa.0.0.i, %bb.u ], [ %.sroa.0.2.lcssa.i, %._crit_edge.i62 ] ; 2 uses
  %.194.lcssa.i = phi i32 [ %.093.i, %bb.u ], [ %.295.lcssa.i, %._crit_edge.i62 ] ; 3 uses
  %i.jn = srem i32 %.194.lcssa.i, 8               ; 2 uses
  %.not99.i = icmp eq i32 %i.jn, 0
  br i1 %.not99.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge146.i
  %i.jo = sub nsw i32 8, %i.jn
  %i.jp = ashr i32 %.194.lcssa.i, 3
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %i.a, i64 %i.jq ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !84
  %i.jt = zext i8 %i.js to i32
  %i.ju = shl nuw nsw i32 %i.jt, %i.jo
  %i.jv = trunc i32 %i.ju to i8
  store i8 %i.jv, ptr %i.jr, align 1, !tbaa !84
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge146.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !41
  %i.jy = sext i32 %.194.lcssa.i to i64
  %i.jz = call zeroext i8 @ff_sbc_crc8(ptr noundef %i.jx, ptr noundef nonnull %i.a, i64 noundef %i.jy) #8
  %i.ka = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3
  store i8 %i.jz, ptr %i.kb, align 1, !tbaa !84
  call void @ff_sbc_calculate_bits(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b) #8
  %i.kc = load i8, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  %.not182.i.a = icmp eq i8 %i.kc, 0
  br i1 %.not182.i.a, label %.preheader129.i, label %.preheader130.lr.ph.i

.preheader130.lr.ph.i:                            ; preds = %bb.ac
  %i.kd = load i8, ptr %i.i, align 16, !tbaa !35  ; 4 uses
  %.not183.i.a = icmp eq i8 %i.kd, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br i1 %.not183.i.a, label %.preheader129.i, label %.preheader130.preheader.i

.preheader130.preheader.i:                        ; preds = %.preheader130.lr.ph.i
  %wide.trip.count198.i = zext i8 %i.kc to i64
  %wide.trip.count.i = zext i8 %i.kd to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.kf = icmp eq i8 %i.kd, 1
  %unroll_iter = and i64 %wide.trip.count.i, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i8 %i.kd to i1
  br label %.preheader130.i

.preheader130.i:                                  ; preds = %._crit_edge153.i, %.preheader130.preheader.i
  %indvars.iv195.i = phi i64 [ 0, %.preheader130.preheader.i ], [ %indvars.iv.next196.i, %._crit_edge153.i ] ; 5 uses
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv195.i ; 3 uses
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.ke, i64 %indvars.iv195.i ; 3 uses
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv195.i ; 3 uses
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv195.i ; 3 uses
  br i1 %i.kf, label %.epil.preheader, label %.preheader130.i.new

.preheader129.i:                                  ; preds = %._crit_edge153.i, %.preheader130.lr.ph.i, %bb.ac
  %i.kk = load i8, ptr %i.m, align 1, !tbaa !36   ; 2 uses
  %.not184.i.a = icmp eq i8 %i.kk, 0
  br i1 %.not184.i.a, label %._crit_edge176.i, label %.preheader128.lr.ph.i

.preheader128.lr.ph.i:                            ; preds = %.preheader129.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.km = ptrtoint ptr %i.hn to i64
  br label %.preheader128.i
end_hunk_0
