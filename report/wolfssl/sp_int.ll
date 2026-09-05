Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@sp_exptmod_nct:bb.a

.preheader.i293.i:                                ; preds = %bb.y
  %.not126 = icmp eq i16 %i.dw, 0
  br i1 %.not126, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i293.i
  %i.dz = zext i16 %i.dw to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.ab
  %indvars.iv.next.i295.i124 = add nsw i64 %indvars.iv.i294.i123, -1
  %i.ea = icmp sgt i64 %indvars.iv.i294.i123, 1
  br i1 %i.ea, label %bb.aa, label %.loopexit.i, !llvm.loop !1

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv.i294.i123 = phi i64 [ %i.dz, %.lr.ph ], [ %indvars.iv.next.i295.i124, %bb.z ] ; 4 uses
  %i.eb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i294.i123
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !36 ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i294.i123
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !36 ; 2 uses
  %i.ef = icmp ugt i64 %i.ec, %i.ee
  br i1 %i.ef, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = icmp ult i64 %i.ec, %i.ee
  br i1 %i.eg, label %_sp_cmp_abs.exit.i, label %bb.z, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.z, %bb.aa, %.preheader.i293.i, %.epilog-lcssa
  %i.eh = icmp ult i16 %i.dw, 129
  br i1 %i.eh, label %sp_mod.exit.i, label %.thread375.i

sp_mod.exit.i:                                    ; preds = %.loopexit.i
  %i.ei = tail call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.cs) ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ac, label %.thread375.i

bb.ac:                                            ; preds = %sp_mod.exit.i
  %i.ek = load i16, ptr %i.cs, align 8, !tbaa !40
  %i.el = icmp eq i16 %i.ek, 0
  br i1 %i.el, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.em, align 8, !tbaa !36
  br label %.thread375.sink.split.i

_sp_cmp_abs.exit.i:                               ; preds = %bb.ab, %bb.y
  %i.en = icmp eq i16 %i.dw, 0
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_sp_cmp_abs.exit.i
  store i64 0, ptr %i.du, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.af:                                            ; preds = %_sp_cmp_abs.exit.i
  %i.eo = zext i16 %i.dw to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = shl nuw nsw i64 %i.eo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull readonly align 8 %i.ep, i64 %i.eq, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.af, %bb.ae
  %i.er = phi i16 [ %.pre.i.i, %bb.af ], [ 0, %bb.ae ]
  store i16 %i.er, ptr %i.cs, align 8, !tbaa !40
  br label %bb.ag

bb.ag:                                            ; preds = %_sp_copy.exit.i, %bb.ac
  %.val.i = load i64, ptr %i.z, align 8, !tbaa !36 ; 2 uses
  %i.es = mul i64 %.val.i, 3
  %i.et = xor i64 %i.es, 2                        ; 2 uses
  %i.eu = mul i64 %i.et, %.val.i                  ; 2 uses
  %i.ev = sub i64 1, %i.eu                        ; 2 uses
  %i.ew = sub i64 2, %i.eu
  %i.ex = mul i64 %i.ew, %i.et
  %i.ey = mul i64 %i.ev, %i.ev                    ; 3 uses
  %i.ez = add i64 %i.ey, 1
  %i.fa = mul i64 %i.ex, %i.ez
  %i.fb = mul i64 %i.ey, %i.ey                    ; 3 uses
  %i.fc = add i64 %i.fb, 1
  %i.fd = mul i64 %i.fa, %i.fc
  %i.fe = mul i64 %i.fb, %i.fb
  %.neg.i.i = xor i64 %i.fe, -1
  %.neg19.i.i = mul i64 %i.fd, %.neg.i.i          ; 7 uses
  %i.ff = load ptr, ptr %i.a, align 16, !tbaa !49 ; 8 uses
  %i.fg = tail call i32 @sp_mont_norm(ptr noundef %i.ff, ptr noundef nonnull readonly %2) ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ah, label %.thread375.i

bb.ah:                                            ; preds = %bb.ag
  %i.fi = tail call i32 @sp_mul(ptr noundef nonnull %i.cs, ptr noundef %i.ff, ptr noundef nonnull %i.cs) ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ai, label %.thread375.i

