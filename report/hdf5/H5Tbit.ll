Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tbit?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5T__bit_find:bb.a
  %i.bc = icmp ne i64 %i.ba, 0
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %._crit_edge138

bb.n:                                             ; preds = %bb.m
  %i.be = add nuw nsw i64 %i.h, 5                 ; 2 uses
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = lshr i32 %i.k, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  %i.bi = xor i1 %4, %i.bh
  br i1 %i.bi, label %bb.o, label %bb.d

bb.o:                                             ; preds = %bb.n
  %i.bj = add i64 %2, -6                          ; 2 uses
  %i.bk = icmp eq i64 %i.h, 1
  %i.bl = icmp ne i64 %i.bj, 0
  %i.bm = and i1 %i.bk, %i.bl
  br i1 %i.bm, label %bb.p, label %._crit_edge138

bb.p:                                             ; preds = %bb.o
  %i.bn = icmp slt i8 %i.j, 0
  %i.bo = xor i1 %4, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.d

bb.q:                                             ; preds = %bb.p
  %i.bp = add i64 %2, -7
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %.preheader113
  %.098.lcssa = phi i64 [ 0, %.preheader113 ], [ %i.q, %bb.e ], [ %i.z, %bb.g ], [ %i.ai, %bb.i ], [ %i.ar, %bb.k ], [ %i.ba, %bb.m ], [ %i.bj, %bb.o ], [ %i.bp, %bb.q ]
  %i.bq = add nuw nsw i64 %i.g, 1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge138, %bb.c
  %.199 = phi i64 [ %.098.lcssa, %._crit_edge138 ], [ %2, %bb.c ] ; 4 uses
  %.095 = phi i64 [ %i.bq, %._crit_edge138 ], [ %i.g, %bb.c ] ; 3 uses
  %i.br = icmp ugt i64 %.199, 7
  br i1 %i.br, label %.lr.ph144, label %.preheader

.lr.ph144:                                        ; preds = %bb.r
  %i.bs = select i1 %4, i32 0, i32 255
  %i.bt = add i64 %.199, -8
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %.095, %i.bu
  %i.bw = add nuw nsw i64 %i.bv, 1
  br label %bb.s

.preheader:                                       ; preds = %.loopexit112, %bb.r
  %.2100.lcssa = phi i64 [ %.199, %bb.r ], [ %i.de, %.loopexit112 ] ; 7 uses
  %.196.lcssa = phi i64 [ %.095, %bb.r ], [ %i.bw, %.loopexit112 ] ; 2 uses
  %.not150 = icmp eq i64 %.2100.lcssa, 0
  br i1 %.not150, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.196.lcssa
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13  ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 6 uses
  %i.ca = trunc i8 %i.by to i1
  %i.cb = xor i1 %4, %i.ca
  br i1 %i.cb, label %bb.v, label %bb.u

bb.s:                                             ; preds = %.lr.ph144, %.loopexit112
  %.196142 = phi i64 [ %.095, %.lr.ph144 ], [ %i.df, %.loopexit112 ] ; 3 uses
  %.2100141 = phi i64 [ %.199, %.lr.ph144 ], [ %i.de, %.loopexit112 ]
  %i.cc = getelementptr inbounds i8, ptr %0, i64 %.196142
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13  ; 3 uses
  %i.ce = zext i8 %i.cd to i32                    ; 7 uses
  %.not110 = icmp eq i32 %i.bs, %i.ce
  br i1 %.not110, label %.loopexit112, label %.preheader111.preheader

.preheader111.preheader:                          ; preds = %bb.s
  %i.cf = trunc i8 %i.cd to i1
  %i.cg = xor i1 %4, %i.cf
  br i1 %i.cg, label %.preheader111.1, label %bb.t

bb.t:                                             ; preds = %.preheader111.7, %.preheader111.6, %.preheader111.5, %.preheader111.4, %.preheader111.3, %.preheader111.2, %.preheader111.1, %.preheader111.preheader
  %.092140.lcssa = phi i64 [ 0, %.preheader111.preheader ], [ 1, %.preheader111.1 ], [ 2, %.preheader111.2 ], [ 3, %.preheader111.3 ], [ 4, %.preheader111.4 ], [ 5, %.preheader111.5 ], [ 6, %.preheader111.6 ], [ 7, %.preheader111.7 ]
  %i.ch = shl nsw i64 %.196142, 3
  %i.ci = sub i64 %i.ch, %1
  %i.cj = add i64 %i.ci, %.092140.lcssa
  br label %.loopexit

