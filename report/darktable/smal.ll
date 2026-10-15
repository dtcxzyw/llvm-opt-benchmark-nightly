Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/smal?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw19smal_decode_segmentEPA2_ji:bb.a
  %index249 = phi i32 [ 0, %vector.ph244 ], [ %index.next250, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %i.ap, %vector.ph244 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.aq = add nsw <32 x i32> %vec.ind, splat (i32 -1) ; 2 uses
  %i.ar = lshr <32 x i32> %broadcast.splat, %i.aq
  %.fr254 = freeze <32 x i32> %i.ar
  %i.as = and <32 x i32> %.fr254, splat (i32 255)
  %i.at = icmp eq <32 x i32> %i.as, splat (i32 255) ; 2 uses
  %i.au = bitcast <32 x i1> %i.at to i32
  %.not255 = icmp eq i32 %i.au, 0
  br i1 %.not255, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body248
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 -32)
  %index.next250 = add nuw i32 %index249, 32      ; 2 uses
  %i.av = icmp eq i32 %index.next250, %n.vec245
  br i1 %i.av, label %middle.block251, label %vector.body248, !llvm.loop !91

middle.block251:                                  ; preds = %vector.body.interim
  %cmp.n252 = icmp eq i32 %.2112, %n.vec245
  br i1 %cmp.n252, label %.loopexit141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block251
  %.3113202.ph = phi i32 [ %.2112, %.lr.ph204 ], [ %i.ao, %middle.block251 ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body248
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.at, i1 false) ; 2 uses
  %i.aw = extractelement <32 x i32> %i.aq, i64 %first.active.lane
  %i.ax = trunc i64 %first.active.lane to i32
  %i.ay = add i32 %index249, %i.ax
  %i.az = sub i32 %.2112, %i.ay
  br label %.loopexit253

