Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@theora_decode_tables:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.preheader194, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader194 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !50   ; 3 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !49
  %i.z = load ptr, ptr %1, align 8, !tbaa !46
  %i.aa = lshr i32 %i.x, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !51
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = and i32 %i.x, 7
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = lshr i32 %i.ag, %i.v
  %i.ai = add i32 %i.x, %i.s
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ai)
  store i32 %i.aj, ptr %i.h, align 8, !tbaa !50
  %i.ak = trunc nuw nsw i32 %i.ah to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !196

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.am = load i32, ptr %i.h, align 8, !tbaa !50  ; 3 uses
  %i.an = load i32, ptr %i.j, align 8, !tbaa !49
  %i.ao = load ptr, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.ap = lshr i32 %i.am, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !51
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = and i32 %i.am, 7
  %i.av = shl i32 %i.at, %i.au
  %i.aw = lshr i32 %i.av, 28
  %i.ax = add i32 %i.am, 4
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.an, i32 %i.ax)
  store i32 %i.ay, ptr %i.h, align 8, !tbaa !50
  %i.az = add nuw nsw i32 %i.aw, 1
  br label %.thread

.thread:                                          ; preds = %bb.b, %.loopexit
  %i.ba = phi ptr [ %i.ao, %.loopexit ], [ %.pre244, %bb.b ] ; 4 uses
  %.0138 = phi i32 [ %i.az, %.loopexit ], [ 16, %bb.b ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.bd = sub nuw nsw i32 32, %.0138
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.pre245 = load i32, ptr %i.bc, align 8, !tbaa !49 ; 3 uses
  %.promoted.pre = load i32, ptr %i.bb, align 8, !tbaa !50 ; 4 uses
  br i1 %i.g, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.thread, %bb.f
  %indvars.iv213 = phi i64 [ 0, %.thread ], [ %indvars.iv.next214, %bb.f ] ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 8, !tbaa !50 ; 3 uses
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !49
  %i.bh = lshr i32 %i.bf, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !51
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = and i32 %i.bf, 7
  %i.bn = shl i32 %i.bl, %i.bm
  %i.bo = lshr i32 %i.bn, %i.bd
  %i.bp = add i32 %i.bf, %.0138
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bp)
  store i32 %i.bq, ptr %i.bb, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv213
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !29
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, 64
  br i1 %exitcond216.not, label %bb.e, label %bb.f, !llvm.loop !197

bb.g:                                             ; preds = %bb.e
  %i.bs = lshr i32 %.promoted.pre, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !51
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %.promoted.pre, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = lshr i32 %i.by, 28
  %i.ca = add i32 %.promoted.pre, 4
  %i.cb = tail call i32 @llvm.umin.i32(i32 %.pre245, i32 %i.ca) ; 2 uses
  store i32 %i.cb, ptr %i.bb, align 8, !tbaa !50
  %i.cc = add nuw nsw i32 %i.bz, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.promoted = phi i32 [ %i.cb, %bb.g ], [ %.promoted.pre, %bb.e ]
  %.1139 = phi i32 [ %i.cc, %bb.g ], [ 16, %bb.e ] ; 2 uses
  %i.cd = sub nuw nsw i32 32, %.1139
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  br i1 %i.g, label %bb.k, label %.preheader193

bb.j:                                             ; preds = %bb.h, %bb.j
  %indvars.iv217 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next218, %bb.j ] ; 3 uses
  %i.cg = phi i32 [ %.promoted, %bb.h ], [ %i.cq, %bb.j ] ; 3 uses
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !51
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = and i32 %i.cg, 7
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = lshr i32 %i.cn, %i.cd
  %i.cp = add i32 %i.cg, %.1139
  %i.cq = tail call i32 @llvm.umin.i32(i32 %.pre245, i32 %i.cp) ; 5 uses
  store i32 %i.cq, ptr %i.bb, align 8, !tbaa !50
  %i.cr = trunc nuw i32 %i.co to i16              ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv217
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !68
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv217
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !68
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next218, 64
  br i1 %exitcond220.not, label %bb.i, label %bb.j, !llvm.loop !198

