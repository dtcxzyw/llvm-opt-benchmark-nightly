Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec?download=true
inline.NumInlined: 233
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_aac_decode_ics:bb.a
  %i.jx = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 %i.jw) ; 3 uses
  %i.jy = lshr i32 %i.jx, 3
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 1, !tbaa !33
  %i.kc = tail call i32 @llvm.bswap.i32(i32 %i.kb)
  %i.kd = and i32 %i.jx, 7
  %i.ke = shl i32 %i.kc, %i.kd
  %i.kf = add nsw i32 %i.ju, 32
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = add i32 %i.kg, %i.jr
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.ki ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !33
  %i.kl = sext i16 %i.kk to i32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !33
  %i.ko = sext i16 %i.kn to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.ab, %bb.aa, %bb.z
  %.167.i.i = phi i32 [ %i.ix, %bb.z ], [ %i.kl, %bb.ab ], [ %i.jr, %bb.aa ]
  %.165.i.i = phi i32 [ %i.ij, %bb.z ], [ %i.jx, %bb.ab ], [ %i.jd, %bb.aa ]
  %.1.i.i = phi i32 [ %i.ja, %bb.z ], [ %i.ko, %bb.ab ], [ %i.ju, %bb.aa ]
  %i.kp = add i32 %.1.i.i, %.165.i.i
  %i.kq = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 %i.kp)
  store i32 %i.kq, ptr %i.f, align 8, !tbaa !93
  %i.kr = add nsw i32 %.sroa.0.190.i, -60
  %i.ks = add nsw i32 %i.kr, %.167.i.i            ; 4 uses
  %i.kt = icmp ugt i32 %i.ks, 255
  br i1 %i.kt, label %decode_scalefactors.exit, label %bb.ac

bb.ac:                                            ; preds = %get_vlc2.exit.i
  %i.ku = add nsw i32 %i.ks, -100
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y, %bb.q, %.lr.ph.i96
  %.sink113.i = phi i64 [ %i.cq, %bb.ac ], [ %i.fl, %bb.q ], [ %i.ii, %bb.y ], [ %i.cq, %.lr.ph.i96 ]
  %.sink.i = phi i32 [ %i.ku, %bb.ac ], [ %i.fh, %bb.q ], [ %.0.i.i, %bb.y ], [ %i.cs, %.lr.ph.i96 ]
  %i.kv = phi i8 [ %i.cl, %bb.ac ], [ %i.ff, %bb.q ], [ %i.id, %bb.y ], [ %i.cl, %.lr.ph.i96 ] ; 6 uses
  %.sroa.16.2.i = phi i32 [ %.sroa.16.188.i, %bb.ac ], [ %i.fc, %bb.q ], [ %.sroa.16.188.i, %bb.y ], [ %.sroa.16.188.i, %.lr.ph.i96 ] ; 2 uses
  %.sroa.8.3.i = phi i32 [ %.sroa.8.189.i, %bb.ac ], [ %.sroa.8.189.i, %bb.q ], [ %.sroa.8.2.i, %bb.y ], [ %.sroa.8.189.i, %.lr.ph.i96 ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %i.ks, %bb.ac ], [ %.sroa.0.190.i, %bb.q ], [ %.sroa.0.190.i, %bb.y ], [ %.sroa.0.190.i, %.lr.ph.i96 ] ; 2 uses
  %.2.i = phi i32 [ %.15991.i, %bb.ac ], [ %.15991.i, %bb.q ], [ %i.fm, %bb.y ], [ %.15991.i, %.lr.ph.i96 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.sink113.i
  store i32 %.sink.i, ptr %i.kw, align 4, !tbaa !23
  %i.kx = add nuw nsw i32 %.092.i, 1              ; 2 uses
  %i.ky = zext i8 %i.kv to i32                    ; 2 uses
  %.not70.i = icmp samesign ult i32 %i.kx, %i.ky
  br i1 %.not70.i, label %.lr.ph.i96, label %._crit_edge.loopexit.i, !llvm.loop !176

._crit_edge.loopexit.i:                           ; preds = %bb.ad
  %.pre104.i = load i32, ptr %i.ac, align 8, !tbaa !102
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i94
  %i.kz = phi i32 [ %i.cg, %.preheader.i94 ], [ %.pre104.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.la = phi i8 [ %i.ch, %.preheader.i94 ], [ %i.kv, %._crit_edge.loopexit.i ]
  %i.lb = phi i8 [ %i.ci, %.preheader.i94 ], [ %i.kv, %._crit_edge.loopexit.i ]
  %i.lc = phi i8 [ 0, %.preheader.i94 ], [ %i.kv, %._crit_edge.loopexit.i ]
  %.sroa.16.1.lcssa.i = phi i32 [ %.sroa.16.097.i, %.preheader.i94 ], [ %.sroa.16.2.i, %._crit_edge.loopexit.i ]
  %.sroa.8.1.lcssa.i = phi i32 [ %.sroa.8.098.i, %.preheader.i94 ], [ %.sroa.8.3.i, %._crit_edge.loopexit.i ]
  %.sroa.0.1.lcssa.i = phi i32 [ %.sroa.0.099.i, %.preheader.i94 ], [ %.sroa.0.2.i, %._crit_edge.loopexit.i ]
  %.159.lcssa.i = phi i32 [ %.058100.i, %.preheader.i94 ], [ %.2.i, %._crit_edge.loopexit.i ]
  %i.ld = add nuw nsw i32 %.057101.i, 1           ; 2 uses
  %.not71.i = icmp slt i32 %i.ld, %i.kz
  br i1 %.not71.i, label %.preheader.i94, label %decode_band_types.exit.thread109, !llvm.loop !177

decode_scalefactors.exit:                         ; preds = %get_vlc2.exit.i
  %i.le = load ptr, ptr %i.ce, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.le, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %i.ks) #12
  br label %decode_band_types.exit.thread

decode_band_types.exit.thread109:                 ; preds = %._crit_edge.i, %bb.e
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lg = load ptr, ptr %i.lf, align 16, !tbaa !181
  tail call void %i.lg(ptr noundef %1) #12
  br i1 %.not, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %decode_band_types.exit.thread109
  %.pre131 = load i32, ptr %i.f, align 8, !tbaa !93 ; 5 uses
  %.pre133 = load ptr, ptr %2, align 8, !tbaa !90 ; 3 uses
  %.pre135 = load i32, ptr %i.h, align 8, !tbaa !92 ; 3 uses
  br i1 %i.d, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lh = lshr i32 %.pre131, 3
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre133, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !33
  %i.ll = icmp slt i32 %.pre131, %.pre135
  %i.lm = zext i1 %i.ll to i32
  %spec.select.i98 = add i32 %.pre131, %i.lm      ; 2 uses
  %i.ln = zext i8 %i.lk to i32
  %i.lo = and i32 %.pre131, 7
  store i32 %spec.select.i98, ptr %i.f, align 8, !tbaa !93
  %i.lp = lshr exact i32 128, %i.lo
  %i.lq = and i32 %i.lp, %i.ln
  %.not87 = icmp eq i32 %i.lq, 0
  br i1 %.not87, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lr = load i32, ptr %i.y, align 4, !tbaa !23
  %i.ls = icmp eq i32 %i.lr, 2
  br i1 %i.ls, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lu, i32 noundef 16, ptr noundef nonnull @.str.11) #12
  br label %decode_band_types.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !106
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !107
  %i.lz = call fastcc i32 @decode_pulses(ptr noundef %5, ptr noundef nonnull %2, ptr noundef %i.lw, i32 noundef %i.ly)
  %.not88 = icmp eq i32 %i.lz, 0
  br i1 %.not88, label %._crit_edge, label %bb.aj

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load i32, ptr %i.f, align 8, !tbaa !93
  %.pre132 = load ptr, ptr %2, align 8, !tbaa !90
  %.pre134 = load i32, ptr %i.h, align 8, !tbaa !92
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mb, i32 noundef 16, ptr noundef nonnull @.str.12) #12
  br label %decode_band_types.exit.thread

