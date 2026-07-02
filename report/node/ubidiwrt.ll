inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL14doWriteForwardPKDsiPDsitP10UErrorCode:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw i32 %i.av to i16
  %i.ay = add nsw i32 %.0123, 1
  %i.az = sext i32 %.0123 to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %2, i64 %i.az
  store i16 %i.ax, ptr %i.ba, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bb = lshr i32 %i.av, 10
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = add i16 %i.bc, -10304
  %i.be = sext i32 %.0123 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.be ; 2 uses
  store i16 %i.bd, ptr %i.bf, align 2
  %i.bg = trunc i32 %i.av to i16
  %i.bh = and i16 %i.bg, 1023
  %i.bi = or disjoint i16 %i.bh, -9216
  %i.bj = add nsw i32 %.0123, 2
  %i.bk = getelementptr i8, ptr %i.bf, i64 2
  store i16 %i.bi, ptr %i.bk, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1124 = phi i32 [ %i.ay, %bb.i ], [ %i.bj, %bb.j ]
  %i.bl = icmp slt i32 %.2127, %1
  br i1 %i.bl, label %.preheader175, label %.loopexit, !llvm.loop !33

.preheader178:                                    ; preds = %bb.a, %bb.o
  %indvar = phi i64 [ %indvar.next, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.1134 = phi ptr [ %.2135, %bb.o ], [ %2, %bb.a ] ; 12 uses
  %.0129 = phi i32 [ %i.dl, %bb.o ], [ %1, %bb.a ] ; 5 uses
  %.1117 = phi ptr [ %i.bm, %bb.o ], [ %0, %bb.a ] ; 2 uses
  %.0112 = phi i32 [ %.3115, %bb.o ], [ %3, %bb.a ] ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1117, i64 2 ; 4 uses
  %i.bn = load i16, ptr %.1117, align 2
  %.fr170 = freeze i16 %i.bn                      ; 3 uses
  %i.bo = and i16 %.fr170, -4
  %i.bp = icmp eq i16 %i.bo, 8204
  br i1 %i.bp, label %bb.o, label %switch.early.test

switch.early.test:                                ; preds = %.preheader178
  switch i16 %.fr170, label %bb.l [
    i16 8297, label %bb.o
    i16 8296, label %bb.o
    i16 8295, label %bb.o
    i16 8294, label %bb.o
    i16 8238, label %bb.o
    i16 8237, label %bb.o
    i16 8236, label %bb.o
    i16 8235, label %bb.o
    i16 8234, label %bb.o
  ]

bb.l:                                             ; preds = %switch.early.test
  %i.bq = add nsw i32 %.0112, -1                  ; 4 uses
  %i.br = icmp slt i32 %.0112, 1
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 15, ptr %5, align 4
  %i.bs = icmp sgt i32 %.0129, 1
  br i1 %i.bs, label %.lr.ph197.preheader, label %.loopexit177

.lr.ph197.preheader:                              ; preds = %bb.m
  %i.bt = add i32 %1, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = sub i64 %i.bu, %indvar                  ; 3 uses
  %min.iters.check246 = icmp ult i64 %i.bv, 8
  br i1 %min.iters.check246, label %.lr.ph197.preheader295, label %vector.ph247

vector.ph247:                                     ; preds = %.lr.ph197.preheader
  %n.vec249 = and i64 %i.bv, -8                   ; 4 uses
  %i.bw = shl i64 %n.vec249, 1
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bw
  %i.by = trunc i64 %n.vec249 to i32
  %i.bz = sub i32 %.0129, %i.by
  %i.ca = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bq, i64 0
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph247
  %index251 = phi i64 [ 0, %vector.ph247 ], [ %index.next257, %vector.body250 ] ; 2 uses
  %vec.phi252 = phi <4 x i32> [ %i.ca, %vector.ph247 ], [ %i.cv, %vector.body250 ]
  %vec.phi253 = phi <4 x i32> [ zeroinitializer, %vector.ph247 ], [ %i.cw, %vector.body250 ]
  %i.cb = shl i64 %index251, 1
  %next.gep254 = getelementptr i8, ptr %i.bm, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep254, i64 8
  %wide.load255 = load <4 x i16>, ptr %next.gep254, align 2 ; 3 uses
  %wide.load256 = load <4 x i16>, ptr %i.cc, align 2 ; 3 uses
  %i.cd = and <4 x i16> %wide.load255, splat (i16 -4)
  %i.ce = and <4 x i16> %wide.load256, splat (i16 -4)
  %i.cf = icmp ne <4 x i16> %i.cd, splat (i16 8204)
  %i.cg = icmp ne <4 x i16> %i.ce, splat (i16 8204)
  %i.ch = add <4 x i16> %wide.load255, splat (i16 -8239)
  %i.ci = add <4 x i16> %wide.load256, splat (i16 -8239)
  %i.cj = icmp ult <4 x i16> %i.ch, splat (i16 -5)
  %i.ck = icmp ult <4 x i16> %i.ci, splat (i16 -5)
  %i.cl = and <4 x i1> %i.cf, %i.cj
  %i.cm = and <4 x i1> %i.cg, %i.ck
  %i.cn = add <4 x i16> %wide.load255, splat (i16 -8298)
  %i.co = add <4 x i16> %wide.load256, splat (i16 -8298)
  %i.cp = icmp ult <4 x i16> %i.cn, splat (i16 -4)
  %i.cq = icmp ult <4 x i16> %i.co, splat (i16 -4)
  %i.cr = and <4 x i1> %i.cp, %i.cl
  %i.cs = and <4 x i1> %i.cq, %i.cm
  %i.ct = sext <4 x i1> %i.cr to <4 x i32>
  %i.cu = sext <4 x i1> %i.cs to <4 x i32>
  %i.cv = add <4 x i32> %vec.phi252, %i.ct        ; 2 uses
  %i.cw = add <4 x i32> %vec.phi253, %i.cu        ; 2 uses
  %index.next257 = add nuw i64 %index251, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next257, %n.vec249
  br i1 %i.cx, label %middle.block258, label %vector.body250, !llvm.loop !34

middle.block258:                                  ; preds = %vector.body250
  %bin.rdx259 = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx259) ; 2 uses
  %cmp.n260 = icmp eq i64 %i.bv, %n.vec249
  br i1 %cmp.n260, label %.loopexit177, label %.lr.ph197.preheader295

