Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ralf?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@decode_frame:bb.a
bb.s:                                             ; preds = %bb.r
  %i.dq = shl nsw i32 %i.do, 3                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.dq, 2147483135     ; 2 uses
  %.014.i = select i1 %or.cond.i, ptr %.087129, ptr null ; 2 uses
  %.013.i = select i1 %or.cond.i, i32 %i.dq, i32 0 ; 2 uses
  store ptr %.014.i, ptr %4, align 8, !tbaa !57
  store i32 %.013.i, ptr %i.av, align 4, !tbaa !59
  %i.dr = add nuw nsw i32 %.013.i, 8
  store i32 %i.dr, ptr %i.ax, align 8, !tbaa !60
  %i.ds = load i32, ptr %i.cx, align 4, !tbaa !56
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.dt ; 10 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.dt ; 9 uses
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !9   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.dx = load i8, ptr %.087129, align 1, !tbaa !31 ; 6 uses
  store i32 1, ptr %i.ay, align 8, !tbaa !61
  %.not.i.i = icmp sgt i8 %i.dx, -1
  br i1 %.not.i.i, label %get_unary.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.ay, align 8, !tbaa !61
  %i.dy = and i8 %i.dx, 64
  %.not.1.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.1.i.i, label %get_unary.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 3, ptr %i.ay, align 8, !tbaa !61
  %i.dz = and i8 %i.dx, 32
  %.not.2.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not.2.i.i, label %get_unary.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 4, ptr %i.ay, align 8, !tbaa !61
  %i.ea = and i8 %i.dx, 16
  %.not.3.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.3.i.i, label %get_unary.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 5, ptr %i.ay, align 8, !tbaa !61
  %i.eb = and i8 %i.dx, 8
  %.not.4.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not.4.i.i, label %get_unary.exit.thread.i, label %get_unary.exit.i

get_unary.exit.i:                                 ; preds = %bb.w
  store i32 6, ptr %i.ay, align 8, !tbaa !61
  %i.ec = and i8 %i.dx, 4
  %.not.5.i.i = icmp eq i8 %i.ec, 0
  %i.ed = select i1 %.not.5.i.i, i32 6, i32 7
  br label %get_unary.exit.thread.i

get_unary.exit.thread.i:                          ; preds = %get_unary.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.ee = phi i32 [ 6, %get_unary.exit.i ], [ 5, %bb.w ], [ 3, %bb.u ], [ 2, %bb.t ], [ 1, %bb.s ], [ 4, %bb.v ] ; 3 uses
  %i.ef = phi i32 [ %i.ed, %get_unary.exit.i ], [ 8, %bb.w ], [ 10, %bb.u ], [ 11, %bb.t ], [ 12, %bb.s ], [ 9, %bb.v ] ; 2 uses
  %i.eg = shl nuw nsw i32 1, %i.ef                ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 51268 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !56
  %i.ej = add nsw i32 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !36
  %i.em = icmp sgt i32 %i.ej, %i.el
  br i1 %i.em, label %bb.x, label %bb.y

bb.x:                                             ; preds = %get_unary.exit.thread.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13) #9
  br label %.loopexit117

