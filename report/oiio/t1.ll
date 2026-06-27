inline.NumInlined: 305
inline.NumDeleted: 36
begin_hunk_0_@opj_t1_dec_sigpass_step_mqc:bb.a
  %i.cr = phi i32 [ %i.v, %bb.u ], [ %i.bb, %bb.k ], [ %i.cl, %bb.t ]
  %.2 = phi i32 [ %i.cq, %bb.u ], [ %.0, %bb.k ], [ %.1, %bb.t ]
  %.not194 = icmp eq i32 %.2, 0
  br i1 %.not194, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %.loopexit202
  %i.cs = load i32, ptr %1, align 4, !tbaa !3     ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = icmp eq i32 %4, 0
  %i.cy = add i32 %i.b, 12
  %.pn.in.v.i = select i1 %i.cx, i32 14, i32 %i.cy
  %.pn.in.i = lshr i32 %i.cs, %.pn.in.v.i
  %i.cz = lshr i32 %i.cs, %i.b
  %i.da = and i32 %i.cz, 170
  %i.db = add i32 %i.b, 19
  %i.dc = lshr i32 %i.cu, %i.db
  %i.dd = and i32 %i.dc, 1
  %i.de = add i32 %i.b, 17
  %i.df = lshr i32 %i.cw, %i.de
  %i.dg = and i32 %i.df, 4
  %.pn.i = and i32 %.pn.in.i, 16
  %i.dh = add i32 %i.b, 16
  %i.di = lshr i32 %i.cs, %i.dh
  %i.dj = and i32 %i.di, 64
  %i.dk = or disjoint i32 %i.dj, %i.da
  %i.dl = or disjoint i32 %i.dk, %.pn.i
  %.0.i = or disjoint i32 %i.dl, %i.dd
  %i.dm = or disjoint i32 %.0.i, %i.dg
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !48
  %i.dq = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.dn
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !48
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = zext i8 %i.dp to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dt ; 4 uses
  store ptr %i.du, ptr %i.q, align 8, !tbaa !120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !122 ; 6 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !124 ; 7 uses
  %i.dx = sub i32 %i.cr, %i.dw                    ; 5 uses
  store i32 %i.dx, ptr %i.t, align 4, !tbaa !121
  %i.dy = lshr i32 %.promoted213, 16
  %i.dz = icmp ult i32 %i.dy, %i.dw
  br i1 %i.dz, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ea = icmp ult i32 %i.dx, %i.dw               ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !126 ; 2 uses
  %.not197 = icmp eq i32 %i.ec, 0
  %i.ed = zext i1 %.not197 to i32
  %.sink237 = select i1 %i.ea, i64 8, i64 16
  %.3 = select i1 %i.ea, i32 %i.ec, i32 %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink237
  store i32 %i.dw, ptr %i.t, align 4, !tbaa !121
  %storemerge200 = load ptr, ptr %i.ee, align 8, !tbaa !122
  store ptr %storemerge200, ptr %i.du, align 8, !tbaa !122
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted212 = load i32, ptr %i.ef, align 8, !tbaa !109
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.w
  %i.ei = phi i32 [ %i.fc, %bb.ad ], [ %i.dw, %bb.w ]
  %i.ej = phi i32 [ %i.fd, %bb.ad ], [ %.promoted213, %bb.w ] ; 4 uses
  %i.ek = phi i32 [ %i.fe, %bb.ad ], [ %.promoted212, %bb.w ] ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !111 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !48  ; 2 uses
  %i.ep = zext i8 %i.eo to i32                    ; 2 uses
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !48
  %i.er = icmp eq i8 %i.eq, -1
  br i1 %i.er, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.es = icmp ugt i8 %i.eo, -113
  br i1 %i.es, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.et = add i32 %i.ej, 65280
  %i.eu = load i32, ptr %i.eh, align 4, !tbaa !127
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.eh, align 4, !tbaa !127
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  store ptr %i.en, ptr %i.eg, align 8, !tbaa !111
  %i.ew = shl nuw nsw i32 %i.ep, 9
  %i.ex = add i32 %i.ej, %i.ew
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store ptr %i.en, ptr %i.eg, align 8, !tbaa !111
  %i.ey = shl nuw nsw i32 %i.ep, 8
  %i.ez = add i32 %i.ej, %i.ey
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.fa = phi i32 [ %i.ez, %bb.ac ], [ %i.ex, %bb.ab ], [ %i.et, %bb.aa ], [ %i.ej, %bb.x ]
  %i.fb = phi i32 [ 8, %bb.ac ], [ 7, %bb.ab ], [ 8, %bb.aa ], [ %i.ek, %bb.x ]
  %i.fc = shl i32 %i.ei, 1                        ; 3 uses
  store i32 %i.fc, ptr %i.t, align 4, !tbaa !121
  %i.fd = shl i32 %i.fa, 1                        ; 2 uses
  store i32 %i.fd, ptr %0, align 8, !tbaa !110
  %i.fe = add i32 %i.fb, -1                       ; 2 uses
  store i32 %i.fe, ptr %i.ef, align 8, !tbaa !109
  %i.ff = icmp ult i32 %i.fc, 32768
  br i1 %i.ff, label %bb.x, label %.loopexit, !llvm.loop !562

