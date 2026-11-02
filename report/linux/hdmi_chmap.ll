Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hdmi_chmap?download=true
inline.NumInlined: 27
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@snd_hdac_setup_channel_mapping:bb.a
  %i.ci = icmp slt i64 %indvars.iv.i18, 7
  %i.cj = and i1 %i.ch, %i.ci
  br i1 %i.cj, label %.preheader55.i, label %.loopexit56.loopexit71.i, !llvm.loop !17

.loopexit56.loopexit.i:                           ; preds = %bb.s
  %i.ck = trunc nuw nsw i64 %indvars.iv76.i to i32
  br label %.loopexit56.i

.loopexit56.loopexit71.i:                         ; preds = %bb.t
  %i.cl = trunc nuw nsw i64 %indvars.iv.next77.i to i32
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %.loopexit56.loopexit71.i, %.loopexit56.loopexit.i, %.preheader57.i
  %.04761.i = phi i32 [ %i.ck, %.loopexit56.loopexit.i ], [ 0, %.preheader57.i ], [ %i.cl, %.loopexit56.loopexit71.i ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bl, i64 4
  %i.cn = getelementptr i8, ptr %i.bl, i64 32
  %i.co = load i32, ptr %i.cn, align 4
  %.not52.i = icmp eq i32 %i.co, 0
  br i1 %.not52.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit56.i
  %i.cp = add i32 %.04761.i, 1
  %i.cq = sext i32 %.04761.i to i64
  %i.cr = getelementptr [4 x i8], ptr %i.bn, i64 %i.cq
  store i32 240, ptr %i.cr, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit56.i
  %.249.i = phi i32 [ %.04761.i, %.loopexit56.i ], [ %i.cp, %bb.u ] ; 3 uses
  %i.cs = getelementptr i8, ptr %i.bl, i64 28
  %i.ct = load i32, ptr %i.cs, align 4
  %.not52.1.i = icmp eq i32 %i.ct, 0
  br i1 %.not52.1.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = add i32 %.249.i, 1
  %i.cv = sext i32 %.249.i to i64
  %i.cw = getelementptr [4 x i8], ptr %i.bn, i64 %i.cv
  store i32 241, ptr %i.cw, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.249.1.i = phi i32 [ %.249.i, %bb.v ], [ %i.cu, %bb.w ] ; 3 uses
  %i.cx = getelementptr i8, ptr %i.bl, i64 24
  %i.cy = load i32, ptr %i.cx, align 4
  %.not52.2.i = icmp eq i32 %i.cy, 0
  br i1 %.not52.2.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cz = add i32 %.249.1.i, 1
  %i.da = sext i32 %.249.1.i to i64
  %i.db = getelementptr [4 x i8], ptr %i.bn, i64 %i.da
  store i32 242, ptr %i.db, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.249.2.i = phi i32 [ %.249.1.i, %bb.x ], [ %i.cz, %bb.y ] ; 3 uses
  %i.dc = getelementptr i8, ptr %i.bl, i64 20
  %i.dd = load i32, ptr %i.dc, align 4
  %.not52.3.i = icmp eq i32 %i.dd, 0
  br i1 %.not52.3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.de = add i32 %.249.2.i, 1
  %i.df = sext i32 %.249.2.i to i64
  %i.dg = getelementptr [4 x i8], ptr %i.bn, i64 %i.df
  store i32 243, ptr %i.dg, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.249.3.i = phi i32 [ %.249.2.i, %bb.z ], [ %i.de, %bb.aa ] ; 3 uses
  %i.dh = getelementptr i8, ptr %i.bl, i64 16
  %i.di = load i32, ptr %i.dh, align 4
  %.not52.4.i = icmp eq i32 %i.di, 0
  br i1 %.not52.4.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dj = add i32 %.249.3.i, 1
  %i.dk = sext i32 %.249.3.i to i64
  %i.dl = getelementptr [4 x i8], ptr %i.bn, i64 %i.dk
  store i32 244, ptr %i.dl, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.249.4.i = phi i32 [ %.249.3.i, %bb.ab ], [ %i.dj, %bb.ac ] ; 3 uses
  %i.dm = getelementptr i8, ptr %i.bl, i64 12
  %i.dn = load i32, ptr %i.dm, align 4
  %.not52.5.i = icmp eq i32 %i.dn, 0
  br i1 %.not52.5.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.do = add i32 %.249.4.i, 1
  %i.dp = sext i32 %.249.4.i to i64
  %i.dq = getelementptr [4 x i8], ptr %i.bn, i64 %i.dp
  store i32 245, ptr %i.dq, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.249.5.i = phi i32 [ %.249.4.i, %bb.ad ], [ %i.do, %bb.ae ] ; 3 uses
  %i.dr = getelementptr i8, ptr %i.bl, i64 8
  %i.ds = load i32, ptr %i.dr, align 4
  %.not52.6.i = icmp eq i32 %i.ds, 0
  br i1 %.not52.6.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = add i32 %.249.5.i, 1
  %i.du = sext i32 %.249.5.i to i64
  %i.dv = getelementptr [4 x i8], ptr %i.bn, i64 %i.du
  store i32 246, ptr %i.dv, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.249.6.i = phi i32 [ %.249.5.i, %bb.af ], [ %i.dt, %bb.ag ]
  %i.dw = load i32, ptr %i.cm, align 4
  %.not52.7.i = icmp eq i32 %i.dw, 0
  br i1 %.not52.7.i, label %bb.ai, label %.loopexit54.i

bb.ai:                                            ; preds = %bb.ah
  %i.dx = sext i32 %.249.6.i to i64
  %i.dy = getelementptr [4 x i8], ptr %i.bn, i64 %i.dx
  store i32 247, ptr %i.dy, align 4
  br label %.loopexit54.i

.loopexit54.i:                                    ; preds = %bb.ai, %bb.ah, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !12
  br i1 %2, label %.preheader53.i, label %.loopexit.i

.preheader53.i:                                   ; preds = %.loopexit54.i
  %i.dz = getelementptr i8, ptr %i.bl, i64 36
  %i.ea = load i32, ptr %i.dz, align 4            ; 5 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.preheader.i, label %.lr.ph69.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader53.i
  %wide.trip.count.i15 = zext nneg i32 %i.ea to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i15, 3     ; 3 uses
  %i.ec = icmp ult i32 %i.ea, 4
  br i1 %i.ec, label %.lr.ph.i16.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i15, 2147483644
  br label %.lr.ph.i16

.preheader.i17.unr-lcssa:                         ; preds = %.lr.ph.i16
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i17, label %.lr.ph.i16.epil.preheader

.lr.ph.i16.epil.preheader:                        ; preds = %.preheader.i17.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next84.i.3, %.preheader.i17.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i16.epil

.lr.ph.i16.epil:                                  ; preds = %.lr.ph.i16.epil, %.lr.ph.i16.epil.preheader
  %indvars.iv83.i.epil = phi i64 [ %indvars.iv83.i.epil.init, %.lr.ph.i16.epil.preheader ], [ %indvars.iv.next84.i.epil, %.lr.ph.i16.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i16.epil.preheader ], [ %epil.iter.next, %.lr.ph.i16.epil ]
  %i.ed = trunc nuw nsw i64 %indvars.iv83.i.epil to i32 ; 2 uses
  %i.ee = shl i32 %i.ed, 4
  %i.ef = or i32 %i.ee, %i.ed
  %i.eg = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83.i.epil
  store i32 %i.ef, ptr %i.eg, align 4
  %indvars.iv.next84.i.epil = add nuw nsw i64 %indvars.iv83.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i17, label %.lr.ph.i16.epil, !llvm.loop !18

.preheader.i17:                                   ; preds = %.lr.ph.i16.epil, %.preheader.i17.unr-lcssa
  %i.eh = icmp samesign ult i32 %i.ea, 8
  br i1 %i.eh, label %.lr.ph69.preheader.i, label %.loopexit.i

.lr.ph69.preheader.i:                             ; preds = %.preheader53.i, %.preheader.i17
  %.3.lcssa98.i = phi i32 [ %i.ea, %.preheader.i17 ], [ 0, %.preheader53.i ]
  %i.ei = zext nneg i32 %.3.lcssa98.i to i64      ; 4 uses
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.ei, 7
  %xtraiter39 = and i64 %i.ej, 3                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol

.lr.ph69.i.prol:                                  ; preds = %.lr.ph69.preheader.i, %.lr.ph69.i.prol
  %indvars.iv87.i.prol = phi i64 [ %indvars.iv.next88.i.prol, %.lr.ph69.i.prol ], [ %i.ei, %.lr.ph69.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph69.i.prol ], [ 0, %.lr.ph69.preheader.i ]
  %i.el = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv87.i.prol
  %i.em = trunc i64 %indvars.iv87.i.prol to i32
  %i.en = or i32 %i.em, 240
  store i32 %i.en, ptr %i.el, align 4
  %indvars.iv.next88.i.prol = add nuw nsw i64 %indvars.iv87.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter39
  br i1 %prol.iter.cmp.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol, !llvm.loop !19

.lr.ph69.i.prol.loopexit:                         ; preds = %.lr.ph69.i.prol, %.lr.ph69.preheader.i
  %indvars.iv87.i.unr = phi i64 [ %i.ei, %.lr.ph69.preheader.i ], [ %indvars.iv.next88.i.prol, %.lr.ph69.i.prol ]
  %i.eo = icmp samesign ult i64 %i.ek, 3
  br i1 %i.eo, label %.loopexit.i, label %.lr.ph69.i

.lr.ph.i16:                                       ; preds = %.lr.ph.i16, %.lr.ph.preheader.i.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next84.i.3, %.lr.ph.i16 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i16 ]
  %i.ep = trunc nuw nsw i64 %indvars.iv83.i to i32 ; 2 uses
  %i.eq = shl i32 %i.ep, 4
  %i.er = or i32 %i.eq, %i.ep
  %i.es = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83.i
  store i32 %i.er, ptr %i.es, align 16
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.et = trunc nuw nsw i64 %indvars.iv.next84.i to i32 ; 2 uses
  %i.eu = shl i32 %i.et, 4
  %i.ev = or i32 %i.eu, %i.et
  %i.ew = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next84.i
  store i32 %i.ev, ptr %i.ew, align 4
  %indvars.iv.next84.i.1 = or disjoint i64 %indvars.iv83.i, 2 ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv.next84.i.1 to i32 ; 2 uses
  %i.ey = shl i32 %i.ex, 4
  %i.ez = or i32 %i.ey, %i.ex
  %i.fa = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next84.i.1
  store i32 %i.ez, ptr %i.fa, align 8
  %indvars.iv.next84.i.2 = or disjoint i64 %indvars.iv83.i, 3 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv.next84.i.2 to i32 ; 2 uses
  %i.fc = shl i32 %i.fb, 4
  %i.fd = or i32 %i.fc, %i.fb
  %i.fe = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next84.i.2
  store i32 %i.fd, ptr %i.fe, align 4
  %indvars.iv.next84.i.3 = add nuw nsw i64 %indvars.iv83.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i17.unr-lcssa, label %.lr.ph.i16, !llvm.loop !20