bb.y:                                             ; preds = %get_unary.exit.thread.i
  %i.en = load i32, ptr %i.dg, align 4, !tbaa !49 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ep = load i32, ptr %.087129, align 1, !tbaa !31
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.er = shl i32 %i.eq, %i.ee
  %i.es = lshr i32 %i.er, 30
  %i.et = add nuw nsw i32 %i.ee, 2                ; 2 uses
  store i32 %i.et, ptr %i.ay, align 8, !tbaa !61
  %i.eu = add nuw nsw i32 %i.es, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ev = phi i32 [ %i.et, %bb.z ], [ %i.ee, %bb.y ]
  %.0108.i = phi i32 [ %i.eu, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.ew = icmp eq i32 %.0108.i, 4
  %i.ex = zext i1 %i.ew to i32
  store i32 %i.ex, ptr %i.a, align 4, !tbaa !47
  %i.ey = icmp samesign ugt i32 %.0108.i, 1       ; 2 uses
  %i.ez = select i1 %i.ey, i32 2, i32 0
  store i32 %i.ez, ptr %i.dh, align 4, !tbaa !47
  store i32 16, ptr %i.b, align 4, !tbaa !47
  %i.fa = select i1 %i.ey, i32 17, i32 16
  store i32 %i.fa, ptr %i.di, align 4, !tbaa !47
  %i.fb = icmp sgt i32 %i.en, 0
  br i1 %i.fb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dw, i64 18224
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dw, i64 50992 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 51000 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dw, i64 50996 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dw, i64 51260 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dw, i64 51004 ; 3 uses
  %i.fj = zext nneg i32 %i.eg to i64              ; 3 uses
  %i.fk = shl nuw nsw i32 4, %i.ef
  %i.fl = zext nneg i32 %i.fk to i64
  br label %bb.ac

bb.ab:                                            ; preds = %apply_lpc.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fm = load i32, ptr %i.dg, align 4, !tbaa !49
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next.i, %i.fn
  br i1 %i.fo, label %bb.ac, label %._crit_edge.i, !llvm.loop !62

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i
  %i.fp = phi ptr [ %.014.i, %.lr.ph.i ], [ %i.yd, %bb.ab ] ; 7 uses
  %i.fq = phi i32 [ %i.ev, %.lr.ph.i ], [ %.val.i, %bb.ab ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !47
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !47 ; 4 uses
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds [6072 x i8], ptr %i.fc, i64 %i.fv ; 7 uses
  %i.fx = getelementptr inbounds nuw [16384 x i8], ptr %i.fd, i64 %indvars.iv.i ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !63 ; 2 uses
  %i.ga = load i32, ptr %i.ax, align 8, !tbaa !60 ; 6 uses
  %i.gb = lshr i32 %i.fq, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 1, !tbaa !31
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = and i32 %i.fq, 7
  %i.gh = shl i32 %i.gf, %i.gg
  %i.gi = lshr i32 %i.gh, 23
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.gj ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !31
  %i.gm = sext i16 %i.gl to i32                   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !31 ; 2 uses
  %i.gp = sext i16 %i.go to i32                   ; 2 uses
  %i.gq = icmp slt i16 %i.go, 0
  br i1 %i.gq, label %bb.ad, label %get_vlc2.exit146.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.gr = add i32 %i.fq, 9
  %i.gs = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.gr) ; 3 uses
  %i.gt = lshr i32 %i.gs, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !31
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %i.gy = and i32 %i.gs, 7
  %i.gz = shl i32 %i.gx, %i.gy
  %i.ha = add nsw i32 %i.gp, 32
  %i.hb = lshr i32 %i.gz, %i.ha
  %i.hc = add i32 %i.hb, %i.gm
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !31
  %i.hh = sext i16 %i.hg to i32
  %i.hi = load i16, ptr %i.he, align 2, !tbaa !31
  %i.hj = sext i16 %i.hi to i32
  br label %get_vlc2.exit146.i.i

get_vlc2.exit146.i.i:                             ; preds = %bb.ad, %bb.ac
  %.167.i143.i.i = phi i32 [ %i.hj, %bb.ad ], [ %i.gm, %bb.ac ] ; 6 uses
  %.165.i144.i.i = phi i32 [ %i.gs, %bb.ad ], [ %i.fq, %bb.ac ]
  %.1.i145.i.i = phi i32 [ %i.hh, %bb.ad ], [ %i.gp, %bb.ac ]
  %i.hk = add i32 %.1.i145.i.i, %.165.i144.i.i
  %i.hl = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.hk) ; 6 uses
  store i32 %i.hl, ptr %i.ay, align 8, !tbaa !61
  store i32 %.167.i143.i.i, ptr %i.fe, align 8, !tbaa !67
  %i.hm = icmp sgt i32 %.167.i143.i.i, 1          ; 2 uses
  br i1 %i.hm, label %bb.ae, label %.thread.i.i

bb.ae:                                            ; preds = %get_vlc2.exit146.i.i
  %i.hn = add nsw i32 %.167.i143.i.i, -2          ; 2 uses
  %i.ho = lshr i32 %i.hn, 6
  store i32 %i.ho, ptr %i.ff, align 8, !tbaa !68
  %i.hp = and i32 %i.hn, -64
  %i.hq = xor i32 %i.hp, -1
  %i.hr = add nsw i32 %.167.i143.i.i, %i.hq
  store i32 %i.hr, ptr %i.fg, align 4, !tbaa !69
  %i.hs = icmp eq i32 %.167.i143.i.i, 642
  br i1 %i.hs, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %bb.ae
  %i.ht = sub nsw i32 32, %i.fu                   ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader.i.i
  %i.hu = phi i32 [ %i.hl, %.preheader.i.i ], [ %i.ip, %bb.af ] ; 3 uses
  %indvars.iv170.i.i.a = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next171.i.i.1.a, %bb.af ] ; 3 uses
  %i.hv = lshr i32 %i.hu, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !31
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = and i32 %i.hu, 7
  %i.ib = shl i32 %i.hz, %i.ia
  %i.ic = lshr i32 %i.ib, %i.ht
  %i.id = add i32 %i.hu, %i.fu
  %i.ie = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.id) ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv170.i.i.a
  store i32 %i.ic, ptr %i.if, align 4, !tbaa !47
  %i.ig = lshr i32 %i.ie, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 1, !tbaa !31
  %i.ik = tail call i32 @llvm.bswap.i32(i32 %i.ij)
  %i.il = and i32 %i.ie, 7
  %i.im = shl i32 %i.ik, %i.il
  %i.in = lshr i32 %i.im, %i.ht
  %i.io = add i32 %i.ie, %i.fu
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.io) ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv170.i.i.a
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %i.in, ptr %i.ir, align 4, !tbaa !47
  %indvars.iv.next171.i.i.1.a = add nuw nsw i64 %indvars.iv170.i.i.a, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next171.i.i.1.a, %i.fj
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %bb.af, !llvm.loop !70

._crit_edge.i.i:                                  ; preds = %bb.af
  store i32 %i.ip, ptr %i.ay, align 8, !tbaa !61
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i
  store i32 0, ptr %i.is, align 4, !tbaa !47
  br label %decode_channel.exit.i

