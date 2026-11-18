Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/hrss?download=true
inline.NumInlined: 316
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@poly3_mul_aux:bb.a
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.lr.ph.i91.preheader, label %.lr.ph.i.preheader404

.lr.ph.i.preheader404:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader404, %.lr.ph.i
  %.01.i = phi i64 [ %i.dn, %.lr.ph.i ], [ %.01.i.ph, %.lr.ph.i.preheader404 ] ; 7 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %.01.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %.01.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.01.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !17 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !17 ; 2 uses
  %i.dh = xor i64 %i.dg, %i.da                    ; 2 uses
  %i.di = xor i64 %i.de, %i.dc
  %i.dj = and i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.cx, align 8, !tbaa !17
  %i.dk = xor i64 %i.dg, %i.dc
  %i.dl = xor i64 %i.dh, %i.de
  %i.dm = or i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.cy, align 8, !tbaa !17
  %i.dn = add nuw nsw i64 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.aw
  br i1 %exitcond.not.i, label %.lr.ph.i91.preheader, label %.lr.ph.i, !llvm.loop !28

.lr.ph.i91.preheader:                             ; preds = %.lr.ph.i, %middle.block
  %min.iters.check202 = icmp ult i64 %4, 72
  br i1 %min.iters.check202, label %.lr.ph.i91.preheader403, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i91.preheader
  %i.do = sub i64 %i.bo, %i.bt
  %diff.check204 = icmp ugt i64 %i.do, -16
  %i.dp = shl i64 %4, 3                           ; 2 uses
  %i.dq = shl i64 %i.aw, 4                        ; 4 uses
  %i.dr = add i64 %i.dp, %i.bo                    ; 2 uses
  %i.ds = sub i64 %i.dr, %i.bg                    ; 2 uses
  %i.dt = sub i64 %i.dq, %i.ds
  %diff.check205 = icmp ugt i64 %i.dt, -16
  %conflict.rdx206 = or i1 %diff.check204, %diff.check205
  %i.du = shl i64 %i.aw, 3                        ; 4 uses
  %i.dv = sub i64 %i.du, %i.ds
  %diff.check207 = icmp ugt i64 %i.dv, -16
  %conflict.rdx208 = or i1 %conflict.rdx206, %diff.check207
  %i.dw = sub i64 %i.dr, %i.bl                    ; 2 uses
  %i.dx = sub i64 %i.dq, %i.dw
  %diff.check209 = icmp ugt i64 %i.dx, -16
  %conflict.rdx210 = or i1 %conflict.rdx208, %diff.check209
  %i.dy = sub i64 %i.du, %i.dw
  %diff.check211 = icmp ugt i64 %i.dy, -16
  %conflict.rdx212 = or i1 %conflict.rdx210, %diff.check211
  %i.dz = add i64 %i.dp, %i.bt                    ; 2 uses
  %i.ea = sub i64 %i.dz, %i.bg                    ; 2 uses
  %i.eb = sub i64 %i.dq, %i.ea
  %diff.check213 = icmp ugt i64 %i.eb, -16
  %conflict.rdx214 = or i1 %conflict.rdx212, %diff.check213
  %i.ec = sub i64 %i.du, %i.ea
  %diff.check215 = icmp ugt i64 %i.ec, -16
  %conflict.rdx216 = or i1 %conflict.rdx214, %diff.check215
  %i.ed = sub i64 %i.dz, %i.bl                    ; 2 uses
  %i.ee = sub i64 %i.dq, %i.ed
  %diff.check217 = icmp ugt i64 %i.ee, -16
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  %i.ef = sub i64 %i.du, %i.ed
  %diff.check219 = icmp ugt i64 %i.ef, -16
  %conflict.rdx220 = or i1 %conflict.rdx218, %diff.check219
  br i1 %conflict.rdx220, label %.lr.ph.i91.preheader403, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck203
  %n.vec222 = and i64 %i.aw, 9223372036854775806  ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body223 ] ; 7 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index224
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index224
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index224
  %wide.load225 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index224
  %wide.load226 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !17 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index224
  %wide.load227 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !17 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index224
  %wide.load228 = load <2 x i64>, ptr %i.el, align 8, !tbaa !17 ; 2 uses
  %i.em = xor <2 x i64> %wide.load228, %wide.load225 ; 2 uses
  %i.en = xor <2 x i64> %wide.load227, %wide.load226
  %i.eo = and <2 x i64> %i.em, %i.en
  store <2 x i64> %i.eo, ptr %i.eg, align 8, !tbaa !17
  %i.ep = xor <2 x i64> %wide.load228, %wide.load226
  %i.eq = xor <2 x i64> %i.em, %wide.load227
  %i.er = or <2 x i64> %i.eq, %i.ep
  store <2 x i64> %i.er, ptr %i.eh, align 8, !tbaa !17
  %index.next229 = add nuw i64 %index224, 2       ; 2 uses
  %i.es = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.es, label %middle.block230, label %vector.body223, !llvm.loop !29