.lr.ph197.preheader295:                           ; preds = %.lr.ph197.preheader, %middle.block258
  %.1113195.ph = phi i32 [ %i.bq, %.lr.ph197.preheader ], [ %i.cy, %middle.block258 ]
  %.2118194.ph = phi ptr [ %i.bm, %.lr.ph197.preheader ], [ %i.bx, %middle.block258 ]
  %.1130193.ph = phi i32 [ %.0129, %.lr.ph197.preheader ], [ %i.bz, %middle.block258 ]
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader295, %.lr.ph197
  %.1113195 = phi i32 [ %.2114, %.lr.ph197 ], [ %.1113195.ph, %.lr.ph197.preheader295 ]
  %.2118194 = phi ptr [ %i.da, %.lr.ph197 ], [ %.2118194.ph, %.lr.ph197.preheader295 ] ; 2 uses
  %.1130193 = phi i32 [ %i.cz, %.lr.ph197 ], [ %.1130193.ph, %.lr.ph197.preheader295 ] ; 2 uses
  %i.cz = add nsw i32 %.1130193, -1
  %i.da = getelementptr inbounds nuw i8, ptr %.2118194, i64 2
  %i.db = load i16, ptr %.2118194, align 2        ; 3 uses
  %i.dc = and i16 %i.db, -4
  %i.dd = icmp ne i16 %i.dc, 8204
  %i.de = add i16 %i.db, -8239
  %i.df = icmp ult i16 %i.de, -5
  %or.cond153.not174 = and i1 %i.dd, %i.df
  %i.dg = add i16 %i.db, -8298
  %i.dh = icmp ult i16 %i.dg, -4
  %or.cond155.not = and i1 %i.dh, %or.cond153.not174
  %i.di = sext i1 %or.cond155.not to i32
  %.2114 = add nsw i32 %.1113195, %i.di           ; 2 uses
  %i.dj = icmp samesign ugt i32 %.1130193, 2
  br i1 %i.dj, label %.lr.ph197, label %.loopexit177, !llvm.loop !35