bb.ak:                                            ; preds = %._crit_edge, %bb.af, %bb.ae
  %i.mc = phi i32 [ %.pre135, %bb.ae ], [ %.pre134, %._crit_edge ], [ %.pre135, %bb.af ]
  %i.md = phi ptr [ %.pre133, %bb.ae ], [ %.pre132, %._crit_edge ], [ %.pre133, %bb.af ]
  %i.me = phi i32 [ %.pre131, %bb.ae ], [ %.pre, %._crit_edge ], [ %spec.select.i98, %bb.af ] ; 4 uses
  %.not91 = phi ptr [ null, %bb.ae ], [ %5, %._crit_edge ], [ null, %bb.af ] ; 2 uses
  %i.mf = lshr i32 %i.me, 3
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !33
  %i.mj = icmp slt i32 %i.me, %i.mc
  %i.mk = zext i1 %i.mj to i32
  %spec.select.i99 = add i32 %i.me, %i.mk
  %i.ml = zext i8 %i.mi to i32
  %i.mm = and i32 %i.me, 7
  %i.mn = shl nuw nsw i32 %i.ml, %i.mm
  %i.mo = lshr i32 %i.mn, 7
  store i32 %spec.select.i99, ptr %i.f, align 8, !tbaa !93
  %i.mp = and i32 %i.mo, 1                        ; 2 uses
  store i32 %i.mp, ptr %i.a, align 8, !tbaa !182
  %i.mq = icmp eq i32 %i.mp, 0
  %or.cond3 = or i1 %i.e, %i.mq
  br i1 %or.cond3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mr = tail call i32 @ff_aac_decode_tns(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %1) ; 2 uses
  %i.ms = icmp slt i32 %i.mr, 0
  br i1 %i.ms, label %decode_band_types.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.d, label %bb.bt, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mt = load i32, ptr %i.f, align 8, !tbaa !93  ; 4 uses
  %i.mu = load ptr, ptr %2, align 8, !tbaa !90    ; 7 uses
  %i.mv = lshr i32 %i.mt, 3
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !33
  %i.mz = load i32, ptr %i.h, align 8, !tbaa !92  ; 42 uses
  %i.na = icmp slt i32 %i.mt, %i.mz
  %i.nb = zext i1 %i.na to i32
  %spec.select.i100 = add i32 %i.mt, %i.nb        ; 4 uses
  %i.nc = zext i8 %i.my to i32
  %i.nd = and i32 %i.mt, 7
  store i32 %spec.select.i100, ptr %i.f, align 8, !tbaa !93
  %i.ne = lshr exact i32 128, %i.nd
  %i.nf = and i32 %i.ne, %i.nc
  %.not89 = icmp eq i32 %i.nf, 0
  br i1 %.not89, label %bb.bt, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val = load i32, ptr %i.y, align 4, !tbaa !23
  %i.ng = lshr i32 %spec.select.i100, 3
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 1, !tbaa !33
  %i.nk = tail call i32 @llvm.bswap.i32(i32 %i.nj)
  %i.nl = and i32 %spec.select.i100, 7
  %i.nm = shl i32 %i.nk, %i.nl
  %i.nn = lshr i32 %i.nm, 30                      ; 4 uses
  %i.no = add i32 %spec.select.i100, 2
  %i.np = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.no) ; 3 uses
  store i32 %i.np, ptr %i.f, align 8, !tbaa !93
  %.not14.i = icmp eq i32 %i.nn, 0
  br i1 %.not14.i, label %decode_gain_control.exit, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.ao
  %.4.val.fr.i = freeze i32 %.val                 ; 3 uses
  %i.nq = sext i32 %.4.val.fr.i to i64
  %i.nr = getelementptr inbounds [3 x i8], ptr @decode_gain_control.gain_mode, i64 %i.nq ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !33  ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 2 ; 4 uses
  %i.nu = and i32 %.4.val.fr.i, -3
  %.not.i101 = icmp eq i32 %i.nu, 0
  %umax37.i = tail call i8 @llvm.umax.i8(i8 %i.ns, i8 1) ; 3 uses
  br i1 %.not.i101, label %.preheader.us.i, label %.preheader.i102.preheader

