Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chunkset_avx512?download=true
inline.NumInlined: 40
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@inflate_fast_avx512:bb.a
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 %i.bk ; 6 uses
  %i.bm = or i32 %.0207, 56                       ; 2 uses
  %i.bn = and i64 %i.bf, %i.ay
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bn ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !56  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !57
  %i.bt = trunc i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0214, i64 1 ; 2 uses
  store i8 %i.bt, ptr %.0214, align 1, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !58  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = zext nneg i8 %i.bw to i64
  %i.bz = lshr i64 %i.bf, %i.by                   ; 3 uses
  %i.ca = sub i32 %i.bm, %i.bx                    ; 2 uses
  %i.cb = and i64 %i.bz, %i.ay
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cb ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !56  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %.ph = phi i8 [ %i.bp, %bb.d ], [ %i.cd, %bb.e ]
  %.1215.ph = phi ptr [ %.0214, %bb.d ], [ %i.bu, %bb.e ]
  %.1208.ph = phi i32 [ %i.bm, %bb.d ], [ %i.ca, %bb.e ]
  %.1205.ph = phi i64 [ %i.bf, %bb.d ], [ %i.bz, %bb.e ]
  %.0203.ph = phi ptr [ %i.bo, %bb.d ], [ %i.cc, %bb.e ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0203.ph, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !58  ; 2 uses
  %i.ch = zext i8 %i.cg to i32
  %i.ci = zext nneg i8 %i.cg to i64
  %i.cj = lshr i64 %.1205.ph, %i.ci
  %i.ck = sub i32 %.1208.ph, %i.ch
  br label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !57
  %i.cn = trunc i16 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.0214, i64 2 ; 2 uses
  store i8 %i.cn, ptr %i.bu, align 1, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !58  ; 2 uses
  %i.cr = zext i8 %i.cq to i32
  %i.cs = zext nneg i8 %i.cq to i64
  %i.ct = lshr i64 %i.bz, %i.cs                   ; 2 uses
  %i.cu = and i64 %i.ct, %i.ay
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cu ; 4 uses
  %.pre = load i8, ptr %i.cv, align 2, !tbaa !56  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !58  ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = zext nneg i8 %i.cx to i64
  %i.da = lshr i64 %i.ct, %i.cz                   ; 2 uses
  %i.db = add nuw nsw i32 %i.cr, %i.cy
  %i.dc = sub i32 %i.ca, %i.db                    ; 2 uses
  %i.dd = icmp eq i8 %.pre, 0
  br i1 %i.dd, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.f
  %i.de = phi i32 [ %i.ck, %.thread ], [ %i.dc, %bb.f ]
  %i.df = phi i64 [ %i.cj, %.thread ], [ %i.da, %bb.f ]
  %.0203464 = phi ptr [ %.0203.ph, %.thread ], [ %i.cv, %bb.f ]
  %.1215462 = phi ptr [ %.1215.ph, %.thread ], [ %i.co, %bb.f ] ; 18 uses
  %i.dg = phi i8 [ %.ph, %.thread ], [ %.pre, %bb.f ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ax, %bb.f
  %.1215463 = phi ptr [ %i.co, %bb.f ], [ %.1215462, %bb.ax ] ; 2 uses
  %.1.lcssa = phi ptr [ %i.cv, %bb.f ], [ %i.ri, %bb.ax ]
  %.lcssa332 = phi i64 [ %i.da, %bb.f ], [ %i.rn, %bb.ax ]
  %.lcssa329 = phi i32 [ %i.dc, %bb.f ], [ %i.ro, %bb.ax ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !57
  %i.dj = trunc i16 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %.1215463, i64 1
  store i8 %i.dj, ptr %.1215463, align 1, !tbaa !9
  br label %CHUNKCOPY_SAFE.exit261

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ax
  %.in = phi i8 [ %i.rp, %bb.ax ], [ %i.dg, %.lr.ph.preheader ]
  %i.dl = phi i32 [ %i.ro, %bb.ax ], [ %i.de, %.lr.ph.preheader ] ; 4 uses
  %i.dm = phi i64 [ %i.rn, %bb.ax ], [ %i.df, %.lr.ph.preheader ] ; 6 uses
  %.1367 = phi ptr [ %i.ri, %bb.ax ], [ %.0203464, %.lr.ph.preheader ] ; 2 uses
  %i.dn = zext i8 %.in to i32                     ; 5 uses
  %i.do = and i32 %i.dn, 16
  %.not246 = icmp eq i32 %i.do, 0
  br i1 %.not246, label %bb.aw, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %.1367, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !57
  %i.dr = and i32 %i.dn, 15                       ; 3 uses
  %notmask249 = shl nsw i32 -1, %i.dr
  %i.ds = xor i32 %notmask249, -1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = and i64 %i.dm, %i.dt
  %i.dv = zext i16 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.du, %i.dv            ; 4 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32          ; 8 uses
  %i.dy = zext nneg i32 %i.dr to i64
  %i.dz = lshr i64 %i.dm, %i.dy                   ; 3 uses
  %i.ea = sub i32 %i.dl, %i.dr                    ; 5 uses
  %i.eb = and i64 %i.dz, %i.az
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.eb ; 4 uses
  %i.ed = icmp ult i32 %i.ea, 28
  br i1 %i.ed, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val = load i64, ptr %i.bl, align 1, !tbaa !9
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = shl i64 %.val, %i.ee
  %i.eg = or i64 %i.ef, %i.dz
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.ei = lshr i32 %i.ea, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek
  %i.em = or i32 %i.ea, 56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1220 = phi ptr [ %i.el, %bb.h ], [ %i.bl, %bb.g ] ; 12 uses
  %.3210 = phi i32 [ %i.em, %bb.h ], [ %i.ea, %bb.g ]
  %.3 = phi i64 [ %i.eg, %bb.h ], [ %i.dz, %bb.g ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !58  ; 2 uses
  %i.ep = zext i8 %i.eo to i32
  %i.eq = zext nneg i8 %i.eo to i64
  %i.er = lshr i64 %.3, %i.eq                     ; 2 uses
  %i.es = sub i32 %.3210, %i.ep                   ; 2 uses
  %i.et = load i8, ptr %i.ec, align 2, !tbaa !56
  %i.eu = zext i8 %i.et to i32                    ; 3 uses
  %i.ev = and i32 %i.eu, 16
  %.not250370 = icmp eq i32 %i.ev, 0
  br i1 %.not250370, label %.lr.ph373, label %._crit_edge374

._crit_edge374:                                   ; preds = %bb.au, %bb.i
  %.2.lcssa = phi ptr [ %i.ec, %bb.i ], [ %i.qn, %bb.au ]
  %.lcssa340 = phi i64 [ %i.er, %bb.i ], [ %i.qs, %bb.au ] ; 2 uses
  %.lcssa338 = phi i32 [ %i.es, %bb.i ], [ %i.qt, %bb.au ]
  %.lcssa = phi i32 [ %i.eu, %bb.i ], [ %i.qv, %bb.au ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !57
  %i.ey = and i32 %.lcssa, 15                     ; 3 uses
  %notmask252 = shl nsw i32 -1, %i.ey
  %i.ez = xor i32 %notmask252, -1
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = and i64 %.lcssa340, %i.fa
  %i.fc = zext i16 %i.ex to i64
  %i.fd = add nuw nsw i64 %i.fb, %i.fc            ; 9 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32          ; 5 uses
  %i.ff = zext nneg i32 %i.ey to i64
  %i.fg = lshr i64 %.lcssa340, %i.ff              ; 11 uses
  %i.fh = sub i32 %.lcssa338, %i.ey               ; 11 uses
  %i.fi = ptrtoint ptr %.1215462 to i64           ; 2 uses
  %i.fj = sub i64 %i.fi, %i.ba
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = icmp ugt i32 %i.fe, %i.fk
  br i1 %i.fl, label %bb.j, label %bb.ap

bb.j:                                             ; preds = %._crit_edge374
  %i.fm = sub nuw nsw i32 %i.fe, %i.fk            ; 7 uses
  %i.fn = icmp ugt i32 %i.fm, %i.y
  br i1 %i.fn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 16209, ptr %i.fo, align 8, !tbaa !59
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.fp, align 8, !tbaa !60
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fq = sub i32 %i.w, %i.fm
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fr
  br label %CHUNKCOPY_SAFE.exit

bb.n:                                             ; preds = %bb.l
  %.not254 = icmp ult i32 %i.aa, %i.fm
  br i1 %.not254, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ft = sub nuw i32 %i.aa, %i.fm
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fu
  br label %CHUNKCOPY_SAFE.exit

bb.p:                                             ; preds = %bb.n
  %i.fw = sub nuw nsw i32 %i.fm, %i.aa            ; 4 uses
  %i.fx = sub i32 %i.w, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fy ; 3 uses
  %i.ga = icmp ult i32 %i.fw, %i.dx
  br i1 %i.ga, label %bb.q, label %bb.am

bb.q:                                             ; preds = %bb.p
  %i.gb = sub nuw nsw i32 %i.dx, %i.fw            ; 2 uses
  %i.gc = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.gd = icmp eq ptr %.1215462, %i.fz
  br i1 %i.gd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %.1215462, i64 %i.gc
  br label %CHUNKCOPY_SAFE.exit

bb.s:                                             ; preds = %bb.q
  %i.gf = sub i64 %i.bc, %i.fi
  %i.gg = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gc, i64 %i.gf)
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.1215462, ptr noundef %i.fz, i32 noundef %i.gh)
  br label %CHUNKCOPY_SAFE.exit

CHUNKCOPY_SAFE.exit:                              ; preds = %bb.s, %bb.r, %bb.o, %bb.m
  %.0322 = phi i32 [ %i.dx, %bb.m ], [ %i.dx, %bb.o ], [ %i.gb, %bb.s ], [ %i.gb, %bb.r ] ; 3 uses
  %.2216 = phi ptr [ %.1215462, %bb.m ], [ %.1215462, %bb.o ], [ %i.gi, %bb.s ], [ %i.ge, %bb.r ] ; 14 uses
  %.0202 = phi i32 [ %i.fm, %bb.m ], [ %i.fm, %bb.o ], [ %i.aa, %bb.s ], [ %i.aa, %bb.r ] ; 3 uses
  %.0 = phi ptr [ %i.fs, %bb.m ], [ %i.fv, %bb.o ], [ %i.ac, %bb.s ], [ %i.ac, %bb.r ] ; 11 uses
  %i.gj = icmp ult i32 %.0202, %.0322
  br i1 %i.gj, label %bb.t, label %bb.am

bb.t:                                             ; preds = %CHUNKCOPY_SAFE.exit
  %i.gk = sub nuw nsw i32 %.0322, %.0202          ; 4 uses
  %i.gl = zext nneg i32 %.0202 to i64             ; 3 uses
  br i1 %i.ax, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gm = icmp eq ptr %.2216, %.0
  br i1 %i.gm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gn = getelementptr inbounds nuw i8, ptr %.2216, i64 %i.gl
  br label %CHUNKCOPY_SAFE.exit259

bb.w:                                             ; preds = %bb.u
  %i.go = ptrtoint ptr %.2216 to i64
  %i.gp = sub i64 %i.bc, %i.go
  %i.gq = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gl, i64 %i.gp)
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.2216, ptr noundef %.0, i32 noundef %i.gr)
  br label %CHUNKCOPY_SAFE.exit259

CHUNKCOPY_SAFE.exit259:                           ; preds = %bb.v, %bb.w
  %.0.i258 = phi ptr [ %i.gn, %bb.v ], [ %i.gs, %bb.w ] ; 3 uses
  %i.gt = sub nsw i64 0, %i.fd
  %i.gu = getelementptr inbounds i8, ptr %.0.i258, i64 %i.gt
  %i.gv = icmp ugt i32 %i.gk, %i.fe
  %i.gw = icmp samesign ult i64 %i.fd, 32
  %or.cond16.i = and i1 %i.gw, %i.gv
  br i1 %or.cond16.i, label %.lr.ph.i, label %chunkunroll_avx512.exit.thread

chunkunroll_avx512.exit.thread:                   ; preds = %CHUNKCOPY_SAFE.exit259
  %i.gx = zext i32 %i.gk to i64
  br label %bb.y

.lr.ph.i:                                         ; preds = %CHUNKCOPY_SAFE.exit259, %.lr.ph.i
  %.1323 = phi i32 [ %i.ha, %.lr.ph.i ], [ %i.gk, %CHUNKCOPY_SAFE.exit259 ]
  %.0320 = phi i32 [ %i.hb, %.lr.ph.i ], [ %i.fe, %CHUNKCOPY_SAFE.exit259 ] ; 5 uses
  %.017.i = phi ptr [ %i.gz, %.lr.ph.i ], [ %.0.i258, %CHUNKCOPY_SAFE.exit259 ] ; 2 uses
  %.val.i = load <4 x i64>, ptr %i.gu, align 1, !tbaa !9
  store <4 x i64> %.val.i, ptr %.017.i, align 1, !tbaa !9
  %i.gy = zext nneg i32 %.0320 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.gy ; 3 uses
  %i.ha = sub i32 %.1323, %.0320                  ; 3 uses
  %i.hb = shl nuw nsw i32 %.0320, 1               ; 3 uses
  %i.hc = icmp ult i32 %i.hb, %i.ha
  %i.hd = icmp ult i32 %.0320, 16
  %or.cond.i = and i1 %i.hd, %i.hc
  br i1 %or.cond.i, label %.lr.ph.i, label %chunkunroll_avx512.exit, !llvm.loop !15

chunkunroll_avx512.exit:                          ; preds = %.lr.ph.i
  %i.he = zext i32 %i.ha to i64                   ; 2 uses
  %i.hf = icmp eq i32 %.0320, 0
  br i1 %i.hf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %chunkunroll_avx512.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.he
  br label %CHUNKCOPY_SAFE.exit261

bb.y:                                             ; preds = %chunkunroll_avx512.exit.thread, %chunkunroll_avx512.exit
  %i.hh = phi i64 [ %i.gx, %chunkunroll_avx512.exit.thread ], [ %i.he, %chunkunroll_avx512.exit ]
  %.0.lcssa.i469 = phi ptr [ %.0.i258, %chunkunroll_avx512.exit.thread ], [ %i.gz, %chunkunroll_avx512.exit ] ; 3 uses
  %.1321468 = phi i32 [ %i.fe, %chunkunroll_avx512.exit.thread ], [ %i.hb, %chunkunroll_avx512.exit ]
  %i.hi = zext nneg i32 %.1321468 to i64
  %i.hj = sub nsw i64 0, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %.0.lcssa.i469, i64 %i.hj
  %i.hl = ptrtoint ptr %.0.lcssa.i469 to i64
  %i.hm = sub i64 %i.bc, %i.hl
  %i.hn = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.hh, i64 %i.hm)
  %i.ho = trunc nuw i64 %i.hn to i32
  %i.hp = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.0.lcssa.i469, ptr noundef nonnull %i.hk, i32 noundef %i.ho)
  br label %CHUNKCOPY_SAFE.exit261