bb.e:                                             ; preds = %scalar.ph
  %i.ba = icmp sgt i32 %.3113202, 1
  br i1 %i.ba, label %scalar.ph, label %.loopexit141, !llvm.loop !92

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.e
  %.3113202 = phi i32 [ %i.bb, %bb.e ], [ %.3113202.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bb = add nsw i32 %.3113202, -1               ; 3 uses
  %i.bc = lshr i32 %i.am, %i.bb
  %i.bd = and i32 %i.bc, 255
  %i.be = icmp eq i32 %i.bd, 255
  br i1 %i.be, label %.loopexit253, label %bb.e, !llvm.loop !93

.loopexit253:                                     ; preds = %scalar.ph, %vector.early.exit
  %.lcssa = phi i32 [ %i.aw, %vector.early.exit ], [ %i.bb, %scalar.ph ]
  %.3113.lcssa197 = phi i32 [ %i.az, %vector.early.exit ], [ %.3113202, %scalar.ph ] ; 3 uses
  %.not138 = icmp eq i32 %.3113.lcssa197, 1
  br i1 %.not138, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit253
  %i.bf = add nsw i32 %.3113.lcssa197, -2
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = add nuw i32 %i.bg, 65535
  %i.bi = and i32 %i.bh, %i.am
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = and i32 %i.bg, %i.am
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = add i32 %i.bl, %i.ah
  %i.bn = shl nsw i32 -1, %.lcssa
  %i.bo = and i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, %i.bj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit253
  %.2.in.ph = phi i32 [ %i.ah, %.loopexit253 ], [ %i.bp, %bb.f ]
  %i.bq = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.br = add i32 %i.bq, %.2.in.ph
  %i.bs = add nsw i32 %.3113.lcssa197, -9
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.e, %bb.d, %middle.block251, %bb.g
  %.3117 = phi i32 [ %i.bs, %bb.g ], [ %.2116, %middle.block251 ], [ %.2116, %bb.d ], [ %.2116, %bb.e ] ; 2 uses
  %.3.in = phi i32 [ %i.br, %bb.g ], [ %i.ah, %middle.block251 ], [ %i.ah, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %i.bt = sub i32 %.3.in, %.1157
  %i.bu = shl i32 %i.bt, 2
  %i.bv = add i32 %i.bu, 4
  %i.bw = and i32 %i.bv, 262140
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = lshr i32 %.1119152, 4                   ; 3 uses
  %i.bz = sdiv i32 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw [13 x i8], ptr %i.a, i64 %indvars.iv179 ; 13 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.loopexit141
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.loopexit141 ] ; 2 uses
  %indvars.iv174 = phi i32 [ %indvars.iv.next175, %bb.h ], [ 0, %.loopexit141 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.loopexit141 ] ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = icmp slt i32 %i.bz, %i.ce
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next175 = add nuw i32 %indvars.iv174, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cf, label %bb.h, label %bb.i, !llvm.loop !94

bb.i:                                             ; preds = %bb.h
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.ch = mul nuw nsw i32 %i.by, %i.ce
  %i.ci = lshr i32 %i.ch, 2                       ; 2 uses
  %.not133 = icmp eq i64 %indvars.iv, 0
  br i1 %.not133, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !106
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nuw nsw i32 %i.by, %i.cl
  %i.cn = lshr i32 %i.cm, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2120 = phi i32 [ %i.cn, %bb.j ], [ %.1119152, %bb.i ]
  %i.co = sub nsw i32 %.2120, %i.ci
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i32 [ 0, %bb.k ], [ %i.cr, %bb.l ]    ; 5 uses
  %i.cp = shl i32 %i.co, %.4                      ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 128
  %i.cr = add nuw nsw i32 %.4, 1
  br i1 %i.cq, label %bb.l, label %bb.m, !llvm.loop !95

bb.m:                                             ; preds = %bb.l
  %i.cs = add i32 %i.ci, %.1157
  %i.ct = shl i32 %i.cs, %.4                      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !106 ; 3 uses
  %i.cw = zext i8 %i.cv to i32                    ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !106
  %i.cz = add i8 %i.cy, 1                         ; 2 uses
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !106
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !106
  %i.dc = icmp ugt i8 %i.cz, %i.db
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = add nuw nsw i32 %i.cw, 1
  %i.de = load i8, ptr %i.ca, align 1, !tbaa !106
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.dd, %i.df                    ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !106
  %i.dl = zext i8 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 5
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !106
  %i.do = zext i8 %i.dn to i16
  %i.dp = sub nsw i16 %i.dl, %i.do
  %i.dq = lshr i16 %i.dp, 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.da, align 1, !tbaa !106
  store i8 1, ptr %i.cx, align 1, !tbaa !106
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0107 = phi i32 [ %i.dg, %bb.n ], [ %i.cw, %bb.m ] ; 2 uses
  %i.ds = zext i8 %i.cv to i64                    ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !106
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !106
  %i.dz = zext i8 %i.dy to i32
  %i.ea = sub nsw i32 %i.dw, %i.dz
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ec = icmp samesign ult i32 %i.cg, %i.cw
  br i1 %i.ec, label %iter.check, label %bb.q

iter.check:                                       ; preds = %bb.p
  %i.ed = zext i8 %i.cv to i64
  %i.ee = sub i64 %i.ds, %indvar                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check, label %.lr.ph151.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check205 = icmp ult i64 %i.ee, 64
  br i1 %min.iters.check205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i64 %i.ee, 56
  %n.vec = and i64 %i.ee, -64                     ; 4 uses
  %i.eg = add i64 %indvars.iv, %n.vec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 21
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 37 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 53
  %wide.load = load <16 x i8>, ptr %i.ej, align 1, !tbaa !106
  %wide.load206 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !106
  %wide.load207 = load <16 x i8>, ptr %i.el, align 1, !tbaa !106
  %wide.load208 = load <16 x i8>, ptr %i.em, align 1, !tbaa !106
  %3 = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load206, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %4 = add <32 x i8> %3, splat (i8 -1)
  store <32 x i8> %4, ptr %i.ej, align 1, !tbaa !106
  %5 = shufflevector <16 x i8> %wide.load207, <16 x i8> %wide.load208, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %6 = add <32 x i8> %5, splat (i8 -1)
  store <32 x i8> %6, ptr %i.el, align 1, !tbaa !106
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph151.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec209 = and i64 %i.ee, -8                   ; 3 uses
  %i.eo = add i64 %indvars.iv, %n.vec209
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index210 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next212, %vec.epilog.vector.body ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index210
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 5 ; 2 uses
  %wide.load211 = load <8 x i8>, ptr %i.er, align 1, !tbaa !106
  %i.es = add <8 x i8> %wide.load211, splat (i8 -1)
  store <8 x i8> %i.es, ptr %i.er, align 1, !tbaa !106
  %index.next212 = add nuw i64 %index210, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next212, %n.vec209
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n213 = icmp eq i64 %i.ee, %n.vec209
  br i1 %cmp.n213, label %.loopexit, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv176.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.lr.ph151 ], [ %indvars.iv176.ph, %.lr.ph151.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv176
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 5 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !106
  %i.ex = add i8 %i.ew, -1
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !106
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.ey = icmp samesign ult i64 %indvars.iv.next177, %i.ed
  br i1 %i.ey, label %.lr.ph151, label %.loopexit, !llvm.loop !98

bb.q:                                             ; preds = %bb.p
  %.not134 = icmp sle i32 %.0107, %i.cg
  %i.ez = icmp samesign ugt i32 %i.cg, %i.cw
  %or.cond = select i1 %.not134, i1 %i.ez, i1 false
  br i1 %or.cond, label %iter.check230, label %.loopexit

iter.check230:                                    ; preds = %bb.q
  %wide.trip.count = zext i32 %indvars.iv174 to i64
  %i.fa = sub nsw i64 %indvars.iv, %i.ds          ; 7 uses
  %min.iters.check215 = icmp ult i64 %i.fa, 16
  br i1 %min.iters.check215, label %.lr.ph.preheader, label %vector.main.loop.iter.check216

vector.main.loop.iter.check216:                   ; preds = %iter.check230
  %min.iters.check217 = icmp ult i64 %i.fa, 128
  br i1 %min.iters.check217, label %vec.epilog.ph234, label %vector.ph218

vector.ph218:                                     ; preds = %vector.main.loop.iter.check216
  %i.fb = and i64 %i.fa, 112
  %n.vec219 = and i64 %i.fa, -128                 ; 4 uses
  %i.fc = add i64 %n.vec219, %i.ds
  %invariant.gep = getelementptr i8, ptr %i.ca, i64 %i.ds
  br label %vector.body220

vector.body220:                                   ; preds = %vector.ph218, %vector.body220
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index221 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep, i64 5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %gep, i64 37 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %gep, i64 69 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %gep, i64 101 ; 2 uses
  %wide.load222 = load <32 x i8>, ptr %i.fd, align 1, !tbaa !106
  %wide.load223 = load <32 x i8>, ptr %i.fe, align 1, !tbaa !106
  %wide.load224 = load <32 x i8>, ptr %i.ff, align 1, !tbaa !106
  %wide.load225 = load <32 x i8>, ptr %i.fg, align 1, !tbaa !106
  %i.fh = add <32 x i8> %wide.load222, splat (i8 1)
  %i.fi = add <32 x i8> %wide.load223, splat (i8 1)
  %i.fj = add <32 x i8> %wide.load224, splat (i8 1)
  %i.fk = add <32 x i8> %wide.load225, splat (i8 1)
  store <32 x i8> %i.fh, ptr %i.fd, align 1, !tbaa !106
  store <32 x i8> %i.fi, ptr %i.fe, align 1, !tbaa !106
  store <32 x i8> %i.fj, ptr %i.ff, align 1, !tbaa !106
  store <32 x i8> %i.fk, ptr %i.fg, align 1, !tbaa !106
  %index.next226 = add nuw i64 %index221, 128     ; 2 uses
  %i.fl = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.fl, label %middle.block227, label %vector.body220, !llvm.loop !99

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.fa, %n.vec219
  br i1 %cmp.n228, label %.loopexit, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block227
  %min.epilog.iters.check233 = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check233, label %.lr.ph.preheader, label %vec.epilog.ph234, !prof !108

vec.epilog.ph234:                                 ; preds = %vector.main.loop.iter.check216, %vec.epilog.iter.check232
  %vec.epilog.resume.val229 = phi i64 [ %n.vec219, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check216 ]
  %n.vec235 = and i64 %i.fa, -16                  ; 3 uses
  %i.fm = add i64 %n.vec235, %i.ds
  %invariant.gep281 = getelementptr i8, ptr %i.ca, i64 %i.ds
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph234
  %index237 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph234 ], [ %index.next239, %vec.epilog.vector.body236 ] ; 2 uses
  %gep282 = getelementptr i8, ptr %invariant.gep281, i64 %index237
  %i.fn = getelementptr inbounds nuw i8, ptr %gep282, i64 5 ; 2 uses
  %wide.load238 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !106
  %i.fo = add <16 x i8> %wide.load238, splat (i8 1)
  store <16 x i8> %i.fo, ptr %i.fn, align 1, !tbaa !106
  %index.next239 = add nuw i64 %index237, 16      ; 2 uses
  %i.fp = icmp eq i64 %index.next239, %n.vec235
  br i1 %i.fp, label %vec.epilog.middle.block240, label %vec.epilog.vector.body236, !llvm.loop !100