.preheader.i102.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %exitcond28.not.i.peel = icmp eq i32 %.4.val.fr.i, 0
  br label %.preheader.i102

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.split.i, %bb.av
  %.us-phi7.us.us.i = phi i32 [ %.us-phi6.us.us.i, %bb.av ], [ %i.np, %.preheader.lr.ph.split.i ] ; 3 uses
  %.0152.us.us.i = phi i8 [ %i.ow, %bb.av ], [ 0, %.preheader.lr.ph.split.i ]
  %i.nv = lshr i32 %.us-phi7.us.us.i, 3
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 1, !tbaa !33
  %i.nz = tail call i32 @llvm.bswap.i32(i32 %i.ny)
  %i.oa = and i32 %.us-phi7.us.us.i, 7
  %i.ob = shl i32 %i.nz, %i.oa
  %i.oc = lshr i32 %i.ob, 29                      ; 7 uses
  %i.od = add i32 %.us-phi7.us.us.i, 3
  %i.oe = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.od) ; 3 uses
  store i32 %i.oe, ptr %i.f, align 8, !tbaa !93
  %.not18.i = icmp eq i32 %i.oc, 0
  br i1 %.not18.i, label %bb.av, label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.preheader.us.i
  %i.of = load i8, ptr %i.nt, align 1, !tbaa !33
  %i.og = zext i8 %i.of to i32
  %i.oh = add nuw nsw i32 %i.og, 4                ; 7 uses
  %i.oi = add i32 %i.oh, %i.oe
  %i.oj = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.oi) ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.oc, 1
  br i1 %exitcond36.not.i, label %._crit_edge.split.us.us.us.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.us.us.i
  %i.ok = add i32 %i.oh, %i.oj
  %i.ol = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.ok) ; 2 uses
  %exitcond36.not.i.1 = icmp eq i32 %i.oc, 2
  br i1 %exitcond36.not.i.1, label %._crit_edge.split.us.us.us.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.om = add i32 %i.oh, %i.ol
  %i.on = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.om) ; 2 uses
  %exitcond36.not.i.2 = icmp eq i32 %i.oc, 3
  br i1 %exitcond36.not.i.2, label %._crit_edge.split.us.us.us.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oo = add i32 %i.oh, %i.on
  %i.op = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.oo) ; 2 uses
  %exitcond36.not.i.3 = icmp eq i32 %i.oc, 4
  br i1 %exitcond36.not.i.3, label %._crit_edge.split.us.us.us.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.oq = add i32 %i.oh, %i.op
  %i.or = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.oq) ; 2 uses
  %exitcond36.not.i.4 = icmp eq i32 %i.oc, 5
  br i1 %exitcond36.not.i.4, label %._crit_edge.split.us.us.us.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.os = add i32 %i.oh, %i.or
  %i.ot = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.os) ; 2 uses
  %exitcond36.not.i.5 = icmp eq i32 %i.oc, 6
  br i1 %exitcond36.not.i.5, label %._crit_edge.split.us.us.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ou = add i32 %i.oh, %i.ot
  %i.ov = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.ou)
  br label %._crit_edge.split.us.us.us.i

