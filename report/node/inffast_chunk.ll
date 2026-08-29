Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inffast_chunk?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inflate_fast_chunk_:bb.a

.lr.ph.preheader:                                 ; preds = %.thread, %bb.d
  %i.cx = phi i32 [ %i.cd, %.thread ], [ %i.cv, %bb.d ]
  %i.cy = phi i64 [ %i.cc, %.thread ], [ %i.ct, %bb.d ]
  %.0190491 = phi ptr [ %.0190.ph, %.thread ], [ %i.co, %bb.d ]
  %.1203489 = phi ptr [ %.1203.ph, %.thread ], [ %i.ch, %bb.d ] ; 25 uses
  %i.cz = phi i8 [ %.ph, %.thread ], [ %.pre, %bb.d ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bw, %bb.d
  %.1203490 = phi ptr [ %i.ch, %bb.d ], [ %.1203489, %bb.bw ] ; 2 uses
  %.1.lcssa = phi ptr [ %i.co, %bb.d ], [ %i.vf, %bb.bw ]
  %.lcssa325 = phi i64 [ %i.ct, %bb.d ], [ %i.vk, %bb.bw ]
  %.lcssa322 = phi i32 [ %i.cv, %bb.d ], [ %i.vl, %bb.bw ]
  %i.da = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !36
  %i.dc = trunc i16 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.1203490, i64 1
  store i8 %i.dc, ptr %.1203490, align 1, !tbaa !37
  br label %chunkcopy_safe_ugly.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bw
  %.in = phi i8 [ %i.vm, %bb.bw ], [ %i.cz, %.lr.ph.preheader ]
  %i.de = phi i32 [ %i.vl, %bb.bw ], [ %i.cx, %.lr.ph.preheader ] ; 5 uses
  %i.df = phi i64 [ %i.vk, %bb.bw ], [ %i.cy, %.lr.ph.preheader ] ; 7 uses
  %.1377 = phi ptr [ %i.vf, %bb.bw ], [ %.0190491, %.lr.ph.preheader ] ; 2 uses
  %i.dg = zext i8 %.in to i32                     ; 5 uses
  %i.dh = and i32 %i.dg, 16
  %.not234 = icmp eq i32 %i.dh, 0
  br i1 %.not234, label %bb.bv, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !36
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = and i32 %i.dg, 15                       ; 4 uses
  %.not237 = icmp eq i32 %i.dl, 0
  br i1 %.not237, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = trunc i64 %i.df to i32
  %notmask238 = shl nsw i32 -1, %i.dl
  %i.dn = xor i32 %notmask238, -1
  %i.do = and i32 %i.dn, %i.dm
  %i.dp = add nuw nsw i32 %i.do, %i.dk
  %i.dq = zext nneg i32 %i.dl to i64
  %i.dr = lshr i64 %i.df, %i.dq
  %i.ds = sub i32 %i.de, %i.dl
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0304 = phi i32 [ %i.dk, %bb.e ], [ %i.dp, %bb.f ] ; 15 uses
  %.3197 = phi i64 [ %i.df, %bb.e ], [ %i.dr, %bb.f ] ; 2 uses
  %.3 = phi i32 [ %i.de, %bb.e ], [ %i.ds, %bb.f ]
  %i.dt = and i64 %.3197, %i.at
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !38  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = zext nneg i8 %i.dw to i64
  %i.dz = lshr i64 %.3197, %i.dy                  ; 2 uses
  %i.ea = sub i32 %.3, %i.dx                      ; 2 uses
  %i.eb = load i8, ptr %i.du, align 2, !tbaa !33
  %i.ec = zext i8 %i.eb to i32                    ; 3 uses
  %i.ed = and i32 %i.ec, 16
  %.not239380 = icmp eq i32 %i.ed, 0
  br i1 %.not239380, label %.lr.ph383, label %._crit_edge384

._crit_edge384:                                   ; preds = %bb.bu, %bb.g
  %.2.lcssa = phi ptr [ %i.du, %bb.g ], [ %i.um, %bb.bu ]
  %.lcssa333 = phi i64 [ %i.dz, %bb.g ], [ %i.ur, %bb.bu ] ; 2 uses
  %.lcssa331 = phi i32 [ %i.ea, %bb.g ], [ %i.us, %bb.bu ] ; 5 uses
  %.lcssa = phi i32 [ %i.ec, %bb.g ], [ %i.uu, %bb.bu ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !36
  %i.eg = zext i16 %i.ef to i32
  %i.eh = and i32 %.lcssa, 15                     ; 4 uses
  %i.ei = icmp ult i32 %.lcssa331, %i.eh
  br i1 %i.ei, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge384
  %.val = load i64, ptr %i.be, align 1
  %i.ej = zext nneg i32 %.lcssa331 to i64
  %i.ek = shl i64 %.val, %i.ej
  %i.el = or i64 %i.ek, %.lcssa333
  %i.em = getelementptr inbounds nuw i8, ptr %i.be, i64 7
  %i.en = lshr i32 %.lcssa331, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 %i.ep
  %i.er = or i32 %.lcssa331, 56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge384
  %.1208 = phi ptr [ %i.eq, %bb.h ], [ %i.be, %._crit_edge384 ] ; 38 uses
  %.5199 = phi i64 [ %i.el, %bb.h ], [ %.lcssa333, %._crit_edge384 ] ; 2 uses
  %.5 = phi i32 [ %i.er, %bb.h ], [ %.lcssa331, %._crit_edge384 ]
  %i.es = trunc i64 %.5199 to i32
  %notmask241 = shl nsw i32 -1, %i.eh
  %i.et = xor i32 %notmask241, -1
  %i.eu = and i32 %i.es, %i.et
  %i.ev = add nuw nsw i32 %i.eu, %i.eg            ; 14 uses
  %i.ew = zext nneg i32 %i.eh to i64
  %i.ex = lshr i64 %.5199, %i.ew                  ; 38 uses
  %i.ey = sub i32 %.5, %i.eh                      ; 38 uses
  %i.ez = ptrtoint ptr %.1203489 to i64           ; 2 uses
  %i.fa = sub i64 %i.ez, %i.au
  %i.fb = trunc i64 %i.fa to i32                  ; 2 uses
  %i.fc = icmp ugt i32 %i.ev, %i.fb
  br i1 %i.fc, label %bb.j, label %bb.bg

bb.j:                                             ; preds = %bb.i
  %i.fd = sub nuw nsw i32 %i.ev, %i.fb            ; 5 uses
  %i.fe = icmp ugt i32 %i.fd, %i.y
  br i1 %i.fe, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ff = load i32, ptr %i.av, align 8, !tbaa !39
  %.not242 = icmp eq i32 %i.ff, 0
  br i1 %.not242, label %bb.l, label %.loopexit.sink.split.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not243 = icmp ult i32 %spec.select, %i.fd
  br i1 %.not243, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fg = sub nuw i32 %spec.select, %i.fd
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.fh
  br label %chunkcopy_safe.exit

bb.n:                                             ; preds = %bb.l
  %i.fj = sub nuw nsw i32 %i.fd, %spec.select     ; 10 uses
  %i.fk = sub i32 %i.w, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.fl ; 6 uses
  %i.fn = icmp ult i32 %i.fj, %.0304
  br i1 %i.fn, label %bb.o, label %chunkcopy_safe.exit

bb.o:                                             ; preds = %bb.n
  %i.fo = sub nuw nsw i32 %.0304, %i.fj           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.fp = sub i64 %i.aw, %i.ez
  %i.fq = icmp slt i64 %i.fp, 16
  br i1 %i.fq, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.fr = and i32 %i.fj, 8
  %.not.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fs = load i64, ptr %i.fm, align 1, !alias.scope !40
  store i64 %i.fs, ptr %.1203489, align 1, !noalias !40
  %i.ft = getelementptr inbounds nuw i8, ptr %.1203489, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.026.i.i = phi ptr [ %i.ft, %bb.q ], [ %.1203489, %bb.p ] ; 3 uses
  %.0.i.i = phi ptr [ %i.fu, %bb.q ], [ %i.fm, %bb.p ] ; 3 uses
  %i.fv = and i32 %i.fj, 4
  %.not29.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not29.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fw = load i32, ptr %.0.i.i, align 1, !alias.scope !40
  store i32 %i.fw, ptr %.026.i.i, align 1, !noalias !40
  %i.fx = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.127.i.i = phi ptr [ %i.fx, %bb.s ], [ %.026.i.i, %bb.r ] ; 3 uses
  %.1.i.i = phi ptr [ %i.fy, %bb.s ], [ %.0.i.i, %bb.r ] ; 3 uses
  %i.fz = and i32 %i.fj, 2
  %.not30.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not30.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = load i16, ptr %.1.i.i, align 1, !alias.scope !40
  store i16 %i.ga, ptr %.127.i.i, align 1, !noalias !40
  %i.gb = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 2
  %i.gc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.228.i.i = phi ptr [ %i.gb, %bb.u ], [ %.127.i.i, %bb.t ] ; 3 uses
  %.2.i.i = phi ptr [ %i.gc, %bb.u ], [ %.1.i.i, %bb.t ]
  %i.gd = and i32 %i.fj, 1
  %.not31.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not31.i.i, label %chunkcopy_safe.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ge = load i8, ptr %.2.i.i, align 1, !tbaa !37, !alias.scope !40
  %i.gf = getelementptr inbounds nuw i8, ptr %.228.i.i, i64 1
  store i8 %i.ge, ptr %.228.i.i, align 1, !tbaa !37, !noalias !40
  br label %chunkcopy_safe.exit

bb.x:                                             ; preds = %bb.o
  %i.gg = add nsw i32 %i.fj, -1                   ; 2 uses
  %i.gh = and i32 %i.gg, 15
  %i.gi = add nuw nsw i32 %i.gh, 1
  %.val.i.i.i = load <2 x i64>, ptr %i.fm, align 1, !alias.scope !40
  store <2 x i64> %.val.i.i.i, ptr %.1203489, align 1, !noalias !40
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = getelementptr i8, ptr %.1203489, i64 %i.gj ; 2 uses
  %i.gl = lshr i32 %i.gg, 4                       ; 2 uses
  %.not15.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not15.i.i.i, label %chunkcopy_safe.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.x
  %i.gm = getelementptr i8, ptr %i.fm, i64 %i.gj
  %2 = add nsw i32 %i.gl, -1
  %i.gn = zext nneg i32 %2 to i64
  %3 = shl nuw nsw i64 %i.gn, 4                   ; 2 uses
  %4 = add nuw nsw i64 %3, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gk, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gm, i64 %4, i1 false)
  %i.go = add nuw nsw i32 %i.fj, 15
  %i.gp = and i32 %i.go, 15
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr i8, ptr %.1203489, i64 %3
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gq
  %scevgep.i = getelementptr i8, ptr %i.gs, i64 17
  br label %chunkcopy_safe.exit

chunkcopy_safe.exit:                              ; preds = %.lr.ph.preheader.i.i.i, %bb.x, %bb.w, %bb.v, %bb.n, %bb.m
  %.1305 = phi i32 [ %.0304, %bb.m ], [ %.0304, %bb.n ], [ %i.fo, %bb.v ], [ %i.fo, %bb.w ], [ %i.fo, %bb.x ], [ %i.fo, %.lr.ph.preheader.i.i.i ] ; 8 uses
  %.2204 = phi ptr [ %.1203489, %bb.m ], [ %.1203489, %bb.n ], [ %.228.i.i, %bb.v ], [ %i.gf, %bb.w ], [ %i.gk, %bb.x ], [ %scevgep.i, %.lr.ph.preheader.i.i.i ] ; 13 uses
  %.0189 = phi i32 [ %i.fd, %bb.m ], [ %i.fj, %bb.n ], [ %spec.select, %bb.v ], [ %spec.select, %bb.w ], [ %spec.select, %bb.x ], [ %spec.select, %.lr.ph.preheader.i.i.i ] ; 8 uses
  %.0 = phi ptr [ %i.fi, %bb.m ], [ %i.fm, %bb.n ], [ %i.ad, %bb.v ], [ %i.ad, %bb.w ], [ %i.ad, %bb.x ], [ %i.ad, %.lr.ph.preheader.i.i.i ] ; 10 uses
  %i.gt = icmp ult i32 %.0189, %.1305
  %i.gu = ptrtoint ptr %.2204 to i64
  %i.gv = sub i64 %i.aw, %i.gu
  %i.gw = icmp slt i64 %i.gv, 16                  ; 2 uses
  br i1 %i.gt, label %bb.y, label %bb.aw

bb.y:                                             ; preds = %chunkcopy_safe.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  br i1 %i.gw, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.gx = and i32 %.0189, 8
  %.not.i.i252 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i252, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gy = load i64, ptr %.0, align 1, !alias.scope !43
  store i64 %i.gy, ptr %.2204, align 1, !noalias !43
  %i.gz = getelementptr inbounds nuw i8, ptr %.2204, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.026.i.i253 = phi ptr [ %i.gz, %bb.aa ], [ %.2204, %bb.z ] ; 3 uses
  %.0.i.i254 = phi ptr [ %i.ha, %bb.aa ], [ %.0, %bb.z ] ; 3 uses
  %i.hb = and i32 %.0189, 4
  %.not29.i.i255 = icmp eq i32 %i.hb, 0
  br i1 %.not29.i.i255, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hc = load i32, ptr %.0.i.i254, align 1, !alias.scope !43
  store i32 %i.hc, ptr %.026.i.i253, align 1, !noalias !43
  %i.hd = getelementptr inbounds nuw i8, ptr %.026.i.i253, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i254, i64 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.127.i.i256 = phi ptr [ %i.hd, %bb.ac ], [ %.026.i.i253, %bb.ab ] ; 3 uses
  %.1.i.i257 = phi ptr [ %i.he, %bb.ac ], [ %.0.i.i254, %bb.ab ] ; 3 uses
  %i.hf = and i32 %.0189, 2
  %.not30.i.i258 = icmp eq i32 %i.hf, 0
  br i1 %.not30.i.i258, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = load i16, ptr %.1.i.i257, align 1, !alias.scope !43
  store i16 %i.hg, ptr %.127.i.i256, align 1, !noalias !43
  %i.hh = getelementptr inbounds nuw i8, ptr %.127.i.i256, i64 2
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.i.i257, i64 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.228.i.i259 = phi ptr [ %i.hh, %bb.ae ], [ %.127.i.i256, %bb.ad ] ; 3 uses
  %.2.i.i260 = phi ptr [ %i.hi, %bb.ae ], [ %.1.i.i257, %bb.ad ]
  %i.hj = and i32 %.0189, 1
  %.not31.i.i261 = icmp eq i32 %i.hj, 0
  br i1 %.not31.i.i261, label %chunkcopy_safe.exit262, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hk = load i8, ptr %.2.i.i260, align 1, !tbaa !37, !alias.scope !43
  %i.hl = getelementptr inbounds nuw i8, ptr %.228.i.i259, i64 1
  store i8 %i.hk, ptr %.228.i.i259, align 1, !tbaa !37, !noalias !43
  br label %chunkcopy_safe.exit262

bb.ah:                                            ; preds = %bb.y
  %i.hm = add nsw i32 %.0189, -1                  ; 2 uses
  %i.hn = and i32 %i.hm, 15
  %i.ho = add nuw nsw i32 %i.hn, 1
  %.val.i.i.i247 = load <2 x i64>, ptr %.0, align 1, !alias.scope !43
  store <2 x i64> %.val.i.i.i247, ptr %.2204, align 1, !noalias !43
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = getelementptr i8, ptr %.2204, i64 %i.hp ; 2 uses
  %i.hr = lshr i32 %i.hm, 4                       ; 2 uses
  %.not15.i.i.i248 = icmp eq i32 %i.hr, 0
  br i1 %.not15.i.i.i248, label %chunkcopy_safe.exit262, label %.lr.ph.preheader.i.i.i249

.lr.ph.preheader.i.i.i249:                        ; preds = %bb.ah
  %i.hs = getelementptr i8, ptr %.0, i64 %i.hp
  %5 = add nsw i32 %i.hr, -1
  %i.ht = zext nneg i32 %5 to i64
  %6 = shl nuw nsw i64 %i.ht, 4                   ; 2 uses
  %7 = add nuw nsw i64 %6, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hq, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.hs, i64 %7, i1 false)
  %i.hu = add nuw nsw i32 %.0189, 15
  %i.hv = and i32 %i.hu, 15
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr i8, ptr %.2204, i64 %6
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hw
  %scevgep.i250 = getelementptr i8, ptr %i.hy, i64 17
  br label %chunkcopy_safe.exit262