bb.ai:                                            ; preds = %bb.ah
  %i.fk = load i16, ptr %i.cs, align 8, !tbaa !40
  %i.fl = zext i16 %i.fk to i32
  %i.fm = add nuw nsw i32 %i.fl, 1
  %i.fn = tail call fastcc i32 @_sp_div(ptr noundef nonnull %i.cs, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.cs, i32 noundef %i.fm) ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.aj, label %.thread375.i

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load i16, ptr %i.cs, align 8, !tbaa !40 ; 2 uses
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 0, ptr %i.fr, align 8, !tbaa !36
  br label %.lr.ph.preheader.i

bb.al:                                            ; preds = %bb.aj
  %i.fs = zext i16 %i.fp to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fu = shl nuw nsw i64 %i.fs, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr nonnull readonly align 8 %i.du, i64 %i.fu, i1 false)
  %.pre.i297.i = load i16, ptr %i.cs, align 8, !tbaa !40
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.al, %bb.ak
  %i.fv = phi i16 [ %.pre.i297.i, %bb.al ], [ 0, %bb.ak ]
  store i16 %i.fv, ptr %i.ff, align 8, !tbaa !40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %.lr.ph.preheader.i
  %.1264399.i = phi i32 [ %i.fy, %bb.am ], [ 1, %.lr.ph.preheader.i ]
  %i.fw = tail call i32 @sp_sqr(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ff) ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.am, label %.thread375.i

bb.am:                                            ; preds = %.lr.ph.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ff, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  %i.fy = add nuw nsw i32 %.1264399.i, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.fy, %.0262.i
  br i1 %exitcond.not, label %.lr.ph401.i.preheader, label %.lr.ph.i, !llvm.loop !147

.lr.ph401.i.preheader:                            ; preds = %bb.am
  %umax = tail call i64 @llvm.umax.i64(i64 %i.co, i64 2)
  br label %.lr.ph401.i

.lr.ph401.i:                                      ; preds = %.lr.ph401.i.preheader, %bb.an
  %indvars.iv430.i = phi i64 [ %indvars.iv.next431.i, %bb.an ], [ 1, %.lr.ph401.i.preheader ] ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv430.i ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !49
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !49 ; 2 uses
  %i.gd = tail call i32 @sp_mul(ptr noundef %i.gb, ptr noundef nonnull %i.cs, ptr noundef %i.gc) ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.an, label %.thread375.i

bb.an:                                            ; preds = %.lr.ph401.i
  tail call fastcc void @_sp_mont_red(ptr noundef %i.gc, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  %indvars.iv.next431.i = add nuw nsw i64 %indvars.iv430.i, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next431.i, %umax
  br i1 %exitcond67.not, label %._crit_edge.i, label %.lr.ph401.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %bb.an
  %i.gf = add nsw i64 %i.co, -1                   ; 2 uses
  %i.gg = add nsw i32 %.5.i311.i, -1
  %i.gh = ashr i32 %i.gg, 6                       ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.gj = add nsw i32 %i.gh, -1                   ; 3 uses
  %i.gk = sext i32 %i.gh to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !36
  %i.gn = srem i32 %.5.i311.i, 64                 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  %spec.store.select.i = select i1 %i.go, i32 64, i32 %i.gn ; 5 uses
  %i.gp = sub nsw i32 64, %spec.store.select.i
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl i64 %i.gm, %i.gq                    ; 3 uses
  %.not286.i = icmp slt i32 %.5.i311.i, %.0262.i
  br i1 %.not286.i, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gs = icmp slt i32 %spec.store.select.i, %.0262.i
  %i.gt = sub nuw nsw i32 64, %.0262.i            ; 2 uses
  %i.gu = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gv = lshr i64 %i.gr, %i.gu
  %i.gw = and i64 %i.gv, %i.gf                    ; 2 uses
  br i1 %i.gs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gx = add nsw i32 %i.gh, -2
  %i.gy = sext i32 %i.gj to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !36 ; 2 uses
  %i.hb = sub nsw i32 %.0262.i, %spec.store.select.i ; 2 uses
  %i.hc = sub nsw i32 64, %i.hb                   ; 2 uses
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = lshr i64 %i.ha, %i.hd
  %i.hf = or i64 %i.he, %i.gw
  %i.hg = zext nneg i32 %i.hb to i64
  %i.hh = shl i64 %i.ha, %i.hg
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hi = zext nneg i32 %.0262.i to i64
  %i.hj = shl i64 %i.gr, %i.hi
  %i.hk = sub nsw i32 %spec.store.select.i, %.0262.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3266.i = phi i32 [ %i.gx, %bb.ap ], [ %i.gj, %bb.aq ]
  %.0240.in.i = phi i64 [ %i.hf, %bb.ap ], [ %i.gw, %bb.aq ]
  %.0231.i = phi i32 [ %i.hc, %bb.ap ], [ %i.hk, %bb.aq ]
  %.0227.i = phi i64 [ %i.hh, %bb.ap ], [ %i.hj, %bb.aq ]
  %sext.i = shl i64 %.0240.in.i, 32
  %i.hl = ashr exact i64 %sext.i, 29
  %i.hm = getelementptr inbounds i8, ptr %i.a, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !49 ; 3 uses
  %i.ho = load i16, ptr %i.hn, align 8, !tbaa !40 ; 2 uses
  %i.hp = icmp eq i16 %i.ho, 0
  br i1 %i.hp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i64 0, ptr %i.ds, align 8, !tbaa !36
  br label %.thread469.i

bb.at:                                            ; preds = %bb.ar
  %i.hq = zext i16 %i.ho to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hs = shl nuw nsw i64 %i.hq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull readonly align 8 %i.hr, i64 %i.hs, i1 false)
  %.pre.i299.i = load i16, ptr %i.hn, align 8, !tbaa !40
  br label %.thread469.i

