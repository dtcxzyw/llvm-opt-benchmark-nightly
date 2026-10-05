Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/compare256_avx512?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
begin_hunk_0_@longest_match_slow_avx512:bb.a
  %.2215405 = phi ptr [ %.1214, %.lr.ph ], [ %.6219, %.thread ] ; 6 uses
  %.3223404 = phi i16 [ %.2222, %.lr.ph ], [ %.13, %.thread ] ; 3 uses
  %.sroa.7.0403 = phi i32 [ %.sroa.7.0.extract.trunc, %.lr.ph ], [ %.sroa.7.3, %.thread ] ; 2 uses
  %.sroa.0.sroa.0.0402 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0.sroa.0.3, %.thread ] ; 4 uses
  %.sroa.0.sroa.7.0401 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc, %.lr.ph ], [ %.sroa.0.sroa.7.3, %.thread ] ; 3 uses
  %i.by = icmp ult i32 %.0188409, 4
  br i1 %i.by, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.f, %bb.i
  %.4224 = phi i16 [ %i.ch, %bb.i ], [ %.3223404, %bb.f ] ; 3 uses
  %.2195 = phi i32 [ %i.cd, %bb.i ], [ %.1194408, %bb.f ] ; 2 uses
  %i.bz = zext i16 %.4224 to i32
  %i.ca = zext i16 %.4224 to i64                  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.2208406, i64 %i.ca
  %.val275 = load i16, ptr %i.cb, align 1, !tbaa !8
  %.not368 = icmp eq i16 %.val275, %.sroa.0.sroa.0.0402
  br i1 %.not368, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.2215405, i64 %i.ca
  %.val273 = load i16, ptr %i.cc, align 1, !tbaa !8
  %.not369 = icmp eq i16 %.val273, %.sroa.0.sroa.0302.0.extract.trunc
  br i1 %.not369, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.cd = add i32 %.2195, -1                      ; 2 uses
  %.not259 = icmp eq i32 %i.cd, 0
  br i1 %.not259, label %.thread323, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = and i32 %i.d, %i.bz
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !32 ; 2 uses
  %i.ci = icmp ugt i16 %i.ch, %.1201407
  br i1 %i.ci, label %.preheader, label %.thread323

bb.j:                                             ; preds = %bb.f
  %i.cj = icmp ugt i32 %.0188409, 7
  br i1 %i.cj, label %.preheader371, label %.preheader374

.preheader374:                                    ; preds = %bb.j
  %.sroa.0.sroa.7.0.insert.ext = zext i16 %.sroa.0.sroa.7.0401 to i32
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i32 %.sroa.0.sroa.7.0.insert.ext, 16
  %.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.0.sroa.0.0402 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  br label %bb.o

.preheader371:                                    ; preds = %bb.j
  %.sroa.0.sroa.7.0.insert.ext294 = zext i16 %.sroa.0.sroa.7.0401 to i64
  %.sroa.0.sroa.7.0.insert.shift295 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext294, 16
  %.sroa.0.sroa.0.0.insert.ext289 = zext i16 %.sroa.0.sroa.0.0402 to i64
  %.sroa.0.sroa.0.0.insert.insert291 = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift295, %.sroa.0.sroa.0.0.insert.ext289
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0403 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.insert291
  br label %bb.k

bb.k:                                             ; preds = %.preheader371, %bb.n
  %.5225 = phi i16 [ %i.cs, %bb.n ], [ %.3223404, %.preheader371 ] ; 3 uses
  %.3196 = phi i32 [ %i.co, %bb.n ], [ %.1194408, %.preheader371 ] ; 2 uses
  %i.ck = zext i16 %.5225 to i32
  %i.cl = zext i16 %.5225 to i64                  ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.2208406, i64 %i.cl
  %.val279 = load i64, ptr %i.cm, align 1, !tbaa !8
  %.not366 = icmp eq i64 %.val279, %.sroa.0.0.insert.insert
  br i1 %.not366, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.2215405, i64 %i.cl
  %.val277 = load i64, ptr %i.cn, align 1, !tbaa !8
  %.not367 = icmp eq i64 %.val277, %.val272
  br i1 %.not367, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.co = add i32 %.3196, -1                      ; 2 uses
  %.not258 = icmp eq i32 %i.co, 0
  br i1 %.not258, label %.thread323, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = and i32 %i.d, %i.ck
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !32 ; 2 uses
  %i.ct = icmp ugt i16 %i.cs, %.1201407
  br i1 %i.ct, label %bb.k, label %.thread323

