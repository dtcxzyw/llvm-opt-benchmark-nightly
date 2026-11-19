Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/smal?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw19smal_decode_segmentEPA2_ji:bb.a
  %i.am = and i32 %i.ah, 65535                    ; 4 uses
  %i.an = icmp sgt i32 %.2112, 0
  br i1 %i.an, label %.lr.ph204, label %.loopexit141

.lr.ph204:                                        ; preds = %bb.d
  %min.iters.check238 = icmp ult i32 %.2112, 96
  br i1 %min.iters.check238, label %scalar.ph.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph204
  %n.vec240 = and i32 %.2112, 2147483632          ; 2 uses
  %i.ao = and i32 %.2112, 15
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <16 x i32> poison, i32 %.2112, i64 0
  %broadcast.splat242 = shufflevector <16 x i32> %broadcast.splatinsert241, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ap = add nsw <16 x i32> %broadcast.splat242, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body.interim, %vector.ph239
  %index244 = phi i32 [ 0, %vector.ph239 ], [ %index.next245, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %i.ap, %vector.ph239 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.aq = add nsw <16 x i32> %vec.ind, splat (i32 -1) ; 2 uses
  %i.ar = lshr <16 x i32> %broadcast.splat, %i.aq
  %.fr250 = freeze <16 x i32> %i.ar
  %i.as = and <16 x i32> %.fr250, splat (i32 255)
  %i.at = icmp eq <16 x i32> %i.as, splat (i32 255) ; 2 uses
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not251 = icmp eq i16 %i.au, 0
  br i1 %.not251, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body243
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -16)
  %index.next245 = add nuw i32 %index244, 16      ; 2 uses
  %i.av = icmp eq i32 %index.next245, %n.vec240
  br i1 %i.av, label %middle.block246, label %vector.body243, !llvm.loop !78

middle.block246:                                  ; preds = %vector.body.interim
  %cmp.n247 = icmp eq i32 %.2112, %n.vec240
  br i1 %cmp.n247, label %.loopexit141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block246
  %.3113202.ph = phi i32 [ %.2112, %.lr.ph204 ], [ %i.ao, %middle.block246 ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body243
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.at, i1 false) ; 2 uses
  %i.aw = extractelement <16 x i32> %i.aq, i64 %first.active.lane
  %i.ax = trunc i64 %first.active.lane to i32
  %i.ay = add i32 %index244, %i.ax
  %i.az = sub i32 %.2112, %i.ay
  br label %.loopexit249

