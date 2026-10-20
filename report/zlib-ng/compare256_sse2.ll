Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/compare256_sse2?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@longest_match_slow_sse2:bb.a
  %.val281 = load i32, ptr %i.ec, align 1, !tbaa !8
  %.not365 = icmp eq i32 %.val281, %i.bo
  br i1 %.not365, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ed = add i32 %.4197, -1                      ; 2 uses
  %.not257 = icmp eq i32 %i.ed, 0
  br i1 %.not257, label %.thread323, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = and i32 %i.d, %i.dz
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !32 ; 2 uses
  %i.ei = icmp ugt i16 %i.eh, %.1201407
  br i1 %i.ei, label %bb.o, label %.thread323

.loopexit:                                        ; preds = %bb.p, %bb.l, %bb.g
  %.pre-phi = phi i64 [ %i.dq, %bb.l ], [ %i.df, %bb.g ], [ %i.ea, %bb.p ]
  %.7227 = phi i16 [ %.5225, %bb.l ], [ %.4224, %bb.g ], [ %.6226, %bb.p ] ; 2 uses
  %.5198 = phi i32 [ %.3196, %bb.l ], [ %.2195, %bb.g ], [ %.4197, %bb.p ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2215405, i64 %.pre-phi ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2 ; 2 uses
  %i.el = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8
  %i.em = load <16 x i8>, ptr %i.ek, align 1, !tbaa !8
  %i.en = icmp eq <16 x i8> %i.el, %i.em
  %i.eo = bitcast <16 x i1> %i.en to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.eo, -1
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.ep = zext i16 %i.eo to i32
  %i.eq = xor i32 %i.ep, -1
  %i.er = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eq, i1 true)
  br label %compare256_sse2_static.exit