.preheader111.1:                                  ; preds = %.preheader111.preheader
  %i.ck = and i32 %i.ce, 2
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = xor i1 %4, %i.cl
  br i1 %i.cm, label %.preheader111.2, label %bb.t

.preheader111.2:                                  ; preds = %.preheader111.1
  %i.cn = and i32 %i.ce, 4
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = xor i1 %4, %i.co
  br i1 %i.cp, label %.preheader111.3, label %bb.t

.preheader111.3:                                  ; preds = %.preheader111.2
  %i.cq = and i32 %i.ce, 8
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = xor i1 %4, %i.cr
  br i1 %i.cs, label %.preheader111.4, label %bb.t

.preheader111.4:                                  ; preds = %.preheader111.3
  %i.ct = and i32 %i.ce, 16
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = xor i1 %4, %i.cu
  br i1 %i.cv, label %.preheader111.5, label %bb.t

.preheader111.5:                                  ; preds = %.preheader111.4
  %i.cw = and i32 %i.ce, 32
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = xor i1 %4, %i.cx
  br i1 %i.cy, label %.preheader111.6, label %bb.t

.preheader111.6:                                  ; preds = %.preheader111.5
  %i.cz = and i32 %i.ce, 64
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = xor i1 %4, %i.da
  br i1 %i.db, label %.preheader111.7, label %bb.t

.preheader111.7:                                  ; preds = %.preheader111.6
  %i.dc = icmp slt i8 %i.cd, 0
  %i.dd = xor i1 %4, %i.dc
  br i1 %i.dd, label %.loopexit112, label %bb.t

.loopexit112:                                     ; preds = %.preheader111.7, %bb.s
  %i.de = add i64 %.2100141, -8                   ; 3 uses
  %i.df = add nuw nsw i64 %.196142, 1
  %i.dg = icmp ugt i64 %i.de, 7
  br i1 %i.dg, label %bb.s, label %.preheader, !llvm.loop !31

bb.u:                                             ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %.lr.ph148
  %.193147.lcssa = phi i64 [ 0, %.lr.ph148 ], [ 1, %bb.w ], [ 2, %bb.y ], [ 3, %bb.aa ], [ 4, %bb.ac ], [ 5, %bb.ae ], [ 6, %bb.ag ]
  %i.dh = shl nsw i64 %.196.lcssa, 3
  %i.di = sub i64 %i.dh, %1
  %i.dj = add i64 %i.di, %.193147.lcssa
  br label %.loopexit

bb.v:                                             ; preds = %.lr.ph148
  %exitcond.not = icmp eq i64 %.2100.lcssa, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = and i32 %i.bz, 2
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = xor i1 %4, %i.dl
  br i1 %i.dm, label %bb.x, label %bb.u

bb.x:                                             ; preds = %bb.w
  %exitcond.not.1 = icmp eq i64 %.2100.lcssa, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = and i32 %i.bz, 4
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = xor i1 %4, %i.do
  br i1 %i.dp, label %bb.z, label %bb.u

bb.z:                                             ; preds = %bb.y
  %exitcond.not.2 = icmp eq i64 %.2100.lcssa, 3
  br i1 %exitcond.not.2, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = and i32 %i.bz, 8
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = xor i1 %4, %i.dr
  br i1 %i.ds, label %bb.ab, label %bb.u

bb.ab:                                            ; preds = %bb.aa
  %exitcond.not.3 = icmp eq i64 %.2100.lcssa, 4
  br i1 %exitcond.not.3, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = and i32 %i.bz, 16
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = xor i1 %4, %i.du
  br i1 %i.dv, label %bb.ad, label %bb.u

bb.ad:                                            ; preds = %bb.ac
  %exitcond.not.4 = icmp eq i64 %.2100.lcssa, 5
  br i1 %exitcond.not.4, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = and i32 %i.bz, 32
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = xor i1 %4, %i.dx
  br i1 %i.dy, label %bb.af, label %bb.u