bb.z:                                             ; preds = %bb.t
  %i.hq = ptrtoint ptr %.2216 to i64              ; 2 uses
  %i.hr = sub i64 %i.bc, %i.hq
  %i.hs = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gl, i64 %i.hr) ; 5 uses
  %i.ht = icmp uge ptr %.0, %.2216
  %i.hu = getelementptr inbounds nuw i8, ptr %.2216, i64 %i.hs ; 3 uses
  %i.hv = icmp ult ptr %.0, %i.hu
  %i.hw = select i1 %i.ht, i1 %i.hv, i1 false
  %i.hx = icmp uge ptr %.2216, %.0
  %i.hy = getelementptr inbounds nuw i8, ptr %.0, i64 %i.hs
  %i.hz = icmp ult ptr %.2216, %i.hy
  %i.ia = select i1 %i.hx, i1 %i.hz, i1 false
  %or.cond.i262 = select i1 %i.hw, i1 true, i1 %i.ia
  br i1 %or.cond.i262, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2216, ptr align 1 %.0, i64 %i.hs, i1 false)
  br label %chunkcopy_safe.exit

bb.ab:                                            ; preds = %bb.z
  %i.ib = icmp eq ptr %.2216, %.0
  br i1 %i.ib, label %chunkcopy_safe.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = ptrtoint ptr %.0 to i64
  %i.id = sub i64 %i.ic, %i.hq
  %i.ie = tail call i64 @llvm.abs.i64(i64 %i.id, i1 true)
  %.not87.i = icmp eq i64 %i.hs, 0
  br i1 %.not87.i, label %chunkcopy_safe.exit, label %.lr.ph92.i

