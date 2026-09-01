Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff-delta?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@create_delta_index:bb.a

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0131 = phi i32 [ 4, %bb.b ], [ %i.j, %bb.c ]  ; 2 uses
  %i.h = shl nuw i32 1, %.0131                    ; 4 uses
  %i.i = icmp ult i32 %i.h, %i.g
  %i.j = add i32 %.0131, 1
  br i1 %i.i, label %bb.c, label %bb.d, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, -1                         ; 2 uses
  %i.l = zext i32 %i.h to i64                     ; 6 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.n = zext i32 %spec.store.select to i64
  %i.o = mul nuw nsw i64 %i.n, 24
  %i.p = add nuw nsw i64 %i.m, %i.o
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #12 ; 7 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %i.m, i1 false)
  %i.r = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #13 ; 4 uses
  %.not147 = icmp eq ptr %i.r, null
  br i1 %.not147, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = shl i32 %spec.store.select, 4            ; 2 uses
  %.not148159 = icmp eq i32 %i.s, 0
  br i1 %.not148159, label %.preheader152.preheader, label %.preheader153.preheader

.preheader153.preheader:                          ; preds = %bb.f
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t ; 2 uses
  %.0124158 = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.preheader, %bb.i
  %.0124164 = phi ptr [ %.0124, %bb.i ], [ %.0124158, %.preheader153.preheader ] ; 18 uses
  %.0121163 = phi ptr [ %.1122, %bb.i ], [ %i.v, %.preheader153.preheader ] ; 7 uses
  %.pn162 = phi ptr [ %.0124164, %bb.i ], [ %i.u, %.preheader153.preheader ] ; 2 uses
  %.0125161 = phi i32 [ %.1126, %bb.i ], [ -1, %.preheader153.preheader ] ; 2 uses
  %.0127160 = phi i32 [ %.1128, %bb.i ], [ %spec.store.select, %.preheader153.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0124164, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0124164, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0124164, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw i32 %i.y, 24
  %i.ag = shl nuw nsw i32 %i.ab, 16
  %i.ah = shl nuw nsw i32 %i.ae, 8
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.0124164, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am
  %i.ao = lshr i32 %i.y, 7
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !15
  %i.as = xor i32 %i.an, %i.ar                    ; 2 uses
  %i.at = shl i32 %i.as, 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0124164, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = lshr i32 %i.as, 23
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = xor i32 %i.ax, %i.bb                    ; 2 uses
  %i.bd = shl i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0124164, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg
  %i.bi = lshr i32 %i.bc, 23
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15
  %i.bm = xor i32 %i.bh, %i.bl                    ; 2 uses
  %i.bn = shl i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0124164, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq
  %i.bs = lshr i32 %i.bm, 23
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !15
  %i.bw = xor i32 %i.br, %i.bv                    ; 2 uses
  %i.bx = shl i32 %i.bw, 8
  %i.by = getelementptr inbounds nuw i8, ptr %.0124164, i64 8
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bx, %i.ca
  %i.cc = lshr i32 %i.bw, 23
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = xor i32 %i.cb, %i.cf                    ; 2 uses
  %i.ch = shl i32 %i.cg, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0124164, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck
  %i.cm = lshr i32 %i.cg, 23
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !15
  %i.cq = xor i32 %i.cl, %i.cp                    ; 2 uses
  %i.cr = shl i32 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.0124164, i64 10
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = lshr i32 %i.cq, 23
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !15
  %i.da = xor i32 %i.cv, %i.cz                    ; 2 uses
  %i.db = shl i32 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.0124164, i64 11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !14
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.db, %i.de
  %i.dg = lshr i32 %i.da, 23
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !15
  %i.dk = xor i32 %i.df, %i.dj                    ; 2 uses
  %i.dl = shl i32 %i.dk, 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0124164, i64 12
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do
  %i.dq = lshr i32 %i.dk, 23
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !15
  %i.du = xor i32 %i.dp, %i.dt                    ; 2 uses
  %i.dv = shl i32 %i.du, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.0124164, i64 13
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i32
  %i.dz = or disjoint i32 %i.dv, %i.dy
  %i.ea = lshr i32 %i.du, 23
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !15
  %i.ee = xor i32 %i.dz, %i.ed                    ; 2 uses
  %i.ef = shl i32 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.0124164, i64 14
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.ef, %i.ei
  %i.ek = lshr i32 %i.ee, 23
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !15
  %i.eo = xor i32 %i.ej, %i.en                    ; 2 uses
  %i.ep = shl i32 %i.eo, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0124164, i64 15
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !14
  %i.es = zext i8 %i.er to i32
  %i.et = or disjoint i32 %i.ep, %i.es
  %i.eu = lshr i32 %i.eo, 23
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !15
  %i.ey = xor i32 %i.et, %i.ex                    ; 2 uses
  %i.ez = shl i32 %i.ey, 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0124164, i64 16
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = zext i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.ez, %i.fc
  %i.fe = lshr i32 %i.ey, 23
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !15
  %i.fi = xor i32 %i.fd, %i.fh                    ; 4 uses
  %i.fj = icmp eq i32 %i.fi, %.0125161
  br i1 %i.fj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader153
  %i.fk = getelementptr inbounds i8, ptr %.0121163, i64 -24
  store ptr %.pn162, ptr %i.fk, align 8, !tbaa !16
  %i.fl = add i32 %.0127160, -1
  br label %bb.i

bb.h:                                             ; preds = %.preheader153
  %i.fm = and i32 %i.fi, %i.k
  store ptr %.pn162, ptr %.0121163, align 8, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %.0121163, i64 8
  store i32 %i.fi, ptr %i.fn, align 8, !tbaa !22
  %i.fo = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %.0121163, i64 16
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %.0121163, i64 24
  store ptr %.0121163, ptr %i.fp, align 8, !tbaa !23
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fo ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !15
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1128 = phi i32 [ %i.fl, %bb.g ], [ %.0127160, %bb.h ] ; 2 uses
  %.1126 = phi i32 [ %.0125161, %bb.g ], [ %i.fi, %bb.h ]
  %.1122 = phi ptr [ %.0121163, %bb.g ], [ %i.fs, %bb.h ]
  %.0124 = getelementptr inbounds i8, ptr %.0124164, i64 -16 ; 2 uses
  %.not148 = icmp ult ptr %.0124, %0
  br i1 %.not148, label %.preheader152.preheader, label %.preheader153, !llvm.loop !25

.preheader152.preheader:                          ; preds = %bb.i, %bb.f
  %.2129166.ph = phi i32 [ %spec.store.select, %bb.f ], [ %.1128, %bb.i ]
  br label %.preheader152

.preheader152:                                    ; preds = %.preheader152.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader152.preheader ] ; 3 uses
  %.2129166 = phi i32 [ %.3130, %.loopexit ], [ %.2129166.ph, %.preheader152.preheader ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !15 ; 3 uses
  %i.fy = icmp ult i32 %i.fx, 65
  br i1 %i.fy, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.preheader152
  %i.fz = add i32 %i.fx, -64                      ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !23
  %i.gc = add i32 %i.fx, -65
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.2123 = phi ptr [ %i.gb, %bb.j ], [ %i.hh, %bb.l ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.j ], [ %.2, %bb.l ]      ; 2 uses
  %i.gd = add i32 %.0, %i.fz                      ; 4 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.preheader.preheader, label %._crit_edge187

.preheader.preheader:                             ; preds = %bb.k
  %i.gf = add i32 %i.gc, %.0                      ; 2 uses
  %i.gg = lshr i32 %i.gf, 6
  %i.gh = add nuw nsw i32 %i.gg, 1
  %xtraiter = and i32 %i.gh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.3.prol = phi ptr [ %i.gj, %.preheader.prol ], [ %.2123, %.preheader.preheader ]
  %.1.prol = phi i32 [ %i.gk, %.preheader.prol ], [ %i.gd, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.3.prol, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !24 ; 3 uses
  %i.gk = add nsw i32 %.1.prol, -64               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !26

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.3.unr = phi ptr [ %.2123, %.preheader.preheader ], [ %i.gj, %.preheader.prol ]
  %.1.unr = phi i32 [ %i.gd, %.preheader.preheader ], [ %i.gk, %.preheader.prol ]
  %.lcssa207.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.gj, %.preheader.prol ]
  %.lcssa206.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.gk, %.preheader.prol ]
  %i.gl = icmp ult i32 %i.gf, 448
  br i1 %i.gl, label %.unr-lcssa, label %.preheader

