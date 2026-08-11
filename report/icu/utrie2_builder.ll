inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@utrie2_setRange32_78:bb.a
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  store i32 %3, ptr %i.cd, align 4, !tbaa !28
  br label %pred.store.continue216.1

pred.store.continue216.1:                         ; preds = %pred.store.if215.1, %pred.store.continue214.1
  %i.ce = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.ce, label %pred.store.if217.1, label %pred.store.continue218.1

pred.store.if217.1:                               ; preds = %pred.store.continue216.1
  %i.cf = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cg = getelementptr i8, ptr %i.cf, i64 12
  store i32 %3, ptr %i.cg, align 4, !tbaa !28
  br label %pred.store.continue218.1

pred.store.continue218.1:                         ; preds = %pred.store.if217.1, %pred.store.continue216.1
  %i.ch = extractelement <4 x i1> %i.bw, i64 0
  br i1 %i.ch, label %pred.store.if219.1, label %pred.store.continue220.1

pred.store.if219.1:                               ; preds = %pred.store.continue218.1
  %i.ci = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i32 %3, ptr %i.cj, align 4, !tbaa !28
  br label %pred.store.continue220.1

pred.store.continue220.1:                         ; preds = %pred.store.if219.1, %pred.store.continue218.1
  %i.ck = extractelement <4 x i1> %i.bw, i64 1
  br i1 %i.ck, label %pred.store.if221.1, label %pred.store.continue222.1

pred.store.if221.1:                               ; preds = %pred.store.continue220.1
  %i.cl = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cm = getelementptr i8, ptr %i.cl, i64 20
  store i32 %3, ptr %i.cm, align 4, !tbaa !28
  br label %pred.store.continue222.1

pred.store.continue222.1:                         ; preds = %pred.store.if221.1, %pred.store.continue220.1
  %i.cn = extractelement <4 x i1> %i.bw, i64 2
  br i1 %i.cn, label %pred.store.if223.1, label %pred.store.continue224.1

pred.store.if223.1:                               ; preds = %pred.store.continue222.1
  %i.co = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cp = getelementptr i8, ptr %i.co, i64 24
  store i32 %3, ptr %i.cp, align 4, !tbaa !28
  br label %pred.store.continue224.1

pred.store.continue224.1:                         ; preds = %pred.store.if223.1, %pred.store.continue222.1
  %i.cq = extractelement <4 x i1> %i.bw, i64 3
  br i1 %i.cq, label %pred.store.if225.1, label %pred.store.continue226.1

pred.store.if225.1:                               ; preds = %pred.store.continue224.1
  %i.cr = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cs = getelementptr i8, ptr %i.cr, i64 28
  store i32 %3, ptr %i.cs, align 4, !tbaa !28
  br label %pred.store.continue226.1

pred.store.continue226.1:                         ; preds = %pred.store.if225.1, %pred.store.continue224.1
  %i.ct = icmp eq i64 %n.vec207, 16
  br i1 %i.ct, label %middle.block228, label %vector.body210.2

vector.body210.2:                                 ; preds = %pred.store.continue226.1
  %i.cu = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !28
  %wide.load212.2 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !28
  %i.cx = icmp eq <4 x i32> %wide.load.2, %broadcast.splat209 ; 4 uses
  %i.cy = icmp eq <4 x i32> %wide.load212.2, %broadcast.splat209 ; 4 uses
  %i.cz = extractelement <4 x i1> %i.cx, i64 0
  br i1 %i.cz, label %pred.store.if.2, label %pred.store.continue.2

pred.store.if.2:                                  ; preds = %vector.body210.2
  store i32 %3, ptr %i.cv, align 4, !tbaa !28
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body210.2
  %i.da = extractelement <4 x i1> %i.cx, i64 1
  br i1 %i.da, label %pred.store.if213.2, label %pred.store.continue214.2

pred.store.if213.2:                               ; preds = %pred.store.continue.2
  %i.db = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  store i32 %3, ptr %i.dc, align 4, !tbaa !28
  br label %pred.store.continue214.2

pred.store.continue214.2:                         ; preds = %pred.store.if213.2, %pred.store.continue.2
  %i.dd = extractelement <4 x i1> %i.cx, i64 2
  br i1 %i.dd, label %pred.store.if215.2, label %pred.store.continue216.2

pred.store.if215.2:                               ; preds = %pred.store.continue214.2
  %i.de = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store i32 %3, ptr %i.df, align 4, !tbaa !28
  br label %pred.store.continue216.2

pred.store.continue216.2:                         ; preds = %pred.store.if215.2, %pred.store.continue214.2
  %i.dg = extractelement <4 x i1> %i.cx, i64 3
  br i1 %i.dg, label %pred.store.if217.2, label %pred.store.continue218.2

pred.store.if217.2:                               ; preds = %pred.store.continue216.2
  %i.dh = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.di = getelementptr i8, ptr %i.dh, i64 12
  store i32 %3, ptr %i.di, align 4, !tbaa !28
  br label %pred.store.continue218.2

pred.store.continue218.2:                         ; preds = %pred.store.if217.2, %pred.store.continue216.2
  %i.dj = extractelement <4 x i1> %i.cy, i64 0
  br i1 %i.dj, label %pred.store.if219.2, label %pred.store.continue220.2

pred.store.if219.2:                               ; preds = %pred.store.continue218.2
  %i.dk = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i32 %3, ptr %i.dl, align 4, !tbaa !28
  br label %pred.store.continue220.2