.thread469.i:                                     ; preds = %bb.at, %bb.as
  %i.ht = phi i16 [ %.pre.i299.i, %bb.at ], [ 0, %bb.as ]
  store i16 %i.ht, ptr %i.cq, align 8, !tbaa !40
  br label %.lr.ph413.i

bb.au:                                            ; preds = %._crit_edge.i
  %i.hu = tail call i32 @sp_mont_norm(ptr noundef nonnull %i.cq, ptr noundef nonnull readonly %2) ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %..lr.ph413.i_crit_edge, label %.thread375.i

..lr.ph413.i_crit_edge:                           ; preds = %bb.au
  %.pre = sub nuw nsw i32 64, %.0262.i            ; 2 uses
  %.pre68 = zext nneg i32 %.pre to i64
  br label %.lr.ph413.i

.lr.ph413.i:                                      ; preds = %..lr.ph413.i_crit_edge, %.thread469.i
  %.pre-phi69 = phi i64 [ %.pre68, %..lr.ph413.i_crit_edge ], [ %i.gu, %.thread469.i ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre, %..lr.ph413.i_crit_edge ], [ %i.gt, %.thread469.i ]
  %.1228476.i = phi i64 [ %i.gr, %..lr.ph413.i_crit_edge ], [ %.0227.i, %.thread469.i ]
  %.1232475.i = phi i32 [ %spec.store.select.i, %..lr.ph413.i_crit_edge ], [ %.0231.i, %.thread469.i ] ; 3 uses
  %.4267474.i = phi i32 [ %i.gj, %..lr.ph413.i_crit_edge ], [ %.3266.i, %.thread469.i ] ; 2 uses
  %i.hw = zext nneg i32 %.0262.i to i64           ; 2 uses
  %i.hx = icmp sgt i32 %.4267474.i, -1
  %i.hy = icmp sge i32 %.1232475.i, %.0262.i
  %i.hz = select i1 %i.hx, i1 true, i1 %i.hy
  br i1 %i.hz, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %.lr.ph413.i, %.preheader.i.backedge
  %.6269.i = phi i32 [ %.6269.i.be, %.preheader.i.backedge ], [ %.4267474.i, %.lr.ph413.i ] ; 3 uses
  %.3234.i = phi i32 [ %.3234.i.be, %.preheader.i.backedge ], [ %.1232475.i, %.lr.ph413.i ] ; 2 uses
  %.3230.i = phi i64 [ %.3230.i.be, %.preheader.i.backedge ], [ %.1228476.i, %.lr.ph413.i ]
  %.0226.i = phi i32 [ %.0226.i.be, %.preheader.i.backedge ], [ 0, %.lr.ph413.i ] ; 2 uses
  %i.ia = icmp eq i32 %.3234.i, 0
  br i1 %i.ia, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.preheader.i
  %i.ib = add nsw i32 %.6269.i, -1
  %i.ic = sext i32 %.6269.i to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !36
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader.i
  %.7270.i = phi i32 [ %i.ib, %bb.av ], [ %.6269.i, %.preheader.i ] ; 8 uses
  %.4235.i = phi i32 [ 64, %bb.av ], [ %.3234.i, %.preheader.i ] ; 3 uses
  %.4.i = phi i64 [ %i.ie, %bb.av ], [ %.3230.i, %.preheader.i ] ; 3 uses
  %.not287.i = icmp sgt i64 %.4.i, -1
  br i1 %.not287.i, label %bb.ax, label %.critedge3.i