bb.ae:                                            ; preds = %bb.v
  %i.fg = shl nuw i32 %i.dw, 16
  %i.fh = sub i32 %.promoted213, %i.fg            ; 2 uses
  store i32 %i.fh, ptr %0, align 8, !tbaa !110
  %i.fi = and i32 %i.dx, 32768
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.fk = icmp ult i32 %i.dx, %i.dw               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !126 ; 2 uses
  %.not196 = icmp eq i32 %i.fm, 0
  %i.fn = zext i1 %.not196 to i32
  %.sink238 = select i1 %i.fk, i64 16, i64 8
  %.4 = select i1 %i.fk, i32 %i.fn, i32 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink238
  %storemerge195 = load ptr, ptr %i.fo, align 8, !tbaa !122
  store ptr %storemerge195, ptr %i.du, align 8, !tbaa !122
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted209 = load i32, ptr %i.fp, align 8, !tbaa !109
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.am, %bb.af
  %i.fs = phi i32 [ %i.gm, %bb.am ], [ %i.dx, %bb.af ]
  %i.ft = phi i32 [ %i.gn, %bb.am ], [ %i.fh, %bb.af ] ; 4 uses
  %i.fu = phi i32 [ %i.go, %bb.am ], [ %.promoted209, %bb.af ] ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !111 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !48  ; 2 uses
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !48
  %i.gb = icmp eq i8 %i.ga, -1
  br i1 %i.gb, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.gc = icmp ugt i8 %i.fy, -113
  br i1 %i.gc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gd = add i32 %i.ft, 65280
  %i.ge = load i32, ptr %i.fr, align 4, !tbaa !127
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.fr, align 4, !tbaa !127
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !111
  %i.gg = shl nuw nsw i32 %i.fz, 9
  %i.gh = add i32 %i.ft, %i.gg
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !111
  %i.gi = shl nuw nsw i32 %i.fz, 8
  %i.gj = add i32 %i.ft, %i.gi
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag
  %i.gk = phi i32 [ %i.gj, %bb.al ], [ %i.gh, %bb.ak ], [ %i.gd, %bb.aj ], [ %i.ft, %bb.ag ]
  %i.gl = phi i32 [ 8, %bb.al ], [ 7, %bb.ak ], [ 8, %bb.aj ], [ %i.fu, %bb.ag ]
  %i.gm = shl i32 %i.fs, 1                        ; 3 uses
  store i32 %i.gm, ptr %i.t, align 4, !tbaa !121
  %i.gn = shl i32 %i.gk, 1                        ; 2 uses
  store i32 %i.gn, ptr %0, align 8, !tbaa !110
  %i.go = add i32 %i.gl, -1                       ; 2 uses
  store i32 %i.go, ptr %i.fp, align 8, !tbaa !109
  %i.gp = icmp ult i32 %i.gm, 32768
  br i1 %i.gp, label %bb.ag, label %.loopexit, !llvm.loop !563

