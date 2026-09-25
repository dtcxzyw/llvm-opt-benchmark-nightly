Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjunittest?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cmpBitmap:bb.a
  %i.f = getelementptr inbounds [4 x i8], ptr @tjBlueOffset, i64 %i.a
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds [4 x i8], ptr @tjAlphaOffset, i64 %i.a
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12
  %i.j = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.a
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %i.l = tail call i32 @strcasecmp(ptr noundef %6, ptr noundef nonnull @.str.26) #20
  %.not = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not, i32 8, i32 %5   ; 4 uses
  %notmask = shl nsw i32 -1, %spec.select
  %i.m = xor i32 %notmask, -1                     ; 11 uses
  %.not181 = icmp eq i32 %3, 0
  %i.n = load i32, ptr @maxSample, align 4, !tbaa !12 ; 3 uses
  %i.o = add nsw i32 %i.n, 1                      ; 5 uses
  %i.p = load i32, ptr @precision, align 4, !tbaa !12 ; 2 uses
  %.not182 = icmp eq i32 %i.p, %spec.select
  %i.q = sdiv i32 %i.n, 2
  %i.r = sext i32 %i.q to i64                     ; 9 uses
  %i.s = sext i32 %i.n to i64                     ; 9 uses
  %i.t = icmp slt i32 %i.p, 9
  %i.u = icmp slt i32 %spec.select, 9             ; 5 uses
  %i.v = icmp samesign ult i32 %spec.select, 13   ; 9 uses
  %i.w = uitofp nneg i32 %i.m to double           ; 2 uses
  %.not192 = icmp eq i32 %4, 0                    ; 2 uses
  %i.x = add nsw i64 %i.a, -7
  %i.y = icmp ult i64 %i.x, 4
  %i.z = sext i32 %i.k to i64
  %i.aa = sext i32 %i.c to i64
  %i.ab = sext i32 %i.e to i64                    ; 4 uses
  %i.ac = sext i32 %i.g to i64                    ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.ab
  %invariant.gep284 = getelementptr [2 x i8], ptr %0, i64 %i.ac
  %invariant.gep286 = getelementptr i8, ptr %0, i64 %i.ab
  %invariant.gep288 = getelementptr i8, ptr %0, i64 %i.ac
  %invariant.gep290 = getelementptr [2 x i8], ptr %0, i64 %i.ab
  %invariant.gep292 = getelementptr [2 x i8], ptr %0, i64 %i.ac
  %invariant.gep294 = getelementptr i8, ptr %0, i64 %i.ab
  %invariant.gep296 = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge205
  %.0174279 = phi i32 [ 0, %bb.a ], [ %i.he, %.critedge205 ] ; 4 uses
  %i.af = sub nuw nsw i32 38, %.0174279
  %i.ag = select i1 %.not181, i32 %.0174279, i32 %i.af
  %i.ah = mul nsw i32 %i.o, %.0174279
  %i.ai = sdiv i32 %i.ah, 39                      ; 2 uses
  %i.aj = srem i32 %i.ai, %i.o                    ; 4 uses
  %i.ak = mul nsw i32 %i.aj, %i.m
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, %i.r
  %i.an = mul i32 %i.aj, 65535
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nsw i64 %i.ao, %i.r
  %i.aq = mul nsw i32 %i.aj, 255
  %i.ar = sext i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, %i.r
  %i.at = mul nsw i32 %i.ag, %1                   ; 2 uses
  %i.au = add i32 %i.at, %i.i
  %i.av = sext i32 %i.at to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.ak
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.ak ] ; 4 uses
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = mul i32 %i.o, %i.aw
  %i.ay = sdiv i32 %i.ax, 35                      ; 2 uses
  %i.az = srem i32 %i.ay, %i.o                    ; 4 uses
  %i.ba = add nsw i32 %i.ai, %i.ay
  %i.bb = srem i32 %i.ba, %i.o                    ; 4 uses
  br i1 %.not182, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = tail call i32 @strcasecmp(ptr noundef %6, ptr noundef nonnull @.str.29) #20
  %.not183 = icmp eq i32 %i.bc, 0
  br i1 %.not183, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = mul nsw i32 %i.az, 255
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i64 %i.be, %i.r
  %i.bg = sdiv i64 %i.bf, %i.s
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = mul nsw i32 %i.bh, %i.m
  %i.bj = add nsw i32 %i.bi, 127
  %i.bk = sdiv i32 %i.bj, 255
  %i.bl = sdiv i64 %i.as, %i.s
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.m
  %i.bo = add nsw i32 %i.bn, 127
  %i.bp = sdiv i32 %i.bo, 255
  %i.bq = mul nsw i32 %i.bb, 255
  %i.br = sext i32 %i.bq to i64
  %i.bs = add nsw i64 %i.br, %i.r
  %i.bt = sdiv i64 %i.bs, %i.s
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = mul nsw i32 %i.bu, %i.m
  %i.bw = add nsw i32 %i.bv, 127
  %i.bx = sdiv i32 %i.bw, 255
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.by = mul i32 %i.az, 65535
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, %i.r
  %i.cb = sdiv i64 %i.ca, %i.s
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = sdiv i64 %i.ap, %i.s
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = mul i32 %i.bb, 65535
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.cg, %i.r
  %i.ci = sdiv i64 %i.ch, %i.s
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = mul i32 %i.cc, %i.m
  %i.cl = add i32 %i.ck, 32767
  %i.cm = udiv i32 %i.cl, 65535
  %i.cn = mul i32 %i.ce, %i.m
  %i.co = add i32 %i.cn, 32767
  %i.cp = udiv i32 %i.co, 65535
  %i.cq = mul i32 %i.cj, %i.m
  %i.cr = add i32 %i.cq, 32767
  %i.cs = udiv i32 %i.cr, 65535
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ct = mul nsw i32 %i.az, %i.m
  %i.cu = sext i32 %i.ct to i64
  %i.cv = add nsw i64 %i.cu, %i.r
  %i.cw = sdiv i64 %i.cv, %i.s
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = sdiv i64 %i.am, %i.s
  %i.cz = trunc i64 %i.cy to i32
  %i.da = mul nsw i32 %i.bb, %i.m
  %i.db = sext i32 %i.da to i64
  %i.dc = add nsw i64 %i.db, %i.r
  %i.dd = sdiv i64 %i.dc, %i.s
  %i.de = trunc i64 %i.dd to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %.1173 = phi i32 [ %i.az, %bb.c ], [ %i.cx, %bb.h ], [ %i.bk, %bb.f ], [ %i.cm, %bb.g ] ; 3 uses
  %.1171 = phi i32 [ %i.aj, %bb.c ], [ %i.cz, %bb.h ], [ %i.bp, %bb.f ], [ %i.cp, %bb.g ] ; 3 uses
  %.1169 = phi i32 [ %i.bb, %bb.c ], [ %i.de, %bb.h ], [ %i.bx, %bb.f ], [ %i.cs, %bb.g ] ; 9 uses
  %i.df = mul nsw i64 %indvars.iv, %i.z
  %i.dg = add nsw i64 %i.df, %i.av                ; 13 uses
  switch i32 %2, label %bb.v [
    i32 6, label %bb.j
    i32 11, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds i8, ptr %0, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !16
  %i.dj = zext i8 %i.di to i32
  br label %getVal.exit

bb.l:                                             ; preds = %bb.j
  %i.dk = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dg
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !18 ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = sext i16 %i.dl to i32
  br label %getVal.exit

bb.n:                                             ; preds = %bb.l
  %i.dn = zext i16 %i.dl to i32
  br label %getVal.exit

getVal.exit:                                      ; preds = %bb.k, %bb.m, %bb.n
  %.0.i = phi i32 [ %i.dj, %bb.k ], [ %i.dm, %bb.m ], [ %i.dn, %bb.n ]
  %.not199 = icmp eq i32 %.0.i, %.1169
  br i1 %.not199, label %bb.ak, label %.critedge204

bb.o:                                             ; preds = %bb.i
  br i1 %i.u, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr [2 x i8], ptr %0, i64 %i.dg ; 4 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 2
  %i.dq = load i16, ptr %i.do, align 2, !tbaa !18 ; 2 uses
  %i.dr = load i16, ptr %i.dp, align 2, !tbaa !18 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.do, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !18 ; 2 uses
  %i.du = getelementptr i8, ptr %i.do, i64 6
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !18 ; 2 uses
  br i1 %i.v, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.dw = getelementptr i8, ptr %0, i64 %i.dg     ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 1
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !16
  %7 = zext i8 %i.dy to i32
  %8 = load i8, ptr %i.dx, align 1, !tbaa !16
  %i.dz = zext i8 %8 to i32
  %i.ea = getelementptr i8, ptr %i.dw, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16
  %i.ec = zext i8 %i.eb to i32
  %i.ed = getelementptr i8, ptr %i.dw, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ef = zext i8 %i.ee to i32
  br label %getVal.exit213

bb.r:                                             ; preds = %bb.p
  %i.eg = sext i16 %i.dq to i32
  %i.eh = sext i16 %i.dr to i32
  %i.ei = sext i16 %i.dt to i32
  %i.ej = sext i16 %i.dv to i32
  br label %getVal.exit213

bb.s:                                             ; preds = %bb.p
  %i.ek = zext i16 %i.dq to i32
  %i.el = zext i16 %i.dr to i32
  %i.em = zext i16 %i.dt to i32
  %i.en = zext i16 %i.dv to i32
  br label %getVal.exit213

getVal.exit213:                                   ; preds = %bb.q, %bb.r, %bb.s
  %.0.i210256 = phi i32 [ %i.ec, %bb.q ], [ %i.ei, %bb.r ], [ %i.em, %bb.s ]
  %.0.i206234240254 = phi i32 [ %7, %bb.q ], [ %i.eg, %bb.r ], [ %i.ek, %bb.s ]
  %.0.i208242252 = phi i32 [ %i.dz, %bb.q ], [ %i.eh, %bb.r ], [ %i.el, %bb.s ]
  %.0.i212 = phi i32 [ %i.ef, %bb.q ], [ %i.ej, %bb.r ], [ %i.en, %bb.s ]
  %i.eo = insertelement <2 x i32> poison, i32 %.0.i206234240254, i64 0
  %i.ep = insertelement <2 x i32> %i.eo, i32 %.0.i208242252, i64 1
  %i.eq = sitofp <2 x i32> %i.ep to <2 x double>
  %i.er = sitofp i32 %.0.i212 to double           ; 2 uses
  %i.es = insertelement <2 x double> poison, double %i.er, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul nnan <2 x double> %i.et, %i.eq
  %i.ev = fdiv <2 x double> %i.eu, %i.ae
  %i.ew = fadd <2 x double> %i.ev, splat (double 5.000000e-01)
  %i.ex = fptosi <2 x double> %i.ew to <2 x i32>  ; 3 uses
  %i.ey = sitofp i32 %.0.i210256 to double
  %i.ez = fmul nnan double %i.ey, %i.er
  %i.fa = fdiv double %i.ez, %i.w
  %i.fb = fadd double %i.fa, 5.000000e-01
  %i.fc = fptosi double %i.fb to i32
  %.not195 = icmp eq i32 %.1169, %i.fc            ; 2 uses
  br i1 %.not192, label %bb.u, label %bb.t

bb.t:                                             ; preds = %getVal.exit213
  %i.fd = insertelement <2 x i32> poison, i32 %.1169, i64 0
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ff = icmp eq <2 x i32> %i.fe, %i.ex          ; 2 uses
  %i.fg = extractelement <2 x i1> %i.ff, i64 0
  %i.fh = extractelement <2 x i1> %i.ff, i64 1
  %or.cond = select i1 %i.fg, i1 %i.fh, i1 false
  %or.cond200 = select i1 %or.cond, i1 %.not195, i1 false
  br i1 %or.cond200, label %bb.ak, label %.critedge204

bb.u:                                             ; preds = %getVal.exit213
  %i.fi = extractelement <2 x i32> %i.ex, i64 0
  %.not193 = icmp eq i32 %.1173, %i.fi
  %i.fj = extractelement <2 x i32> %i.ex, i64 1
  %.not194 = icmp eq i32 %.1171, %i.fj
  %or.cond201 = select i1 %.not193, i1 %.not194, i1 false
  %or.cond202 = select i1 %or.cond201, i1 %.not195, i1 false
  br i1 %or.cond202, label %bb.ak, label %.critedge204

bb.v:                                             ; preds = %bb.i
  %i.fk = add nsw i64 %i.dg, %i.aa                ; 4 uses
  br i1 %.not192, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.u, label %getVal.exit215.thread, label %getVal.exit215

getVal.exit215:                                   ; preds = %bb.w
  %i.fl = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !18 ; 2 uses
  %i.fn = zext i16 %i.fm to i32
  %i.fo = sext i16 %i.fm to i32
  %.0.i214 = select i1 %i.v, i32 %i.fo, i32 %i.fn
  %.not188 = icmp eq i32 %.0.i214, %.1169
  br i1 %.not188, label %getVal.exit217, label %.critedge204

getVal.exit215.thread:                            ; preds = %bb.w
  %i.fp = getelementptr inbounds i8, ptr %0, i64 %i.fk
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16
  %i.fr = zext i8 %i.fq to i32
  %.not188266 = icmp eq i32 %.1169, %i.fr
  br i1 %.not188266, label %.thread267, label %.critedge204

.thread267:                                       ; preds = %getVal.exit215.thread
  %gep287 = getelementptr i8, ptr %invariant.gep286, i64 %i.dg
  %i.fs = load i8, ptr %gep287, align 1, !tbaa !16
  %i.ft = zext i8 %i.fs to i32
  %.not189269 = icmp eq i32 %.1169, %i.ft
  br i1 %.not189269, label %.thread270, label %.critedge204

getVal.exit217:                                   ; preds = %getVal.exit215
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.dg
  %i.fu = load i16, ptr %gep, align 2, !tbaa !18  ; 2 uses
  %i.fv = zext i16 %i.fu to i32
  %i.fw = sext i16 %i.fu to i32
  %.0.i216 = select i1 %i.v, i32 %i.fw, i32 %i.fv
  %.not189 = icmp eq i32 %.0.i216, %.1169
  br i1 %.not189, label %bb.x, label %.critedge204

.thread270:                                       ; preds = %.thread267
  %gep289 = getelementptr i8, ptr %invariant.gep288, i64 %i.dg
  %i.fx = load i8, ptr %gep289, align 1, !tbaa !16
  %i.fy = zext i8 %i.fx to i32
  br label %getVal.exit219

bb.x:                                             ; preds = %getVal.exit217
  %gep285 = getelementptr [2 x i8], ptr %invariant.gep284, i64 %i.dg
  %i.fz = load i16, ptr %gep285, align 2, !tbaa !18 ; 2 uses
  br i1 %i.v, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = sext i16 %i.fz to i32
  br label %getVal.exit219

bb.z:                                             ; preds = %bb.x
  %i.gb = zext i16 %i.fz to i32
  br label %getVal.exit219

getVal.exit219:                                   ; preds = %.thread270, %bb.y, %bb.z
  %.0.i218 = phi i32 [ %i.fy, %.thread270 ], [ %i.ga, %bb.y ], [ %i.gb, %bb.z ]
  %.not190 = icmp eq i32 %.0.i218, %.1169
  br i1 %.not190, label %bb.ae, label %.critedge204

bb.aa:                                            ; preds = %bb.v
  br i1 %i.u, label %getVal.exit221.thread, label %getVal.exit221

getVal.exit221:                                   ; preds = %bb.aa
  %i.gc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fk
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !18 ; 2 uses
  %i.ge = zext i16 %i.gd to i32
  %i.gf = sext i16 %i.gd to i32
  %.0.i220 = select i1 %i.v, i32 %i.gf, i32 %i.ge
  %.not185 = icmp eq i32 %.0.i220, %.1173
  br i1 %.not185, label %getVal.exit223, label %.critedge204

getVal.exit221.thread:                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds i8, ptr %0, i64 %i.fk
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !16
  %i.gi = zext i8 %i.gh to i32
  %.not185272 = icmp eq i32 %.1173, %i.gi
  br i1 %.not185272, label %.thread273, label %.critedge204

.thread273:                                       ; preds = %getVal.exit221.thread
  %gep295 = getelementptr i8, ptr %invariant.gep294, i64 %i.dg
  %i.gj = load i8, ptr %gep295, align 1, !tbaa !16
  %i.gk = zext i8 %i.gj to i32
  %.not186275 = icmp eq i32 %.1171, %i.gk
  br i1 %.not186275, label %.thread276, label %.critedge204

getVal.exit223:                                   ; preds = %getVal.exit221
  %gep291 = getelementptr [2 x i8], ptr %invariant.gep290, i64 %i.dg
  %i.gl = load i16, ptr %gep291, align 2, !tbaa !18 ; 2 uses
  %i.gm = zext i16 %i.gl to i32
  %i.gn = sext i16 %i.gl to i32
  %.0.i222 = select i1 %i.v, i32 %i.gn, i32 %i.gm
  %.not186 = icmp eq i32 %.0.i222, %.1171
  br i1 %.not186, label %bb.ab, label %.critedge204

.thread276:                                       ; preds = %.thread273
  %gep297 = getelementptr i8, ptr %invariant.gep296, i64 %i.dg
  %i.go = load i8, ptr %gep297, align 1, !tbaa !16
  %i.gp = zext i8 %i.go to i32
  br label %getVal.exit225

bb.ab:                                            ; preds = %getVal.exit223
  %gep293 = getelementptr [2 x i8], ptr %invariant.gep292, i64 %i.dg
  %i.gq = load i16, ptr %gep293, align 2, !tbaa !18 ; 2 uses
  br i1 %i.v, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gr = sext i16 %i.gq to i32
  br label %getVal.exit225

bb.ad:                                            ; preds = %bb.ab
  %i.gs = zext i16 %i.gq to i32
  br label %getVal.exit225

getVal.exit225:                                   ; preds = %.thread276, %bb.ac, %bb.ad
  %.0.i224 = phi i32 [ %i.gp, %.thread276 ], [ %i.gr, %bb.ac ], [ %i.gs, %bb.ad ]
  %.not187 = icmp eq i32 %.0.i224, %.1169
  br i1 %.not187, label %bb.ae, label %.critedge204

bb.ae:                                            ; preds = %getVal.exit225, %getVal.exit219
  br i1 %i.y, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.gt = trunc i64 %indvars.iv to i32
  %i.gu = mul i32 %i.k, %i.gt
  %i.gv = add i32 %i.au, %i.gu
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  br i1 %i.u, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gx = getelementptr inbounds i8, ptr %0, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !16
  %i.gz = zext i8 %i.gy to i32
  br label %getVal.exit227

bb.ah:                                            ; preds = %bb.af
  %i.ha = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gw
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !18 ; 2 uses
  br i1 %i.v, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hc = sext i16 %i.hb to i32
  br label %getVal.exit227

bb.aj:                                            ; preds = %bb.ah
  %i.hd = zext i16 %i.hb to i32
  br label %getVal.exit227

getVal.exit227:                                   ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i226 = phi i32 [ %i.gz, %bb.ag ], [ %i.hc, %bb.ai ], [ %i.hd, %bb.aj ]
  %.not191 = icmp eq i32 %.0.i226, %i.m
  br i1 %.not191, label %bb.ak, label %.critedge204

bb.ak:                                            ; preds = %bb.t, %bb.u, %getVal.exit227, %bb.ae, %getVal.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 35
  br i1 %exitcond, label %.critedge205, label %bb.c, !llvm.loop !48

end_hunk_0