.thread.i.i:                                      ; preds = %bb.ae, %get_vlc2.exit146.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !71 ; 2 uses
  %i.iv = lshr i32 %i.hl, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 1, !tbaa !31
  %i.iz = tail call i32 @llvm.bswap.i32(i32 %i.iy)
  %i.ja = and i32 %i.hl, 7
  %i.jb = shl i32 %i.iz, %i.ja
  %i.jc = lshr i32 %i.jb, 23
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jd ; 2 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !31
  %i.jg = sext i16 %i.jf to i32                   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !31 ; 2 uses
  %i.jj = sext i16 %i.ji to i32                   ; 2 uses
  %i.jk = icmp slt i16 %i.ji, 0
  br i1 %i.jk, label %bb.ag, label %get_vlc2.exit142.i.i

bb.ag:                                            ; preds = %.thread.i.i
  %i.jl = add i32 %i.hl, 9
  %i.jm = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.jl) ; 3 uses
  %i.jn = lshr i32 %i.jm, 3
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 1, !tbaa !31
  %i.jr = tail call i32 @llvm.bswap.i32(i32 %i.jq)
  %i.js = and i32 %i.jm, 7
  %i.jt = shl i32 %i.jr, %i.js
  %i.ju = add nsw i32 %i.jj, 32
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = add i32 %i.jv, %i.jg
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !31
  %i.kb = sext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.jy, align 2, !tbaa !31
  %i.kd = sext i16 %i.kc to i32
  br label %get_vlc2.exit142.i.i

get_vlc2.exit142.i.i:                             ; preds = %bb.ag, %.thread.i.i
  %.167.i139.i.i = phi i32 [ %i.kd, %bb.ag ], [ %i.jg, %.thread.i.i ] ; 2 uses
  %.165.i140.i.i = phi i32 [ %i.jm, %bb.ag ], [ %i.hl, %.thread.i.i ]
  %.1.i141.i.i = phi i32 [ %i.kb, %bb.ag ], [ %i.jj, %.thread.i.i ]
  %i.ke = add i32 %.1.i141.i.i, %.165.i140.i.i
  %i.kf = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.ke)
  store i32 %i.kf, ptr %i.ay, align 8, !tbaa !61
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i ; 2 uses
  store i32 %.167.i139.i.i, ptr %i.kg, align 4, !tbaa !47
  %i.kh = call fastcc i32 @extend_code(ptr noundef nonnull %4, i32 noundef %.167.i139.i.i, i32 noundef 127, i32 noundef 4)
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !47
  %i.ki = icmp eq i32 %.167.i143.i.i, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  br i1 %i.ki, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %get_vlc2.exit142.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fx, i8 0, i64 %i.fl, i1 false)
  br label %decode_channel.exit.i

bb.ai:                                            ; preds = %get_vlc2.exit142.i.i
  br i1 %i.hm, label %bb.aj, label %.loopexit157.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.kj = load i32, ptr %i.ff, align 8, !tbaa !68 ; 4 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr [264 x i8], ptr %i.fw, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 192
  %i.kn = load i32, ptr %i.fg, align 4, !tbaa !69 ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  br i1 %i.ko, label %.lr.ph.i.i, label %.loopexit157.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj
  %.neg.neg.i.i = shl i32 12, %i.kj
  %i.kp = zext nneg i32 %i.kn to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ap, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ap ] ; 2 uses
  %.0160.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ml, %bb.ap ]
  %.0110159.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1111.i.i, %bb.ap ] ; 2 uses
  %i.kq = sext i32 %.0110159.i.i to i64
  %i.kr = getelementptr inbounds [24 x i8], ptr %i.km, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !72 ; 2 uses
  %i.ku = load i32, ptr %i.kr, align 8, !tbaa !73 ; 2 uses
  %i.kv = load i32, ptr %i.ay, align 8, !tbaa !61 ; 4 uses
  %i.kw = load i32, ptr %i.ax, align 8, !tbaa !60 ; 2 uses
  %i.kx = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.ky = lshr i32 %i.kv, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 1, !tbaa !31
  %i.lc = tail call i32 @llvm.bswap.i32(i32 %i.lb)
  %i.ld = and i32 %i.kv, 7
  %i.le = shl i32 %i.lc, %i.ld
  %i.lf = sub nsw i32 32, %i.ku
  %i.lg = lshr i32 %i.le, %i.lf
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.lh ; 2 uses
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !31
  %i.lk = sext i16 %i.lj to i32                   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !31 ; 2 uses
  %i.ln = sext i16 %i.lm to i32                   ; 2 uses
  %i.lo = icmp slt i16 %i.lm, 0
  br i1 %i.lo, label %bb.al, label %get_vlc2.exit138.i.i

bb.al:                                            ; preds = %bb.ak
  %i.lp = add i32 %i.kv, %i.ku
  %i.lq = tail call i32 @llvm.umin.i32(i32 %i.kw, i32 %i.lp) ; 3 uses
  %i.lr = lshr i32 %i.lq, 3
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 1, !tbaa !31
  %i.lv = tail call i32 @llvm.bswap.i32(i32 %i.lu)
  %i.lw = and i32 %i.lq, 7
  %i.lx = shl i32 %i.lv, %i.lw
  %i.ly = add nsw i32 %i.ln, 32
  %i.lz = lshr i32 %i.lx, %i.ly
  %i.ma = add i32 %i.lz, %i.lk
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.mb ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 2
  %i.me = load i16, ptr %i.md, align 2, !tbaa !31
  %i.mf = sext i16 %i.me to i32
  %i.mg = load i16, ptr %i.mc, align 2, !tbaa !31
  %i.mh = sext i16 %i.mg to i32
  br label %get_vlc2.exit138.i.i