bb.an:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %bb.ad, %bb.an
  %.5 = phi i32 [ %i.gr, %bb.an ], [ %.3, %bb.ad ], [ %.4, %bb.am ] ; 2 uses
  %i.gs = xor i32 %.5, %i.ds                      ; 2 uses
  %.not198 = icmp eq i32 %.5, %i.ds
  %i.gt = sub nsw i32 0, %3
  %i.gu = select i1 %.not198, i32 %3, i32 %i.gt
  store i32 %i.gu, ptr %2, align 4, !tbaa !3
  %i.gv = shl i32 32, %i.b
  %i.gw = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.gx = or i32 %i.gw, %i.gv
  store i32 %i.gx, ptr %i.ct, align 4, !tbaa !3
  %i.gy = shl i32 %i.gs, 19
  %i.gz = or disjoint i32 %i.gy, 16
  %i.ha = shl i32 %i.gz, %i.b
  %i.hb = load i32, ptr %1, align 4, !tbaa !3
  %i.hc = or i32 %i.hb, %i.ha
  store i32 %i.hc, ptr %1, align 4, !tbaa !3
  %i.hd = shl i32 8, %i.b
  %i.he = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.hf = or i32 %i.he, %i.hd
  store i32 %i.hf, ptr %i.cv, align 4, !tbaa !3
  %7 = icmp ne i32 %4, 0
  %8 = trunc nuw i32 %6 to i1
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.hg = zext i32 %5 to i64
  %i.hh = sub nsw i64 0, %i.hg
  br label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.hi = icmp eq i32 %4, 3
  br i1 %i.hi, label %9, label %bb.ar

9:                                                ; preds = %bb.ap
  %10 = zext i32 %5 to i64
  br label %bb.aq

bb.aq:                                            ; preds = %9, %bb.ao
  %.sink259 = phi i64 [ %i.hh, %bb.ao ], [ %10, %9 ]
  %.sink258 = phi i32 [ 31, %bb.ao ], [ 18, %9 ]
  %.sink257 = phi i32 [ 65536, %bb.ao ], [ 2, %9 ]
  %.sink248 = phi i32 [ 131072, %bb.ao ], [ 4, %9 ]
  %.sink242 = phi i32 [ 32768, %bb.ao ], [ 1, %9 ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %.sink259 ; 4 uses
  %i.hk = shl i32 %i.gs, %.sink258
  %i.hl = or disjoint i32 %i.hk, %.sink257
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hn = or i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, %.sink248
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = or i32 %i.hs, %.sink242
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.loopexit202
  %i.hu = shl i32 2097152, %i.b
  %i.hv = load i32, ptr %1, align 4, !tbaa !3
  %i.hw = or i32 %i.hv, %i.hu
  store i32 %i.hw, ptr %1, align 4, !tbaa !3
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 2, -2147483648) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = mul i32 %4, 3                            ; 10 uses
  %i.c = shl i32 2097168, %i.b
  %i.d = and i32 %i.a, %i.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.a, %i.b
  %i.f = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.g = and i32 %i.e, 495
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !120
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !122  ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !124  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !121
  %i.s = sub i32 %i.r, %i.p                       ; 6 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !121
  %i.t = load i32, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = icmp ult i32 %i.u, %i.p
  br i1 %i.v, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ult i32 %i.s, %i.p                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !126  ; 2 uses
  %.not189 = icmp eq i32 %i.y, 0
  %i.z = zext i1 %.not189 to i32
  %.sink = select i1 %i.w, i64 8, i64 16
  %.0 = select i1 %i.w, i32 %i.y, i32 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink
  store i32 %i.p, ptr %i.q, align 4, !tbaa !121
  %storemerge195 = load ptr, ptr %i.aa, align 8, !tbaa !122
  store ptr %storemerge195, ptr %i.m, align 8, !tbaa !122
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted202 = load i32, ptr %i.ab, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.ae = phi i32 [ %i.ay, %bb.j ], [ %i.p, %bb.c ]
  %i.af = phi i32 [ %i.az, %bb.j ], [ %i.t, %bb.c ] ; 4 uses
  %i.ag = phi i32 [ %i.ba, %bb.j ], [ %.promoted202, %bb.c ] ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !111 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !48  ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !48
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp ugt i8 %i.ak, -113
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = add i32 %i.af, 65280
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !127
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ad, align 4, !tbaa !127
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !111
  %i.as = shl nuw nsw i32 %i.al, 9
  %i.at = add i32 %i.af, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !111
  %i.au = shl nuw nsw i32 %i.al, 8
  %i.av = add i32 %i.af, %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.aw = phi i32 [ %i.av, %bb.i ], [ %i.at, %bb.h ], [ %i.ap, %bb.g ], [ %i.af, %bb.d ]
  %i.ax = phi i32 [ 8, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ %i.ag, %bb.d ]
  %i.ay = shl i32 %i.ae, 1                        ; 4 uses
  store i32 %i.ay, ptr %i.q, align 4, !tbaa !121
  %i.az = shl i32 %i.aw, 1                        ; 3 uses
  store i32 %i.az, ptr %0, align 8, !tbaa !110
  %i.ba = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ab, align 8, !tbaa !109
  %i.bb = icmp ult i32 %i.ay, 32768
  br i1 %i.bb, label %bb.d, label %.loopexit198, !llvm.loop !564