chunkcopy_safe.exit262:                           ; preds = %bb.af, %bb.ag, %bb.ah, %.lr.ph.preheader.i.i.i249
  %.025.i.i251 = phi ptr [ %.228.i.i259, %bb.af ], [ %i.hl, %bb.ag ], [ %i.hq, %bb.ah ], [ %scevgep.i250, %.lr.ph.preheader.i.i.i249 ] ; 3 uses
  %i.hz = sub nuw nsw i32 %.1305, %.0189          ; 3 uses
  %i.ia = zext nneg i32 %i.ev to i64
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %.025.i.i251, i64 %i.ib
  %i.id = icmp ult i32 %i.ev, %i.hz
  %i.ie = icmp samesign ult i32 %i.ev, 16
  %or.cond15.i = and i1 %i.ie, %i.id
  br i1 %or.cond15.i, label %.lr.ph.i, label %chunkunroll_relaxed.exit

.lr.ph.i:                                         ; preds = %chunkcopy_safe.exit262, %.lr.ph.i
  %.2306 = phi i32 [ %i.ih, %.lr.ph.i ], [ %i.hz, %chunkcopy_safe.exit262 ]
  %.0302 = phi i32 [ %i.ii, %.lr.ph.i ], [ %i.ev, %chunkcopy_safe.exit262 ] ; 4 uses
  %.016.i = phi ptr [ %i.ig, %.lr.ph.i ], [ %.025.i.i251, %chunkcopy_safe.exit262 ] ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.ic, align 1
  store <2 x i64> %.val.i, ptr %.016.i, align 1
  %i.if = zext nneg i32 %.0302 to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %.016.i, i64 %i.if ; 2 uses
  %i.ih = sub i32 %.2306, %.0302                  ; 3 uses
  %i.ii = shl nuw nsw i32 %.0302, 1               ; 3 uses
  %i.ij = icmp ult i32 %i.ii, %i.ih
  %i.ik = icmp ult i32 %.0302, 8
  %or.cond.i = and i1 %i.ik, %i.ij
  br i1 %or.cond.i, label %.lr.ph.i, label %chunkunroll_relaxed.exit, !llvm.loop !46