bb.n:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %.1134, i64 2
  store i16 %.fr170, ptr %.1134, align 2
  br label %bb.o

bb.o:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.preheader178, %bb.n
  %.2135 = phi ptr [ %.1134, %switch.early.test ], [ %i.dk, %bb.n ], [ %.1134, %.preheader178 ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ], [ %.1134, %switch.early.test ]
  %.3115 = phi i32 [ %.0112, %switch.early.test ], [ %i.bq, %bb.n ], [ %.0112, %.preheader178 ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ], [ %.0112, %switch.early.test ] ; 2 uses
  %i.dl = add nsw i32 %.0129, -1
  %i.dm = icmp sgt i32 %.0129, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dm, label %.preheader178, label %.loopexit177, !llvm.loop !36

.loopexit177:                                     ; preds = %bb.o, %.lr.ph197, %middle.block258, %bb.m
  %.3115.pn = phi i32 [ %.2114, %.lr.ph197 ], [ %i.bq, %bb.m ], [ %i.cy, %middle.block258 ], [ %.3115, %bb.o ]
  %.2 = sub nsw i32 %3, %.3115.pn
  br label %.loopexit

.unreachabledefault:                              ; preds = %bb.a
  unreachable

.preheader180:                                    ; preds = %bb.a, %bb.x
  %.2131 = phi i32 [ %i.eb, %bb.x ], [ %1, %bb.a ] ; 2 uses
  %.3119 = phi ptr [ %i.ea, %bb.x ], [ %0, %bb.a ] ; 3 uses
  %.0108 = phi i32 [ %.3111, %bb.x ], [ %3, %bb.a ] ; 11 uses
  %.0104 = phi i32 [ %.1105, %bb.x ], [ 0, %bb.a ] ; 14 uses
  %i.dn = load i16, ptr %.3119, align 2
  %i.do = zext i16 %i.dn to i32                   ; 4 uses
  %i.dp = and i32 %i.do, 64512
  %i.dq = icmp ne i32 %i.dp, 55296
  %.not = icmp eq i32 %.2131, 1
  %or.cond = select i1 %i.dq, i1 true, i1 %.not
  br i1 %or.cond, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.preheader180
  %i.dr = getelementptr inbounds nuw i8, ptr %.3119, i64 2
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = zext i16 %i.ds to i32                   ; 2 uses
  %i.du = and i32 %i.dt, 64512
  %i.dv = icmp eq i32 %i.du, 56320
  br i1 %i.dv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dw = shl nuw nsw i32 %i.do, 10
  %i.dx = add nsw i32 %i.dw, -56613888
  %i.dy = add nuw nsw i32 %i.dx, %i.dt
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.preheader180
  %.1107 = phi i32 [ 1, %.preheader180 ], [ 2, %bb.q ], [ 1, %bb.p ] ; 3 uses
  %.1103 = phi i32 [ %i.do, %.preheader180 ], [ %i.dy, %bb.q ], [ %i.do, %bb.p ]
  %.1103.fr = freeze i32 %.1103                   ; 3 uses
  %i.dz = zext nneg i32 %.1107 to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.3119, i64 %i.dz ; 4 uses
  %i.eb = sub nsw i32 %.2131, %.1107              ; 7 uses
  %i.ec = and i32 %.1103.fr, -4
  %i.ed = icmp eq i32 %i.ec, 8204
  br i1 %i.ed, label %bb.x, label %switch.early.test165