._crit_edge.split.us.us.us.i:                     ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.lr.ph.us.us.i
  %.lcssa = phi i32 [ %i.oj, %.lr.ph.us.us.i ], [ %i.ol, %bb.ap ], [ %i.on, %bb.aq ], [ %i.op, %bb.ar ], [ %i.or, %bb.as ], [ %i.ot, %bb.at ], [ %i.ov, %bb.au ] ; 2 uses
  store i32 %.lcssa, ptr %i.f, align 8, !tbaa !93
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader.us.i
  %.us-phi6.us.us.i = phi i32 [ %.lcssa, %._crit_edge.split.us.us.us.i ], [ %i.oe, %.preheader.us.i ] ; 2 uses
  %i.ow = add nuw i8 %.0152.us.us.i, 1            ; 2 uses
  %exitcond38.not.i = icmp eq i8 %i.ow, %umax37.i
  br i1 %exitcond38.not.i, label %._crit_edge4.split.us.us.i, label %.preheader.us.i, !llvm.loop !178

._crit_edge4.split.us.us.i:                       ; preds = %bb.av
  %exitcond42.not.i = icmp eq i32 %i.nn, 1
  br i1 %exitcond42.not.i, label %decode_gain_control.exit, label %.preheader.us.i.1

.preheader.us.i.1:                                ; preds = %._crit_edge4.split.us.us.i, %bb.bc
  %.us-phi7.us.us.i.1 = phi i32 [ %.us-phi6.us.us.i.1, %bb.bc ], [ %.us-phi6.us.us.i, %._crit_edge4.split.us.us.i ] ; 3 uses
  %.0152.us.us.i.1 = phi i8 [ %i.py, %bb.bc ], [ 0, %._crit_edge4.split.us.us.i ]
  %i.ox = lshr i32 %.us-phi7.us.us.i.1, 3
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 1, !tbaa !33
  %i.pb = tail call i32 @llvm.bswap.i32(i32 %i.pa)
  %i.pc = and i32 %.us-phi7.us.us.i.1, 7
  %i.pd = shl i32 %i.pb, %i.pc
  %i.pe = lshr i32 %i.pd, 29                      ; 7 uses
  %i.pf = add i32 %.us-phi7.us.us.i.1, 3
  %i.pg = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.pf) ; 3 uses
  store i32 %i.pg, ptr %i.f, align 8, !tbaa !93
  %.not18.i.1 = icmp eq i32 %i.pe, 0
  br i1 %.not18.i.1, label %bb.bc, label %.lr.ph.us.us.i.1

.lr.ph.us.us.i.1:                                 ; preds = %.preheader.us.i.1
  %i.ph = load i8, ptr %i.nt, align 1, !tbaa !33
  %i.pi = zext i8 %i.ph to i32
  %i.pj = add nuw nsw i32 %i.pi, 4                ; 7 uses
  %i.pk = add i32 %i.pj, %i.pg
  %i.pl = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.pk) ; 2 uses
  %exitcond36.not.i.1185 = icmp eq i32 %i.pe, 1
  br i1 %exitcond36.not.i.1185, label %._crit_edge.split.us.us.us.i.1, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.us.us.i.1
  %i.pm = add i32 %i.pj, %i.pl
  %i.pn = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.pm) ; 2 uses
  %exitcond36.not.i.1.1 = icmp eq i32 %i.pe, 2
  br i1 %exitcond36.not.i.1.1, label %._crit_edge.split.us.us.us.i.1, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.po = add i32 %i.pj, %i.pn
  %i.pp = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.po) ; 2 uses
  %exitcond36.not.i.2.1 = icmp eq i32 %i.pe, 3
  br i1 %exitcond36.not.i.2.1, label %._crit_edge.split.us.us.us.i.1, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pq = add i32 %i.pj, %i.pp
  %i.pr = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.pq) ; 2 uses
  %exitcond36.not.i.3.1 = icmp eq i32 %i.pe, 4
  br i1 %exitcond36.not.i.3.1, label %._crit_edge.split.us.us.us.i.1, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ps = add i32 %i.pj, %i.pr
  %i.pt = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.ps) ; 2 uses
  %exitcond36.not.i.4.1 = icmp eq i32 %i.pe, 5
  br i1 %exitcond36.not.i.4.1, label %._crit_edge.split.us.us.us.i.1, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pu = add i32 %i.pj, %i.pt
  %i.pv = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.pu) ; 2 uses
  %exitcond36.not.i.5.1 = icmp eq i32 %i.pe, 6
  br i1 %exitcond36.not.i.5.1, label %._crit_edge.split.us.us.us.i.1, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pw = add i32 %i.pj, %i.pv
  %i.px = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.pw)
  br label %._crit_edge.split.us.us.us.i.1

._crit_edge.split.us.us.us.i.1:                   ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.lr.ph.us.us.i.1
  %.lcssa.1 = phi i32 [ %i.pl, %.lr.ph.us.us.i.1 ], [ %i.pn, %bb.aw ], [ %i.pp, %bb.ax ], [ %i.pr, %bb.ay ], [ %i.pt, %bb.az ], [ %i.pv, %bb.ba ], [ %i.px, %bb.bb ] ; 2 uses
  store i32 %.lcssa.1, ptr %i.f, align 8, !tbaa !93
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.split.us.us.us.i.1, %.preheader.us.i.1
  %.us-phi6.us.us.i.1 = phi i32 [ %.lcssa.1, %._crit_edge.split.us.us.us.i.1 ], [ %i.pg, %.preheader.us.i.1 ] ; 2 uses
  %i.py = add nuw i8 %.0152.us.us.i.1, 1          ; 2 uses
  %exitcond38.not.i.1 = icmp eq i8 %i.py, %umax37.i
  br i1 %exitcond38.not.i.1, label %._crit_edge4.split.us.us.i.1, label %.preheader.us.i.1, !llvm.loop !178