middle.block230:                                  ; preds = %vector.body223
  %cmp.n231 = icmp eq i64 %i.aw, %n.vec222
  br i1 %cmp.n231, label %poly3_span_add.exit94, label %.lr.ph.i91.preheader403

.lr.ph.i91.preheader403:                          ; preds = %vector.memcheck203, %.lr.ph.i91.preheader, %middle.block230
  %.01.i92.ph = phi i64 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph.i91.preheader ], [ %n.vec222, %middle.block230 ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader403, %.lr.ph.i91
  %.01.i92 = phi i64 [ %i.fj, %.lr.ph.i91 ], [ %.01.i92.ph, %.lr.ph.i91.preheader403 ] ; 7 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.01.i92
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.01.i92
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.01.i92
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !17
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.01.i92
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !17 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.01.i92
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !17 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.01.i92
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !17 ; 2 uses
  %i.fd = xor i64 %i.fc, %i.ew                    ; 2 uses
  %i.fe = xor i64 %i.fa, %i.ey
  %i.ff = and i64 %i.fd, %i.fe
  store i64 %i.ff, ptr %i.et, align 8, !tbaa !17
  %i.fg = xor i64 %i.fc, %i.ey
  %i.fh = xor i64 %i.fd, %i.fa
  %i.fi = or i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.eu, align 8, !tbaa !17
  %i.fj = add nuw nsw i64 %.01.i92, 1             ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %i.fj, %i.aw
  br i1 %exitcond.not.i93, label %poly3_span_add.exit94, label %.lr.ph.i91, !llvm.loop !30

poly3_span_add.exit94:                            ; preds = %.lr.ph.i91, %middle.block230, %bb.c
  %.not = icmp eq i64 %i.ax, %i.aw
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %poly3_span_add.exit94
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %i.aw
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !17
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.aw
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !17
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %i.aw
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.aw
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %4
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !17
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.aw
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !17
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %4
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %poly3_span_add.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.fw = load ptr, ptr %1, align 8, !tbaa !14
  %i.fx = shl i64 %i.ax, 1                        ; 9 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fx
  store ptr %i.fy, ptr %9, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !15
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fx
  store ptr %i.gc, ptr %i.fz, align 8, !tbaa !15
  %i.gd = getelementptr [8 x i8], ptr %i.bn, i64 %i.aw ; 5 uses
  %i.ge = getelementptr [8 x i8], ptr %i.bs, i64 %i.aw ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.gf = and i64 %4, -2                          ; 5 uses
  %i.gg = getelementptr [8 x i8], ptr %i.bn, i64 %i.gf ; 5 uses
  store ptr %i.gg, ptr %10, align 8, !tbaa !14
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gi = getelementptr [8 x i8], ptr %i.bs, i64 %i.gf ; 5 uses
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !15
  call fastcc void @poly3_mul_aux(ptr noundef %1, ptr noundef %9, ptr noundef %7, ptr noundef %8, i64 noundef %i.ax)
  call fastcc void @poly3_mul_aux(ptr noundef %10, ptr noundef %9, ptr noundef %5, ptr noundef %6, i64 noundef %i.ax)
  call fastcc void @poly3_mul_aux(ptr noundef %0, ptr noundef %9, ptr noundef %2, ptr noundef %3, i64 noundef %i.aw)
  %.not.i95 = icmp eq i64 %i.gf, 0
  br i1 %.not.i95, label %poly3_span_sub.exit, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.e
  %i.gj = load ptr, ptr %1, align 8, !tbaa !14    ; 6 uses
  %i.gk = load ptr, ptr %i.ga, align 8, !tbaa !15 ; 6 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.gm = load ptr, ptr %i.br, align 8, !tbaa !15 ; 5 uses
  %min.iters.check254 = icmp ult i64 %4, 16
  br i1 %min.iters.check254, label %scalar.ph253.preheader, label %vector.memcheck255

scalar.ph253.preheader:                           ; preds = %vector.memcheck255, %.lr.ph.i96
  br label %scalar.ph253

vector.memcheck255:                               ; preds = %.lr.ph.i96
  %i.gn = shl i64 %i.aw, 4                        ; 4 uses
  %i.go = getelementptr i8, ptr %i.gj, i64 %i.gn  ; 3 uses
  %i.gp = getelementptr i8, ptr %i.gk, i64 %i.gn  ; 3 uses
  %bound0 = icmp ult ptr %i.gj, %i.gp
  %bound0.a = icmp ult ptr %i.gk, %i.go
  %found.conflict = and i1 %bound0, %bound0.a
  %11 = getelementptr i8, ptr %i.gl, i64 %i.gn    ; 2 uses
  %bound0256 = icmp ult ptr %i.gj, %11
  %bound1257 = icmp ult ptr %i.gl, %i.go
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict, %found.conflict258
  %12 = getelementptr i8, ptr %i.gm, i64 %i.gn    ; 2 uses
  %bound0260 = icmp ult ptr %i.gj, %12
  %bound1261 = icmp ult ptr %i.gm, %i.go
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %i.gk, %11
  %bound1265 = icmp ult ptr %i.gl, %i.gp
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %i.gk, %12
  %bound1269 = icmp ult ptr %i.gm, %i.gp
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %scalar.ph253.preheader, label %vector.body273

vector.body273:                                   ; preds = %vector.memcheck255, %vector.body273
  %index274 = phi i64 [ %index.next279, %vector.body273 ], [ 0, %vector.memcheck255 ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %index274 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index274 ; 2 uses
  %wide.load275 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !17, !alias.scope !55, !noalias !56 ; 2 uses
  %wide.load276 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !17, !alias.scope !57, !noalias !58
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %index274
  %wide.load277 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !17, !alias.scope !59 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %index274
  %wide.load278 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !17, !alias.scope !60 ; 2 uses
  %i.gu = xor <2 x i64> %wide.load278, %wide.load276 ; 2 uses
  %i.gv = xor <2 x i64> %wide.load278, %wide.load275
  %i.gw = xor <2 x i64> %i.gu, %wide.load277
  %i.gx = and <2 x i64> %i.gw, %i.gv
  store <2 x i64> %i.gx, ptr %i.gq, align 8, !tbaa !17, !alias.scope !55, !noalias !56
  %i.gy = xor <2 x i64> %wide.load277, %wide.load275
  %i.gz = or <2 x i64> %i.gu, %i.gy
  store <2 x i64> %i.gz, ptr %i.gr, align 8, !tbaa !17, !alias.scope !57, !noalias !58
  %index.next279 = add nuw i64 %index274, 2       ; 2 uses
  %i.ha = icmp eq i64 %index.next279, %i.gf
  br i1 %i.ha, label %poly3_span_sub.exit, label %vector.body273, !llvm.loop !36

scalar.ph253:                                     ; preds = %scalar.ph253.preheader, %scalar.ph253
  %.014.i = phi i64 [ %i.hp, %scalar.ph253 ], [ 0, %scalar.ph253.preheader ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.014.i ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.014.i ; 2 uses
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !17 ; 2 uses
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !17
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.014.i
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !17 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.014.i
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !17 ; 2 uses
  %i.hj = xor i64 %i.hi, %i.he                    ; 2 uses
  %i.hk = xor i64 %i.hi, %i.hd
  %i.hl = xor i64 %i.hj, %i.hg
  %i.hm = and i64 %i.hl, %i.hk
  store i64 %i.hm, ptr %i.hb, align 8, !tbaa !17
  %i.hn = xor i64 %i.hg, %i.hd
  %i.ho = or i64 %i.hj, %i.hn
  store i64 %i.ho, ptr %i.hc, align 8, !tbaa !17
  %i.hp = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %i.hp, %i.gf
  br i1 %exitcond.not.i97, label %poly3_span_sub.exit, label %scalar.ph253, !llvm.loop !37

poly3_span_sub.exit:                              ; preds = %vector.body273, %scalar.ph253, %bb.e
  %.not.i98 = icmp eq i64 %i.fx, 0
  br i1 %.not.i98, label %poly3_span_add.exit107, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %poly3_span_sub.exit
  %i.hq = load ptr, ptr %1, align 8, !tbaa !14    ; 11 uses
  %i.hr = load ptr, ptr %i.ga, align 8, !tbaa !15 ; 11 uses
  %min.iters.check306 = icmp ult i64 %i.fx, 16
  br i1 %min.iters.check306, label %scalar.ph305.preheader, label %vector.memcheck307

scalar.ph305.preheader:                           ; preds = %vector.memcheck307, %.lr.ph.i99
  br label %scalar.ph305

vector.memcheck307:                               ; preds = %.lr.ph.i99
  %i.hs = shl i64 %4, 4                           ; 2 uses
  %i.ht = sub i64 %4, %i.aw
  %i.hu = shl i64 %i.ht, 4                        ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hq, i64 %i.hu  ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hr, i64 %i.hu  ; 3 uses
  %bound0308 = icmp ult ptr %i.hq, %i.hw
  %bound0308.a = icmp ult ptr %i.hr, %i.hv
  %found.conflict310 = and i1 %bound0308, %bound0308.a
  %13 = getelementptr i8, ptr %i.bn, i64 %i.hs    ; 2 uses
  %bound0311 = icmp ult ptr %i.hq, %13
  %bound1312 = icmp ult ptr %i.gg, %i.hv
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx314 = or i1 %found.conflict310, %found.conflict313
  %14 = getelementptr i8, ptr %i.bs, i64 %i.hs    ; 2 uses
  %bound0315 = icmp ult ptr %i.hq, %14
  %bound1316 = icmp ult ptr %i.gi, %i.hv
  %found.conflict317 = and i1 %bound0315, %bound1316
  %conflict.rdx318 = or i1 %conflict.rdx314, %found.conflict317
  %bound0319 = icmp ult ptr %i.hr, %13
  %bound1320 = icmp ult ptr %i.gg, %i.hw
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %conflict.rdx318, %found.conflict321
  %bound0323 = icmp ult ptr %i.hr, %14
  %bound1324 = icmp ult ptr %i.gi, %i.hw
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  br i1 %conflict.rdx326, label %scalar.ph305.preheader, label %vector.body329

vector.body329:                                   ; preds = %vector.memcheck307, %vector.body329
  %index330 = phi i64 [ %index.next335, %vector.body329 ], [ 0, %vector.memcheck307 ] ; 5 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %index330 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %index330 ; 2 uses
  %wide.load331 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !17, !alias.scope !61, !noalias !62 ; 2 uses
  %wide.load332 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !17, !alias.scope !63, !noalias !64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index330
  %wide.load333 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !17, !alias.scope !65 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %index330
  %wide.load334 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !17, !alias.scope !66 ; 2 uses
  %i.ib = xor <2 x i64> %wide.load334, %wide.load332 ; 2 uses
  %i.ic = xor <2 x i64> %wide.load334, %wide.load331
  %i.id = xor <2 x i64> %i.ib, %wide.load333
  %i.ie = and <2 x i64> %i.id, %i.ic
  store <2 x i64> %i.ie, ptr %i.hx, align 8, !tbaa !17, !alias.scope !61, !noalias !62
  %i.if = xor <2 x i64> %wide.load333, %wide.load331
  %i.ig = or <2 x i64> %i.ib, %i.if
  store <2 x i64> %i.ig, ptr %i.hy, align 8, !tbaa !17, !alias.scope !63, !noalias !64
  %index.next335 = add nuw i64 %index330, 2       ; 2 uses
  %i.ih = icmp eq i64 %index.next335, %i.fx
  br i1 %i.ih, label %.lr.ph.i104.preheader, label %vector.body329, !llvm.loop !43

scalar.ph305:                                     ; preds = %scalar.ph305.preheader, %scalar.ph305
  %.014.i100 = phi i64 [ %i.iw, %scalar.ph305 ], [ 0, %scalar.ph305.preheader ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.014.i100 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.014.i100 ; 2 uses
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !17 ; 2 uses
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !17
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.014.i100
  %i.in = load i64, ptr %i.im, align 8, !tbaa !17 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.014.i100
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !17 ; 2 uses
  %i.iq = xor i64 %i.ip, %i.il                    ; 2 uses
  %i.ir = xor i64 %i.ip, %i.ik
  %i.is = xor i64 %i.iq, %i.in
  %i.it = and i64 %i.is, %i.ir
  store i64 %i.it, ptr %i.ii, align 8, !tbaa !17
  %i.iu = xor i64 %i.in, %i.ik
  %i.iv = or i64 %i.iq, %i.iu
  store i64 %i.iv, ptr %i.ij, align 8, !tbaa !17
  %i.iw = add nuw i64 %.014.i100, 1               ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %i.iw, %i.fx
  br i1 %exitcond.not.i101, label %.lr.ph.i104.preheader, label %scalar.ph305, !llvm.loop !44

.lr.ph.i104.preheader:                            ; preds = %vector.body329, %scalar.ph305
  %min.iters.check363 = icmp ult i64 %i.fx, 18
  br i1 %min.iters.check363, label %.lr.ph.i104.preheader399, label %vector.memcheck364

.lr.ph.i104.preheader399:                         ; preds = %vector.memcheck364, %.lr.ph.i104.preheader
  br label %.lr.ph.i104

vector.memcheck364:                               ; preds = %.lr.ph.i104.preheader
  %i.ix = shl i64 %4, 4
  %i.iy = shl i64 %i.aw, 3
  %i.iz = sub i64 %i.ix, %i.iy                    ; 2 uses
  %i.ja = getelementptr i8, ptr %i.bn, i64 %i.iz  ; 3 uses
  %i.jb = getelementptr i8, ptr %i.bs, i64 %i.iz  ; 3 uses
  %bound0365 = icmp ult ptr %i.gd, %i.jb
  %bound1366 = icmp ult ptr %i.ge, %i.ja
  %found.conflict367 = and i1 %bound0365, %bound1366
  %15 = sub i64 %4, %i.aw
  %16 = shl i64 %15, 4                            ; 2 uses
  %17 = getelementptr i8, ptr %i.hq, i64 %16      ; 2 uses
  %bound0368 = icmp ult ptr %i.gd, %17
  %bound1369 = icmp ult ptr %i.hq, %i.ja
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %found.conflict367, %found.conflict370
  %18 = getelementptr i8, ptr %i.hr, i64 %16      ; 2 uses
  %bound0372 = icmp ult ptr %i.gd, %18
  %bound1373 = icmp ult ptr %i.hr, %i.ja
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %conflict.rdx371, %found.conflict374
  %bound0376 = icmp ult ptr %i.ge, %17
  %bound1377 = icmp ult ptr %i.hq, %i.jb
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  %bound0380 = icmp ult ptr %i.ge, %18
  %bound1381 = icmp ult ptr %i.hr, %i.jb
  %found.conflict382 = and i1 %bound0380, %bound1381
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict382
  br i1 %conflict.rdx383, label %.lr.ph.i104.preheader399, label %vector.body386

vector.body386:                                   ; preds = %vector.memcheck364, %vector.body386
  %index387 = phi i64 [ %index.next392, %vector.body386 ], [ 0, %vector.memcheck364 ] ; 5 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %index387 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %index387 ; 2 uses
  %wide.load388 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !17, !alias.scope !67, !noalias !68
  %wide.load389 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !17, !alias.scope !69, !noalias !70 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %index387
  %wide.load390 = load <2 x i64>, ptr %i.je, align 8, !tbaa !17, !alias.scope !71 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %index387
  %wide.load391 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !17, !alias.scope !72 ; 2 uses
  %i.jg = xor <2 x i64> %wide.load391, %wide.load388 ; 2 uses
  %i.jh = xor <2 x i64> %wide.load390, %wide.load389
  %i.ji = and <2 x i64> %i.jg, %i.jh
  store <2 x i64> %i.ji, ptr %i.jc, align 8, !tbaa !17, !alias.scope !67, !noalias !68
  %i.jj = xor <2 x i64> %wide.load391, %wide.load389
  %i.jk = xor <2 x i64> %i.jg, %wide.load390
  %i.jl = or <2 x i64> %i.jk, %i.jj
  store <2 x i64> %i.jl, ptr %i.jd, align 8, !tbaa !17, !alias.scope !69, !noalias !70
  %index.next392 = add nuw i64 %index387, 2       ; 2 uses
  %i.jm = icmp eq i64 %index.next392, %i.fx
  br i1 %i.jm, label %poly3_span_add.exit107, label %vector.body386, !llvm.loop !50

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader399, %.lr.ph.i104
  %.01.i105 = phi i64 [ %i.kb, %.lr.ph.i104 ], [ 0, %.lr.ph.i104.preheader399 ] ; 5 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.01.i105 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.01.i105 ; 2 uses
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !17
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !17 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.01.i105
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !17 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.01.i105
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !17 ; 2 uses
  %i.jv = xor i64 %i.ju, %i.jp                    ; 2 uses
  %i.jw = xor i64 %i.js, %i.jq
  %i.jx = and i64 %i.jv, %i.jw
  store i64 %i.jx, ptr %i.jn, align 8, !tbaa !17
  %i.jy = xor i64 %i.ju, %i.jq
  %i.jz = xor i64 %i.jv, %i.js
  %i.ka = or i64 %i.jz, %i.jy
  store i64 %i.ka, ptr %i.jo, align 8, !tbaa !17
  %i.kb = add nuw i64 %.01.i105, 1                ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %i.kb, %i.fx
  br i1 %exitcond.not.i106, label %poly3_span_add.exit107, label %.lr.ph.i104, !llvm.loop !51

poly3_span_add.exit107:                           ; preds = %vector.body386, %.lr.ph.i104, %poly3_span_sub.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.f

bb.f:                                             ; preds = %poly3_span_add.exit107, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define void @HRSS_poly3_invert(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load <2 x i64>, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load <2 x i64>, ptr %i.d, align 8, !tbaa !17
  %i.f = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !17
  %i.l = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.q)
  %i.s = extractelement <2 x i64> %i.o, i64 1     ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.r, i64 60)
  %i.u = extractelement <2 x i64> %i.o, i64 0     ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.s, i64 60)
  %i.w = extractelement <2 x i64> %i.l, i64 1     ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.u, i64 60)
  %i.y = extractelement <2 x i64> %i.l, i64 0     ; 2 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.w, i64 60)
  %i.aa = extractelement <2 x i64> %i.i, i64 1    ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.y, i64 60)
  %i.ac = extractelement <2 x i64> %i.i, i64 0    ; 2 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.aa, i64 60)
  %i.ae = extractelement <2 x i64> %i.f, i64 1    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ac, i64 60)
  %i.ag = extractelement <2 x i64> %i.f, i64 0    ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ae, i64 60)
  %i.ai = extractelement <2 x i64> %i.c, i64 1    ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ag, i64 60)
  %i.ak = extractelement <2 x i64> %i.c, i64 0
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ai, i64 60)
  %i.am = load i64, ptr %1, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !17
  %i.ap = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !17
  %i.as = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !17
  %i.av = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !17
  %i.ay = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !tbaa !17
  %i.bb = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ba) ; 2 uses
  %i.bc = extractelement <2 x i64> %i.bb, i64 0   ; 2 uses
  %i.bd = extractelement <2 x i64> %i.bb, i64 1
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bd, i64 60)
  %i.bf = extractelement <2 x i64> %i.ay, i64 1   ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bc, i64 60)
  %i.bh = extractelement <2 x i64> %i.ay, i64 0   ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bf, i64 60)
  %i.bj = extractelement <2 x i64> %i.av, i64 1   ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bh, i64 60)
  %i.bl = extractelement <2 x i64> %i.av, i64 0   ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bj, i64 60)
  %i.bn = extractelement <2 x i64> %i.as, i64 1   ; 2 uses
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bl, i64 60)
  %i.bp = extractelement <2 x i64> %i.as, i64 0   ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bn, i64 60)
  %i.br = extractelement <2 x i64> %i.ap, i64 1   ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.bp, i64 60)
  %i.bt = extractelement <2 x i64> %i.ap, i64 0   ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.br, i64 60)
  %i.bv = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.am) ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bt, i64 60)
  %i.bx = insertelement <2 x i64> %i.c, i64 %i.bv, i64 1
  %i.by = lshr <2 x i64> %i.bx, splat (i64 4)     ; 2 uses
  %.sroa.056.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %.sroa.056.8.vec.insert.i = insertelement <2 x i64> %.sroa.056.0.vec.insert.i, i64 %i.bg, i64 1
  %.sroa.1262.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %.sroa.1262.24.vec.insert.i = insertelement <2 x i64> %.sroa.1262.16.vec.insert.i, i64 %i.bk, i64 1
  %.sroa.2167.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %.sroa.2167.40.vec.insert.i = insertelement <2 x i64> %.sroa.2167.32.vec.insert.i, i64 %i.bo, i64 1
  %.sroa.30.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %.sroa.30.56.vec.insert.i = insertelement <2 x i64> %.sroa.30.48.vec.insert.i, i64 %i.bs, i64 1
  %.sroa.39.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %.sroa.39.72.vec.insert.i = insertelement <2 x i64> %.sroa.39.64.vec.insert.i, i64 %i.bw, i64 1
  %i.bz = shufflevector <2 x i64> %i.by, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %.sroa.027.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %.sroa.027.8.vec.insert.i = insertelement <2 x i64> %.sroa.027.0.vec.insert.i, i64 %i.v, i64 1
  %.sroa.1334.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %.sroa.1334.24.vec.insert.i = insertelement <2 x i64> %.sroa.1334.16.vec.insert.i, i64 %i.z, i64 1
  %.sroa.2239.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %.sroa.2239.40.vec.insert.i = insertelement <2 x i64> %.sroa.2239.32.vec.insert.i, i64 %i.ad, i64 1
  %.sroa.31.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %.sroa.31.56.vec.insert.i = insertelement <2 x i64> %.sroa.31.48.vec.insert.i, i64 %i.ah, i64 1
  %.sroa.40.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %.sroa.40.72.vec.insert.i = insertelement <2 x i64> %.sroa.40.64.vec.insert.i, i64 %i.al, i64 1
  %i.ca = insertelement <2 x i64> %i.by, i64 0, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.cb = bitcast <2 x i64> %i.jp to <8 x i16>
  %i.cc = extractelement <8 x i16> %i.cb, i64 0
  %i.cd = and i16 %i.cc, 1
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %poly3_invert_vec.exit, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.b
  %.sroa.29161.0.vec.extract.i = extractelement <2 x i64> %i.rr, i64 0
  %i.cf = extractelement <2 x i64> %i.pz, i64 0
  %i.cg = bitcast <2 x i64> %i.jl to <8 x i16>
  %i.ch = extractelement <8 x i16> %i.cg, i64 0
  %i.ci = and i16 %i.ch, 1
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj                    ; 2 uses
  %i.cl = xor i64 %i.cf, %i.ck
  %i.cm = extractelement <2 x i64> %i.qd, i64 0
  %i.cn = and i64 %i.cl, %i.cm
  %i.co = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qd) ; 2 uses
  %i.cp = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ql) ; 2 uses
  %i.cq = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qt) ; 2 uses
  %i.cr = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.rb) ; 2 uses
end_hunk_0