bb.o:                                             ; preds = %.preheader374, %bb.r
  %.6226 = phi i16 [ %i.dc, %bb.r ], [ %.3223404, %.preheader374 ] ; 3 uses
  %.4197 = phi i32 [ %i.cy, %bb.r ], [ %.1194408, %.preheader374 ] ; 2 uses
  %i.cu = zext i16 %.6226 to i32
  %i.cv = zext i16 %.6226 to i64                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2208406, i64 %i.cv
  %.val283 = load i32, ptr %i.cw, align 1, !tbaa !8
  %.not364 = icmp eq i32 %.val283, %.sroa.0.sroa.0.0.insert.insert
  br i1 %.not364, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.2215405, i64 %i.cv
  %.val281 = load i32, ptr %i.cx, align 1, !tbaa !8
  %.not365 = icmp eq i32 %.val281, %i.bo
  br i1 %.not365, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cy = add i32 %.4197, -1                      ; 2 uses
  %.not257 = icmp eq i32 %i.cy, 0
  br i1 %.not257, label %.thread323, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = and i32 %i.d, %i.cu
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !32 ; 2 uses
  %i.dd = icmp ugt i16 %i.dc, %.1201407
  br i1 %i.dd, label %bb.o, label %.thread323

.loopexit:                                        ; preds = %bb.p, %bb.l, %bb.g
  %.pre-phi = phi i64 [ %i.cl, %bb.l ], [ %i.ca, %bb.g ], [ %i.cv, %bb.p ]
  %.7227 = phi i16 [ %.5225, %bb.l ], [ %.4224, %bb.g ], [ %.6226, %bb.p ] ; 2 uses
  %.5198 = phi i32 [ %.3196, %bb.l ], [ %.2195, %bb.g ], [ %.4197, %bb.p ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2215405, i64 %.pre-phi ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8
  %i.dh = load <16 x i8>, ptr %i.df, align 1, !tbaa !8
  %i.di = icmp eq <16 x i8> %i.dg, %i.dh
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.dj, -1
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.dk = zext i16 %i.dj to i32
  %i.dl = xor i32 %i.dk, -1
  %i.dm = tail call range(i32 0, 17) i32 @llvm.cttz.i32(i32 %i.dl, i1 true)
  br label %compare256_avx512_static.exit

bb.t:                                             ; preds = %.loopexit
  %i.dn = load <64 x i8>, ptr %i.bq, align 1, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 18
  %i.dp = load <64 x i8>, ptr %i.do, align 1, !tbaa !8
  %i.dq = icmp eq <64 x i8> %i.dn, %i.dp
  %i.dr = bitcast <64 x i1> %i.dq to i64          ; 2 uses
  %.not40.i = icmp eq i64 %i.dr, -1
  br i1 %.not40.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = xor i64 %i.dr, -1
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = add nuw nsw i32 %i.du, 16
  br label %compare256_avx512_static.exit

bb.v:                                             ; preds = %bb.t
  %i.dw = load <64 x i8>, ptr %i.br, align 1, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 82
  %i.dy = load <64 x i8>, ptr %i.dx, align 1, !tbaa !8
  %i.dz = icmp eq <64 x i8> %i.dw, %i.dy
  %i.ea = bitcast <64 x i1> %i.dz to i64          ; 2 uses
  %.not41.i = icmp eq i64 %i.ea, -1
  br i1 %.not41.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = xor i64 %i.ea, -1
  %i.ec = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 80
  br label %compare256_avx512_static.exit

bb.x:                                             ; preds = %bb.v
  %i.ef = load <64 x i8>, ptr %i.bs, align 1, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.de, i64 146
  %i.eh = load <64 x i8>, ptr %i.eg, align 1, !tbaa !8
  %i.ei = icmp eq <64 x i8> %i.ef, %i.eh
  %i.ej = bitcast <64 x i1> %i.ei to i64          ; 2 uses
  %.not42.i = icmp eq i64 %i.ej, -1
  br i1 %.not42.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = xor i64 %i.ej, -1
  %i.el = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = add nuw nsw i32 %i.em, 144
  br label %compare256_avx512_static.exit

bb.z:                                             ; preds = %bb.x
  %i.eo = load <64 x i8>, ptr %i.bt, align 1, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.de, i64 194
  %i.eq = load <64 x i8>, ptr %i.ep, align 1, !tbaa !8
  %i.er = icmp eq <64 x i8> %i.eo, %i.eq
  %i.es = bitcast <64 x i1> %i.er to i64          ; 2 uses
  %.not43.i = icmp eq i64 %i.es, -1
  br i1 %.not43.i, label %compare256_avx512_static.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = xor i64 %i.es, -1
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.et, i1 true)
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = or disjoint i32 %i.ev, 192
  br label %compare256_avx512_static.exit

