Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_FindGlyphIndex:bb.a
  %i.ax = getelementptr i8, ptr %i.f, i64 7
  %.val164 = load i8, ptr %i.ax, align 1, !tbaa !56
  %i.ay = zext i8 %.val163 to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val164 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = icmp sgt i32 %1, 65535
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add i32 %i.d, 14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.val157 = load i8, ptr %i.bf, align 1, !tbaa !56
  %i.bg = zext i8 %.val157 to i16
  %i.bh = shl nuw i16 %i.bg, 8
  %i.bi = getelementptr i8, ptr %i.f, i64 13
  %.val158 = load i8, ptr %i.bi, align 1, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val159 = load i8, ptr %i.bj, align 1, !tbaa !56
  %i.bk = zext i8 %.val159 to i16
  %i.bl = shl nuw i16 %i.bk, 8                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.f, i64 11
  %.val160 = load i8, ptr %i.bm, align 1, !tbaa !56
  %i.bn = zext i8 %.val160 to i16                 ; 3 uses
  %i.bo = or disjoint i16 %i.bl, %i.bn            ; 3 uses
  %i.bp = and i8 %.val158, -2
  %.masked = zext i8 %i.bp to i16
  %i.bq = or disjoint i16 %i.bh, %.masked         ; 2 uses
  %i.br = zext i32 %i.be to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = zext i16 %i.bq to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt ; 2 uses
  %.val155 = load i8, ptr %i.bu, align 1, !tbaa !56
  %i.bv = getelementptr i8, ptr %i.bu, i64 1
  %.val156 = load i8, ptr %i.bv, align 1, !tbaa !56
  %i.bw = zext i8 %.val155 to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = zext i8 %.val156 to i32
  %i.bz = or disjoint i32 %i.bx, %i.by
  %.not = icmp slt i32 %1, %i.bz
  %i.ca = zext i16 %i.bq to i32
  %i.cb = select i1 %.not, i32 0, i32 %i.ca
  %.0123 = add i32 %i.d, 12
  %i.cc = add i32 %.0123, %i.cb                   ; 4 uses
  %.not142183 = icmp eq i16 %i.bo, 0
  br i1 %.not142183, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val161 = load i8, ptr %i.cd, align 1, !tbaa !56
  %i.ce = zext i8 %.val161 to i16
  %i.cf = shl nuw i16 %i.ce, 8
  %i.cg = getelementptr i8, ptr %i.f, i64 9
  %.val162 = load i8, ptr %i.cg, align 1, !tbaa !56
  %i.ch = zext i8 %.val162 to i16
  %i.ci = or disjoint i16 %i.cf, %i.ch            ; 2 uses
  %i.cj = or disjoint i16 %i.bl, %i.bn
  %xtraiter = and i16 %i.bn, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.ci, 1                 ; 2 uses
  %i.ck = zext i32 %i.cc to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.cm = and i16 %.0127.prol, 32766              ; 2 uses
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 2 uses
  %.val153.prol = load i8, ptr %i.co, align 1, !tbaa !56
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %.val154.prol = load i8, ptr %i.cp, align 1, !tbaa !56
  %i.cq = zext i8 %.val153.prol to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = zext i8 %.val154.prol to i32
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = icmp sgt i32 %1, %i.ct
  %i.cv = zext nneg i16 %i.cm to i32
  %i.cw = select i1 %i.cu, i32 %i.cv, i32 0
  %.2125.prol = add i32 %i.cw, %i.cc              ; 2 uses
  %i.cx = add nsw i16 %i.bo, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.1124186.unr = phi i32 [ %i.cc, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.0126185.unr = phi i16 [ %i.bo, %.lr.ph.preheader ], [ %i.cx, %.lr.ph.prol ]
  %.0127.in184.unr = phi i16 [ %i.ci, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.cy = icmp eq i16 %i.cj, 1
  br i1 %i.cy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.1124186 = phi i32 [ %.2125.1, %.lr.ph ], [ %.1124186.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0126185 = phi i16 [ %i.dz, %.lr.ph ], [ %.0126185.unr, %.lr.ph.prol.loopexit ]
  %.0127.in184 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in184.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in184, 1
  %i.cz = zext i32 %.1124186 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  %i.db = and i16 %.0127, 32766                   ; 2 uses
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 2 uses
  %.val153 = load i8, ptr %i.dd, align 1, !tbaa !56
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  %.val154 = load i8, ptr %i.de, align 1, !tbaa !56
  %i.df = zext i8 %.val153 to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = zext i8 %.val154 to i32
  %i.di = or disjoint i32 %i.dg, %i.dh
  %i.dj = icmp sgt i32 %1, %i.di
  %i.dk = zext nneg i16 %i.db to i32
  %i.dl = select i1 %i.dj, i32 %i.dk, i32 0
  %.2125 = add i32 %i.dl, %.1124186               ; 2 uses
  %.0127.1 = lshr i16 %.0127.in184, 2             ; 2 uses
  %i.dm = zext i32 %.2125 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dm
  %i.do = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp ; 2 uses
  %.val153.1 = load i8, ptr %i.dq, align 1, !tbaa !56
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %.val154.1 = load i8, ptr %i.dr, align 1, !tbaa !56
  %i.ds = zext i8 %.val153.1 to i32
  %i.dt = shl nuw nsw i32 %i.ds, 8
  %i.du = zext i8 %.val154.1 to i32
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = icmp sgt i32 %1, %i.dv
  %i.dx = zext nneg i16 %i.do to i32
  %i.dy = select i1 %i.dw, i32 %i.dx, i32 0
  %.2125.1 = add i32 %i.dy, %.2125                ; 2 uses
  %i.dz = add i16 %.0126185, -2                   ; 2 uses
  %.not142.1 = icmp eq i16 %i.dz, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph, !llvm.loop !799

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1124.lcssa = phi i32 [ %i.cc, %bb.h ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %i.d
  %i.ea = add i32 %reass.sub, 131060
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 14 ; 3 uses
  %i.ec = and i32 %i.bb, 65534
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = and i32 %i.ea, 131070
  %i.eh = zext nneg i32 %i.eg to i64              ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh ; 2 uses
  %.val151 = load i8, ptr %i.ei, align 1, !tbaa !56
  %i.ej = getelementptr i8, ptr %i.ei, i64 1
  %.val152 = load i8, ptr %i.ej, align 1, !tbaa !56
  %i.ek = zext i8 %.val151 to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = zext i8 %.val152 to i32
  %i.en = or disjoint i32 %i.el, %i.em            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.eh ; 2 uses
  %.val149 = load i8, ptr %i.eo, align 1, !tbaa !56
  %i.ep = getelementptr i8, ptr %i.eo, i64 1
  %.val150 = load i8, ptr %i.ep, align 1, !tbaa !56
  %i.eq = zext i8 %.val149 to i32
  %i.er = shl nuw nsw i32 %i.eq, 8
  %i.es = zext i8 %.val150 to i32
  %i.et = or disjoint i32 %i.er, %i.es
  %i.eu = icmp slt i32 %1, %i.en
  %i.ev = icmp sgt i32 %1, %i.et
  %or.cond145 = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond145, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ew = mul nuw nsw i32 %i.bc, 6
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eh ; 2 uses
  %.val147 = load i8, ptr %i.fa, align 1, !tbaa !56
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %.val148 = load i8, ptr %i.fb, align 1, !tbaa !56
  %i.fc = zext i8 %.val147 to i16
  %i.fd = shl nuw i16 %i.fc, 8
  %i.fe = zext i8 %.val148 to i16
  %i.ff = or disjoint i16 %i.fd, %i.fe            ; 2 uses
  %i.fg = icmp eq i16 %i.ff, 0
  br i1 %i.fg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fh = shl nuw nsw i32 %i.bc, 2
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eh ; 2 uses
  %.val175 = load i8, ptr %i.fl, align 1, !tbaa !56
  %i.fm = getelementptr i8, ptr %i.fl, i64 1
  %.val176 = load i8, ptr %i.fm, align 1, !tbaa !56
  %i.fn = zext i8 %.val175 to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = zext i8 %.val176 to i32
  %i.fq = or disjoint i32 %i.fo, %i.fp
  %i.fr = add nuw nsw i32 %i.fq, %1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fs = zext i16 %i.ff to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fs
  %i.fu = sub nsw i32 %1, %i.en
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.e
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ex
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.eh ; 2 uses
  %.val = load i8, ptr %i.gb, align 1, !tbaa !56
  %i.gc = getelementptr i8, ptr %i.gb, i64 1
  %.val146 = load i8, ptr %i.gc, align 1, !tbaa !56
  %i.gd = zext i8 %.val to i32
  %i.ge = shl nuw nsw i32 %i.gd, 8
  %i.gf = zext i8 %.val146 to i32
  %i.gg = or disjoint i32 %i.ge, %i.gf
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2132.shrunk = phi i32 [ %i.gg, %bb.k ], [ %i.fr, %bb.j ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.gh = icmp eq i16 %i.k, 12
  %i.gi = and i16 %i.k, -2
  %or.cond = icmp eq i16 %i.gi, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.gk = load i32, ptr %i.gj, align 1
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gk) ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph190, label %.loopexit

.lr.ph190:                                        ; preds = %bb.n
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph190, %bb.r
  %.0188 = phi i32 [ %i.gl, %.lr.ph190 ], [ %.2, %bb.r ] ; 2 uses
  %.0120187 = phi i32 [ 0, %.lr.ph190 ], [ %.2122, %bb.r ] ; 3 uses
  %i.go = sub nsw i32 %.0188, %.0120187
  %i.gp = lshr i32 %i.go, 1
  %i.gq = add nuw nsw i32 %i.gp, %.0120187        ; 3 uses
  %i.gr = mul nsw i32 %i.gq, 12
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gu) ; 2 uses
  %i.gw = icmp ult i32 %1, %i.gv
  br i1 %i.gw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = icmp ugt i32 %1, %i.gz
  br i1 %i.ha, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.hb = add nuw nsw i32 %i.gq, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hd = load i32, ptr %i.hc, align 1
  %i.he = tail call i32 @llvm.bswap.i32(i32 %i.hd)
  %i.hf = sub i32 %1, %i.gv
  %i.hg = select i1 %i.gh, i32 %i.hf, i32 0
  %.5 = add i32 %i.he, %i.hg
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2122 = phi i32 [ %.0120187, %bb.o ], [ %i.hb, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gq, %bb.o ], [ %.0188, %bb.q ] ; 2 uses
  %i.hh = icmp slt i32 %.2122, %.2
  br i1 %i.hh, label %bb.o, label %.loopexit, !llvm.loop !800

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.x, %bb.c ], [ %i.av, %bb.f ], [ 0, %bb.e ], [ %.2132, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define i32 @stbtt_GetCodepointShape(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %i.b = tail call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %i.a, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @stbtt_GetGlyphShape(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #17 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !266
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !267
  %.not.i18 = icmp slt i32 %1, %i.g
  br i1 %.not.i18, label %bb.c, label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !268  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %stbtt__GetGlyfOffset.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !269
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !270
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1, !tbaa !56
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1, !tbaa !56
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i20 = load i8, ptr %i.aa, align 1, !tbaa !56
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1, !tbaa !56
  %i.ac = zext i8 %.val.i20 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i19
  br i1 %i.ap, label %stbtt__GetGlyfOffset.exit.thread, label %stbtt__GetGlyfOffset.exit

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !73
  br label %stbtt__GetGlyphShapeTT.exit

stbtt__GetGlyfOffset.exit:                        ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !73
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %stbtt__GetGlyphShapeTT.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__GetGlyfOffset.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val400.i = load i8, ptr %i.as, align 1, !tbaa !56
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val401.i = load i8, ptr %i.at, align 1, !tbaa !56
  %i.au = zext i8 %.val400.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val401.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val378.i = load i8, ptr %i.bd, align 1, !tbaa !56
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val379.i = load i8, ptr %i.be, align 1, !tbaa !56
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val376.i = load i8, ptr %i.bf, align 1, !tbaa !56
end_hunk_0
begin_hunk_1_@stbtt_GetCodepointBox:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_IsGlyphEmpty(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %2 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !266
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  store i32 1, ptr %2, align 8
  %i.c = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %2)
  %.not24.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %.not24.i, i1 true, i1 %i.f
  br label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !267
  %.not.i = icmp slt i32 %1, %i.i
  br i1 %.not.i, label %bb.d, label %stbtt__GetGlyfOffset.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !268  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %stbtt__GetGlyfOffset.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !269
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !270
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl nsw i32 %1, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w ; 4 uses
  %.val28.i = load i8, ptr %i.x, align 1, !tbaa !56
  %i.y = getelementptr i8, ptr %i.x, i64 1
  %.val29.i = load i8, ptr %i.y, align 1, !tbaa !56
  %i.z = zext i8 %.val28.i to i32
  %i.aa = zext i8 %.val29.i to i32
  %i.ab = shl nuw nsw i32 %i.z, 9
  %i.ac = shl nuw nsw i32 %i.aa, 1
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val.i = load i8, ptr %i.ae, align 1, !tbaa !56
  %i.af = getelementptr i8, ptr %i.x, i64 3
  %.val27.i = load i8, ptr %i.af, align 1, !tbaa !56
  %i.ag = zext i8 %.val.i to i32
  %i.ah = zext i8 %.val27.i to i32
  %i.ai = shl nuw nsw i32 %i.ag, 9
  %i.aj = shl nuw nsw i32 %i.ah, 1
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = shl nsw i32 %1, 2
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.as, %bb.g ], [ %i.ak, %bb.f ]
  %.pn.i = phi i32 [ %i.ap, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.o                  ; 2 uses
  %i.at = icmp eq i32 %.pn.i, %.sink.i
  %i.au = icmp slt i32 %.023.i, 0
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond, label %stbtt__GetGlyfOffset.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = zext nneg i32 %.023.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av ; 2 uses
  %.val = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  %.val10 = load i8, ptr %i.ax, align 1, !tbaa !56
  %i.ay = or i8 %.val10, %.val
  %i.az = icmp eq i8 %i.ay, 0
  br label %stbtt__GetGlyfOffset.exit.thread

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.h, %bb.d, %bb.c, %bb.i, %bb.b
  %.0.shrunk = phi i1 [ %i.g, %bb.b ], [ %i.az, %bb.i ], [ true, %bb.h ], [ true, %bb.c ], [ true, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetGlyphHMetrics(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !282
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %.val = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = getelementptr i8, ptr %i.f, i64 35
  %.val33 = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = zext i8 %.val to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val33 to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 4 uses
  %i.m = icmp slt i32 %1, %i.l
  %.not31 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !283
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  %i.r = shl nsw i32 %1, 2
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 2 uses
  %.val40 = load i8, ptr %i.t, align 1, !tbaa !56
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val41 = load i8, ptr %i.u, align 1, !tbaa !56
  %i.v = zext i8 %.val40 to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val41 to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = sext i16 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !283
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 %i.ac
  %i.ae = shl nsw i32 %1, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = getelementptr i8, ptr %i.ag, i64 3
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !283
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al
  %i.an = shl nuw nsw i32 %i.l, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %i.am, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %.val36 = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.ar = getelementptr i8, ptr %i.ap, i64 -3
  %.val37 = load i8, ptr %i.ar, align 1, !tbaa !56
  %i.as = zext i8 %.val36 to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %.val37 to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = sext i16 %i.av to i32
  store i32 %i.aw, ptr %2, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !283
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.b, i64 %i.az
  %i.bb = shl nuw nsw i32 %i.l, 2
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = sub nsw i32 %1, %i.l
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i
  %.val34.sink.in = phi ptr [ %i.bh, %bb.i ], [ %i.ah, %bb.e ]
  %.val35.sink.in = phi ptr [ %i.bi, %bb.i ], [ %i.ai, %bb.e ]
  %.val35.sink = load i8, ptr %.val35.sink.in, align 1, !tbaa !56
  %.val34.sink = load i8, ptr %.val34.sink.in, align 1, !tbaa !56
  %i.bj = zext i8 %.val34.sink to i16
  %i.bk = shl nuw i16 %i.bj, 8
  %i.bl = zext i8 %.val35.sink to i16
  %i.bm = or disjoint i16 %i.bk, %i.bl
  %i.bn = sext i16 %i.bm to i32
  store i32 %i.bn, ptr %3, align 4, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @stbtt_GetKerningTableLength(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !284  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val10 = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = getelementptr i8, ptr %i.f, i64 3
  %.val11 = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = or i8 %.val11, %.val10
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val8 = load i8, ptr %i.k, align 1, !tbaa !56
  %i.l = getelementptr i8, ptr %i.f, i64 9
  %.val9 = load i8, ptr %i.l, align 1, !tbaa !56
  %i.m = zext i8 %.val8 to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = zext i8 %.val9 to i16
  %i.p = or disjoint i16 %i.n, %i.o
  %.not6 = icmp eq i16 %i.p, 1
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val = load i8, ptr %i.q, align 1, !tbaa !56
  %i.r = getelementptr i8, ptr %i.f, i64 11
  %.val7 = load i8, ptr %i.r, align 1, !tbaa !56
  %i.s = zext i8 %.val to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = zext i8 %.val7 to i32
  %i.v = or disjoint i32 %i.t, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.v, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 65536) i32 @stbtt_GetKerningTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !284  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 9 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val37 = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = getelementptr i8, ptr %i.f, i64 3
  %.val38 = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = or i8 %.val38, %.val37
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val35 = load i8, ptr %i.k, align 1, !tbaa !56
  %i.l = getelementptr i8, ptr %i.f, i64 9
  %.val36 = load i8, ptr %i.l, align 1, !tbaa !56
  %i.m = zext i8 %.val35 to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = zext i8 %.val36 to i16
  %i.p = or disjoint i16 %i.n, %i.o
  %.not29 = icmp eq i16 %i.p, 1
  br i1 %.not29, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val33 = load i8, ptr %i.q, align 1, !tbaa !56
  %i.r = getelementptr i8, ptr %i.f, i64 11
  %.val34 = load i8, ptr %i.r, align 1, !tbaa !56
  %i.s = zext i8 %.val33 to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = zext i8 %.val34 to i32
  %i.v = or disjoint i32 %i.t, %i.u
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.v) ; 4 uses
  %i.w = icmp sgt i32 %spec.select, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.aa = mul nuw nsw i64 %indvars.iv, 6          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %.val31 = load i8, ptr %i.ab, align 1, !tbaa !56
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %.val32 = load i8, ptr %i.ac, align 1, !tbaa !56
  %i.ad = zext i8 %.val31 to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = zext i8 %.val32 to i32
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !814
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %.val = load i8, ptr %i.ai, align 1, !tbaa !56
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %.val30 = load i8, ptr %i.aj, align 1, !tbaa !56
  %i.ak = zext i8 %.val to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = zext i8 %.val30 to i32
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !815
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %.val39 = load i8, ptr %i.ap, align 1, !tbaa !56
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  %.val40 = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.ar = zext i8 %.val39 to i16
  %i.as = shl nuw i16 %i.ar, 8
  %i.at = zext i8 %.val40 to i16
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !816
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !812

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt_GetGlyphKernAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !285  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 7 uses
  %.val178.i = load i8, ptr %i.f, align 1, !tbaa !56
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %.val179.i = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = zext i8 %.val178.i to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = zext i8 %.val179.i to i16
  %i.k = or disjoint i16 %i.i, %i.j
  %.not128.i = icmp eq i16 %i.k, 1
  br i1 %.not128.i, label %bb.c, label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val176.i = load i8, ptr %i.l, align 1, !tbaa !56
  %i.m = getelementptr i8, ptr %i.f, i64 3
  %.val177.i = load i8, ptr %i.m, align 1, !tbaa !56
  %i.n = or i8 %.val177.i, %.val176.i
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %stbtt__GetGlyphGPOSInfoAdvance.exit

end_hunk_1
begin_hunk_2_@stbtt_GetGlyphKernAdvance:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %.val30.i = load i8, ptr %i.is, align 1, !tbaa !56
  %i.it = getelementptr i8, ptr %i.in, i64 9
  %.val31.i = load i8, ptr %i.it, align 1, !tbaa !56
  %i.iu = zext i8 %.val30.i to i16
  %i.iv = shl nuw i16 %i.iu, 8
  %i.iw = zext i8 %.val31.i to i16
  %i.ix = or disjoint i16 %i.iv, %i.iw
  %.not27.i = icmp eq i16 %i.ix, 1
  br i1 %.not27.i, label %bb.ag, label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.ag:                                            ; preds = %bb.af
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 10
  %.val.i14 = load i8, ptr %i.iy, align 1, !tbaa !56
  %i.iz = getelementptr i8, ptr %i.in, i64 11
  %.val29.i = load i8, ptr %i.iz, align 1, !tbaa !56
  %i.ja = zext i8 %.val.i14 to i32
  %i.jb = shl nuw nsw i32 %i.ja, 8
  %i.jc = zext i8 %.val29.i to i32
  %i.jd = or disjoint i32 %i.jb, %i.jc            ; 2 uses
  %i.je = shl i32 %1, 16
  %i.jf = or i32 %i.je, %2                        ; 2 uses
  %.not281.i = icmp eq i32 %i.jd, 0
  br i1 %.not281.i, label %stbtt__GetGlyphGPOSInfoAdvance.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.ag
  %i.jg = add nsw i32 %i.jd, -1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.in, i64 18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.am, %.lr.ph.i15
  %.03.i = phi i32 [ %i.jg, %.lr.ph.i15 ], [ %.1.i, %bb.am ] ; 2 uses
  %.0222.i = phi i32 [ 0, %.lr.ph.i15 ], [ %.123.i, %bb.am ] ; 2 uses
  %i.ji = add nsw i32 %.0222.i, %.03.i
  %i.jj = ashr i32 %i.ji, 1                       ; 3 uses
  %i.jk = mul nsw i32 %i.jj, 6
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 1
  %i.jo = tail call i32 @llvm.bswap.i32(i32 %i.jn) ; 2 uses
  %i.jp = icmp ult i32 %i.jf, %i.jo
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jq = add nsw i32 %i.jj, -1
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.jr = icmp ugt i32 %i.jf, %i.jo
  br i1 %i.jr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.js = add nsw i32 %i.jj, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.in, i64 22
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %i.jl ; 2 uses
  %.val34.i = load i8, ptr %i.ju, align 1, !tbaa !56
  %i.jv = getelementptr i8, ptr %i.ju, i64 1
  %.val35.i = load i8, ptr %i.jv, align 1, !tbaa !56
  %i.jw = zext i8 %.val34.i to i16
  %i.jx = shl nuw i16 %i.jw, 8
  %i.jy = zext i8 %.val35.i to i16
  %i.jz = or disjoint i16 %i.jx, %i.jy
  %i.ka = sext i16 %i.jz to i32
  br label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %.123.i = phi i32 [ %.0222.i, %bb.ai ], [ %i.js, %bb.ak ] ; 2 uses
  %.1.i = phi i32 [ %i.jq, %bb.ai ], [ %.03.i, %bb.ak ] ; 2 uses
  %.not28.i = icmp sgt i32 %.123.i, %.1.i
  br i1 %.not28.i, label %stbtt__GetGlyphGPOSInfoAdvance.exit, label %bb.ah, !llvm.loop !822

stbtt__GetGlyphGPOSInfoAdvance.exit:              ; preds = %.loopexit.i, %bb.t, %bb.s, %bb.r, %bb.am, %bb.al, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.thread.i, %bb.d, %bb.c, %bb.b, %bb.ad
  %.0 = phi i32 [ 0, %bb.ad ], [ %i.ka, %bb.al ], [ 0, %bb.am ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ %i.ii, %bb.ac ], [ %i.gf, %.thread.i ], [ 0, %bb.af ], [ 0, %bb.t ], [ 0, %bb.ag ], [ 0, %bb.ae ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt_GetCodepointKernAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !284
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !285
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %1)
  %i.f = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %2)
  %i.g = tail call i32 @stbtt_GetGlyphKernAdvance(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetCodepointHMetrics(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !282
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = getelementptr i8, ptr %i.g, i64 35
  %.val33.i = load i8, ptr %i.i, align 1, !tbaa !56
  %i.j = zext i8 %.val.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = zext i8 %.val33.i to i32
  %i.m = or disjoint i32 %i.k, %i.l               ; 4 uses
  %i.n = icmp slt i32 %i.a, %i.m
  %.not31.i = icmp eq ptr %2, null                ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !283
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %i.q
  %i.s = shl nsw i32 %i.a, 2
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 2 uses
  %.val40.i = load i8, ptr %i.u, align 1, !tbaa !56
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %.val41.i = load i8, ptr %i.v, align 1, !tbaa !56
  %i.w = zext i8 %.val40.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = zext i8 %.val41.i to i16
  %i.z = or disjoint i16 %i.x, %i.y
  %i.aa = sext i16 %i.z to i32
  store i32 %i.aa, ptr %2, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32.i = icmp eq ptr %3, null
  br i1 %.not32.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !283
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 %i.ad
  %i.af = shl nsw i32 %i.a, 2
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = getelementptr i8, ptr %i.ah, i64 3
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !283
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.c, i64 %i.am
  %i.ao = shl nuw nsw i32 %i.m, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %.val36.i = load i8, ptr %i.ar, align 1, !tbaa !56
  %i.as = getelementptr i8, ptr %i.aq, i64 -3
  %.val37.i = load i8, ptr %i.as, align 1, !tbaa !56
  %i.at = zext i8 %.val36.i to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = zext i8 %.val37.i to i16
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = sext i16 %i.aw to i32
  store i32 %i.ax, ptr %2, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !283
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %i.ba
  %i.bc = shl nuw nsw i32 %i.m, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = sub nsw i32 %i.a, %i.m
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.val34.sink.in.i = phi ptr [ %i.bi, %bb.i ], [ %i.ai, %bb.e ]
  %.val35.sink.in.i = phi ptr [ %i.bj, %bb.i ], [ %i.aj, %bb.e ]
  %.val35.sink.i = load i8, ptr %.val35.sink.in.i, align 1, !tbaa !56
  %.val34.sink.i = load i8, ptr %.val34.sink.in.i, align 1, !tbaa !56
  %i.bk = zext i8 %.val34.sink.i to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = zext i8 %.val35.sink.i to i16
  %i.bn = or disjoint i16 %i.bl, %i.bm
  %i.bo = sext i16 %i.bn to i32
  store i32 %i.bo, ptr %3, align 4, !tbaa !55
  br label %stbtt_GetGlyphHMetrics.exit

stbtt_GetGlyphHMetrics.exit:                      ; preds = %bb.d, %bb.h, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontVMetrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !282
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val19 = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val20 = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = zext i8 %.val19 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val20 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !264
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !282
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val17 = load i8, ptr %i.t, align 1, !tbaa !56
  %i.u = getelementptr i8, ptr %i.s, i64 7
  %.val18 = load i8, ptr %i.u, align 1, !tbaa !56
  %i.v = zext i8 %.val17 to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val18 to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = sext i16 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !264
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val = load i8, ptr %i.ag, align 1, !tbaa !56
  %i.ah = getelementptr i8, ptr %i.af, i64 9
  %.val16 = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.ai = zext i8 %.val to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = zext i8 %.val16 to i16
  %i.al = or disjoint i16 %i.aj, %i.ak
  %i.am = sext i16 %i.al to i32
  store i32 %i.am, ptr %3, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_GetFontVMetricsOS2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !286  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val25.i = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = zext i8 %.val.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val25.i to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = shl nuw nsw i32 %indvars.iv.tr.i, 4
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !56
  %i.s = icmp eq i8 %i.r, 79
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !56
  %i.v = icmp eq i8 %i.u, 83
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !56
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !56
  %i.ab = icmp eq i8 %i.aa, 50
  br i1 %i.ab, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !15

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %.val25 = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.ai = getelementptr i8, ptr %i.ag, i64 69
  %.val26 = load i8, ptr %i.ai, align 1, !tbaa !56
  %i.aj = zext i8 %.val25 to i16
  %i.ak = shl nuw i16 %i.aj, 8
  %i.al = zext i8 %.val26 to i16
  %i.am = or disjoint i16 %i.ak, %i.al
  %i.an = sext i16 %i.am to i32
  store i32 %i.an, ptr %1, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = sext i32 %i.ae to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 70
  %.val23 = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.ar = getelementptr i8, ptr %i.ap, i64 71
  %.val24 = load i8, ptr %i.ar, align 1, !tbaa !56
  %i.as = zext i8 %.val23 to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %.val24 to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = sext i16 %i.av to i32
  store i32 %i.aw, ptr %2, align 4, !tbaa !55
end_hunk_2
begin_hunk_3_@stbtt__cff_get_index:bb.a
  %i.n = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !323
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !56
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %.0.i.i, %i.r
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %i.t = phi i32 [ %i.n, %bb.c ], [ %i.l, %stbtt__buf_get8.exit.i ] ; 5 uses
  %.0.i.i.1 = phi i32 [ %i.s, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ] ; 2 uses
  %.not = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i.1
  %.not.i = icmp slt i32 %i.t, %i.d
  br i1 %.not.i, label %bb.e, label %stbtt__buf_get8.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !325
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !323
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !56
  %i.z = zext i8 %i.y to i32
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.v, %bb.e ], [ %i.t, %bb.d ]
  %.0.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]   ; 6 uses
  %i.ab = mul nuw nsw i32 %.0.i, %.0.i.i.1
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.d)
  %..i.i = select i1 %i.ad, i32 %i.d, i32 %i.ae   ; 3 uses
  %.not.i13 = icmp eq i32 %.0.i, 0
  br i1 %.not.i13, label %stbtt__buf_get.exit21, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %xtraiter = and i32 %.0.i, 1
  %i.af = icmp eq i32 %.0.i, 1
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.0.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i18.1, %.lr.ph.i.preheader.new
  %i.ag = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.ay, %stbtt__buf_get8.exit.i18.1 ] ; 4 uses
  %.056.i16 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i19.1, %stbtt__buf_get8.exit.i18.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i18.1 ]
  %i.ah = shl i32 %.056.i16, 8                    ; 2 uses
  %.not.i.i17 = icmp slt i32 %i.ag, %i.d
  br i1 %.not.i.i17, label %bb.f, label %stbtt__buf_get8.exit.i18

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !325
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !323
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %stbtt__buf_get8.exit.i18

stbtt__buf_get8.exit.i18:                         ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i19, 8                    ; 2 uses
  %.not.i.i17.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i17.1, label %bb.g, label %stbtt__buf_get8.exit.i18.1

bb.g:                                             ; preds = %stbtt__buf_get8.exit.i18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !325
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !323
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !56
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %stbtt__buf_get8.exit.i18.1

stbtt__buf_get8.exit.i18.1:                       ; preds = %bb.g, %stbtt__buf_get8.exit.i18
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %stbtt__buf_get8.exit.i18 ] ; 3 uses
  %.0.i.i19.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %stbtt__buf_get8.exit.i18 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit21.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !32

stbtt__buf_get.exit21.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i18.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit21.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbtt__buf_get.exit21.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %stbtt__buf_get.exit21.loopexit.unr-lcssa ] ; 4 uses
  %.056.i16.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i19.1, %stbtt__buf_get.exit21.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i16.epil.init, 8          ; 2 uses
  %.not.i.i17.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i17.epil, label %bb.h, label %stbtt__buf_get.exit21.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8, !tbaa !325
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !323
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !56
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %stbtt__buf_get.exit21.loopexit