chunkunroll_relaxed.exit:                         ; preds = %.lr.ph.i, %chunkcopy_safe.exit262
  %.3307 = phi i32 [ %i.hz, %chunkcopy_safe.exit262 ], [ %i.ih, %.lr.ph.i ] ; 18 uses
  %.1303 = phi i32 [ %i.ev, %chunkcopy_safe.exit262 ], [ %i.ii, %.lr.ph.i ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %.025.i.i251, %chunkcopy_safe.exit262 ], [ %i.ig, %.lr.ph.i ] ; 21 uses
  %i.il = ptrtoint ptr %.0.lcssa.i to i64
  %i.im = sub i64 %i.aw, %i.il
  %i.in = icmp slt i64 %i.im, 48
  br i1 %i.in, label %.preheader.i.i, label %bb.ai

.preheader.i.i:                                   ; preds = %chunkunroll_relaxed.exit
  %.not27.i.i = icmp eq i32 %.3307, 0
  br i1 %.not27.i.i, label %chunkcopy_safe_ugly.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i
  %i.io = zext nneg i32 %.1303 to i64
  %i.ip = sub nsw i64 0, %i.io                    ; 11 uses
  %i.iq = zext i32 %.3307 to i64                  ; 5 uses
  %min.iters.check = icmp ult i32 %.3307, 4
  %i.ir = add i32 %.1303, -1
  %diff.check = icmp ult i32 %i.ir, 31
  %or.cond646 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond646, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check635 = icmp ult i32 %.3307, 32
  br i1 %min.iters.check635, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.is = and i64 %i.iq, 28
  %n.vec = and i64 %i.iq, 4294967264              ; 5 uses
  %i.it = trunc nuw i64 %n.vec to i32
  %i.iu = sub i32 %.3307, %i.it
  %i.iv = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep, i64 %i.ip ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <16 x i8>, ptr %i.iw, align 1, !tbaa !37
  %wide.load636 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !37
  %i.iy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !37
  store <16 x i8> %wide.load636, ptr %i.iy, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iq
  br i1 %cmp.n, label %chunkcopy_safe_ugly.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.is, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec638 = and i64 %i.iq, 4294967292           ; 4 uses
  %i.ja = trunc nuw i64 %n.vec638 to i32
  %i.jb = sub i32 %.3307, %i.ja
  %i.jc = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec638 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index639 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next642, %vec.epilog.vector.body ] ; 2 uses
  %next.gep640 = getelementptr i8, ptr %.0.lcssa.i, i64 %index639 ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %next.gep640, i64 %i.ip
  %wide.load641 = load <4 x i8>, ptr %i.jd, align 1, !tbaa !37
  store <4 x i8> %wide.load641, ptr %next.gep640, align 1, !tbaa !37
  %index.next642 = add nuw i64 %index639, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next642, %n.vec638
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n643 = icmp eq i64 %n.vec638, %i.iq
  br i1 %cmp.n643, label %chunkcopy_safe_ugly.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01129.i.i.ph = phi i32 [ %.3307, %iter.check ], [ %i.iu, %vec.epilog.iter.check ], [ %i.jb, %vec.epilog.middle.block ] ; 4 uses
  %.01228.i.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %i.iv, %vec.epilog.iter.check ], [ %i.jc, %vec.epilog.middle.block ] ; 2 uses
  %i.jf = add i32 %.01129.i.i.ph, -1
  %xtraiter728 = and i32 %.01129.i.i.ph, 7        ; 2 uses
  %lcmp.mod729.not = icmp eq i32 %xtraiter728, 0
  br i1 %lcmp.mod729.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01129.i.i.prol = phi i32 [ %i.jg, %vec.epilog.scalar.ph.prol ], [ %.01129.i.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.01228.i.i.prol = phi ptr [ %i.jj, %vec.epilog.scalar.ph.prol ], [ %.01228.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter730 = phi i32 [ %prol.iter730.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jg = add i32 %.01129.i.i.prol, -1            ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %.01228.i.i.prol, i64 %i.ip
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !37
  store i8 %i.ji, ptr %.01228.i.i.prol, align 1, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %.01228.i.i.prol, i64 1 ; 3 uses
  %prol.iter730.next = add i32 %prol.iter730, 1   ; 2 uses
  %prol.iter730.cmp.not = icmp eq i32 %prol.iter730.next, %xtraiter728
  br i1 %prol.iter730.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !53

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa703.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.jj, %vec.epilog.scalar.ph.prol ]
  %.01129.i.i.unr = phi i32 [ %.01129.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jg, %vec.epilog.scalar.ph.prol ]
  %.01228.i.i.unr = phi ptr [ %.01228.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jj, %vec.epilog.scalar.ph.prol ]
  %i.jk = icmp ult i32 %i.jf, 7
  br i1 %i.jk, label %chunkcopy_safe_ugly.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01129.i.i = phi i32 [ %i.kg, %vec.epilog.scalar.ph ], [ %.01129.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.01228.i.i = phi ptr [ %i.kj, %vec.epilog.scalar.ph ], [ %.01228.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.jl = getelementptr inbounds i8, ptr %.01228.i.i, i64 %i.ip
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !37
  store i8 %i.jm, ptr %.01228.i.i, align 1, !tbaa !37
  %i.jn = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 1 ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.ip
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !37
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !37
  %i.jq = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 2 ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %i.ip
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !37
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !37
  %i.jt = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 3 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %i.ip
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !37
  store i8 %i.jv, ptr %i.jt, align 1, !tbaa !37
  %i.jw = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.ip
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !37
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !37
  %i.jz = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 5 ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.ip
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !37
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !37
  %i.kc = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 6 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.ip
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !37
  store i8 %i.ke, ptr %i.kc, align 1, !tbaa !37
  %i.kf = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 7 ; 2 uses
  %i.kg = add i32 %.01129.i.i, -8                 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 %i.ip
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !37
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !37
  %i.kj = getelementptr inbounds nuw i8, ptr %.01228.i.i, i64 8 ; 2 uses
  %.not.i.i264.7 = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i264.7, label %chunkcopy_safe_ugly.exit, label %vec.epilog.scalar.ph, !llvm.loop !55

bb.ai:                                            ; preds = %chunkunroll_relaxed.exit
  %i.kk = icmp ult i32 %.1303, %.3307
  %i.kl = icmp samesign ult i32 %.1303, 16
  %or.cond.i.i.i = and i1 %i.kl, %i.kk
  br i1 %or.cond.i.i.i, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.km = add i32 %.3307, 15
  %i.kn = and i32 %i.km, 15
  %narrow.i.i.i.i = add nuw nsw i32 %i.kn, 1      ; 8 uses
  %i.ko = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %.1303)
  %i.kp = icmp eq i32 %i.ko, 1
  br i1 %i.kp, label %.split.i.i.i.i, label %bb.au

.split.i.i.i.i:                                   ; preds = %bb.aj
  %i.kq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.1303, i1 true)
  %i.kr = zext nneg i32 %narrow.i.i.i.i to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.kr ; 11 uses
  switch i32 %i.kq, label %default.unreachable [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.ao
    i32 3, label %bb.ar
  ]
end_hunk_0
begin_hunk_1_@inflate_fast_chunk_:bb.a
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.ms, %.lr.ph.i60.i.i.i.i.prol ], [ %i.mo, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter727 = phi i32 [ %prol.iter727.next, %.lr.ph.i60.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %i.mr = add nsw i32 %.018.i.i.i.i.i.prol, -1    ; 2 uses
  %.013.val.i.i.i.i.i.prol = load <2 x i64>, ptr %.01317.i.i.i.i.i.prol, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.prol, ptr %.01416.i.i.i.i.i.prol, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter727.next = add i32 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i32 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %.lr.ph.i60.i.i.i.i.prol.loopexit, label %.lr.ph.i60.i.i.i.i.prol, !llvm.loop !60

.lr.ph.i60.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i60.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i
  %.lcssa698.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ms, %.lr.ph.i60.i.i.i.i.prol ]
  %.018.i.i.i.i.i.unr = phi i32 [ %i.mp, %.lr.ph.preheader.i.i.i.i.i ], [ %i.mr, %.lr.ph.i60.i.i.i.i.prol ]
  %.01317.i.i.i.i.i.unr = phi ptr [ %i.mq, %.lr.ph.preheader.i.i.i.i.i ], [ %i.mt, %.lr.ph.i60.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.mo, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ms, %.lr.ph.i60.i.i.i.i.prol ]
  %i.mu = icmp ult i32 %i.mk, 128
  br i1 %i.mu, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i60.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %.lr.ph.i60.i.i.i.i.prol.loopexit, %.lr.ph.i60.i.i.i.i
  %.018.i.i.i.i.i = phi i32 [ %i.nj, %.lr.ph.i60.i.i.i.i ], [ %.018.i.i.i.i.i.unr, %.lr.ph.i60.i.i.i.i.prol.loopexit ]
  %.01317.i.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i60.i.i.i.i ], [ %.01317.i.i.i.i.i.unr, %.lr.ph.i60.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01416.i.i.i.i.i = phi ptr [ %i.nk, %.lr.ph.i60.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i60.i.i.i.i.prol.loopexit ] ; 9 uses
  %.013.val.i.i.i.i.i = load <2 x i64>, ptr %.01317.i.i.i.i.i, align 1
  store <2 x i64> %.013.val.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 16
  %.013.val.i.i.i.i.i.1 = load <2 x i64>, ptr %i.mw, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.1, ptr %i.mv, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 32
  %.013.val.i.i.i.i.i.2 = load <2 x i64>, ptr %i.my, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.2, ptr %i.mx, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 48
  %i.na = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 48
  %.013.val.i.i.i.i.i.3 = load <2 x i64>, ptr %i.na, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.3, ptr %i.mz, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 64
  %i.nc = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 64
  %.013.val.i.i.i.i.i.4 = load <2 x i64>, ptr %i.nc, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.4, ptr %i.nb, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 80
  %i.ne = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 80
  %.013.val.i.i.i.i.i.5 = load <2 x i64>, ptr %i.ne, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.5, ptr %i.nd, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 96
  %i.ng = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 96
  %.013.val.i.i.i.i.i.6 = load <2 x i64>, ptr %i.ng, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.6, ptr %i.nf, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 112
  %i.ni = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 112
  %i.nj = add nsw i32 %.018.i.i.i.i.i, -8         ; 2 uses
  %.013.val.i.i.i.i.i.7 = load <2 x i64>, ptr %i.ni, align 1
  store <2 x i64> %.013.val.i.i.i.i.i.7, ptr %i.nh, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 128 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.7 = icmp eq i32 %i.nj, 0
  br i1 %.not.i.i.i.i.i.7, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i60.i.i.i.i, !llvm.loop !61

bb.av:                                            ; preds = %bb.ai
  %i.nm = zext nneg i32 %.1303 to i64
  %i.nn = sub nsw i64 0, %i.nm
  %i.no = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %i.nn ; 2 uses
  %i.np = add i32 %.3307, -1                      ; 3 uses
  %i.nq = and i32 %i.np, 15
  %i.nr = add nuw nsw i32 %i.nq, 1
  %.val.i14.i.i.i = load <2 x i64>, ptr %i.no, align 1
  store <2 x i64> %.val.i14.i.i.i, ptr %.0.lcssa.i, align 1
  %i.ns = zext nneg i32 %i.nr to i64              ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.ns ; 3 uses
  %i.nu = lshr i32 %i.np, 4                       ; 4 uses
  %.not15.i.i.i.i = icmp eq i32 %i.nu, 0
  br i1 %.not15.i.i.i.i, label %chunkcopy_safe_ugly.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.av
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.ns ; 2 uses
  %xtraiter722 = and i32 %i.nu, 7                 ; 2 uses
  %lcmp.mod723.not = icmp eq i32 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i15.i.i.i.prol.loopexit, label %.lr.ph.i15.i.i.i.prol

.lr.ph.i15.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i15.i.i.i.prol
  %.018.i.i.i.i.prol = phi i32 [ %i.nw, %.lr.ph.i15.i.i.i.prol ], [ %i.nu, %.lr.ph.preheader.i.i.i.i ]
  %.01317.i.i.i.i.prol = phi ptr [ %i.ny, %.lr.ph.i15.i.i.i.prol ], [ %i.nv, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.01416.i.i.i.i.prol = phi ptr [ %i.nx, %.lr.ph.i15.i.i.i.prol ], [ %i.nt, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter724 = phi i32 [ %prol.iter724.next, %.lr.ph.i15.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.nw = add nsw i32 %.018.i.i.i.i.prol, -1      ; 2 uses
  %.013.val.i.i.i.i.prol = load <2 x i64>, ptr %.01317.i.i.i.i.prol, align 1
  store <2 x i64> %.013.val.i.i.i.i.prol, ptr %.01416.i.i.i.i.prol, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter724.next = add i32 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i32 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i15.i.i.i.prol.loopexit, label %.lr.ph.i15.i.i.i.prol, !llvm.loop !62

.lr.ph.i15.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i15.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.lcssa694.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i.i ], [ %i.nx, %.lr.ph.i15.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i32 [ %i.nu, %.lr.ph.preheader.i.i.i.i ], [ %i.nw, %.lr.ph.i15.i.i.i.prol ]
  %.01317.i.i.i.i.unr = phi ptr [ %i.nv, %.lr.ph.preheader.i.i.i.i ], [ %i.ny, %.lr.ph.i15.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.nt, %.lr.ph.preheader.i.i.i.i ], [ %i.nx, %.lr.ph.i15.i.i.i.prol ]
  %i.nz = icmp ult i32 %i.np, 128
  br i1 %i.nz, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %.lr.ph.i15.i.i.i.prol.loopexit, %.lr.ph.i15.i.i.i
  %.018.i.i.i.i = phi i32 [ %i.oo, %.lr.ph.i15.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i15.i.i.i.prol.loopexit ]
  %.01317.i.i.i.i = phi ptr [ %i.oq, %.lr.ph.i15.i.i.i ], [ %.01317.i.i.i.i.unr, %.lr.ph.i15.i.i.i.prol.loopexit ] ; 9 uses
  %.01416.i.i.i.i = phi ptr [ %i.op, %.lr.ph.i15.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i15.i.i.i.prol.loopexit ] ; 9 uses
  %.013.val.i.i.i.i = load <2 x i64>, ptr %.01317.i.i.i.i, align 1
  store <2 x i64> %.013.val.i.i.i.i, ptr %.01416.i.i.i.i, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 16
  %.013.val.i.i.i.i.1 = load <2 x i64>, ptr %i.ob, align 1
  store <2 x i64> %.013.val.i.i.i.i.1, ptr %i.oa, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 32
  %i.od = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 32
  %.013.val.i.i.i.i.2 = load <2 x i64>, ptr %i.od, align 1
  store <2 x i64> %.013.val.i.i.i.i.2, ptr %i.oc, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 48
  %i.of = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 48
  %.013.val.i.i.i.i.3 = load <2 x i64>, ptr %i.of, align 1
  store <2 x i64> %.013.val.i.i.i.i.3, ptr %i.oe, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 64
  %.013.val.i.i.i.i.4 = load <2 x i64>, ptr %i.oh, align 1
  store <2 x i64> %.013.val.i.i.i.i.4, ptr %i.og, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 80
  %i.oj = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 80
  %.013.val.i.i.i.i.5 = load <2 x i64>, ptr %i.oj, align 1
  store <2 x i64> %.013.val.i.i.i.i.5, ptr %i.oi, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 96
  %i.ol = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 96
  %.013.val.i.i.i.i.6 = load <2 x i64>, ptr %i.ol, align 1
  store <2 x i64> %.013.val.i.i.i.i.6, ptr %i.ok, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 112
  %i.on = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 112
  %i.oo = add nsw i32 %.018.i.i.i.i, -8           ; 2 uses
  %.013.val.i.i.i.i.7 = load <2 x i64>, ptr %i.on, align 1
  store <2 x i64> %.013.val.i.i.i.i.7, ptr %i.om, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 128 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.i, i64 128
  %.not.i16.i.i.i.7 = icmp eq i32 %i.oo, 0
  br i1 %.not.i16.i.i.i.7, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i15.i.i.i, !llvm.loop !61

bb.aw:                                            ; preds = %chunkcopy_safe.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  br i1 %i.gw, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.or = and i32 %.1305, 8
  %.not.i.i270 = icmp eq i32 %i.or, 0
  br i1 %.not.i.i270, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.os = load i64, ptr %.0, align 1, !alias.scope !63
  store i64 %i.os, ptr %.2204, align 1, !noalias !63
  %i.ot = getelementptr inbounds nuw i8, ptr %.2204, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.026.i.i271 = phi ptr [ %i.ot, %bb.ay ], [ %.2204, %bb.ax ] ; 3 uses
  %.0.i.i272 = phi ptr [ %i.ou, %bb.ay ], [ %.0, %bb.ax ] ; 3 uses
  %i.ov = and i32 %.1305, 4
  %.not29.i.i273 = icmp eq i32 %i.ov, 0
  br i1 %.not29.i.i273, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ow = load i32, ptr %.0.i.i272, align 1, !alias.scope !63
  store i32 %i.ow, ptr %.026.i.i271, align 1, !noalias !63
  %i.ox = getelementptr inbounds nuw i8, ptr %.026.i.i271, i64 4
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i.i272, i64 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.127.i.i274 = phi ptr [ %i.ox, %bb.ba ], [ %.026.i.i271, %bb.az ] ; 3 uses
  %.1.i.i275 = phi ptr [ %i.oy, %bb.ba ], [ %.0.i.i272, %bb.az ] ; 3 uses
  %i.oz = and i32 %.1305, 2
  %.not30.i.i276 = icmp eq i32 %i.oz, 0
  br i1 %.not30.i.i276, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pa = load i16, ptr %.1.i.i275, align 1, !alias.scope !63
  store i16 %i.pa, ptr %.127.i.i274, align 1, !noalias !63
  %i.pb = getelementptr inbounds nuw i8, ptr %.127.i.i274, i64 2
  %i.pc = getelementptr inbounds nuw i8, ptr %.1.i.i275, i64 2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.228.i.i277 = phi ptr [ %i.pb, %bb.bc ], [ %.127.i.i274, %bb.bb ] ; 3 uses
  %.2.i.i278 = phi ptr [ %i.pc, %bb.bc ], [ %.1.i.i275, %bb.bb ]
  %i.pd = and i32 %.1305, 1
  %.not31.i.i279 = icmp eq i32 %i.pd, 0
  br i1 %.not31.i.i279, label %chunkcopy_safe_ugly.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pe = load i8, ptr %.2.i.i278, align 1, !tbaa !37, !alias.scope !63
  %i.pf = getelementptr inbounds nuw i8, ptr %.228.i.i277, i64 1
  store i8 %i.pe, ptr %.228.i.i277, align 1, !tbaa !37, !noalias !63
  br label %chunkcopy_safe_ugly.exit

bb.bf:                                            ; preds = %bb.aw
  %i.pg = add nsw i32 %.1305, -1                  ; 2 uses
  %i.ph = and i32 %i.pg, 15
  %i.pi = add nuw nsw i32 %i.ph, 1
  %.val.i.i.i265 = load <2 x i64>, ptr %.0, align 1, !alias.scope !63
  store <2 x i64> %.val.i.i.i265, ptr %.2204, align 1, !noalias !63
  %i.pj = zext nneg i32 %i.pi to i64              ; 2 uses
  %i.pk = getelementptr i8, ptr %.2204, i64 %i.pj ; 2 uses
  %i.pl = lshr i32 %i.pg, 4                       ; 2 uses
  %.not15.i.i.i266 = icmp eq i32 %i.pl, 0
  br i1 %.not15.i.i.i266, label %chunkcopy_safe_ugly.exit, label %.lr.ph.preheader.i.i.i267

.lr.ph.preheader.i.i.i267:                        ; preds = %bb.bf
  %i.pm = getelementptr i8, ptr %.0, i64 %i.pj
  %8 = add nsw i32 %i.pl, -1
  %i.pn = zext nneg i32 %8 to i64
  %9 = shl nuw nsw i64 %i.pn, 4                   ; 2 uses
  %10 = add nuw nsw i64 %9, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pk, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.pm, i64 %10, i1 false)
  %i.po = add nuw nsw i32 %.1305, 15
  %i.pp = and i32 %i.po, 15
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr i8, ptr %.2204, i64 %9
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.pq
  %scevgep.i268 = getelementptr i8, ptr %i.ps, i64 17
  br label %chunkcopy_safe_ugly.exit

bb.bg:                                            ; preds = %bb.i
  %i.pt = icmp ult i32 %i.ev, %.0304
  %i.pu = icmp samesign ult i32 %i.ev, 16
  %or.cond.i281 = and i1 %i.pu, %i.pt
  br i1 %or.cond.i281, label %bb.bh, label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  %i.pv = add nuw nsw i32 %.0304, 15
  %i.pw = and i32 %i.pv, 15
  %narrow.i.i = add nuw nsw i32 %i.pw, 1          ; 8 uses
  %i.px = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.ev)
  %i.py = icmp eq i32 %i.px, 1
  br i1 %i.py, label %.split.i.i, label %bb.bs

.split.i.i:                                       ; preds = %bb.bh
  %i.pz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ev, i1 true)
  %i.qa = zext nneg i32 %narrow.i.i to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %.1203489, i64 %i.qa ; 11 uses
  switch i32 %i.pz, label %default.unreachable [
    i32 0, label %bb.bi
    i32 1, label %bb.bj
    i32 2, label %bb.bm
    i32 3, label %bb.bp
  ]

bb.bi:                                            ; preds = %.split.i.i
  %i.qc = getelementptr inbounds i8, ptr %.1203489, i64 -1
  %.val.i.i = load i8, ptr %i.qc, align 1, !tbaa !37
  %i.qd = insertelement <16 x i8> poison, i8 %.val.i.i, i64 0
  %i.qe = shufflevector <16 x i8> %i.qd, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.qe, ptr %.1203489, align 1, !tbaa !37
  %i.qf = sub nsw i32 %.0304, %narrow.i.i         ; 2 uses
  %.not5291.i.i = icmp eq i32 %i.qf, 0
  br i1 %.not5291.i.i, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i.i289

.lr.ph.i.i289:                                    ; preds = %bb.bi, %.lr.ph.i.i289
  %.093.i.i = phi ptr [ %i.qg, %.lr.ph.i.i289 ], [ %i.qb, %bb.bi ] ; 2 uses
  %storemerge92.i.i = phi i32 [ %i.qh, %.lr.ph.i.i289 ], [ %i.qf, %bb.bi ]
  store <16 x i8> %i.qe, ptr %.093.i.i, align 1, !tbaa !37
  %i.qg = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 16 ; 2 uses
  %i.qh = add i32 %storemerge92.i.i, -16          ; 2 uses
  %.not52.i.i = icmp eq i32 %i.qh, 0
  br i1 %.not52.i.i, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i.i289, !llvm.loop !56

bb.bj:                                            ; preds = %.split.i.i
  %i.qi = getelementptr inbounds i8, ptr %.1203489, i64 -2
  %.val54.i.i = load i16, ptr %i.qi, align 1
  %i.qj = insertelement <8 x i16> poison, i16 %.val54.i.i, i64 0
  %i.qk = shufflevector <8 x i16> %i.qj, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.qk, ptr %.1203489, align 1, !tbaa !37
  %.not50.i.i = icmp eq i32 %.0304, %narrow.i.i
  br i1 %.not50.i.i, label %chunkcopy_safe_ugly.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ql = sub nsw i32 %.0304, %narrow.i.i
  %i.qm = getelementptr inbounds i8, ptr %i.qb, i64 -2
  %.val53.i.i = load i16, ptr %i.qm, align 1
  %i.qn = insertelement <8 x i16> poison, i16 %.val53.i.i, i64 0
  %i.qo = shufflevector <8 x i16> %i.qn, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %.076.i.i = phi i32 [ %i.ql, %bb.bk ], [ %i.qq, %bb.bl ]
  %.1.i.i288 = phi ptr [ %i.qb, %bb.bk ], [ %i.qp, %bb.bl ] ; 2 uses
  store <8 x i16> %i.qo, ptr %.1.i.i288, align 1, !tbaa !37
  %i.qp = getelementptr inbounds nuw i8, ptr %.1.i.i288, i64 16 ; 2 uses
  %i.qq = add i32 %.076.i.i, -16                  ; 2 uses
  %.not51.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not51.i.i, label %chunkcopy_safe_ugly.exit, label %bb.bl, !llvm.loop !57

bb.bm:                                            ; preds = %.split.i.i
  %i.qr = getelementptr inbounds i8, ptr %.1203489, i64 -4
  %.val56.i.i = load i32, ptr %i.qr, align 1
  %i.qs = insertelement <4 x i32> poison, i32 %.val56.i.i, i64 0
  %i.qt = shufflevector <4 x i32> %i.qs, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.qt, ptr %.1203489, align 1, !tbaa !37
  %.not48.i.i = icmp eq i32 %.0304, %narrow.i.i
  br i1 %.not48.i.i, label %chunkcopy_safe_ugly.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qu = sub nsw i32 %.0304, %narrow.i.i
  %i.qv = getelementptr inbounds i8, ptr %i.qb, i64 -4
  %.val55.i.i = load i32, ptr %i.qv, align 1
  %i.qw = insertelement <4 x i32> poison, i32 %.val55.i.i, i64 0
  %i.qx = shufflevector <4 x i32> %i.qw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.177.i.i = phi i32 [ %i.qu, %bb.bn ], [ %i.qz, %bb.bo ]
  %.3.i.i = phi ptr [ %i.qb, %bb.bn ], [ %i.qy, %bb.bo ] ; 2 uses
  store <4 x i32> %i.qx, ptr %.3.i.i, align 1, !tbaa !37
  %i.qy = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 16 ; 2 uses
  %i.qz = add i32 %.177.i.i, -16                  ; 2 uses
  %.not49.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not49.i.i, label %chunkcopy_safe_ugly.exit, label %bb.bo, !llvm.loop !58

bb.bp:                                            ; preds = %.split.i.i
  %i.ra = getelementptr inbounds i8, ptr %.1203489, i64 -8
  %.val58.i.i = load i64, ptr %i.ra, align 1
  %i.rb = insertelement <2 x i64> poison, i64 %.val58.i.i, i64 0
  %i.rc = shufflevector <2 x i64> %i.rb, <2 x i64> poison, <2 x i32> zeroinitializer
  store <2 x i64> %i.rc, ptr %.1203489, align 1, !tbaa !37
  %.not.i.i286 = icmp eq i32 %.0304, %narrow.i.i
  br i1 %.not.i.i286, label %chunkcopy_safe_ugly.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rd = sub nsw i32 %.0304, %narrow.i.i
  %i.re = getelementptr inbounds i8, ptr %i.qb, i64 -8
  %.val57.i.i = load i64, ptr %i.re, align 1
  %i.rf = insertelement <2 x i64> poison, i64 %.val57.i.i, i64 0
  %i.rg = shufflevector <2 x i64> %i.rf, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.2.i.i287 = phi i32 [ %i.rd, %bb.bq ], [ %i.ri, %bb.br ]
  %.5.i.i = phi ptr [ %i.qb, %bb.bq ], [ %i.rh, %bb.br ] ; 2 uses
  store <2 x i64> %i.rg, ptr %.5.i.i, align 1, !tbaa !37
  %i.rh = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 16 ; 2 uses
  %i.ri = add i32 %.2.i.i287, -16                 ; 2 uses
  %.not47.i.i = icmp eq i32 %i.ri, 0
  br i1 %.not47.i.i, label %chunkcopy_safe_ugly.exit, label %bb.br, !llvm.loop !59

bb.bs:                                            ; preds = %bb.bh
  %i.rj = zext nneg i32 %i.ev to i64
  %i.rk = sub nsw i64 0, %i.rj
  %i.rl = getelementptr inbounds i8, ptr %.1203489, i64 %i.rk
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.bs
  %.079.i.i = phi i32 [ %i.rp, %.lr.ph.i.i.i ], [ %i.ev, %bb.bs ] ; 4 uses
  %.378.i.i = phi i32 [ %i.ro, %.lr.ph.i.i.i ], [ %.0304, %bb.bs ]
  %.016.i.i.i = phi ptr [ %i.rn, %.lr.ph.i.i.i ], [ %.1203489, %bb.bs ] ; 2 uses
  %.val.i.i.i282 = load <2 x i64>, ptr %i.rl, align 1
  store <2 x i64> %.val.i.i.i282, ptr %.016.i.i.i, align 1
  %i.rm = zext nneg i32 %.079.i.i to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 %i.rm ; 4 uses
  %i.ro = sub i32 %.378.i.i, %.079.i.i            ; 3 uses
  %i.rp = shl nuw nsw i32 %.079.i.i, 1            ; 3 uses
  %i.rq = icmp ult i32 %i.rp, %i.ro
  %i.rr = icmp ult i32 %.079.i.i, 8
  %or.cond.i.i.i283 = and i1 %i.rr, %i.rq
  br i1 %or.cond.i.i.i283, label %.lr.ph.i.i.i, label %chunkunroll_relaxed.exit.i.i, !llvm.loop !46

chunkunroll_relaxed.exit.i.i:                     ; preds = %.lr.ph.i.i.i
  %.pre.i.i = zext nneg i32 %i.rp to i64
  %.pre105.i.i = sub nsw i64 0, %.pre.i.i
  %i.rs = getelementptr inbounds i8, ptr %i.rn, i64 %.pre105.i.i ; 2 uses
  %i.rt = add i32 %i.ro, -1                       ; 3 uses
  %i.ru = and i32 %i.rt, 15
  %i.rv = add nuw nsw i32 %i.ru, 1
  %.val.i59.i.i = load <2 x i64>, ptr %i.rs, align 1
  store <2 x i64> %.val.i59.i.i, ptr %i.rn, align 1
  %i.rw = zext nneg i32 %i.rv to i64              ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rw ; 3 uses
  %i.ry = lshr i32 %i.rt, 4                       ; 4 uses
  %.not15.i.i.i284 = icmp eq i32 %i.ry, 0
  br i1 %.not15.i.i.i284, label %chunkcopy_safe_ugly.exit, label %.lr.ph.preheader.i.i.i285

.lr.ph.preheader.i.i.i285:                        ; preds = %chunkunroll_relaxed.exit.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rw ; 2 uses
  %xtraiter719 = and i32 %i.ry, 7                 ; 2 uses
  %lcmp.mod720.not = icmp eq i32 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %.lr.ph.i60.i.i.prol.loopexit, label %.lr.ph.i60.i.i.prol

.lr.ph.i60.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i285, %.lr.ph.i60.i.i.prol
  %.018.i.i.i.prol = phi i32 [ %i.sa, %.lr.ph.i60.i.i.prol ], [ %i.ry, %.lr.ph.preheader.i.i.i285 ]
  %.01317.i.i.i.prol = phi ptr [ %i.sc, %.lr.ph.i60.i.i.prol ], [ %i.rz, %.lr.ph.preheader.i.i.i285 ] ; 2 uses
  %.01416.i.i.i.prol = phi ptr [ %i.sb, %.lr.ph.i60.i.i.prol ], [ %i.rx, %.lr.ph.preheader.i.i.i285 ] ; 2 uses
  %prol.iter721 = phi i32 [ %prol.iter721.next, %.lr.ph.i60.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i285 ]
  %i.sa = add nsw i32 %.018.i.i.i.prol, -1        ; 2 uses
  %.013.val.i.i.i.prol = load <2 x i64>, ptr %.01317.i.i.i.prol, align 1
  store <2 x i64> %.013.val.i.i.i.prol, ptr %.01416.i.i.i.prol, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 16 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.01317.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter721.next = add i32 %prol.iter721, 1   ; 2 uses
  %prol.iter721.cmp.not = icmp eq i32 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %.lr.ph.i60.i.i.prol.loopexit, label %.lr.ph.i60.i.i.prol, !llvm.loop !66

.lr.ph.i60.i.i.prol.loopexit:                     ; preds = %.lr.ph.i60.i.i.prol, %.lr.ph.preheader.i.i.i285
  %.lcssa686.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i285 ], [ %i.sb, %.lr.ph.i60.i.i.prol ]
  %.018.i.i.i.unr = phi i32 [ %i.ry, %.lr.ph.preheader.i.i.i285 ], [ %i.sa, %.lr.ph.i60.i.i.prol ]
  %.01317.i.i.i.unr = phi ptr [ %i.rz, %.lr.ph.preheader.i.i.i285 ], [ %i.sc, %.lr.ph.i60.i.i.prol ]
  %.01416.i.i.i.unr = phi ptr [ %i.rx, %.lr.ph.preheader.i.i.i285 ], [ %i.sb, %.lr.ph.i60.i.i.prol ]
  %i.sd = icmp ult i32 %i.rt, 128
  br i1 %i.sd, label %chunkcopy_safe_ugly.exit, label %.lr.ph.i60.i.i

.lr.ph.i60.i.i:                                   ; preds = %.lr.ph.i60.i.i.prol.loopexit, %.lr.ph.i60.i.i
  %.018.i.i.i = phi i32 [ %i.ss, %.lr.ph.i60.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i60.i.i.prol.loopexit ]
  %.01317.i.i.i = phi ptr [ %i.su, %.lr.ph.i60.i.i ], [ %.01317.i.i.i.unr, %.lr.ph.i60.i.i.prol.loopexit ] ; 9 uses
  %.01416.i.i.i = phi ptr [ %i.st, %.lr.ph.i60.i.i ], [ %.01416.i.i.i.unr, %.lr.ph.i60.i.i.prol.loopexit ] ; 9 uses
  %.013.val.i.i.i = load <2 x i64>, ptr %.01317.i.i.i, align 1
  store <2 x i64> %.013.val.i.i.i, ptr %.01416.i.i.i, align 1
  %i.se = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %.01317.i.i.i, i64 16
  %.013.val.i.i.i.1 = load <2 x i64>, ptr %i.sf, align 1
  store <2 x i64> %.013.val.i.i.i.1, ptr %i.se, align 1
end_hunk_1