vec.epilog.middle.block240:                       ; preds = %vec.epilog.vector.body236
  %cmp.n241 = icmp eq i64 %i.fa, %n.vec235
  br i1 %cmp.n241, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check230, %vec.epilog.iter.check232, %vec.epilog.middle.block240
  %indvars.iv171.ph = phi i64 [ %i.ds, %iter.check230 ], [ %i.fc, %vec.epilog.iter.check232 ], [ %i.fm, %vec.epilog.middle.block240 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ %indvars.iv171.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv171
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 5 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !106
  %i.ft = add i8 %i.fs, 1
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !106
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph151, %middle.block227, %vec.epilog.middle.block240, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.o
  %i.fu = trunc nuw i32 %.0107 to i8
  store i8 %i.fu, ptr %i.cu, align 1, !tbaa !106
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv179
  store i32 %i.cg, ptr %i.fv, align 4, !tbaa !75
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, 3
  br i1 %exitcond182.not, label %bb.r, label %bb.d, !llvm.loop !102

bb.r:                                             ; preds = %.loopexit
  %i.fw = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.fx = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !75  ; 2 uses
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !77
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = tail call noundef i64 %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fz), !call_target !111
  %i.ge = load i16, ptr %i.r, align 2, !tbaa !87
  %i.gf = zext i16 %i.ge to i32
  %i.gg = load i16, ptr %i.q, align 8, !tbaa !88
  %i.gh = zext i16 %i.gg to i32
  %i.gi = mul nuw nsw i32 %i.gh, %i.gf
  %.not130 = icmp ult i32 %.0103161, %i.gi
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gj = tail call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 5, ptr %i.gj, align 16, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.gj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.gk = add nsw i64 %i.gd, 12
  %i.gl = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.gm = zext i32 %i.gl to i64
  %.not129 = icmp slt i64 %i.gk, %i.gm
  %i.gn = and i32 %i.fy, 4
  %.not = icmp eq i32 %i.gn, 0
  %i.go = shl i32 %i.fw, 5
  %i.gp = shl i32 %i.fx, 2
  %i.gq = or i32 %i.gp, %i.go
  %i.gr = and i32 %i.fy, 3
  %i.gs = or disjoint i32 %i.gq, %i.gr            ; 3 uses
  %i.gt = and i32 %i.gs, 255
  %.not128 = icmp eq i32 %i.gt, 0
  %i.gu = sub i32 0, %i.gs
  %i.gv = select i1 %.not128, i32 128, i32 %i.gu
  %.0101 = select i1 %.not, i32 %i.gs, i32 %i.gv
  %i.gw = and i32 %.0103161, 1                    ; 2 uses
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gx ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !106
  %i.ha = trunc i32 %.0101 to i8
  %i.hb = select i1 %.not129, i8 %i.ha, i8 0
  %i.hc = add i8 %i.hb, %i.gz                     ; 2 uses
  store i8 %i.hc, ptr %i.gy, align 1, !tbaa !106
  %i.hd = zext i8 %i.hc to i16
  %i.he = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.hf = zext nneg i32 %.0103161 to i64
end_hunk_0