stbtt__buf_get.exit21.loopexit:                   ; preds = %.lr.ph.i.epil.preheader, %bb.h, %stbtt__buf_get.exit21.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %stbtt__buf_get.exit21.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i19.lcssa = phi i32 [ %.0.i.i19.1, %stbtt__buf_get.exit21.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i19.lcssa, -1
  br label %stbtt__buf_get.exit21

stbtt__buf_get.exit21:                            ; preds = %stbtt__buf_get.exit21.loopexit, %stbtt__buf_get8.exit
  %i.bi = phi i32 [ %..i.i, %stbtt__buf_get8.exit ], [ %.lcssa, %stbtt__buf_get.exit21.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %stbtt__buf_get8.exit ], [ %i.bh, %stbtt__buf_get.exit21.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i22 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i22, ptr %i.a, align 8, !tbaa !323
  br label %bb.i

bb.i:                                             ; preds = %stbtt__buf_get.exit21, %stbtt__buf_get8.exit.i.1
  %i.bm = phi i32 [ %..i.i22, %stbtt__buf_get.exit21 ], [ %i.t, %stbtt__buf_get8.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %stbtt__buf_range.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !325
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = shl nuw nsw i64 %i.bt, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbtt__GetGlyphClass(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %.val63 = load i8, ptr %0, align 1, !tbaa !56
  %i.a = getelementptr i8, ptr %0, i64 1
  %.val64 = load i8, ptr %i.a, align 1, !tbaa !56
  %i.b = zext i8 %.val63 to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = zext i8 %.val64 to i16
  %i.e = or disjoint i16 %i.c, %i.d
  switch i16 %i.e, label %.thread [
    i16 1, label %bb.b
    i16 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val61 = load i8, ptr %i.f, align 1, !tbaa !56
  %i.g = getelementptr i8, ptr %0, i64 3
  %.val62 = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = zext i8 %.val61 to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = zext i8 %.val62 to i32
  %i.k = or disjoint i32 %i.i, %i.j               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not49 = icmp slt i32 %1, %i.k
  br i1 %.not49, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val59 = load i8, ptr %i.m, align 1, !tbaa !56
  %i.n = zext i8 %.val59 to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr i8, ptr %0, i64 5
  %.val60 = load i8, ptr %i.p, align 1, !tbaa !56
  %i.q = zext i8 %.val60 to i32
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = add nuw nsw i32 %i.r, %i.k
  %i.t = icmp samesign ult i32 %1, %i.s
  br i1 %i.t, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = sub nsw i32 %1, %i.k
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w ; 2 uses
  %.val57 = load i8, ptr %i.x, align 1, !tbaa !56
  %i.y = getelementptr i8, ptr %i.x, i64 1
  %.val58 = load i8, ptr %i.y, align 1, !tbaa !56
  %i.z = zext i8 %.val57 to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = zext i8 %.val58 to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val55 = load i8, ptr %i.ad, align 1, !tbaa !56
  %i.ae = getelementptr i8, ptr %0, i64 3
  %.val56 = load i8, ptr %i.ae, align 1, !tbaa !56
  %i.af = zext i8 %.val55 to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = zext i8 %.val56 to i32
  %i.ai = or disjoint i32 %i.ag, %i.ah            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not74 = icmp eq i32 %i.ai, 0
  br i1 %.not74, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ak = add nsw i32 %i.ai, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.076 = phi i32 [ %.2, %bb.i ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.03775 = phi i32 [ %.239, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.al = add nsw i32 %.076, %.03775
  %i.am = ashr i32 %i.al, 1                       ; 3 uses
  %i.an = mul nsw i32 %i.am, 6
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %i.ao ; 6 uses
  %.val53 = load i8, ptr %i.ap, align 1, !tbaa !56
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  %.val54 = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.ar = zext i8 %.val53 to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = zext i8 %.val54 to i32
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = icmp slt i32 %1, %i.au
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.aw = add nsw i32 %i.am, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %.val51 = load i8, ptr %i.ax, align 1, !tbaa !56
  %i.ay = zext i8 %.val51 to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = getelementptr i8, ptr %i.ap, i64 3
  %.val52 = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bb = zext i8 %.val52 to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = icmp samesign ugt i32 %1, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = add nsw i32 %i.am, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.239 = phi i32 [ %i.be, %bb.h ], [ %.03775, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.076, %bb.h ], [ %i.aw, %bb.f ] ; 2 uses
  %.not = icmp sgt i32 %.239, %.2
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !1243

bb.j:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.val = load i8, ptr %i.bf, align 1, !tbaa !56
  %i.bg = getelementptr i8, ptr %i.ap, i64 5
  %.val50 = load i8, ptr %i.bg, align 1, !tbaa !56
  %i.bh = zext i8 %.val to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = zext i8 %.val50 to i32
  %i.bk = or disjoint i32 %i.bi, %i.bj
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.e, %bb.b, %bb.c, %bb.j, %bb.d, %bb.a
  %.4 = phi i32 [ %i.bk, %bb.j ], [ -1, %bb.a ], [ %i.ac, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__tesselate_curve(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #41 {
bb.a:
  %i.a = icmp sgt i32 %9, 16
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1 ; 2 uses
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> splat (float 2.000000e+00), <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %6, i64 0
  %i.h = insertelement <2 x float> %i.g, float %7, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5767 = phi i32 [ %i.aa, %tailrecurse ], [ %9, %.lr.ph.preheader ]
  %.tr5164 = phi float [ %i.p, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr5063 = phi float [ %i.t, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.i = phi <2 x float> [ %i.ae, %tailrecurse ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi <2 x float> [ %i.af, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.k = phi <2 x float> [ %i.m, %tailrecurse ], [ %i.e, %.lr.ph.preheader ]
  %i.l = fadd <2 x float> %i.h, %i.j
  %i.m = fmul <2 x float> %i.l, splat (float 2.500000e-01) ; 4 uses
  %i.n = fadd float %7, %.tr5164
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = fadd float %6, %.tr5063
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.v)
  %i.x = fcmp ogt float %i.w, %8
  br i1 %i.x, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.y = fadd <2 x float> %i.k, %i.i
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = add nsw i32 %.tr5767, 1                 ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  tail call fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %.tr5063, float noundef %.tr5164, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.p, float noundef %8, i32 noundef %i.aa)
  %i.ad = fadd <2 x float> %i.h, %i.i
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 2.000000e+00), <2 x float> %i.m)
  %exitcond = icmp eq i32 %i.aa, 17
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %1, align 4, !tbaa !55    ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %stbtt__add_point.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  store float %6, ptr %i.ai, align 4, !tbaa !666
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %7, ptr %i.aj, align 4, !tbaa !292
  br label %stbtt__add_point.exit

stbtt__add_point.exit:                            ; preds = %bb.b, %bb.c
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %stbtt__add_point.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__tesselate_cubic(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #41 {
bb.a:
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %exitcond108 = icmp sgt i32 %11, 16
  br i1 %exitcond108, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1
  %i.c = insertelement <2 x float> poison, float %6, i64 0
  %i.d = insertelement <2 x float> %i.c, float %7, i64 1
  %i.e = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
  %i.g = insertelement <2 x float> poison, float %3, i64 0
  %i.h = insertelement <2 x float> %i.g, float %5, i64 1
  %i.i = insertelement <2 x float> poison, float %5, i64 0
  %i.j = insertelement <2 x float> %i.i, float %7, i64 1
  %i.k = insertelement <2 x float> %i.e, float %4, i64 1
  %i.l = insertelement <2 x float> %i.a, float %6, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr106115 = phi i32 [ %i.bi, %tailrecurse ], [ %11, %.lr.ph.preheader ]
  %.tr102114 = phi float [ %i.ay, %tailrecurse ], [ %7, %.lr.ph.preheader ] ; 2 uses
  %.tr101113 = phi float [ %i.az, %tailrecurse ], [ %6, %.lr.ph.preheader ] ; 2 uses
  %.tr98110 = phi float [ %i.bg, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr97109 = phi float [ %i.bh, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi <2 x float> [ %i.bn, %tailrecurse ], [ %i.l, %.lr.ph.preheader ]
  %i.n = phi <2 x float> [ %i.bo, %tailrecurse ], [ %i.k, %.lr.ph.preheader ]
  %i.o = phi <2 x float> [ %i.bp, %tailrecurse ], [ %i.j, %.lr.ph.preheader ]
  %i.p = phi <2 x float> [ %i.br, %tailrecurse ], [ %i.h, %.lr.ph.preheader ]
  %i.q = phi <2 x float> [ %i.bf, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.r = phi <2 x float> [ %i.bd, %tailrecurse ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi <2 x float> [ %i.ax, %tailrecurse ], [ %i.d, %.lr.ph.preheader ]
  %i.t = fsub float %8, %.tr97109                 ; 2 uses
  %i.u = fsub float %9, %.tr98110                 ; 2 uses
  %i.v = fmul float %i.u, %i.u
end_hunk_3