get_vlc2.exit138.i.i:                             ; preds = %bb.al, %bb.ak
  %.167.i135.i.i = phi i32 [ %i.mh, %bb.al ], [ %i.lk, %bb.ak ]
  %.165.i136.i.i = phi i32 [ %i.lq, %bb.al ], [ %i.kv, %bb.ak ]
  %.1.i137.i.i = phi i32 [ %i.mf, %bb.al ], [ %i.ln, %bb.ak ]
  %i.mi = add i32 %.1.i137.i.i, %.165.i136.i.i
  %i.mj = tail call i32 @llvm.umin.i32(i32 %i.kw, i32 %i.mi)
  store i32 %i.mj, ptr %i.ay, align 8, !tbaa !61
  %i.mk = call fastcc i32 @extend_code(ptr noundef nonnull %4, i32 noundef %.167.i135.i.i, i32 noundef 21, i32 noundef %i.kj)
  %.not129.i.i = icmp eq i32 %.0110159.i.i, 0
  %.neg165.i.i = select i1 %.not129.i.i, i32 %.neg.neg.i.i, i32 0
  %.1.neg.i.i = sub i32 %.neg165.i.i, %.0160.i.i
  %i.ml = add i32 %i.mk, %.1.neg.i.i              ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.i
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !47
  %i.mn = ashr i32 %i.ml, %i.kj                   ; 6 uses
  %i.mo = icmp slt i32 %i.mn, 0
  br i1 %i.mo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %get_vlc2.exit138.i.i
  %i.mp = sub nsw i32 0, %i.mn                    ; 3 uses
  %i.mq = icmp samesign ugt i32 %i.mp, 65535      ; 2 uses
  %i.mr = lshr i32 %i.mp, 16
  %spec.select.i148.i.i = select i1 %i.mq, i32 %i.mr, i32 %i.mp ; 3 uses
  %spec.select11.i149.i.i = select i1 %i.mq, i32 16, i32 0 ; 2 uses
  %.not.i150.i.i = icmp samesign ult i32 %spec.select.i148.i.i, 256 ; 2 uses
  %i.ms = lshr i32 %spec.select.i148.i.i, 8
  %i.mt = or disjoint i32 %spec.select11.i149.i.i, 8
  %.110.i151.i.i = select i1 %.not.i150.i.i, i32 %spec.select.i148.i.i, i32 %i.ms
  %.1.i152.i.i = select i1 %.not.i150.i.i, i32 %spec.select11.i149.i.i, i32 %i.mt
  %i.mu = zext nneg i32 %.110.i151.i.i to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !31
  %i.mx = zext i8 %i.mw to i32
  %i.my = add nuw nsw i32 %.1.i152.i.i, %i.mx
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.my, i32 4)
  %spec.store.select.i.i = xor i32 %i.mz, -1
  br label %bb.ap

bb.an:                                            ; preds = %get_vlc2.exit138.i.i
  %.not130.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not130.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.na = icmp samesign ugt i32 %i.mn, 65535      ; 2 uses
  %i.nb = lshr i32 %i.mn, 16
  %spec.select.i.i118.i = select i1 %i.na, i32 %i.nb, i32 %i.mn ; 3 uses
  %spec.select11.i.i.i = select i1 %i.na, i32 16, i32 0 ; 2 uses
  %.not.i.i.i = icmp samesign ult i32 %spec.select.i.i118.i, 256 ; 2 uses
  %i.nc = lshr i32 %spec.select.i.i118.i, 8
  %i.nd = or disjoint i32 %spec.select11.i.i.i, 8
  %.110.i.i.i = select i1 %.not.i.i.i, i32 %spec.select.i.i118.i, i32 %i.nc
  %.1.i147.i.i = select i1 %.not.i.i.i, i32 %spec.select11.i.i.i, i32 %i.nd
  %i.ne = zext nneg i32 %.110.i.i.i to i64
  %i.nf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !31
  %i.nh = zext i8 %i.ng to i32
  %i.ni = add nuw nsw i32 %.1.i147.i.i, %i.nh
  %i.nj = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 4)
  %spec.store.select1.i.i = add nuw nsw i32 %i.nj, 1
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %indvars.iv.i121.i = phi i64 [ %indvars.iv.next.i122.i, %.lr.ph.i120.i ], [ %indvars.iv.i121.i.ph, %.lr.ph.i120.i.preheader ] ; 3 uses
  %.042.i.i = phi i32 [ %i.zi, %.lr.ph.i120.i ], [ %.042.i.i.ph, %.lr.ph.i120.i.preheader ]
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i121.i
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !47
  %i.ze = xor i64 %indvars.iv.i121.i, -1
  %i.zf = getelementptr [4 x i8], ptr %i.yp, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !47
  %i.zh = mul i32 %i.zg, %i.zd
  %i.zi = add i32 %i.zh, %.042.i.i                ; 2 uses
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i121.i, 1 ; 2 uses
  %exitcond.not.i123.i = icmp eq i64 %indvars.iv.next.i122.i, %wide.trip.count.i119.i
  br i1 %exitcond.not.i123.i, label %._crit_edge.i124.i, label %.lr.ph.i120.i, !llvm.loop !81