pred.store.continue220.2:                         ; preds = %pred.store.if219.2, %pred.store.continue218.2
  %i.dm = extractelement <4 x i1> %i.cy, i64 1
  br i1 %i.dm, label %pred.store.if221.2, label %pred.store.continue222.2

pred.store.if221.2:                               ; preds = %pred.store.continue220.2
  %i.dn = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.do = getelementptr i8, ptr %i.dn, i64 20
  store i32 %3, ptr %i.do, align 4, !tbaa !28
  br label %pred.store.continue222.2

pred.store.continue222.2:                         ; preds = %pred.store.if221.2, %pred.store.continue220.2
  %i.dp = extractelement <4 x i1> %i.cy, i64 2
  br i1 %i.dp, label %pred.store.if223.2, label %pred.store.continue224.2

pred.store.if223.2:                               ; preds = %pred.store.continue222.2
  %i.dq = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.dr = getelementptr i8, ptr %i.dq, i64 24
  store i32 %3, ptr %i.dr, align 4, !tbaa !28
  br label %pred.store.continue224.2

pred.store.continue224.2:                         ; preds = %pred.store.if223.2, %pred.store.continue222.2
  %i.ds = extractelement <4 x i1> %i.cy, i64 3
  br i1 %i.ds, label %pred.store.if225.2, label %middle.block228

pred.store.if225.2:                               ; preds = %pred.store.continue224.2
  %i.dt = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.du = getelementptr i8, ptr %i.dt, i64 28
  store i32 %3, ptr %i.du, align 4, !tbaa !28
  br label %middle.block228

middle.block228:                                  ; preds = %pred.store.continue224.2, %pred.store.if225.2, %pred.store.continue226.1, %pred.store.continue226
  %cmp.n229 = icmp eq i64 %n.vec207, %i.ac
  br i1 %cmp.n229, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph19.i.preheader340

.lr.ph19.i.preheader340:                          ; preds = %.lr.ph19.i.preheader, %middle.block228
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.aq, %middle.block228 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader341, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader341 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4, !tbaa !28
  %i.dv = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.dv, label %.lr.ph.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !98

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader340, %bb.l
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.l ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader340 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.118.i.idx ; 2 uses
  %i.dw = load i32, ptr %.118.i.ptr, align 4, !tbaa !28
  %i.dx = icmp eq i32 %i.dw, %i.z
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.dy = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.dy, label %.lr.ph19.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !99

bb.m:                                             ; preds = %bb.i
  %i.dz = and i32 %i.o, 31                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !23 ; 2 uses
  %i.ec = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ec ; 2 uses
  %i.ee = zext nneg i32 %i.p to i64               ; 5 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ee ; 13 uses
  %.not.i129 = icmp eq i8 %4, 0
  %i.eg = icmp samesign ult i32 %i.p, %i.dz       ; 2 uses
  br i1 %.not.i129, label %.preheader.i133, label %.preheader15.i130

.preheader15.i130:                                ; preds = %bb.m
  br i1 %i.eg, label %.lr.ph.i131.preheader, label %.critedge

.lr.ph.i131.preheader:                            ; preds = %.preheader15.i130
  %i.eh = ptrtoaddr ptr %i.v to i64               ; 2 uses
  %i.ei = shl nuw nsw i64 %i.w, 2
  %i.ej = shl nuw nsw i64 %i.ee, 2
  %i.ek = add i64 %i.ei, %i.eh                    ; 2 uses
  %i.el = add i64 %i.ek, %i.ej
  %i.em = add i64 %i.el, 4
  %i.en = shl nuw nsw i64 %i.ec, 2
  %i.eo = add i64 %i.ek, %i.en
  %i.ep = tail call i64 @llvm.umax.i64(i64 %i.em, i64 %i.eo)
  %6 = add nuw nsw i64 %i.w, %i.ee
  %7 = shl nuw nsw i64 %6, 2
  %i.eq = add i64 %7, %i.eh
  %8 = xor i64 %i.eq, -1
  %9 = add i64 %i.ep, %8                          ; 2 uses
  %i.er = lshr i64 %9, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %9, 28
  br i1 %min.iters.check232, label %.lr.ph.i131.preheader338, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph.i131.preheader
  %n.vec234 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.et = shl i64 %n.vec234, 2
  %i.eu = getelementptr i8, ptr %i.ef, i64 %i.et
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph233
  %index238 = phi i64 [ 0, %vector.ph233 ], [ %index.next239, %vector.body237 ] ; 2 uses
  %i.ev = shl i64 %index238, 2
  %next.gep = getelementptr i8, ptr %i.ef, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat236, ptr %next.gep, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat236, ptr %i.ew, align 4, !tbaa !28
  %index.next239 = add nuw i64 %index238, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.ex, label %middle.block240, label %vector.body237, !llvm.loop !100

middle.block240:                                  ; preds = %vector.body237
  %cmp.n241 = icmp eq i64 %i.es, %n.vec234
  br i1 %cmp.n241, label %.critedge, label %.lr.ph.i131.preheader338

.lr.ph.i131.preheader338:                         ; preds = %.lr.ph.i131.preheader, %middle.block240
  %.017.i132.ph = phi ptr [ %i.ef, %.lr.ph.i131.preheader ], [ %i.eu, %middle.block240 ]
  br label %.lr.ph.i131