bb.ax:                                            ; preds = %bb.aw
  %i.if = add nsw i32 %.4235.i, -1                ; 2 uses
  %i.ig = shl nuw i64 %.4.i, 1                    ; 2 uses
  %i.ih = add nuw nsw i32 %.0226.i, 1             ; 2 uses
  %i.ii = icmp sgt i32 %.7270.i, -1
  %i.ij = icmp sgt i32 %.4235.i, %.0262.i
  %i.ik = or i1 %i.ii, %i.ij
  br i1 %i.ik, label %.preheader.i.backedge, label %.critedge3.i

.preheader.i.backedge:                            ; preds = %bb.ax, %.thread351.i
  %.6269.i.be = phi i32 [ %.7270.i, %bb.ax ], [ %.8271.i, %.thread351.i ]
  %.3234.i.be = phi i32 [ %i.if, %bb.ax ], [ %.6237.i, %.thread351.i ]
  %.3230.i.be = phi i64 [ %i.ig, %bb.ax ], [ %.6.i, %.thread351.i ]
  %.0226.i.be = phi i32 [ %i.ih, %bb.ax ], [ 0, %.thread351.i ]
  br label %.preheader.i, !llvm.loop !149

.critedge3.i:                                     ; preds = %bb.ax, %bb.aw
  %.5236.i = phi i32 [ %.4235.i, %bb.aw ], [ %i.if, %bb.ax ] ; 5 uses
  %.5.i = phi i64 [ %.4.i, %bb.aw ], [ %i.ig, %bb.ax ] ; 2 uses
  %.1.i = phi i32 [ %.0226.i, %bb.aw ], [ %i.ih, %bb.ax ]
  %i.il = icmp slt i32 %.7270.i, 0
  %.not288.i = icmp slt i32 %.5236.i, %.0262.i    ; 2 uses
  %or.cond291.i = select i1 %i.il, i1 %.not288.i, i1 false ; 2 uses
  %i.im = select i1 %or.cond291.i, i32 0, i32 %.0262.i
  %.2.i = add nsw i32 %i.im, %.1.i                ; 2 uses
  %i.in = icmp sgt i32 %.2.i, 0
  br i1 %i.in, label %.lr.ph405.i, label %._crit_edge406.i

.lr.ph405.i:                                      ; preds = %.critedge3.i, %bb.ay
  %.3404.i = phi i32 [ %i.iq, %bb.ay ], [ %.2.i, %.critedge3.i ] ; 2 uses
  %i.io = tail call i32 @sp_sqr(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq) ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.ay, label %.thread375.i

bb.ay:                                            ; preds = %.lr.ph405.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.cq, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  %i.iq = add nsw i32 %.3404.i, -1
  %i.ir = icmp samesign ugt i32 %.3404.i, 1
  br i1 %i.ir, label %.lr.ph405.i, label %._crit_edge406.i, !llvm.loop !150