.lr.ph69.i:                                       ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.3, %.lr.ph69.i ], [ %indvars.iv87.i.unr, %.lr.ph69.i.prol.loopexit ] ; 6 uses
  %i.ff = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv87.i
  %i.fg = trunc i64 %indvars.iv87.i to i32
  %i.fh = or i32 %i.fg, 240
  store i32 %i.fh, ptr %i.ff, align 4
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next88.i
  %i.fj = trunc i64 %indvars.iv.next88.i to i32
  %i.fk = or i32 %i.fj, 240
  store i32 %i.fk, ptr %i.fi, align 4
  %indvars.iv.next88.i.1 = add nuw nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.fl = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next88.i.1
  %i.fm = trunc i64 %indvars.iv.next88.i.1 to i32
  %i.fn = or i32 %i.fm, 240
  store i32 %i.fn, ptr %i.fl, align 4
  %indvars.iv.next88.i.2 = add nuw nsw i64 %indvars.iv87.i, 3 ; 2 uses
  %i.fo = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next88.i.2
  %i.fp = trunc i64 %indvars.iv.next88.i.2 to i32
  %i.fq = or i32 %i.fp, 240
  store i32 %i.fq, ptr %i.fo, align 4
  %indvars.iv.next88.i.3 = add nuw nsw i64 %indvars.iv87.i, 4 ; 2 uses
  %exitcond90.not.i.3 = icmp eq i64 %indvars.iv.next88.i.3, 8
  br i1 %exitcond90.not.i.3, label %.loopexit.i, label %.lr.ph69.i, !llvm.loop !21

