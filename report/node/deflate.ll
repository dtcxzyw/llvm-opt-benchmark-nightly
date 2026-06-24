inline.NumInlined: 48
inline.NumDeleted: 6
begin_hunk_0_@deflate_stored:bb.a
  store i32 %i.fh, ptr %i.m, align 4, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 6020
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !67
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !53
  %i.fl = load i32, ptr %i.m, align 4, !tbaa !64  ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = sub i64 %i.fk, %i.fm
  %i.fo = zext i32 %i.ez to i64                   ; 3 uses
  %.not257 = icmp ugt i64 %i.fn, %i.fo
  br i1 %.not257, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = sub i32 %i.fl, %i.fa                    ; 2 uses
  store i32 %i.fp, ptr %i.m, align 4, !tbaa !64
  %i.fq = load ptr, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.fr = zext i32 %i.fa to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  %i.ft = zext i32 %i.fp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull align 1 %i.fs, i64 %i.ft, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !95 ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 2
  br i1 %i.fw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fx = add nuw nsw i32 %i.fv, 1
  store i32 %i.fx, ptr %i.fu, align 8, !tbaa !95
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 6020 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !67
  %i.ga = load i32, ptr %i.m, align 4, !tbaa !64  ; 4 uses
  %i.gb = icmp ugt i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s
  %i.gc = phi i32 [ %i.ga, %bb.v ], [ %i.ga, %bb.w ], [ %i.fl, %bb.s ]
  %i.gd = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ge = zext i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ge
  %i.gg = load ptr, ptr %0, align 8, !tbaa !20
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !74
  %i.gi = sub nsw i64 0, %i.fo
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr nonnull align 1 %i.gj, i64 %i.fo, i1 false)
  %i.gk = load i32, ptr %i.m, align 4, !tbaa !64
  %i.gl = add i32 %i.gk, %i.ez                    ; 2 uses
  store i32 %i.gl, ptr %i.m, align 4, !tbaa !64
  %i.gm = load i32, ptr %i.d, align 8, !tbaa !33
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 6020 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !67 ; 2 uses
  %i.gp = sub i32 %i.gm, %i.go
  %. = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 %i.gp)
  %i.gq = add i32 %., %i.go
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %i.gr = phi i32 [ %i.gl, %bb.x ], [ %i.fh, %bb.r ] ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  store i64 %i.gs, ptr %i.n, align 8, !tbaa !65
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge284, %bb.y
  %.pre-phi = phi i64 [ %.pre286, %._crit_edge284 ], [ %i.gs, %bb.y ] ; 3 uses
  %i.gt = phi i32 [ %.pre285, %._crit_edge284 ], [ %i.gr, %bb.y ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 6032 ; 4 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !42
  %i.gw = icmp ult i64 %i.gv, %.pre-phi
  br i1 %i.gw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 %.pre-phi, ptr %i.gu, align 8, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.not258, label %bb.ac, label %bb.bb

bb.ac:                                            ; preds = %bb.ab
  switch i32 %1, label %bb.ad [
    i32 4, label %bb.af
    i32 0, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gx = load ptr, ptr %0, align 8, !tbaa !20
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !73
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hb = load i64, ptr %i.n, align 8, !tbaa !65
  %i.hc = icmp eq i64 %i.hb, %.pre-phi
  br i1 %i.hc, label %bb.bb, label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ac, %bb.ae, %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !53
  %i.hf = trunc i64 %i.he to i32
  %i.hg = sub i32 %i.hf, %i.gt                    ; 4 uses
  %i.hh = load ptr, ptr %0, align 8, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !73
  %i.hk = icmp ugt i32 %i.hj, %i.hg
  br i1 %i.hk, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.hl = load i64, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %i.hm = load i32, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %.not259 = icmp slt i64 %i.hl, %i.hn
  br i1 %.not259, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = sub nsw i64 %i.hl, %i.hn
  store i64 %i.ho, ptr %i.n, align 8, !tbaa !65
  %i.hp = sub i32 %i.gt, %i.hm                    ; 2 uses
  store i32 %i.hp, ptr %i.m, align 4, !tbaa !64
  %i.hq = load ptr, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hn
  %i.hs = zext i32 %i.hp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.hr, i64 %i.hs, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !95 ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 2
  br i1 %i.hv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hw = add nuw nsw i32 %i.hu, 1
  store i32 %i.hw, ptr %i.ht, align 8, !tbaa !95
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hx = load i32, ptr %i.d, align 8, !tbaa !33
  %i.hy = add i32 %i.hx, %i.hg                    ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 6020 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !67
  %i.ib = load i32, ptr %i.m, align 4, !tbaa !64  ; 4 uses
  %i.ic = icmp ugt i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !67
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ag, %bb.af
  %i.id = phi i32 [ %i.ib, %bb.ak ], [ %i.ib, %bb.aj ], [ %i.gt, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %.0219 = phi i32 [ %i.hy, %bb.ak ], [ %i.hy, %bb.aj ], [ %i.hg, %bb.ag ], [ %i.hg, %bb.af ]
  %i.ie = load ptr, ptr %0, align 8, !tbaa !20    ; 8 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !73 ; 2 uses
  %spec.select265 = tail call i32 @llvm.umin.i32(i32 %.0219, i32 %i.ig) ; 7 uses
  %.not260 = icmp eq i32 %spec.select265, 0
  br i1 %.not260, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ih = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ii = zext i32 %i.id to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii ; 3 uses
  %i.ik = sub i32 %i.ig, %spec.select265
  store i32 %i.ik, ptr %i.if, align 8, !tbaa !73
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 56 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !19
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  %i.io = load i32, ptr %i.in, align 8, !tbaa !30
  %i.ip = icmp eq i32 %i.io, 2
  br i1 %i.ip, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iq = zext i32 %spec.select265 to i64         ; 2 uses
  tail call void @copy_with_crc(ptr noundef nonnull %i.ie, ptr noundef %i.ij, i64 noundef %i.iq) #12
  br label %read_buf.exit271

bb.ao:                                            ; preds = %bb.am
  %i.ir = load ptr, ptr %i.ie, align 8, !tbaa !74
  %i.is = zext i32 %spec.select265 to i64         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.ir, i64 %i.is, i1 false)
  %i.it = load ptr, ptr %i.il, align 8, !tbaa !19
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !30
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.ap, label %read_buf.exit271

bb.ap:                                            ; preds = %bb.ao
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ie, i64 96 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !72
  %i.iz = tail call i64 @adler32(i64 noundef %i.iy, ptr noundef %i.ij, i32 noundef %spec.select265) #12
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !72
  br label %read_buf.exit271

read_buf.exit271:                                 ; preds = %bb.ap, %bb.ao, %bb.an
  %.pre-phi.i270 = phi i64 [ %i.is, %bb.ao ], [ %i.is, %bb.ap ], [ %i.iq, %bb.an ] ; 2 uses
  %i.ja = load ptr, ptr %i.ie, align 8, !tbaa !74
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.pre-phi.i270
  store ptr %i.jb, ptr %i.ie, align 8, !tbaa !74
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !83
  %i.je = add i64 %i.jd, %.pre-phi.i270
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !83
  %i.jf = load i32, ptr %i.m, align 4, !tbaa !64
  %i.jg = add i32 %i.jf, %spec.select265          ; 2 uses
  store i32 %i.jg, ptr %i.m, align 4, !tbaa !64
  %i.jh = load i32, ptr %i.d, align 8, !tbaa !33
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 6020 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !67 ; 2 uses
  %i.jk = sub i32 %i.jh, %i.jj
  %.spec.select265 = tail call i32 @llvm.umin.i32(i32 %spec.select265, i32 %i.jk)
  %i.jl = add i32 %.spec.select265, %i.jj
  store i32 %i.jl, ptr %i.ji, align 4, !tbaa !67
  br label %bb.aq

bb.aq:                                            ; preds = %read_buf.exit271, %bb.al
  %i.jm = phi i32 [ %i.jg, %read_buf.exit271 ], [ %i.id, %bb.al ] ; 3 uses
  %i.jn = load i64, ptr %i.gu, align 8, !tbaa !42
  %i.jo = zext i32 %i.jm to i64                   ; 2 uses
  %i.jp = icmp ult i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.jo, ptr %i.gu, align 8, !tbaa !42
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jq = load i32, ptr %i.l, align 4, !tbaa !91
  %i.jr = add nsw i32 %i.jq, 42
  %i.js = ashr i32 %i.jr, 3
  %i.jt = load i64, ptr %i.a, align 8, !tbaa !45
  %i.ju = zext i32 %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %spec.select266280 = tail call i64 @llvm.umin.i64(i64 %i.jv, i64 65535)
  %spec.select266 = trunc nuw nsw i64 %spec.select266280 to i32 ; 3 uses
  %i.jw = load i32, ptr %i.d, align 8, !tbaa !33
  %i.jx = tail call i32 @llvm.umin.i32(i32 %i.jw, i32 %spec.select266)
  %i.jy = load i64, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %i.jz = trunc i64 %i.jy to i32                  ; 2 uses
  %i.ka = sub i32 %i.jm, %i.jz                    ; 3 uses
  %.not261 = icmp ult i32 %i.ka, %i.jx
  br i1 %.not261, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kb = icmp ne i32 %i.jm, %i.jz
  %or.cond7 = or i1 %i.o, %i.kb
  %or.cond9 = and i1 %i.p, %or.cond7
  br i1 %or.cond9, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.kc = load ptr, ptr %0, align 8, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !73
  %.not281 = icmp eq i32 %i.ke, 0
  br i1 %.not281, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.kf = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %spec.select266)
  br i1 %i.o, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.kg = load ptr, ptr %0, align 8, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !73
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kk = icmp ule i32 %i.ka, %spec.select266
  %i.kl = zext i1 %i.kk to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.km = phi i32 [ 0, %bb.aw ], [ 0, %bb.av ], [ %i.kl, %bb.ax ] ; 2 uses
  %i.kn = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.jy
  %i.kp = zext nneg i32 %i.kf to i64              ; 2 uses
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %i.ko, i64 noundef %i.kp, i32 noundef %i.km) #12
  %i.kq = load i64, ptr %i.n, align 8, !tbaa !65
  %i.kr = add nsw i64 %i.kq, %i.kp
  store i64 %i.kr, ptr %i.n, align 8, !tbaa !65
  %i.ks = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 56
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !19 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.ku) #12
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40 ; 3 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !88
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 32 ; 3 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !97
  %spec.select.i272 = tail call i32 @llvm.umin.i32(i32 %i.kz, i32 %i.kx) ; 3 uses
  %i.la = icmp eq i32 %spec.select.i272, 0
  br i1 %i.la, label %flush_pending.exit273, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 3 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !96
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 32 ; 4 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !89
  %i.lf = zext i32 %spec.select.i272 to i64       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 1 %i.le, i64 %i.lf, i1 false)
  %i.lg = load ptr, ptr %i.lb, align 8, !tbaa !96
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf
  store ptr %i.lh, ptr %i.lb, align 8, !tbaa !96
  %i.li = load ptr, ptr %i.ld, align 8, !tbaa !89
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lf
  store ptr %i.lj, ptr %i.ld, align 8, !tbaa !89
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ks, i64 40 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !98
  %i.lm = add i64 %i.ll, %i.lf
  store i64 %i.lm, ptr %i.lk, align 8, !tbaa !98
  %i.ln = load i32, ptr %i.ky, align 8, !tbaa !97
  %i.lo = sub i32 %i.ln, %spec.select.i272
  store i32 %i.lo, ptr %i.ky, align 8, !tbaa !97
  %i.lp = load i64, ptr %i.kv, align 8, !tbaa !88 ; 2 uses
  %i.lq = sub i64 %i.lp, %i.lf
  store i64 %i.lq, ptr %i.kv, align 8, !tbaa !88
  %i.lr = icmp eq i64 %i.lp, %i.lf
  br i1 %i.lr, label %bb.ba, label %flush_pending.exit273