bb.e:                                             ; preds = %scalar.ph
  %i.ba = icmp sgt i32 %.3113202, 1
  br i1 %i.ba, label %scalar.ph, label %.loopexit141, !llvm.loop !79

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.e
  %.3113202 = phi i32 [ %i.bb, %bb.e ], [ %.3113202.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bb = add nsw i32 %.3113202, -1               ; 3 uses
  %i.bc = lshr i32 %i.am, %i.bb
  %i.bd = and i32 %i.bc, 255
  %i.be = icmp eq i32 %i.bd, 255
  br i1 %i.be, label %.loopexit249, label %bb.e, !llvm.loop !80

.loopexit249:                                     ; preds = %scalar.ph, %vector.early.exit
  %.lcssa = phi i32 [ %i.aw, %vector.early.exit ], [ %i.bb, %scalar.ph ]
  %.3113.lcssa197 = phi i32 [ %i.az, %vector.early.exit ], [ %.3113202, %scalar.ph ] ; 3 uses
  %.not138 = icmp eq i32 %.3113.lcssa197, 1
  br i1 %.not138, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit249
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

bb.g:                                             ; preds = %bb.f, %.loopexit249
  %.2.in.ph = phi i32 [ %i.ah, %.loopexit249 ], [ %i.bp, %bb.f ]
  %i.bq = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.br = add i32 %i.bq, %.2.in.ph
  %i.bs = add nsw i32 %.3113.lcssa197, -9
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.e, %bb.d, %middle.block246, %bb.g
  %.3117 = phi i32 [ %i.bs, %bb.g ], [ %.2116, %middle.block246 ], [ %.2116, %bb.d ], [ %.2116, %bb.e ] ; 2 uses
  %.3.in = phi i32 [ %i.br, %bb.g ], [ %i.ah, %middle.block246 ], [ %i.ah, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
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
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !93
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = icmp slt i32 %i.bz, %i.ce
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next175 = add nuw i32 %indvars.iv174, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cf, label %bb.h, label %bb.i, !llvm.loop !81

bb.i:                                             ; preds = %bb.h
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.ch = mul nuw nsw i32 %i.by, %i.ce
  %i.ci = lshr i32 %i.ch, 2                       ; 2 uses
  %.not133 = icmp eq i64 %indvars.iv, 0
  br i1 %.not133, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !93
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
  br i1 %i.cq, label %bb.l, label %bb.m, !llvm.loop !82

bb.m:                                             ; preds = %bb.l
  %i.cs = add i32 %i.ci, %.1157
  %i.ct = shl i32 %i.cs, %.4                      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !93  ; 3 uses
  %i.cw = zext i8 %i.cv to i32                    ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !93
  %i.cz = add i8 %i.cy, 1                         ; 2 uses
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !93
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !93
  %i.dc = icmp ugt i8 %i.cz, %i.db
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = add nuw nsw i32 %i.cw, 1
  %i.de = load i8, ptr %i.ca, align 1, !tbaa !93
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.dd, %i.df                    ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !93
  %i.dl = zext i8 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 5
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !93
  %i.do = zext i8 %i.dn to i16
  %i.dp = sub nsw i16 %i.dl, %i.do
  %i.dq = lshr i16 %i.dp, 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.da, align 1, !tbaa !93
  store i8 1, ptr %i.cx, align 1, !tbaa !93
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0107 = phi i32 [ %i.dg, %bb.n ], [ %i.cw, %bb.m ] ; 2 uses
  %i.ds = zext i8 %i.cv to i64                    ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !93
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !93
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
  %min.iters.check205 = icmp ult i64 %i.ee, 32
  br i1 %min.iters.check205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i64 %i.ee, 24
  %n.vec = and i64 %i.ee, -32                     ; 4 uses
  %i.eg = add i64 %indvars.iv, %n.vec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 21 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ej, align 1, !tbaa !93
  %wide.load206 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !93
  %i.el = add <16 x i8> %wide.load, splat (i8 -1)
  %i.em = add <16 x i8> %wide.load206, splat (i8 -1)
  store <16 x i8> %i.el, ptr %i.ej, align 1, !tbaa !93
  store <16 x i8> %i.em, ptr %i.ek, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph151.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %i.ee, -8                   ; 3 uses
  %i.eo = add i64 %indvars.iv, %n.vec207
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index208
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 5 ; 2 uses
  %wide.load209 = load <8 x i8>, ptr %i.er, align 1, !tbaa !93
  %i.es = add <8 x i8> %wide.load209, splat (i8 -1)
  store <8 x i8> %i.es, ptr %i.er, align 1, !tbaa !93
  %index.next210 = add nuw i64 %index208, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next210, %n.vec207
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n211 = icmp eq i64 %i.ee, %n.vec207
  br i1 %cmp.n211, label %.loopexit, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv176.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.lr.ph151 ], [ %indvars.iv176.ph, %.lr.ph151.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv176
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 5 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !93
  %i.ex = add i8 %i.ew, -1
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !93
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.ey = icmp samesign ult i64 %indvars.iv.next177, %i.ed
  br i1 %i.ey, label %.lr.ph151, label %.loopexit, !llvm.loop !85

bb.q:                                             ; preds = %bb.p
  %.not134 = icmp sle i32 %.0107, %i.cg
  %i.ez = icmp samesign ugt i32 %i.cg, %i.cw
  %or.cond = select i1 %.not134, i1 %i.ez, i1 false
  br i1 %or.cond, label %iter.check224, label %.loopexit

iter.check224:                                    ; preds = %bb.q
  %wide.trip.count = zext i32 %indvars.iv174 to i64
  %i.fa = sub nsw i64 %indvars.iv, %i.ds          ; 7 uses
  %min.iters.check212 = icmp ult i64 %i.fa, 8
  br i1 %min.iters.check212, label %.lr.ph.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %iter.check224
  %min.iters.check214 = icmp ult i64 %i.fa, 32
  br i1 %min.iters.check214, label %vec.epilog.ph228, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.fb = and i64 %i.fa, 24
  %n.vec216 = and i64 %i.fa, -32                  ; 4 uses
  %i.fc = add i64 %n.vec216, %i.ds
  %invariant.gep = getelementptr i8, ptr %i.ca, i64 %i.ds
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next221, %vector.body217 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index218 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep, i64 5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %gep, i64 21 ; 2 uses
  %wide.load219 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !93
  %wide.load220 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !93
  %i.ff = add <16 x i8> %wide.load219, splat (i8 1)
  %i.fg = add <16 x i8> %wide.load220, splat (i8 1)
  store <16 x i8> %i.ff, ptr %i.fd, align 1, !tbaa !93
  store <16 x i8> %i.fg, ptr %i.fe, align 1, !tbaa !93
  %index.next221 = add nuw i64 %index218, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.fh, label %middle.block222, label %vector.body217, !llvm.loop !86

middle.block222:                                  ; preds = %vector.body217
  %cmp.n223 = icmp eq i64 %i.fa, %n.vec216
  br i1 %cmp.n223, label %.loopexit, label %vec.epilog.iter.check225

vec.epilog.iter.check225:                         ; preds = %middle.block222
  %min.epilog.iters.check227 = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph.preheader, label %vec.epilog.ph228, !prof !94

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check225
  %vec.epilog.resume.val229 = phi i64 [ %n.vec216, %vec.epilog.iter.check225 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec230 = and i64 %i.fa, -8                   ; 3 uses
  %i.fi = add i64 %n.vec230, %i.ds
  %invariant.gep277 = getelementptr i8, ptr %i.ca, i64 %i.ds
  br label %vec.epilog.vector.body231

vec.epilog.vector.body231:                        ; preds = %vec.epilog.vector.body231, %vec.epilog.ph228
  %index232 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph228 ], [ %index.next234, %vec.epilog.vector.body231 ] ; 2 uses
  %gep278 = getelementptr i8, ptr %invariant.gep277, i64 %index232
  %i.fj = getelementptr inbounds nuw i8, ptr %gep278, i64 5 ; 2 uses
  %wide.load233 = load <8 x i8>, ptr %i.fj, align 1, !tbaa !93
  %i.fk = add <8 x i8> %wide.load233, splat (i8 1)
  store <8 x i8> %i.fk, ptr %i.fj, align 1, !tbaa !93
  %index.next234 = add nuw i64 %index232, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.fl, label %vec.epilog.middle.block235, label %vec.epilog.vector.body231, !llvm.loop !87

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body231
  %cmp.n236 = icmp eq i64 %i.fa, %n.vec230
  br i1 %cmp.n236, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check224, %vec.epilog.iter.check225, %vec.epilog.middle.block235
  %indvars.iv171.ph = phi i64 [ %i.ds, %iter.check224 ], [ %i.fc, %vec.epilog.iter.check225 ], [ %i.fi, %vec.epilog.middle.block235 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ %indvars.iv171.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv171
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 5 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !93
  %i.fp = add i8 %i.fo, 1
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !93
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !88

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph151, %middle.block222, %vec.epilog.middle.block235, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.o
  %i.fq = trunc nuw i32 %.0107 to i8
  store i8 %i.fq, ptr %i.cu, align 1, !tbaa !93
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv179
  store i32 %i.cg, ptr %i.fr, align 4, !tbaa !71
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, 3
  br i1 %exitcond182.not, label %bb.r, label %bb.d, !llvm.loop !89

bb.r:                                             ; preds = %.loopexit
  %i.fs = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ft = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !71  ; 2 uses
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !70  ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = tail call noundef i64 %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
  %i.ga = load i16, ptr %i.r, align 2, !tbaa !74
  %i.gb = zext i16 %i.ga to i32
  %i.gc = load i16, ptr %i.q, align 8, !tbaa !75
  %i.gd = zext i16 %i.gc to i32
  %i.ge = mul nuw nsw i32 %i.gd, %i.gb
  %.not130 = icmp ult i32 %.0103161, %i.ge
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gf = tail call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 5, ptr %i.gf, align 16, !tbaa !96
  tail call void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.gg = add nsw i64 %i.fz, 12
  %i.gh = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.gi = zext i32 %i.gh to i64
  %.not129 = icmp slt i64 %i.gg, %i.gi
  %i.gj = and i32 %i.fu, 4
  %.not = icmp eq i32 %i.gj, 0
  %i.gk = shl i32 %i.fs, 5
  %i.gl = shl i32 %i.ft, 2
  %i.gm = or i32 %i.gl, %i.gk
  %i.gn = and i32 %i.fu, 3
  %i.go = or disjoint i32 %i.gm, %i.gn            ; 3 uses
  %i.gp = and i32 %i.go, 255
  %.not128 = icmp eq i32 %i.gp, 0
  %i.gq = sub i32 0, %i.go
  %i.gr = select i1 %.not128, i32 128, i32 %i.gq
  %.0101 = select i1 %.not, i32 %i.go, i32 %i.gr
  %i.gs = and i32 %.0103161, 1                    ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gt ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !93
  %i.gw = trunc i32 %.0101 to i8
  %i.gx = select i1 %.not129, i8 %i.gw, i8 0
  %i.gy = add i8 %i.gx, %i.gv                     ; 2 uses
  store i8 %i.gy, ptr %i.gu, align 1, !tbaa !93
  %i.gz = zext i8 %i.gy to i16
  %i.ha = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.hb = zext nneg i32 %.0103161 to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.hb
  store i16 %i.gz, ptr %i.hc, align 2, !tbaa !77
  %.not131 = icmp eq i32 %i.gs, 0
  br i1 %.not131, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hd = load i16, ptr %i.r, align 2, !tbaa !74
  %i.he = zext i16 %i.hd to i32
  %i.hf = udiv i32 %.0103161, %i.he
  %i.hg = load i16, ptr %i.q, align 8, !tbaa !75
  %i.hh = zext i16 %i.hg to i32
  %i.hi = sub nsw i32 %i.hf, %i.hh
  %i.hj = and i32 %i.hi, 7
  %i.hk = shl nuw nsw i32 1, %i.hj
  %i.hl = and i32 %i.hk, %2
  %.not132 = icmp eq i32 %i.hl, 0
  %i.hm = add nuw i32 %.0103161, 2
  %spec.select = select i1 %.not132, i32 %.0103161, i32 %i.hm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1104 = phi i32 [ %.0103161, %bb.t ], [ %spec.select, %bb.u ]
  %i.hn = add nuw i32 %.1104, 1                   ; 2 uses
  %i.ho = load i32, ptr %i.o, align 4, !tbaa !71
  %i.hp = icmp ult i32 %i.hn, %i.ho
  br i1 %i.hp, label %.preheader142, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.v, %bb.c
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 255, ptr %i.hq, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16smal_v6_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x [2 x i32]], align 16         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 16, i32 noundef 0) ; 0 uses
  store i32 0, ptr %i.a, align 16, !tbaa !71
  %i.h = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = zext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74
  %i.n = zext i16 %i.m to i32
  %i.o = load i16, ptr %i.k, align 8, !tbaa !75
  %i.p = zext i16 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 2147483647, ptr %i.s, align 4, !tbaa !71
  call void @_ZN6LibRaw19smal_decode_segmentEPA2_ji(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1073741824, 1073741824) i32 @_ZN6LibRaw7median4EPi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !71     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71   ; 3 uses
  %i.d = add nsw i32 %i.c, %i.a
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.c)
  %.1 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71   ; 3 uses
  %i.g = add nsw i32 %i.f, %i.d
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.f)
  %.1.1 = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !71   ; 3 uses
  %i.j = add nsw i32 %i.i, %i.g
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.1, i32 %i.i)
  %.1.2 = tail call i32 @llvm.smax.i32(i32 %.1.1, i32 %i.i)
  %i.k = add i32 %.1.2, %spec.select.2
  %i.l = sub i32 %i.j, %i.k