compare256_avx512_static.exit:                    ; preds = %bb.s, %bb.u, %bb.w, %bb.y, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.dm, %bb.s ], [ %i.dv, %bb.u ], [ %i.ee, %bb.w ], [ %i.en, %bb.y ], [ %i.ew, %bb.aa ], [ 256, %bb.z ] ; 7 uses
  %i.ex = add nuw nsw i32 %.0.i, 2                ; 10 uses
  %i.ey = icmp ugt i32 %i.ex, %.0188409
  br i1 %i.ey, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %compare256_avx512_static.exit
  %i.ez = zext i16 %.7227 to i32
  %i.fa = zext i16 %.3185410 to i32
  %i.fb = sub nsw i32 %i.ez, %i.fa                ; 4 uses
  store i32 %i.fb, ptr %i.bu, align 8, !tbaa !33
  %.not260 = icmp ult i32 %i.ex, %i.l
  br i1 %.not260, label %bb.ac, label %.thread323

bb.ac:                                            ; preds = %bb.ab
  %.not261 = icmp ult i32 %i.ex, %i.z
  br i1 %.not261, label %bb.ad, label %.thread323

bb.ad:                                            ; preds = %bb.ac
  %2 = add nuw nsw i32 %.0.i, 1
  %i.fc = zext nneg i32 %i.ex to i64
  %i.fd = icmp samesign ugt i32 %.0.i, 1          ; 2 uses
  %3 = add nsw i32 %.0.i, -1                      ; 2 uses
  %i.fe = icmp samesign ugt i32 %.0.i, 5
  %4 = add nsw i32 %.0.i, -5
  %spec.select268 = select i1 %i.fe, i32 %4, i32 %3
  %.1187 = select i1 %i.fd, i32 %spec.select268, i32 %2
  %i.ff = zext i32 %.1187 to i64                  ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ff
  %.val = load i64, ptr %i.fg, align 1, !tbaa !8  ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc288 = trunc i64 %.val to i16 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift292370 = lshr i64 %.val, 16
  %.sroa.0.sroa.7.0.extract.trunc293 = trunc i64 %.sroa.0.sroa.7.0.extract.shift292370 to i16 ; 2 uses
  %.sroa.7.0.extract.shift286 = lshr i64 %.val, 32
  %.sroa.7.0.extract.trunc287 = trunc nuw i64 %.sroa.7.0.extract.shift286 to i32 ; 2 uses
  %i.fh = add nsw i32 %i.ex, %i.fb
  %i.fi = icmp ult i32 %i.fh, %i.b
  %i.fj = select i1 %i.fd, i1 %i.fi, i1 false
  br i1 %i.fj, label %bb.ae, label %bb.am, !prof !34