bb.af:                                            ; preds = %bb.ae
  %exitcond.not.5 = icmp eq i64 %.2100.lcssa, 6
  br i1 %exitcond.not.5, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = and i32 %i.bz, 64
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = xor i1 %4, %i.ea
  br i1 %i.eb, label %.loopexit, label %bb.u

bb.ah:                                            ; preds = %bb.b
  %i.ec = add i64 %2, %1                          ; 2 uses
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  %i.ee = lshr i64 %i.ed, 3                       ; 3 uses
  %i.ef = and i64 %1, 7                           ; 8 uses
  %i.eg = sub nuw nsw i64 8, %i.ef
  %i.eh = icmp ule i64 %2, %i.eg
  %i.ei = and i64 %i.ec, 7                        ; 9 uses
  %.not = icmp eq i64 %i.ei, 0
  %or.cond = or i1 %i.eh, %.not
  br i1 %or.cond, label %bb.aw, label %.preheader117

.preheader117:                                    ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %i.ee
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = zext i8 %i.ek to i32                    ; 7 uses
  %i.em = sub i64 %2, %i.ei
  %i.en = add nsw i64 %i.ei, -1                   ; 3 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = lshr i32 %i.el, %i.eo
  %i.eq = trunc i32 %i.ep to i1
  %i.er = xor i1 %4, %i.eq
  br i1 %i.er, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %.preheader117
  %.lcssa211 = phi i64 [ %i.en, %.preheader117 ], [ %i.ev, %bb.ak ], [ %i.fa, %bb.am ], [ %i.ff, %bb.ao ], [ %i.fk, %bb.aq ], [ %i.fp, %bb.as ], [ %i.fu, %bb.au ]
  %i.es = and i64 %i.ed, -8
  %i.et = sub i64 %i.es, %1
  %i.eu = add i64 %i.et, %.lcssa211
  br label %.loopexit

bb.aj:                                            ; preds = %.preheader117
  %.not106 = icmp eq i64 %i.en, 0
  br i1 %.not106, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = add nsw i64 %i.ei, -2                   ; 3 uses
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = lshr i32 %i.el, %i.ew
  %i.ey = trunc i32 %i.ex to i1
  %i.ez = xor i1 %4, %i.ey
  br i1 %i.ez, label %bb.al, label %bb.ai

bb.al:                                            ; preds = %bb.ak
  %.not106.1 = icmp eq i64 %i.ev, 0
  br i1 %.not106.1, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = add nsw i64 %i.ei, -3                   ; 3 uses
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = lshr i32 %i.el, %i.fb
  %i.fd = trunc i32 %i.fc to i1
  %i.fe = xor i1 %4, %i.fd
  br i1 %i.fe, label %bb.an, label %bb.ai

bb.an:                                            ; preds = %bb.am
  %.not106.2 = icmp eq i64 %i.fa, 0
  br i1 %.not106.2, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = add nsw i64 %i.ei, -4                   ; 3 uses
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = lshr i32 %i.el, %i.fg
  %i.fi = trunc i32 %i.fh to i1
  %i.fj = xor i1 %4, %i.fi
  br i1 %i.fj, label %bb.ap, label %bb.ai

bb.ap:                                            ; preds = %bb.ao
  %.not106.3 = icmp eq i64 %i.ff, 0
  br i1 %.not106.3, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = add nsw i64 %i.ei, -5                   ; 3 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = lshr i32 %i.el, %i.fl
  %i.fn = trunc i32 %i.fm to i1
  %i.fo = xor i1 %4, %i.fn
  br i1 %i.fo, label %bb.ar, label %bb.ai

bb.ar:                                            ; preds = %bb.aq
  %.not106.4 = icmp eq i64 %i.fk, 0
  br i1 %.not106.4, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fp = add nsw i64 %i.ei, -6                   ; 3 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = lshr i32 %i.el, %i.fq
  %i.fs = trunc i32 %i.fr to i1
  %i.ft = xor i1 %4, %i.fs
  br i1 %i.ft, label %bb.at, label %bb.ai