.preheader.i133:                                  ; preds = %bb.m
  br i1 %i.eg, label %.lr.ph19.i134.preheader, label %.critedge

.lr.ph19.i134.preheader:                          ; preds = %.preheader.i133
  %i.ey = ptrtoaddr ptr %i.v to i64               ; 2 uses
  %i.ez = shl nuw nsw i64 %i.w, 2
  %i.fa = shl nuw nsw i64 %i.ee, 2
  %i.fb = add i64 %i.ez, %i.ey                    ; 2 uses
  %i.fc = add i64 %i.fb, %i.fa
  %i.fd = add i64 %i.fc, 4
  %i.fe = shl nuw nsw i64 %i.ec, 2
  %i.ff = add i64 %i.fb, %i.fe
  %i.fg = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.ff)
  %10 = add nuw nsw i64 %i.w, %i.ee
  %11 = shl nuw nsw i64 %10, 2
  %i.fh = add i64 %11, %i.ey
  %12 = xor i64 %i.fh, -1
  %13 = add i64 %i.fg, %12                        ; 2 uses
  %i.fi = lshr i64 %13, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check244 = icmp ult i64 %13, 28
  br i1 %min.iters.check244, label %.lr.ph19.i134.preheader336, label %vector.ph245

vector.ph245:                                     ; preds = %.lr.ph19.i134.preheader
  %n.vec246 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fk = shl i64 %n.vec246, 2
  %i.fl = getelementptr i8, ptr %i.ef, i64 %i.fk
  %broadcast.splatinsert247 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat248 = shufflevector <4 x i32> %broadcast.splatinsert247, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %pred.store.continue276, %vector.ph245
  %index250 = phi i64 [ 0, %vector.ph245 ], [ %index.next277, %pred.store.continue276 ] ; 2 uses
  %i.fm = shl i64 %index250, 2                    ; 8 uses
  %next.gep251 = getelementptr i8, ptr %i.ef, i64 %i.fm ; 3 uses
  %i.fn = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep252 = getelementptr i8, ptr %i.fn, i64 4
  %i.fo = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep253 = getelementptr i8, ptr %i.fo, i64 8
  %i.fp = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep254 = getelementptr i8, ptr %i.fp, i64 12
  %i.fq = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep255 = getelementptr i8, ptr %i.fq, i64 16
  %i.fr = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep256 = getelementptr i8, ptr %i.fr, i64 20
  %i.fs = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep257 = getelementptr i8, ptr %i.fs, i64 24
  %i.ft = getelementptr i8, ptr %i.ef, i64 %i.fm
  %next.gep258 = getelementptr i8, ptr %i.ft, i64 28
  %i.fu = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load259 = load <4 x i32>, ptr %next.gep251, align 4, !tbaa !28
  %wide.load260 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !28
  %i.fv = icmp eq <4 x i32> %wide.load259, %broadcast.splat248 ; 4 uses
  %i.fw = icmp eq <4 x i32> %wide.load260, %broadcast.splat248 ; 4 uses
  %i.fx = extractelement <4 x i1> %i.fv, i64 0
  br i1 %i.fx, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %vector.body249
  store i32 %3, ptr %next.gep251, align 4, !tbaa !28
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %vector.body249
  %i.fy = extractelement <4 x i1> %i.fv, i64 1
  br i1 %i.fy, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  store i32 %3, ptr %next.gep252, align 4, !tbaa !28
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.fz = extractelement <4 x i1> %i.fv, i64 2
  br i1 %i.fz, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  store i32 %3, ptr %next.gep253, align 4, !tbaa !28
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %i.ga = extractelement <4 x i1> %i.fv, i64 3
  br i1 %i.ga, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  store i32 %3, ptr %next.gep254, align 4, !tbaa !28
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %i.gb = extractelement <4 x i1> %i.fw, i64 0
  br i1 %i.gb, label %pred.store.if269, label %pred.store.continue270

pred.store.if269:                                 ; preds = %pred.store.continue268
  store i32 %3, ptr %next.gep255, align 4, !tbaa !28
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.if269, %pred.store.continue268
  %i.gc = extractelement <4 x i1> %i.fw, i64 1
  br i1 %i.gc, label %pred.store.if271, label %pred.store.continue272

pred.store.if271:                                 ; preds = %pred.store.continue270
  store i32 %3, ptr %next.gep256, align 4, !tbaa !28
  br label %pred.store.continue272

pred.store.continue272:                           ; preds = %pred.store.if271, %pred.store.continue270
  %i.gd = extractelement <4 x i1> %i.fw, i64 2
  br i1 %i.gd, label %pred.store.if273, label %pred.store.continue274

pred.store.if273:                                 ; preds = %pred.store.continue272
  store i32 %3, ptr %next.gep257, align 4, !tbaa !28
  br label %pred.store.continue274

pred.store.continue274:                           ; preds = %pred.store.if273, %pred.store.continue272
  %i.ge = extractelement <4 x i1> %i.fw, i64 3
  br i1 %i.ge, label %pred.store.if275, label %pred.store.continue276

pred.store.if275:                                 ; preds = %pred.store.continue274
  store i32 %3, ptr %next.gep258, align 4, !tbaa !28
  br label %pred.store.continue276

pred.store.continue276:                           ; preds = %pred.store.if275, %pred.store.continue274
  %index.next277 = add nuw i64 %index250, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next277, %n.vec246
  br i1 %i.gf, label %middle.block278, label %vector.body249, !llvm.loop !101