bb.t:                                             ; preds = %.loopexit
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.bu ; 15 uses
  %i.et = load <16 x i8>, ptr %i.bv, align 16, !tbaa !8
  %i.eu = load <16 x i8>, ptr %i.es, align 1, !tbaa !8
  %i.ev = icmp eq <16 x i8> %i.et, %i.eu
  %i.ew = bitcast <16 x i1> %i.ev to i16          ; 2 uses
  %.not56.i = icmp eq i16 %i.ew, -1
  br i1 %.not56.i, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ey = load <16 x i8>, ptr %i.bx, align 16, !tbaa !8
  %i.ez = load <16 x i8>, ptr %i.ex, align 1, !tbaa !8
  %i.fa = icmp eq <16 x i8> %i.ey, %i.ez
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not56.1.i = icmp eq i16 %i.fb, -1
  br i1 %.not56.1.i, label %bb.v, label %bb.aj

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fd = load <16 x i8>, ptr %i.bz, align 16, !tbaa !8
  %i.fe = load <16 x i8>, ptr %i.fc, align 1, !tbaa !8
  %i.ff = icmp eq <16 x i8> %i.fd, %i.fe
  %i.fg = bitcast <16 x i1> %i.ff to i16          ; 2 uses
  %.not56.2.i = icmp eq i16 %i.fg, -1
  br i1 %.not56.2.i, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.fi = load <16 x i8>, ptr %i.cb, align 16, !tbaa !8
  %i.fj = load <16 x i8>, ptr %i.fh, align 1, !tbaa !8
  %i.fk = icmp eq <16 x i8> %i.fi, %i.fj
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not56.3.i = icmp eq i16 %i.fl, -1
  br i1 %.not56.3.i, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.fn = load <16 x i8>, ptr %i.cd, align 16, !tbaa !8
  %i.fo = load <16 x i8>, ptr %i.fm, align 1, !tbaa !8
  %i.fp = icmp eq <16 x i8> %i.fn, %i.fo
  %i.fq = bitcast <16 x i1> %i.fp to i16          ; 2 uses
  %.not56.4.i = icmp eq i16 %i.fq, -1
  br i1 %.not56.4.i, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.fs = load <16 x i8>, ptr %i.cf, align 16, !tbaa !8
  %i.ft = load <16 x i8>, ptr %i.fr, align 1, !tbaa !8
  %i.fu = icmp eq <16 x i8> %i.fs, %i.ft
  %i.fv = bitcast <16 x i1> %i.fu to i16          ; 2 uses
  %.not56.5.i = icmp eq i16 %i.fv, -1
  br i1 %.not56.5.i, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.fw = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.fx = load <16 x i8>, ptr %i.ch, align 16, !tbaa !8
  %i.fy = load <16 x i8>, ptr %i.fw, align 1, !tbaa !8
  %i.fz = icmp eq <16 x i8> %i.fx, %i.fy
  %i.ga = bitcast <16 x i1> %i.fz to i16          ; 2 uses
  %.not56.6.i = icmp eq i16 %i.ga, -1
  br i1 %.not56.6.i, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %i.es, i64 112
  %i.gc = load <16 x i8>, ptr %i.cj, align 16, !tbaa !8
  %i.gd = load <16 x i8>, ptr %i.gb, align 1, !tbaa !8
  %i.ge = icmp eq <16 x i8> %i.gc, %i.gd
  %i.gf = bitcast <16 x i1> %i.ge to i16          ; 2 uses
  %.not56.7.i = icmp eq i16 %i.gf, -1
  br i1 %.not56.7.i, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  %i.gh = load <16 x i8>, ptr %i.cl, align 16, !tbaa !8
  %i.gi = load <16 x i8>, ptr %i.gg, align 1, !tbaa !8
  %i.gj = icmp eq <16 x i8> %i.gh, %i.gi
  %i.gk = bitcast <16 x i1> %i.gj to i16          ; 2 uses
  %.not56.8.i = icmp eq i16 %i.gk, -1
  br i1 %.not56.8.i, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.gl = getelementptr inbounds nuw i8, ptr %i.es, i64 144
  %i.gm = load <16 x i8>, ptr %i.cn, align 16, !tbaa !8
  %i.gn = load <16 x i8>, ptr %i.gl, align 1, !tbaa !8
  %i.go = icmp eq <16 x i8> %i.gm, %i.gn
  %i.gp = bitcast <16 x i1> %i.go to i16          ; 2 uses
  %.not56.9.i = icmp eq i16 %i.gp, -1
  br i1 %.not56.9.i, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  %i.gr = load <16 x i8>, ptr %i.cp, align 16, !tbaa !8
  %i.gs = load <16 x i8>, ptr %i.gq, align 1, !tbaa !8
  %i.gt = icmp eq <16 x i8> %i.gr, %i.gs
  %i.gu = bitcast <16 x i1> %i.gt to i16          ; 2 uses
  %.not56.10.i = icmp eq i16 %i.gu, -1
  br i1 %.not56.10.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw i8, ptr %i.es, i64 176
  %i.gw = load <16 x i8>, ptr %i.cr, align 16, !tbaa !8
  %i.gx = load <16 x i8>, ptr %i.gv, align 1, !tbaa !8
  %i.gy = icmp eq <16 x i8> %i.gw, %i.gx
  %i.gz = bitcast <16 x i1> %i.gy to i16          ; 2 uses
  %.not56.11.i = icmp eq i16 %i.gz, -1
  br i1 %.not56.11.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %i.es, i64 192
  %i.hb = load <16 x i8>, ptr %i.ct, align 16, !tbaa !8
  %i.hc = load <16 x i8>, ptr %i.ha, align 1, !tbaa !8
  %i.hd = icmp eq <16 x i8> %i.hb, %i.hc
  %i.he = bitcast <16 x i1> %i.hd to i16          ; 2 uses
  %.not56.12.i = icmp eq i16 %i.he, -1
  br i1 %.not56.12.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.hf = getelementptr inbounds nuw i8, ptr %i.es, i64 208
  %i.hg = load <16 x i8>, ptr %i.cv, align 16, !tbaa !8
  %i.hh = load <16 x i8>, ptr %i.hf, align 1, !tbaa !8
  %i.hi = icmp eq <16 x i8> %i.hg, %i.hh
  %i.hj = bitcast <16 x i1> %i.hi to i16          ; 2 uses
  %.not56.13.i = icmp eq i16 %i.hj, -1
  br i1 %.not56.13.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %i.es, i64 224
  %i.hl = load <16 x i8>, ptr %i.cx, align 16, !tbaa !8
  %i.hm = load <16 x i8>, ptr %i.hk, align 1, !tbaa !8
  %i.hn = icmp eq <16 x i8> %i.hl, %i.hm
  %i.ho = bitcast <16 x i1> %i.hn to i16          ; 2 uses
  %.not56.14.i = icmp eq i16 %i.ho, -1
  br i1 %.not56.14.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not57.i, label %compare256_sse2_static.exit, label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.05261.lcssa.i = phi i32 [ %i.bt, %bb.t ], [ %i.bw, %bb.u ], [ %i.by, %bb.v ], [ %i.ca, %bb.w ], [ %i.cc, %bb.x ], [ %i.ce, %bb.y ], [ %i.cg, %bb.z ], [ %i.ci, %bb.aa ], [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ], [ %i.co, %bb.ad ], [ %i.cq, %bb.ae ], [ %i.cs, %bb.af ], [ %i.cu, %bb.ag ], [ %i.cw, %bb.ah ]
  %.lcssa.i = phi i16 [ %i.ew, %bb.t ], [ %i.fb, %bb.u ], [ %i.fg, %bb.v ], [ %i.fl, %bb.w ], [ %i.fq, %bb.x ], [ %i.fv, %bb.y ], [ %i.ga, %bb.z ], [ %i.gf, %bb.aa ], [ %i.gk, %bb.ab ], [ %i.gp, %bb.ac ], [ %i.gu, %bb.ad ], [ %i.gz, %bb.ae ], [ %i.he, %bb.af ], [ %i.hj, %bb.ag ], [ %i.ho, %bb.ah ]
  %i.hp = zext i16 %.lcssa.i to i32
  %i.hq = xor i32 %i.hp, -1
  %i.hr = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hq, i1 true)
  %i.hs = add nuw nsw i32 %i.hr, %.05261.lcssa.i
  br label %compare256_sse2_static.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ej, i64 242
  %i.hu = load <16 x i8>, ptr %i.cy, align 1, !tbaa !8
  %i.hv = load <16 x i8>, ptr %i.ht, align 1, !tbaa !8
  %i.hw = icmp eq <16 x i8> %i.hu, %i.hv
  %i.hx = bitcast <16 x i1> %i.hw to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.hx, -1
  br i1 %.not58.i, label %compare256_sse2_static.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hy = zext i16 %i.hx to i32
  %i.hz = xor i32 %i.hy, -1
  %i.ia = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hz, i1 true)
  %i.ib = add nuw nsw i32 %i.ia, 240
  br label %compare256_sse2_static.exit