bb.k:                                             ; preds = %bb.i
  %i.cu = lshr i32 %i.cq, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !51
  %i.cy = tail call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.cz = and i32 %i.cq, 7
  %i.da = shl i32 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i32 %i.da, 23
  %i.dc = add i32 %i.cq, 9
  %i.dd = tail call i32 @llvm.umin.i32(i32 %.pre245, i32 %i.dc)
  store i32 %i.dd, ptr %i.bb, align 8, !tbaa !50
  %i.de = add nuw nsw i32 %i.db, 1
  %i.df = icmp ugt i32 %i.da, -1073741825
  br i1 %i.df, label %bb.l, label %.preheader193

.preheader193:                                    ; preds = %bb.i, %bb.k
  %.0137254 = phi i32 [ %i.de, %bb.k ], [ 3, %bb.i ] ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %wide.trip.count = zext nneg i32 %.0137254 to i64
  br label %.preheader192

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #11
  br label %.thread184

.preheader192:                                    ; preds = %.preheader193, %bb.m
  %indvars.iv225 = phi i64 [ 0, %.preheader193 ], [ %indvars.iv.next226, %bb.m ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.dg, i64 %indvars.iv225
  br label %bb.n

.preheader191:                                    ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 26080 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 26086 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 26470 ; 4 uses
  %i.dl = add nsw i32 %.0137254, -1               ; 2 uses
  %.not11.i158 = icmp slt i32 %.0137254, 257      ; 2 uses
  %i.dm = lshr i32 %i.dl, 8
  %.110.i159 = select i1 %.not11.i158, i32 %i.dl, i32 %i.dm
  %.1.i160 = select i1 %.not11.i158, i32 0, i32 8 ; 2 uses
  %i.dn = zext nneg i32 %.110.i159 to i64
  %i.do = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dn ; 2 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count
  br i1 %exitcond228.not, label %.preheader191, label %.preheader192, !llvm.loop !199

bb.n:                                             ; preds = %.preheader192, %bb.n
  %indvars.iv221 = phi i64 [ 0, %.preheader192 ], [ %indvars.iv.next222, %bb.n ] ; 2 uses
  %i.dp = load i32, ptr %i.bb, align 8, !tbaa !50 ; 3 uses
  %i.dq = load i32, ptr %i.bc, align 8, !tbaa !49
  %i.dr = load ptr, ptr %1, align 8, !tbaa !46
  %i.ds = lshr i32 %i.dp, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 1, !tbaa !51
  %i.dw = tail call i32 @llvm.bswap.i32(i32 %i.dv)
  %i.dx = and i32 %i.dp, 7
  %i.dy = shl i32 %i.dw, %i.dx
  %i.dz = lshr i32 %i.dy, 24
  %i.ea = add i32 %i.dp, 8
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.ea)
  store i32 %i.eb, ptr %i.bb, align 8, !tbaa !50
  %i.ec = trunc nuw i32 %i.dz to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv221
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !51
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next222, 64
  br i1 %exitcond224.not, label %bb.m, label %bb.n, !llvm.loop !200