middle.block278:                                  ; preds = %pred.store.continue276
  %cmp.n279 = icmp eq i64 %i.fj, %n.vec246
  br i1 %cmp.n279, label %.critedge, label %.lr.ph19.i134.preheader336

.lr.ph19.i134.preheader336:                       ; preds = %.lr.ph19.i134.preheader, %middle.block278
  %.118.i135.ph = phi ptr [ %i.ef, %.lr.ph19.i134.preheader ], [ %i.fl, %middle.block278 ]
  br label %.lr.ph19.i134

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader338, %.lr.ph.i131
  %.017.i132 = phi ptr [ %i.gg, %.lr.ph.i131 ], [ %.017.i132.ph, %.lr.ph.i131.preheader338 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.017.i132, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i132, align 4, !tbaa !28
  %i.gh = icmp ult ptr %i.gg, %i.ed
  br i1 %i.gh, label %.lr.ph.i131, label %.critedge, !llvm.loop !102

.lr.ph19.i134:                                    ; preds = %.lr.ph19.i134.preheader336, %bb.o
  %.118.i135 = phi ptr [ %i.gk, %bb.o ], [ %.118.i135.ph, %.lr.ph19.i134.preheader336 ] ; 3 uses
  %i.gi = load i32, ptr %.118.i135, align 4, !tbaa !28
  %i.gj = icmp eq i32 %i.gi, %i.eb
  br i1 %i.gj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph19.i134
  store i32 %3, ptr %.118.i135, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph19.i134
  %i.gk = getelementptr inbounds nuw i8, ptr %.118.i135, i64 4 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %i.ed
  br i1 %i.gl, label %.lr.ph19.i134, label %.critedge, !llvm.loop !103

_ZL9fillBlockPjiijja.exit:                        ; preds = %.lr.ph.i, %bb.l, %middle.block, %middle.block228, %bb.g
  %.1 = phi i32 [ %1, %bb.g ], [ %i.t, %middle.block228 ], [ %i.t, %middle.block ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.gm = and i32 %i.o, 31                        ; 2 uses
  %i.gn = and i32 %i.o, 4194272                   ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 144136 ; 4 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !23
  %i.gq = icmp eq i32 %3, %i.gp
  br i1 %i.gq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL9fillBlockPjiijja.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 144164
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %_ZL9fillBlockPjiijja.exit, %bb.p
  %.0102 = phi i32 [ %i.gs, %bb.p ], [ -1, %_ZL9fillBlockPjiijja.exit ]
  %i.gt = icmp slt i32 %.1, %i.gn
  br i1 %i.gt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 2176 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 144164 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.g, i64 144160
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 144144 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 144176 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 144128 ; 3 uses
  %.not.i138 = icmp eq i8 %4, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 144156 ; 2 uses
  %i.hb = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.hc = shufflevector <4 x i32> %i.hb, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.critedge128
  %.2174 = phi i32 [ %.1, %.lr.ph ], [ %.3, %.critedge128 ] ; 9 uses
  %.1103173 = phi i32 [ %.0102, %.lr.ph ], [ %.3105, %.critedge128 ] ; 9 uses
  %i.hd = load i32, ptr %i.go, align 8, !tbaa !23
  %i.he = icmp eq i32 %3, %i.hd
  br i1 %i.he, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.hf = and i32 %.2174, 2096128
  %i.hg = icmp eq i32 %i.hf, 55296
  br i1 %i.hg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hh = lshr i32 %.2174, 5
  %i.hi = add nuw nsw i32 %i.hh, 320
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

bb.u:                                             ; preds = %bb.s
  %i.hj = lshr i32 %.2174, 11
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !28
  %i.hn = lshr i32 %.2174, 5
  %i.ho = and i32 %i.hn, 63
  %i.hp = add nsw i32 %i.hm, %i.ho
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

_ZL13isInNullBlockP9UNewTrie2ia.exit:             ; preds = %bb.t, %bb.u
  %.0.i = phi i32 [ %i.hi, %bb.t ], [ %i.hp, %bb.u ]
  %i.hq = sext i32 %.0.i to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !28
  %i.ht = load i32, ptr %i.gv, align 4, !tbaa !29
  %.not = icmp eq i32 %i.hs, %i.ht
end_hunk_0
begin_hunk_1_@utrie2_setRange32_78:bb.a
bb.av:                                            ; preds = %.lr.ph19.i143.20
  store i32 %3, ptr %.118.i144.ptr.20, align 4, !tbaa !28
  br label %.lr.ph19.i143.21

.lr.ph19.i143.21:                                 ; preds = %bb.av, %.lr.ph19.i143.20
  %.118.i144.ptr.21 = getelementptr inbounds nuw i8, ptr %i.iz, i64 84 ; 2 uses
  %i.kr = load i32, ptr %.118.i144.ptr.21, align 4, !tbaa !28
  %i.ks = icmp eq i32 %i.kr, %i.ja
  br i1 %i.ks, label %bb.aw, label %.lr.ph19.i143.22

bb.aw:                                            ; preds = %.lr.ph19.i143.21
  store i32 %3, ptr %.118.i144.ptr.21, align 4, !tbaa !28
  br label %.lr.ph19.i143.22

.lr.ph19.i143.22:                                 ; preds = %bb.aw, %.lr.ph19.i143.21
  %.118.i144.ptr.22 = getelementptr inbounds nuw i8, ptr %i.iz, i64 88 ; 2 uses
  %i.kt = load i32, ptr %.118.i144.ptr.22, align 4, !tbaa !28
  %i.ku = icmp eq i32 %i.kt, %i.ja
  br i1 %i.ku, label %bb.ax, label %.lr.ph19.i143.23

bb.ax:                                            ; preds = %.lr.ph19.i143.22
  store i32 %3, ptr %.118.i144.ptr.22, align 4, !tbaa !28
  br label %.lr.ph19.i143.23

.lr.ph19.i143.23:                                 ; preds = %bb.ax, %.lr.ph19.i143.22
  %.118.i144.ptr.23 = getelementptr inbounds nuw i8, ptr %i.iz, i64 92 ; 2 uses
  %i.kv = load i32, ptr %.118.i144.ptr.23, align 4, !tbaa !28
  %i.kw = icmp eq i32 %i.kv, %i.ja
  br i1 %i.kw, label %bb.ay, label %.lr.ph19.i143.24

bb.ay:                                            ; preds = %.lr.ph19.i143.23
  store i32 %3, ptr %.118.i144.ptr.23, align 4, !tbaa !28
  br label %.lr.ph19.i143.24

.lr.ph19.i143.24:                                 ; preds = %bb.ay, %.lr.ph19.i143.23
  %.118.i144.ptr.24 = getelementptr inbounds nuw i8, ptr %i.iz, i64 96 ; 2 uses
  %i.kx = load i32, ptr %.118.i144.ptr.24, align 4, !tbaa !28
  %i.ky = icmp eq i32 %i.kx, %i.ja
  br i1 %i.ky, label %bb.az, label %.lr.ph19.i143.25

bb.az:                                            ; preds = %.lr.ph19.i143.24
  store i32 %3, ptr %.118.i144.ptr.24, align 4, !tbaa !28
  br label %.lr.ph19.i143.25

.lr.ph19.i143.25:                                 ; preds = %bb.az, %.lr.ph19.i143.24
  %.118.i144.ptr.25 = getelementptr inbounds nuw i8, ptr %i.iz, i64 100 ; 2 uses
  %i.kz = load i32, ptr %.118.i144.ptr.25, align 4, !tbaa !28
  %i.la = icmp eq i32 %i.kz, %i.ja
  br i1 %i.la, label %bb.ba, label %.lr.ph19.i143.26

bb.ba:                                            ; preds = %.lr.ph19.i143.25
  store i32 %3, ptr %.118.i144.ptr.25, align 4, !tbaa !28
  br label %.lr.ph19.i143.26

.lr.ph19.i143.26:                                 ; preds = %bb.ba, %.lr.ph19.i143.25
  %.118.i144.ptr.26 = getelementptr inbounds nuw i8, ptr %i.iz, i64 104 ; 2 uses
  %i.lb = load i32, ptr %.118.i144.ptr.26, align 4, !tbaa !28
  %i.lc = icmp eq i32 %i.lb, %i.ja
  br i1 %i.lc, label %bb.bb, label %.lr.ph19.i143.27

bb.bb:                                            ; preds = %.lr.ph19.i143.26
  store i32 %3, ptr %.118.i144.ptr.26, align 4, !tbaa !28
  br label %.lr.ph19.i143.27

.lr.ph19.i143.27:                                 ; preds = %bb.bb, %.lr.ph19.i143.26
  %.118.i144.ptr.27 = getelementptr inbounds nuw i8, ptr %i.iz, i64 108 ; 2 uses
  %i.ld = load i32, ptr %.118.i144.ptr.27, align 4, !tbaa !28
  %i.le = icmp eq i32 %i.ld, %i.ja
  br i1 %i.le, label %bb.bc, label %.lr.ph19.i143.28

bb.bc:                                            ; preds = %.lr.ph19.i143.27
  store i32 %3, ptr %.118.i144.ptr.27, align 4, !tbaa !28
  br label %.lr.ph19.i143.28

.lr.ph19.i143.28:                                 ; preds = %bb.bc, %.lr.ph19.i143.27
  %.118.i144.ptr.28 = getelementptr inbounds nuw i8, ptr %i.iz, i64 112 ; 2 uses
  %i.lf = load i32, ptr %.118.i144.ptr.28, align 4, !tbaa !28
  %i.lg = icmp eq i32 %i.lf, %i.ja
  br i1 %i.lg, label %bb.bd, label %.lr.ph19.i143.29

bb.bd:                                            ; preds = %.lr.ph19.i143.28
  store i32 %3, ptr %.118.i144.ptr.28, align 4, !tbaa !28
  br label %.lr.ph19.i143.29

.lr.ph19.i143.29:                                 ; preds = %bb.bd, %.lr.ph19.i143.28
  %.118.i144.ptr.29 = getelementptr inbounds nuw i8, ptr %i.iz, i64 116 ; 2 uses
  %i.lh = load i32, ptr %.118.i144.ptr.29, align 4, !tbaa !28
  %i.li = icmp eq i32 %i.lh, %i.ja
  br i1 %i.li, label %bb.be, label %.lr.ph19.i143.30

bb.be:                                            ; preds = %.lr.ph19.i143.29
  store i32 %3, ptr %.118.i144.ptr.29, align 4, !tbaa !28
  br label %.lr.ph19.i143.30

.lr.ph19.i143.30:                                 ; preds = %bb.be, %.lr.ph19.i143.29
  %.118.i144.ptr.30 = getelementptr inbounds nuw i8, ptr %i.iz, i64 120 ; 2 uses
  %i.lj = load i32, ptr %.118.i144.ptr.30, align 4, !tbaa !28
  %i.lk = icmp eq i32 %i.lj, %i.ja
  br i1 %i.lk, label %bb.bf, label %.lr.ph19.i143.31

bb.bf:                                            ; preds = %.lr.ph19.i143.30
  store i32 %3, ptr %.118.i144.ptr.30, align 4, !tbaa !28
  br label %.lr.ph19.i143.31

.lr.ph19.i143.31:                                 ; preds = %bb.bf, %.lr.ph19.i143.30
  %.118.i144.ptr.31 = getelementptr inbounds nuw i8, ptr %i.iz, i64 124 ; 2 uses
  %i.ll = load i32, ptr %.118.i144.ptr.31, align 4, !tbaa !28
  %i.lm = icmp eq i32 %i.ll, %i.ja
  br i1 %i.lm, label %bb.bg, label %.critedge128

bb.bg:                                            ; preds = %.lr.ph19.i143.31
  store i32 %3, ptr %.118.i144.ptr.31, align 4, !tbaa !28
  br label %.critedge128

_ZL15isWritableBlockP9UNewTrie2i.exit.thread:     ; preds = %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread156, %_ZL15isWritableBlockP9UNewTrie2i.exit
  %i.ln = load ptr, ptr %i.gz, align 8, !tbaa !20
  %i.lo = sext i32 %i.iq to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !28
  %.not124 = icmp ne i32 %i.lq, %3
  %brmerge = or i1 %i.k, %.not.i137
  %or.cond163 = and i1 %brmerge, %.not124
  br i1 %or.cond163, label %bb.bh, label %.critedge128

bb.bh:                                            ; preds = %_ZL15isWritableBlockP9UNewTrie2i.exit.thread, %bb.z
  %i.lr = icmp sgt i32 %.1103173, -1
  br i1 %i.lr, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.ls = lshr i32 %.1103173, 5
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.lt ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !28
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !28
  %i.lx = load i32, ptr %i.ip, align 4, !tbaa !28 ; 2 uses
  %i.ly = ashr i32 %i.lx, 5
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.lz ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !28
  %i.mc = add nsw i32 %i.mb, -1                   ; 2 uses
  store i32 %i.mc, ptr %i.ma, align 4, !tbaa !28
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.bj, label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

bb.bj:                                            ; preds = %bb.bi
  %i.me = load i32, ptr %i.ha, align 4, !tbaa !26
  %i.mf = sub nsw i32 0, %i.me
  store i32 %i.mf, ptr %i.ma, align 4, !tbaa !28
  store i32 %i.lx, ptr %i.ha, align 4, !tbaa !26
  br label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

_ZL14setIndex2EntryP9UNewTrie2ii.exit:            ; preds = %bb.bi, %bb.bj
  store i32 %.1103173, ptr %i.ip, align 4, !tbaa !28
  br label %.critedge128

bb.bk:                                            ; preds = %bb.bh
  %i.mg = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2174, i8 noundef signext 1) ; 3 uses
  %i.mh = icmp slt i32 %i.mg, 0
  br i1 %i.mh, label %.critedge.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mi = load ptr, ptr %i.gz, align 8, !tbaa !20
  %i.mj = zext nneg i32 %i.mg to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mj
  tail call fastcc void @_ZL10writeBlockPjj(ptr noundef %i.mk, i32 noundef %3)
  br label %.critedge128

.critedge128:                                     ; preds = %.lr.ph19.i143.31, %bb.bg, %.lr.ph.i140.preheader, %bb.bl, %_ZL14setIndex2EntryP9UNewTrie2ii.exit, %_ZL15isWritableBlockP9UNewTrie2i.exit.thread, %_ZL13isInNullBlockP9UNewTrie2ia.exit
  %.3105 = phi i32 [ %.1103173, %_ZL13isInNullBlockP9UNewTrie2ia.exit ], [ %.1103173, %_ZL14setIndex2EntryP9UNewTrie2ii.exit ], [ %i.mg, %bb.bl ], [ %.1103173, %.lr.ph.i140.preheader ], [ %.1103173, %_ZL15isWritableBlockP9UNewTrie2i.exit.thread ], [ %.1103173, %bb.bg ], [ %.1103173, %.lr.ph19.i143.31 ]
  %.3 = add nuw nsw i32 %.2174, 32                ; 3 uses
  %i.ml = icmp slt i32 %.3, %i.gn
  br i1 %i.ml, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge128, %bb.q
  %.2.lcssa = phi i32 [ %.1, %bb.q ], [ %.3, %.critedge128 ]
  %.not121 = icmp eq i32 %i.gm, 0
  br i1 %.not121, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  %i.mm = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2.lcssa, i8 noundef signext 1) ; 2 uses
  %i.mn = icmp slt i32 %i.mm, 0
  br i1 %i.mn, label %.critedge.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.g, i64 144128
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !20 ; 2 uses
  %i.mq = zext nneg i32 %i.mm to i64              ; 3 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mq ; 14 uses
  %i.ms = load i32, ptr %i.go, align 8, !tbaa !23 ; 2 uses
  %i.mt = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mt ; 2 uses
  %.not.i146 = icmp eq i8 %4, 0
  %i.mv = ptrtoaddr ptr %i.mp to i64              ; 2 uses
  %i.mw = shl nuw nsw i64 %i.mq, 2
  %i.mx = shl nuw nsw i64 %i.mt, 2
  %i.my = add i64 %i.mw, %i.mv                    ; 2 uses
  %i.mz = add i64 %i.my, %i.mx
  %i.na = add i64 %i.my, 4
  %i.nb = tail call i64 @llvm.umax.i64(i64 %i.mz, i64 %i.na)
  %14 = shl nuw nsw i64 %i.mq, 2
  %i.nc = add i64 %14, %i.mv
  %15 = xor i64 %i.nc, -1
  %16 = add i64 %i.nb, %15                        ; 2 uses
  %i.nd = lshr i64 %16, 2
  %i.ne = add nuw nsw i64 %i.nd, 1                ; 4 uses
  %min.iters.check295 = icmp ult i64 %16, 28      ; 2 uses
  br i1 %.not.i146, label %.lr.ph19.i151.preheader, label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %bb.bn
  br i1 %min.iters.check295, label %.lr.ph.i148.preheader334, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph.i148.preheader
  %n.vec284 = and i64 %i.ne, 9223372036854775800  ; 3 uses
  %i.nf = shl i64 %n.vec284, 2
  %i.ng = getelementptr i8, ptr %i.mr, i64 %i.nf
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph283
  %index288 = phi i64 [ 0, %vector.ph283 ], [ %index.next290, %vector.body287 ] ; 2 uses
  %i.nh = shl i64 %index288, 2
  %next.gep289 = getelementptr i8, ptr %i.mr, i64 %i.nh ; 2 uses
  %i.ni = getelementptr i8, ptr %next.gep289, i64 16
  store <4 x i32> %broadcast.splat286, ptr %next.gep289, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat286, ptr %i.ni, align 4, !tbaa !28
  %index.next290 = add nuw i64 %index288, 8       ; 2 uses
  %i.nj = icmp eq i64 %index.next290, %n.vec284
  br i1 %i.nj, label %middle.block291, label %vector.body287, !llvm.loop !105