bb.at:                                            ; preds = %bb.as
  %.not106.5 = icmp eq i64 %i.fp, 0
  br i1 %.not106.5, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fu = add nsw i64 %i.ei, -7                   ; 2 uses
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = lshr i32 %i.el, %i.fv
  %i.fx = trunc i32 %i.fw to i1
  %i.fy = xor i1 %4, %i.fx
  br i1 %i.fy, label %bb.av, label %bb.ai

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj
  %i.fz = add nsw i64 %i.ee, -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ah
  %.4 = phi i64 [ %i.em, %bb.av ], [ %2, %bb.ah ] ; 3 uses
  %.297 = phi i64 [ %i.fz, %bb.av ], [ %i.ee, %bb.ah ] ; 2 uses
  %i.ga = icmp ugt i64 %.4, 7
  br i1 %i.ga, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aw
  %i.gb = select i1 %4, i32 0, i32 255
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %.loopexit116
  %.3133 = phi i64 [ %.297, %.lr.ph ], [ %i.hf, %.loopexit116 ] ; 3 uses
  %.5132 = phi i64 [ %.4, %.lr.ph ], [ %i.he, %.loopexit116 ]
  %i.gc = getelementptr inbounds i8, ptr %0, i64 %.3133
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13  ; 3 uses
  %i.ge = zext i8 %i.gd to i32                    ; 7 uses
  %.not108 = icmp eq i32 %i.gb, %i.ge
  br i1 %.not108, label %.loopexit116, label %.preheader115.preheader

.preheader115.preheader:                          ; preds = %bb.ax
  %i.gf = icmp slt i8 %i.gd, 0
  %i.gg = xor i1 %4, %i.gf
  br i1 %i.gg, label %.preheader115.1, label %bb.ay

bb.ay:                                            ; preds = %.preheader115.7, %.preheader115.6, %.preheader115.5, %.preheader115.4, %.preheader115.3, %.preheader115.2, %.preheader115.1, %.preheader115.preheader
  %.294131.lcssa = phi i64 [ 7, %.preheader115.preheader ], [ 6, %.preheader115.1 ], [ 5, %.preheader115.2 ], [ 4, %.preheader115.3 ], [ 3, %.preheader115.4 ], [ 2, %.preheader115.5 ], [ 1, %.preheader115.6 ], [ 0, %.preheader115.7 ]
  %i.gh = shl nsw i64 %.3133, 3
  %i.gi = sub i64 %i.gh, %1
  %i.gj = add i64 %i.gi, %.294131.lcssa
  br label %.loopexit

.preheader115.1:                                  ; preds = %.preheader115.preheader
  %i.gk = and i32 %i.ge, 64
  %i.gl = icmp ne i32 %i.gk, 0
  %i.gm = xor i1 %4, %i.gl
  br i1 %i.gm, label %.preheader115.2, label %bb.ay

.preheader115.2:                                  ; preds = %.preheader115.1
  %i.gn = and i32 %i.ge, 32
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = xor i1 %4, %i.go
  br i1 %i.gp, label %.preheader115.3, label %bb.ay

.preheader115.3:                                  ; preds = %.preheader115.2
  %i.gq = and i32 %i.ge, 16
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = xor i1 %4, %i.gr
  br i1 %i.gs, label %.preheader115.4, label %bb.ay

.preheader115.4:                                  ; preds = %.preheader115.3
  %i.gt = and i32 %i.ge, 8
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = xor i1 %4, %i.gu
  br i1 %i.gv, label %.preheader115.5, label %bb.ay

.preheader115.5:                                  ; preds = %.preheader115.4
  %i.gw = and i32 %i.ge, 4
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = xor i1 %4, %i.gx
  br i1 %i.gy, label %.preheader115.6, label %bb.ay

.preheader115.6:                                  ; preds = %.preheader115.5
  %i.gz = and i32 %i.ge, 2
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = xor i1 %4, %i.ha
  br i1 %i.hb, label %.preheader115.7, label %bb.ay

.preheader115.7:                                  ; preds = %.preheader115.6
  %i.hc = trunc i8 %i.gd to i1
  %i.hd = xor i1 %4, %i.hc
  br i1 %i.hd, label %.loopexit116, label %bb.ay