bb.o:                                             ; preds = %.preheader191, %bb.v
  %indvars.iv232 = phi i64 [ 0, %.preheader191 ], [ %indvars.iv.next233, %bb.v ] ; 11 uses
  %indvars.iv232.masked = and i64 %indvars.iv232, 4294967295
  %or.cond.not = icmp eq i64 %indvars.iv232.masked, 0
  %.pre247 = load i32, ptr %i.bb, align 8, !tbaa !50 ; 5 uses
  %.pre248 = load i32, ptr %i.bc, align 8, !tbaa !49 ; 3 uses
  %.pre249 = load ptr, ptr %1, align 8, !tbaa !46 ; 3 uses
  br i1 %or.cond.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = lshr i32 %.pre247, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre249, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !51
  %i.ei = icmp slt i32 %.pre247, %.pre248
  %i.ej = zext i1 %i.ei to i32
  %spec.select.i161 = add i32 %.pre247, %i.ej     ; 2 uses
  %i.ek = zext i8 %i.eh to i32
  %i.el = and i32 %.pre247, 7
  store i32 %spec.select.i161, ptr %i.bb, align 8, !tbaa !50
  %i.em = lshr exact i32 128, %i.el
  %i.en = and i32 %i.em, %i.ek
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ep = trunc i64 %indvars.iv232 to i32
  %i.eq = add i32 %i.ep, -1
  %i.er = sdiv i32 %i.eq, 3
  %.cmp = icmp eq i64 %indvars.iv232, 0
  %i.es = add nuw i64 %indvars.iv232, 4294967295
  %i.et = zext nneg i32 %i.er to i64              ; 3 uses
  %i.eu = and i64 %i.es, 4294967295
  %2 = select i1 %.cmp, i64 2, i64 %i.eu          ; 3 uses
  %i.ev = getelementptr inbounds nuw [3 x i8], ptr %i.di, i64 %i.et
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv232
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !51
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.dj, i64 %indvars.iv232
  %i.fa = getelementptr inbounds nuw [192 x i8], ptr %i.dj, i64 %i.et
  %i.fb = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.ez, ptr noundef nonnull align 2 dereferenceable(64) %i.fb, i64 64, i1 false)
  %i.fc = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %indvars.iv232
  %i.fd = getelementptr inbounds nuw [384 x i8], ptr %i.dk, i64 %i.et
  %i.fe = getelementptr inbounds nuw [128 x i8], ptr %i.fd, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.fc, ptr noundef nonnull align 2 dereferenceable(128) %i.fe, i64 128, i1 false)
  br label %bb.v

.critedge:                                        ; preds = %bb.o, %bb.p
  %i.ff = phi i32 [ %.pre247, %bb.o ], [ %spec.select.i161, %bb.p ] ; 3 uses
  %i.fg = load i8, ptr %i.do, align 1, !tbaa !51
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nuw nsw i32 %.1.i160, %i.fh         ; 2 uses
  %i.fj = sub nsw i32 31, %i.fi                   ; 2 uses
  %invariant.op = add nuw nsw i32 %i.fi, 1        ; 2 uses
  %i.fk = lshr i32 %i.ff, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre249, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 1, !tbaa !51
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %i.fn)
  %i.fp = and i32 %i.ff, 7
  %i.fq = shl i32 %i.fo, %i.fp
  %i.fr = lshr i32 %i.fq, %i.fj                   ; 2 uses
  %.reass202 = add i32 %i.ff, %invariant.op
  %i.fs = tail call i32 @llvm.umin.i32(i32 %.pre248, i32 %.reass202) ; 2 uses
  store i32 %i.fs, ptr %i.bb, align 8, !tbaa !50
  %.not154203 = icmp slt i32 %i.fr, %.0137254
  br i1 %.not154203, label %.lr.ph, label %.thread163

.lr.ph:                                           ; preds = %.critedge
  %i.ft = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %indvars.iv232
  %i.fu = getelementptr inbounds nuw [64 x i8], ptr %i.dj, i64 %indvars.iv232
  br label %bb.r

.thread163:                                       ; preds = %.critedge, %.critedge.1, %bb.s, %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18) #11
  br label %.thread184