._crit_edge.i124.i:                               ; preds = %.lr.ph.i120.i, %middle.block254
  %.lcssa186 = phi i32 [ %i.zb, %middle.block254 ], [ %i.zi, %.lr.ph.i120.i ] ; 3 uses
  %i.zj = icmp slt i32 %.lcssa186, 0
  %.pre204.i = load i32, ptr %i.ff, align 8, !tbaa !68 ; 2 uses
  br i1 %i.zj, label %bb.bp, label %._crit_edge.thread.i.i

bb.bp:                                            ; preds = %._crit_edge.i124.i
  %i.zk = add nsw i32 %i.yl, %.lcssa186
  %i.zl = ashr i32 %i.zk, %.pre204.i
  %i.zm = tail call i32 @llvm.smax.i32(i32 %i.zl, i32 %notmask.i.i)
  br label %bb.bq

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i124.i, %.._crit_edge.thread.i_crit_edge.i
  %i.zn = phi i32 [ %.pre204.i, %._crit_edge.i124.i ], [ %.pre.i, %.._crit_edge.thread.i_crit_edge.i ]
  %.0.lcssa55.i.i = phi i32 [ %.lcssa186, %._crit_edge.i124.i ], [ 0, %.._crit_edge.thread.i_crit_edge.i ]
  %i.zo = add nuw i32 %.0.lcssa55.i.i, %i.yj
  %i.zp = lshr i32 %i.zo, %i.zn
  %i.zq = tail call i32 @llvm.smin.i32(i32 %i.zp, i32 %i.yk)
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.thread.i.i, %bb.bp
  %.1.i.i = phi i32 [ %i.zm, %bb.bp ], [ %i.zq, %._crit_edge.thread.i.i ]
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv48.i.i ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !47
  %i.zt = add nsw i32 %i.zs, %.1.i.i
  store i32 %i.zt, ptr %i.zr, align 4, !tbaa !47
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %i.fj
  br i1 %exitcond52.not.i.i, label %apply_lpc.exit.i, label %bb.bo, !llvm.loop !82

apply_lpc.exit.i:                                 ; preds = %bb.bq, %decode_channel.exit.i
  %.val.i = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %.val116.i = load i32, ptr %i.av, align 4, !tbaa !59
  %i.zu = icmp slt i32 %.val116.i, %.val.i
  br i1 %i.zu, label %.loopexit117, label %bb.ab

._crit_edge.i:                                    ; preds = %bb.ab, %bb.aa
  %i.zv = getelementptr inbounds nuw i8, ptr %i.dw, i64 18224 ; 10 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.dw, i64 34608 ; 9 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.dw, i64 51260 ; 5 uses
  switch i32 %.0108.i, label %default.unreachable [
    i32 0, label %vector.ph
    i32 1, label %.preheader161.i
    i32 2, label %.preheader163.i
    i32 3, label %.preheader165.i
    i32 4, label %.preheader167.i
  ]

.preheader167.i:                                  ; preds = %._crit_edge.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.dw, i64 51264
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !47 ; 2 uses
  %i.aaa = load i32, ptr %i.zx, align 4, !tbaa !47 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.eg to i64 ; 2 uses
  br i1 %diff.check224, label %scalar.ph225, label %vector.ph227

vector.ph227:                                     ; preds = %.preheader167.i
  %n.vec228 = and i64 %wide.trip.count.i, 65532
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %i.zz, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %i.aaa, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph227
  %index234 = phi i64 [ 0, %vector.ph227 ], [ %index.next237, %vector.body233 ] ; 5 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %index234
  %wide.load235 = load <4 x i32>, ptr %i.aab, align 4, !tbaa !47
  %i.aac = add <4 x i32> %wide.load235, %broadcast.splat230 ; 3 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !47
  %i.aae = add <4 x i32> %wide.load236, %broadcast.splat232
  %i.aaf = shl <4 x i32> %i.aae, splat (i32 1)
  %i.aag = and <4 x i32> %i.aac, splat (i32 1)
  %i.aah = or disjoint <4 x i32> %i.aaf, %i.aag   ; 2 uses
  %i.aai = add <4 x i32> %i.aah, %i.aac
  %i.aaj = sdiv <4 x i32> %i.aai, splat (i32 2)
  %i.aak = trunc <4 x i32> %i.aaj to <4 x i16>
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index234
  store <4 x i16> %i.aak, ptr %i.aal, align 2, !tbaa !83
  %i.aam = sub <4 x i32> %i.aah, %i.aac
  %i.aan = sdiv <4 x i32> %i.aam, splat (i32 2)
  %i.aao = trunc <4 x i32> %i.aan to <4 x i16>
  %i.aap = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index234
  store <4 x i16> %i.aao, ptr %i.aap, align 2, !tbaa !83
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.aaq = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.aaq, label %.loopexit, label %vector.body233, !llvm.loop !85