.loopexit.i:                                      ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i, %.preheader.i17, %.loopexit54.i
  %.in.v.i = phi ptr [ %i.a, %.preheader.i17 ], [ %i.bn, %.loopexit54.i ], [ %i.a, %.lr.ph69.i ], [ %i.a, %.lr.ph69.i.prol.loopexit ] ; 8 uses
  %i.fr = getelementptr i8, ptr %0, i64 72        ; 8 uses
  %i.fs = getelementptr i8, ptr %0, i64 88        ; 8 uses
  %i.ft = load i32, ptr %.in.v.i, align 4         ; 2 uses
  %i.fu = and i32 %i.ft, 15
  %i.fv = lshr i32 %i.ft, 4
  %i.fw = and i32 %i.fv, 15
  %i.fx = load ptr, ptr %i.fr, align 8
  %i.fy = load ptr, ptr %i.fs, align 8
  %i.fz = tail call i32 %i.fx(ptr noundef %i.fy, i16 noundef zeroext %1, i32 noundef %i.fu, i32 noundef %i.fw) #16, !inline_history !22
  %.not51.i = icmp eq i32 %i.fz, 0
  br i1 %.not51.i, label %bb.aj, label %hdmi_std_setup_channel_mapping.exit

bb.aj:                                            ; preds = %.loopexit.i
  %.in.1.i = getelementptr i8, ptr %.in.v.i, i64 4
  %i.ga = load i32, ptr %.in.1.i, align 4         ; 2 uses
  %i.gb = and i32 %i.ga, 15
  %i.gc = lshr i32 %i.ga, 4
  %i.gd = and i32 %i.gc, 15
  %i.ge = load ptr, ptr %i.fr, align 8
  %i.gf = load ptr, ptr %i.fs, align 8
  %i.gg = tail call i32 %i.ge(ptr noundef %i.gf, i16 noundef zeroext %1, i32 noundef %i.gb, i32 noundef %i.gd) #16, !inline_history !22
  %.not51.1.i = icmp eq i32 %i.gg, 0
  br i1 %.not51.1.i, label %bb.ak, label %hdmi_std_setup_channel_mapping.exit