bb.r:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv229 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next230, %bb.s ] ; 4 uses
  %i.fv = phi i32 [ %i.fs, %.lr.ph ], [ %i.hm, %bb.s ] ; 3 uses
  %i.fw = phi i32 [ %i.fr, %.lr.ph ], [ %i.hl, %bb.s ]
  %i.fx = phi ptr [ %.pre249, %.lr.ph ], [ %i.hd, %bb.s ]
  %i.fy = phi i32 [ %.pre248, %.lr.ph ], [ %i.hc, %bb.s ]
  %.0122205 = phi i32 [ 0, %.lr.ph ], [ %i.ha, %bb.s ] ; 5 uses
  %i.fz = trunc i32 %i.fw to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv229
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !68
  %i.gb = icmp sgt i32 %.0122205, 62
  br i1 %i.gb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gc = sub nsw i32 63, %.0122205               ; 3 uses
  %.not.i = icmp samesign ult i32 %i.gc, 65536    ; 2 uses
  %i.gd = lshr i32 %i.gc, 16
  %spec.select.i = select i1 %.not.i, i32 %i.gc, i32 %i.gd ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.ge = lshr i32 %spec.select.i, 8
  %i.gf = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.ge
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.gf
  %i.gg = zext nneg i32 %.110.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !51
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nuw nsw i32 %.1.i, %i.gj            ; 2 uses
  %i.gl = lshr i32 %i.fv, 3
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 1, !tbaa !51
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gq = and i32 %i.fv, 7
  %i.gr = shl i32 %i.gp, %i.gq
  %i.gs = sub nsw i32 31, %i.gk
  %i.gt = lshr i32 %i.gr, %i.gs
  %i.gu = add i32 %i.fv, 1
  %i.gv = add i32 %i.gu, %i.gk
  %i.gw = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 %i.gv)
  store i32 %i.gw, ptr %i.bb, align 8, !tbaa !50
  %i.gx = add i32 %i.gt, 1                        ; 2 uses
  %i.gy = trunc i32 %i.gx to i8
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv229
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !51
  %i.ha = add nsw i32 %i.gx, %.0122205
  %i.hb = load i32, ptr %i.bb, align 8, !tbaa !50 ; 3 uses
  %i.hc = load i32, ptr %i.bc, align 8, !tbaa !49 ; 2 uses
  %i.hd = load ptr, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.he = lshr i32 %i.hb, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 1, !tbaa !51
  %i.hi = tail call i32 @llvm.bswap.i32(i32 %i.hh)
  %i.hj = and i32 %i.hb, 7
  %i.hk = shl i32 %i.hi, %i.hj
  %i.hl = lshr i32 %i.hk, %i.fj                   ; 2 uses
  %.reass = add i32 %i.hb, %invariant.op
  %i.hm = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 %.reass) ; 2 uses
  store i32 %i.hm, ptr %i.bb, align 8, !tbaa !50
  %.not154 = icmp slt i32 %i.hl, %.0137254
  br i1 %.not154, label %bb.r, label %.thread163

bb.t:                                             ; preds = %bb.r
  %.not189 = icmp eq i32 %.0122205, 63
  br i1 %.not189, label %bb.u, label %.loopexit264

.loopexit264:                                     ; preds = %bb.ac, %bb.t
  %.0122205.lcssa.lcssa = phi i32 [ %.0122205, %bb.t ], [ %.0122205.1, %bb.ac ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.0122205.lcssa.lcssa) #11
  br label %.thread184

bb.u:                                             ; preds = %bb.t
  %i.hn = trunc i64 %indvars.iv229 to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv232
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !51
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, 3
  br i1 %exitcond236.not, label %.preheader190.1, label %bb.o, !llvm.loop !201