compare256_sse2_static.exit:                      ; preds = %bb.s, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.2.i = phi i32 [ %i.er, %bb.s ], [ %i.ib, %bb.al ], [ %i.hs, %bb.aj ], [ 256, %bb.ak ], [ 256, %bb.ai ] ; 6 uses
  %i.ic = add nuw nsw i32 %.2.i, 2                ; 10 uses
  %i.id = icmp ugt i32 %i.ic, %.0188409
  br i1 %i.id, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %compare256_sse2_static.exit
  %i.ie = zext i16 %.7227 to i32
  %i.if = zext i16 %.3185410 to i32
  %i.ig = sub nsw i32 %i.ie, %i.if                ; 4 uses
  store i32 %i.ig, ptr %i.cz, align 8, !tbaa !33
  %.not260 = icmp ult i32 %i.ic, %i.l
  br i1 %.not260, label %bb.an, label %.thread323

bb.an:                                            ; preds = %bb.am
  %.not261 = icmp ult i32 %i.ic, %i.z
  br i1 %.not261, label %bb.ao, label %.thread323

bb.ao:                                            ; preds = %bb.an
  %i.ih = zext nneg i32 %i.ic to i64
  %i.ii = icmp ugt i32 %.2.i, 1                   ; 2 uses
  %i.ij = icmp ugt i32 %.2.i, 5
  %spec.select268.v = select i1 %i.ij, i32 -5, i32 -1
  %spec.select268 = select i1 %i.ii, i32 %spec.select268.v, i32 1
  %.1187 = add nsw i32 %.2.i, %spec.select268
  %i.ik = zext i32 %.1187 to i64                  ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ik
  %.val = load i64, ptr %i.il, align 1, !tbaa !8  ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc288 = trunc i64 %.val to i16 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift292370 = lshr i64 %.val, 16
  %.sroa.0.sroa.7.0.extract.trunc293 = trunc i64 %.sroa.0.sroa.7.0.extract.shift292370 to i16 ; 2 uses
  %.sroa.7.0.extract.shift286 = lshr i64 %.val, 32
  %.sroa.7.0.extract.trunc287 = trunc nuw i64 %.sroa.7.0.extract.shift286 to i32 ; 2 uses
  %i.im = add nsw i32 %i.ic, %i.ig
  %i.in = icmp ult i32 %i.im, %i.b
  %i.io = select i1 %i.ii, i1 %i.in, i1 false
  br i1 %i.io, label %bb.ap, label %bb.ax, !prof !34