bb.ak:                                            ; preds = %bb.aj
  %.in.2.i = getelementptr i8, ptr %.in.v.i, i64 8
  %i.gh = load i32, ptr %.in.2.i, align 4         ; 2 uses
  %i.gi = and i32 %i.gh, 15
  %i.gj = lshr i32 %i.gh, 4
  %i.gk = and i32 %i.gj, 15
  %i.gl = load ptr, ptr %i.fr, align 8
  %i.gm = load ptr, ptr %i.fs, align 8
  %i.gn = tail call i32 %i.gl(ptr noundef %i.gm, i16 noundef zeroext %1, i32 noundef %i.gi, i32 noundef %i.gk) #16, !inline_history !22
  %.not51.2.i = icmp eq i32 %i.gn, 0
  br i1 %.not51.2.i, label %bb.al, label %hdmi_std_setup_channel_mapping.exit

bb.al:                                            ; preds = %bb.ak
  %.in.3.i = getelementptr i8, ptr %.in.v.i, i64 12
  %i.go = load i32, ptr %.in.3.i, align 4         ; 2 uses
  %i.gp = and i32 %i.go, 15
  %i.gq = lshr i32 %i.go, 4
  %i.gr = and i32 %i.gq, 15
  %i.gs = load ptr, ptr %i.fr, align 8
  %i.gt = load ptr, ptr %i.fs, align 8
  %i.gu = tail call i32 %i.gs(ptr noundef %i.gt, i16 noundef zeroext %1, i32 noundef %i.gp, i32 noundef %i.gr) #16, !inline_history !22
  %.not51.3.i = icmp eq i32 %i.gu, 0
  br i1 %.not51.3.i, label %bb.am, label %hdmi_std_setup_channel_mapping.exit