.preheader190.1:                                  ; preds = %bb.v
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 26083 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 26278 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 26854 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ae, %.preheader190.1
  %indvars.iv232.1 = phi i64 [ 0, %.preheader190.1 ], [ %indvars.iv.next233.1, %bb.ae ] ; 11 uses
  %.pre248.1 = load i32, ptr %i.bc, align 8, !tbaa !49 ; 4 uses
  %.pre249.1 = load ptr, ptr %1, align 8, !tbaa !46 ; 4 uses
  %.pre247.1 = load i32, ptr %i.bb, align 8, !tbaa !50 ; 4 uses
  %i.hs = lshr i32 %.pre247.1, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %.pre249.1, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !51
  %i.hw = icmp slt i32 %.pre247.1, %.pre248.1
  %i.hx = zext i1 %i.hw to i32
  %spec.select.i161.1 = add i32 %.pre247.1, %i.hx ; 8 uses
  %i.hy = zext i8 %i.hv to i32
  %i.hz = and i32 %.pre247.1, 7
  store i32 %spec.select.i161.1, ptr %i.bb, align 8, !tbaa !50
  %i.ia = lshr exact i32 128, %i.hz
  %i.ib = and i32 %i.ia, %i.hy
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.x, label %.critedge.1

bb.x:                                             ; preds = %bb.w
  %i.id = lshr i32 %spec.select.i161.1, 3
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %.pre249.1, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !51
  %i.ih = icmp slt i32 %spec.select.i161.1, %.pre248.1
  %i.ii = zext i1 %i.ih to i32
  %spec.select.i162.1 = add i32 %spec.select.i161.1, %i.ii
  %i.ij = zext i8 %i.ig to i32
  %i.ik = and i32 %spec.select.i161.1, 7
  store i32 %spec.select.i162.1, ptr %i.bb, align 8, !tbaa !50
  %i.il = lshr exact i32 128, %i.ik
  %i.im = and i32 %i.il, %i.ij
  %.not153.1 = icmp eq i32 %i.im, 0
  br i1 %.not153.1, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.in = trunc i64 %indvars.iv232.1 to i32
  %i.io = add i32 %i.in, 2
  %i.ip = sdiv i32 %i.io, 3
  %.cmp.1 = icmp eq i64 %indvars.iv232.1, 0
  %i.iq = add nuw i64 %indvars.iv232.1, 4294967295
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = and i64 %i.iq, 4294967295
  %i.it = select i1 %.cmp.1, i64 2, i64 %i.is
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0126.1 = phi i64 [ %i.ir, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %.0125.1 = phi i64 [ %i.it, %bb.y ], [ %indvars.iv232.1, %bb.x ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [3 x i8], ptr %i.di, i64 %.0126.1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.0125.1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hp, i64 %indvars.iv232.1
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !51
  %i.iy = getelementptr inbounds nuw [64 x i8], ptr %i.hq, i64 %indvars.iv232.1
  %i.iz = getelementptr inbounds nuw [192 x i8], ptr %i.dj, i64 %.0126.1
  %i.ja = getelementptr inbounds nuw [64 x i8], ptr %i.iz, i64 %.0125.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.iy, ptr noundef nonnull align 2 dereferenceable(64) %i.ja, i64 64, i1 false)
  %i.jb = getelementptr inbounds nuw [128 x i8], ptr %i.hr, i64 %indvars.iv232.1
  %i.jc = getelementptr inbounds nuw [384 x i8], ptr %i.dk, i64 %.0126.1
  %i.jd = getelementptr inbounds nuw [128 x i8], ptr %i.jc, i64 %.0125.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.jb, ptr noundef nonnull align 2 dereferenceable(128) %i.jd, i64 128, i1 false)
  br label %bb.ae

.critedge.1:                                      ; preds = %bb.w
  %i.je = load i8, ptr %i.do, align 1, !tbaa !51
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nuw nsw i32 %.1.i160, %i.jf         ; 2 uses
  %i.jh = sub nsw i32 31, %i.jg                   ; 2 uses
  %invariant.op.1 = add nuw nsw i32 %i.jg, 1      ; 2 uses
  %i.ji = lshr i32 %spec.select.i161.1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre249.1, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 1, !tbaa !51
  %i.jm = tail call i32 @llvm.bswap.i32(i32 %i.jl)
end_hunk_0