bb.ap:                                            ; preds = %bb.ao
  %i.ip = trunc i32 %i.ig to i16
  %i.iq = and i32 %i.ig, 65535
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.at
  %.0399 = phi i32 [ 0, %bb.ap ], [ %i.ja, %bb.at ] ; 4 uses
  %.0177398 = phi i16 [ %i.ip, %bb.ap ], [ %.1, %bb.at ] ; 2 uses
  %.4397 = phi i16 [ 0, %bb.ap ], [ %.5, %bb.at ]
  %i.ir = add i32 %.0399, %i.iq
  %i.is = and i32 %i.ir, %i.d
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !32 ; 3 uses
  %i.iw = icmp ult i16 %i.iv, %.0177398
  br i1 %i.iw, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ix = zext i16 %i.iv to i32
  %i.iy = add i32 %.0399, %i.da
  %.not264 = icmp ult i32 %i.iy, %i.ix
  br i1 %.not264, label %bb.as, label %.thread.thread349

bb.as:                                            ; preds = %bb.ar
  %i.iz = trunc i32 %.0399 to i16
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as
  %.5 = phi i16 [ %i.iz, %bb.as ], [ %.4397, %bb.aq ] ; 2 uses
  %.1 = phi i16 [ %i.iv, %bb.as ], [ %.0177398, %bb.aq ] ; 3 uses
  %i.ja = add i32 %.0399, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ja, %.2.i
  br i1 %exitcond.not, label %bb.au, label %bb.aq, !llvm.loop !37