.preheader165.i:                                  ; preds = %._crit_edge.i
  %i.aar = load i32, ptr %i.zx, align 4, !tbaa !47 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.dw, i64 51264
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !47 ; 3 uses
  %wide.trip.count187.i = zext nneg i32 %i.eg to i64 ; 2 uses
  br i1 %diff.check206, label %scalar.ph207, label %vector.ph209

vector.ph209:                                     ; preds = %.preheader165.i
  %n.vec210 = and i64 %wide.trip.count187.i, 65532
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.aat, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next219, %vector.body215 ] ; 5 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %index216
  %wide.load217 = load <4 x i32>, ptr %i.aau, align 4, !tbaa !47
  %i.aav = add <4 x i32> %wide.load217, %broadcast.splat212 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %index216
  %wide.load218 = load <4 x i32>, ptr %i.aaw, align 4, !tbaa !47
  %i.aax = add <4 x i32> %wide.load218, %broadcast.splat214
  %i.aay = add <4 x i32> %i.aax, %i.aav
  %i.aaz = trunc <4 x i32> %i.aay to <4 x i16>
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index216
  store <4 x i16> %i.aaz, ptr %i.aba, align 2, !tbaa !83
  %i.abb = trunc <4 x i32> %i.aav to <4 x i16>
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index216
  store <4 x i16> %i.abb, ptr %i.abc, align 2, !tbaa !83
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.abd = icmp eq i64 %index.next219, %n.vec210
  br i1 %i.abd, label %.loopexit, label %vector.body215, !llvm.loop !86

.preheader163.i:                                  ; preds = %._crit_edge.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.dw, i64 51264
  %wide.trip.count192.i = zext nneg i32 %i.eg to i64
  br label %bb.br

.preheader161.i:                                  ; preds = %._crit_edge.i
  %i.abf = load i32, ptr %i.zx, align 4, !tbaa !47 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.dw, i64 51264
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !47 ; 3 uses
  %wide.trip.count197.i = zext nneg i32 %i.eg to i64 ; 2 uses
  br i1 %diff.check, label %scalar.ph189, label %vector.ph191

vector.ph191:                                     ; preds = %.preheader161.i
  %n.vec192 = and i64 %wide.trip.count197.i, 65532
  %broadcast.splatinsert193 = insertelement <4 x i32> poison, i32 %i.abf, i64 0
  %broadcast.splat194 = shufflevector <4 x i32> %broadcast.splatinsert193, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %i.abh, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph191
  %index198 = phi i64 [ 0, %vector.ph191 ], [ %index.next201, %vector.body197 ] ; 5 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %index198
  %wide.load199 = load <4 x i32>, ptr %i.abi, align 4, !tbaa !47
  %i.abj = add <4 x i32> %wide.load199, %broadcast.splat194
  %i.abk = trunc <4 x i32> %i.abj to <4 x i16>
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index198
  store <4 x i16> %i.abk, ptr %i.abl, align 2, !tbaa !83
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %index198
  %wide.load200 = load <4 x i32>, ptr %i.abm, align 4, !tbaa !47
  %i.abn = add <4 x i32> %wide.load200, %broadcast.splat196
  %i.abo = trunc <4 x i32> %i.abn to <4 x i16>
  %i.abp = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index198
  store <4 x i16> %i.abo, ptr %i.abp, align 2, !tbaa !83
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.abq = icmp eq i64 %index.next201, %n.vec192
  br i1 %i.abq, label %.loopexit, label %vector.body197, !llvm.loop !87

vector.ph:                                        ; preds = %._crit_edge.i
  %i.abr = load i32, ptr %i.zx, align 4, !tbaa !47
  %i.abs = and i32 %i.eg, 65528
  %n.vec = zext nneg i32 %i.abs to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.abr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %index ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %wide.load = load <4 x i32>, ptr %i.abt, align 4, !tbaa !47
  %wide.load188 = load <4 x i32>, ptr %i.abu, align 4, !tbaa !47
  %i.abv = add <4 x i32> %wide.load, %broadcast.splat
  %i.abw = add <4 x i32> %wide.load188, %broadcast.splat
  %i.abx = trunc <4 x i32> %i.abv to <4 x i16>
  %i.aby = trunc <4 x i32> %i.abw to <4 x i16>
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  store <4 x i16> %i.abx, ptr %i.abz, align 2, !tbaa !83
  store <4 x i16> %i.aby, ptr %i.aca, align 2, !tbaa !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.acb = icmp eq i64 %index.next, %n.vec
  br i1 %i.acb, label %.loopexit, label %vector.body, !llvm.loop !88