._crit_edge406.i:                                 ; preds = %bb.ay, %.critedge3.i
  br i1 %or.cond291.i, label %.critedge.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge406.i
  %i.is = icmp eq i32 %.5236.i, 0
  br i1 %i.is, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.it = add nsw i32 %.7270.i, -1
  %i.iu = sext i32 %.7270.i to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !36 ; 2 uses
  %i.ix = lshr i64 %i.iw, %.pre-phi69
  %i.iy = shl i64 %i.iw, %i.hw
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.iz = lshr i64 %.5.i, %.pre-phi69             ; 2 uses
  br i1 %.not288.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ja = add nsw i32 %.7270.i, -1
  %i.jb = sext i32 %.7270.i to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.jb
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !36 ; 2 uses
  %i.je = sub nsw i32 %.0262.i, %.5236.i          ; 2 uses
  %i.jf = sub nsw i32 64, %i.je                   ; 2 uses
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = lshr i64 %i.jd, %i.jg
  %i.ji = or i64 %i.jh, %i.iz
  %i.jj = zext nneg i32 %i.je to i64
  %i.jk = shl i64 %i.jd, %i.jj
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.jl = shl i64 %.5.i, %i.hw
  %i.jm = sub nsw i32 %.5236.i, %.0262.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %.8271.i = phi i32 [ %i.it, %bb.ba ], [ %i.ja, %bb.bc ], [ %.7270.i, %bb.bd ] ; 2 uses
  %.3243.in.i = phi i64 [ %i.ix, %bb.ba ], [ %i.ji, %bb.bc ], [ %i.iz, %bb.bd ]
  %.6237.i = phi i32 [ %.pre-phi, %bb.ba ], [ %i.jf, %bb.bc ], [ %i.jm, %bb.bd ] ; 3 uses
  %.6.i = phi i64 [ %i.iy, %bb.ba ], [ %i.jk, %bb.bc ], [ %i.jl, %bb.bd ]
  %i.jn = and i64 %.3243.in.i, %i.gf
  %i.jo = shl nuw nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !49
  %i.jr = tail call i32 @sp_mul(ptr noundef nonnull %i.cq, ptr noundef %i.jq, ptr noundef nonnull %i.cq) ; 2 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.thread351.i, label %.thread375.i

.thread351.i:                                     ; preds = %bb.be
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.cq, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  %i.jt = icmp sgt i32 %.8271.i, -1
  %i.ju = icmp sge i32 %.6237.i, %.0262.i
  %i.jv = select i1 %i.jt, i1 true, i1 %i.ju
  br i1 %i.jv, label %.preheader.i.backedge, label %.critedge.i

.critedge.i:                                      ; preds = %.thread351.i, %._crit_edge406.i, %.lr.ph413.i
  %.9.i = phi i32 [ %.1232475.i, %.lr.ph413.i ], [ %.5236.i, %._crit_edge406.i ], [ %.6237.i, %.thread351.i ] ; 2 uses
  %i.jw = icmp sgt i32 %.9.i, 0
  br i1 %i.jw, label %bb.bf, label %.thread372.i

bb.bf:                                            ; preds = %.critedge.i
  %i.jx = load i64, ptr %i.gi, align 8, !tbaa !36
  %i.jy = zext nneg i32 %.9.i to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bk, %bb.bf
  %indvars.iv433.i = phi i64 [ %i.jy, %bb.bf ], [ %indvars.iv.next434.i, %bb.bk ] ; 2 uses
  %indvars.iv.next434.i = add nsw i64 %indvars.iv433.i, -1 ; 2 uses
  %i.jz = tail call i32 @sp_sqr(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq) ; 2 uses
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.bh, label %.thread375.i

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.cq, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  %i.kb = shl nuw i64 1, %indvars.iv.next434.i
  %i.kc = and i64 %i.kb, %i.jx
  %.not290.i = icmp eq i64 %i.kc, 0
  br i1 %.not290.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kd = tail call i32 @sp_mul(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cq) ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.bj, label %.thread375.i

bb.bj:                                            ; preds = %bb.bi
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.cq, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.kf = icmp samesign ugt i64 %indvars.iv433.i, 1
  br i1 %i.kf, label %bb.bg, label %.thread372.i, !llvm.loop !151

.thread372.i:                                     ; preds = %bb.bk, %.critedge.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.cq, ptr noundef nonnull readonly %2, i64 noundef %.neg19.i.i, i32 noundef 0)
  %i.kg = load i16, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.kh = icmp eq i16 %i.kg, 0
  br i1 %i.kh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread372.i
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ki, align 8, !tbaa !36
  br label %.thread375.sink.split.i

bb.bm:                                            ; preds = %.thread372.i
  %i.kj = zext i16 %i.kg to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kl = shl nuw nsw i64 %i.kj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kk, ptr nonnull readonly align 8 %i.ds, i64 %i.kl, i1 false)
  %.pre.i301.i = load i16, ptr %i.cq, align 8, !tbaa !40
  br label %.thread375.sink.split.i

.thread375.sink.split.i:                          ; preds = %bb.bm, %bb.bl, %bb.ad
  %.sink.i = phi i16 [ 0, %bb.ad ], [ %.pre.i301.i, %bb.bm ], [ 0, %bb.bl ]
  store i16 %.sink.i, ptr %3, align 8, !tbaa !46
  br label %.thread375.i