.loopexit.i:                                      ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i, %middle.block599, %vec.epilog.middle.block616, %bb.ag
  %.469.lcssa.i = phi ptr [ %.368.i, %bb.ag ], [ %i.kf, %vec.epilog.middle.block616 ], [ %i.jv, %middle.block599 ], [ %.lcssa653.unr, %.lr.ph84.i.prol.loopexit ], [ %i.ll, %.lr.ph84.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.364.i, %bb.ag ], [ %i.ke, %vec.epilog.middle.block616 ], [ %i.ju, %middle.block599 ], [ %.lcssa654.unr, %.lr.ph84.i.prol.loopexit ], [ %i.lj, %.lr.ph84.i ]
  %.not.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i, label %chunkcopy_safe.exit, label %.lr.ph92.i, !llvm.loop !16

.lr.ph92.i:                                       ; preds = %bb.ac, %.loopexit.i
  %.06090.i = phi i64 [ %i.ig, %.loopexit.i ], [ %i.hs, %bb.ac ] ; 2 uses
  %.06189.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.0, %bb.ac ] ; 3 uses
  %.06588.i = phi ptr [ %.469.lcssa.i, %.loopexit.i ], [ %.2216, %bb.ac ] ; 3 uses
  %i.if = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 %.06090.i) ; 6 uses
  %i.ig = sub nuw nsw i64 %.06090.i, %i.if        ; 2 uses
  %i.ih = icmp samesign ugt i64 %i.if, 15
  br i1 %i.ih, label %.lr.ph.i264.preheader, label %._crit_edge.i