bb.ba:                                            ; preds = %bb.az
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !44
  store ptr %i.lt, ptr %i.ld, align 8, !tbaa !89
  br label %flush_pending.exit273

flush_pending.exit273:                            ; preds = %bb.ay, %bb.az, %bb.ba
  %i.lu = icmp eq i32 %i.km, 0
  %i.lv = select i1 %i.lu, i32 0, i32 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.au, %flush_pending.exit273, %bb.at, %bb.ae, %bb.ab
  %.0225 = phi i32 [ 1, %bb.ae ], [ 3, %bb.ab ], [ %i.lv, %flush_pending.exit273 ], [ 0, %bb.at ], [ 0, %bb.au ]
  ret i32 %.0225
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5988 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5976
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5992
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !66
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %.loopexit, label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !69
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.q = load i32, ptr %i.d, align 4, !tbaa !64
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.v = load i32, ptr %i.f, align 4, !tbaa !117  ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.w
  store i16 0, ptr %i.x, align 2, !tbaa !54
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.z = add i32 %i.v, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !9
  %i.ab = zext i8 %i.t to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !9
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.ac, align 4, !tbaa !9
  %i.af = load i32, ptr %i.f, align 4, !tbaa !117
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !49
  %i.ah = icmp eq i32 %i.af, %i.ag
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !66
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !66
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !64
end_hunk_0