bb.k:                                             ; preds = %bb.b
  %i.bc = shl nuw i32 %i.p, 16
  %i.bd = sub i32 %i.t, %i.bc                     ; 3 uses
  store i32 %i.bd, ptr %0, align 8, !tbaa !110
  %i.be = and i32 %i.s, 32768
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ult i32 %i.s, %i.p                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !126 ; 2 uses
  %.not188 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not188 to i32
  %.sink232 = select i1 %i.bg, i64 16, i64 8
  %.1 = select i1 %i.bg, i32 %i.bj, i32 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink232
  %storemerge = load ptr, ptr %i.bk, align 8, !tbaa !122
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i32, ptr %i.bl, align 8, !tbaa !109
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %i.bo = phi i32 [ %i.ci, %bb.s ], [ %i.s, %bb.l ]
  %i.bp = phi i32 [ %i.cj, %bb.s ], [ %i.bd, %bb.l ] ; 4 uses
  %i.bq = phi i32 [ %i.ck, %bb.s ], [ %.promoted, %bb.l ] ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !111 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !48  ; 2 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !48
  %i.bx = icmp eq i8 %i.bw, -1
  br i1 %i.bx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.by = icmp ugt i8 %i.bu, -113
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = add i32 %i.bp, 65280
  %i.ca = load i32, ptr %i.bn, align 4, !tbaa !127
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bn, align 4, !tbaa !127
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !111
  %i.cc = shl nuw nsw i32 %i.bv, 9
  %i.cd = add i32 %i.bp, %i.cc
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !111
  %i.ce = shl nuw nsw i32 %i.bv, 8
  %i.cf = add i32 %i.bp, %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %i.cg = phi i32 [ %i.cf, %bb.r ], [ %i.cd, %bb.q ], [ %i.bz, %bb.p ], [ %i.bp, %bb.m ]
  %i.ch = phi i32 [ 8, %bb.r ], [ 7, %bb.q ], [ 8, %bb.p ], [ %i.bq, %bb.m ]
  %i.ci = shl i32 %i.bo, 1                        ; 4 uses
  store i32 %i.ci, ptr %i.q, align 4, !tbaa !121
  %i.cj = shl i32 %i.cg, 1                        ; 3 uses
  store i32 %i.cj, ptr %0, align 8, !tbaa !110
  %i.ck = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.bl, align 8, !tbaa !109
  %i.cl = icmp ult i32 %i.ci, 32768
  br i1 %i.cl, label %bb.m, label %.loopexit198, !llvm.loop !565

bb.t:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !126
  br label %.loopexit198

.loopexit198:                                     ; preds = %bb.s, %bb.j, %bb.t
  %.promoted209 = phi i32 [ %i.bd, %bb.t ], [ %i.az, %bb.j ], [ %i.cj, %bb.s ] ; 3 uses
  %i.co = phi i32 [ %i.s, %bb.t ], [ %i.ay, %bb.j ], [ %i.ci, %bb.s ]
  %.2 = phi i32 [ %i.cn, %bb.t ], [ %.0, %bb.j ], [ %.1, %bb.s ]
  %.not190 = icmp eq i32 %.2, 0
  br i1 %.not190, label %bb.aq, label %bb.u