.loopexit116:                                     ; preds = %.preheader115.7, %bb.ax
  %i.he = add i64 %.5132, -8                      ; 3 uses
  %i.hf = add nsw i64 %.3133, -1                  ; 2 uses
  %i.hg = icmp ugt i64 %i.he, 7
  br i1 %i.hg, label %bb.ax, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.loopexit116, %bb.aw
  %.5.lcssa = phi i64 [ %.4, %bb.aw ], [ %i.he, %.loopexit116 ] ; 2 uses
  %.3.lcssa = phi i64 [ %.297, %bb.aw ], [ %i.hf, %.loopexit116 ] ; 2 uses
  %.not107 = icmp eq i64 %.5.lcssa, 0
  br i1 %.not107, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  %i.hh = add nuw nsw i64 %.5.lcssa, %i.ef        ; 7 uses
  %i.hi = getelementptr inbounds i8, ptr %0, i64 %.3.lcssa
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !13
  %i.hk = zext i8 %i.hj to i32                    ; 7 uses
  %5 = add nsw i64 %i.hh, -1                      ; 3 uses
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = lshr i32 %i.hk, %6
  %8 = trunc i32 %7 to i1
  %9 = xor i1 %4, %8
  br i1 %9, label %10, label %bb.bc, !llvm.loop !33

10:                                               ; preds = %bb.az
  %11 = icmp ugt i64 %5, %i.ef
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %10
  %13 = add nsw i64 %i.hh, -2                     ; 3 uses
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = lshr i32 %i.hk, %14
  %16 = trunc i32 %15 to i1
  %17 = xor i1 %4, %16
  br i1 %17, label %18, label %bb.bc, !llvm.loop !33

18:                                               ; preds = %12
  %19 = icmp ugt i64 %13, %i.ef
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %18
  %21 = add nsw i64 %i.hh, -3                     ; 3 uses
  %22 = trunc nuw nsw i64 %21 to i32
  %23 = lshr i32 %i.hk, %22
  %24 = trunc i32 %23 to i1
  %25 = xor i1 %4, %24
  br i1 %25, label %26, label %bb.bc, !llvm.loop !33

26:                                               ; preds = %20
  %27 = icmp ugt i64 %21, %i.ef
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %26
  %29 = add nsw i64 %i.hh, -4                     ; 3 uses
  %30 = trunc nuw nsw i64 %29 to i32
  %31 = lshr i32 %i.hk, %30
  %32 = trunc i32 %31 to i1
  %33 = xor i1 %4, %32
  br i1 %33, label %34, label %bb.bc, !llvm.loop !33

34:                                               ; preds = %28
  %35 = icmp ugt i64 %29, %i.ef
  br i1 %35, label %36, label %.loopexit

36:                                               ; preds = %34
  %37 = add nsw i64 %i.hh, -5                     ; 3 uses
  %38 = trunc nuw nsw i64 %37 to i32
  %39 = lshr i32 %i.hk, %38
  %40 = trunc i32 %39 to i1
  %41 = xor i1 %4, %40
  br i1 %41, label %42, label %bb.bc, !llvm.loop !33

42:                                               ; preds = %36
  %43 = icmp ugt i64 %37, %i.ef
  br i1 %43, label %44, label %.loopexit

44:                                               ; preds = %42
  %45 = add nsw i64 %i.hh, -6                     ; 3 uses
  %46 = trunc nuw nsw i64 %45 to i32
  %47 = lshr i32 %i.hk, %46
  %48 = trunc i32 %47 to i1
  %49 = xor i1 %4, %48
  br i1 %49, label %bb.ba, label %bb.bc, !llvm.loop !33

bb.ba:                                            ; preds = %44
  %i.hl = icmp ugt i64 %45, %i.ef
  br i1 %i.hl, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.hm = add nsw i64 %i.hh, -7                   ; 2 uses
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = lshr i32 %i.hk, %i.hn
  %i.hp = trunc i32 %i.ho to i1
  %i.hq = xor i1 %4, %i.hp
  br i1 %i.hq, label %.loopexit, label %bb.bc, !llvm.loop !33