bb.am:                                            ; preds = %bb.al
  %.in.4.i = getelementptr i8, ptr %.in.v.i, i64 16
  %i.gv = load i32, ptr %.in.4.i, align 4         ; 2 uses
  %i.gw = and i32 %i.gv, 15
  %i.gx = lshr i32 %i.gv, 4
  %i.gy = and i32 %i.gx, 15
  %i.gz = load ptr, ptr %i.fr, align 8
  %i.ha = load ptr, ptr %i.fs, align 8
  %i.hb = tail call i32 %i.gz(ptr noundef %i.ha, i16 noundef zeroext %1, i32 noundef %i.gw, i32 noundef %i.gy) #16, !inline_history !22
  %.not51.4.i = icmp eq i32 %i.hb, 0
  br i1 %.not51.4.i, label %bb.an, label %hdmi_std_setup_channel_mapping.exit

bb.an:                                            ; preds = %bb.am
  %.in.5.i = getelementptr i8, ptr %.in.v.i, i64 20
  %i.hc = load i32, ptr %.in.5.i, align 4         ; 2 uses
  %i.hd = and i32 %i.hc, 15
  %i.he = lshr i32 %i.hc, 4
  %i.hf = and i32 %i.he, 15
  %i.hg = load ptr, ptr %i.fr, align 8
  %i.hh = load ptr, ptr %i.fs, align 8
  %i.hi = tail call i32 %i.hg(ptr noundef %i.hh, i16 noundef zeroext %1, i32 noundef %i.hd, i32 noundef %i.hf) #16, !inline_history !22
  %.not51.5.i = icmp eq i32 %i.hi, 0
  br i1 %.not51.5.i, label %bb.ao, label %hdmi_std_setup_channel_mapping.exit

bb.ao:                                            ; preds = %bb.an
  %.in.6.i = getelementptr i8, ptr %.in.v.i, i64 24
  %i.hj = load i32, ptr %.in.6.i, align 4         ; 2 uses
  %i.hk = and i32 %i.hj, 15
  %i.hl = lshr i32 %i.hj, 4
  %i.hm = and i32 %i.hl, 15
  %i.hn = load ptr, ptr %i.fr, align 8
  %i.ho = load ptr, ptr %i.fs, align 8
  %i.hp = tail call i32 %i.hn(ptr noundef %i.ho, i16 noundef zeroext %1, i32 noundef %i.hk, i32 noundef %i.hm) #16, !inline_history !22
  %.not51.6.i = icmp eq i32 %i.hp, 0
  br i1 %.not51.6.i, label %bb.ap, label %hdmi_std_setup_channel_mapping.exit

bb.ap:                                            ; preds = %bb.ao
  %.in.7.i = getelementptr i8, ptr %.in.v.i, i64 28
  %i.hq = load i32, ptr %.in.7.i, align 4         ; 2 uses
  %i.hr = and i32 %i.hq, 15
  %i.hs = lshr i32 %i.hq, 4
  %i.ht = and i32 %i.hs, 15
  %i.hu = load ptr, ptr %i.fr, align 8
  %i.hv = load ptr, ptr %i.fs, align 8
  %i.hw = tail call i32 %i.hu(ptr noundef %i.hv, i16 noundef zeroext %1, i32 noundef %i.hr, i32 noundef %i.ht) #16, !inline_history !22 ; 0 uses
  br label %hdmi_std_setup_channel_mapping.exit