middle.block291:                                  ; preds = %vector.body287
  %cmp.n292 = icmp eq i64 %i.ne, %n.vec284
  br i1 %cmp.n292, label %.critedge, label %.lr.ph.i148.preheader334

.lr.ph.i148.preheader334:                         ; preds = %.lr.ph.i148.preheader, %middle.block291
  %.017.i149.ph = phi ptr [ %i.mr, %.lr.ph.i148.preheader ], [ %i.ng, %middle.block291 ]
  br label %.lr.ph.i148

.lr.ph19.i151.preheader:                          ; preds = %bb.bn
  br i1 %min.iters.check295, label %.lr.ph19.i151.preheader333, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph19.i151.preheader
  %n.vec297 = and i64 %i.ne, 9223372036854775800  ; 3 uses
  %i.nk = shl i64 %n.vec297, 2
  %i.nl = getelementptr i8, ptr %i.mr, i64 %i.nk
  %broadcast.splatinsert298 = insertelement <4 x i32> poison, i32 %i.ms, i64 0
  %broadcast.splat299 = shufflevector <4 x i32> %broadcast.splatinsert298, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %pred.store.continue327, %vector.ph296
  %index301 = phi i64 [ 0, %vector.ph296 ], [ %index.next328, %pred.store.continue327 ] ; 2 uses
  %i.nm = shl i64 %index301, 2                    ; 8 uses
  %next.gep302 = getelementptr i8, ptr %i.mr, i64 %i.nm ; 3 uses
  %i.nn = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep303 = getelementptr i8, ptr %i.nn, i64 4
  %i.no = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep304 = getelementptr i8, ptr %i.no, i64 8
  %i.np = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep305 = getelementptr i8, ptr %i.np, i64 12
  %i.nq = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep306 = getelementptr i8, ptr %i.nq, i64 16
  %i.nr = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep307 = getelementptr i8, ptr %i.nr, i64 20
  %i.ns = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep308 = getelementptr i8, ptr %i.ns, i64 24
  %i.nt = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep309 = getelementptr i8, ptr %i.nt, i64 28
  %i.nu = getelementptr i8, ptr %next.gep302, i64 16
  %wide.load310 = load <4 x i32>, ptr %next.gep302, align 4, !tbaa !28
  %wide.load311 = load <4 x i32>, ptr %i.nu, align 4, !tbaa !28
  %i.nv = icmp eq <4 x i32> %wide.load310, %broadcast.splat299 ; 4 uses
  %i.nw = icmp eq <4 x i32> %wide.load311, %broadcast.splat299 ; 4 uses
  %i.nx = extractelement <4 x i1> %i.nv, i64 0
  br i1 %i.nx, label %pred.store.if312, label %pred.store.continue313