bb.bc:                                            ; preds = %bb.bb, %44, %36, %28, %20, %12, %bb.az
  %.lcssa206 = phi i64 [ %5, %bb.az ], [ %13, %12 ], [ %21, %20 ], [ %29, %28 ], [ %37, %36 ], [ %45, %44 ], [ %i.hm, %bb.bb ]
  %i.hr = shl nsw i64 %.3.lcssa, 3
  %i.hs = sub i64 %i.hr, %1
  %i.ht = add i64 %i.hs, %.lcssa206
  br label %.loopexit

.loopexit:                                        ; preds = %10, %18, %26, %34, %42, %bb.ba, %bb.bb, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ag, %.preheader, %bb.d, %bb.t, %bb.u, %bb.ai, %bb.ay, %bb.bc, %bb.b, %._crit_edge, %bb.a
  %.0 = phi i64 [ -1, %bb.b ], [ %i.p, %bb.d ], [ %i.cj, %bb.t ], [ %i.dj, %bb.u ], [ -1, %bb.a ], [ %i.eu, %bb.ai ], [ %i.gj, %bb.ay ], [ %i.ht, %bb.bc ], [ -1, %.preheader ], [ -1, %._crit_edge ], [ -1, %bb.v ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ad ], [ -1, %bb.ab ], [ -1, %bb.z ], [ -1, %bb.x ], [ -1, %bb.bb ], [ -1, %bb.ba ], [ -1, %42 ], [ -1, %34 ], [ -1, %26 ], [ -1, %18 ], [ -1, %10 ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @H5T__bit_inc(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 3 uses
  %i.b = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %1, 7                            ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %2, %i.h
  %i.j = icmp ult i64 %i.i, 8
  %i.k = trunc i64 %2 to i32
  %notmask = shl nsw i32 -1, %i.k
  %i.l = xor i32 %notmask, -1
  %i.m = trunc nuw nsw i64 %i.h to i32            ; 4 uses
  %i.n = lshr exact i32 256, %i.m
  %i.o = add nsw i32 %i.n, -1
  %.0 = select i1 %i.j, i32 %i.l, i32 %i.o        ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = lshr i32 %i.r, %i.m
  %i.t = and i32 %i.s, %.0
  %i.u = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %i.v = sub nuw nsw i64 8, %i.h
  %i.w = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.v) ; 2 uses
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 1, %i.x
  %i.z = and i32 %i.u, %i.y
  %i.aa = shl i32 %.0, %i.m
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = xor i8 %i.ab, -1
  %i.ad = and i8 %i.q, %i.ac
  %i.ae = and i32 %i.u, %.0
  %i.af = shl nuw nsw i32 %i.ae, %i.m
  %i.ag = trunc i32 %i.af to i8
  %i.ah = or i8 %i.ad, %i.ag
  store i8 %i.ah, ptr %i.p, align 1, !tbaa !13
  %i.ai = sub i64 %2, %i.w
  %i.aj = add nuw nsw i64 %i.a, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.065 = phi i64 [ %i.ai, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %.063 = phi i64 [ %i.aj, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.062 = phi i32 [ %i.z, %bb.c ], [ 1, %bb.b ]   ; 2 uses
  %i.ak = icmp ne i32 %.062, 0                    ; 2 uses
  %i.al = icmp ugt i64 %.065, 7
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.16469 = phi i64 [ %i.at, %.lr.ph ], [ %.063, %bb.d ] ; 2 uses
  %.16668 = phi i64 [ %i.au, %.lr.ph ], [ %.065, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.16469 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.ar = and i32 %i.aq, 256                      ; 2 uses
  %i.as = trunc i32 %i.aq to i8
  store i8 %i.as, ptr %i.an, align 1, !tbaa !13
  %i.at = add nuw nsw i64 %.16469, 1              ; 2 uses
  %i.au = add i64 %.16668, -8                     ; 3 uses
  %i.av = icmp ne i32 %i.ar, 0                    ; 2 uses
  %i.aw = icmp ugt i64 %i.au, 7
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.166.lcssa = phi i64 [ %.065, %bb.d ], [ %i.au, %.lr.ph ] ; 2 uses
  %.164.lcssa = phi i64 [ %.063, %bb.d ], [ %i.at, %.lr.ph ]
  %.1.lcssa = phi i32 [ %.062, %bb.d ], [ %i.ar, %.lr.ph ]
  %.lcssa = phi i1 [ %i.ak, %bb.d ], [ %i.av, %.lr.ph ]
  %i.ay = icmp ne i64 %.166.lcssa, 0
  %or.cond = select i1 %.lcssa, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.az = trunc i64 %.166.lcssa to i32
  %i.ba = shl nuw i32 1, %i.az                    ; 3 uses
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.164.lcssa ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i32 %i.bb, %i.be
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %i.bh = and i32 %i.bg, %i.ba
  %i.bi = trunc i32 %i.ba to i8
  %i.bj = sub i8 0, %i.bi
  %i.bk = and i8 %i.bd, %i.bj
  %i.bl = and i32 %i.bg, %i.bb
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = or i8 %i.bk, %i.bm
  store i8 %i.bn, ptr %i.bc, align 1, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  %.2 = phi i32 [ %i.bh, %bb.e ], [ %.1.lcssa, %._crit_edge ], [ 1, %bb.a ]
  %i.bo = icmp ne i32 %.2, 0
  ret i1 %i.bo
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @H5T__bit_dec(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 3 uses
  %i.b = and i64 %1, 7                            ; 3 uses
  %i.c = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.h, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, -1
  %i.j = add i64 %i.i, %2
  %i.k = lshr i64 %i.j, 3
  %i.l = icmp samesign ugt i64 %i.k, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 4 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 3 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.b to i32            ; 2 uses
  %i.q = lshr i32 %i.o, %i.p
  %.not65 = icmp eq i32 %i.q, 0                   ; 2 uses
  %.neg66 = shl nsw i32 -1, %i.p
  %i.r = trunc nsw i32 %.neg66 to i8
  %i.s = add i8 %i.n, %i.r
  store i8 %i.s, ptr %i.m, align 1, !tbaa !13
  %.neg67 = or i64 %1, -8
  %i.t = add i64 %.neg67, %2                      ; 3 uses
  %.06171 = add nuw nsw i64 %i.a, 1               ; 2 uses
  %i.u = icmp ugt i64 %i.t, 7
  %i.v = and i1 %.not65, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06173 = phi i64 [ %.061, %.lr.ph ], [ %.06171, %bb.c ] ; 2 uses
  %.06272 = phi i64 [ %i.z, %.lr.ph ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.06173 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13    ; 2 uses
  %.not69 = icmp eq i8 %i.x, 0                    ; 2 uses
  %i.y = add i8 %i.x, -1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !13
  %i.z = add i64 %.06272, -8                      ; 3 uses
  %.061 = add nuw nsw i64 %.06173, 1              ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 7
  %i.ab = select i1 %.not69, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.062.lcssa = phi i64 [ %i.t, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  %.1.in.lcssa = phi i1 [ %.not65, %bb.c ], [ %.not69, %.lr.ph ] ; 2 uses
  %.061.lcssa = phi i64 [ %.06171, %bb.c ], [ %.061, %.lr.ph ]
  %i.ac = icmp ne i64 %.062.lcssa, 0
  %or.cond = select i1 %.1.in.lcssa, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.061.lcssa ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13  ; 2 uses
  %i.af = add i8 %i.ae, -1                        ; 3 uses
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i32
  %i.ah = trunc i64 %.062.lcssa to i32            ; 3 uses
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = zext i8 %i.ae to i32
  %i.ak = lshr i32 %i.aj, %i.ah
  %.not68 = icmp eq i32 %i.ai, %i.ak
  br i1 %.not68, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = shl nuw i32 1, %i.ah
  %i.am = trunc i32 %i.al to i8
  %i.an = add i8 %i.af, %i.am
  store i8 %i.an, ptr %i.ad, align 1, !tbaa !13
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.ao = trunc nuw nsw i64 %i.b to i8
  %.neg = shl nsw i8 -1, %i.ao
  %i.ap = add i8 %i.n, %.neg                      ; 3 uses
  store i8 %i.ap, ptr %i.m, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i32
end_hunk_0