end_hunk_0
begin_hunk_1_@_ZN6LibRaw10fill_holesEi:bb.a
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !77
  %i.ch = zext i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %.158, 2
  %i.cj = add nuw nsw i32 %i.ci, %i.cb
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !77
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, %i.ch
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cp = load i16, ptr %i.h, align 2, !tbaa !74
  %i.cq = zext i16 %i.cp to i32                   ; 3 uses
  %i.cr = mul nuw nsw i32 %.03860, %i.cq          ; 3 uses
  %i.cs = add nsw i32 %.158, -2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !77
  %i.cx = zext i16 %i.cw to i32                   ; 3 uses
  %i.cy = add nuw nsw i32 %.158, 2
  %i.cz = add nuw nsw i32 %i.cy, %i.cr
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !77
  %i.dd = zext i16 %i.dc to i32                   ; 3 uses
  %i.de = mul nuw nsw i32 %i.t, %i.cq
  %i.df = add nsw i32 %i.de, %.158
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !77
  %i.dj = zext i16 %i.di to i32                   ; 3 uses
  %i.dk = mul nuw nsw i32 %i.u, %i.cq
  %i.dl = add nuw nsw i32 %i.dk, %.158
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !77
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 %i.dd)
  %i.dr = tail call i32 @llvm.umax.i32(i32 %i.cx, i32 %i.dd)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.dj)
  %i.dt = tail call i32 @llvm.umax.i32(i32 %i.dr, i32 %i.dj)
  %i.du = tail call i32 @llvm.umax.i32(i32 %i.dt, i32 %i.dp)
  %.neg52 = add nuw nsw i32 %i.dd, %i.cx
  %i.dv = add nuw nsw i32 %.neg52, %i.dj
  %i.dw = tail call i32 @llvm.usub.sat.i32(i32 %i.dp, i32 %i.ds)
  %i.dx = add nuw nsw i32 %i.dv, %i.dw
  %i.dy = sub nsw i32 %i.dx, %i.du
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.co, %bb.f ], [ %i.dy, %bb.g ]
  %.sink68 = phi i32 [ %i.cb, %bb.f ], [ %i.cr, %bb.g ]
  %i.dz = lshr i32 %.sink, 1
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = add nuw nsw i32 %.sink68, %.158
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ec
  store i16 %i.ea, ptr %i.ed, align 2, !tbaa !77
  %i.ee = add nuw nsw i32 %.158, 4                ; 2 uses
  %i.ef = load i16, ptr %i.e, align 2, !tbaa !103
  %i.eg = zext i16 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -2
  %i.ei = icmp slt i32 %i.ee, %i.eh
  br i1 %i.ei, label %bb.d, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.b
  %i.ej = add nuw nsw i32 %.03860, 1              ; 2 uses
  %i.ek = load i16, ptr %i.b, align 4, !tbaa !102
  %i.el = zext i16 %i.ek to i32
  %i.em = add nsw i32 %i.el, -2
  %i.en = icmp slt i32 %i.ej, %i.em
  br i1 %i.en, label %bb.b, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16smal_v9_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x [2 x i32]], align 16       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 67, i32 noundef 0) ; 0 uses
  %i.h = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.n = and i32 %i.m, 255                        ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.p = zext i32 %i.h to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i32 noundef 0) ; 0 uses
  %.not21 = icmp eq i32 %i.n, 0                   ; 2 uses
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = shl nuw nsw i32 %i.n, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.w = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.x = load i64, ptr %i.v, align 8, !tbaa !106
  %i.y = trunc i64 %i.x to i32
  %i.z = trunc i64 %indvars.iv to i1
  %i.aa = select i1 %i.z, i32 %i.y, i32 0
  %i.ab = add i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 78, i32 noundef 0) ; 0 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 3 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef 88, i32 noundef 0) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i16, ptr %i.as, align 8, !tbaa !75
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !74
  %i.ax = zext i16 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ax, %i.au
  %i.az = zext nneg i32 %i.n to i64               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  store i32 %i.ay, ptr %i.ba, align 8, !tbaa !71
  %i.bb = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !106
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !71
  br i1 %.not21, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge, %.lr.ph19
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph19 ], [ 0, %._crit_edge ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv24
  call void @_ZN6LibRaw19smal_decode_segmentEPA2_ji(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bh, i32 noundef %i.am)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %i.az
  br i1 %exitcond28.not, label %._crit_edge20, label %.lr.ph19, !llvm.loop !105

._crit_edge20:                                    ; preds = %.lr.ph19, %._crit_edge
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge20
  tail call void @_ZN6LibRaw10fill_holesEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.am)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 short", !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!"_ZTS20libraw_image_sizes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !5, i64 16, !11, i64 24, !5, i64 32, !4, i64 36, !10, i64 164, !4, i64 166}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !13, i64 432}