pred.store.if312:                                 ; preds = %vector.body300
  store i32 %3, ptr %next.gep302, align 4, !tbaa !28
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.if312, %vector.body300
  %i.ny = extractelement <4 x i1> %i.nv, i64 1
  br i1 %i.ny, label %pred.store.if314, label %pred.store.continue315

pred.store.if314:                                 ; preds = %pred.store.continue313
  store i32 %3, ptr %next.gep303, align 4, !tbaa !28
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.if314, %pred.store.continue313
  %i.nz = extractelement <4 x i1> %i.nv, i64 2
  br i1 %i.nz, label %pred.store.if316, label %pred.store.continue317

pred.store.if316:                                 ; preds = %pred.store.continue315
  store i32 %3, ptr %next.gep304, align 4, !tbaa !28
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %pred.store.if316, %pred.store.continue315
  %i.oa = extractelement <4 x i1> %i.nv, i64 3
  br i1 %i.oa, label %pred.store.if318, label %pred.store.continue319

pred.store.if318:                                 ; preds = %pred.store.continue317
  store i32 %3, ptr %next.gep305, align 4, !tbaa !28
  br label %pred.store.continue319

pred.store.continue319:                           ; preds = %pred.store.if318, %pred.store.continue317
  %i.ob = extractelement <4 x i1> %i.nw, i64 0
  br i1 %i.ob, label %pred.store.if320, label %pred.store.continue321