scalar.ph189:                                     ; preds = %.preheader161.i, %scalar.ph189
  %indvars.iv194.i.a = phi i64 [ %indvars.iv.next195.i.1.a, %scalar.ph189 ], [ 0, %.preheader161.i ] ; 6 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv194.i.a
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !47
  %i.ace = add i32 %i.acd, %i.abf
  %i.acf = trunc i32 %i.ace to i16
  %i.acg = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv194.i.a
  store i16 %i.acf, ptr %i.acg, align 2, !tbaa !83
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv194.i.a
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !47
  %i.acj = add i32 %i.aci, %i.abh
  %i.ack = trunc i32 %i.acj to i16
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv194.i.a
  store i16 %i.ack, ptr %i.acl, align 2, !tbaa !83
  %indvars.iv.next195.i = or disjoint i64 %indvars.iv194.i.a, 1 ; 4 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv.next195.i
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !47
  %i.aco = add i32 %i.acn, %i.abf
  %i.acp = trunc i32 %i.aco to i16
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.next195.i
  store i16 %i.acp, ptr %i.acq, align 2, !tbaa !83
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.next195.i
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !47
  %i.act = add i32 %i.acs, %i.abh
  %i.acu = trunc i32 %i.act to i16
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.next195.i
  store i16 %i.acu, ptr %i.acv, align 2, !tbaa !83
  %indvars.iv.next195.i.1.a = add nuw nsw i64 %indvars.iv194.i.a, 2 ; 2 uses
  %exitcond198.not.i.1 = icmp eq i64 %indvars.iv.next195.i.1.a, %wide.trip.count197.i
  br i1 %exitcond198.not.i.1, label %.loopexit, label %scalar.ph189, !llvm.loop !89

bb.br:                                            ; preds = %bb.br, %.preheader163.i
  %indvars.iv189.i = phi i64 [ 0, %.preheader163.i ], [ %indvars.iv.next190.i, %bb.br ] ; 5 uses
  %i.acw = load i32, ptr %i.zx, align 4, !tbaa !47
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv189.i ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !47
  %i.acz = add i32 %i.acy, %i.acw                 ; 3 uses
  store i32 %i.acz, ptr %i.acx, align 4, !tbaa !47
  %i.ada = trunc i32 %i.acz to i16
  %i.adb = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv189.i
  store i16 %i.ada, ptr %i.adb, align 2, !tbaa !83
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv189.i
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !47
  %i.ade = load i32, ptr %i.abe, align 4, !tbaa !47
  %i.adf = add i32 %i.add, %i.ade
  %i.adg = sub i32 %i.acz, %i.adf
  %i.adh = trunc i32 %i.adg to i16
  %i.adi = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv189.i
  store i16 %i.adh, ptr %i.adi, align 2, !tbaa !83
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %wide.trip.count192.i
  br i1 %exitcond193.not.i, label %.loopexit, label %bb.br, !llvm.loop !90

scalar.ph207:                                     ; preds = %.preheader165.i, %scalar.ph207
  %indvars.iv184.i.a = phi i64 [ %indvars.iv.next185.i.1.a, %scalar.ph207 ], [ 0, %.preheader165.i ] ; 6 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv184.i.a
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !47
  %i.adl = add i32 %i.adk, %i.aar                 ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv184.i.a
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !47
  %i.ado = add i32 %i.adn, %i.aat
  %i.adp = add i32 %i.ado, %i.adl
  %i.adq = trunc i32 %i.adp to i16
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv184.i.a
  store i16 %i.adq, ptr %i.adr, align 2, !tbaa !83
  %i.ads = trunc i32 %i.adl to i16
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv184.i.a
  store i16 %i.ads, ptr %i.adt, align 2, !tbaa !83
  %indvars.iv.next185.i = or disjoint i64 %indvars.iv184.i.a, 1 ; 4 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv.next185.i
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !47
  %i.adw = add i32 %i.adv, %i.aar                 ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.next185.i
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !47
  %i.adz = add i32 %i.ady, %i.aat
  %i.aea = add i32 %i.adz, %i.adw
  %i.aeb = trunc i32 %i.aea to i16
  %i.aec = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.next185.i
  store i16 %i.aeb, ptr %i.aec, align 2, !tbaa !83
  %i.aed = trunc i32 %i.adw to i16
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.next185.i
  store i16 %i.aed, ptr %i.aee, align 2, !tbaa !83
  %indvars.iv.next185.i.1.a = add nuw nsw i64 %indvars.iv184.i.a, 2 ; 2 uses
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1.a, %wide.trip.count187.i
  br i1 %exitcond188.not.i.1, label %.loopexit, label %scalar.ph207, !llvm.loop !91

scalar.ph225:                                     ; preds = %.preheader167.i, %scalar.ph225
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %scalar.ph225 ], [ 0, %.preheader167.i ] ; 5 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv181.i
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !47
  %i.aeh = add i32 %i.aeg, %i.zz                  ; 3 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv181.i
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !47
  %i.aek = add i32 %i.aej, %i.aaa
  %i.ael = shl i32 %i.aek, 1
  %i.aem = and i32 %i.aeh, 1
  %i.aen = or disjoint i32 %i.ael, %i.aem         ; 2 uses
  %i.aeo = add i32 %i.aen, %i.aeh
  %i.aep = sdiv i32 %i.aeo, 2
  %i.aeq = trunc i32 %i.aep to i16
  %i.aer = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv181.i
  store i16 %i.aeq, ptr %i.aer, align 2, !tbaa !83
  %i.aes = sub i32 %i.aen, %i.aeh
  %i.aet = sdiv i32 %i.aes, 2
  %i.aeu = trunc i32 %i.aet to i16
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv181.i
  store i16 %i.aeu, ptr %i.aev, align 2, !tbaa !83
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next182.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph225, !llvm.loop !92

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

.loopexit117:                                     ; preds = %apply_lpc.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit118.sink.split