bb.ae:                                            ; preds = %bb.ad
  %i.fk = trunc i32 %i.fb to i16
  %i.fl = and i32 %i.fb, 65535
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ai
  %.0399 = phi i32 [ 0, %bb.ae ], [ %i.fv, %bb.ai ] ; 4 uses
  %.0177398 = phi i16 [ %i.fk, %bb.ae ], [ %.1, %bb.ai ] ; 2 uses
  %.4397 = phi i16 [ 0, %bb.ae ], [ %.5, %bb.ai ]
  %i.fm = add i32 %.0399, %i.fl
  %i.fn = and i32 %i.fm, %i.d
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !32 ; 3 uses
  %i.fr = icmp ult i16 %i.fq, %.0177398
  br i1 %i.fr, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fs = zext i16 %i.fq to i32
  %i.ft = add i32 %.0399, %i.bv
  %.not264 = icmp ult i32 %i.ft, %i.fs
  br i1 %.not264, label %bb.ah, label %.thread.thread349

bb.ah:                                            ; preds = %bb.ag
  %i.fu = trunc i32 %.0399 to i16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %.5 = phi i16 [ %i.fu, %bb.ah ], [ %.4397, %bb.af ] ; 2 uses
  %.1 = phi i16 [ %i.fq, %bb.ah ], [ %.0177398, %bb.af ] ; 3 uses
  %i.fv = add i32 %.0399, 1                       ; 2 uses
  %.not262 = icmp ugt i32 %i.fv, %3
  br i1 %.not262, label %bb.aj, label %bb.af, !llvm.loop !37

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fc ; 3 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -4
  %i.fy = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !8
  %i.ga = zext i8 %i.fz to i32
  %i.gb = tail call i32 %i.fy(i32 noundef 0, i32 noundef %i.ga) #5
  %i.gc = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.gd = getelementptr inbounds i8, ptr %i.fw, i64 -3
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !8
  %i.gf = zext i8 %i.ge to i32
  %i.gg = tail call i32 %i.gc(i32 noundef %i.gb, i32 noundef %i.gf) #5
  %i.gh = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.gi = getelementptr inbounds i8, ptr %i.fw, i64 -2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = zext i8 %i.gj to i32
  %i.gl = tail call i32 %i.gh(i32 noundef %i.gg, i32 noundef %i.gk) #5
  %i.gm = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.gn = zext i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !32 ; 3 uses
  %i.gq = icmp ult i16 %i.gp, %.1
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gr = zext i16 %i.gp to i32
  %i.gs = trunc nuw nsw i32 %.0.i to i16
  %i.gt = add nsw i16 %i.gs, -2                   ; 2 uses
  %i.gu = zext nneg i16 %i.gt to i32
  %i.gv = add nuw nsw i32 %i.gu, %i.bv
  %.not263 = icmp samesign ult i32 %i.gv, %i.gr
  br i1 %.not263, label %bb.al, label %.thread.thread349

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.8228 = phi i16 [ %.1, %bb.aj ], [ %i.gp, %bb.ak ]
  %.6 = phi i16 [ %.5, %bb.aj ], [ %i.gt, %bb.ak ] ; 3 uses
  %i.gw = add i16 %.6, %i.ag
  %i.gx = zext i16 %.6 to i64
  %i.gy = sub nsw i64 0, %i.gx
  %i.gz = getelementptr inbounds i8, ptr %i.f, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ff
  br label %.thread