.lr.ph.i264.preheader:                            ; preds = %.lr.ph92.i
  %i.ii = add nsw i64 %i.if, -16                  ; 2 uses
  %i.ij = lshr i64 %i.ii, 4
  %i.ik = add nuw nsw i64 %i.ij, 1
  %xtraiter = and i64 %i.ik, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol

.lr.ph.i264.prol:                                 ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264.prol
  %.076.i.prol = phi i64 [ %i.in, %.lr.ph.i264.prol ], [ %i.if, %.lr.ph.i264.preheader ]
  %.16275.i.prol = phi ptr [ %i.im, %.lr.ph.i264.prol ], [ %.06189.i, %.lr.ph.i264.preheader ] ; 2 uses
  %.16674.i.prol = phi ptr [ %i.il, %.lr.ph.i264.prol ], [ %.06588.i, %.lr.ph.i264.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i264.prol ], [ 0, %.lr.ph.i264.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i.prol, i64 16, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.16674.i.prol, i64 16 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.16275.i.prol, i64 16 ; 3 uses
  %i.in = add i64 %.076.i.prol, -16               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol, !llvm.loop !17

.lr.ph.i264.prol.loopexit:                        ; preds = %.lr.ph.i264.prol, %.lr.ph.i264.preheader
  %.076.i.unr = phi i64 [ %i.if, %.lr.ph.i264.preheader ], [ %i.in, %.lr.ph.i264.prol ]
  %.16275.i.unr = phi ptr [ %.06189.i, %.lr.ph.i264.preheader ], [ %i.im, %.lr.ph.i264.prol ]
  %.16674.i.unr = phi ptr [ %.06588.i, %.lr.ph.i264.preheader ], [ %i.il, %.lr.ph.i264.prol ]
  %.lcssa652.unr = phi ptr [ poison, %.lr.ph.i264.preheader ], [ %i.il, %.lr.ph.i264.prol ]
  %.lcssa651.unr = phi ptr [ poison, %.lr.ph.i264.preheader ], [ %i.im, %.lr.ph.i264.prol ]
  %.lcssa650.unr = phi i64 [ poison, %.lr.ph.i264.preheader ], [ %i.in, %.lr.ph.i264.prol ]
  %i.io = icmp ult i64 %i.ii, 112
  br i1 %i.io, label %._crit_edge.i, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264
  %.076.i = phi i64 [ %i.jf, %.lr.ph.i264 ], [ %.076.i.unr, %.lr.ph.i264.prol.loopexit ]
  %.16275.i = phi ptr [ %i.je, %.lr.ph.i264 ], [ %.16275.i.unr, %.lr.ph.i264.prol.loopexit ] ; 9 uses
  %.16674.i = phi ptr [ %i.jd, %.lr.ph.i264 ], [ %.16674.i.unr, %.lr.ph.i264.prol.loopexit ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i, i64 16, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %.16674.i, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %.16275.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ip, ptr noundef nonnull align 1 dereferenceable(16) %i.iq, i64 16, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %.16674.i, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %.16275.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ir, ptr noundef nonnull align 1 dereferenceable(16) %i.is, i64 16, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %.16674.i, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %.16275.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.it, ptr noundef nonnull align 1 dereferenceable(16) %i.iu, i64 16, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %.16674.i, i64 64
  %i.iw = getelementptr inbounds nuw i8, ptr %.16275.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iv, ptr noundef nonnull align 1 dereferenceable(16) %i.iw, i64 16, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.16674.i, i64 80
  %i.iy = getelementptr inbounds nuw i8, ptr %.16275.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ix, ptr noundef nonnull align 1 dereferenceable(16) %i.iy, i64 16, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %.16674.i, i64 96
  %i.ja = getelementptr inbounds nuw i8, ptr %.16275.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iz, ptr noundef nonnull align 1 dereferenceable(16) %i.ja, i64 16, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %.16674.i, i64 112
  %i.jc = getelementptr inbounds nuw i8, ptr %.16275.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jb, ptr noundef nonnull align 1 dereferenceable(16) %i.jc, i64 16, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %.16674.i, i64 128 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.16275.i, i64 128 ; 2 uses
  %i.jf = add i64 %.076.i, -128                   ; 3 uses
  %i.jg = icmp ugt i64 %i.jf, 15
  br i1 %i.jg, label %.lr.ph.i264, label %._crit_edge.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264, %.lr.ph92.i
  %.166.lcssa.i = phi ptr [ %.06588.i, %.lr.ph92.i ], [ %.lcssa652.unr, %.lr.ph.i264.prol.loopexit ], [ %i.jd, %.lr.ph.i264 ] ; 3 uses
  %.162.lcssa.i = phi ptr [ %.06189.i, %.lr.ph92.i ], [ %.lcssa651.unr, %.lr.ph.i264.prol.loopexit ], [ %i.je, %.lr.ph.i264 ] ; 3 uses
  %.0.lcssa.i263 = phi i64 [ %i.if, %.lr.ph92.i ], [ %.lcssa650.unr, %.lr.ph.i264.prol.loopexit ], [ %i.jf, %.lr.ph.i264 ] ; 3 uses
  %i.jh = icmp samesign ugt i64 %.0.lcssa.i263, 7
  br i1 %i.jh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ji = load i64, ptr %.162.lcssa.i, align 1
  store i64 %i.ji, ptr %.166.lcssa.i, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.166.lcssa.i, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.162.lcssa.i, i64 8
  %i.jl = add nsw i64 %.0.lcssa.i263, -8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i
  %.267.i = phi ptr [ %i.jj, %bb.ad ], [ %.166.lcssa.i, %._crit_edge.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@inflate_fast_avx512:bb.a
  %i.mk = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 64
  %i.ml = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mk, ptr noundef nonnull align 1 dereferenceable(16) %i.ml, i64 16, i1 false)
  %i.mm = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 80
  %i.mn = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mm, ptr noundef nonnull align 1 dereferenceable(16) %i.mn, i64 16, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 96
  %i.mp = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mo, ptr noundef nonnull align 1 dereferenceable(16) %i.mp, i64 16, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 112
  %i.mr = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mq, ptr noundef nonnull align 1 dereferenceable(16) %i.mr, i64 16, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 128 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 128 ; 2 uses
  %i.mu = add i64 %.076.i293, -128                ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, 15
  br i1 %i.mv, label %.lr.ph.i292, label %._crit_edge.i272, !llvm.loop !18

._crit_edge.i272:                                 ; preds = %.lr.ph.i292.prol.loopexit, %.lr.ph.i292, %.lr.ph92.i268
  %.166.lcssa.i273 = phi ptr [ %.06588.i271, %.lr.ph92.i268 ], [ %.lcssa657.unr, %.lr.ph.i292.prol.loopexit ], [ %i.ms, %.lr.ph.i292 ] ; 3 uses
  %.162.lcssa.i274 = phi ptr [ %.06189.i270, %.lr.ph92.i268 ], [ %.lcssa656.unr, %.lr.ph.i292.prol.loopexit ], [ %i.mt, %.lr.ph.i292 ] ; 3 uses
  %.0.lcssa.i275 = phi i64 [ %i.lu, %.lr.ph92.i268 ], [ %.lcssa655.unr, %.lr.ph.i292.prol.loopexit ], [ %i.mu, %.lr.ph.i292 ] ; 3 uses
  %i.mw = icmp samesign ugt i64 %.0.lcssa.i275, 7
  br i1 %i.mw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i272
  %i.mx = load i64, ptr %.162.lcssa.i274, align 1
  store i64 %i.mx, ptr %.166.lcssa.i273, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.166.lcssa.i273, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.162.lcssa.i274, i64 8
  %i.na = add nsw i64 %.0.lcssa.i275, -8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i272
  %.267.i276 = phi ptr [ %i.my, %bb.ai ], [ %.166.lcssa.i273, %._crit_edge.i272 ] ; 3 uses
  %.263.i277 = phi ptr [ %i.mz, %bb.ai ], [ %.162.lcssa.i274, %._crit_edge.i272 ] ; 3 uses
  %.1.i278 = phi i64 [ %i.na, %bb.ai ], [ %.0.lcssa.i275, %._crit_edge.i272 ] ; 3 uses
  %i.nb = icmp samesign ugt i64 %.1.i278, 3
  br i1 %i.nb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nc = load i32, ptr %.263.i277, align 1
  store i32 %i.nc, ptr %.267.i276, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.267.i276, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %.263.i277, i64 4
  %i.nf = add nsw i64 %.1.i278, -4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.368.i279 = phi ptr [ %i.nd, %bb.ak ], [ %.267.i276, %bb.aj ] ; 7 uses
  %.364.i280 = phi ptr [ %i.ne, %bb.ak ], [ %.263.i277, %bb.aj ] ; 7 uses
  %.2.i281 = phi i64 [ %i.nf, %bb.ak ], [ %.1.i278, %bb.aj ] ; 11 uses
  %.not7279.i282 = icmp eq i64 %.2.i281, 0
  br i1 %.not7279.i282, label %.loopexit.i288, label %iter.check

iter.check:                                       ; preds = %bb.al
  %.364.i280563 = ptrtoaddr ptr %.364.i280 to i64
  %.368.i279562 = ptrtoaddr ptr %.368.i279 to i64
  %min.iters.check = icmp ult i64 %.2.i281, 8
  %i.ng = sub i64 %.364.i280563, %.368.i279562
  %diff.check = icmp ugt i64 %i.ng, -128
  %or.cond622 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond622, label %.lr.ph84.i283.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check564 = icmp ult i64 %.2.i281, 128
  br i1 %min.iters.check564, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nh = and i64 %.2.i281, 120
  %n.vec = and i64 %.2.i281, -128                 ; 5 uses
  %i.ni = and i64 %.2.i281, 127
  %i.nj = getelementptr i8, ptr %.364.i280, i64 %n.vec ; 2 uses
  %i.nk = getelementptr i8, ptr %.368.i279, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.364.i280, i64 %index ; 4 uses
  %next.gep565 = getelementptr i8, ptr %.368.i279, i64 %index ; 4 uses
  %i.nl = getelementptr i8, ptr %next.gep, i64 32
  %i.nm = getelementptr i8, ptr %next.gep, i64 64
  %i.nn = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load566 = load <32 x i8>, ptr %i.nl, align 1, !tbaa !9
  %wide.load567 = load <32 x i8>, ptr %i.nm, align 1, !tbaa !9
  %wide.load568 = load <32 x i8>, ptr %i.nn, align 1, !tbaa !9
  %i.no = getelementptr i8, ptr %next.gep565, i64 32
  %i.np = getelementptr i8, ptr %next.gep565, i64 64
  %i.nq = getelementptr i8, ptr %next.gep565, i64 96
  store <32 x i8> %wide.load, ptr %next.gep565, align 1, !tbaa !9
  store <32 x i8> %wide.load566, ptr %i.no, align 1, !tbaa !9
  store <32 x i8> %wide.load567, ptr %i.np, align 1, !tbaa !9
  store <32 x i8> %wide.load568, ptr %i.nq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i281, %n.vec
  br i1 %cmp.n, label %.loopexit.i288, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.i283.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec571 = and i64 %.2.i281, -8                ; 4 uses
  %i.ns = and i64 %.2.i281, 7
  %i.nt = getelementptr i8, ptr %.364.i280, i64 %n.vec571 ; 2 uses
  %i.nu = getelementptr i8, ptr %.368.i279, i64 %n.vec571 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index572 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next576, %vec.epilog.vector.body ] ; 3 uses
  %next.gep573 = getelementptr i8, ptr %.364.i280, i64 %index572
  %next.gep574 = getelementptr i8, ptr %.368.i279, i64 %index572
  %wide.load575 = load <8 x i8>, ptr %next.gep573, align 1, !tbaa !9
  store <8 x i8> %wide.load575, ptr %next.gep574, align 1, !tbaa !9
  %index.next576 = add nuw i64 %index572, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next576, %n.vec571
  br i1 %i.nv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n577 = icmp eq i64 %.2.i281, %n.vec571
  br i1 %cmp.n577, label %.loopexit.i288, label %.lr.ph84.i283.preheader

.lr.ph84.i283.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.382.i284.ph = phi i64 [ %.2.i281, %iter.check ], [ %i.ni, %vec.epilog.iter.check ], [ %i.ns, %vec.epilog.middle.block ] ; 4 uses
  %.481.i285.ph = phi ptr [ %.364.i280, %iter.check ], [ %i.nj, %vec.epilog.iter.check ], [ %i.nt, %vec.epilog.middle.block ] ; 2 uses
  %.46980.i286.ph = phi ptr [ %.368.i279, %iter.check ], [ %i.nk, %vec.epilog.iter.check ], [ %i.nu, %vec.epilog.middle.block ] ; 2 uses
  %i.nw = add i64 %.382.i284.ph, -1
  %xtraiter675 = and i64 %.382.i284.ph, 7         ; 2 uses
  %lcmp.mod676.not = icmp eq i64 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %.lr.ph84.i283.prol.loopexit, label %.lr.ph84.i283.prol

.lr.ph84.i283.prol:                               ; preds = %.lr.ph84.i283.preheader, %.lr.ph84.i283.prol
  %.382.i284.prol = phi i64 [ %i.nx, %.lr.ph84.i283.prol ], [ %.382.i284.ph, %.lr.ph84.i283.preheader ]
  %.481.i285.prol = phi ptr [ %i.ny, %.lr.ph84.i283.prol ], [ %.481.i285.ph, %.lr.ph84.i283.preheader ] ; 2 uses
  %.46980.i286.prol = phi ptr [ %i.oa, %.lr.ph84.i283.prol ], [ %.46980.i286.ph, %.lr.ph84.i283.preheader ] ; 2 uses
  %prol.iter677 = phi i64 [ %prol.iter677.next, %.lr.ph84.i283.prol ], [ 0, %.lr.ph84.i283.preheader ]
  %i.nx = add i64 %.382.i284.prol, -1             ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.481.i285.prol, i64 1 ; 3 uses
  %i.nz = load i8, ptr %.481.i285.prol, align 1, !tbaa !9
  %i.oa = getelementptr inbounds nuw i8, ptr %.46980.i286.prol, i64 1 ; 3 uses
  store i8 %i.nz, ptr %.46980.i286.prol, align 1, !tbaa !9
  %prol.iter677.next = add i64 %prol.iter677, 1   ; 2 uses
  %prol.iter677.cmp.not = icmp eq i64 %prol.iter677.next, %xtraiter675
  br i1 %prol.iter677.cmp.not, label %.lr.ph84.i283.prol.loopexit, label %.lr.ph84.i283.prol, !llvm.loop !26

.lr.ph84.i283.prol.loopexit:                      ; preds = %.lr.ph84.i283.prol, %.lr.ph84.i283.preheader
  %.lcssa659.unr = phi ptr [ poison, %.lr.ph84.i283.preheader ], [ %i.ny, %.lr.ph84.i283.prol ]
  %.lcssa658.unr = phi ptr [ poison, %.lr.ph84.i283.preheader ], [ %i.oa, %.lr.ph84.i283.prol ]
  %.382.i284.unr = phi i64 [ %.382.i284.ph, %.lr.ph84.i283.preheader ], [ %i.nx, %.lr.ph84.i283.prol ]
  %.481.i285.unr = phi ptr [ %.481.i285.ph, %.lr.ph84.i283.preheader ], [ %i.ny, %.lr.ph84.i283.prol ]
  %.46980.i286.unr = phi ptr [ %.46980.i286.ph, %.lr.ph84.i283.preheader ], [ %i.oa, %.lr.ph84.i283.prol ]
  %i.ob = icmp ult i64 %i.nw, 7
  br i1 %i.ob, label %.loopexit.i288, label %.lr.ph84.i283

.lr.ph84.i283:                                    ; preds = %.lr.ph84.i283.prol.loopexit, %.lr.ph84.i283
  %.382.i284 = phi i64 [ %i.ox, %.lr.ph84.i283 ], [ %.382.i284.unr, %.lr.ph84.i283.prol.loopexit ]
  %.481.i285 = phi ptr [ %i.oy, %.lr.ph84.i283 ], [ %.481.i285.unr, %.lr.ph84.i283.prol.loopexit ] ; 9 uses
  %.46980.i286 = phi ptr [ %i.pa, %.lr.ph84.i283 ], [ %.46980.i286.unr, %.lr.ph84.i283.prol.loopexit ] ; 9 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.481.i285, i64 1
  %i.od = load i8, ptr %.481.i285, align 1, !tbaa !9
  %i.oe = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 1
  store i8 %i.od, ptr %.46980.i286, align 1, !tbaa !9
  %i.of = getelementptr inbounds nuw i8, ptr %.481.i285, i64 2
  %i.og = load i8, ptr %i.oc, align 1, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 2
  store i8 %i.og, ptr %i.oe, align 1, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %.481.i285, i64 3
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !9
  %i.ok = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 3
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %.481.i285, i64 4
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !9
  %i.on = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 4
  store i8 %i.om, ptr %i.ok, align 1, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %.481.i285, i64 5
  %i.op = load i8, ptr %i.ol, align 1, !tbaa !9
  %i.oq = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 5
  store i8 %i.op, ptr %i.on, align 1, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %.481.i285, i64 6
  %i.os = load i8, ptr %i.oo, align 1, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 6
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.481.i285, i64 7
  %i.ov = load i8, ptr %i.or, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 7
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !9
  %i.ox = add i64 %.382.i284, -8                  ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.481.i285, i64 8 ; 2 uses
  %i.oz = load i8, ptr %i.ou, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 8 ; 2 uses
  store i8 %i.oz, ptr %i.ow, align 1, !tbaa !9
  %.not72.i287.7 = icmp eq i64 %i.ox, 0
  br i1 %.not72.i287.7, label %.loopexit.i288, label %.lr.ph84.i283, !llvm.loop !27

bb.am:                                            ; preds = %bb.p, %CHUNKCOPY_SAFE.exit
  %.0331 = phi ptr [ %.0, %CHUNKCOPY_SAFE.exit ], [ %i.fz, %bb.p ] ; 2 uses
  %.2216330 = phi ptr [ %.2216, %CHUNKCOPY_SAFE.exit ], [ %.1215462, %bb.p ] ; 4 uses
  %.0322329 = phi i32 [ %.0322, %CHUNKCOPY_SAFE.exit ], [ %i.dx, %bb.p ]
  %i.pb = zext nneg i32 %.0322329 to i64          ; 2 uses
  %i.pc = icmp eq ptr %.2216330, %.0331
  br i1 %i.pc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.pd = getelementptr inbounds nuw i8, ptr %.2216330, i64 %i.pb
  br label %CHUNKCOPY_SAFE.exit261

bb.ao:                                            ; preds = %bb.am
  %i.pe = ptrtoint ptr %.2216330 to i64
  %i.pf = sub i64 %i.bc, %i.pe
  %i.pg = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.pb, i64 %i.pf)
  %i.ph = trunc nuw nsw i64 %i.pg to i32
  %i.pi = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.2216330, ptr noundef %.0331, i32 noundef %i.ph)
  br label %CHUNKCOPY_SAFE.exit261