bb.u:                                             ; preds = %.loopexit198
  %i.cp = load i32, ptr %1, align 4, !tbaa !3     ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = icmp eq i32 %4, 0
  %i.cv = add i32 %i.b, 12
  %.pn.in.v.i = select i1 %i.cu, i32 14, i32 %i.cv
  %.pn.in.i = lshr i32 %i.cp, %.pn.in.v.i
  %i.cw = lshr i32 %i.cp, %i.b
  %i.cx = and i32 %i.cw, 170
  %i.cy = add i32 %i.b, 19
  %i.cz = lshr i32 %i.cr, %i.cy
  %i.da = and i32 %i.cz, 1
  %i.db = add i32 %i.b, 17
  %i.dc = lshr i32 %i.ct, %i.db
  %i.dd = and i32 %i.dc, 4
  %.pn.i = and i32 %.pn.in.i, 16
  %i.de = add i32 %i.b, 16
  %i.df = lshr i32 %i.cp, %i.de
  %i.dg = and i32 %i.df, 64
  %i.dh = or disjoint i32 %i.dg, %i.cx
  %i.di = or disjoint i32 %i.dh, %.pn.i
  %.0.i = or disjoint i32 %i.di, %i.da
  %i.dj = or disjoint i32 %.0.i, %i.dd
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !48
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dn ; 4 uses
  store ptr %i.do, ptr %i.n, align 8, !tbaa !120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !122 ; 6 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !124 ; 7 uses
  %i.dr = sub i32 %i.co, %i.dq                    ; 5 uses
  store i32 %i.dr, ptr %i.q, align 4, !tbaa !121
  %i.ds = lshr i32 %.promoted209, 16
  %i.dt = icmp ult i32 %i.ds, %i.dq
  br i1 %i.dt, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.du = icmp ult i32 %i.dr, %i.dq               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !126 ; 2 uses
  %.not193 = icmp eq i32 %i.dw, 0
  %i.dx = zext i1 %.not193 to i32
  %.sink233 = select i1 %i.du, i64 8, i64 16
  %.3 = select i1 %i.du, i32 %i.dw, i32 %i.dx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink233
  store i32 %i.dq, ptr %i.q, align 4, !tbaa !121
  %storemerge196 = load ptr, ptr %i.dy, align 8, !tbaa !122
  store ptr %storemerge196, ptr %i.do, align 8, !tbaa !122
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted208 = load i32, ptr %i.dz, align 8, !tbaa !109
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %i.ec = phi i32 [ %i.ew, %bb.ac ], [ %i.dq, %bb.v ]
  %i.ed = phi i32 [ %i.ex, %bb.ac ], [ %.promoted209, %bb.v ] ; 4 uses
  %i.ee = phi i32 [ %i.ey, %bb.ac ], [ %.promoted208, %bb.v ] ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !111 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !48  ; 2 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !48
  %i.el = icmp eq i8 %i.ek, -1
  br i1 %i.el, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.em = icmp ugt i8 %i.ei, -113
  br i1 %i.em, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.en = add i32 %i.ed, 65280
  %i.eo = load i32, ptr %i.eb, align 4, !tbaa !127
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.eb, align 4, !tbaa !127
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !111
  %i.eq = shl nuw nsw i32 %i.ej, 9
  %i.er = add i32 %i.ed, %i.eq
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !111
  %i.es = shl nuw nsw i32 %i.ej, 8
  %i.et = add i32 %i.ed, %i.es
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w
  %i.eu = phi i32 [ %i.et, %bb.ab ], [ %i.er, %bb.aa ], [ %i.en, %bb.z ], [ %i.ed, %bb.w ]
  %i.ev = phi i32 [ 8, %bb.ab ], [ 7, %bb.aa ], [ 8, %bb.z ], [ %i.ee, %bb.w ]
  %i.ew = shl i32 %i.ec, 1                        ; 3 uses
  store i32 %i.ew, ptr %i.q, align 4, !tbaa !121
  %i.ex = shl i32 %i.eu, 1                        ; 2 uses
  store i32 %i.ex, ptr %0, align 8, !tbaa !110
  %i.ey = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.dz, align 8, !tbaa !109
  %i.ez = icmp ult i32 %i.ew, 32768
  br i1 %i.ez, label %bb.w, label %.loopexit, !llvm.loop !566