._crit_edge187:                                   ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.2123, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %bb.l

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.3 = phi ptr [ %i.hb, %.preheader ], [ %.3.unr, %.preheader.prol.loopexit ]
  %.1 = phi i32 [ %i.hc, %.preheader ], [ %.1.unr, %.preheader.prol.loopexit ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !24
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 2 uses
  %i.hc = add nsw i32 %.1, -512                   ; 2 uses
  %i.hd = icmp sgt i32 %.1, 512
  br i1 %i.hd, label %.preheader, label %.unr-lcssa, !llvm.loop !28

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa207 = phi ptr [ %.lcssa207.unr, %.preheader.prol.loopexit ], [ %i.hb, %.preheader ]
  %.lcssa206 = phi i32 [ %.lcssa206.unr, %.preheader.prol.loopexit ], [ %i.hc, %.preheader ]
  %i.he = getelementptr inbounds nuw i8, ptr %.lcssa207, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !24 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.2123, i64 16
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge187, %.unr-lcssa
  %i.hh = phi ptr [ %i.hf, %.unr-lcssa ], [ %.pre, %._crit_edge187 ] ; 2 uses
  %.2 = phi i32 [ %.lcssa206, %.unr-lcssa ], [ %i.gd, %._crit_edge187 ]
  %.not151 = icmp eq ptr %i.hh, null
  br i1 %.not151, label %.loopexit.loopexit, label %bb.k, !llvm.loop !29

.loopexit.loopexit:                               ; preds = %bb.l
  %i.hi = sub i32 %.2129166, %i.fz
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader152
  %.3130 = phi i32 [ %.2129166, %.preheader152 ], [ %i.hi, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %bb.m, label %.preheader152, !llvm.loop !30

bb.m:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef %i.r) #14
  %i.hj = add nuw i32 %i.h, 1
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %i.hl = shl nuw nsw i64 %i.hk, 3
  %i.hm = add nuw nsw i64 %i.hl, 32
  %i.hn = zext i32 %.3130 to i64                  ; 2 uses
  %i.ho = shl nuw nsw i64 %i.hn, 4
  %i.hp = add nuw nsw i64 %i.hm, %i.ho            ; 2 uses
  %i.hq = tail call noalias ptr @malloc(i64 noundef %i.hp) #12 ; 7 uses
  %.not149 = icmp eq ptr %i.hq, null
  br i1 %.not149, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !31
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %0, ptr %i.hr, align 8, !tbaa !33
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store i64 %1, ptr %i.hs, align 8, !tbaa !31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  store i32 %i.k, ptr %i.ht, align 8, !tbaa !15
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 32 ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hk ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %indvars.iv181 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next182, %._crit_edge ] ; 3 uses
  %.0119173 = phi ptr [ %i.hv, %bb.n ], [ %.1120.lcssa, %._crit_edge ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv181
  store ptr %.0119173, ptr %i.hw, align 8, !tbaa !34
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv181
  %.5167 = load ptr, ptr %i.hx, align 8, !tbaa !23 ; 2 uses
  %.not150168 = icmp eq ptr %.5167, null
  br i1 %.not150168, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.5170 = phi ptr [ %.5, %.lr.ph ], [ %.5167, %bb.o ] ; 2 uses
  %.1120169 = phi ptr [ %i.hy, %.lr.ph ], [ %.0119173, %bb.o ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1120169, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1120169, ptr noundef nonnull align 8 dereferenceable(16) %.5170, i64 16, i1 false), !tbaa.struct !36
  %i.hz = getelementptr inbounds nuw i8, ptr %.5170, i64 16
  %.5 = load ptr, ptr %i.hz, align 8, !tbaa !23   ; 2 uses
  %.not150 = icmp eq ptr %.5, null
  br i1 %.not150, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %.1120.lcssa = phi ptr [ %.0119173, %bb.o ], [ %i.hy, %.lr.ph ] ; 3 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %i.l
  br i1 %exitcond186.not, label %bb.p, label %bb.o, !llvm.loop !39

bb.p:                                             ; preds = %._crit_edge
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.l
  store ptr %.1120.lcssa, ptr %i.ia, align 8, !tbaa !34
  %i.ib = ptrtoint ptr %.1120.lcssa to i64
  %i.ic = ptrtoint ptr %i.hv to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 4
  %i.if = icmp eq i64 %i.ie, %i.hn
  br i1 %i.if, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__.create_delta_index) #15
  unreachable

.sink.split:                                      ; preds = %bb.p, %bb.m, %bb.e
  %.0135.ph = phi ptr [ null, %bb.m ], [ null, %bb.e ], [ %i.hq, %bb.p ]
  tail call void @free(ptr noundef %i.q) #14
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.0135 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ %.0135.ph, %.sink.split ]
  ret ptr %.0135
}
end_hunk_0