._crit_edge4.split.us.us.i.1:                     ; preds = %bb.bc
  %exitcond42.not.i.1 = icmp eq i32 %i.nn, 2
  br i1 %exitcond42.not.i.1, label %decode_gain_control.exit, label %.preheader.us.i.2

.preheader.us.i.2:                                ; preds = %._crit_edge4.split.us.us.i.1, %bb.bj
  %.us-phi7.us.us.i.2 = phi i32 [ %.us-phi6.us.us.i.2, %bb.bj ], [ %.us-phi6.us.us.i.1, %._crit_edge4.split.us.us.i.1 ] ; 3 uses
  %.0152.us.us.i.2 = phi i8 [ %i.ra, %bb.bj ], [ 0, %._crit_edge4.split.us.us.i.1 ]
  %i.pz = lshr i32 %.us-phi7.us.us.i.2, 3
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 1, !tbaa !33
  %i.qd = tail call i32 @llvm.bswap.i32(i32 %i.qc)
  %i.qe = and i32 %.us-phi7.us.us.i.2, 7
  %i.qf = shl i32 %i.qd, %i.qe
  %i.qg = lshr i32 %i.qf, 29                      ; 7 uses
  %i.qh = add i32 %.us-phi7.us.us.i.2, 3
  %i.qi = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qh) ; 3 uses
  store i32 %i.qi, ptr %i.f, align 8, !tbaa !93
  %.not18.i.2 = icmp eq i32 %i.qg, 0
  br i1 %.not18.i.2, label %bb.bj, label %.lr.ph.us.us.i.2

.lr.ph.us.us.i.2:                                 ; preds = %.preheader.us.i.2
  %i.qj = load i8, ptr %i.nt, align 1, !tbaa !33
  %i.qk = zext i8 %i.qj to i32
  %i.ql = add nuw nsw i32 %i.qk, 4                ; 7 uses
  %i.qm = add i32 %i.ql, %i.qi
  %i.qn = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qm) ; 2 uses
  %exitcond36.not.i.2186 = icmp eq i32 %i.qg, 1
  br i1 %exitcond36.not.i.2186, label %._crit_edge.split.us.us.us.i.2, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.us.us.i.2
  %i.qo = add i32 %i.ql, %i.qn
  %i.qp = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qo) ; 2 uses
  %exitcond36.not.i.1.2 = icmp eq i32 %i.qg, 2
  br i1 %exitcond36.not.i.1.2, label %._crit_edge.split.us.us.us.i.2, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qq = add i32 %i.ql, %i.qp
  %i.qr = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qq) ; 2 uses
  %exitcond36.not.i.2.2 = icmp eq i32 %i.qg, 3
  br i1 %exitcond36.not.i.2.2, label %._crit_edge.split.us.us.us.i.2, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qs = add i32 %i.ql, %i.qr
  %i.qt = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qs) ; 2 uses
  %exitcond36.not.i.3.2 = icmp eq i32 %i.qg, 4
  br i1 %exitcond36.not.i.3.2, label %._crit_edge.split.us.us.us.i.2, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qu = add i32 %i.ql, %i.qt
  %i.qv = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qu) ; 2 uses
  %exitcond36.not.i.4.2 = icmp eq i32 %i.qg, 5
  br i1 %exitcond36.not.i.4.2, label %._crit_edge.split.us.us.us.i.2, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qw = add i32 %i.ql, %i.qv
  %i.qx = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qw) ; 2 uses
  %exitcond36.not.i.5.2 = icmp eq i32 %i.qg, 6
  br i1 %exitcond36.not.i.5.2, label %._crit_edge.split.us.us.us.i.2, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qy = add i32 %i.ql, %i.qx
  %i.qz = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.qy)
  br label %._crit_edge.split.us.us.us.i.2

._crit_edge.split.us.us.us.i.2:                   ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %.lr.ph.us.us.i.2
  %.lcssa.2 = phi i32 [ %i.qn, %.lr.ph.us.us.i.2 ], [ %i.qp, %bb.bd ], [ %i.qr, %bb.be ], [ %i.qt, %bb.bf ], [ %i.qv, %bb.bg ], [ %i.qx, %bb.bh ], [ %i.qz, %bb.bi ] ; 2 uses
  store i32 %.lcssa.2, ptr %i.f, align 8, !tbaa !93
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.split.us.us.us.i.2, %.preheader.us.i.2
  %.us-phi6.us.us.i.2 = phi i32 [ %.lcssa.2, %._crit_edge.split.us.us.us.i.2 ], [ %i.qi, %.preheader.us.i.2 ]
  %i.ra = add nuw i8 %.0152.us.us.i.2, 1          ; 2 uses
  %exitcond38.not.i.2 = icmp eq i8 %i.ra, %umax37.i
  br i1 %exitcond38.not.i.2, label %decode_gain_control.exit, label %.preheader.us.i.2, !llvm.loop !178