.loopexit:                                        ; preds = %vector.body233, %scalar.ph225, %vector.body215, %scalar.ph207, %bb.br, %vector.body197, %scalar.ph189, %vector.body
  %i.aew = load i32, ptr %i.eh, align 4, !tbaa !56
  %i.aex = add nsw i32 %i.aew, %i.eg
  store i32 %i.aex, ptr %i.eh, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.aey = load i32, ptr %i.dn, align 4, !tbaa !47 ; 2 uses
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr inbounds i8, ptr %.087129, i64 %i.aez
  %i.afb = sub nsw i32 %.085130, %i.aey
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count
  br i1 %exitcond150.not, label %.loopexit118, label %bb.r, !llvm.loop !93

.loopexit118.sink.split:                          ; preds = %bb.r, %.loopexit117
  %.str.12.sink = phi ptr [ @.str.12, %.loopexit117 ], [ @.str.11, %bb.r ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.12.sink) #9
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit, %.loopexit118.sink.split, %bb.q
  %i.afc = load i32, ptr %i.cx, align 4, !tbaa !56 ; 2 uses
  store i32 %i.afc, ptr %i.cr, align 8, !tbaa !50
  %i.afd = icmp sgt i32 %i.afc, 0
  %i.afe = zext i1 %i.afd to i32
  store i32 %i.afe, ptr %2, align 4, !tbaa !47
  %i.aff = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.afg = load i32, ptr %i.aff, align 8, !tbaa !46
  br label %.loopexit119

.loopexit119:                                     ; preds = %bb.m, %._crit_edge, %.loopexit118, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.090 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.e ], [ -1094995529, %bb.i ], [ -1094995529, %bb.k ], [ %i.aj, %bb.g ], [ %i.cs, %._crit_edge ], [ %i.afg, %.loopexit118 ], [ -1094995529, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.090
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv48 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next49, %bb.g ] ; 2 uses
  %i.d = getelementptr inbounds nuw [6072 x i8], ptr %i.c, i64 %indvars.iv48 ; 6 uses
  tail call void @ff_vlc_free(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @ff_vlc_free(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @ff_vlc_free(ptr noundef nonnull %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %.preheader

.preheader29:                                     ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  br label %bb.e

.preheader:                                       ; preds = %bb.b, %bb.d
  %indvars.iv36 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next37, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [264 x i8], ptr %i.g, i64 %indvars.iv36
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @ff_vlc_free(ptr noundef nonnull %i.j) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !94

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, 10
  br i1 %exitcond39.not, label %.preheader29, label %.preheader, !llvm.loop !95

.preheader28:                                     ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3072
  br label %bb.f

bb.e:                                             ; preds = %.preheader29, %bb.e
  %indvars.iv40 = phi i64 [ 0, %.preheader29 ], [ %indvars.iv.next41, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv40
  tail call void @ff_vlc_free(ptr noundef nonnull %i.l) #9
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, 15
  br i1 %exitcond43.not, label %.preheader28, label %bb.e, !llvm.loop !96

bb.f:                                             ; preds = %.preheader28, %bb.f
  %indvars.iv44 = phi i64 [ 0, %.preheader28 ], [ %indvars.iv.next45, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv44
  tail call void @ff_vlc_free(ptr noundef nonnull %i.m) #9
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 125
  br i1 %exitcond47.not, label %bb.g, label %bb.f, !llvm.loop !97

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, 3
  br i1 %exitcond51.not, label %bb.h, label %bb.b, !llvm.loop !98

bb.h:                                             ; preds = %bb.g
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100424
  store i32 0, ptr %i.c, align 8, !tbaa !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare void @av_channel_layout_default(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc i32 @init_ralf_vlc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 43, 644) %2) unnamed_addr #0 {
.preheader36.preheader:
  %i.a = alloca [644 x i8], align 16              ; 5 uses
  %i.b = alloca [644 x i16], align 16             ; 4 uses
  %i.c = alloca [17 x i32], align 16              ; 5 uses
  %i.d = alloca [18 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.c, i8 0, i64 68, i1 false), !tbaa !47
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.preheader, %.preheader36
  %indvars.iv = phi i64 [ 0, %.preheader36.preheader ], [ %indvars.iv.next, %.preheader36 ] ; 2 uses
  %.041 = phi i32 [ 0, %.preheader36.preheader ], [ %i.q, %.preheader36 ] ; 3 uses
  %.03240 = phi i32 [ 0, %.preheader36.preheader ], [ %i.m, %.preheader36 ]
  %.03438 = phi ptr [ %1, %.preheader36.preheader ], [ %i.p, %.preheader36 ] ; 2 uses
  %.not = icmp eq i32 %.041, 0
  %i.e = load i8, ptr %.03438, align 1, !tbaa !31 ; 2 uses
  %i.f = and i8 %i.e, 15
  %i.g = lshr i8 %i.e, 4
  %.in = select i1 %.not, i8 %i.g, i8 %i.f
  %narrow = add nuw nsw i8 %.in, 1                ; 3 uses
  %i.h = zext nneg i8 %narrow to i32
  %i.i = zext nneg i8 %narrow to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !47
  %i.m = tail call i32 @llvm.umax.i32(i32 %.03240, i32 %i.h) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %narrow, ptr %i.n, align 1, !tbaa !31
  %i.o = zext nneg i32 %.041 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.03438, i64 %i.o
  %i.q = xor i32 %.041, 1
end_hunk_1