bb.ap:                                            ; preds = %._crit_edge374
  %.not253 = icmp samesign ule i64 %i.dw, %i.fd
  %i.pj = icmp samesign ugt i64 %i.fd, 31
  %or.cond325 = select i1 %.not253, i1 true, i1 %i.pj
  %i.pk = sub nsw i64 0, %i.fd
  %i.pl = getelementptr inbounds i8, ptr %.1215462, i64 %i.pk ; 4 uses
  br i1 %or.cond325, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.pm = and i32 %i.dx, 31                       ; 3 uses
  %i.pn = icmp samesign ult i64 %i.dw, 32
  br i1 %i.pn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.po = tail call i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 range(i32 0, 32) %i.pm)
  %i.pp = bitcast i32 %i.po to <32 x i1>          ; 2 uses
  %i.pq = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr readonly align 1 %i.pl, <32 x i1> %i.pp, <32 x i8> zeroinitializer)
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> %i.pq, ptr align 1 %.1215462, <32 x i1> %i.pp)
  %i.pr = getelementptr inbounds nuw i8, ptr %.1215462, i64 %i.dw
  br label %CHUNKCOPY_SAFE.exit261

bb.as:                                            ; preds = %bb.aq
  %.val.i299 = load <4 x i64>, ptr %i.pl, align 1, !tbaa !9
  %i.ps = icmp eq i32 %i.pm, 0
  %narrow.i = select i1 %i.ps, i32 32, i32 %i.pm  ; 2 uses
  store <4 x i64> %.val.i299, ptr %.1215462, align 1, !tbaa !9
  %i.pt = zext nneg i32 %narrow.i to i64          ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.1215462, i64 %i.pt ; 2 uses
  %i.pv = sub nuw nsw i32 %i.dx, %narrow.i        ; 2 uses
  %.not32.i = icmp eq i32 %i.pv, 0
  br i1 %.not32.i, label %CHUNKCOPY_SAFE.exit261, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.as
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pt
  br label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %.lr.ph.i300, %.lr.ph.preheader.i
  %.02635.i = phi i32 [ %i.pz, %.lr.ph.i300 ], [ %i.pv, %.lr.ph.preheader.i ]
  %.02734.i = phi ptr [ %i.py, %.lr.ph.i300 ], [ %i.pw, %.lr.ph.preheader.i ] ; 2 uses
  %.02833.i = phi ptr [ %i.px, %.lr.ph.i300 ], [ %i.pu, %.lr.ph.preheader.i ] ; 2 uses
  %.027.val.i = load <4 x i64>, ptr %.02734.i, align 1, !tbaa !9
  store <4 x i64> %.027.val.i, ptr %.02833.i, align 1, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %.02833.i, i64 32 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.02734.i, i64 32
  %i.pz = add i32 %.02635.i, -32                  ; 2 uses
  %.not.i301 = icmp eq i32 %i.pz, 0
  br i1 %.not.i301, label %CHUNKCOPY_SAFE.exit261, label %.lr.ph.i300, !llvm.loop !0