pred.store.if320:                                 ; preds = %pred.store.continue319
  store i32 %3, ptr %next.gep306, align 4, !tbaa !28
  br label %pred.store.continue321

pred.store.continue321:                           ; preds = %pred.store.if320, %pred.store.continue319
  %i.oc = extractelement <4 x i1> %i.nw, i64 1
  br i1 %i.oc, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %pred.store.continue321
  store i32 %3, ptr %next.gep307, align 4, !tbaa !28
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %pred.store.if322, %pred.store.continue321
  %i.od = extractelement <4 x i1> %i.nw, i64 2
  br i1 %i.od, label %pred.store.if324, label %pred.store.continue325

pred.store.if324:                                 ; preds = %pred.store.continue323
  store i32 %3, ptr %next.gep308, align 4, !tbaa !28
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.if324, %pred.store.continue323
  %i.oe = extractelement <4 x i1> %i.nw, i64 3
  br i1 %i.oe, label %pred.store.if326, label %pred.store.continue327

pred.store.if326:                                 ; preds = %pred.store.continue325
  store i32 %3, ptr %next.gep309, align 4, !tbaa !28
  br label %pred.store.continue327

pred.store.continue327:                           ; preds = %pred.store.if326, %pred.store.continue325
  %index.next328 = add nuw i64 %index301, 8       ; 2 uses
  %i.of = icmp eq i64 %index.next328, %n.vec297
  br i1 %i.of, label %middle.block329, label %vector.body300, !llvm.loop !106