hdmi_std_setup_channel_mapping.exit:              ; preds = %.loopexit.i, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.hx = tail call fastcc i32 @get_channel_allocation_order(i32 noundef %3) #17, !srcloc !26 ; 2 uses
  %i.hy = icmp samesign ult i32 %i.hx, 50
  %i.hz = zext nneg i32 %i.hx to i64
  %i.ia = getelementptr [44 x i8], ptr @channel_allocations, i64 %i.hz ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 36
  %i.ic = getelementptr i8, ptr %i.ia, i64 4
  br i1 %i.hy, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %hdmi_std_setup_channel_mapping.exit
  store i64 0, ptr %5, align 1
  br label %hdmi_setup_fake_chmap.exit

.split.us.i:                                      ; preds = %hdmi_std_setup_channel_mapping.exit, %from_cea_slot.exit.us.i
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i22, %from_cea_slot.exit.us.i ], [ 0, %hdmi_std_setup_channel_mapping.exit ] ; 4 uses
  %i.id = load i32, ptr %i.ib, align 4
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.i21, %i.ie
  br i1 %i.if, label %bb.aq, label %from_cea_slot.exit.us.i

bb.aq:                                            ; preds = %.split.us.i
  %i.ig = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i21
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = trunc i32 %i.ih to i8
  %i.ij = and i8 %i.ii, 15                        ; 2 uses
  %i.ik = icmp samesign ugt i8 %i.ij, 7
  br i1 %i.ik, label %from_cea_slot.exit.us.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %narrow.i.us.i = sub nuw nsw i8 7, %i.ij
  %i.il = zext nneg i8 %narrow.i.us.i to i64
  %i.im = getelementptr [4 x i8], ptr %i.ic, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4            ; 2 uses
  %i.io = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.in)
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %.split.i.i.us.i, label %.loopexit.fold.split24.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.ar
  %i.iq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.in, i1 true)
  switch i32 %i.iq, label %.loopexit.fold.split24.i.i.us.i [
    i32 0, label %from_cea_slot.exit.us.i
    i32 2, label %.loopexit.fold.split.i.i.us.i
    i32 5, label %.loopexit.fold.split10.i.i.us.i
    i32 7, label %.loopexit.fold.split11.i.i.us.i
    i32 10, label %.loopexit.fold.split12.i.i.us.i
    i32 1, label %.loopexit.fold.split13.i.i.us.i
    i32 8, label %.loopexit.fold.split14.i.i.us.i
    i32 9, label %.loopexit.fold.split15.i.i.us.i
    i32 6, label %.loopexit.fold.split16.i.i.us.i
    i32 3, label %.loopexit.fold.split17.i.i.us.i
    i32 4, label %.loopexit.fold.split18.i.i.us.i
    i32 13, label %.loopexit.fold.split19.i.i.us.i
    i32 15, label %.loopexit.fold.split20.i.i.us.i
    i32 11, label %.loopexit.fold.split21.i.i.us.i
    i32 12, label %.loopexit.fold.split22.i.i.us.i
    i32 16, label %.loopexit.fold.split23.i.i.us.i
    i32 14, label %bb.as
  ]

bb.as:                                            ; preds = %.split.i.i.us.i
  br label %from_cea_slot.exit.us.i

.loopexit.fold.split23.i.i.us.i:                  ; preds = %.split.i.i.us.i
  br label %from_cea_slot.exit.us.i

.loopexit.fold.split22.i.i.us.i:                  ; preds = %.split.i.i.us.i
  br label %from_cea_slot.exit.us.i

.loopexit.fold.split21.i.i.us.i:                  ; preds = %.split.i.i.us.i
end_hunk_0