bb.at:                                            ; preds = %bb.ap
  %i.qa = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.1215462, ptr noundef %i.pl, i32 noundef %i.dx)
  br label %CHUNKCOPY_SAFE.exit261

.lr.ph373:                                        ; preds = %bb.i, %bb.au
  %i.qb = phi i32 [ %i.qv, %bb.au ], [ %i.eu, %bb.i ] ; 2 uses
  %i.qc = phi i32 [ %i.qt, %bb.au ], [ %i.es, %bb.i ] ; 2 uses
  %i.qd = phi i64 [ %i.qs, %bb.au ], [ %i.er, %bb.i ] ; 3 uses
  %.2371 = phi ptr [ %i.qn, %bb.au ], [ %i.ec, %bb.i ]
  %i.qe = and i32 %i.qb, 64
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph373
  %i.qg = getelementptr inbounds nuw i8, ptr %.2371, i64 2
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !57
  %i.qi = zext i16 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.qi
  %notmask251 = shl nsw i32 -1, %i.qb
  %i.qk = xor i32 %notmask251, -1
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = and i64 %i.qd, %i.ql
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qm ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !58  ; 2 uses
  %i.qq = zext i8 %i.qp to i32
  %i.qr = zext nneg i8 %i.qp to i64
  %i.qs = lshr i64 %i.qd, %i.qr                   ; 2 uses
  %i.qt = sub i32 %i.qc, %i.qq                    ; 2 uses
  %i.qu = load i8, ptr %i.qn, align 2, !tbaa !56
  %i.qv = zext i8 %i.qu to i32                    ; 3 uses
  %i.qw = and i32 %i.qv, 16
  %.not250 = icmp eq i32 %i.qw, 0
  br i1 %.not250, label %.lr.ph373, label %._crit_edge374