middle.block329:                                  ; preds = %pred.store.continue327
  %cmp.n330 = icmp eq i64 %i.ne, %n.vec297
  br i1 %cmp.n330, label %.critedge, label %.lr.ph19.i151.preheader333

.lr.ph19.i151.preheader333:                       ; preds = %.lr.ph19.i151.preheader, %middle.block329
  %.118.i152.ph = phi ptr [ %i.mr, %.lr.ph19.i151.preheader ], [ %i.nl, %middle.block329 ]
  br label %.lr.ph19.i151

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader334, %.lr.ph.i148
  %.017.i149 = phi ptr [ %i.og, %.lr.ph.i148 ], [ %.017.i149.ph, %.lr.ph.i148.preheader334 ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.017.i149, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i149, align 4, !tbaa !28
  %i.oh = icmp ult ptr %i.og, %i.mu
  br i1 %i.oh, label %.lr.ph.i148, label %.critedge, !llvm.loop !107

.lr.ph19.i151:                                    ; preds = %.lr.ph19.i151.preheader333, %bb.bp
  %.118.i152 = phi ptr [ %i.ok, %bb.bp ], [ %.118.i152.ph, %.lr.ph19.i151.preheader333 ] ; 3 uses
  %i.oi = load i32, ptr %.118.i152, align 4, !tbaa !28
  %i.oj = icmp eq i32 %i.oi, %i.ms
  br i1 %i.oj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph19.i151
  store i32 %3, ptr %.118.i152, align 4, !tbaa !28
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph19.i151
  %i.ok = getelementptr inbounds nuw i8, ptr %.118.i152, i64 4 ; 2 uses
  %i.ol = icmp ult ptr %i.ok, %i.mu
  br i1 %i.ol, label %.lr.ph19.i151, label %.critedge, !llvm.loop !108

.critedge.sink.split:                             ; preds = %bb.bk, %_ZL14getIndex2BlockP9UNewTrie2ia.exit, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i, %bb.x, %bb.bm, %bb.h, %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ 30, %bb.d ], [ 7, %bb.h ], [ 30, %bb.c ], [ 7, %bb.bm ], [ 1, %bb.b ], [ 5, %_ZL14getIndex2BlockP9UNewTrie2ia.exit ], [ 7, %bb.bk ], [ 5, %bb.x ], [ 5, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i ]
  store i32 %.sink, ptr %5, align 4, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i131, %bb.o, %.lr.ph.i148, %bb.bp, %middle.block240, %middle.block278, %middle.block291, %middle.block329, %.critedge.sink.split, %.preheader.i133, %.preheader15.i130, %._crit_edge, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i8 noundef signext range(i8 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -1024
  %i.b = icmp eq i32 %i.a, 55296
  %i.c = icmp ne i8 %2, 0
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i32 %1, 11
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36   ; 6 uses
  %i.m = icmp sgt i32 %i.l, 35424
  br i1 %i.m, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread, label %_ZL16allocIndex2BlockP9UNewTrie2.exit.i
end_hunk_1