switch.early.test165:                             ; preds = %bb.r
  switch i32 %.1103.fr, label %bb.s [
    i32 8297, label %bb.x
    i32 8296, label %bb.x
    i32 8295, label %bb.x
    i32 8294, label %bb.x
    i32 8238, label %bb.x
    i32 8237, label %bb.x
    i32 8236, label %bb.x
    i32 8235, label %bb.x
    i32 8234, label %bb.x
  ]

bb.s:                                             ; preds = %switch.early.test165
  %i.ee = sub nsw i32 %.0108, %.1107              ; 6 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 15, ptr %5, align 4
  %i.eg = icmp sgt i32 %i.eb, 0
  br i1 %i.eg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.eh = zext nneg i32 %i.eb to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.eb, 8
  br i1 %min.iters.check, label %.lr.ph.preheader303, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.eh, 2147483640              ; 4 uses
  %i.ei = shl nuw nsw i64 %n.vec, 1
  %i.ej = getelementptr i8, ptr %i.ea, i64 %i.ei
  %i.ek = trunc nuw nsw i64 %n.vec to i32
  %i.el = sub nsw i32 %i.eb, %i.ek
  %i.em = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ee, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.em, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi242 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %i.en = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ea, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2 ; 3 uses
  %wide.load243 = load <4 x i16>, ptr %i.eo, align 2 ; 3 uses
  %i.ep = and <4 x i16> %wide.load, splat (i16 -4)
  %i.eq = and <4 x i16> %wide.load243, splat (i16 -4)
  %i.er = icmp ne <4 x i16> %i.ep, splat (i16 8204)
  %i.es = icmp ne <4 x i16> %i.eq, splat (i16 8204)
  %i.et = add <4 x i16> %wide.load, splat (i16 -8239)
  %i.eu = add <4 x i16> %wide.load243, splat (i16 -8239)
  %i.ev = icmp ult <4 x i16> %i.et, splat (i16 -5)
  %i.ew = icmp ult <4 x i16> %i.eu, splat (i16 -5)
  %i.ex = and <4 x i1> %i.er, %i.ev
  %i.ey = and <4 x i1> %i.es, %i.ew
  %i.ez = add <4 x i16> %wide.load, splat (i16 -8298)
  %i.fa = add <4 x i16> %wide.load243, splat (i16 -8298)
  %i.fb = icmp ult <4 x i16> %i.ez, splat (i16 -4)
  %i.fc = icmp ult <4 x i16> %i.fa, splat (i16 -4)
  %i.fd = and <4 x i1> %i.fb, %i.ex
  %i.fe = and <4 x i1> %i.fc, %i.ey
  %i.ff = sext <4 x i1> %i.fd to <4 x i32>
  %i.fg = sext <4 x i1> %i.fe to <4 x i32>
  %i.fh = add <4 x i32> %vec.phi, %i.ff           ; 2 uses
  %i.fi = add <4 x i32> %vec.phi242, %i.fg        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fi, %i.fh
  %i.fk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.eh
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader303