bb.ad:                                            ; preds = %bb.u
  %i.fa = shl nuw i32 %i.dq, 16
  %i.fb = sub i32 %.promoted209, %i.fa            ; 2 uses
  store i32 %i.fb, ptr %0, align 8, !tbaa !110
  %i.fc = and i32 %i.dr, 32768
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.fe = icmp ult i32 %i.dr, %i.dq               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !126 ; 2 uses
  %.not192 = icmp eq i32 %i.fg, 0
  %i.fh = zext i1 %.not192 to i32
  %.sink234 = select i1 %i.fe, i64 16, i64 8
  %.4 = select i1 %i.fe, i32 %i.fh, i32 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink234
  %storemerge191 = load ptr, ptr %i.fi, align 8, !tbaa !122
  store ptr %storemerge191, ptr %i.do, align 8, !tbaa !122
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted205 = load i32, ptr %i.fj, align 8, !tbaa !109
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %bb.ae
  %i.fm = phi i32 [ %i.gg, %bb.al ], [ %i.dr, %bb.ae ]
  %i.fn = phi i32 [ %i.gh, %bb.al ], [ %i.fb, %bb.ae ] ; 4 uses
  %i.fo = phi i32 [ %i.gi, %bb.al ], [ %.promoted205, %bb.ae ] ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !111 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !48  ; 2 uses
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !48
  %i.fv = icmp eq i8 %i.fu, -1
  br i1 %i.fv, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fw = icmp ugt i8 %i.fs, -113
  br i1 %i.fw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fx = add i32 %i.fn, 65280
  %i.fy = load i32, ptr %i.fl, align 4, !tbaa !127
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fl, align 4, !tbaa !127
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !111
  %i.ga = shl nuw nsw i32 %i.ft, 9
  %i.gb = add i32 %i.fn, %i.ga
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !111
  %i.gc = shl nuw nsw i32 %i.ft, 8
  %i.gd = add i32 %i.fn, %i.gc
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af
  %i.ge = phi i32 [ %i.gd, %bb.ak ], [ %i.gb, %bb.aj ], [ %i.fx, %bb.ai ], [ %i.fn, %bb.af ]
  %i.gf = phi i32 [ 8, %bb.ak ], [ 7, %bb.aj ], [ 8, %bb.ai ], [ %i.fo, %bb.af ]
  %i.gg = shl i32 %i.fm, 1                        ; 3 uses
  store i32 %i.gg, ptr %i.q, align 4, !tbaa !121
  %i.gh = shl i32 %i.ge, 1                        ; 2 uses
  store i32 %i.gh, ptr %0, align 8, !tbaa !110
  %i.gi = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.fj, align 8, !tbaa !109
  %i.gj = icmp ult i32 %i.gg, 32768
  br i1 %i.gj, label %bb.af, label %.loopexit, !llvm.loop !567