bb.av:                                            ; preds = %.lr.ph373
  %i.qx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 16209, ptr %i.qx, align 8, !tbaa !59
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.1, ptr %i.qy, align 8, !tbaa !60
  br label %.loopexit

bb.aw:                                            ; preds = %.lr.ph
  %i.qz = and i32 %i.dn, 64
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.rb = getelementptr inbounds nuw i8, ptr %.1367, i64 2
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !57
  %i.rd = zext i16 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.rd
  %notmask248 = shl nsw i32 -1, %i.dn
  %i.rf = xor i32 %notmask248, -1
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = and i64 %i.dm, %i.rg
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.rh ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !58  ; 2 uses
  %i.rl = zext i8 %i.rk to i32
  %i.rm = zext nneg i8 %i.rk to i64
  %i.rn = lshr i64 %i.dm, %i.rm                   ; 2 uses
  %i.ro = sub i32 %i.dl, %i.rl                    ; 2 uses
  %i.rp = load i8, ptr %i.ri, align 2, !tbaa !56  ; 2 uses
  %i.rq = icmp eq i8 %i.rp, 0
  br i1 %i.rq, label %._crit_edge, label %.lr.ph

bb.ay:                                            ; preds = %bb.aw
  %i.rr = and i32 %i.dn, 32
  %.not247 = icmp eq i32 %i.rr, 0
  %i.rs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not247, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 16191, ptr %i.rs, align 8, !tbaa !59
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  store i32 16209, ptr %i.rs, align 8, !tbaa !59
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.2, ptr %i.rt, align 8, !tbaa !60
  br label %.loopexit