!15 = !{!"float", !4, i64 0}
!16 = !{!"_ZTS18libraw_nikonlens_t", !15, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!17 = !{!"_ZTS16libraw_dnglens_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!18 = !{!"long long", !4, i64 0}
!19 = !{!"_ZTS24libraw_makernotes_lens_t", !18, i64 0, !4, i64 8, !10, i64 136, !10, i64 138, !18, i64 144, !10, i64 152, !10, i64 154, !4, i64 156, !10, i64 220, !4, i64 222, !4, i64 238, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !15, i64 312, !18, i64 320, !4, i64 328, !18, i64 456, !4, i64 464, !18, i64 592, !4, i64 600, !10, i64 728, !15, i64 732}
!20 = !{!"_ZTS17libraw_lensinfo_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !10, i64 532, !16, i64 536, !17, i64 544, !19, i64 560}
!21 = !{!"_ZTS13libraw_area_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!22 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !10, i64 52, !10, i64 54, !4, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !5, i64 84, !15, i64 88, !10, i64 92, !10, i64 94, !10, i64 96, !10, i64 98, !5, i64 100, !10, i64 104, !5, i64 108, !5, i64 112, !10, i64 116, !5, i64 120, !21, i64 124, !21, i64 132, !21, i64 140, !21, i64 148, !21, i64 156, !4, i64 164}
!23 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!24 = !{!"_ZTS25libraw_nikon_makernotes_t", !11, i64 0, !10, i64 8, !10, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !10, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !10, i64 170, !23, i64 172, !10, i64 180, !10, i64 182, !10, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !13, i64 256, !10, i64 264, !10, i64 266, !4, i64 268, !10, i64 270, !11, i64 272, !11, i64 280, !11, i64 288}
!25 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !11, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!26 = !{!"_ZTS18libraw_fuji_info_t", !15, i64 0, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !10, i64 16, !10, i64 18, !4, i64 20, !4, i64 53, !15, i64 88, !10, i64 92, !10, i64 94, !4, i64 96, !10, i64 100, !5, i64 104, !5, i64 108, !10, i64 112, !4, i64 114, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !5, i64 132, !10, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !10, i64 168, !5, i64 172, !10, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!27 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !10, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !10, i64 82, !4, i64 84, !10, i64 88, !10, i64 90, !4, i64 92, !4, i64 352, !10, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !10, i64 416, !10, i64 418, !10, i64 420, !10, i64 422, !11, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !10, i64 456, !10, i64 458}
!28 = !{!"_ZTS18libraw_sony_info_t", !10, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !10, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !10, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !10, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !10, i64 54, !5, i64 56, !10, i64 60, !4, i64 62, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !5, i64 80, !15, i64 84, !10, i64 88, !5, i64 92, !5, i64 96, !10, i64 100, !4, i64 102, !5, i64 124, !10, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !10, i64 138, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !5, i64 156, !10, i64 160, !4, i64 162, !15, i64 180}
!29 = !{!"_ZTS25libraw_kodak_makernotes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !15, i64 236, !15, i64 240}
!30 = !{!"_ZTS29libraw_panasonic_makernotes_t", !10, i64 0, !10, i64 2, !4, i64 4, !5, i64 36, !15, i64 40, !4, i64 44, !10, i64 56, !10, i64 58, !5, i64 60, !5, i64 64}
!31 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !10, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !4, i64 26, !10, i64 30, !4, i64 32, !4, i64 33, !10, i64 34}
!32 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!33 = !{!"_ZTS25libraw_ricoh_makernotes_t", !10, i64 0, !4, i64 4, !4, i64 12, !10, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !10, i64 40, !10, i64 42, !10, i64 44, !10, i64 46, !10, i64 48, !10, i64 50, !11, i64 56, !11, i64 64}
!34 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !11, i64 88, !5, i64 96, !4, i64 100}
!35 = !{!"_ZTS24libraw_metadata_common_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !10, i64 64, !4, i64 66, !15, i64 196, !4, i64 200, !5, i64 296}
!36 = !{!"_ZTS19libraw_makernotes_t", !22, i64 0, !24, i64 168, !25, i64 464, !26, i64 848, !27, i64 1200, !28, i64 1664, !29, i64 1848, !30, i64 2092, !31, i64 2160, !32, i64 2196, !33, i64 2648, !34, i64 2720, !35, i64 2856}
!37 = !{!"_ZTS21libraw_shootinginfo_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !4, i64 14, !4, i64 78}
!38 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !15, i64 128, !15, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !15, i64 248, !15, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !15, i64 288, !15, i64 292, !5, i64 296, !5, i64 300}
!39 = !{!"any p2 pointer", !8, i64 0}
!40 = !{!"p2 omnipotent char", !39, i64 0}
!41 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 28, !4, i64 32, !40, i64 40}
!42 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !15, i64 32}
!43 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !15, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !15, i64 32920, !15, i64 32924, !4, i64 32928}
!44 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !15, i64 147516, !15, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !42, i64 147876, !15, i64 147912, !15, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !8, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !43, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!45 = !{!"long", !4, i64 0}
!46 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !15, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!47 = !{!"_ZTS17libraw_imgother_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !45, i64 16, !5, i64 24, !4, i64 28, !46, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!48 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!49 = !{!"_ZTS18libraw_thumbnail_t", !48, i64 0, !10, i64 4, !10, i64 6, !5, i64 8, !5, i64 12, !13, i64 16}
!50 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!51 = !{!"p1 float", !8, i64 0}
!52 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 12, !10, i64 14}
!53 = !{!"_ZTS16libraw_rawdata_t", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !9, i64 56, !9, i64 64, !14, i64 72, !12, i64 512, !52, i64 696, !44, i64 712}
!54 = !{!"_ZTS13libraw_data_t", !9, i64 0, !12, i64 8, !14, i64 192, !20, i64 632, !36, i64 1928, !37, i64 5088, !38, i64 5232, !41, i64 5536, !5, i64 5584, !5, i64 5588, !44, i64 5592, !47, i64 192680, !49, i64 193480, !50, i64 193504, !53, i64 193768, !8, i64 381568}
!55 = !{!"p1 _ZTS10LibRaw_TLS", !8, i64 0}
!56 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !8, i64 0}
!57 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!58 = !{!"_ZTS15internal_data_t", !56, i64 0, !57, i64 8, !5, i64 16, !13, i64 24, !18, i64 32, !18, i64 40, !4, i64 48}
!59 = !{!"p1 int", !8, i64 0}
!60 = !{!"_ZTS13output_data_t", !59, i64 0, !59, i64 8}
!61 = !{!"_ZTS15identify_data_t", !5, i64 0, !18, i64 8, !18, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!62 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!63 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !10, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !10, i64 148, !10, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!64 = !{!"_ZTS15unpacker_data_t", !10, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !62, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !18, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !63, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !10, i64 2496, !10, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !10, i64 2608}
!65 = !{!"_ZTS22libraw_internal_data_t", !58, i64 0, !52, i64 64, !60, i64 80, !61, i64 96, !64, i64 136}
!66 = !{!"p1 _ZTS6decode", !8, i64 0}
!67 = !{!"_ZTS13libraw_memmgr", !39, i64 0, !5, i64 8}
!68 = !{!"_ZTS18libraw_callbacks_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!69 = !{!"_ZTS6LibRaw", !54, i64 8, !55, i64 381584, !65, i64 381592, !4, i64 384344, !66, i64 433496, !66, i64 433504, !4, i64 433512, !67, i64 768232, !68, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !8, i64 768448, !8, i64 768456, !8, i64 768464, !45, i64 768472, !8, i64 768480, !8, i64 768488, !8, i64 768496, !8, i64 768504}
!70 = !{!69, !56, i64 381592}
!71 = !{!5, !5, i64 0}
!72 = !{!"vtable pointer", !3, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!69, !10, i64 18}
!75 = !{!69, !10, i64 16}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!10, !10, i64 0}
!78 = distinct !{!78, !76, !91, !92}
!79 = distinct !{!79, !76, !92, !91}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !76}
!82 = distinct !{!82, !76}
!83 = distinct !{!83, !76, !91, !92}
!84 = distinct !{!84, !76, !91, !92}
!85 = distinct !{!85, !76, !92, !91}
!86 = distinct !{!86, !76, !91, !92}
!87 = distinct !{!87, !76, !91, !92}
!88 = distinct !{!88, !76, !92, !91}
!89 = distinct !{!89, !76}
!90 = distinct !{!90, !76}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!4, !4, i64 0}
!94 = !{!"branch_weights", i32 8, i32 24}
!95 = !{!"_ZTS17LibRaw_exceptions", !4, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!69, !9, i64 193784}
!98 = !{!69, !5, i64 153096}
!99 = distinct !{!99, !76}
!100 = distinct !{!100, !76}
!101 = distinct !{!101, !76}
!102 = !{!69, !10, i64 20}
!103 = !{!69, !10, i64 22}
!104 = distinct !{!104, !76}
!105 = distinct !{!105, !76}
!106 = !{!69, !18, i64 381760}
end_hunk_1