.lr.ph.preheader303:                              ; preds = %.lr.ph.preheader, %middle.block
  %.1109192.ph = phi i32 [ %i.ee, %.lr.ph.preheader ], [ %i.fk, %middle.block ]
  %.4120191.ph = phi ptr [ %i.ea, %.lr.ph.preheader ], [ %i.ej, %middle.block ]
  %.3132190.ph = phi i32 [ %i.eb, %.lr.ph.preheader ], [ %i.el, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader303, %.lr.ph
  %.1109192 = phi i32 [ %.2110, %.lr.ph ], [ %.1109192.ph, %.lr.ph.preheader303 ]
  %.4120191 = phi ptr [ %i.fl, %.lr.ph ], [ %.4120191.ph, %.lr.ph.preheader303 ] ; 2 uses
  %.3132190 = phi i32 [ %i.fu, %.lr.ph ], [ %.3132190.ph, %.lr.ph.preheader303 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.4120191, i64 2
  %i.fm = load i16, ptr %.4120191, align 2        ; 3 uses
  %i.fn = and i16 %i.fm, -4
  %i.fo = icmp ne i16 %i.fn, 8204
  %i.fp = add i16 %i.fm, -8239
  %i.fq = icmp ult i16 %i.fp, -5
  %or.cond161.not169 = and i1 %i.fo, %i.fq
  %i.fr = add i16 %i.fm, -8298
  %i.fs = icmp ult i16 %i.fr, -4
  %or.cond163.not = and i1 %i.fs, %or.cond161.not169
  %i.ft = sext i1 %or.cond163.not to i32
  %.2110 = add nsw i32 %.1109192, %i.ft           ; 2 uses
  %i.fu = add nsw i32 %.3132190, -1
  %i.fv = icmp samesign ugt i32 %.3132190, 1
  br i1 %i.fv, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.t
  %.1109.lcssa = phi i32 [ %i.ee, %bb.t ], [ %i.fk, %middle.block ], [ %.2110, %.lr.ph ]
  %i.fw = sub nsw i32 %3, %.1109.lcssa
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.fx = tail call i32 @u_charMirror_78(i32 noundef %.1103.fr) #4 ; 4 uses
  %i.fy = icmp ult i32 %i.fx, 65536
  br i1 %i.fy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fz = trunc nuw i32 %i.fx to i16
  %i.ga = add nsw i32 %.0104, 1
  %i.gb = sext i32 %.0104 to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %2, i64 %i.gb
  store i16 %i.fz, ptr %i.gc, align 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gd = lshr i32 %i.fx, 10
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = add i16 %i.ge, -10304
  %i.gg = sext i32 %.0104 to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.gg ; 2 uses
  store i16 %i.gf, ptr %i.gh, align 2
  %i.gi = trunc i32 %i.fx to i16
  %i.gj = and i16 %i.gi, 1023
  %i.gk = or disjoint i16 %i.gj, -9216
  %i.gl = add nsw i32 %.0104, 2
  %i.gm = getelementptr i8, ptr %i.gh, i64 2
  store i16 %i.gk, ptr %i.gm, align 2
  br label %bb.x

bb.x:                                             ; preds = %switch.early.test165, %switch.early.test165, %switch.early.test165, %switch.early.test165, %switch.early.test165, %switch.early.test165, %switch.early.test165, %switch.early.test165, %switch.early.test165, %bb.r, %bb.w, %bb.v
  %.3111 = phi i32 [ %.0108, %switch.early.test165 ], [ %i.ee, %bb.w ], [ %i.ee, %bb.v ], [ %.0108, %bb.r ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ], [ %.0108, %switch.early.test165 ]
  %.1105 = phi i32 [ %.0104, %switch.early.test165 ], [ %i.gl, %bb.w ], [ %i.ga, %bb.v ], [ %.0104, %bb.r ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ], [ %.0104, %switch.early.test165 ] ; 2 uses
  %i.gn = icmp sgt i32 %i.eb, 0
  br i1 %i.gn, label %.preheader180, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %bb.x, %bb.k, %.preheader, %middle.block277, %vec.epilog.middle.block, %._crit_edge, %bb.e, %bb.c, %.loopexit177
  %.4 = phi i32 [ %1, %bb.e ], [ %1, %bb.c ], [ %.2, %.loopexit177 ], [ %1, %middle.block277 ], [ %1, %bb.k ], [ %i.fw, %._crit_edge ], [ %1, %.preheader ], [ %1, %vec.epilog.middle.block ], [ %.1105, %bb.x ]
  ret i32 %.4
}

declare signext i8 @u_charType_78(i32 noundef) local_unnamed_addr #2

declare i32 @u_charMirror_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{!"branch_weights", i32 4, i32 12}
!10 = distinct !{!10, !6, !7, !8}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6, !7, !8}
!15 = distinct !{!15, !6, !7, !8}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6, !7, !8}
!19 = distinct !{!19, !6, !8, !7}
!20 = distinct !{!20, !6, !7, !8}
!21 = distinct !{!21, !6, !7, !8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !6, !7}
end_hunk_0