.preheader.i102:                                  ; preds = %.preheader.i102.preheader, %._crit_edge4.split.i
  %indvars.iv29.i = phi i32 [ %indvars.iv.next30.i, %._crit_edge4.split.i ], [ 0, %.preheader.i102.preheader ]
  %.lcssa.us.us10.i = phi i32 [ %.us-phi6.i.lcssa, %._crit_edge4.split.i ], [ %i.np, %.preheader.i102.preheader ] ; 3 uses
  %i.rb = lshr i32 %.lcssa.us.us10.i, 3
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 1, !tbaa !33
  %i.rf = tail call i32 @llvm.bswap.i32(i32 %i.re)
  %i.rg = and i32 %.lcssa.us.us10.i, 7
  %i.rh = shl i32 %i.rf, %i.rg
  %i.ri = lshr i32 %i.rh, 29                      ; 7 uses
  %i.rj = add i32 %.lcssa.us.us10.i, 3
  %i.rk = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rj) ; 3 uses
  store i32 %i.rk, ptr %i.f, align 8, !tbaa !93
  %.not16.i.peel = icmp eq i32 %i.ri, 0
  br i1 %.not16.i.peel, label %bb.bk, label %.lr.ph.split.i.peel

.lr.ph.split.i.peel:                              ; preds = %.preheader.i102
  %i.rl = add i32 %i.rk, 8
  %i.rm = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rl) ; 2 uses
  %exitcond27.not.i.peel = icmp eq i32 %i.ri, 1
  br i1 %exitcond27.not.i.peel, label %._crit_edge.i107.peel, label %.lr.ph.split.i.1.peel

.lr.ph.split.i.1.peel:                            ; preds = %.lr.ph.split.i.peel
  %i.rn = add i32 %i.rm, 8
  %i.ro = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rn) ; 2 uses
  %exitcond27.not.i.1.peel = icmp eq i32 %i.ri, 2
  br i1 %exitcond27.not.i.1.peel, label %._crit_edge.i107.peel, label %.lr.ph.split.i.2.peel

.lr.ph.split.i.2.peel:                            ; preds = %.lr.ph.split.i.1.peel
  %i.rp = add i32 %i.ro, 8
  %i.rq = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rp) ; 2 uses
  %exitcond27.not.i.2.peel = icmp eq i32 %i.ri, 3
  br i1 %exitcond27.not.i.2.peel, label %._crit_edge.i107.peel, label %.lr.ph.split.i.3.peel

.lr.ph.split.i.3.peel:                            ; preds = %.lr.ph.split.i.2.peel
  %i.rr = add i32 %i.rq, 8
  %i.rs = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rr) ; 2 uses
  %exitcond27.not.i.3.peel = icmp eq i32 %i.ri, 4
  br i1 %exitcond27.not.i.3.peel, label %._crit_edge.i107.peel, label %.lr.ph.split.i.4.peel

.lr.ph.split.i.4.peel:                            ; preds = %.lr.ph.split.i.3.peel
  %i.rt = add i32 %i.rs, 8
  %i.ru = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rt) ; 2 uses
  %exitcond27.not.i.4.peel = icmp eq i32 %i.ri, 5
  br i1 %exitcond27.not.i.4.peel, label %._crit_edge.i107.peel, label %.lr.ph.split.i.5.peel

.lr.ph.split.i.5.peel:                            ; preds = %.lr.ph.split.i.4.peel
  %i.rv = add i32 %i.ru, 8
  %i.rw = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rv) ; 2 uses
  %exitcond27.not.i.5.peel = icmp eq i32 %i.ri, 6
  br i1 %exitcond27.not.i.5.peel, label %._crit_edge.i107.peel, label %.lr.ph.split.i.6.peel

.lr.ph.split.i.6.peel:                            ; preds = %.lr.ph.split.i.5.peel
  %i.rx = add i32 %i.rw, 8
  %i.ry = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.rx)
  br label %._crit_edge.i107.peel

._crit_edge.i107.peel:                            ; preds = %.lr.ph.split.i.peel, %.lr.ph.split.i.1.peel, %.lr.ph.split.i.2.peel, %.lr.ph.split.i.3.peel, %.lr.ph.split.i.4.peel, %.lr.ph.split.i.5.peel, %.lr.ph.split.i.6.peel
  %.lcssa179.peel = phi i32 [ %i.rm, %.lr.ph.split.i.peel ], [ %i.ro, %.lr.ph.split.i.1.peel ], [ %i.rq, %.lr.ph.split.i.2.peel ], [ %i.rs, %.lr.ph.split.i.3.peel ], [ %i.ru, %.lr.ph.split.i.4.peel ], [ %i.rw, %.lr.ph.split.i.5.peel ], [ %i.ry, %.lr.ph.split.i.6.peel ] ; 2 uses
  store i32 %.lcssa179.peel, ptr %i.f, align 8, !tbaa !93
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i107.peel, %.preheader.i102
  %.us-phi6.i.peel = phi i32 [ %.lcssa179.peel, %._crit_edge.i107.peel ], [ %i.rk, %.preheader.i102 ] ; 2 uses
  br i1 %exitcond28.not.i.peel, label %._crit_edge4.split.i, label %.preheader.i102.peel.newph