bb.am:                                            ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.2215405, i64 %i.ff
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %compare256_avx512_static.exit
  %.sroa.0.sroa.7.2 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc293, %bb.am ], [ %.sroa.0.sroa.7.0401, %compare256_avx512_static.exit ]
  %.sroa.0.sroa.0.2 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc288, %bb.am ], [ %.sroa.0.sroa.0.0402, %compare256_avx512_static.exit ]
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.extract.trunc287, %bb.am ], [ %.sroa.7.0403, %compare256_avx512_static.exit ]
  %.5211 = phi ptr [ %i.hb, %bb.am ], [ %.2208406, %compare256_avx512_static.exit ]
  %.2190 = phi i32 [ %i.ex, %bb.am ], [ %.0188409, %compare256_avx512_static.exit ] ; 3 uses
  %i.hc = add i32 %.5198, -1                      ; 2 uses
  %.not265 = icmp eq i32 %i.hc, 0
  br i1 %.not265, label %.thread323, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hd = zext i16 %.7227 to i32
  %i.he = and i32 %i.d, %i.hd
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !32 ; 2 uses
  %i.hi = icmp ugt i16 %i.hh, %.1201407
  br i1 %i.hi, label %.thread, label %.thread323

.thread:                                          ; preds = %bb.ao, %bb.al
  %.sroa.0.sroa.7.3 = phi i16 [ %.sroa.0.sroa.7.0.extract.trunc293, %bb.al ], [ %.sroa.0.sroa.7.2, %bb.ao ]
  %.sroa.0.sroa.0.3 = phi i16 [ %.sroa.0.sroa.0.0.extract.trunc288, %bb.al ], [ %.sroa.0.sroa.0.2, %bb.ao ]
  %.sroa.7.3 = phi i32 [ %.sroa.7.0.extract.trunc287, %bb.al ], [ %.sroa.7.2, %bb.ao ]
  %.13 = phi i16 [ %.8228, %bb.al ], [ %i.hh, %bb.ao ] ; 2 uses
  %.6219 = phi ptr [ %i.gz, %bb.al ], [ %.2215405, %bb.ao ]
  %.6212 = phi ptr [ %i.ha, %bb.al ], [ %.5211, %bb.ao ]
  %.5205 = phi i16 [ %i.gw, %bb.al ], [ %.1201407, %bb.ao ]
  %.6199 = phi i32 [ %.5198, %bb.al ], [ %i.hc, %bb.ao ]
  %.3191 = phi i32 [ %i.ex, %bb.al ], [ %.2190, %bb.ao ] ; 2 uses
  %.10 = phi i16 [ %.6, %bb.al ], [ %.3185410, %bb.ao ]
  %i.hj = zext i16 %.13 to i32
  %.not256 = icmp ugt i32 %i.b, %i.hj
  br i1 %.not256, label %bb.f, label %.thread323

.thread.thread349:                                ; preds = %bb.ak, %bb.ag, %bb.d
  %.4192 = phi i32 [ %i.n, %bb.d ], [ %i.ex, %bb.ag ], [ %i.ex, %bb.ak ]
  %i.hk = load i32, ptr %i.k, align 4, !tbaa !26
  %.4192. = tail call i32 @llvm.umin.i32(i32 %.4192, i32 %i.hk)
  br label %.thread323

.thread323:                                       ; preds = %.thread, %bb.ao, %bb.an, %bb.ab, %bb.ac, %bb.q, %bb.r, %bb.m, %bb.n, %bb.h, %bb.i, %bb.e, %.thread.thread349
  %.4235 = phi i32 [ %.0188409, %bb.m ], [ %.0188409, %bb.q ], [ %spec.select, %bb.e ], [ %.4192., %.thread.thread349 ], [ %.0188409, %bb.h ], [ %.0188409, %bb.i ], [ %.0188409, %bb.n ], [ %.0188409, %bb.r ], [ %i.l, %bb.ab ], [ %i.ex, %bb.ac ], [ %.2190, %bb.ao ], [ %.2190, %bb.an ], [ %.3191, %.thread ]
  ret i32 %.4235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
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