.thread375.i:                                     ; preds = %.lr.ph.i, %.lr.ph401.i, %bb.be, %.lr.ph405.i, %bb.bi, %bb.bg, %.thread375.sink.split.i, %bb.au, %bb.ai, %bb.ah, %bb.ag, %sp_mod.exit.i, %.loopexit.i
  %.23381.i = phi i32 [ %i.fg, %bb.ag ], [ %i.gd, %.lr.ph401.i ], [ %i.io, %.lr.ph405.i ], [ %i.fi, %bb.ah ], [ %i.jr, %bb.be ], [ -98, %.loopexit.i ], [ %i.ei, %sp_mod.exit.i ], [ %i.hu, %bb.au ], [ 0, %.thread375.sink.split.i ], [ %i.kd, %bb.bi ], [ %i.fn, %bb.ai ], [ %i.jz, %bb.bg ], [ %i.fw, %.lr.ph.i ]
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.bg) #20
  br label %_sp_exptmod_nct.exit

_sp_exptmod_nct.exit:                             ; preds = %.thread.i, %bb.s, %.thread375.i
  %.23381389.i = phi i32 [ -98, %.thread.i ], [ %.23381.i, %.thread375.i ], [ -97, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.i, %bb.b, %bb.f, %_sp_exptmod_nct.exit, %bb.k, %bb.h, %bb.d, %bb.a
  %.1 = phi i32 [ -98, %bb.a ], [ %.23381389.i, %_sp_exptmod_nct.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ -98, %bb.b ], [ %i.ae, %bb.k ], [ -98, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_div_2d(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond.not48 = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %1, -1
  %or.cond3.not = and i1 %i.c, %or.cond.not48
  br i1 %or.cond3.not, label %bb.b, label %sp_copy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 7 uses
  %.not25.i = icmp eq i16 %i.d, 0                 ; 3 uses
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.d to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.f = icmp sgt i64 %indvars.iv.i99, 1
  br i1 %i.f, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i99 = phi i64 [ %i.e, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i99, -1 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i99
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.k = shl nuw nsw i32 %i.j, 6                  ; 2 uses
  %i.l = icmp ugt i64 %i.h, 4294967295
  br i1 %i.l, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.m = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %reass.sub.i = add nuw nsw i32 %i.k, 64
  %i.o = sub nuw nsw i32 %reass.sub.i, %i.n
  br label %sp_count_bits.exit

bb.f:                                             ; preds = %.critedge.i
  %i.p = add nuw nsw i32 %i.k, 64                 ; 2 uses
  %i.q = icmp sgt i64 %i.h, -1
  br i1 %i.q, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.f, %.lr.ph36.i
  %.035.i = phi i64 [ %i.s, %.lr.ph36.i ], [ %i.h, %bb.f ]
  %.234.i = phi i32 [ %i.r, %.lr.ph36.i ], [ %i.p, %bb.f ]
  %i.r = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.s = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.d, %.lr.ph36.i, %bb.b, %.lr.ph.preheader.i, %bb.f
  %.5.i = phi i32 [ %i.p, %bb.f ], [ %i.r, %.lr.ph36.i ], [ %i.o, %.lr.ph.preheader.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  %.not = icmp sgt i32 %.5.i, %1
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %sp_count_bits.exit
  store volatile i16 0, ptr %2, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store volatile i64 0, ptr %i.u, align 8, !tbaa !36
  %.not52 = icmp eq ptr %3, null
  %.not.i53 = icmp eq ptr %0, %3
  %or.cond = or i1 %.not52, %.not.i53
  br i1 %or.cond, label %sp_copy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39
  %i.x = icmp ugt i16 %i.d, %i.w
  br i1 %i.x, label %sp_copy.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  br i1 %.not25.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !36
  br label %sp_copy.exit.sink.split

bb.j:                                             ; preds = %.thread.i
  %i.z = zext i16 %i.d to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull readonly align 8 %i.ab, i64 %i.ac, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %sp_copy.exit.sink.split

bb.k:                                             ; preds = %sp_count_bits.exit
  %i.ad = icmp ne ptr %3, null                    ; 2 uses
  %.not.i55 = icmp ne ptr %0, %3
  %or.cond.not = and i1 %.not.i55, %i.ad
  br i1 %or.cond.not, label %bb.l, label %sp_copy.exit62.thread

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
end_hunk_0