bb.am:                                            ; preds = %bb.ad
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.ac, %bb.am
  %.5 = phi i32 [ %i.gl, %bb.am ], [ %.3, %bb.ac ], [ %.4, %bb.al ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.dk
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !48
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = xor i32 %.5, %i.go                      ; 2 uses
  %.not194 = icmp eq i32 %.5, %i.go
  %i.gq = sub nsw i32 0, %3
  %i.gr = select i1 %.not194, i32 %3, i32 %i.gq
  store i32 %i.gr, ptr %2, align 4, !tbaa !3
  %i.gs = shl i32 32, %i.b
  %i.gt = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.gu = or i32 %i.gt, %i.gs
  store i32 %i.gu, ptr %i.cq, align 4, !tbaa !3
  %i.gv = shl i32 %i.gp, 19
  %i.gw = or disjoint i32 %i.gv, 16
  %i.gx = shl i32 %i.gw, %i.b
  %i.gy = load i32, ptr %1, align 4, !tbaa !3
  %i.gz = or i32 %i.gx, %i.gy
  store i32 %i.gz, ptr %1, align 4, !tbaa !3
  %i.ha = shl i32 8, %i.b
  %i.hb = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.hc = or i32 %i.hb, %i.ha
  store i32 %i.hc, ptr %i.cs, align 4, !tbaa !3
  %6 = icmp ne i32 %4, 0
  %7 = trunc nuw i32 %5 to i1
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !107
  %i.hf = add i32 %i.he, 2
  %i.hg = zext i32 %i.hf to i64
  %i.hh = sub nsw i64 0, %i.hg
  br label %bb.ap

bb.ao:                                            ; preds = %.loopexit
  %i.hi = icmp eq i32 %4, 3
  br i1 %i.hi, label %8, label %bb.aq

8:                                                ; preds = %bb.ao
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %10 = load i32, ptr %9, align 8, !tbaa !107
  %11 = add i32 %10, 2
  %12 = zext i32 %11 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %8, %bb.an
  %.sink255 = phi i64 [ %i.hh, %bb.an ], [ %12, %8 ]
  %.sink254 = phi i32 [ 31, %bb.an ], [ 18, %8 ]
  %.sink253 = phi i32 [ 65536, %bb.an ], [ 2, %8 ]
  %.sink244 = phi i32 [ 131072, %bb.an ], [ 4, %8 ]
  %.sink238 = phi i32 [ 32768, %bb.an ], [ 1, %8 ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %.sink255 ; 4 uses
  %i.hk = shl i32 %i.gp, %.sink254
  %i.hl = or disjoint i32 %i.hk, %.sink253
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hn = or i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, %.sink244
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = or i32 %i.hs, %.sink238
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit198, %bb.ao, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @lrintf(float noundef) local_unnamed_addr #9

declare void @opj_mqc_init_enc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_bypass_init_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_restart_init_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_segmark_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_bypass_flush_enc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @opj_mqc_erterm_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_flush(ptr noundef) local_unnamed_addr #2

declare i32 @opj_mqc_numbytes(ptr noundef) local_unnamed_addr #2

declare i32 @opj_mqc_bypass_get_extra_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @opj_mqc_reset_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_byteout(ptr noundef) local_unnamed_addr #2

declare double @opj_dwt_getnorm(i32 noundef, i32 noundef) local_unnamed_addr #2

declare double @opj_dwt_getnorm_real(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 248}
!8 = !{!"opj_t1", !9, i64 0, !14, i64 216, !14, i64 224, !4, i64 232, !4, i64 236, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !10, i64 256, !4, i64 264}
!9 = !{!"opj_mqc", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !12, i64 192, !10, i64 200, !5, i64 208}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p2 _ZTS13opj_mqc_state", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!8, !14, i64 216}
!16 = !{!8, !14, i64 224}
!17 = !{!8, !10, i64 256}
!18 = !{!19, !24, i64 64}
!19 = !{!"opj_tcd", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !20, i64 24, !21, i64 32, !22, i64 40, !23, i64 48, !4, i64 56, !4, i64 60, !24, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !14, i64 96}
!20 = !{!"p1 _ZTS13opj_tcd_image", !11, i64 0}
!21 = !{!"p1 _ZTS9opj_image", !11, i64 0}
!22 = !{!"p1 _ZTS6opj_cp", !11, i64 0}
!23 = !{!"p1 _ZTS7opj_tcp", !11, i64 0}
!24 = !{!"p1 _ZTS17opj_thread_pool_t", !11, i64 0}
!25 = !{!26, !4, i64 24}
!26 = !{!"opj_tcd_tilecomp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !27, i64 32, !4, i64 40, !14, i64 48, !4, i64 56, !28, i64 64, !28, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !28, i64 104}
!27 = !{!"p1 _ZTS18opj_tcd_resolution", !11, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!26, !27, i64 32}
!30 = !{!31, !4, i64 24}
!31 = !{!"opj_tcd_resolution", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 32, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188}
!32 = !{!31, !4, i64 16}
!33 = !{!31, !4, i64 20}
!34 = !{!35, !36, i64 24}
!35 = !{!"opj_tcd_band", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !36, i64 24, !4, i64 32, !4, i64 36, !37, i64 40}
!36 = !{!"p1 _ZTS16opj_tcd_precinct", !11, i64 0}
!37 = !{!"float", !5, i64 0}
!38 = !{!26, !4, i64 16}
!39 = !{!35, !4, i64 16}
!40 = !{!41, !4, i64 0}
!41 = !{!"opj_tcd_precinct", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !4, i64 32, !42, i64 40, !42, i64 48}
!42 = !{!"p1 _ZTS12opj_tgt_tree", !11, i64 0}
!43 = !{!41, !4, i64 4}
!44 = !{!41, !4, i64 8}
!45 = !{!41, !4, i64 12}
!46 = !{!41, !4, i64 16}
!47 = !{!41, !4, i64 20}
!48 = !{!5, !5, i64 0}
!49 = !{!50, !14, i64 72}
!50 = !{!"opj_tcd_cblk_dec", !51, i64 0, !52, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !14, i64 72, !4, i64 80}
!51 = !{!"p1 _ZTS11opj_tcd_seg", !11, i64 0}
!52 = !{!"p1 _ZTS22opj_tcd_seg_data_chunk", !11, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!50, !4, i64 16}
!56 = !{!50, !4, i64 20}
!57 = !{!50, !4, i64 24}
!58 = !{!50, !4, i64 28}
!59 = !{!19, !4, i64 88}
!60 = !{!61, !4, i64 0}
!61 = !{!"", !4, i64 0, !4, i64 4, !62, i64 8, !63, i64 16, !64, i64 24, !65, i64 32, !4, i64 40, !14, i64 48, !66, i64 56, !67, i64 64, !4, i64 72}
!62 = !{!"p1 _ZTS16opj_tcd_cblk_dec", !11, i64 0}
!63 = !{!"p1 _ZTS12opj_tcd_band", !11, i64 0}
!64 = !{!"p1 _ZTS16opj_tcd_tilecomp", !11, i64 0}
!65 = !{!"p1 _ZTS8opj_tccp", !11, i64 0}
!66 = !{!"p1 _ZTS13opj_event_mgr", !11, i64 0}
!67 = !{!"p1 _ZTS11opj_mutex_t", !11, i64 0}
!68 = !{!61, !4, i64 4}
!69 = !{!61, !62, i64 8}
!70 = !{!61, !63, i64 16}
!71 = !{!61, !64, i64 24}
!72 = !{!61, !65, i64 32}
!73 = !{!61, !14, i64 48}
!74 = !{!61, !67, i64 64}
!75 = !{!61, !66, i64 56}
!76 = !{!61, !4, i64 72}
!77 = !{!61, !4, i64 40}
!78 = distinct !{!78, !54}
!79 = distinct !{!79, !54}
!80 = distinct !{!80, !54}
!81 = distinct !{!81, !54}
!82 = !{!31, !4, i64 8}
!83 = !{!31, !4, i64 0}
!84 = !{!8, !4, i64 252}
!85 = !{!86, !4, i64 16}
!86 = !{!"opj_tccp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !4, i64 804, !4, i64 808, !5, i64 812, !5, i64 944, !4, i64 1076}
!87 = !{!86, !4, i64 808}
!88 = !{!9, !10, i64 200}
!89 = !{!50, !4, i64 36}
!90 = !{!50, !4, i64 80}
!91 = !{!50, !4, i64 60}
!92 = !{!50, !52, i64 8}
!93 = !{!94, !4, i64 8}
!94 = !{!"opj_tcd_seg_data_chunk", !10, i64 0, !4, i64 8}
!95 = distinct !{!95, !54, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !54, !97, !96}
!99 = !{!8, !4, i64 264}
!100 = !{!94, !10, i64 0}
!101 = distinct !{!101, !54}
!102 = !{!50, !4, i64 52}
!103 = !{!50, !51, i64 0}
!104 = !{!105, !4, i64 0}
!105 = !{!"opj_tcd_seg", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!106 = !{!105, !4, i64 8}
!107 = !{!8, !4, i64 232}
!108 = !{!8, !4, i64 236}
!109 = !{!9, !4, i64 8}
!110 = !{!9, !4, i64 0}
!111 = !{!9, !10, i64 16}
!112 = distinct !{!112, !54}
!113 = distinct !{!113, !54}
!114 = distinct !{!114, !54}
!115 = distinct !{!115, !54}
!116 = distinct !{!116, !54}
!117 = distinct !{!117, !54}
!118 = distinct !{!118, !54}
!119 = distinct !{!119, !54}
!120 = !{!9, !12, i64 192}
!121 = !{!9, !4, i64 4}
!122 = !{!123, !123, i64 0}
!123 = !{!"p1 _ZTS13opj_mqc_state", !11, i64 0}
!124 = !{!125, !4, i64 0}
!125 = !{!"opj_mqc_state", !4, i64 0, !4, i64 4, !123, i64 8, !123, i64 16}
!126 = !{!125, !4, i64 4}
!127 = !{!9, !4, i64 12}
!128 = distinct !{!128, !54}
!129 = distinct !{!129, !54}
!130 = distinct !{!130, !54}
!131 = distinct !{!131, !54}
end_hunk_0