.preheader.i102.peel.newph:                       ; preds = %bb.bk, %bb.br
  %.us-phi7.i = phi i32 [ %.us-phi6.i, %bb.br ], [ %.us-phi6.i.peel, %bb.bk ] ; 3 uses
  %.0152.i = phi i8 [ %i.ta, %bb.br ], [ 1, %bb.bk ]
  %i.rz = lshr i32 %.us-phi7.i, 3
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 1, !tbaa !33
  %i.sd = tail call i32 @llvm.bswap.i32(i32 %i.sc)
  %i.se = and i32 %.us-phi7.i, 7
  %i.sf = shl i32 %i.sd, %i.se
  %i.sg = lshr i32 %i.sf, 29                      ; 7 uses
  %i.sh = add i32 %.us-phi7.i, 3
  %i.si = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.sh) ; 3 uses
  store i32 %i.si, ptr %i.f, align 8, !tbaa !93
  %.not16.i = icmp eq i32 %i.sg, 0
  br i1 %.not16.i, label %bb.br, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i102.peel.newph
  %i.sj = load i8, ptr %i.nt, align 1, !tbaa !33
  %i.sk = zext i8 %i.sj to i32
  %i.sl = add nuw nsw i32 %i.sk, 4                ; 7 uses
  %i.sm = add i32 %i.sl, %i.si
  %i.sn = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.sm) ; 2 uses
  %exitcond.not.i106 = icmp eq i32 %i.sg, 1
  br i1 %exitcond.not.i106, label %._crit_edge.i107, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.split.us.i
  %i.so = add i32 %i.sl, %i.sn
  %i.sp = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.so) ; 2 uses
  %exitcond.not.i106.1 = icmp eq i32 %i.sg, 2
  br i1 %exitcond.not.i106.1, label %._crit_edge.i107, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sq = add i32 %i.sl, %i.sp
  %i.sr = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.sq) ; 2 uses
  %exitcond.not.i106.2 = icmp eq i32 %i.sg, 3
  br i1 %exitcond.not.i106.2, label %._crit_edge.i107, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ss = add i32 %i.sl, %i.sr
  %i.st = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.ss) ; 2 uses
  %exitcond.not.i106.3 = icmp eq i32 %i.sg, 4
  br i1 %exitcond.not.i106.3, label %._crit_edge.i107, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.su = add i32 %i.sl, %i.st
  %i.sv = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.su) ; 2 uses
  %exitcond.not.i106.4 = icmp eq i32 %i.sg, 5
  br i1 %exitcond.not.i106.4, label %._crit_edge.i107, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sw = add i32 %i.sl, %i.sv
  %i.sx = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.sw) ; 2 uses
  %exitcond.not.i106.5 = icmp eq i32 %i.sg, 6
  br i1 %exitcond.not.i106.5, label %._crit_edge.i107, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sy = add i32 %i.sl, %i.sx
  %i.sz = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 %i.sy)
  br label %._crit_edge.i107

._crit_edge.i107:                                 ; preds = %.lr.ph.split.us.i, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %.lcssa178 = phi i32 [ %i.sn, %.lr.ph.split.us.i ], [ %i.sp, %bb.bl ], [ %i.sr, %bb.bm ], [ %i.st, %bb.bn ], [ %i.sv, %bb.bo ], [ %i.sx, %bb.bp ], [ %i.sz, %bb.bq ] ; 2 uses
  store i32 %.lcssa178, ptr %i.f, align 8, !tbaa !93
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge.i107, %.preheader.i102.peel.newph
  %.us-phi6.i = phi i32 [ %.lcssa178, %._crit_edge.i107 ], [ %i.si, %.preheader.i102.peel.newph ] ; 2 uses
  %i.ta = add nuw i8 %.0152.i, 1                  ; 2 uses
  %exitcond28.not.i = icmp eq i8 %i.ns, %i.ta
  br i1 %exitcond28.not.i, label %._crit_edge4.split.i, label %.preheader.i102.peel.newph, !llvm.loop !179

._crit_edge4.split.i:                             ; preds = %bb.br, %bb.bk
  %.us-phi6.i.lcssa = phi i32 [ %.us-phi6.i.peel, %bb.bk ], [ %.us-phi6.i, %bb.br ]
  %indvars.iv.next30.i = add nuw nsw i32 %indvars.iv29.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i32 %indvars.iv.next30.i, %i.nn
  br i1 %exitcond32.not.i, label %decode_gain_control.exit, label %.preheader.i102, !llvm.loop !180

decode_gain_control.exit:                         ; preds = %._crit_edge4.split.i, %._crit_edge4.split.us.us.i, %._crit_edge4.split.us.us.i.1, %bb.bj, %bb.ao
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 36432 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 16, !tbaa !184
  %.not90 = icmp eq i32 %i.tc, 0
  br i1 %.not90, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %decode_gain_control.exit
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.te, ptr noundef nonnull @.str.13) #12
  store i32 1, ptr %i.tb, align 16, !tbaa !184
  br label %bb.bt

bb.bt:                                            ; preds = %decode_gain_control.exit, %bb.bs, %bb.an, %bb.am
  %i.tf = load i32, ptr %i.a, align 8, !tbaa !182
  %i.tg = icmp ne i32 %i.tf, 0
  %or.cond5 = and i1 %i.e, %i.tg
  br i1 %or.cond5, label %bb.bu, label %.thread

bb.bu:                                            ; preds = %bb.bt
  %i.th = tail call i32 @ff_aac_decode_tns(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %1) ; 2 uses
  %i.ti = icmp slt i32 %i.th, 0
  br i1 %i.ti, label %decode_band_types.exit.thread, label %.thread