bb.au:                                            ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ih ; 3 uses
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -4
  %i.jd = load ptr, ptr %i.db, align 8, !tbaa !38
  %i.je = load i8, ptr %i.jc, align 1, !tbaa !8
  %i.jf = zext i8 %i.je to i32
  %i.jg = tail call i32 %i.jd(i32 noundef 0, i32 noundef %i.jf) #5
  %i.jh = load ptr, ptr %i.db, align 8, !tbaa !38
  %i.ji = getelementptr inbounds i8, ptr %i.jb, i64 -3
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !8
  %i.jk = zext i8 %i.jj to i32
  %i.jl = tail call i32 %i.jh(i32 noundef %i.jg, i32 noundef %i.jk) #5
  %i.jm = load ptr, ptr %i.db, align 8, !tbaa !38
  %i.jn = getelementptr inbounds i8, ptr %i.jb, i64 -2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !8
  %i.jp = zext i8 %i.jo to i32
  %i.jq = tail call i32 %i.jm(i32 noundef %i.jl, i32 noundef %i.jp) #5
  %i.jr = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.js = zext i32 %i.jq to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !32 ; 3 uses
  %i.jv = icmp ult i16 %i.ju, %.1
  br i1 %i.jv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jw = zext i16 %i.ju to i32
  %i.jx = trunc nuw nsw i32 %.2.i to i16
  %i.jy = add nsw i16 %i.jx, -2                   ; 2 uses
  %i.jz = zext nneg i16 %i.jy to i32
  %i.ka = add nuw nsw i32 %i.jz, %i.da
  %.not263 = icmp samesign ult i32 %i.ka, %i.jw
  br i1 %.not263, label %bb.aw, label %.thread.thread349

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.8228 = phi i16 [ %.1, %bb.au ], [ %i.ju, %bb.av ]
  %.6 = phi i16 [ %.5, %bb.au ], [ %i.jy, %bb.av ] ; 3 uses
  %i.kb = add i16 %.6, %i.ag
  %i.kc = zext i16 %.6 to i64
  %i.kd = sub nsw i64 0, %i.kc
  %i.ke = getelementptr inbounds i8, ptr %i.f, i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ik
  br label %.thread

bb.ax:                                            ; preds = %bb.ao
  %i.kg = getelementptr inbounds nuw i8, ptr %.2215405, i64 %i.ik
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %compare256_sse2_static.exit
  %.sroa.0.sroa.7.2 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc293, %bb.ax ], [ %.sroa.0.sroa.7.0401, %compare256_sse2_static.exit ]
  %.sroa.0.sroa.0.2 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc288, %bb.ax ], [ %.sroa.0.sroa.0.0402, %compare256_sse2_static.exit ]
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.extract.trunc287, %bb.ax ], [ %.sroa.7.0403, %compare256_sse2_static.exit ]
  %.5211 = phi ptr [ %i.kg, %bb.ax ], [ %.2208406, %compare256_sse2_static.exit ]
  %.2190 = phi i32 [ %i.ic, %bb.ax ], [ %.0188409, %compare256_sse2_static.exit ] ; 3 uses
  %i.kh = add i32 %.5198, -1                      ; 2 uses
  %.not265 = icmp eq i32 %i.kh, 0
  br i1 %.not265, label %.thread323, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ki = zext i16 %.7227 to i32
  %i.kj = and i32 %i.d, %i.ki
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !32 ; 2 uses
  %i.kn = icmp ugt i16 %i.km, %.1201407
  br i1 %i.kn, label %.thread, label %.thread323

.thread:                                          ; preds = %bb.az, %bb.aw
  %.sroa.0.sroa.7.3 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc293, %bb.aw ], [ %.sroa.0.sroa.7.2, %bb.az ]
  %.sroa.0.sroa.0.3 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc288, %bb.aw ], [ %.sroa.0.sroa.0.2, %bb.az ]
  %.sroa.7.3 = phi i32 [ %.sroa.7.0.extract.trunc287, %bb.aw ], [ %.sroa.7.2, %bb.az ]
  %.13 = phi i16 [ %.8228, %bb.aw ], [ %i.km, %bb.az ] ; 2 uses
  %.6219 = phi ptr [ %i.ke, %bb.aw ], [ %.2215405, %bb.az ]
  %.6212 = phi ptr [ %i.kf, %bb.aw ], [ %.5211, %bb.az ]
  %.5205 = phi i16 [ %i.kb, %bb.aw ], [ %.1201407, %bb.az ]
  %.6199 = phi i32 [ %.5198, %bb.aw ], [ %i.kh, %bb.az ]
  %.3191 = phi i32 [ %i.ic, %bb.aw ], [ %.2190, %bb.az ] ; 2 uses
  %.10 = phi i16 [ %.6, %bb.aw ], [ %.3185410, %bb.az ]
  %i.ko = zext i16 %.13 to i32
  %.not256 = icmp ugt i32 %i.b, %i.ko
  br i1 %.not256, label %bb.f, label %.thread323