CHUNKCOPY_SAFE.exit261:                           ; preds = %.lr.ph.i300, %.loopexit.i288, %bb.as, %bb.ar, %bb.ao, %bb.an, %bb.ah, %bb.y, %bb.x, %._crit_edge, %bb.at
  %.2221 = phi ptr [ %i.bl, %._crit_edge ], [ %.1220, %bb.y ], [ %.1220, %bb.at ], [ %.1220, %bb.ar ], [ %.1220, %bb.ao ], [ %.1220, %bb.x ], [ %.1220, %bb.ah ], [ %.1220, %.loopexit.i288 ], [ %.1220, %bb.as ], [ %.1220, %bb.an ], [ %.1220, %.lr.ph.i300 ] ; 3 uses
  %.3217 = phi ptr [ %i.dk, %._crit_edge ], [ %i.hp, %bb.y ], [ %i.qa, %bb.at ], [ %i.pr, %bb.ar ], [ %i.pi, %bb.ao ], [ %i.hg, %bb.x ], [ %i.lt, %bb.ah ], [ %.469.lcssa.i289, %.loopexit.i288 ], [ %i.pu, %bb.as ], [ %i.pd, %bb.an ], [ %i.px, %.lr.ph.i300 ] ; 3 uses
  %.5212 = phi i32 [ %.lcssa329, %._crit_edge ], [ %i.fh, %bb.y ], [ %i.fh, %bb.at ], [ %i.fh, %bb.ar ], [ %i.fh, %bb.ao ], [ %i.fh, %bb.x ], [ %i.fh, %bb.ah ], [ %i.fh, %.loopexit.i288 ], [ %i.fh, %bb.as ], [ %i.fh, %bb.an ], [ %i.fh, %.lr.ph.i300 ] ; 2 uses
  %.5 = phi i64 [ %.lcssa332, %._crit_edge ], [ %i.fg, %bb.y ], [ %i.fg, %bb.at ], [ %i.fg, %bb.ar ], [ %i.fg, %bb.ao ], [ %i.fg, %bb.x ], [ %i.fg, %bb.ah ], [ %i.fg, %.loopexit.i288 ], [ %i.fg, %bb.as ], [ %i.fg, %bb.an ], [ %i.fg, %.lr.ph.i300 ] ; 2 uses
  %i.ru = icmp ult ptr %.2221, %i.h
  %i.rv = icmp ult ptr %.3217, %i.s
  %i.rw = select i1 %i.ru, i1 %i.rv, i1 false
  br i1 %i.rw, label %bb.d, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %CHUNKCOPY_SAFE.exit261, %bb.ba, %bb.az, %bb.av, %bb.k
  %.3222 = phi ptr [ %i.bl, %bb.ba ], [ %.1220, %bb.k ], [ %.1220, %bb.av ], [ %i.bl, %bb.az ], [ %.2221, %CHUNKCOPY_SAFE.exit261 ]
  %.4218 = phi ptr [ %.1215462, %bb.ba ], [ %.1215462, %bb.k ], [ %.1215462, %bb.av ], [ %.1215462, %bb.az ], [ %.3217, %CHUNKCOPY_SAFE.exit261 ] ; 2 uses
  %.6213 = phi i32 [ %i.dl, %bb.ba ], [ %i.fh, %bb.k ], [ %i.qc, %bb.av ], [ %i.dl, %bb.az ], [ %.5212, %CHUNKCOPY_SAFE.exit261 ] ; 2 uses
  %.6 = phi i64 [ %i.dm, %bb.ba ], [ %i.fg, %bb.k ], [ %i.qd, %bb.av ], [ %i.dm, %bb.az ], [ %.5, %CHUNKCOPY_SAFE.exit261 ]
  %i.rx = lshr i32 %.6213, 3
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = sub nsw i64 0, %i.ry
  %i.sa = getelementptr inbounds i8, ptr %.3222, i64 %i.rz ; 2 uses
  store ptr %i.sa, ptr %0, align 8, !tbaa !35
  store ptr %.4218, ptr %i.i, align 8, !tbaa !37
  %i.sb = ptrtoint ptr %i.h to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %i.se = trunc i64 %i.sd to i32
  %i.sf = add i32 %i.se, 14
  store i32 %i.sf, ptr %i.d, align 8, !tbaa !36
  %i.sg = ptrtoint ptr %i.s to i64
  %i.sh = ptrtoint ptr %.4218 to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = and i32 %.6213, 7                       ; 2 uses
  %i.sk = zext nneg i32 %i.sj to i64
  %notmask255 = shl nsw i64 -1, %i.sk
  %i.sl = xor i64 %notmask255, -1
  %i.sm = and i64 %.6, %i.sl
  %i.sn = trunc i64 %i.si to i32
  %i.so = add i32 %i.sn, 259
  store i32 %i.so, ptr %i.k, align 8, !tbaa !38
  store i64 %i.sm, ptr %i.ad, align 8, !tbaa !48
  store i32 %i.sj, ptr %i.af, align 32, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i8> @llvm.masked.load.v16i8.p0(ptr captures(none), <16 x i1>, <16 x i8>) #7

end_hunk_1