.thread:                                          ; preds = %bb.bu, %bb.bt, %decode_band_types.exit.thread109
  %i.tj = phi ptr [ null, %decode_band_types.exit.thread109 ], [ %.not91, %bb.bt ], [ %.not91, %bb.bu ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.tk = load ptr, ptr %.in, align 8, !tbaa !185
  %i.tl = call i32 %i.tk(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.tj, ptr noundef %1) #12 ; 2 uses
  %i.tm = icmp slt i32 %i.tl, 0
  br i1 %i.tm, label %decode_band_types.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %.thread
  %i.tn = load i32, ptr %i.b, align 8, !tbaa !96
  %i.to = icmp ne i32 %i.tn, 1
  %or.cond7 = or i1 %i.u, %i.to
  br i1 %or.cond7, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.tq = load ptr, ptr %i.tp, align 16, !tbaa !109
  call void %i.tq(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %bb.bx

decode_band_types.exit.thread:                    ; preds = %bb.g, %bb.i, %bb.k, %decode_scalefactors.exit, %.thread, %bb.bu, %bb.al, %bb.d, %bb.aj, %bb.ah
  %.0 = phi i32 [ %i.w, %bb.d ], [ -1094995529, %decode_scalefactors.exit ], [ %i.tl, %.thread ], [ %i.th, %bb.bu ], [ %i.mr, %bb.al ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.aj ], [ -1094995529, %bb.k ], [ -1094995529, %bb.i ], [ -1094995529, %bb.g ]
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 4484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.tr, i8 0, i64 512, i1 false)
  store i32 0, ptr %i.a, align 4, !tbaa !182
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %decode_band_types.exit.thread
  %.077 = phi i32 [ %.0, %decode_band_types.exit.thread ], [ 0, %bb.bw ], [ 0, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @decode_ics_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23256
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23260 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111  ; 2 uses
  %.not = icmp eq i32 %i.b, 39                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.h = lshr i32 %i.f, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92
  %i.n = icmp slt i32 %i.f, %i.m
  %i.o = zext i1 %i.n to i32
  %spec.select.i = add i32 %i.f, %i.o
  %i.p = zext i8 %i.k to i32
  %i.q = and i32 %i.f, 7
  store i32 %spec.select.i, ptr %i.e, align 8, !tbaa !93
  %i.r = lshr exact i32 128, %i.q
  %i.s = and i32 %i.r, %i.p
  %.not117 = icmp eq i32 %i.s, 0
  br i1 %.not117, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 16, ptr noundef nonnull @.str.37) #12
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 528
  %i.x = load i32, ptr %i.w, align 8, !tbaa !88
  %i.y = and i32 %i.x, 2
  %.not118 = icmp eq i32 %i.y, 0
  br i1 %.not118, label %._crit_edge, label %bb.au

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %2, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.z = phi ptr [ %.pre, %._crit_edge ], [ %i.g, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !23
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !93  ; 3 uses
  %i.ae = load i32, ptr %i.l, align 8, !tbaa !92
  %i.af = lshr i32 %i.ad, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !33
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ad, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 30                      ; 3 uses
  %i.an = add i32 %i.ad, 2
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.an)
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !93
  store i32 %i.am, ptr %i.aa, align 4, !tbaa !23
  %i.ap = icmp ne i32 %i.b, 23
  %.not119 = icmp eq i32 %i.am, 0
  %or.cond129 = select i1 %i.ap, i1 true, i1 %.not119
  br i1 %or.cond129, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ar, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %i.am) #12
  store i32 0, ptr %i.aa, align 4, !tbaa !23
  br label %bb.au

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.at, ptr %i.au, align 1, !tbaa !33
  %i.av = load i32, ptr %i.e, align 8, !tbaa !93  ; 4 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !90
  %i.ax = lshr i32 %i.av, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !92
  %i.bc = icmp slt i32 %i.av, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i130 = add i32 %i.av, %i.bd
  %i.be = zext i8 %i.ba to i32
  %i.bf = and i32 %i.av, 7
  %i.bg = shl nuw nsw i32 %i.be, %i.bf
  store i32 %spec.select.i130, ptr %i.e, align 8, !tbaa !93
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = lshr i8 %i.bh, 7
  store i8 %i.bi, ptr %i.as, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !102
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 1)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %spec.select, ptr %i.bl, align 4, !tbaa !187
  store i32 1, ptr %i.bj, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  store i8 1, ptr %i.bm, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !23
  %i.bp = icmp eq i32 %i.bo, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 22 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !93 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !92 ; 7 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !90    ; 6 uses
  %i.bv = lshr i32 %i.br, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 1, !tbaa !33
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by)
  %i.ca = and i32 %i.br, 7
  %i.cb = shl i32 %i.bz, %i.ca                    ; 2 uses
  br i1 %i.bp, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.cc = lshr i32 %i.cb, 28
  %i.cd = add i32 %i.br, 4
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.cd) ; 5 uses
  store i32 %i.ce, ptr %i.bq, align 8, !tbaa !93
  %i.cf = trunc nuw nsw i32 %i.cc to i8
  store i8 %i.cf, ptr %1, align 8, !tbaa !103
  %i.cg = lshr i32 %i.ce, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !33
end_hunk_0