.thread.thread349:                                ; preds = %bb.av, %bb.ar, %bb.d
  %.4192 = phi i32 [ %i.n, %bb.d ], [ %i.ic, %bb.ar ], [ %i.ic, %bb.av ]
  %i.kp = load i32, ptr %i.k, align 4, !tbaa !26
  %.4192. = tail call i32 @llvm.umin.i32(i32 %.4192, i32 %i.kp)
  br label %.thread323

.thread323:                                       ; preds = %.thread, %bb.az, %bb.ay, %bb.am, %bb.an, %bb.q, %bb.r, %bb.m, %bb.n, %bb.h, %bb.i, %bb.e, %.thread.thread349
  %.4235 = phi i32 [ %.0188409, %bb.m ], [ %.0188409, %bb.q ], [ %spec.select, %bb.e ], [ %.4192., %.thread.thread349 ], [ %.0188409, %bb.h ], [ %.0188409, %bb.i ], [ %.0188409, %bb.n ], [ %.0188409, %bb.r ], [ %i.l, %bb.am ], [ %i.ic, %bb.an ], [ %.2190, %bb.az ], [ %.2190, %bb.ay ], [ %.3191, %.thread ]
  ret i32 %.4235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS12zng_stream_s", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS15zng_gz_header_s", !9, i64 0}
!13 = !{!"p1 short", !9, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"crc32_fold_s", !4, i64 0, !5, i64 64}
!16 = !{!"p1 _ZTS9ct_data_s", !9, i64 0}
!17 = !{!"p1 _ZTS18static_tree_desc_s", !9, i64 0}
!18 = !{!"tree_desc_s", !16, i64 0, !5, i64 8, !17, i64 16}
!19 = !{!"long", !4, i64 0}
!20 = !{!"p1 _ZTS16deflate_allocs_s", !9, i64 0}
!21 = !{!"internal_state", !10, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !11, i64 88, !13, i64 96, !13, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !14, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !9, i64 152, !9, i64 160, !9, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !15, i64 192, !4, i64 260, !4, i64 2552, !4, i64 2796, !18, i64 2952, !18, i64 2976, !18, i64 3000, !4, i64 3024, !4, i64 3056, !5, i64 5348, !5, i64 5352, !4, i64 5356, !5, i64 5932, !13, i64 5936, !11, i64 5944, !5, i64 5952, !5, i64 5956, !19, i64 5960, !19, i64 5968, !5, i64 5976, !5, i64 5980, !19, i64 5984, !19, i64 5992, !20, i64 6000, !19, i64 6008, !5, i64 6016, !4, i64 6020}
!22 = !{!21, !5, i64 132}
!23 = !{!21, !5, i64 72}
!24 = !{!21, !11, i64 88}
!25 = !{!21, !13, i64 96}
!26 = !{!21, !5, i64 76}
!27 = !{!21, !5, i64 140}
!28 = !{!21, !5, i64 144}
!29 = !{!21, !5, i64 184}
!30 = !{!21, !5, i64 188}
!31 = !{!21, !5, i64 64}
!32 = !{!14, !14, i64 0}
!33 = !{!21, !5, i64 136}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!21, !5, i64 176}
!36 = distinct !{!36, !40}
!37 = distinct !{!37, !40}
!38 = !{!21, !9, i64 152}
!39 = !{!21, !13, i64 104}
!40 = !{!"llvm.loop.mustprogress"}
end_hunk_0
